<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Trackes;
use App\Models\Admin;
use App\Models\Level;
class Course extends Model
{
    use HasFactory;
    protected $table = 'courses';
    protected $fillable = [
        'name',
        'link',
        'admin_id',
        'level_id',
        'image',
        'track_id',
    ];

    public function Track()
    {
        return $this->belongsTo('App\Models\Trackes','track_id');
    }

    public function Admin()
    {
        return $this->belongsTo('App\Models\Admin','admin_id');
    }

    public function Level()
    {
        return $this->belongsTo('App\Models\Level','level_id');
    }
}
