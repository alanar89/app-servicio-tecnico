<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Administrador extends Model
{
    public $table = 'administrador';
    public $fillable = ['idAdministrador' ,'activo'    
        
    ];
    protected $primaryKey = 'idAdministrador';
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
