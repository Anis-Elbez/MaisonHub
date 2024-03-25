@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center mt-5 mb-5">Forum</h1>
            <div class="row">
                <div class="col-12 mb-3 d-flex justify-content-between">
                    <a href="{{ route('article.create') }}" class="btn btn-primary btn-sm me-2">@lang('lang.forum_add_article')</a>
                    <a href="{{ route('document.index') }}" class="btn btn-outline-primary btn-sm">documents partagés<i class="bi bi-caret-right"></i></a>
                </div>
            </div>
            @forelse($articles as $article)
                @if((session('locale') == 'en' && !empty($article->title_en)) || (session('locale') != 'en' && !empty($article->title_fr)))
                    <div class="card mb-4">
                        <div class="card-header">
                            <h4>{{ session('locale') == 'en' ? $article->title_en : $article->title_fr }}</h4>
                        </div>
                        <div class="card-body">
                            <p>{{ session('locale') == 'en' ? $article->content_en : $article->content_fr }}</p>
                            <p class="text-muted">By: {{ $article->etudiant->nom ?? 'Unknown' }}</p>
                        </div>
                        <div class="card-footer text-muted">
                            Date du post: {{ $article->created_at->format('Y-m-d') }}
                            @if(Auth::check() && Auth::id() == $article->etudiant->user_id)
                                <div class="d-flex justify-content-between" style="margin-top: 20px;">
                                    <a href="{{ route('article.edit', $article->id) }}" class="btn btn-sm btn-outline-success">Modifier</a>
                                    <form action="{{ route('article.destroy', $article->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i> @lang('supprimer')</button>
                                    </form>
                                </div>
                            @endif
                        </div>
                    </div>
                @endif
            @empty
                <p class="text-center">@lang('lang.forum_no_article_message')</p>
            @endforelse
        </div>
    </div>
</div>
@endsection
