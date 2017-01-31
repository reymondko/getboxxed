<?php
namespace App\Http\Controllers;

use App\Merchant;
use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
class CreateMerchantController extends Controller
{
    protected $redirectTo = '/home';
 	protected function create(Request $request)
    {

       $user = User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password'))
        ]);
    	Merchant::create([
    		'user_id' => $user->id,
            'name' =>  $request->input('name'),
			'owner' =>  $request->input('owner'),
			'contactdate' =>  $request->input('contactdate'),
			'contractmonths' =>  $request->input('contractmonths'),
			'username' =>  $request->input('username'),
			'password' =>  $request->input('password'),
			'email' =>  $request->input('email')

        ]);

        /*return Redirect::to('/home');*/
        return redirect('home');
    }
}
