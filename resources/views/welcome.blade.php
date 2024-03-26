@extends('layouts.app')

@section('title', trans('lang.text_welcome'))

@section('content')

@if(auth()->check())
    <script>window.location = "{{ route('article.index') }}";</script>
@endif

<style>
    .welcome-container {
        background-color: #f8fafc;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        text-align: center;
        padding: 40px 20px;
    }

    .btn-primary, .btn-secondary {
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin: 10px;
    }
</style>

<div class="container">
    <div class="row justify-content-center my-5">
        <div class="col-md-8">
            <div class="welcome-container">
                <h1>Bienvenue sur l'application du Collège Maisonneuve !</h1>
                <p>Rejoignez notre communauté dynamique et restez connecté avec nous.</p>
                <div class="action-buttons">
                    <a href="{{ route('login') }}" class="btn btn-primary">Se connecter</a>
                    <a href="{{ route('registration') }}" class="btn btn-secondary">Créer un compte</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
