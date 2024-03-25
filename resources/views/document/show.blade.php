@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <a href="{{ route('document.index') }}" class="btn btn-outline-primary btn-sm mt-5">
                <i class="bi bi-arrow-left"></i> Retour aux documents
            </a>
            <div class="card mt-3">
                @if(isset($document))
                <div class="card-header">
                    {{ $document->document_nom }}
                </div>
                <div class="card-body">
                    <h5 class="card-title">
                        {{ $document->document_nom_en ?? 'Pas de titre en anglais' }}
                    </h5>
                    <p class="text-muted">
                        Publié le {{ $document->created_at->format('d/m/Y') }} par {{ $document->etudiant->nom ?? 'Inconnu' }}
                    </p>
                    <a href="{{ Storage::url($document->document_path) }}" class="btn btn-primary" download>
                        <i class="bi bi-download"></i> Télécharger
                    </a>
                </div>
                @if(Auth::id() == $document->etudiant_id)
                <div class="card-footer d-flex justify-content-between">
                    <a href="{{ route('document.edit', $document->id) }}" class="btn btn-outline-success btn-sm">
                        <i class="bi bi-pencil"></i> Modifier
                    </a>
                    <form action="{{ route('document.destroy', $document->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-outline-danger btn-sm">
                            <i class="bi bi-trash"></i> Supprimer
                        </button>
                    </form>
                </div>
                @endif
                @else
                <div class="card-body">
                    <p class="text-center">Document introuvable.</p>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
