<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class CreateMerchant extends Model
{
	 use Notifiable;
	protected $table = "merchants"; 
   

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'owner', 'contactdate', 'contractmonths', 'username', 'password', 'email',
    ];

}
