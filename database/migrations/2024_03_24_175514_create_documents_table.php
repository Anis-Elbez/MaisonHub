<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('documents', function (Blueprint $table) {
            $table->id();
            $table->string('document_nom'); 
            $table->string('document_nom_en')->nullable(); 
            $table->string('document_path'); 
            $table->unsignedBigInteger('etudiant_id'); 
            $table->foreign('etudiant_id')->references('id')->on('etudiants')->onDelete('cascade');
            $table->timestamps(); 
        });
       
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('documents');
    }
};
