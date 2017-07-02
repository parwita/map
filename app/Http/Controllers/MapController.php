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
		$i=0;
		foreach($towers as $tower) {
			if ($i==0){
    			Mapper::map($tower->longitude, $tower->latitude, ['zoom' => 15, 'markers' => ['animation' => 'DROP'], 'cluster' => false,'eventAfterLoad' => 'webLoading()']);
	    	}
	    	Mapper::marker($tower->longitude, $tower->latitude, ['markers' => ['title' => $tower->no_tower, 'animation' => 'DROP'], 'cluster' => false, 'eventClick' => 'clickMarker()']);	    	
	    	$i++;
	    }

	    return view('map');
	}
}
