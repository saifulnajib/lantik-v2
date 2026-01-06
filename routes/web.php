<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PublicDashboardController;

Route::get('/', [PublicDashboardController::class, 'index']);
