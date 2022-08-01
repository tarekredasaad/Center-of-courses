<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Level;

class LevelController extends Controller
{
    public function index()
    {
        return Level::all();
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',


        ]);

        $lvl =Level::create([
            'title'=> $request->title,


        ]);

        $response = [
            'Level' => $lvl,
            'message' => 'Insert Done',
        ];

        return response($response,201);
    }


    public function show(Level $level)
    {
        //
    }


    public function edit(Level $level)
    {
        //
    }


    public function update(Request $request, Level $level,$id)
    {
        $request->validate([
            'title'=>'required',
        ]);

        $level = Level::find($id);
        $level->update($request->all());
        return $level;
    }


    public function destroy($id)
    {
       return Level::destroy($id);
    }
}
