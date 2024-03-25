@extends('layouts.app')

@section('title', trans('lang.text_welcome'))

@section('content')
<style>
    .welcome-container {
        background-color: #f8fafc;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .welcome-header {
 
   
        padding: 20px 0;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }

    .card-body {
        padding: 20px;
    }

    .btn-primary {
  
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin-bottom: 16px;
    }

 
</style>

<div class="container">
    <div class="row justify-content-center my-5">
        <div class="col-md-8">
            <div class="welcome-container">
                <div class="welcome-header text-center">
                    <h1>Bienvenue sur l'application du Collège Maisonneuve !</h1>
                </div>
                
                <div class="card-body">
                    <p>Notre objectif est de créer un environnement en ligne dynamique où vous pouvez interagir, échanger des idées et rester informé sur tout ce qui se passe au Collège Maisonneuve.</p><br>
<p>L'équipe de l'application du Collège Maisonneuve</p>
                </div>
                <div class="card-footer text-center">
                    <a href="{{ route('etudiant.index') }}" class="btn btn-primary">Aller à la liste d'étudiant</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
