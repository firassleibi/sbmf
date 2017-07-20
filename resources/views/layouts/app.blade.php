<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>SBMF</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-tap-highlight" content="no">
  <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google. ">
  <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template,">

<link href='https://fonts.googleapis.com/css?family=Cairo' rel='stylesheet'>
  <!-- Favicons-->
  <link rel="icon" href="{{asset('images/favicon/favicon-32x32.png')}}" sizes="32x32">
  <!-- Favicons-->
  <link rel="{{asset('apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png')}}">
  <!-- For iPhone -->
  <meta name="msapplication-TileColor" content="#00bcd4">
  <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
  <!-- For Windows Phone -->


  <!-- CORE CSS-->
  <link href="{{asset('css/materialize.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="{{asset('css/style.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <!-- Custome CSS-->    
  <link href="{{asset('css/custom/custom.css')}}" type="text/css" rel="stylesheet" media="screen,projection">

  <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
  <link href="{{asset('js/plugins/prism/prism.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="{{asset('js/plugins/perfect-scrollbar/perfect-scrollbar.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="{{asset('js/plugins/chartist-js/chartist.min.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <!--jsgrid css-->
  <link href="{{asset('js/plugins/jsgrid/css/jsgrid.min.css')}}" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="{{asset('js/plugins/jsgrid/css/jsgrid-theme.min.css')}}" type="text/css" rel="stylesheet" media="screen,projection">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
 <header id="header" class="page-topbar">
        <!-- start header nav-->
        <div class="navbar-fixed">
            <nav class="navbar-color">
                <div class="nav-wrapper">
                    
                    

                    <ul class="right ">
                                                    @if (Auth::guest())
                            <li><a href="{{ route('login') }}">Login</a></li>
                            
                        @else
                            <li class="dropdown">

                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    
                            </li>
                        @endif
                    </ul>
                    <!-- translation-button -->
                    
                    <!-- notifications-dropdown -->
                     <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                    
                    </ul>
                </div>
            </nav>
        </div>
        <!-- end header nav-->
  </header>

        @yield('content')

  
    <script src="{{ asset('js/app.js') }}"></script>

    <!-- Scripts -->
    <script type="text/javascript" src="{{ asset('js/plugins/jquery-1.11.2.min.js') }}"></script>    
    <!--angularjs-->
    <script type="text/javascript" src="{{ asset('js/plugins/angular.min.js') }}"></script>
    <!--materialize js-->
    <script type="text/javascript" src="{{ asset('js/materialize.js') }}"></script>
    <!--prism -->
    <script type="text/javascript" src="{{ asset('js/plugins/prism/prism.js') }}"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="{{ asset('js/plugins/perfect-scrollbar/perfect-scrollbar.min.js') }}"></script>
    <!-- chartist -->
    <script type="text/javascript" src="{{ asset('js/plugins/chartist-js/chartist.min.js') }}"></script>   
    
    <!--jsgrid-->
    <script type="text/javascript" src="{{ asset('js/plugins/jsgrid/js/db.js') }}"></script> <!--data-->
    <script type="text/javascript" src="{{ asset('js/plugins/jsgrid/js/jsgrid.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/plugins/jsgrid/js/jsgrid-script.js') }}"></script>
    
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="{{ asset('js/plugins.js') }}"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="{{ asset('js/custom-script.js') }}"></script>
    <script>
      $(document).ready(function(){
             $(".jsgrid-table").css("width", "10px");
      });
    </script>
</body>
</html>
