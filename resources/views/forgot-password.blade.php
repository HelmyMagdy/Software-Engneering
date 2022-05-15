<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Eama|Reset Password</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Themefisher Constra HTML Template v1.0">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

    <!-- Themefisher Icon font -->
    <link rel="stylesheet" href="plugins/themefisher-font/style.css">
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

    <!-- Animate css -->
    <link rel="stylesheet" href="plugins/animate/animate.css">
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="plugins/slick/slick.css">
    <link rel="stylesheet" href="plugins/slick/slick-theme.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">

</head>

<section class="forget-password-page account">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="block text-center">
                    <a class="logo" href="/">
                        <img src="images/eama.logo.png" alt="">
                    </a>
                    <div class="form-group">
                        {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
                    </div>
                    @if (session('status'))
                        <div class="mb-4 font-medium text-sm text-green-600">
                            {{ session('status') }}
                        </div>
                    @endif
                    <x-jet-validation-errors class="mb-4" />
                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf
                        <div class="form-group">
                            <x-jet-input id="email" class="form-control" placeholder="Email Address" type="email"
                                name="email" :value="old('email')" required autofocus />
                        </div>
                        <x-jet-button class="btn btn-main text-center">
                            {{ __('Email Password Reset Link') }}
                        </x-jet-button>
                    </form>
                    <!--
    Essential Scripts
=====================================-->
                    <!-- Main jQuery -->
                    <script src="plugins/jquery/dist/jquery.min.js"></script>
                    <!-- Bootstrap 3.1 -->
                    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
                    <!-- Bootstrap Touchpin -->
                    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
                    <!-- Instagram Feed Js -->
                    <script src="plugins/instafeed/instafeed.min.js"></script>
                    <!-- Video Lightbox Plugin -->
                    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
                    <!-- Count Down Js -->
                    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

                    <!-- slick Carousel -->
                    <script src="plugins/slick/slick.min.js"></script>
                    <script src="plugins/slick/slick-animation.min.js"></script>

                    <!-- Google Mapl -->
                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
                    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

                    <!-- Main Js File -->
                    <script src="js/script.js"></script>



                    </body>

</html>
