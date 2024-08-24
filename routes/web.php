<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RegistrasiController;
use App\Models\Mahasiswa;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use PhpParser\Node\Expr\FuncCall;

Route::get('/', function () {
    return Inertia::render('LandingPage', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),

    ]);
})->name('landing-page');

Route::get('/seleksi', [MahasiswaController::class, 'seleksi'])->name('seleksi');


Route::get('/test', function () {
    return Inertia::render('Test/HockeyTeamList');
});

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        $role = Auth::user()->role;
        if ($role == 'admin') {
            return to_route('admin.index');
        } else {
            return to_route('mahasiswa.index');
        }
    })->name('dashboard');

    Route::get('/mahasiswa', [MahasiswaController::class, 'index'])->name('mahasiswa.index');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware(['auth', 'admin'])->group(function () {
    Route::get('/admin', [AdminController::class, 'index'])->name('admin.index');

    Route::get('/admin/dokumen/{id}/delete', [AdminController::class, 'deleteDokumen'])->name('admin.dokumen.delete');
    Route::get('/admin/dokumen/{id}/show', [AdminController::class, 'tinjauDokumen'])->name('admin.dokumen.show');
    Route::post('/admin/dokumen/{id}/edit', [AdminController::class, 'editDokumen'])->name('admin.dokumen.edit');
    Route::post('/admin/dokumen/{id}/print', [AdminController::class, 'editDokumen'])->name('admin.dokumen.print');

    Route::get('/admin/users', [AdminController::class, 'manageUsers'])->name('admin.users');
    Route::get('/admin/users/{id}/show', [AdminController::class, 'show'])->name('admin.users.show');
    Route::post('/admin/users/create', [AdminController::class, 'create'])->name('admin.users.create');

    Route::get('/admin/users/{user}/edit', [AdminController::class, 'editUser'])->name('admin.users.edit');
    Route::put('/admin/users/{user}', [AdminController::class, 'updateUser'])->name('admin.users.update');
    Route::delete('/admin/users/{id}', [AdminController::class, 'deleteUser'])->name('admin.users.delete');
});



require __DIR__ . '/auth.php';
require __DIR__ . '/api.php';
