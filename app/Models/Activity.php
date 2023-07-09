<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    use HasFactory;
    protected $table='activity_log';

    public function admin(){
        return $this->belongsTo(Admin::class,'causer_id');
    }


}
