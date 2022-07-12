<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
       
        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>WELEZO</title>

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />


        <script src="resources/HR//js/modernizr.min.js"></script>


    </head>


    <body>

        <!-- Start menu -->
           <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->

        <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        
                        <h4 class="page-title">Components</h4>
                    </div>
                </div>


                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            

                            <h4 class="header-title m-t-0 m-b-30">Dropdowns</h4>

                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="bg-muted text-center p-30">
                                        <h5 class="m-b-30 m-t-0">Record maintenance </h5>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Dropdown <span class="caret"></span></button>
                                            <ul class="dropdown-menu demo-dropdown" role="menu">
                                                <li><a href="#">Employee Details</a></li>
                                                <li><a href="#">Working Days</a></li>
                                                <li><a href="#">Total No Of Employee</a></li>
                                            </ul>
                                        </div>

                                        <!-- Demo only -->
                                        <div class="hidden-xs" style="height: 18px;"></div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="bg-muted text-center p-30">
                                        <h5 class="m-b-30 m-t-0">Transfer Accounts</h5>
                                       

                                        <!-- Demo only -->
                                        <div class="hidden-xs" style="height: 4px;"></div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="bg-muted text-center p-30">
                                        <h5 class="m-b-30 m-t-0">Net Salary Calculation</h5>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Dropdown <span class="caret"></span></button>
                                            <ul class="dropdown-menu demo-dropdown">
                                                <li><a href="#">Gross Salary Basic + Allowances</a></li>
                                                <li><a href="#">Salary Deduction Tax + Other</a></li>
                                               
                                            </ul>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="bg-muted text-center p-30">
                                        <h5 class="m-b-30 m-t-0">Letter Format</h5>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Dropdown <span class="caret"></span></button>
                                            <ul class="dropdown-menu demo-dropdown" aria-labelledby="dropdownMenu4">
                                                <li><a href="#">Call Letter</a></li>
                                                <li><a href="#">Offer Letter</a></li>
                                                <li><a href="#">Extension Letter</a></li>
                                                <li><a href="#">Pay Slip Letter</a></li>
                                                <li><a href="#">Relivering Letter</a></li>
                                                
                                            </ul>
                                        </div>

                                        <!-- Demo only -->
                                        <div class="hidden-xs" style="height: 19px;"></div>
                                    </div>
                                </div>

                            </div>
                            <!-- end row -->


                            

                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->



                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->



            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">T`H`E`M`E`L`O`C`K`.`C`O`M`</h4>
                <div class="notification-list nicescroll">
                    <ul class="list-group list-no-border user-list">
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-2.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">Michael Zenaty</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-info">
                                    <i class="zmdi zmdi-account"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Signup</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">5 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Message received</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-3.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">James Anderson</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 days ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-warning">
                                    <i class="zmdi zmdi-settings"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">Settings</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

        </div>



        <!-- jQuery  -->
        <script src="resources/HR/js/jquery.min.js"></script>
        <script src="resources/HR/js/bootstrap.min.js"></script>
        <script src="resources/HR/js/detect.js"></script>
        <script src="resources/HR/js/fastclick.js"></script>
        <script src="resources/HR/js/jquery.slimscroll.js"></script>
        <script src="resources/HR/js/jquery.blockUI.js"></script>
        <script src="resources/HR/js/waves.js"></script>
        <script src="resources/HR/js/wow.min.js"></script>
        <script src="resources/HR/js/jquery.nicescroll.js"></script>
        <script src="resources/HR/js/jquery.scrollTo.min.js"></script>


        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>