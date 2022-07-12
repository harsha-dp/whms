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
 
@media (min-width: 768px){
.circle-tile {
    margin-bottom: 30px;
}
}

.img-rounded {
    border-radius: 6px;
    height: 75px;
    width: 75px;
    }
    
.circle-tile {
    margin-bottom: 15px;
    text-align: center;
}

.circle-tile-heading {
    position: relative;
    width: 80px;
    height: 80px;
    margin: 0 auto -40px;
    border: 3px solid rgba(255,255,255,0.3);
    border-radius: 100%;
    color: #fff;
    transition: all ease-in-out .3s;
}

/* -- Background Helper Classes */

/* Use these to cuztomize the background color of a div. These are used along with tiles, or any other div you want to customize. */

 .dark-blue {
    background-color: #34495e;
}

.green {
    background-color: #16a085;
}

.blue {
    background-color: #2980b9;
}

.orange {
    background-color: #f39c12;
}

.red {
    background-color: #e74c3c;
}

.purple {
    background-color: #8e44ad;
}

.dark-gray {
    background-color: #7f8c8d;
}

.gray {
    background-color: #95a5a6;
}

.light-gray {
    background-color: #bdc3c7;
}

.yellow {
    background-color: #f1c40f;
}

/* -- Text Color Helper Classes */

 .text-dark-blue {
    color: #34495e;
}

.text-green {
    color: #16a085;
}

.text-blue {
    color: #2980b9;
}

.text-orange {
    color: #f39c12;
}

.text-red {
    color: #e74c3c;
}

.text-purple {
    color: #8e44ad;
}

.text-faded {
    color: rgba(255,255,255,0.7);
}



.circle-tile-heading .fa {
    line-height: 80px;
}

.circle-tile-content {
    padding-top: 50px;
}
.circle-tile-description {
    text-transform: uppercase;
}

.text-faded {
    color: rgba(255,255,255,0.7);
}

.circle-tile-number {
    padding: 5px 0 15px;
    font-size: 26px;
    font-weight: 700;
    line-height: 1;
}

.circle-tile-footer {
    display: block;
    padding: 5px;
    color: rgba(255,255,255,0.5);
    background-color: rgba(0,0,0,0.1);
    transition: all ease-in-out .3s;
}

.circle-tile-footer:hover {
    text-decoration: none;
    color: rgba(255,255,255,0.5);
    background-color: rgba(0,0,0,0.2);
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
                             <a href="telSalesDashboards"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                             <font face="verdana" class="page-title">CALLS DASHBOARD</font>
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
                    	<div class="row" >
                    <!-- <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <i class="fa fa-phone-square fa-fw fa-3x"></i>
                                   <img src="resources/images/incoming.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Incomimg Calls
                                </div>
                                <div class="circle-tile-number text-faded">
                                    05
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="incomingCalls" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div> -->
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <!-- <i class="fa fa-volume-control-phone fa-fw fa-3x"></i> -->
										<img src="resources/images/outgoing.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Outgoing Calls
                                </div> 
                             <!--     <p style="color: white;"> Today Calls:</p> -->
                                <div class="circle-tile-number text-faded">
                            ${callsCount.getPrice()}
                                </div>
                                <a href="callDetails1" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                   <img src="resources/images/callback.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Today Call Back
                                </div>
                                <!-- <p style="color: white;"> Today Call Back:</p> -->
                                <div class="circle-tile-number text-faded">
                                    --
                                    <span id="sparklineD"></span>
                                </div>
                                <a href="callsDispositions" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                   <img src="resources/images/extension.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                   Extension Details
                                </div>
                                <div class="circle-tile-number text-faded">
                                --
                                    <span id="sparklineC"></span>
                                </div>
                                <a href="viewExtension" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                   <img src="resources/images/todaycall.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Coming Soon
                                </div>
                                <div class="circle-tile-number text-faded">
                                   --
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <img src="resources/images/upload.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Calls Upload
                                </div>
                                <div class="circle-tile-number text-faded">
                                  -- 
                                    <span id="sparklineB"></span>
                                </div>
                                <a href="callsFileUpdate" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <img src="resources/images/callstatus.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                   Call Status Update
                                </div>
                                <div class="circle-tile-number text-faded">
                                  --
                                    <span id="sparklineC"></span>
                                </div>
                                <a href="updateCallStatus" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                   
                
               
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <img src="resources/images/dataallocation.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Data Allocation  
                                </div>
                                <div class="circle-tile-number text-faded">
                                   --
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="viewAllocation" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                     <div class="row" >
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <img src="resources/images/duration.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Calls Duration 
                                </div>
                                <div class="circle-tile-number text-faded">
                                --
                                </div>
                                <a href="callByDuration" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                                <div class="circle-tile-heading dark-blue">
                                    <img src="resources/images/viewcall.png" class="img-rounded"/>
                                </div>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    View Calls Allocation
                                </div>
                                <div class="circle-tile-number text-faded">
                                   --
                                </div>
                                <a href="sourceDetails" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading dark-blue">
                                    <i class="fa fa-phone fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Calls Upload
                                </div>
                                <div class="circle-tile-number text-faded">
                                    10
                                    <span id="sparklineB"></span>
                                </div>
                                <a href="callsFileUpdate" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div> -->
                   
                   
                   
                   
                   
                   
                   
                   
                   <!--  <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading dark-blue">
                                    <i class="fa fa-phone fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                    Call Back
                                </div>
                                <div class="circle-tile-number text-faded">
                                    96
                                    <span id="sparklineD"></span>
                                </div>
                                <a href="callsDispositions" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div> -->
                </div>
                
 
                
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