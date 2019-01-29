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
        <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
            String emailID = (String) session.getAttribute("emailID");
            if (emailID == null) {
                response.sendRedirect(request.getContextPath() + "/logout?msg=Session Time out Please login again&req=dashboard");
            }
            pageContext.setAttribute("emailID", emailID);
            pageContext.setAttribute("page", "Dashboard");
        %>
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
        <aside id="right-sidebar-nav">
            <ul id="chat-out" class="side-nav rightside-navigation">
                <li class="li-hover">
                    <div class="row">
                        <div class="col s12 border-bottom-1 mt-5">
                            <ul class="tabs">
                                <li class="tab col s4">
                                    <a href="#activity" class="active">
                                        <span class="material-icons">graphic_eq</span>
                                    </a>
                                </li>
                                <li class="tab col s4">
                                    <a href="#chatapp">
                                        <span class="material-icons">face</span>
                                    </a>
                                </li>
                                <li class="tab col s4">
                                    <a href="#settings">
                                        <span class="material-icons">settings</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="settings" class="col s12">
                            <h6 class="mt-5 mb-3 ml-3">GENERAL SETTINGS</h6>
                            <ul class="collection border-none">
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Notifications</span>
                                        <div class="switch right">
                                            <label>
                                                <input checked type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </li>
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Show recent activity</span>
                                        <div class="switch right">
                                            <label>
                                                <input checked type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </li>
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Notifications</span>
                                        <div class="switch right">
                                            <label>
                                                <input type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </li>
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Show recent activity</span>
                                        <div class="switch right">
                                            <label>
                                                <input type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </li>
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Show your emails</span>
                                        <div class="switch right">
                                            <label>
                                                <input type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </li>
                                <li class="collection-item border-none">
                                    <div class="m-0">
                                        <span class="font-weight-600">Show Task statistics</span>
                                        <div class="switch right">
                                            <label>
                                                <input type="checkbox">
                                                <span class="lever"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </li>
                            </ul>
                        </div>
                        <div id="chatapp" class="col s12">
                            <div class="collection border-none">
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="images/avatar-7.png" alt="" class="circle cyan">
                                    <span class="line-height-0">Elizabeth Elliott </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">5.00 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Thank you </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-2.png" alt="" class="circle deep-orange accent-2">
                                    <span class="line-height-0">Mary Adams </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">4.14 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Hello Boo </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-3.png" alt="" class="circle teal accent-4">
                                    <span class="line-height-0">Caleb Richards </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">9.00 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Keny ! </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-4.png" alt="" class="circle cyan">
                                    <span class="line-height-0">June Lane </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">4.14 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Ohh God </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-5.png" alt="" class="circle red accent-2">
                                    <span class="line-height-0">Edward Fletcher </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">5.15 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Love you </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-6.png" alt="" class="circle deep-orange accent-2">
                                    <span class="line-height-0">Crystal Bates </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">8.00 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Can we </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-7.png" alt="" class="circle cyan">
                                    <span class="line-height-0">Nathan Watts </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">9.53 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Great! </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-8.png" alt="" class="circle red accent-2">
                                    <span class="line-height-0">Willard Wood </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">4.20 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Do it </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-9.png" alt="" class="circle teal accent-4">
                                    <span class="line-height-0">Ronnie Ellis </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">5.30 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Got that </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-1.png" alt="" class="circle cyan">
                                    <span class="line-height-0">Gwendolyn Wood </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">4.34 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Like you </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-2.png" alt="" class="circle red accent-2">
                                    <span class="line-height-0">Daniel Russell </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">12.00 AM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Thank you </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-3.png" alt="" class="circle teal accent-4">
                                    <span class="line-height-0">Sarah Graves </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">11.14 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Okay you </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-4.png" alt="" class="circle red accent-2">
                                    <span class="line-height-0">Andrew Hoffman </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">7.30 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Can do </p>
                                </a>
                                <a href="#!" class="collection-item avatar border-none">
                                    <img src="../../images/avatar/avatar-5.png" alt="" class="circle cyan">
                                    <span class="line-height-0">Camila Lynch </span>
                                    <span class="medium-small right blue-grey-text text-lighten-3">2.00 PM</span>
                                    <p class="medium-small blue-grey-text text-lighten-3">Leave it </p>
                                </a>
                            </div>
                        </div>
                        <div id="activity" class="col s12">
                            <h6 class="mt-5 mb-3 ml-3">RECENT ACTIVITY</h6>
                            <div class="activity">
                                <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                    <i class="material-icons white-text icon-bg-color deep-purple lighten-2">add_shopping_cart</i>
                                </div>
                                <div class="col s9 recent-activity-list-text">
                                    <a href="#" class="deep-purple-text medium-small">just now</a>
                                    <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jim Doe Purchased new equipments for zonal office.</p>
                                </div>
                                <div class="recent-activity-list chat-out-list row mb-0">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                        <i class="material-icons white-text icon-bg-color cyan lighten-2">airplanemode_active</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="cyan-text medium-small">Yesterday</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Your Next flight for USA will be on 15th August 2015.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row mb-0">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon medium-small">
                                        <i class="material-icons white-text icon-bg-color green lighten-2">settings_voice</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="green-text medium-small">5 Days Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Natalya Parker Send you a voice mail for next conference.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row mb-0">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                        <i class="material-icons white-text icon-bg-color amber lighten-2">store</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="amber-text medium-small">1 Week Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jessy Jay open a new store at S.G Road.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list row">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                        <i class="material-icons white-text icon-bg-color deep-orange lighten-2">settings_voice</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="deep-orange-text medium-small">2 Week Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">voice mail for conference.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row mb-0">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon medium-small">
                                        <i class="material-icons white-text icon-bg-color brown lighten-2">settings_voice</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="brown-text medium-small">1 Month Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Natalya Parker Send you a voice mail for next conference.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row mb-0">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                        <i class="material-icons white-text icon-bg-color deep-purple lighten-2">store</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="deep-purple-text medium-small">3 Month Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jessy Jay open a new store at S.G Road.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list row">
                                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                                        <i class="material-icons white-text icon-bg-color grey lighten-2">settings_voice</i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#" class="grey-text medium-small">1 Year Ago</a>
                                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">voice mail for conference.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </aside>
        <!-- END RIGHT SIDEBAR NAV-->
    </div>
    <!-- END WRAPPER -->
</div>
<!-- END MAIN -->
<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START FOOTER -->
<footer class="page-footer gradient-45deg-purple-deep-orange">
    <div class="footer-copyright">
        <div class="container">
            <span>
                <a class="grey-text text-lighten-4" href="http://glovision.co/" target="_blank">

                    © 2014-2018 All Rights Reserved Design by Glovision.co
            </span>

        </div>
    </div>
</footer>
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