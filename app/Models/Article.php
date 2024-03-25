<?php
   namespace App\Models;

   use Illuminate\Database\Eloquent\Model;
   
   class Article extends Model
   {

       protected $fillable = ['title_fr', 'content_fr', 'title_en', 'content_en', 'etudiant_id'];
   
       public function selectArticles()
       {
       
           return $this->all();
          
       }
   

       public function etudiant()
       {
           return $this->belongsTo(Etudiant::class);
       }
   }