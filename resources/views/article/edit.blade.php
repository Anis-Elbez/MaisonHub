@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Modifier l'article</h1>

    @if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="{{ route('article.update', $article->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="title_fr" class="form-label">Titre (FR)</label>
            <input type="text" class="form-control" id="title_fr" name="title_fr" value="{{ $article->title_fr }}" required>
        </div>

        <div class="mb-3">
            <label for="content_fr" class="form-label">Contenu (FR)</label>
            <textarea class="form-control" id="content_fr" name="content_fr" rows="4" required>{{ $article->content_fr }}</textarea>
        </div>

        <div class="mb-3">
            <label for="title_en" class="form-label">Titre (EN)</label>
            <input type="text" class="form-control" id="title_en" name="title_en" value="{{ $article->title_en }}">
        </div>

        <div class="mb-3">
            <label for="content_en" class="form-label">Contenu (EN)</label>
            <textarea class="form-control" id="content_en" name="content_en" rows="4">{{ $article->content_en }}</textarea>
        </div>

        <button type="submit" class="btn btn-primary">Enregistrer les modifications</button>
    </form>
</div>
@endsection
