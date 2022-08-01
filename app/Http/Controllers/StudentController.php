<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index()
    {
        return Student::all();
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
            'phone'=>'required|numeric'
        ]);

        $stud =Student::create([
            'name'=> $request->name,
            'email'=> $request->email,
            'password'=> $request->password,
            'phone'=> $request->phone,
            'image'=> $request->image,
            'college'=> $request->college
        ]);

        $response = [
            'Student' => $stud,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Student $student)
    {
        //
    }


    public function edit(Student $student)
    {
        //
    }


    public function update(Request $request, Student $student,$id)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required|min:6',
            'phone'=>'required|numeric'
        ]);

        $student = Student::find($id);
        $student->update($request->all());
        return $student;
    }


    public function destroy($id)
    {
       return Student::destroy($id);
    }
}
