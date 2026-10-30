<?php

namespace App\Filament\Pages\Auth;

use Filament\Auth\Pages\Login as BaseAuth;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Filament\Facades\Filament;
use Filament\Http\Exceptions\HttpException;
use DanHarrin\LivewireRateLimiting\Exceptions\TooManyRequestsException;
use Filament\Auth\Http\Responses\Contracts\LoginResponse;
use Filament\Notifications\Notification;
use App\Models\User;
use App\Models\OPD;

class SiapLogin extends BaseAuth
{
    protected string $view = 'filament.pages.auth.siaplogin';

    protected function getCredentialsFromFormData(array $data): array
    {
        return [
            'nip' => $data['nip'],   // pakai username
            'password' => $data['password'],
        ];
    }

    // 2. Override the primary authentication method
    public function authenticate(): ?LoginResponse
    {
        try {
            // Apply Filament's built-in login rate limiter
            $this->rateLimit(5);
        } catch (TooManyRequestsException $exception) {
            $this->getRateLimitedNotification($exception)?->send();
            return null;
        }

        $data = $this->form->getState();
        $credentials = $this->getCredentialsFromFormData($data);

        if ($credentials['nip'] == $credentials['password']) {
            Notification::make()
                ->title('Kombinasi Username dan Password Salah atau Tidak Valid.')
                ->color('error')
                ->danger()
                ->send();
            return null;
        }

        // Call your external API
        $apiUser = $this->SIAPLogin($credentials);

        // Check if API authentication failed (adjust based on your API's specific success property)
        if (!$apiUser || !$apiUser->loginStatus || isset($apiUser->error) || (isset($apiUser->success) && !$apiUser->success)) {
            // $this->throwFailureValidationException();
            Notification::make()
                ->title('Kombinasi Username dan Password Salah atau Tidak Valid.')
                ->color('error')
                ->danger()
                ->send();
            return null;
        }

        // Find or create the matching local user record so Laravel can create a session
        $opd = OPD::where('kode', $apiUser->datauser->id_opd)->first();
        $user = User::firstOrCreate(
            ['nip' => $credentials['nip']],
            [
                'name' => $apiUser->datauser->nama ?? 'SIAP User',
                'email' => $apiUser->email ?? ($credentials['nip'] . '@siap.local'),
                'password' => bcrypt($credentials['password']), // Fallback password
                'nip' => $apiUser->datauser->nip ?? $credentials['nip'],
                'opd_id' => $opd->id ?? null,
                'role' => 'opd',
            ]
        );

        // Log the local user session into Filament
        Filament::auth()->login($user, $data['remember'] ?? false);

        // Verify if this user has access permissions to this Filament panel
        if (!Filament::auth()->user()->canAccessPanel(Filament::getCurrentPanel())) {
            Filament::auth()->logout();
            $this->throwFailureValidationException();
        }

        session()->regenerate();

        return app(LoginResponse::class);
    }

    // 3. Your protected API function
    protected function SIAPLogin($credentials)
    {
        $body = [
            'username' => $credentials['nip'],
            'password' => $credentials['password'],
        ];

        $response = Http::withHeaders([
            'token' => env('SIAP_REST_API_TOKEN')
        ])->asForm()->post(env('SIAP_AUTH_API') . '/loginUser', $body);

        return $response->object();
    }

    public function form(Schema $schema): Schema
    {
        return $schema->components([
            TextInput::make('nip')
                ->required()
                ->label('Username'),
            $this->getPasswordFormComponent(),
            $this->getRememberFormComponent(),
        ]);
    }
}
