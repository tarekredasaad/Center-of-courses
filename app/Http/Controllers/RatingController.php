<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rating;
class RatingController extends Controller
{
    public function index()
    {
        return Rating::all();
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $request->validate([
            'rate'=>'required',
            'course_id'=>'required',
            'student_id'=>'required',

        ]);

        $rate =Rating::create([
            'course_id'=> $request->course_id,
            'student_id'=> $request->student_id,
            'rate'=> $request->rate,

        ]);

        $response = [
            'Course' => $rate,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Rating $rate)
    {
        //
    }


    public function edit(Rating $rate)
    {
        //
    }


    public function update(Request $request, Rating $rate,$id)
    {
        $request->validate([
            'rate'=>'required',
            'course_id'=>'required',
            'student_id'=>'required',


        ]);
        $rate = Rating::find($id);
        $rate->update($request->all());
        return $rate;
    }


    public function destroy($id)
    {
       return Rating::destroy($id);
    }
}
