<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tecnico extends Model
{
	public $table = 'tecnico';
     public $fillable = ['idTecnico','activo'           
    ];
 public $timestamps = false;
  protected $primaryKey = 'idTecnico';
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
        return $this->hasMany(Orden::className(), 'idTecnico','idTecnico');
    }

    public function getTecnicoservicios()
    {
        return $this->hasMany(Tecnicoservicio::className(),'idTecnico','idTecnico');
    }
}
