<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
/**
 * Class orden
 * @package App\Models
 * @version August 10, 2019, 6:20 pm UTC
 *
 */
class Orden extends Model
{

    public $table = 'orden';
    public $fillable = [
        'idorden',
        'codigo',
        'estado',
        'falla',
        'idTecnico',
        'idCliente',
        'idServicio',
        'fechaIngreso',
        'fechaEstimada',
        'idPrioridad',
        'idLocal',
        'costo',
        'sena',
        'equipo',
        'estadoTecnico'];
    protected $primaryKey = 'idorden';
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

   public function getEntregas()
    {
        return $this->hasMany(Entrega::className(), 'idorden','idOrden' );
    }

    public function getEspecificacionesregistradas()
    {
        return $this->hasMany(Especificacionesregistradas::className(), 'idorden','idOrden' );
    }

  
    public function getEstadoordens()
    {
        return $this->hasMany(Estadoorden::className(), 'idorden','idOrden' );
    }

  
    public function getObservacion()
    {
        return $this->hasOne(Observacion::className(), 'idorden','idObservacion' );
    }

  
    // public function getObservacions()
    // {
    //     return $this->hasMany(Estadoorden::className(), 'idObservacion','idEstadoOrden' )->viaTable('observacion', 'idorden','idObservacion' );
    // }

    public function getCliente()
    {
        return $this->hasOne(Cliente::className(), 'idCliente','idCliente' );
    }

    public function getLocal()
    {
        return $this->hasOne(Local::className(), 'idLocal','idLocal' );
    }

    public function getOrden()
    {
        return $this->hasOne(Recibido::className(), 'idorden','idRecibido' );
    }

    public function getServicio()
    {
        return $this->hasOne(Servicio::className(), 'idServicio','idServicios' );
    }

   
    public function getTecnico()
    {
        return $this->hasOne(Tecnico::className(), 'idTecnico','idTecnico' );
    }

    public function getPrioridad()
    {
        return $this->hasOne(Prioridad::className(), 'idorden','idPrioridad' );
    }
}
