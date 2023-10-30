<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;


class Users extends Model
{
    //
	public $table = 'users';
      protected $fillable = [
        'name', 'email', 'password',
    ];

     protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
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

    public function getRoleusers()
    {
        return $this->hasOne(Roleuser::className(), 'id','user_id');
    }

    public function getTecnico()
    {
        return $this->hasOne(Tecnico::className(), 'id','idTecnico');
    }
}
