<%-- 
    Document   : home
    Created on : 24 Jan, 2019, 7:45:06 PM
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
        <title>Glo Sales Dashboard</title>
        <!-- Favicons-->
        <link rel="icon" href="<c:url value="/resources/images/glovision.png"/>" sizes="32x32">
        <!-- For iPhone -->
        <meta name="msapplication-TileColor" content="#00bcd4">
        <meta name="msapplication-TileImage" content="<c:url value="/resources/images/glovision.png"/>">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- For Windows Phone -->
        <!-- CORE CSS-->
        <link href="<c:url value="/resources/css/materialize.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" type="text/css" rel="stylesheet">
        <!-- Custome CSS-->
        <link href="<c:url value="/resources/css/custom.css"/>" type="text/css" rel="stylesheet">
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="<c:url value="/resources/css/perfect-scrollbar.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/jquery-jvectormap.css"/>" type="text/css" rel="stylesheet">
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
                    <!--start container-->
                    <div class="container">
                        <!--card stats start-->
                        <div id="card-stats">
                            <div class="row">
                                <div class="col s12 m6 l3">
                                    <div class="card gradient-45deg-light-blue-cyan gradient-shadow min-height-100 white-text">
                                        <div class="padding-4">
                                            <div class="col s7 m7">
                                                <i class="material-icons background-round mt-5">add_shopping_cart</i>
                                                <p>Orders</p>
                                            </div>
                                            <div class="col s5 m5 right-align">
                                                <h5 class="mb-0">690</h5>
                                                <p class="no-margin">New</p>
                                                <p>6,00,00</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s12 m6 l3">
                                    <div class="card gradient-45deg-red-pink gradient-shadow min-height-100 white-text">
                                        <div class="padding-4">
                                            <div class="col s7 m7">
                                                <i class="material-icons background-round mt-5">perm_identity</i>
                                                <p>Clients</p>
                                            </div>
                                            <div class="col s5 m5 right-align">
                                                <h5 class="mb-0">1885</h5>
                                                <p class="no-margin">New</p>
                                                <p>1,12,900</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s12 m6 l3">
                                    <div class="card gradient-45deg-amber-amber gradient-shadow min-height-100 white-text">
                                        <div class="padding-4">
                                            <div class="col s7 m7">
                                                <i class="material-icons background-round mt-5">timeline</i>
                                                <p>Sales</p>
                                            </div>
                                            <div class="col s5 m5 right-align">
                                                <h5 class="mb-0">80%</h5>
                                                <p class="no-margin">Growth</p>
                                                <p>3,42,230</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s12 m6 l3">
                                    <div class="card gradient-45deg-green-teal gradient-shadow min-height-100 white-text">
                                        <div class="padding-4">
                                            <div class="col s7 m7">
                                                <i class="material-icons background-round mt-5">attach_money</i>
                                                <p>Profit</p>
                                            </div>
                                            <div class="col s5 m5 right-align">
                                                <h5 class="mb-0">$890</h5>
                                                <p class="no-margin">Today</p>
                                                <p>$25,000</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--card stats end-->
                        <!--yearly & weekly revenue chart start-->
                        <div id="sales-chart">
                            <div class="row">
                                <div class="col s12 m8 l8">
                                    <div id="revenue-chart" class="card">
                                        <div class="card-content">
                                            <h4 class="header mt-0">Sales Details 2018
                                                <span class="purple-text small text-darken-1 ml-1">
                                                    <i class="material-icons">keyboard_arrow_up</i> 15.58 %</span> <a class="waves-effect waves-light btn gradient-45deg-purple-deep-orange gradient-shadow right">Details</a>
                                            </h4>
                                            <div class="row">
                                                <div class="col s12">
                                                    <div class="yearly-revenue-chart">
                                                        <canvas id="thisYearRevenue" class="firstShadow" height="350"></canvas>
                                                        <canvas id="lastYearRevenue" height="350"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="col s12 m4 l4">
                                  <div id="weekly-earning" class="card">
                                    <div class="card-content">
                                      <h4 class="header m-0">Earning
                                        <i class="material-icons right grey-text lighten-3">more_vert</i>
                                      </h4>
                                      <p class="no-margin grey-text lighten-3 medium-small">Mon 15 - Sun 21</p>
                                      <h3 class="header">$899.39
                                        <i class="material-icons deep-orange-text text-accent-2">arrow_upward</i>
                                      </h3>
                                      <canvas id="monthlyEarning" class="" height="150"></canvas>
                                      <div class="center-align">
                                        <p class="lighten-3">Total Weekly Earning</p>
                                        <a class="waves-effect waves-light btn gradient-45deg-purple-deep-orange gradient-shadow">View Full</a>
                                      </div>
                                    </div>
                                  </div>-->
                            </div>
                        </div>
                    </div>
                    <!--yearly & weekly revenue chart end-->
                    <!-- Member online, Currunt Server load & Today's Revenue Chart start -->

                    <!-- Member online, Currunt Server load & Today's Revenue Chart start -->
                    <!-- ecommerce product start-->

                    <!-- ecommerce product end-->
                    <!-- ecommerce offers start-->

                    <!-- ecommerce offers end-->
                    <!-- //////////////////////////////////////////////////////////////////////////// -->
            </div>
            <!--end container-->
        </section>
        <!-- END CONTENT -->
        <!-- Floating Action Button -->

        <!-- Floating Action Button -->
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
<!--materialize js-->
<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>
<!--prism-->
<script type="text/javascript" src="<c:url value="/resources/js/prism.js"/>"></script>
<!--scrollbar-->
<script type="text/javascript" src="<c:url value="/resources/js/perfect-scrollbar.min.js"/>"></script>
<!-- chartjs -->
<script type="text/javascript" src="<c:url value="/resources/js/chart.min.js"/>"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="<c:url value="/resources/js/plugins.js"/>"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="<c:url value="/resources/js/custom-script.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/dashboard-ecommerce.js"/>"></script>
</body>
</html>
