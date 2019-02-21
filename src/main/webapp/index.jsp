<%-- 
    Document   : index
    Created on : 18 Dec, 2018, 7:22:34 PM
    Author     : glodeveloper
--%>

<%@page import="com.glovision.erp.util.util"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    if (util.SessionCheck(session)) {
        response.sendRedirect(request.getContextPath() + "/home");
    }
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        String cookiename = c.getName();
        if (cookiename.equals("emailID")) {
            pageContext.setAttribute("emailID", c.getValue());
        } else if (cookiename.equals("password")) {
            pageContext.setAttribute("password", c.getValue());
        }
    }
%> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Inventory Management</title>

        <!-- Favicons -->
        <link href="<c:url value="/resorces/images/glovision.png"/>" rel="icon">
        <link href="<c:url value="/resources/images/apple-touch-icon.png"/>" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="<c:url value="/resources/lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
        <!--external css-->
        <link href="<c:url value="/resources/lib/font-awesome/css/font-awesome.css"/>" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
            <link href="<c:url value="/resources/css/style-responsive.css"/>" rel="stylesheet">

        <!-- =======================================================
          Template Name: Dashio
          Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
          Author: TemplateMag.com
          License: https://templatemag.com/license/
        ======================================================= -->
    </head>

    <body>
        <!-- **********************************************************************************************************************************************************
            MAIN CONTENT
            *********************************************************************************************************************************************************** -->
        <div id="login-page">
            <div class="container">
                <form class="form-login" action="index.html">
                    <h2 class="form-login-heading">sign in now</h2>
                    <div class="login-wrap">
                        <input type="text" class="form-control" placeholder="User ID" autofocus>
                        <br>
                        <input type="password" class="form-control" placeholder="Password">
                        <label class="checkbox">
                            <input type="checkbox" value="remember-me"> Remember me
                            <span class="pull-right">
                                <a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>
                            </span>
                        </label>
                        <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>                                                
                    </div>
                    <!-- Modal -->
                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Forgot Password ?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Enter your e-mail address below to reset your password.</p>
                                    <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
                                </div>
                                <div class="modal-footer">
                                    <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                                    <button class="btn btn-theme" type="button">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- modal -->
                </form>
            </div>
        </div>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<c:url value="/resources/lib/jquery/jquery.min.js"/>"></script>
            <script src="<c:url value="/resources/lib/bootstrap/js/bootstrap.min.js"/>"></script>
        <!--BACKSTRETCH-->
        <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
        <script type="text/javascript" src="<c:url value="/resources/lib/jquery.backstretch.min.js"/>"></script>       
    </body>
</html>
