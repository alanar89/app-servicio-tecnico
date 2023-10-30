<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tecnicoservicio extends Model
{
	public $table = 'tecnicoservicio';
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
    public function getServicio()
    {
        return $this->hasOne(Servicio::className(),'idServicio','idServicio');
    }

    public function getTecnico()
    {
        return $this->hasOne(Tecnico::className(),'idTecnico','idTecnico');
    }
}
