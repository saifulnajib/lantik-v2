<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PublicDashboardController;

Route::get('/public-info', [PublicDashboardController::class, 'index']);
Route::get('/', [PublicDashboardController::class, 'comingSoon']);
