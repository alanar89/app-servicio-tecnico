<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Garantia extends Model
{
    public $table = 'garantia';
    public $fillable = [ 'idGarantia', 'dias', 'idOrden', 'fechaIngreso', 'fechaEntrega', 'fechaInicioGarantia'
        
    ];
    protected $primaryKey = 'idGarantia';
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
