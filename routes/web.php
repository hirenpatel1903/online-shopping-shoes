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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('user.index');
});

Route::get('/about', function () {
    return view('user.about');
});

Route::get('/blog', function () {
    return view('user.blog');
});

Route::get('/contact', function () {
    return view('user.contact');
});

Route::get('/shop-single', function () {
    return view('user.shop-single');
});

Route::get('/shop', function () {
    return view('user.shop');
});

Route::get('/single', function () {
    return view('user.single');
});

//admin:routes
Route::get('/admin/home', function () {
    return view('admin.index');
});


Route::get('/admin/login', function () {
    return view('admin.login');
});

// Route::get('/login', function () {
//     return view('user.Login');
// });

// Route::get('/register', function () {
//     return view('user.Register');
// });

Route::get('/user/login',function(){
    return view('user.userlogin');
});

Route::get('/user/register',function(){
    return view('user.userregister');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::any('/adduser','useregisterController@adduser');
Route::post('/loginuser','useregisterController@loginuser');
Route::get('/loginadmin','adminloginController@loginadmin');

// Route::group(['prefix' => 'admin'], function () {
//     Voyager::routes();
// });
