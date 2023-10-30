<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recibido extends Model
{
	public $table = 'recibido';
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
     public function getOrden()
    {
        return $this->hasOne(Orden::className(),'idOrden','idorden');
    }
}
