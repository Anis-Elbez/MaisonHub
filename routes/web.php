<?php

use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\SetLocaleController;
use App\Http\Controllers\DocumentController;



use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// gestion de la langue
Route::get('/lang/{locale}',[SetLocaleController::class,'index'])->name('lang');


Route::get('/etudiants', [EtudiantController::class, 'index'])->name('etudiant.index');
Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get('/create/etudiant', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/create/etudiant', [EtudiantController::class, 'store'])->name('etudiant.store');
Route::get('/edit/etudiant/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/edit/etudiant/{etudiant}', [EtudiantController::class, 'update'])->name('etudiant.update');
Route::delete('/etudiant/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');

//Gestion du login
Route::get('/registration', [AuthController::class, 'create'])->name('registration');
Route::post('/registration', [AuthController::class, 'store'])->name('etudiant.store');

Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/login', [AuthController::class, 'authentification'])->name('login.authentification');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');

// Gestion Article
Route::get('/articles', [ArticleController::class, 'index'])->name('article.index');
Route::get('/create/article', [ArticleController::class, 'create'])->name('article.create');
Route::post('/create/article', [ArticleController::class, 'store'])->name('article.store');
// Modifier un article
Route::get('/article/{article}/edit', [ArticleController::class, 'edit'])->name('article.edit');
Route::put('/article/{article}', [ArticleController::class, 'update'])->name('article.update');
Route::delete('/article/{article}', [ArticleController::class, 'destroy'])->name('article.destroy')->middleware('auth');



// Gestion Documents
Route::get('/documents', [DocumentController::class, 'index'])->name('document.index')->middleware('auth');;

// Ajouter un document
Route::get('/create/document', [DocumentController::class, 'create'])->name('document.create');
Route::post('/create/document', [DocumentController::class, 'store'])->name('document.upload');
//afficher un document
Route::get('/document/{document}', [DocumentController::class, 'show'])->name('document.show');

//modifier un document
Route::get('/documents/{document}/edit', [DocumentController::class, 'edit'])->name('document.edit')->middleware('auth');
Route::put('/documents/{document}', [DocumentController::class, 'update'])->name('document.update')->middleware('auth');


//supprimer un document
Route::delete('/documents/{document}', [DocumentController::class, 'destroy'])->name('document.destroy')->middleware('auth');

