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
<div class="content-wrapper">
    <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use href="/public/logo.png"></use></svg>
        <img src="{{ asset('logo.png') }}" alt="logo" srcset="">
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="{{ route('etudiant.index') }}" class="nav-link active" aria-current="page">Etudiants</a></li>
        <li class="nav-item"><a href="{{ route('etudiant.create') }}" class="nav-link">Nouveau Etudiant</a></li>
     
      </ul>
    </header>
  </div>

    
    <div class="container my-5">
        @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
             {{ session('success')}}
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
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
</script>
</html>

