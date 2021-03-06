<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internal Error</title>
        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
         <link rel="icon" href="${pageContext.request.contextPath}/resources/images/glovision.png" >
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .center {text-align: center; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-top: auto;}
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <div class="hero-unit center">
                        <h1><font face="Tahoma" color="red">500 Error </font></h1>
                        <h1>Application Experienced Internal Server Error </h1>
                        <center><img src="<c:url value="/resources/images/500.png"/> "/></center>
                        <p>The Page you are looking experienced some Error, either contact your admin or try again. Use your browsers <b>Back</b> button to navigate to the page you have prevously come from</p>
                        <p><b>Or you could just press this neat little button:</b></p>
                        <a href="${pageContext.request.contextPath}/" class="btn btn-large btn-info"><i class="material-icons">home</i> Take Me Home</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>