<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class adminloginController extends Controller
{
    public function loginadmin(Request $request)
      {
         
         $login_admin=array(
            'username'=>$request->username,
            'password'=>$request->password,
         );
        
         $query=DB::select("select * from adminlogin where username='".$login_admin['username']."' and password='".$login_admin['password']."'");
         if(count($query)==1)
         {
            return redirect('/admin/home');
         }
         else
         {
            return redirect('/admin/login');
         }

      }
}
