<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\TrackesController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post( '/register' , 'App\Http\Controllers\AuthController@register');

Route::post( '/login' , 'App\Http\Controllers\AuthController@login');



Route::group(['middleware' =>["auth:sanctum"]],function(){
    Route::resources([
        '/Admin' => 'App\Http\Controllers\AdminController'
    ]);

    Route::post(
        '/admin/{id}' , 'App\Http\Controllers\AdminController@update'
    );

    Route::get(
        '/admin/{id}' , 'App\Http\Controllers\AdminController@destroy'
    );

    Route::post(
        '/admin' , 'App\Http\Controllers\AdminController@store'
    );

    Route::get(
        '/admin' , 'App\Http\Controllers\AdminController@index'
    );

    Route::resources([
        '/Student' => 'App\Http\Controllers\StudentController'
    ]);

    Route::post(
        '/student/{id}' , 'App\Http\Controllers\StudentController@update'
    );

    Route::get(
        '/student/{id}' , 'App\Http\Controllers\StudentController@destroy'
    );

    Route::post(
        '/student' , 'App\Http\Controllers\StudentController@store'
    );

    Route::get(
        '/student' , 'App\Http\Controllers\StudentController@index'
    );

    Route::resources([
        '/Level' => 'App\Http\Controllers\LevelController'
    ]);

    Route::post(
        '/Levelf/{id}' , 'App\Http\Controllers\LevelController@update'
    );

    Route::get(
        '/Levelf/{id}' , 'App\Http\Controllers\LevelController@destroy'
    );

    Route::post(
        '/Levelf' , 'App\Http\Controllers\LevelController@store'
    );

    Route::get(
        '/Levelf' , 'App\Http\Controllers\LevelController@index'
    );

    Route::resources([
        '/Trackes' => 'App\Http\Controllers\TrackesController'
    ]);

    Route::post(
        '/track/{id}' , 'App\Http\Controllers\TrackesController@update'
    );

    Route::get(
        '/track/{id}' , 'App\Http\Controllers\TrackesController@destroy'
    );

    Route::post(
        '/track' , 'App\Http\Controllers\TrackesController@store'
    );

    Route::get(
        '/track' , 'App\Http\Controllers\TrackesController@index'
    );

    Route::resources([
        '/Courses' => 'App\Http\Controllers\CourseController'
    ]);

    Route::post(
        '/course/{id}' , 'App\Http\Controllers\CourseController@update'
    );

    Route::get(
        '/course/{id}' , 'App\Http\Controllers\CourseController@destroy'
    );

    Route::post(
        '/course' , 'App\Http\Controllers\CourseController@store'
    );

    Route::get(
        '/course' , 'App\Http\Controllers\CourseController@index'
    );

    Route::post(
        '/rate/{id}' , 'App\Http\Controllers\RatingController@update'
    );

    Route::get(
        '/rate/{id}' , 'App\Http\Controllers\RatingController@destroy'
    );
    Route::post(
        '/rate' , 'App\Http\Controllers\RatingController@store'
    );

    Route::get(
        '/rate' , 'App\Http\Controllers\RatingController@index'
    );

    Route::post( '/logout' , 'App\Http\Controllers\AuthController@logout');

});
