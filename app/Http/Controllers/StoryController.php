<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoryRequest;
use App\Models\Story;
use App\Repositories\StoryRepo;
use App\Repositories\XMLSerializer;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Response;
use stdClass;

class StoryController extends Controller
{
    private $StoryRepo;

    public function __construct(StoryRepo  $StoryRepo)
    {
        $this->StoryRepo = $StoryRepo;
        $this->middleware('auth')->except('index');
    }

    public function index(Request $request)
    {
        if($request->has('search_keyword') && $request->get('search_keyword') == null) {
            Toastr::warning('Input search keyword is empty !', 'warning', ["positionClass" => "toast-top-right"]);
            return back();
        }
        $Stories = $this->StoryRepo->all();
        return view('story.index',compact('Stories'));
    }

    public function create()
    {
        return view('story.create');
    }

    public function store(StoryRequest $request)
    {
        Toastr::success('The story has been created successfully !', 'Success', ["positionClass" => "toast-top-right"]);
        $this->StoryRepo->store($request->validated());
        return redirect()->route('stories.index');
    }

    public function show(Request $request, Story $story)
    {
        return $this->StoryRepo->show($request,$story);
    }

    public function edit(Story $story)
    {
        return view('story.edit',compact('story'));
    }

    public function update(StoryRequest $request, Story $story)
    {
        Toastr::success('The story has been updated successfully !', 'Success', ["positionClass" => "toast-top-right"]);
        $this->StoryRepo->update($story->id,$request->validated());
        return back();
    }

    public function destroy(Story $story)
    {
        Toastr::success('The story has been deleted successfully !', 'Success', ["positionClass" => "toast-top-right"]);
        $this->StoryRepo->delete($story->id);
        return back();
    }
}
