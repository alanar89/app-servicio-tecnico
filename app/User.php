<?php

namespace App;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\CustomResetPasswordNotification;
use Illuminate\Support\Facades\DB;

class User extends Authenticatable
{
    use HasApiTokens,Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


   public function getAdministrador()
    {
        return $this->hasOne(Administrador::className(), 'id','idAdministrador');
    }

    public function getCliente()
    {
        return $this->hasOne(Cliente::className(), 'id','idCliente');
    }

    
    public function getEntregas()
    {
        return $this->hasMany(Entrega::className(), 'id','idUser');
    }

    public function getPermissionUsers()
    {
        return $this->hasMany(PermissionUser::className(), 'id','user_id');
    }

    public function getPersona()
    {
        return $this->hasOne(Persona::className(), 'id','idPersona');
    }

  
    public function getRecibidos()
    {
        return $this->hasMany(Recibido::className(),'id','idUser');
    }

    public function getRoleuser()
    {
        return $this->hasOne(Roleuser::className(), 'id','user_id');
    }

    public function getTecnico()
    {
        return $this->hasOne(Tecnico::className(), 'id','idTecnico');
    }


public function sendPasswordResetNotification($token)
{
   $this->notify(new CustomResetPasswordNotification($token));
}

     public function sendEmailNotification($token){
    $this->notify(new CustomEmailNotification($token));
}
//     public function sendEmailVerificationNotification()
// {
//    $this->notify(new CustomVerifyEmailNotification);
// }

}