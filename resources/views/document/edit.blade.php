@extends('layouts.app')

@section('content') 
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <a href="{{ route('document.index') }}" class="btn btn-outline-primary btn-sm mt-5">Retour</a>
            <div class="card mt-3">
                <div class="card-header">Modifier le document</div>
                <div class="card-body">
                    <form action="{{ route('document.update', $document->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT') {{-- Important pour spécifier la méthode HTTP PUT pour la mise à jour --}}

                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif

                        <div class="form-group mb-3">
                            <label for="document_nom">Titre du document (FR)</label>
                            <input type="text" class="form-control" id="document_nom" name="document_nom" value="{{ $document->document_nom }}" required>
                        </div>

                        <div class="form-group mb-3">
                            <label for="document_nom_en">Titre du document (EN)</label>
                            <input type="text" class="form-control" id="document_nom_en" name="document_nom_en" value="{{ $document->document_nom_en }}">
                        </div>

                        <div class="form-group mb-3">
                            <label for="file">Changer le fichier (Laissez vide si vous ne souhaitez pas changer le fichier)</label>
                            <input type="file" class="form-control" id="file" name="document">
                            <small>Document actuel : {{ basename($document->document_path) }}</small>
                        </div>

                        <button type="submit" class="btn btn-primary">Mettre à jour le document</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
