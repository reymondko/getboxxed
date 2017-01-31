<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Merchants extends Controller
{
    protected $fillable = [
        'name', 'owner', 'contactdate', 'contractmonths', 'username', 'password', 'email',
    ];
}
