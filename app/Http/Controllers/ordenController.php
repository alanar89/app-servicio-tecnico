<?php

namespace App\Http\Controllers;
use App\User;
use App\Persona;
use App\Orden;
use App\Tecnico;
use App\Entrega;
use App\Servicio;
use App\Prioridad;
use App\Estadotipo;
use App\Garantia;
use App\Observacion;
use App\Local;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\HasApiTokens;
use Carbon\Carbon;

class OrdenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function listaAdministrator($cant)
    {

        $cantidadordenes = 5;
        $orden = Orden::all()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $datos=[];
        foreach ($orden as $key => $value) {
            $persona= Persona::where('idPersona', $value->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $value->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $value->estado)->first();
            $cod = strtoupper($value->codigo);
            $datos [] = [
                'id'=>$value->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'total' => $value->costo,
                'estado' => $estado->estado,
                'idprioridad' => $value->idPrioridad,
                'prioridad' => $prioridad->prioridad,
            ];
         
        }
      
        return response()->json($datos);
    }

    public function buscador($cant,$codigo)
    {

        $cantidadordenes = 5;
        // $persona= Persona::Where(DB::raw("CONCAT(nombre,' ',apellido)"),'like', $str.'%')->orwhere()->get();
        $orden = Orden::where('codigo', 'like', '%'.$codigo.'%')->get();
        $datos=[];
        foreach ($orden as $key => $value) {
            $persona= Persona::where('idPersona', $value->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $value->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $value->estado)->first();
            $cod = strtoupper($value->codigo);
            $datos [] = [
                'id'=>$value->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'total' => $value->costo,
                'estado' => $estado->estado,
                'idprioridad' => $value->idPrioridad,
                'prioridad' => $prioridad->prioridad,
            ];
            // $datos = json_encode($datos);
        }
        // $datos = json_encode($datos);
        return response()->json($datos);
    }

     public function buscadorTecnico($cant,$codigo,Request $request)
    {
           $id=$request->user()->id;
        $cantidadordenes = 5;
        // $persona= Persona::Where(DB::raw("CONCAT(nombre,' ',apellido)"),'like', $str.'%')->orwhere()->get();
        $orden = Orden::where ('idTecnico',$id)->where( 'codigo', 'like', '%'.$codigo.'%' )->get();
        $datos=[];
        foreach ($orden as $key => $value) {
            $persona= Persona::where('idPersona', $value->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $value->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $value->estado)->first();
            $cod = strtoupper($value->codigo);
            $datos [] = [
                'id'=>$value->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'total' => $value->costo,
                'estado' => $estado->estado,
                'idprioridad' => $value->idPrioridad,
                'prioridad' => $prioridad->prioridad,
            ];
            // $datos = json_encode($datos);
        }
        // $datos = json_encode($datos);
        return response()->json($datos);
    }

    public function ordendetalle($id)
    {
          // $id=$_GET['id'];
        $orden = Orden::where('idorden', $id)->first();
        // $datos=[];
        $enGarantia = 1;
            $garantia=[];
            $garanti =[];
            $persona= Persona::where('idPersona', $orden->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $orden->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $orden->estado)->first();
            $estadotecnico = Estadotipo::where('id' , $orden->estadoTecnico)->first();
            $tecnicopersona = Persona::where('idPersona',$orden->idTecnico)->first();
            // $observacion = Observacion::where('idObservacion', $orden->idObservacionTecnico)->first();
            $garanti = Garantia::all()->where('idOrden',$orden->idorden);
            // $gar = end($garantia);
            $entregado = Entrega::where('idOrden',$orden->idorden)->first();
            if ($entregado) {
                $entrega = $entregado->fecha;
            }else{
                $entrega = '';
            }
            $estados = Estadotipo::all()->sortByDesc('estado');
            $est=[];

            foreach ($estados as $key => $value) {
                $est[]=[
                    'idEstado' => $value->id,
                    'estado' => $value->estado,
                ];
            }
            if ($garanti) {
                foreach ($garanti as $key => $value) {
                    $garantia[]=$value;
                }
            }
            
            $garan=[];
            $cantidad ='';
            if ($garantia) {
                $cantidad = sizeof($garantia)-1; 

                // $fec = $fec;
                foreach ($garantia as $key => $value){
                    $terminoFecha='';
                    $garantiaActual='';
                    $enGarantia = '';
                   
                    if ($key == $cantidad && $value->fechaIngreso == "") {
                        $terminoFecha = date("Y-m-d", strtotime($value->fechaInicioGarantia ."+ ".$value->dias." days"));
                        $garantiaActual = 1;
                        // $fec =$key;
                    }else{
                        $terminoFecha = $value->fechaEntrega;
                        $garantiaActual = 0;
                    }
                    if ($value->fechaIngreso != null && $value->fechaEntrega == null ) {
                        $enGarantia = 1;
                    }else{
                        $enGarantia = 0;
                    }

                    if (strtotime($terminoFecha) > strtotime(date('Y-m-d')) && $key == $cantidad) {
                        $garantiaTerminada = 1;
                    }else{
                        $garantiaTerminada = 0;
                    }
                    $ultimo='';
                    if ($key == $cantidad) {
                        $ultimo = true;
                    }else{
                        $ultimo = false;
                    }
                    $garan []= [
                        'idOrden' =>$value->idOrden,
                        'dias' => $value->dias,
                        'terminoFecha' => $terminoFecha,
                        'garantiaActual' => $garantiaActual,
                        'enGarantia' => $enGarantia,
                        'garantiaTerminada' => $garantiaTerminada,
                        'ultimo' => $ultimo,
                    ];
                }
            }
            
            $cod = strtoupper($orden->codigo);
             $fe=Carbon::parse($orden->fechaEstimada)->format('d/m/Y');
            $datos = [
                'id'=>$persona->idPersona,
                'idorden' => $orden->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'telefono' => $persona->telefono,
                'equipo' => $orden->equipo,
                'falla' => $orden->falla,
                'total' => $orden->costo,
                'sena' => $orden->sena,
                'tecnico' => $tecnicopersona->nombre . ' ' .$tecnicopersona->apellido,
                'fechaPrometida' => $fe,
                // 'observaciones' => 'falta terminar',
                'estado' => $estado->estado,
                'estadotecnico' => $estadotecnico->estado,
                'idprioridad' => $orden->idPrioridad,
                'prioridad' => $prioridad->prioridad,
                'entrega' => $entrega,
                'estados' => $est, 
                'enGarantia' => $enGarantia,
                'garantia' => $garan, 
                
            ];
            // $datos = json_encode($datos);
        
        // $datos = json_encode($datos);
        return response()->json($datos);
    }
   
    public function cambioestado (Request $request) {
        $orden = Orden::find($request->idOrden);
        $estado = Estadotipo::where('estado' , $request->estadonom)->first();
        if ($estado) {
            $orden->estado = $estado->id;
        }
         $orden->estado = $estado->id;
         if ($orden->save()) {
            return json_encode($orden->estado); 
         }
         return json_encode($estado);
    }
    public function cambioestadotecnico (Request $request) {
        $orden = Orden::find($request->idOrden);
        $estado = Estadotipo::where('estado' , $request->estadonom)->first();
        if ($estado) {
            $orden->estado = $estado->id;
        }
         $orden->estadoTecnico = $estado->id;
         if ($orden->save()) {
            return json_encode($orden->estado); 
         }
         return json_encode($estado);
    }
  
    public function saveobservacion(Request $request){
        $observacion = new Observacion();
        $fechahora =date("Y-m-d H:i:s");
        if ($request->obser != '') {
            if ($observacion->insert([
                'observacion'=>$request->obser,
                'idUser'=>$request->user()->id,
                'idOrden'=>$request->id,
                'fecha' => $fechahora,
                'visto' => '0',
            ] 
            )) {
                
                $pers= Persona::where('idPersona', $request->user()->id)->first();
                $orden = Orden::where('idorden', $request->id)->first();
                $persona= Persona::where('idPersona', $orden->idTecnico)->first();
                $fechahora = explode(' ', $fechahora);
                $fecha = explode('-', $fechahora[0]);
                $fecha = $fecha[2]. '/' . $fecha[1] . '/' . $fecha[0];
                $hora  = $fechahora[1];
                $obs [] = [
                    'observacion' => $request->obser,
                    'fecha' => $fecha,
                    'hora' => $hora,
                    'personEsc' => $pers->apellido .' '. $pers->nombre,
                    'visto' => '0',
                    'idUser' => $request->user()->id,
                ];
                if($request->user()->id == $orden->idTecnico){
                    $isAdmin = false;
                }else{
                    $isAdmin = true;
                }
                $datos = [
                    'observacion' =>$obs,
                    'cliente' => $persona->apellido .' '. $persona->nombre,
                    'admin' => $isAdmin,
                    'idUserReg' => $request->user()->id,
                    'idCliente' => $orden->idTecnico,
                ];
              // $datos=['good'];
                return response()->json($datos);
            }else{
                return json_encode(date("d-m-Y H:i:s"));
            }
        }else{
                return json_encode('Ingrese observacion');
        }
    }

    public function ingresogarantia(Request $request){
        $idOrden = $request->id;
        $garanti = Garantia::all()->where('idOrden',$idOrden);
        $keyultimo = sizeof($garanti)-1;
        $garantia=[];
        if ($garanti) {
                foreach ($garanti as $key => $value) {
                    $garantia[]=$value;
                }
            }

        if ($garantia[$keyultimo]->fechaIngreso == Null) {
            $garantia[$keyultimo]->fechaIngreso = date('Y-m-d');
            if ($garantia[$keyultimo]->save()) {
                return json_encode('exito');        
            }else{
                return json_encode('Error al ingresar');        
            }
            
        }else{
            return json_encode($keyultimo);
        }
           // return json_encode($garantia);
    }
   
    public function entrega(Request $request)
    {
        $idOrden = $request->id;
        $diasgarantia = $request->diasgarantia;
        $garantia = new Garantia();
        $entrega = new Entrega();
        $ent = Entrega::where('idOrden',$idOrden)->first();

        if (!$ent) {
            if ($entrega->insert(['fecha'=>date('Y-m-d'),'idUser'=>$request->user()->id,'idOrden'=>$idOrden])) {
                if ($garantia->insert(['dias'=>$diasgarantia,'idOrden'=>$idOrden,'fechaInicioGarantia'=>date('Y-m-d')])) {
                    return json_encode(['fecha'=>date('Y-m-d')]);
                }
            }else{

                return json_encode(['fecha'=>date('Y-m-d')]);
            }
        }else{
            return json_encode('ya Registrado');
        }
        
    }
    
    public function entregagarantia(Request $request)
    {
        $idOrden = $request->id;
        $diasgarantia = $request->diasgarantia;
        $newgarantia = new Garantia();
        $garanti = Garantia::all()->where('idOrden',$idOrden);
        $keyultimo = sizeof($garanti)-1;
        $garantia=[];
        if ($garanti) {
                foreach ($garanti as $key => $value) {
                    $garantia[]=$value;
                }
            }
        if ($diasgarantia != null) {
            if ($garantia[$keyultimo]->fechaIngreso != Null && $garantia[$keyultimo]->fechaEntrega == Null) {
                $garantia[$keyultimo]->fechaEntrega = date('Y-m-d');
                if ($garantia[$keyultimo]->save()) {
                    if ($newgarantia->insert(['dias'=>$diasgarantia,'idOrden'=>$idOrden,'fechaInicioGarantia'=>date('Y-m-d')])) {
                        return json_encode(['fecha'=>date('Y-m-d')]);
                    }
                    return json_encode($garantia[$keyultimo]);        
                }else{
                    return json_encode('Error al ingresar');        
                }
                
            }else{
                return json_encode($garantia[$keyultimo]->fechaIngreso);
            }
        }else{
            return json_encode('Ingrese días de garantia');
        }
        
    }
    public function ordenobservacionTecnico(Request $request)
    {
        $id = $request->id;
        $obs=[];
        // $datos=[];
        // Orden::all()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $observacion = Observacion::where(['idOrden' => $id])->get()->sortByDesc('fecha');
        $orden = Orden::where('idorden', $id)->first();
        $persona= Persona::where('idPersona', $orden->idTecnico)->first();
        foreach ($observacion as $key => $value) {
            $pers = Persona::where('idPersona', $value->idUser)->first();
            $fechahora = explode(' ', $value->fecha);
            $fecha = explode('-', $fechahora[0]);
            $fecha = $fecha[2]. '/' . $fecha[1] . '/' . $fecha[0];
            $hora  = $fechahora[1];
            if ($value->idUser == $request->user()->id) {
                $obs [] = [
                    'observacion' => $value->observacion,
                    'fecha' => $fecha,
                    'hora' => $hora,
                    'personEsc' => $pers->apellido .' '. $pers->nombre,
                    'visto' => $value->visto,
                    'idUser' => $value->idUser,
                ];
            }
        }
        $isAdmin='';
        if($request->user()->id == $orden->idTecnico){
            $isAdmin = false;
        }else{
            $isAdmin = true;
        }
        // $obs = json_encode($obs);
        $datos = [
            'observacion' =>$obs,
            'cliente' => $persona->apellido .' '. $persona->nombre,
            'admin' => $isAdmin,
            'idUserReg' => $request->user()->id,
            'idCliente' => $orden->idTecnico,
        ];
        return response()->json($datos);
    }
    public function ordenobservacionCliente(Request $request)
    {
        $id = $request->id;
        $obs=[];
        // $datos=[];
        // Orden::all()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $observacion = Observacion::where(['idOrden' => $id])->get()->sortByDesc('fecha');
        $orden = Orden::where('idorden', $id)->first();
        $persona= Persona::where('idPersona', $orden->idTecnico)->first();
        foreach ($observacion as $key => $value) {
            $pers = Persona::where('idPersona', $value->idUser)->first();
            $fechahora = explode(' ', $value->fecha);
            $fecha = explode('-', $fechahora[0]);
            $fecha = $fecha[2]. '/' . $fecha[1] . '/' . $fecha[0];
            $hora  = $fechahora[1];
             if ($value->idUser != $orden->idTecnico) {
                $obs [] = [
                    'observacion' => $value->observacion,
                    'fecha' => $fecha,
                    'hora' => $hora,
                    'personEsc' => $pers->apellido .' '. $pers->nombre,
                    'visto' => $value->visto,
                    'idUser' => $value->idUser,
                ];
            }
        }
        $isAdmin='';
        if($request->user()->id == $orden->idTecnico){
            $isAdmin = false;
        }else{
            $isAdmin = true;
        }
        // $obs = json_encode($obs);
        $datos = [
            'observacion' =>$obs,
            'cliente' => $persona->apellido .' '. $persona->nombre,
            'admin' => $isAdmin,
            'idUserReg' => $request->user()->id,
            'idCliente' => $orden->idTecnico,
        ];
        return response()->json($datos);
    }
    public function ordenobservacion(Request $request)
    {
        $id = $request->id;
        $obs=[];
        // $datos=[];
        // Orden::all()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $observacion = Observacion::where(['idOrden' => $id])->get()->sortByDesc('fecha');
        $orden = Orden::where('idorden', $id)->first();
        $persona= Persona::where('idPersona', $orden->idTecnico)->first();
        foreach ($observacion as $key => $value) {
            $pers = Persona::where('idPersona', $value->idUser)->first();
            $fechahora = explode(' ', $value->fecha);
            $fecha = explode('-', $fechahora[0]);
            $fecha = $fecha[2]. '/' . $fecha[1] . '/' . $fecha[0];
            $hora  = $fechahora[1];

            $obs [] = [
                'observacion' => $value->observacion,
                'fecha' => $fecha,
                'hora' => $hora,
                'personEsc' => $pers->apellido .' '. $pers->nombre,
                'visto' => $value->visto,
                'idUser' => $value->idUser,
            ];
        }
        $isAdmin='';
        if($request->user()->id == $orden->idTecnico){
            $isAdmin = false;
        }else{
            $isAdmin = true;
        }
        // $obs = json_encode($obs);
        $datos = [
            'observacion' =>$obs,
            'cliente' => $persona->apellido .' '. $persona->nombre,
            'admin' => $isAdmin,
            'idUserReg' => $request->user()->id,
            'idCliente' => $orden->idTecnico,
        ];
        return response()->json($datos);
    }
 

      public function listaCliente($cant,Request $request)
    {
        $cantidadordenes = 5;
          $id=$request->user()->id;
         $orden = Orden::where('idCliente',$id)->get()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $datos=[];
        if(empty($orden)){  return response()->json("vacio");}else{
        foreach ($orden as $key => $value) {
    
            //$prioridad = Prioridad::where('idPrioridad', $value->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $value->estado)->first();
            $cod = strtoupper($value->codigo);
            $datos [] = [
                'id'=>$value->idorden,
                'codigo' => $cod,
                'total' => $value->costo,
                'estado' => $estado->estado,
            ];
            // $datos = json_encode($datos);
        }
        // $datos = json_encode($datos);*/
        return response()->json($datos);}
    }

     public function ordenDetalleCliente($id)
    {
        // $id=$_GET['id'];
        $orden = Orden::where('idorden', $id)->first();
        // $datos=[];
       
            $persona= Persona::where('idPersona', $orden->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $orden->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $orden->estado)->first();
            $tecnicopersona = Persona::where('idPersona',$orden->idTecnico)->first();
            // $observacion = Observacion::where('idObservacion', $orden->idObservacionTecnico)->first();
            // $garantia = Garantia::where(['idOrden' => $orden->idorden])->all()->sortByDesc('numero');
            // $gar = end($garantia);
            $entregado = Entrega::where('idOrden',$orden->idorden)->first();
            if ($entregado) {
                $entrega = $entregado->fecha;
            }else{
                $entrega = '';
            }
            $cod = strtoupper($orden->codigo);
             $f=$orden->fechaEstimada;
               $fecha=date("d/m/Y", strtotime($f));
         
            $datos = [
                'id'=>$persona->idPersona,
                'idorden' => $orden->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'telefono' => $persona->telefono,
                'equipo' => $orden->equipo,
                'falla' => $orden->falla,
                'total' => $orden->costo,
                'sena' => $orden->sena,
                'tecnico' => $tecnicopersona->nombre . ' ' .$tecnicopersona->apellido,
                'fechaPrometida' => $fecha,
                // 'observaciones' => 'falta terminar',
                'estado' => $estado->estado,
                'idprioridad' => $orden->idPrioridad,
                'prioridad' => $prioridad->prioridad,
                'entrega' => $entrega,
                // 'garantia' => $gar,
            ];
            // $datos = json_encode($datos);
        
        // $datos = json_encode($datos);
        return response()->json($datos);
    }

      public function listaTecnico($cant,Request $request)
    {
        $cantidadordenes = 5;
          $id=$request->user()->id;
        $orden = Orden::where('idTecnico',$id)->get()->sortByDesc('fechaIngreso')->slice($cant*$cantidadordenes)->take($cantidadordenes);
        $datos=[];
           if(empty($orden)){  return response()->json("vacio");}else{
        foreach ($orden as $key => $value) {
            $persona= Persona::where('idPersona', $value->idCliente)->first();
            $prioridad = Prioridad::where('idPrioridad', $value->idPrioridad)->first();
            $estado = Estadotipo::where('id' , $value->estado)->first();
            $cod = strtoupper($value->codigo);
            $datos [] = [
                'id'=>$value->idorden,
                'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'codigo' => $cod,
                'total' => $value->costo,
                'estado' => $estado->estado,
                'idprioridad' => $value->idPrioridad,
                'prioridad' => $prioridad->prioridad,
            ];
            // $datos = json_encode($datos);
        }
        // $datos = json_encode($datos);*/
        return response()->json($datos);}
    }

     
    
      
    
   
      public function estadoOrden()
    {   
      
        $estado=Estadotipo::all();
          if(count($estado) < 1){  return response()->json("vacio");}else{
        foreach ($estado as  $v) {
              $datos [] =   [
                'estado' =>  $v->estado,
                  'id'=>$v->id
            ];

        }
       }
            return response()->json($datos);
    }

       public function servicioOrden()
    {   
      
        $servicio=servicio::all();
          if(count($servicio) < 1){  return response()->json("vacio");}else{
        foreach ($servicio as  $v) {
              $datos [] =   [
                'servicio' =>  $v->tipo,
                  'id'=>$v->idServicios
            ];

        }
       }
            return response()->json($datos);
    }

    public function prioridadOrden()
    {   
      
        $prioridad=Prioridad::all();
          if(count($prioridad) < 1){  return response()->json("vacio");}else{
        foreach ($prioridad as  $v) {
              $datos [] =   [
                'prioridad' =>  $v->prioridad,
                  'id'=>$v->idPrioridad
            ];

        }
       }
            return response()->json($datos);
    }
   
    public function localOrden()
    {   
      
        $local=Local::all();
          if(count($local) < 1){  return response()->json("vacio");}else{
        foreach ($local as  $v) {
              $datos [] =   [
                'local' =>  $v->local,
                  'id'=>$v->idLocal
            ];

        }
       }
            return response()->json($datos);
    }

    public function registroOrden(Request $request)
    {   
        $fecha=date("Y-m-d H:i:s");
        $fechaCodigo=date("m");
        $anio=date("y");
        switch ($fechaCodigo) {
            case 1:
              $cod="EN".$anio;
                break;
            case 2:
              $cod="FE".$anio;
                break;
            case 3:
              $cod="MZ".$anio;
                break;
            case 4:
              $cod="AB".$anio;
                break;
            case 5:
              $cod="MY".$anio;
                break;
             case 6:
              $cod="JN".$anio;
                break;
            case 7:
              $cod="JL".$anio;
                break;
            case 8:
              $cod="AG".$anio;
                break;
            case 9:
              $cod="SE".$anio;
                break;
            case 10:
              $cod="OC".$anio;
                break;
            case 11:
              $cod="NO".$anio;
                break;
             case 12:
              $cod="DI".$anio;
                break;
        }
       $orden = new Orden([
        
         'codigo' => '',
        'estado' => $request->estado,
        'estadoTecnico' => $request->estado,
        'falla' => $request->falla,
        'idTecnico' => $request->tecnico,
        'idCliente' => $request->cliente,
        'idServicio' => $request->servicio,
        'fechaIngreso' => $fecha,
        'fechaEstimada' => $request->fecha,
        'idPrioridad' => $request->prioridad,
        'idLocal' => $request->local,
        'costo' => $request->total,
        'sena' => $request->sena,
        'equipo' => $request->equipo,
        ]);     
       $local = Local::where('idLocal', $request->local)->first();
        if ($orden->save()) {
            $ordenNumero= Orden::where('codigo', 'like', $cod.'%')->get();
            $num='';
            if (sizeof($ordenNumero) < 10) {
                $sum = sizeof($ordenNumero)+1;
                $num= '0'. $sum;
            }else{
                $num=sizeof($ordenNumero)+1;
            }
            $codigo = $cod . $num . '-' . $local->localnumero;
            $orden->codigo = $codigo;
            if ($orden->save()) {
                   return response()->json([
                    'message' => 'Orden registrada'
                ]
                , 201);
            }else{
                return response()->json([
            'message' => 'sc'
        ]
        , 201);    
            }
        }else{
            return response()->json([
            'message' => 'orden no registrada'
        ]
        , 201);
        } 
        return response()->json($orden);
       }

       public function editarOrden($id)
    {
        
        $orden = Orden::where('idorden', $id)->first();
             $datos=[];
            $persona= Persona::where('idPersona', $orden->idCliente)->first();
            $tecnicopersona = Persona::where('idPersona',$orden->idTecnico)->first();
               $cod = strtoupper($orden->codigo);
            $datos = [
                'cliente'=>$persona->idPersona,
                'orden' => $orden->idorden,
               // 'cliente' => $persona->nombre . ' ' .$persona->apellido,
                'local' => $orden->idLocal,
                'equipo' => $orden->equipo,
                 'estado' => $orden->estado,
                   'servicio' => $orden->idServicio,
                'codigo' => $cod,
                'falla' => $orden->falla,
                'total' => $orden->costo,
                'sena' => $orden->sena,
                'tecnico' =>$orden->idTecnico,
                'fecha' => $orden->fechaEstimada,
                'prioridad' => $orden->idPrioridad
                ];
               
        return response()->json($datos);
    }

      public function actualizarOrden($id,Request $request)
    {
       $orden= Orden::find($id);
          $orden->falla = $request->falla;
           $orden->idTecnico = $request->tecnico;
          $orden->idServicio = $request->servicio;
           $orden->fechaEstimada = $request->fecha;
           $orden->idPrioridad = $request->prioridad;
           $orden->idLocal = $request->local;
           $orden->costo = $request->total;
           $orden->sena = $request->sena;
           $orden->equipo = $request->equipo;  

          if( $orden->save()){
            return response()->json("Datos actualizados");
        }else{ 
            return response()->json("Error al  actualizar");
        }  
    }
}

