<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PublicacaoController;
use App\Http\Controllers\ComentarioController;



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/', [PublicacaoController::class, 'index'])->name('publicacao.index');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('comentario/{publicacao_id}', [ComentarioController::class, 'index'])->name('comentario.index');
    Route::post('comentario/cadastrar', [ComentarioController::class, 'store'])->name('comentario.cadastrar');
});

require __DIR__.'/auth.php';