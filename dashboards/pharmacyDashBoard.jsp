<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="Lohith" content="SOFTWARE ENG.">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>WELEZO</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/plugins/morris/morris.css">

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
     <!--    <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> -->
    
  
	
	
	 <script src="resources/js/modernizr.min.js"></script>
	 
	<script src="resources/plugins/charts/canvasjs.min2.js"></script>

<style>
.info-block-bg-success {
    background-color: #10cfbd;
}
.info-block {
    color: #fff;
}

.info-block-bg-info {
    background-color: #48b0f7;
}
.info-block {
    color: #fff;
}

.info-block i {
    font-size: 39px;
    padding: 13px;
    margin-top: 7px;
    border-radius: 50%;
    border: 1px solid #fff;
}
.info-block h2 {
    margin-top: 6px;
    margin-bottom: 0;
    font-size: 60px;
}
.info-block h2, .info-block h6 {
    color: #fff;
    font-weight: 400;
}
.info-block .info-block-stat {
    position: absolute;
    top: -8px;
    left: -11px;
    font-size: 13px;
    padding: 0 14px;
    width: 192px;
    background-color: rgba(0, 0, 0, 0.2);
}
.text-center {
    text-align: center !important;
}
#h5 , a{color: white;}
h6{margin: 30px 0;}
</style>
	
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
                             <a href="salesDashboards"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                             <font face="verdana" class="page-title">PHARMACY DASHBOARD</font>
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
    
    
     
        
         <div class="col-sm-3 col-xl-3">
                        <div class="panel panel-tile info-block info-block-bg-success">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-5 ph text-center ">
                                        <i class="fa fa-heartbeat"></i>
                                    </div>
                                    <div class="col-xs-7 pl35 prn text-center">
                                       <!--  <h2>406</h2> -->
                                        <h6><a href="viewPharamacy">Pharmacy List</a></h6>

                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
        
        <div class="col-sm-3 col-xl-3">
                        <div class="panel panel-tile info-block info-block-bg-info">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-5 ph text-center ">
                                        <i class="fa fa-plus-square"></i>
                                    </div>
                                    <div class="col-xs-7 pl35 prn text-center">
                                       <!--  <h2>406</h2> -->
                                        <h6><a href="pharmacyLeads">Pharmacy Leads</a></h6>

                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                      <div class="col-sm-3 col-xl-3">
                        <div class="panel panel-tile info-block info-block-bg-success">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-5 ph text-center ">
                                        <i class="	fa fa-h-square"></i>
                                    </div>
                                    <div class="col-xs-7 pl35 prn text-center">
                                       <!--  <h2>406</h2> -->
                                        <h6><a href="#">Pharmacy Customers</a></h6>

                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
        
        <div class="col-sm-3 col-xl-3">
                        <div class="panel panel-tile info-block info-block-bg-info">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-5 ph text-center ">
                                        <i class="fa fa-hospital-o"></i>
                                    </div>
                                    <div class="col-xs-7 pl35 prn text-center">
                                       <!--  <h2>406</h2> -->
                                        <h6><a href="#">Pharmacy Transaction</a></h6>

                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
    
    
        
      </div>
      <!-- /.row -->
                                       
                            </div><!-- end col -->
                        </div>
                        
                    </div> <!-- container -->
                    
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
                
                
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
        <!-- END wrapper -->
        <script>
            var resizefunc = [];
        </script>
        
     <!--    <script src="resources/plugins/charts/canvasjs.min2.js"></script> -->

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

        
         <!-- Flot chart js -->
        <!-- <script src="resources/plugins/flot-chart/jquery.flot.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.time.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.resize.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.pie.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.selection.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.stack.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.crosshair.js"></script> -->

        <!-- flot init -->
        <script src="resources/pages/jquery.flot.init.js"></script>
        

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

        <!-- KNOB JS -->
        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

         <!--Morris Chart-->
		<script src="resources/plugins/morris/morris.min.js"></script>
		<script src="resources/plugins/raphael/raphael-min.js"></script>
		<script src="resources/pages/jquery.morris.init.js"></script>
		
		 <!--Chartist Chart-->
		<script src="resources/plugins/chartist/dist/chartist.min.js"></script>
        <script src="resources/plugins/chartist/dist/chartist-plugin-tooltip.min.js"></script>
		<script src="resources/pages/jquery.chartist.init.js"></script>

        <!-- Dashboard init -->
        <script src="resources/pages/jquery.dashboard.js"></script>

    </body>
</html>