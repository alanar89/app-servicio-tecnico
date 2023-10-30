<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Prioridad extends Model
{
	public $table = 'prioridad';
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

     public function getPrioridad0()
    {
        return $this->hasOne(Orden::className(), 'idPrioridad','idorden');
    }
}

