<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function index()
    {
        return Course::all();
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'link'=>'required',

        ]);

        $cors =Course::create([
            'name'=> $request->name,
            'link'=> $request->link,
            'admin_id'=> $request->admin_id,
            'level_id'=> $request->level_id,
            'image'=> $request->image,
            'track_id'=> $request->track_id
        ]);

        $response = [
            'Course' => $cors,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Course $cors)
    {
        //
    }


    public function edit(Course $cors)
    {
        //
    }


    public function update(Request $request, Course $cors,$id)
    {
        $request->validate([
            'name'=>'required',
            'link'=>'required',

        ]);
        $cors = Course::find($id);
        $cors->update($request->all());
        return $cors;
    }


    public function destroy($id)
    {
       return Course::destroy($id);
    }
}
