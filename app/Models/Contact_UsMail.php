<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact_UsMail extends Model
{
    use HasFactory;
    protected $table = 'contact_us_mail'; 

    protected $fillable = [
        'name',
        'email',
        'phone',
        'subject',
        'message',
    ];
}
