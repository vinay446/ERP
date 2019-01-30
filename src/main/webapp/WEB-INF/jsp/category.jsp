<%-- 
    Document   : category
    Created on : 29 Jan, 2019, 7:37:29 PM
    Author     : glodeveloper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">
        <title>Category</title>
        <!-- Favicons-->
        <link rel="icon" href="<c:url value="/resources/images/glovision.png"/>" sizes="32x32">
        <!-- Favicons-->
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
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="<c:url value="/resources/css/prism.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/perfect-scrollbar.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/flag-icon.min.css"/>" type="text/css" rel="stylesheet">
    </head>
    <body>
        <!-- Start Page Loading -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START HEADER -->
        <%@include file="header.jsp" %>
        <!-- END HEADER -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START MAIN -->
        <div id="main">
            <!-- START WRAPPER -->
            <div class="wrapper">
                <!-- START LEFT SIDEBAR NAV-->
                <%@include file="sidebar.jsp" %>
                <!-- END LEFT SIDEBAR NAV-->
                <!-- //////////////////////////////////////////////////////////////////////////// -->
                <!-- START CONTENT -->
                <section id="content">
                    <!--breadcrumbs start-->
                    <div id="breadcrumbs-wrapper">
                    
                    </div>
                    <!--end container-->
                </section>
                <!-- END CONTENT -->
                <!-- //////////////////////////////////////////////////////////////////////////// -->
                <!-- START RIGHT SIDEBAR NAV-->
                <%@include file="rightSideNav.jsp" %>
                <!-- END RIGHT SIDEBAR NAV-->
            </div>
            <!-- END WRAPPER -->
        </div>
        <!-- END MAIN -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START FOOTER -->
        <%@include file="footer.jsp" %>
        <!-- END FOOTER -->
        <!-- ================================================
        Scripts
        ================================================ -->
        <!-- jQuery Library -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
        <!--angularjs-->
        <script type="text/javascript" src="<c:url value="/resources/js/angular.min.js"/>"></script>
        <!--materialize js-->
        <script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>
        <!--prism -->
        <script type="text/javascript" src="<c:url value="/resources/js/prism.js"/>"></script>
        <!--scrollbar-->
        <script type="text/javascript" src="<c:url value="/resources/js/perfect-scrollbar.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.formatter.min.js"/>"></script>
        <!--plugins.js - Some Specific JS codes for Plugin Settings-->
        <script type="text/javascript" src="<c:url value="/resources/js/plugins.js"/>"></script>
        <!--plugins.js - Some Specific JS codes for Plugin Settings-->

        <!--custom-script.js - Add your own theme custom JS-->
        <script type="text/javascript" src="<c:url value="/resources/js/custom-script.js"/>"></script>
    </body>
</html>