@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
        <div class="d-flex align-items-center justify-content-between" style="width: 100%;">
    <a href="{{ route('article.index') }}" class="btn btn-outline-primary btn-sm mb-3"><i class="fas fa-arrow-left"></i> Retour</a>
    <a href="{{ route('document.create') }}" class="btn btn-primary btn-sm mb-2">Ajouter un document</a>
</div>


            <h2 class="mt-5 mb-5">Documents Partagés</h2>
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
                            <a href="{{ Storage::url($document->document_path) }}" class="btn btn-outline-primary btn-sm me-2" download><i class="fas fa-download"></i></a>
                                @if(Auth::check() && (Auth::user()->etudiant->id == $document->etudiant_id || Auth::user()->isAdmin))
                                <a href="{{ route('document.edit', $document->id) }}" class="btn btn-outline-success btn-sm me-2"><i class="fas fa-edit"></i></a>
                                    <form action="{{ route('document.destroy', $document->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-outline-danger me-2"><i class="fas fa-trash"></i></button>
                                    </form>
                                    <a href="{{ route('document.show', $document->id) }}" class="btn btn-sm btn-outline-info"><i class="fas fa-eye"></i> </a>

                                @endif
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
            {{ $documents->links() }} {{-- Ajoutez ceci pour la pagination --}}
        </div>
    </div>
</div>
@endsection
