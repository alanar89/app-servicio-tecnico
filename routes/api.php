<?php

use Illuminate\Http\Request;

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
// Route::post('/password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
Route::post('recuperarPass', 'Auth\ForgotPasswordController@sendResetLinkEmail');
// Route::get('recuperarPass', 'Auth\ForgotPasswordController@ola');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    //return $request->user(); 
});
    Route::group(['prefix' => 'auth'], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('validarMail', 'AuthController@mail');
      
    Route::group(['middleware' => ['auth:api', 'scope:administrator']], function() {
        Route::get('orden/{cant}', 'OrdenController@listaAdministrator');
        Route::get('buscador/{cant}/{codigo}', 'OrdenController@buscador');
        Route::post('cambioestado', 'OrdenController@cambioestado');
        Route::post('entrega', 'OrdenController@entrega');
        Route::post('entregagarantia', 'OrdenController@entregagarantia');
        Route::post('ingresogarantia', 'OrdenController@ingresogarantia');
        Route::get('detallePersonal/{id}', 'PersonaController@detallePersonal');
        Route::get('user', 'AuthController@user');
        Route::get('clientes/{cant}', 'ClienteController@listaClientes');
        Route::get('detalleCliente/{id}', 'ClienteController@detalleCliente');
        Route::post('ordenobservacion', 'OrdenController@ordenobservacion');
        Route::get('admin', 'AdministradorController@index'); 
        Route::get('tecnicos', 'TecnicoController@index'); 
        Route::post('nuevagarantia', 'OrdenController@nuevaGarantia');
        Route::post('altaPersonal', 'AuthController@altaPersonal');
        Route::post('bajaPersonal/{id}', 'AdministradorController@bajaPersonal');
        Route::post('buscarCliente', 'ClienteController@buscarCliente'); 
        Route::get('estadoOrden', 'OrdenController@estadoOrden'); 
        Route::get('tecnicoOrden', 'TecnicoController@tecnicoOrden');  
        Route::get('servicioOrden', 'OrdenController@servicioOrden');  
        Route::get('prioridadOrden', 'OrdenController@prioridadOrden');  
        Route::get('localOrden', 'OrdenController@localOrden'); 
        Route::post('registroOrden', 'OrdenController@registroOrden'); 
        Route::get('editarOrden/{id}', 'OrdenController@editarOrden'); 
         Route::post('actualizarOrden/{id}', 'OrdenController@actualizarOrden'); 
    });
    Route::group(['middleware' => ['auth:api', 'scope:administrator,cliente,tecnico']], function() {
        Route::get('perfil', 'PersonaController@perfil');  
        Route::post('editar', 'PersonaController@editar');
        Route::post('editarCliente', 'PersonaController@editarCliente');
        Route::get('pass', 'PersonaController@pass'); 
        Route::post('passUpdate', 'PersonaController@passUpdate'); 
    });
    Route::group(['middleware' => ['auth:api', 'scope:administrator,tecnico']], function() {
        Route::post('saveobservacion', 'OrdenController@saveobservacion');  
        Route::get('misOrdenesTecnico/{cant}', 'OrdenController@listaTecnico');
        Route::post('cambioestadotecnico', 'OrdenController@cambioestadotecnico');
        Route::get('ordendetalle/{id}', 'OrdenController@ordendetalle');   
        Route::post('ordenobservacionTecnico', 'OrdenController@ordenobservacion');
         Route::get('buscadorTecnico/{cant}/{codigo}', 'OrdenController@buscadorTecnico');
        // Route::get('ordenDetalle/{id}', 'OrdenController@ordenDetalleTecnico');
    });
      Route::group(['middleware' => ['auth:api', 'scope:cliente']], function() {
       // Route::post('saveobservacion', 'OrdenController@saveobservacion');  
        Route::get('misOrdenes/{cant}', 'OrdenController@listaCliente');
        Route::post('ordenobservacionCliente', 'OrdenController@ordenobservacionCliente');
        Route::get('ordenDetalleCliente/{id}', 'OrdenController@ordenDetalleCliente');
    });
    Route::group(['middleware' => ['auth:api']], function() {
        Route::get('logout', 'AuthController@logout');
    });  
});
