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

        <title>WElEZO</title>

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
		<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
		<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
		
        <script src="resources/js/modernizr.min.js"></script>
        
  

    </head>
    <body class="fixed-left">
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <!-- <a href="index.html" class="logo"> </a> -->
                   <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /> </a>
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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                             <font face="verdana" class="page-title">ADMIN PANEL</font>
                              <!--   <h4 class="page-title">View Transactions</h4> -->
                            </li>
                        </ul>
                       <ul class="nav navbar-nav navbar-right">
								<li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="glyphicon glyphicon-arrow-left" aria-hidden="true"> </i>
								</button>
             </li>
					</ul>
                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->
            <!-- ========== Left Sidebar Start ========== -->
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
          
             <c:set var="role" scope="session" value="<%=roleType %>"/>
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                    <br>
                    	<div class="row">
                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box fadeInDown animated">
                                    <div class="bg-icon bg-icon-info pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo12.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter"><br></b></h3>
                                        <p class="text-muted"><a href="viewProductServiceTeam">PSTC(Static Tables)</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            
                           <!--  
                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-pink pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo15.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter"><br></b></h3>
                                        <p class="text-muted"><a href="viewProjectById">Projects</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>  -->
                            
                            
                            <!-- <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-pink pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo15.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter"><br></b></h3>
                                        <p class="text-muted"><a href="">Offers</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div> -->
                        
                            
                        </div>
                        
                        
                        
                     
                            </div><!-- end col -->
                        </div>
                    </div> <!-- container -->
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
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
        <script src="resources/js/wow.min.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

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

    </body>
</html>