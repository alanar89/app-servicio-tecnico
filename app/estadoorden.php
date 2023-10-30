<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estadoorden extends Model
{
	public $table = 'estadoorden';
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
        return $this->hasOne(Orden::className(), 'idorden','idOrden');
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getObservacion()
    {
        return $this->hasOne(Observacion::className(),'idEstadoOrden', 'idObservacion' );
    }

    // public function getObservacions()
    // {
    //     return $this->hasMany(Orden::className(), ['idorden' => 'idObservacion'])->viaTable('observacion', ['idObservacion' => 'idEstadoOrden']);
    // }
}
