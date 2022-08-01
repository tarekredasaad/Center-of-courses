<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Admin extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'admin';
    protected $fillable = [
        'name',
        'email',
        'password',
        'phone',
        'image',
        'role',
    ];

    public function Courses(){
        return $this->hasMany(Course::class);
    }
}
