@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <h2 class="mt-5">Documents Partagés</h2>
            <a href="{{ route('document.create') }}" class="btn btn-primary btn-sm mb-3">@lang('Ajouter un document')</a>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Partagé par</th>
                            <th>Date du partage</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($documents as $document)
                        <tr>
                            <td>{{ $document->document_nom }}</td>
                            <td>{{ $document->etudiant->nom }}</td>
                            <td>{{ $document->created_at->format('Y-m-d') }}</td>
                            <td>
                                @if(Auth::check() && Auth::id() == $document->etudiant_id)
                                    <div class="d-flex justify-content-between">
                                        <a href="{{ route('document.edit', $document->id) }}" class="btn btn-sm btn-outline-success me-2">Modifier</a>
                                        <form action="{{ route('document.destroy', $document->id) }}" method="POST" class="d-inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-outline-danger">Supprimer</button>
                                        </form>
                                    </div>
                                @endif
                                <a href="{{ route('document.show', $document->id) }}" class="btn btn-sm btn-outline-primary mt-2">Voir plus</a>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="4">Aucun document disponible.</td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
