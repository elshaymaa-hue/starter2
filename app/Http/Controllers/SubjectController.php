<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class SubjectController extends Controller
{
    //
     //
     public function index()
     {
         $directories = DB::table("directory")->pluck("name", "id");
         return view('subject', compact('directories'));
     }
     
     public function getSubject(Request $request)
     {
         $subjects = DB::table("subject")
             ->where("directory_id", $request->directory_id)
             ->pluck("name", "id");
         return response()->json($subjects);
     }
 
     public function getSubSubjects(Request $request)
     {
         $subsubjects = DB::table("subsubjects")
             ->where("subject_id", $request->subject_id)
             ->pluck("name", "id");
         return response()->json($subsubjects);
     }
}