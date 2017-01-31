<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Merchants extends Model
{
	protected $table = "merchants"; 
   

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id','name', 'owner', 'contactdate', 'contractmonths', 'username', 'password', 'email',
    ];
}
