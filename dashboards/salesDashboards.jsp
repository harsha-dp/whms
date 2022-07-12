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
    
       <!-- <style>
       .canvasjs-chart-credit {
   display: none;
   .canvasjs-chart-canvas {
   display: none;
   }
}
</style> -->
         <style>

.panel-footer {
    padding: 10px 15px;
    background-color: #f5f5f5;
    border-top: 1px solid #ddd;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
}
.huge {
    font-size: 40px;
}
.panel-primary>.panel-heading {
    color: #fff;
    background-color: #337ab7;
    border-color: #337ab7;
}

.panel-heading {
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
}

         </style>
	
	
	
	
	 <script src="resources/js/modernizr.min.js"></script>
	 
	<script src="resources/plugins/charts/canvasjs.min2.js"></script>


	
	
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
                             <font face="verdana" class="page-title">SALES DASHBOARD</font>
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
                    <div class="card-box" >
                    	
                <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-phone fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                  <!--   <div class="huge">26</div> -->
                                    <p> TeleSales</p>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                             <c:choose>
                             <c:when test="${roleAccess.department == 'Telesales' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                                 <a href=telSalesDashboards class="small-box-footer"><span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                                </c:when>
                                	<c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
                <script>
function myFunction() {
    alert("Your Access denied!!");
}
</script>
			
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-building fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    
                                    <p>Corporate</p>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                             <c:choose>
                             <c:when test="${roleAccess.department == 'Corporate' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                               <a href=corporateDashBoard?userId=<c:out value="${USERID}" /> class="small-box-footer"> <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                               
                                 </c:when>
                                	<c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                 <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-hospital-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                  
                                    <p> Phramacy</p>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                                 <c:choose>
                             <c:when test="${roleAccess.department == 'Business Development' || roleAccess.department == 'Bulksales' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                               <a href=pharamacyDashBoard class="small-box-footer">  <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                                </c:when>
                               <c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                 <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-btc fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                   
                                    <div>BTL</div>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                              <c:choose>
                             <c:when test="${roleAccess.department == 'Business Development' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                             <a href=btlActivity class="small-box-footer">    <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                                </c:when>
                                <c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                 <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
                
                 <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user-md fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    
                                    <p>Doctor Lounge</p>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                             <c:choose>
                             <c:when test="${roleAccess.department == 'Business Development' || roleAccess.department == 'Bulksales' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                               <a href=viewDoctors class="small-box-footer">  <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                                </c:when>
                                <c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                 <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
                
                 <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <p>Other</p>
                                </div>
                            </div>
                        </div>
                            <div class="panel-footer">
                             <c:choose>
                             <c:when test="${roleAccess.department == 'Business Development' || roleAccess.designation == 'Manager' || roleAccess.designation == 'Software Engineer' || roleAccess.businessUnit == 'Admin'}">
                               <a href=telSalesDashboards class="small-box-footer">  <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
                                </c:when>
                                <c:otherwise>
									<a href='#' onclick="myFunction()" class="small-box-footer"> <span class="pull-left">View Details</span>
									  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span></a>
									</c:otherwise>
                                </c:choose>
                                 <div class="clearfix"></div>
                            </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
               </div>                          
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