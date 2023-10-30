<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicioespecificaciones extends Model
{
	public $table = 'servicioespecificaciones';
    public $fillable = [
        
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

     public function getEspecificaciones()
    {
        return $this->hasOne(Especificacionesproducto::className(),'idespecificacionesproducto','idEspecificaciones']);
    }

    public function getServicio()
    {
        return $this->hasOne(Servicio::className(), 'idServicio','idServicio');
    }
}
