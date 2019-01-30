<%-- 
    Document   : sidebar
    Created on : 24 Jan, 2019, 7:59:13 PM
    Author     : glodeveloper
--%>
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
%>
<aside id="left-sidebar-nav" class="nav-expanded nav-lock nav-collapsible">
    <div class="brand-sidebar">
        <h1 class="logo-wrapper">
            <a href="<c:url value="/home"/>" class="brand-logo darken-1">
               <!-- <img src="images/materialize-logo.png" alt="materialize logo">-->
               <span class="logo-text hide-on-med-and-down">Glo Sales Dashboard</span>
            </a>
            <a href="#" class="navbar-toggler">
                <i class="material-icons">radio_button_checked</i>
            </a>
        </h1>
    </div>
    <ul id="slide-out" class="side-nav fixed leftside-navigation">
        <li class="no-padding">
            <ul class="collapsible" data-collapsible="accordion">
                <li class="bold">
                    <a  href="<c:url value="/home"/>">
                        <i class="material-icons">dashboard</i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                    <!--                    <div class="collapsible-body">
                                            <ul>
                                                <li class="active">
                                                    <a href="index.html">
                                                        <i class="material-icons">keyboard_arrow_right</i>
                                                        <span>Admin Dashboard</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="dashboard-analytics.html">
                                                        <i class="material-icons">keyboard_arrow_right</i>
                                                        <span>Analytics</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>-->
                </li>







                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-cyan">
                        <i class="material-icons">chrome_reader_mode</i>
                        <span class="nav-text">Forms</span>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <!-- <li>
                               <a href="form-elements.html">
                                 <i class="material-icons">keyboard_arrow_right</i>
                                 <span>Form Elements</span>
                               </a>
                             </li>-->
                            <li>
                                <a href="<c:url value="/category"/>">
                                   <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Category</span>
                                </a>
                            </li>
                            <!--                            <li>
                                                            <a href="form-validation.html">
                                                                <i class="material-icons">keyboard_arrow_right</i>
                                                                <span>Form Validations</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="form-masks.html">
                                                                <i class="material-icons">keyboard_arrow_right</i>
                                                                <span>Form Masks</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="form-file-uploads.html">
                                                                <i class="material-icons">keyboard_arrow_right</i>
                                                                <span>File Uploads</span>
                                                            </a>
                                                        </li>-->
                        </ul>
                    </div>
                </li>

                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-cyan">
                        <i class="material-icons">border_all</i>
                        <span class="nav-text">Tables</span>
                    </a>
                    <div class="collapsible-body">
                        <ul>

                            <li>
                                <a href="table-data.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Data Tables</span>
                                </a>
                            </li>



                        </ul>
                    </div>
                </li>

                <li class="bold">
                    <a href="salesinvoice.html" class="waves-effect waves-cyan">
                        <i class="material-icons">today</i>
                        <span class="nav-text">Sales Invoice</span>
                    </a>
                </li>

                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-cyan">
                        <i class="material-icons">account_circle</i>
                        <span class="nav-text">User</span>
                    </a>
                    <div class="collapsible-body">
                        <ul>

                            <li>
                                <a href="user-login.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Login</span>
                                </a>
                            </li>
                            <li>
                                <a href="user-register.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Register</span>
                                </a>
                            </li>
                            <li>
                                <a href="user-forgot-password.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Forgot Password</span>
                                </a>
                            </li>
                            <li>
                                <a href="user-lock-screen.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Lock Screen</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="bold">
                    <a class="collapsible-header waves-effect waves-cyan">
                        <i class="material-icons">pie_chart_outlined</i>
                        <span class="nav-text">Charts</span>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <li>
                                <a href="charts-chartjs.html">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                    <span>Chart JS</span>
                                </a>
                            </li>





                        </ul>
                    </div>
                </li>

                <li class="bold">
                    <a href="callcenter.html" class="waves-effect waves-cyan">
                        <i class="material-icons">today</i>
                        <span class="nav-text">Call Center</span>
                    </a>
                </li>
            </ul>
        </li>




    </ul>
    <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only gradient-45deg-light-blue-cyan gradient-shadow">
        <i class="material-icons">menu</i>
    </a>
</aside>