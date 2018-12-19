<%-- 
    Document   : Register
    Created on : 19 Dec, 2018, 8:12:11 PM
    Author     : glodeveloper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">

        <title>Register User</title>
        <!-- Favicons-->
        <link rel="icon" href="../../images/favicon/favicon-32x32.png" sizes="32x32">
        <!-- Favicons-->
        <link rel="apple-touch-icon-precomposed" href="../../images/favicon/apple-touch-icon-152x152.png">
        <!-- For iPhone -->
        <meta name="msapplication-TileColor" content="#00bcd4">
        <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- For Windows Phone -->
        <!-- CORE CSS-->
        <link href="css/materialize.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <!-- Custome CSS-->
        <link href="css/custom.css" type="text/css" rel="stylesheet">
        <link href="css/page-center.css" type="text/css" rel="stylesheet">
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="css/perfect-scrollbar.css" type="text/css" rel="stylesheet">
    </head>
    <body class="cyan">
        <!-- Start Page Loading -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <div id="login-page" class="row">
            <div class="col s12 z-depth-4 card-pane2">
                <form class="login-form">
                    <div class="row">
                        <div class="input-field col s12 center">
                            <h4>Register</h4>

                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">person_outline</i>
                            <input id="username" type="text">
                            <label for="username" class="center-align">Username</label>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">email</i>
                            <input id="email" type="email">
                            <label for="email" class="center-align">Email</label>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">lock_outline</i>
                            <input id="password" type="password">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">lock_outline</i>
                            <input id="password-again" type="password">
                            <label for="password-again">Password again</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <a href="index.html" class="btn waves-effect waves-light col s12">Register Now</a>
                        </div>
                        <div class="input-field col s12">
                            <p class="margin center medium-small sign-up">Already have an account? <a href="../salesdashboard/user-login.html">Login</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- ================================================
        Scripts
        ================================================ -->
        <!-- jQuery Library -->
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <!--materialize js-->
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <!--scrollbar-->
        <script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
        <!--plugins.js - Some Specific JS codes for Plugin Settings-->
        <script type="text/javascript" src="js/plugins.js"></script>
        <!--custom-script.js - Add your own theme custom JS-->
        <script type="text/javascript" src="../../js/custom-script.js"></script>
    </body>
</html>