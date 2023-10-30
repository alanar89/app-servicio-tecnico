<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Persona;
use App\Roleuser;
use App\Tecnico;
use App\Administrador;
class AdministradorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index()
    {   
      
        $admin=Administrador::where('activo',1)->get();
          if(count($admin)<1){  return response()->json("vacio");}else{
        foreach ($admin as  $value) {
           $p= Persona::where('idPersona',$value->idAdministrador)->get();
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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function detalleAdmin($id)
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

        public function bajaPersonal($id)
    {

        $t=Tecnico::find($id);
        $a=Administrador::find($id);
          if($t){ $t->activo =0;$t->save();}
              if($a){  $a->activo =0; $a->save();}
       
      
        if( $a || $t){
            return response()->json("exito");
        }else{ 
            return response()->json("Error");
        }
    
       
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
