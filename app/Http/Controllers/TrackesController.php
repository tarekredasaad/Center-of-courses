<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trackes;
class TrackesController extends Controller
{
    public function index()
    {
        return Trackes::all();
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
            'description'=>'required',

        ]);

        $track =Trackes::create([
            'title'=> $request->title,
            'description'=> $request->description,

        ]);

        $response = [
            'Trackes' => $track,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Trackes $track)
    {
        //
    }


    public function edit(Trackes $track)
    {
        //
    }


    public function update(Request $request, Trackes $track,$id)
    {
        $request->validate([
            'title'=>'required',
            'description'=>'required',

        ]);

        $track = Trackes::find($id);
        $track->update($request->all());
        return $track;
    }


    public function destroy($id)
    {
       return Trackes::destroy($id);
    }
}
