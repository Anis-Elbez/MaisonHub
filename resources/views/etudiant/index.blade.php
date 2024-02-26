@extends('layouts.app')
@section('title', 'etudiant List')
@section('content')
    <h1 class="my-5">Liste d'etudiants</h1>
    <div class="row">
    @forelse($etudiants as $etudiant)


    <div class="card mb-3 me-3" style="width: 24rem;">
  <div class="card-body">
    <h5 class="card-title">{{ $etudiant->nom }}</h5>
    <p class="card-text">Telephone:  <strong>{{ $etudiant->telephone }}</strong></p>
    <p class="card-text">Email: <strong>{{ $etudiant->email }}</strong></p>
    <p class="card-text">Date naissance: <strong>{{ $etudiant->date_de_naissance }}</strong></p>
    <a href="{{route('etudiant.show', $etudiant->id)}}" class="btn btn-primary">Voir</a>
  </div>
</div>



    @empty
        <div class="alert alert-danger">There are no tasks to display!</div>
    @endforelse  
    </div>
@endsection




