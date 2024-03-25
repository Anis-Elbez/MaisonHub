@extends('layouts.app')
@section('title', 'ajouter article')
@section('content')
<div class="container">
    <div class="row ms-5 me-5 mb-5">
        <div class="col-12 pt-2">
            <a href="{{ route('article.index') }}" class="btn btn-outline-primary btn-sm mt-5"><i class="bi bi-caret-left"></i>Retour</a>
            <h1 class="mt-5">Ajouter un nouvel article</h1>
            <div class="card mt-5">
                <div class="card-header">Informations de l'article</div>
                <div class="card-body">
                    @if($errors->any())
                        @foreach($errors->all() as $error)
                        <div class="alert alert-danger">{{ $error }}</div>
                        @endforeach
                    @endif
                    <form action="{{ route('article.store') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="title_fr">Titre (FR)*</label>
                            <input type="text" class="form-control" id="title_fr" name="title_fr" required value="{{ old('title_fr') }}">
                            @error('title_fr')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="content_fr">Description (FR)*</label>
                            <textarea class="form-control" id="content_fr" name="content_fr" required>{{ old('content_fr') }}</textarea>
                            @error('content_fr')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="title_en">Title (EN)</label>
                            <input type="text" class="form-control" id="title_en" name="title_en" value="{{ old('title_en') }}">
                            @error('title_en')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="content_en">Description (EN)</label>
                            <textarea class="form-control" id="content_en" name="content_en">{{ old('content_en') }}</textarea>
                            @error('content_en')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <button type="submit" class="btn btn-primary">Publier l'article</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
