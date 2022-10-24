<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class DropdownController extends Controller
{
    //
    public function index()
    {
        $countries = DB::table("countries")->pluck("name", "id");
        return view('dropdown', compact('countries'));
    }
    public function getSubject()
    {
        $offers = DB::table("offers")
        ->pluck("name_ar", "id")->distinct();
        return view('dropdown', compact('offers'));
    }
    public function getState(Request $request)
    {
        $states = DB::table("states")
            ->where("country_id", $request->country_id)
            ->pluck("name", "id");
        return response()->json($states);
    }

    public function getCity(Request $request)
    {
        $cities = DB::table("cities")
            ->where("state_id", $request->state_id)
            ->pluck("name", "id");
        return response()->json($cities);
    }
}
