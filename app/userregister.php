<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class userregister extends Model
{
    use Notifiable;
    protected $table ='userregister';
     
    protected $fillable = [
        'name', 'address','contact','email', 'password',
    ];
    public $primarykey='id';
}
