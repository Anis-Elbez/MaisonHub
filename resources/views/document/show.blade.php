@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
        <a href="{{ route('document.index') }}" class="btn btn-outline-primary btn-sm mb-3"><i class="fas fa-arrow-left"></i> Retour</a>
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
                   
                </div>
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
