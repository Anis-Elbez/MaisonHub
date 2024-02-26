@extends('layouts.app')
@section('title', 'etudiant')
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
        <h1 class="mt-5 mb-5">Etudiant</h1>
            <div class="card mb-5">
                <div class="card-header">
                    <h4 class="card-title" style="font-weight: normal;">Nom : <strong>{{ $etudiant->nom }}</strong></h4>
                </div>
                <div class="card-body">
                    <p class="card-text">Adresse : <strong>{{ $etudiant->adresse }}</strong> </p>
                    <ul class="list-unstyled">
                        <li>Telephone : <strong>{{ $etudiant->telephone }}</strong></li>
                        <li>Email : <strong>{{ $etudiant->email }}</strong></li>
                        <li>Date de Naissance :  <strong>{{ $etudiant->date_de_naissance }}</strong></li>
                        <li>Ville: <strong>{{ $etudiant->ville->nom }}</strong></li>
             
                    </ul>
                </div>
                <div class="card-footer d-flex justify-content-between">
                    <a href="{{ route('etudiant.edit',$etudiant->id) }}" class="btn btn-sm btn-outline-success">Modifier</a>
                    <button type="button" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                        Supprimer
                    </button>
                </div>
            </div>
        </div>
    </div>

     {{-- Bootstrap Modal --}}
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5 text-danger" id="DeleteModalLabel">Delete</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        Etes vous sure de supprimer l'etudiant: {{ $etudiant->nom }}?
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <form method="post">
            @csrf
            @method('delete')
            <button type="submit" class="btn btn-sm btn-danger">Supprimer</button>
        </form>
        </div>
    </div>
    </div>
</div>
@endsection