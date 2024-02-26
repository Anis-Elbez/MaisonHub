@extends('layouts.app')

@section('title', 'Edit Etudiant')

@section('content')

    <div class="row justify-content-center mt-5 mb-5">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Modification des informations de l'Etudiant</h5>
                </div>
                <div class="card-body">
                    <form method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="nom" class="form-label">Nom</label>
                            <input type="text" class="form-control" id="nom" name="nom" value="{{ old('nom', $etudiant->nom) }}">
                            @if ($errors->has('nom'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('nom') }}
                                </div>
                            @endif
                        </div>
                        <div class="mb-3">
                            <label for="adresse" class="form-label">Adresse</label>
                            <textarea class="form-control" id="adresse" name="adresse" rows="3">{{ old('adresse', $etudiant->adresse) }}</textarea>
                            @if ($errors->has('adresse'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('adresse') }}
                                </div>
                            @endif
                        </div>
                        <div class="mb-3">
                            <label for="telephone" class="form-label">Téléphone</label>
                            <input type="text" class="form-control" id="telephone" name="telephone" value="{{ old('telephone', $etudiant->telephone) }}">
                            @if ($errors->has('telephone'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('telephone') }}
                                </div>
                            @endif
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email', $etudiant->email) }}">
                            @if ($errors->has('email'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('email') }}
                                </div>
                            @endif
                        </div>
                        <div class="mb-3">
                            <label for="date_de_naissance" class="form-label">Date de Naissance</label>
                            <input type="date" class="form-control" id="date_de_naissance" name="date_de_naissance" value="{{ old('date_de_naissance', $etudiant->date_de_naissance) }}">
                            @if ($errors->has('date_de_naissance'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('date_de_naissance') }}
                                </div>
                            @endif
                        </div>
                        <div class="mb-3">
    <label for="ville_id" class="form-label">Ville</label>
    <select class="form-select" id="ville_id" name="ville_id">
        @foreach($villes as $ville)
            <option value="{{ $ville->id }}" {{ $etudiant->ville_id == $ville->id ? 'selected' : '' }}>{{ $ville->nom }}</option>
        @endforeach
    </select>
    @if ($errors->has('ville_id'))
        <div class="text-danger mt-2">
            {{ $errors->first('ville_id') }}
        </div>
    @endif
</div>
                        <button type="submit" class="btn btn-primary">Mettre à jour</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
