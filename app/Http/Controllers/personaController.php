<?php

namespace App\Http\Controllers;
use App\Persona;
use Illuminate\Http\Request;
use App\Roleuser;
use Illuminate\Support\Facades\Hash;
use App\users;

class PersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     public function perfil(Request $request)
    {
         $id=$request->user()->id;
      $persona= Persona::where('idPersona',$id)->get();
      $user=users::where('id',$id)->first();
      foreach ($persona as $key => $value) {

          $datos = [
                'nombre' => $value->nombre,
                'apellido' => $value->apellido,
                'telefono' =>  $value->telefono,
                'direccion' =>  $value->direccion,
                 'dni' =>  $value->dni,
                'email'=>$user->email,
                'id'=>$id
            ];
        }        
        return response()->json($datos);
      
    }
   
    public function editar(Request $request)
    {
        $id=$request->user()->id;
        $p=Persona::find($id);
           $u=users::find($id);
        $p->nombre =$request->nombre;
        $p->apellido = $request->apellido;
        $p->telefono = $request->telefono;
        $p->direccion = $request->direccion;
        $u->email = $request->email;
        if( $p->save() && $u->save()){
            return response()->json("Datos actualizados");
        }else{ 
            return response()->json("Error al  actualizar");
        }
           
    }  

   
   
    public function editarCliente(Request $request)
    {
        $id=$request->user()->id;
        $p=Persona::find($id);
           $u=users::find($id);
        $p->nombre =$request->nombre;
        $p->apellido = $request->apellido;
        $p->telefono = $request->telefono;
        $p->direccion = $request->direccion;
          $p->dni = $request->dni;
        $u->email = $request->email;
        if( $p->save() && $u->save()){
            return response()->json("Datos actualizados");
        }else{ 
            return response()->json("Error al  actualizar");
        }
           
    }  
          
      
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function detallePersonal($id)
    {
        $rol=Roleuser::where('user_id',$id)->first();
         $user=users::where('id',$id)->first();
      $persona= Persona::where('idPersona',$id)->get();
      foreach ($persona as $key => $value) {

          $datos = [
                'nombre' => $value->nombre,
                'apellido' => $value->apellido,
                'telefono' =>  $value->telefono,
                'direccion' =>  $value->direccion,
                   'dni' =>  $value->dni,
                'rol'=>$rol->role_id,
                 'email'=>$user->email,
            ];
        }        
        return response()->json($datos);
    }

public function pass(Request $request)
    {
          $id=$request->user()->id;
         $user=users::where('id',$id)->first();
          $datos = [
                   // 'password' => Hash::make( $user->password),
          'password' =>  $user->password,
            ];     
        return response()->json($datos);
    }

 // public function passUpdate($id)
 //    {
 //        $rol=Roleuser::where('user_id',$id)->first();
 //         $user=users::where('id',$id)->first();
 //      $persona= Persona::where('idPersona',$id)->get();
 //      foreach ($persona as $key => $value) {

 //          $datos = [
 //                'nombre' => $value->nombre,
 //                'apellido' => $value->apellido,
 //                'telefono' =>  $value->telefono,
 //                'direccion' =>  $value->direccion,
 //                'rol'=>$rol->role_id,
 //                 'email'=>$user->email,
 //            ];
 //        }        
 //        return response()->json($datos);
 //    }

     public function passUpdate(Request $request)
    {
         $id=$request->user()->id;
         $u=users::where('id',$id)->first();
         $u->password =  bcrypt($request->password);
        if( $u->save()){
            return response()->json("Datos actualizados");
        }else{ 
            return response()->json("Error al  actualizar");
        }        
       
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
