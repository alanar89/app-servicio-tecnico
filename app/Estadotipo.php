<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estadotipo extends Model
{
    public $table = 'estadotipo';
    public $fillable = [
        'id',
        'estado'
    ];
     protected $primaryKey = 'id';
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
}
