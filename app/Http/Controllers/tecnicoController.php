<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Persona;
use App\Roleuser;
use App\Tecnico;
class TecnicoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {   
      
    //     $tecnico=Roleuser::where('role_id',3)->get();
    //       if(empty($tecnico)){  return response()->json("vacio");}else{
    //     foreach ($tecnico as  $value) {
    //        $p= Persona::where('idPersona',$value->user_id)->get();
    //         foreach ($p as  $v) {
    //          $datos [] = [
    //             'id'=>$v->idPersona,
    //             'nombre' => $v->nombre, 
    //             'apellido' => $v->apellido,
    //             'telefono' => $v->telefono, 
    //         ];}
    //    }
    //     return response()->json($datos);}
    // }

     public function index()
    {   
      
        $tecnico=Tecnico::where('activo',1)->get();
          if(count($tecnico) < 1){  return response()->json("vacio");}else{
        foreach ($tecnico as  $value) {
           $p= Persona::where('idPersona',$value->idTecnico)->get();
            foreach ($p as  $v) {
             $datos [] = [
                'id'=>$v->idPersona,
                'nombre' => $v->nombre, 
                'apellido' => $v->apellido,
                'telefono' => $v->telefono, 

            ];}
       }
        return response()->json($datos);}
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }
      public function tecnicoOrden()
    {   
      
        $tecnico=Tecnico::where('activo',1)->get();
          if(count($tecnico) < 1){  return response()->json("vacio");}else{
        foreach ($tecnico as  $value) {
           $p= Persona::where('idPersona',$value->idTecnico)->get();
            foreach ($p as  $v) {
            // $datos [] = $v->nombre.' '.$v->apellido;
              $datos [] =   [
                'nombre' =>  $v->nombre.' '.$v->apellido,
                  'id'=>$value->idTecnico

            ];

        }
       }
            return response()->json($datos);}
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function detalleTecnico($id)
    {
      $persona= Persona::where('idPersona',$id)->get();
         $user=users::where('id',$id)->first();
      foreach ($persona as $key => $value) {

          $datos = [
                'nombre' => $value->nombre,
                'apellido' => $value->apellido,
                'telefono' =>  $value->telefono,
                'direccion' =>  $value->direccion,
                 'email'=>$user->email,
                  'id'=>$user->id,

            ];
        }        
        return response()->json($datos);
      
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
