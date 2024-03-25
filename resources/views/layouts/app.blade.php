<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ config('app.name') }} - @yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/styles.css')}}">
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }
        .content-wrapper {
            min-height: 100%;
            display: flex;
            flex-direction: column;
        }
        .container {
            flex: 1;
        }
        .footer {
            background-color: #0085a1;
            color: white;
        }
    </style>
</head>
<body>
@php $locale = session()->get('locale'); @endphp
<div class="content-wrapper">
    <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <img src="{{ asset('logo.png') }}" alt="logo">
      </a>
      <ul class="nav nav-pills">
          <li class="nav-item"><a href="" class="nav-link">@lang('lang.text_hello') @if(Auth::check()) {{ Auth::user()->name }} @else @lang('lang.guest') @endif</a></li>

        @guest
          <li class="nav-item"><a href="{{ route('registration') }}" class="nav-link">@lang('lang.text_registration')</a></li>
          <li class="nav-item"><a href="{{ route('login') }}" class="nav-link">@lang('lang.text_login')</a></li>
        @else
          
          <li class="nav-item"><a href="{{ route('etudiant.index') }}" class="nav-link " aria-current="page">@lang('lang.text_students')</a></li>
          <li class="nav-item"><a href="{{ route('article.index') }}" class="nav-link">@lang('lang.text_view')</a></li> 
         <li><a class="nav-link " href="{{route('logout')}}">@lang('lang.text_logout')</a></li>
          @endguest
        </ul>
        <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            @lang('lang.text_language')
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="{{ route('lang', 'en') }}">English</a></li>
                            <li><a class="dropdown-item" href="{{ route('lang', 'fr') }}">Français</a></li>
                        </ul>
                    </li>
                </ul>
        
          
          <!-- Afficher le nom de l'utilisateur et le bouton de déconnexion si connecté -->
          
    </header>
  </div>

  <div class="container my-5">
    @if(session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
         {{ session('success')}}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    @if(session('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
         {{ session('error')}}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    @yield('content')
</div>


    <footer class="footer mt-auto py-3 text-white" style="background-color: #0085a1;">
        <div class="container text-center">
            &copy; {{ date('Y') }} MaisonHub. All Rights Reserved.
        </div>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
