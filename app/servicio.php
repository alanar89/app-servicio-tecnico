<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
	public $table = 'servicio';
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

    public function getOrdens()
    {
        return $this->hasMany(Orden::className(), 'idServicios','idServicios');
    }

    public function getServicioespecificaciones()
    {
        return $this->hasMany(Servicioespecificaciones::className(), 'idServicios','idServicios');
    }

    public function getTecnicoservicios()
    {
        return $this->hasMany(Tecnicoservicio::className(), 'idServicios','idServicios');
    }
}
