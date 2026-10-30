<?php

namespace App\Http\Controllers;

use App\Models\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\StreamedResponse;

class ApplicationFileController extends Controller
{
    /**
     * Serve private files (SPT or Business Process) for an application.
     */
    public function show(Request $request, Application $application, string $type): StreamedResponse
    {
        $user = $request->user();

        if (!$user) {
            abort(403, 'Unauthorized');
        }

        // Check if user is super_admin / admin or belongs to the same OPD
        $isAdmin = $user->hasAnyRole(['super_admin', 'admin', 'admin_kominfo'])
            || in_array($user->role, ['super_admin', 'admin'], true);

        if (!$isAdmin && (int) $user->opd_id !== (int) $application->opd_id) {
            abort(403, 'Anda tidak memiliki akses ke dokumen aplikasi OPD ini.');
        }

        $filePath = match ($type) {
            'spt' => $application->spt_file_path,
            'business-process', 'probis' => $application->business_process_file_path,
            default => abort(404, 'Tipe dokumen tidak valid.'),
        };

        if (blank($filePath) || !Storage::disk('local')->exists($filePath)) {
            abort(404, 'Dokumen tidak ditemukan.');
        }

        if ($request->boolean('download')) {
            return Storage::disk('local')->download($filePath);
        }

        return Storage::disk('local')->response($filePath);
    }
}

