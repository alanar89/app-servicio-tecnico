<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Observacion extends Model
{
	public $table = 'observacion';
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

    public function getObservacion0()
    {
        return $this->hasOne(Estadoorden::className(), 'idObservacion','idEstadoOrden');
    }

    
    public function getObservacion1()
    {
        return $this->hasOne(Orden::className(), 'idObservacion','idorden');
    }
}
