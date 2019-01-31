<%-- 
    Document   : index
    Created on : 18 Dec, 2018, 7:22:34 PM
    Author     : glodeveloper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">

        <title>Login Page</title>
        <!-- Favicons-->
        <%-- Angular library --%>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <link rel="icon" href="<c:url value="/resources/images/glovision.png"/>" sizes="32x32">
        <!-- For iPhone -->
        <meta name="msapplication-TileColor" content="#00bcd4">
        <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- For Windows Phone -->
        <!-- CORE CSS-->
        <link href="<c:url value="/resources/css/materialize.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" type="text/css" rel="stylesheet">
        <!-- Custome CSS-->
        <link href="<c:url value="/resources/css/custom.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/page-center.css"/>" type="text/css" rel="stylesheet">
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="<c:url value="/resources/css/perfect-scrollbar.css"/>" type="text/css" rel="stylesheet">


        <script src="<c:url value="/resources/js/loginformvalidation.js"/>" type="text/javascript"></script>


    </head>  	



    <body class="cyan" ng-app="myApp">

         <%
            Cookie[] cookies = request.getCookies();
            String emailID = "", password = "", rememberVal = "";
           System.out.println("Cookies="+cookies);
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("emailID")) {
                        emailID = cookie.getValue();
                        System.out.println("EmailId"+emailID);
                        
                    }
                    if (cookie.getName().equals("password")) {
                        password = cookie.getValue();
                        System.out.println("Password="+password);
                        
                    }
//                    if (cookie.getName().equals("cookrem")) {
//                        rememberVal = cookie.getValue();
//                    }
                }
            }
        %> 


        <!-- Start Page Loading -->
        <div id="loader-wrapper" >
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <div id="login-page" class="row" ng-controller="myCtrl">
            <div class="col s12 z-depth-4 card-pane2">
                <form class="login-form" name="loginform" ng-submit="sendPost()">
                    <div class="row">
                        <div class="input-field col s12 center">
                            <img src="<c:url value="/resources/images/glovision.png"/>" alt="" >

                    <b><p style="color: red" >{{message}}</p></b><br>

                    <%-- Passing context path --%>
                    <input type="hidden" ng-model="contextpath" ng-init="contextpath = '${pageContext.request.contextPath}'"/>

                           
                            <b><p style="color: red" >{{message}}${parm.msg}</p></b><br>
                             
                        </div>
                    </div>

                    <b><p style="color: red" >{{message}}</p></b><br>

                    <%-- Passing context path --%>
                    <input type="hidden" ng-model="contextpath" ng-init="contextpath = '${pageContext.request.contextPath}'"/>

                           
                            <b><p style="color: red" >{{message}}${param.msg}</p></b><br>
                             
                            <%-- Passing context path --%>
                            <input type="hidden" ng-model="contextpath" ng-init="contextpath = '${pageContext.request.contextPath}'"/>
                            
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">person_outline</i>
                            <input id="emailID" type="text" ng-model="emailID" value="<%= emailID%>"  required="">
                            <label for="emailID" class="center-align">Email</label>

                            <span style="color:red;font-size: 12px" ng-show="loginform.emailID.$touched && loginform.emailID.$invalid">The name is required.</span>

                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-5">lock_outline</i>
                            <input id="password" type="password"  ng-model="password" value="<%= password%>" required="">
                            <label for="password">Password</label>
                            <span style="color:red;font-size: 12px" ng-show="loginform.password.$touched && loginform.password.$invalid">The name is required.</span>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col s12 m12 l12 ml-2 mt-3">
                            <input type="checkbox" id="remember-me" ng-model="rememberMe.checked" ng-click="checkCondition(rememberMe)"/>
                                   
                                                         

                            <label for="remember-me">Remember me</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <button type="submit" class="btn waves-effect waves-light col s12" >Login</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6 m6 l6">
                            <p class="margin medium-small"><a href="<c:url value="/register"/>">Register Now!</a></p>
                        </div>
                        <div class="input-field col s6 m6 l6">
                            <p class="margin right-align medium-small"><a href="user-forgot-password.html">Forgot password ?</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- ================================================
        Scripts
        ================================================ -->
        <!-- jQuery Library -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
        <!--materialize js-->
        <script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>
        <!--scrollbar-->
        <script type="text/javascript" src="<c:url value="/resources/js/perfect-scrollbar.min.js"/>"></script>
        <!--plugins.js - Some Specific JS codes for Plugin Settings-->
        <script type="text/javascript" src="<c:url value="/resources/js/plugins.js"/>"></script>
        <!--custom-script.js - Add your own theme custom JS-->
        <script type="text/javascript" src="<c:url value="/resources/js/custom-script.js"/>"></script>
    </body>
</html>
