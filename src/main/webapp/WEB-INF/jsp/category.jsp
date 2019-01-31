<%-- 
    Document   : category
    Created on : 29 Jan, 2019, 7:37:29 PM
    Author     : glodeveloper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" ng-app="erp">

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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Custome CSS-->
        <link href="<c:url value="/resources/css/custom.css"/>" type="text/css" rel="stylesheet">
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="<c:url value="/resources/css/prism.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/perfect-scrollbar.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/jquery.dataTables.min.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/resources/css/flag-icon.min.css"/>" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>        
    </head>
    <body ng-controller="categoryctrl as ctrl">
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
                        <div class="container">
                            <div class="row">
                                <div class="col s10 m6 l6">
                                    <h5 class="breadcrumbs-title">Product Category</h5>
                                    <ol class="breadcrumbs">
                                        <li><a href="<c:url value="/home"/>">Dashboard</a>
                                        </li>                                       
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end container-->
                    <div class="container">
                        <div class="divider"></div>
                        <div id="jqueryvalidation" class="section">
                            <div class="row">
                                <div class="col s12 m12 ">
                                    <div class="card-panel">
                                        <h4 class="header2">Create New Product Category</h4>
                                        <div class="row">
                                            <form class="formValidate" id="formValidate" ng-submit="ctrl.submit()" name="newCategoryForm"  >
                                                <div class="row">
                                                    <b><p style="color: red" >{{message}}${param.msg}</p></b>
                                                    <div class="input-field col s4">
                                                        <label for="cname">Category Name*</label>
                                                        <input id="cname" name="cname" ng-model="cname" type="text" data-error=".errorTxt1" required>
                                                        <div class="errorTxt1"></div>
                                                    </div>
                                                    <div class="input-field col s4">
                                                        <label for="cdesc">Category Description *</label>
                                                        <textarea id="cdesc" data-error=".errorTxt1" ng-model="cdesc" rows="10" required ></textarea>
                                                        <div class="errorTxt2"></div>
                                                        <input type="hidden" ng-model="contextpath" ng-init="contextpath='${pageContext.request.contextPath}'" />
                                                    </div>                                                    
                                                    <div class="input-field col s4">
                                                        <button class="btn waves-effect waves-light right submit" type="submit" name="action">Submit
                                                            <i class="material-icons right">send</i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Floating Action Button -->

                        <!-- Floating Action Button -->
                    </div>
                </section>
                <section id="content">
                    <div class="card-panel">
                        <div class="container">
                            <div class="section">

                                <div class="divider"></div>
                                <!--DataTables example-->
                                <div id="table-datatables">
                                    <h4 class="header">DataTables example</h4>
                                    <div class="row">
                                        <div class="col s6">

                                        </div>
                                        <div class="col s12">
                                            <table id="data-table-simple" class="responsive-table display" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>Category_ID</th>
                                                        <th>Category_Name</th>
                                                        <th>Category_Description</th>
                                                        <th>Category_Creation Time</th>
                                                        <th>Category_Created By</th>
                                                        <th>Category_Last Updated Time</th>
                                                    </tr>
                                                </thead>                                                
                                                <tbody>
                                                    <c:forEach items="${categoryList}" var="category">
                                                        <tr>
                                                            <td>${category.category_Id}</td>
                                                            <td>${category.category_Name}</td>
                                                            <td>${category.category_Description}</td>
                                                            <td>${DateUtil.epochToDate(category.category_creationTime)}</td>
                                                            <td>${category.category_createdBy}</td>
                                                            <td>${DateUtil.epochToDate(category.category_UpdationTime)}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
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
        <!--materialize js-->
        <script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>
        <!--prism-->
        <script type="text/javascript" src="<c:url value="/resources/js/prism.js"/>"></script>
        <!--scrollbar-->
        <script type="text/javascript" src="<c:url value="/resources/js/perfect-scrollbar.min.js"/>"></script>
        <!-- data-tables -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
        <!--data-tables.js - Page Specific JS codes -->
        <script type="text/javascript" src="<c:url value="/resources/js/data-tables.js"/>"></script>
        <!--plugins.js - Some Specific JS codes for Plugin Settings-->
        <script type="text/javascript" src="<c:url value="/resources/js/plugins.js"/>"></script>
        <!--custom-script.js - Add your own theme custom JS-->
        <script type="text/javascript" src="<c:url value="/resources/js/custom-script.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/category.js"/>"></script>
    </body>
</html>