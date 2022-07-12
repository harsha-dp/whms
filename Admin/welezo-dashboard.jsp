<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>WELEZO</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="assets/plugins/morris/morris.css">

        <!-- App css -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="resources/js/modernizr.min.js"></script>

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="check" class="logo"><span>WELCOME<span>WELEZO</span></span><i class="zmdi zmdi-layers"></i></a>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                            </li>
                            <li>
                                <h4 class="page-title">Dashboard</h4>
                            </li>
                        </ul>

                        <!-- Right(Notification and Searchbox -->
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <!-- Notification -->
                                <div class="notification-box">
                                    <ul class="list-inline m-b-0">
                                        <li>
                                            <a href="javascript:void(0);" class="right-bar-toggle">
                                                <i class="zmdi zmdi-T`H`E`M`E`L`O`C`K`.`C`O`M`-none"></i>
                                            </a>
                                            <div class="noti-dot">
                                                <span class="dot"></span>
                                                <span class="pulse"></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End Notification bar -->
                            </li>
                            <li class="hidden-xs">
                                <form role="search" class="app-search">
                                    <input type="text" placeholder="Search..."
                                           class="form-control">
                                    <a href=""><i class="fa fa-search"></i></a>
                                </form>
                            </li>
                        </ul>

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->

			<!-- ========== Left Sidebar Start ========== -->
            <%@ include file="sildermenu.jsp" %>
            <!-- Left Sidebar End -->


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">

                            <div class="col-lg-3 col-md-6">
                        		<div class="card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Total Records</a></li>
                                            <li><a href="#">Upcoming Records</a></li>
                                        </ul>
                                    </div>

                        			<h4 class="header-title m-t-0 m-b-30">Personal Health Record</h4>

                                    <div class="widget-chart-1">
                                        <div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./images/phr.jpg">
                                        </div>

                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 0 </h2>
                                            <p class="text-muted">Total Records</p>
                                        </div>
                                    </div>
                        		</div>
                            </div><!-- end col -->
                            
                            
                            <div class="col-lg-3 col-md-6">
                        		<div class="card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Total Records</a></li>
                                            <li><a href="#">Upcoming Records</a></li>
                                        </ul>
                                    </div>

                        			<h4 class="header-title m-t-0 m-b-30">Health check-up package</h4>

                                    <div class="widget-chart-1">
                                        <div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./images/healthPack.png">
                                        </div>

                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 0 </h2>
                                            <p class="text-muted">Total Health package</p>
                                        </div>
                                    </div>
                        		</div>
                            </div><!-- end col -->
                            
                            <div class="col-lg-3 col-md-6">
                        		<div class="card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Total Records</a></li>
                                            <li><a href="#">Upcoming Records</a></li>
                                        </ul>
                                    </div>

                        			<h4 class="header-title m-t-0 m-b-30">Doctor Appointment</h4>

                                    <div class="widget-chart-1">
                                        <div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./images/Bookdoctor.jpg">
                                        </div>

                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 0 </h2>
                                            <p class="text-muted">Total Appointments</p>
                                        </div>
                                    </div>
                        		</div>
                            </div><!-- end col -->
                            
                            <div class="col-lg-3 col-md-6">
                        		<div class="card-box">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Total Records</a></li>
                                            <li><a href="#">Upcoming Records</a></li>
                                        </ul>
                                    </div>

                        			<h4 class="header-title m-t-0 m-b-30">Welezo Cards</h4>

                                    <div class="widget-chart-1">
                                        <div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./images/welezocard.jpg">
                                        </div>

                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 0 </h2>
                                            <p class="text-muted">Total Welezo Cards</p>
                                        </div>
                                    </div>
                        		</div>
                            </div><!-- end col -->
                           

                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    2016 A © Welezo Health Care Pvt.Ltd.
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">T`H``M`</h4>
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
        <!-- END wrapper -->



        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/detect.js"></script>
        <script src="resources/js/fastclick.js"></script>
        <script src="resources/js/jquery.slimscroll.js"></script>
        <script src="resources/js/jquery.blockUI.js"></script>
        <script src="resources/js/waves.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

        <!--Morris Chart-->
		<script src="resources/plugins/morris/morris.min.js"></script>
		<script src="resources/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="resources/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

    </body>
</html>