<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Auth;
class Story extends Model
{
    use HasFactory;

    protected $fillable = ['title','body','published_date','created_by'];

    public static function boot()
    {
        parent::boot();

        self::saving(function($model){
            $model->created_by = Auth::id();
        });
    }

    public function created_by_user()
    {
        return $this->belongsTo(User::class,'created_by','id')
            ->withDefault();
    }

    public function getShowPublishedDateAttribute()
    {
        return Carbon::parse($this->published_date)
            ->format('d-M-Y');
    }
}
