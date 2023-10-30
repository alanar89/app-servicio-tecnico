<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
	public $table = 'persona';
     public $fillable = ['idPersona','nombre','apellido','telefono','direccion','dni'];
    
      protected $primaryKey = 'idPersona';
     public $timestamps = false;

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
}
