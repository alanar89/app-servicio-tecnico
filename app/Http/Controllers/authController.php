<?php

namespace App\Http\Controllers;
use Illuminate\Session\SessionManager;
use App\User;
use App\Mail\Validar;
use App\Persona;
use App\Cliente;
use App\Tecnico;
use App\Administrador;
use App\Roles;
use App\Roleuser;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
// use Caffeinated\Shinobi\Concerns\HasRolesAndPermissions;
use Laravel\Passport\HasApiTokens;
use Illuminate\Support\Facades\Mail;
class AuthController extends Controller
{
    // use HasRolesAndPermissions;
     
    public function signup(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'email'    => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
        ]);        
        $user = new User([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => bcrypt($request->password),
        ]);     
        if ($user->save()) {
             $dato= User::where('email',$user->email)->first();
             $id=$dato->id;
              $p = new Persona([
                'idPersona'=>$id,
                 'nombre' => $request->name,
                'apellido' =>  $request->apellido,
                'telefono' =>   $request->telefono,
                'direccion' =>   $request->direccion,
        ]);    
               $rol = new Roleuser([
                'role_id'=>$request->rol,
                'user_id'=>$id,
        ]);    
                 $c=new Cliente([
               'idCliente'=>$id,
                'activo'=>1,
                 ]);
                 
              $p->save();
              $rol->save();
              $c->save();    
  
        // Mail::to($request->email)->send(new validar($user));
    
           return response()->json([
            'message' => 'Usuario registrado'
        ]
        , 201);
        }else{
            return response()->json([
            'message' => 'Usuario no registrado'
        ]
        , 201);
        }  
        
    } 

     public function login(Request $request)
    {
        $request->validate([
            'email'       => 'required|string|email',
            'password'    => 'required|string',
            'remember_me' => 'boolean',
        ]);        
      
        $credentials = request(['email', 'password']);
       if (!Auth::attempt($credentials)) {
           return response()->json([
                'message' => true], 401);
       }        

        $user = $request->user();
        $roleuser = Roleuser::where('user_id', $request->user()->id)->first();
        $tabla = Cliente::where('idCliente', $request->user()->id)->first();
        if (!$tabla) {
          $tabla = Tecnico::where('idTecnico', $request->user()->id)->first();
        }
        if (!$tabla) {
          $tabla = Administrador::where('idAdministrador', $request->user()->id)->first();
        }
        if (!$tabla) {
          return response()->json([
                'message' => 'No autorizado'], 401);
        }else{
          if ($tabla->activo != 1) {
            return response()->json([
                'message' => 'No autorizado'], 401);
          }
        }
        if ($roleuser) {
            $role = Roles::where('id', $roleuser->role_id)->first();
            $id =$role->slug;
        }else{
            $id = '';
        }
        
        $tokenResult = $user->createToken('Personal Access Token', [$id]);
        $token = $tokenResult->token;        
        if ($request->remember_me) {
            $token->expires_at = Carbon::now()->addDays(1);
        }        
        $token->save();       

        return response()->json([
            'usertype' => $role->slug,
            'access_token' => $tokenResult->accessToken,
            'token_type'   => 'Bearer',
            'expires_at'   => Carbon::parse(
                $tokenResult->token->expires_at)
                   ->toDateTimeString(),

       ]);
    }
   
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();        
        return response()->json(['message' => 
            'sesion finalizada']);
    }
    
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

     public function altaPersonal(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'email'    => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
        ]);        
        $user = new User([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => bcrypt($request->password),
        ]);     
           
        if ($user->save()) {
             $dato= User::where('email',$user->email)->first();
             $id=$dato->id;
              $p = new Persona([
                'idPersona'=>$id,
                'nombre' => $request->name,
                'apellido' =>  $request->apellido,
                'telefono' =>   $request->telefono,
                'direccion' =>   $request->direccion,
        ]);    
               $rol = new Roleuser([
                'role_id'=>$request->rol,
                'user_id'=>$id,
        ]);    
              $p->save();
            $rol->save();
            $activo=1;
           if($request->rol==1){
                $admin=new Administrador([
               'idAdministrador'=>$id,
                'activo'=>$activo,
                 ]);
                  $admin->save();    
        
            }else{
                  $tecnico=new Tecnico([
                'idTecnico'=>$id,
                'activo'=>$activo,
                 ]);   
                   $tecnico->save(); 
            }
           return response()->json([
            'message' => 'Usuario registrado'
        ]
        , 201);
        }else{
            return response()->json([
            'message' => 'Usuario no registrado'
        ]
        , 201);
        }  
        
    }
       public function mail(Request $request ){
        if (User::where('email',$request->email)->exists()){
    return response()->json([
            'message' => 'invalido'
        ]
        , 201);
        }else{
            return response()->json([
            'message' => 'valido'
        ]
        , 201);
        }  
    }

       public function verificar($mail,SessionManager $sessionManager){
         $dato= User::where('email',$mail)->first();
         if($dato->email_verified_at!=NULL){
          $sessionManager->flash('mensaje', 'Tu cuenta de usuario ya se encuentra activada');
           return redirect('/');}
         $fecha= Carbon::now()->toDateTimeString();
         $dato->email_verified_at=$fecha;
         $id=$dato->id;
         $cliente=Cliente::find($id);
         $cliente->activo=1;
        if( $cliente->save() && $dato->save()){
           $sessionManager->flash('mensaje', 'Tu cuenta de usuario fue activada exitosamente,ya puedes empezar a usar nuestra aplicacion en tu dispositivo movil');
           return redirect('/');
        }else{ 
           $sessionManager->flash('mensaje2', 'error al activar tu cuenta');
           return redirect('/');
        }
    

    }
}