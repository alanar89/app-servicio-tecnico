<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Local extends Model
{
		public $table = 'local';
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
        return $this->hasMany(Orden::className(), 'idLocal','idLocal');
    }
}
