<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Cliente;
use App\Persona;
use App\users;
class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
  public function index()
    {
          
      
        $clientes=Cliente::all()->where('activo',1);
           if(count($admin)<1){  return response()->json("vacio");}else{
        foreach ($clientes as  $value) {
           $p= Persona::where('idPersona',$value->idCliente)->get();
               $user=users::where('id',$value->idCliente)->first();
            foreach ($p as  $v) {
             $datos [] = [
                'id'=>$v->idPersona,
                'nombre' => $v->nombre, 
                'apellido' => $v->apellido,
                'telefono' => $v->telefono, 
                  'email'=>$user->email,
            ];}
       }
        return response()->json($datos);}
 

    }
     public function listaClientes($cant)
    {
          
      $cantidad = 5; 
        $clientes=Cliente::all()->where('activo',1)->slice($cant*$cantidad)->take($cantidad);
        $datos=[];
        foreach ($clientes as  $value) {
           $p= Persona::where('idPersona',$value->idCliente)->get();
               $user=users::where('id',$value->idCliente)->first();
            foreach ($p as  $v) {
             $datos [] = [
                'id'=>$v->idPersona,
                'nombre' => $v->nombre, 
                'apellido' => $v->apellido,
                'telefono' => $v->telefono, 
                  'email'=>$user->email,
            ];}
       }
        return response()->json($datos);
 

    }
     public function detalleCliente($id)
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
                 'dni' =>  $value->dni,
            ];
        }        
        return response()->json($datos);
      
    }

    public function buscarCliente(Request $request)
    {    
    
        $str=$request->datos;
        $persona= Persona::Where(DB::raw("CONCAT(nombre,' ',apellido)"),'like','%'.$str.'%')->orwhere('telefono', 'like', $str.'%')->get();
        $datos=[];
         if(count($persona)<1){  
            return response()->json("vacio");

        }else{
          foreach ($persona as $key => $value) {
              $user=users::where('id',$value->idPersona)->first();
              $datos[] = [
                    'nombre' => $value->nombre,
                    'apellido' => $value->apellido,
                    'telefono' =>  $value->telefono,
                    'id'=> $value->idPersona,
                      'email'=>$user->email,
                       'dni' =>  $value->dni,
                ];
            }  

            return response()->json($datos); 
        }

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
    public function show($id)
    {
        //
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
