<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Especificacionesregistradas extends Model
{
	public $table = 'especificacionesregistradas';
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

 
   public function getEspProducto()
    {
        return $this->hasOne(Especificacionesproducto::className(), 'idEspProducto','idespecificacionesproducto' );
    }

    public function getOrden()
    {
        return $this->hasOne(Orden::className(), 'idorden' , 'idOrden');
    }
}
