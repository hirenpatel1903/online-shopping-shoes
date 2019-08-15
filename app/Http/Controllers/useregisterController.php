<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class useregisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function adduser(Request $request)
     {
        $user_data=array(
            'name'=>$request->name,
            'address'=>$request->address,
            'contact'=>$request->contact,
            'email'=>$request->email,
            'password'=>$request->password,
        );

       // dd($user_data);
        $query=DB::insert("insert into userregister(name,address,contact,email,password) values('".$user_data['name']."','".$user_data['address']."','".$user_data['contact']."','".$user_data['email']."','".$user_data['password']."')");
       // dd($query);
       if($query==true)
       {
          return redirect('/user/login');

       }else
       {
          return redirect('/user/Register');
       }
      }
     
      // public function logout(Request $request)
      // {
         
      //       return redirect('/user/login');
         
        
      // }
     
      


      public function loginuser(Request $request)
      {
         
         $login_user=array(
            'email'=>$request->email,
            'password'=>$request->password,
         );
             //dd($login_user);
         $query=DB::select("select * from userregister where email='".$login_user['email']."' and password='".$login_user['password']."'");
         //dd($query);
         if(count($query)==1)
         {
            return redirect('/')->with('alert', 'Loggin successfuly!');
         }
         else
         {
            return redirect('/user/login')->with('alert', 'please Enter valid data!');
         }

      }
      
}
