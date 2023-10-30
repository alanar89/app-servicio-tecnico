<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Especificacionesproducto extends Model
{
	public $table = 'especificacionesproducto';
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

   
    public function getEspecificacionesregistradas()
    {
        return $this->hasMany(Especificacionesregistradas::className(), 'idespecificacionesproducto');
    }

   public function getEspecificacionesregistradas()
    {
        return $this->hasMany(Especificacionesregistradas::className(), 'idespecificacionesproducto','idEspProducto' );
    }

    public function getServicioespecificaciones()
    {
        return $this->hasMany(Servicioespecificaciones::className(), 'idespecificacionesproducto','idEspecificaciones');
    }
}
