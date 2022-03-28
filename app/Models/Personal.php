<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    use HasFactory;
    protected $table = 'personal';






    public function aims()
    {
        return $this->hasMany(
            Aims::class,
            'user_id', // Foreign key on the environments table...
        );
    }
}
