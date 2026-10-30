<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApplicationFileController;
use App\Http\Controllers\PublicDashboardController;

Route::get('/public-info', [PublicDashboardController::class, 'index']);
Route::get('/', [PublicDashboardController::class, 'landing']);

Route::middleware(['auth'])->group(function () {
    Route::get('/applications/{application}/files/{type}', [ApplicationFileController::class, 'show'])
        ->whereIn('type', ['spt', 'business-process', 'probis'])
        ->name('applications.files.show');
});
