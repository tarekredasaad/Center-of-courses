<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        return Admin::all();
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required|min:6',

        ]);

        $admin =Admin::create([
            'name'=> $request->name,
            'email'=> $request->email,
            'password'=> bcrypt($request->password),
            'phone'=> $request->phone,
            'image'=> $request->image,
            'role'=> $request->role
        ]);

        $response = [
            'Admin' => $admin,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Admin $admin,$id)
    {
        return Admin::find($id);
    }


    public function edit(Admin $admin)
    {
        //
    }


    public function update(Request $request, Admin $admin, $id)
    {

        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required|min:6',

        ]);
        $admin = Admin::find($id);
        $admin->update($request->all());
        return $admin;
    }


    public function destroy($id)
    {
        $admin = Admin::find($id);
        $admin->delete();
        // or
       return Admin::destroy($id);
    }
}
