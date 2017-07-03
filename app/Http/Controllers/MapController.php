<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cornford\Googlmapper\Facades\MapperFacade as Mapper;
use App\Map;
use Illuminate\Support\Facades\Input;

class MapController extends Controller
{
    //
    public function show()
    {
    	
		$towers = \App\Map::all();
		$i=0;
		foreach($towers as $tower) {
			$id=$tower->id;
			$url=url('quick-view'). '?uid=' . $id;
			// echo "$id";
			if ($i==0){
    			Mapper::map($tower->longitude, $tower->latitude, ['zoom' => 15, 'markers' => ['animation' => 'DROP'], 'cluster' => false,'eventAfterLoad' => "webLoading()"]);
	    	}
	    	Mapper::marker($tower->longitude, $tower->latitude, ['markers' => ['title' => $tower->no_tower, 'animation' => 'DROP'], 'cluster' => false, 'eventClick' => "clickMarker('{$url}');"]);
	    	$i++;
	    }

	    return view('map');
	}

	public function getQuickView()
    {
        $mark = Map::findOrFail(Input::get('uid'));
        return view('includes.modal', ['mark' => $mark]);
    }
}
