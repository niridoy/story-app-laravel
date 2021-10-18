<?php

namespace App\Policies;

use App\Models\Story;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class StoryPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function update(User $user, Story $story)
    {
        return $user->id === $story->created_by;
    }

    public function delete(User $user, Story $story)
    {
        return $user->id === $story->created_by;
    }
}
