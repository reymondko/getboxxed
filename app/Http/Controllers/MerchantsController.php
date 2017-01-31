<?php
namespace App\Http\Controllers;
use App\Merchants;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MerchantsController extends Controller
{
    public function index(){
    	
    	$merchants=Merchants::all();
    	//return $merchants;
    	return view('merchants.index',compact('merchants'));
    }
}
