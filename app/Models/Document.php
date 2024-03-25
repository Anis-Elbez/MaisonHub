<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $fillable = [
        'document_nom',
        'document_nom_en',
        'document_path',
        'etudiant_id'
    ];

    public function etudiant()
    {
        return $this->belongsTo(Etudiant::class);
    }
}
