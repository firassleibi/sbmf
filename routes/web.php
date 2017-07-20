<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'SmbfController@welcome' );
Route::get('home', 'SmbfController@budget' );
Route::get('payment', 'SmbfController@payment' );

Route::auth();


