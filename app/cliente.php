<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    public $table = 'cliente';
    public $fillable = [ 'idCliente', 'redesSociales', 'activo',];
    protected $primaryKey = 'idCliente';
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

     public function getOrdens()
    {
        return $this->hasMany(Orden::className(), 'idCliente','idCliente');
    }
}
