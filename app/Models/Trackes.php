<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trackes extends Model
{
    use HasFactory;
    protected $table = 'trackes';
    protected $fillable = [
        'title',
        'description'

    ];

    public function Courses(){
        return $this->hasMany(Course::class);
    }
}
