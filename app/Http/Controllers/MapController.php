<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cornford\Googlmapper\Facades\MapperFacade as Mapper;
use App\Map;

class MapController extends Controller
{
    //
    public function show()
    {
    	
		$towers = \App\Map::all();
    	Mapper::map(-8.666384, 115.212457, ['zoom' => 15, 'cluster' => false]);
	    
		foreach($towers as $tower) {
	    	Mapper::marker($tower->longitude, $tower->latitude, ['markers' => ['title' => $tower->no_tower, 'animation' => 'DROP'], 'cluster' => false]);
	    }

	    return view('map');
	}
}
