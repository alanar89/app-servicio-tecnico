<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Roleuser extends Model
{
    public $table = 'role_user';
    protected $primaryKey = 'id';
 public $fillable = [  'role_id','user_id'
    ];
    protected $casts = [
        'id' => 'integer'
    ];

     public static $rules = [
        
    ];
}
