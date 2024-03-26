<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ville;

class Etudiant extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'adresse',
        'telephone',
        'email',
        'date_de_naissance',
        'ville_id',
        'user_id'

    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function Ville() {
        return $this->belongsTo(Ville::class);
    }

    public function articles()
{
    return $this->hasMany(Article::class);
}

public function documents()
{
    return $this->hasMany(Document::class);
}


}
