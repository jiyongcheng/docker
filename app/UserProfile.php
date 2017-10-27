<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class UserProfile extends Model
{
    protected $table = 'profiles';

    protected $fillable = [
        'first_name', 'last_name', 'avatar'
    ];
}
