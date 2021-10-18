<?php

namespace App\Repositories;

use App\Models\Story;
use App\Repositories\XMLSerializer;
use Illuminate\Support\Facades\Request;

class StoryRepo
{
    public function all($pagination = 4)
    {
        if (Request::has('search_keyword') && Request::get('search_keyword') != null){
            return Story::where('title','like','%'.Request::get('search_keyword').'%')
                ->orWhere('body','like','%'.Request::get('search_keyword').'%')
                ->orWhereHas('created_by_user',function($query) {
                    $query->where('name','like','%'.Request::get('search_keyword').'%');
                })
                ->orderBy('published_date','desc')
                ->paginate($pagination);
        } else {
            return Story::orderBy('published_date','desc')
                ->paginate($pagination);
        }
    }

    public function find($id) : Story
    {
        return Story::findOrFail('id',$id);
    }

    public function show($request,$story)
    {
        if ($request->has('xml')) {
            $header['Content-Type'] = 'application/xml';
            return response(XMLSerializer::fromObject($this->storyFormating($story),'story'),200,$header);
        } else {
            return response()->json($this->storyFormating($story));
        }
    }

    public function store($data) : Story
    {
        return Story::create($data);
    }

    public function update($id,$data) : Story
    {
        Story::where('id',$id)
            ->update($data);
        return Story::findOrFail($id);
    }

    public function delete($id)
    {
        return Story::where('id',$id)
            ->delete($id);
    }

    private function storyFormating($story)
    {
        $story_formated = new \stdClass;
        $story_formated->id = $story->id;
        $story_formated->title = $story->title;
        $story_formated->body = $story->body;
        $story_formated->publised_date = $story->show_published_date;
        $story_formated->created_by = $story->created_by_user->name;
        return $story_formated;
    }
}
