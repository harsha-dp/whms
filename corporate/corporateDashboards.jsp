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
         .hero-widget { text-align: center; padding-top: 20px; padding-bottom: 20px; }
.hero-widget .icon { display: block; font-size: 96px; line-height: 96px; margin-bottom: 10px; text-align: center; }
.hero-widget var { display: block; height: 64px; font-size: 64px; line-height: 64px; font-style: normal; }
.hero-widget label { font-size: 17px; }
.hero-widget .options { margin-top: 10px; }
         </style>
	
	
	<script type="text/javascript">
	  window.onload = function () {
	    var chart = new CanvasJS.Chart("chartContainer",
	    {
	      title:{
	        text: "CORPORATE 2017 SALES STATUS",
	        	/* margin: 30 */
	      },
	      axisX:{
	        interval: 0,
	        intervalType: "month",
	        labelWrap: false,
	      },
	      /* axisY:{
	          title: "axisY Title"
	         }, */
	         axisY:{
	 			/* labelBackgroundColor: "gray",
	 			labelFontColor: "white", */
	 			labelAngle: 50,
	 			/*  maximum: 120,  */
	 			interval: 10
	 		},
	      data: [
	      {
	        type: "column",
	        dataPoints: [//array
			       {
	         x: new Date(2017, 00, 1),
	         y: 26,
	       },
	       {
	         x: new Date(2017, 01, 2),
	         y: 30
	       }
	       , {
	         x: new Date(2017, 02, 5),
	         y: 35,

	       }, {
	         x: new Date(2017, 03, 7),
	         y: 40,

	       }, {
	         x: new Date(2017, 04, 11),
	         y: 41,

	       }, {
	         x: new Date(2017, 05, 11),
	         y: 54,

	       }, {
	         x: new Date(2017, 06, 23),
	         y: 60,

	       }, {
	         x: new Date(2017, 07, 30),
	         y: 90,

	       },{
	         x: new Date(2017, 08, 25),
	         y: 35,

	       },{
	         x: new Date(2017, 09, 25),
	         y: 70,
	       }
	       ,{
		         x: new Date(2017, 10, 25),
		         y: 75,
		       },
		       {
			         x: new Date(2017, 11, 25),
			         y: 20,
			       },
	       
	       ]
	     }
	     ]
	   });

	    chart.render();
	  }
	  </script>
	
	 <script src="resources/js/modernizr.min.js"></script>
	 
	<script src="resources/plugins/charts/canvasjs.min2.js"></script>
	
<script>
$(document).ready(function(){
    $("#p1").mouseup(function(){
        alert("Mouse up over p1!");
    });
});
</script>
	
	
	
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
                             <font face="verdana" class="page-title">CORPORATE DASHBOARD</font>
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
                    	<div class="card-box">
                            	<div class="row">
		<div class="col-sm-3">
    	    <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="glyphicon glyphicon-user"></i>
                </div>
                <div class="text">
                    <var>${totalCorporateVisited.totalCount}</var>
                    <label class="text-muted"> VISITED CORPORATE </label>
                </div>
                
                <div class="options">
                    <a href="viewcorporate?userId=<c:out value="${USERID}" />&roleType=<c:out value="${role}" />" class="btn btn-primary btn-lg"> <i class="glyphicon glyphicon-eye-open"></i> View Corporate</a>
                </div>
            </div>
		</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="glyphicon glyphicon-time"></i>
                </div>
                <div class="text">
                    <var>${interActionCounts.interActionCount}</var>
                    <label class="text-muted">TODAY'S INTERACTION</label>
                </div>
                <div class="options">
                   <a href="viewCorpInteraction?userId=<c:out value="${USERID}" />&roleType=<c:out value="${role}" />" class="btn btn-primary btn-lg"> <i class="glyphicon glyphicon-eye-open"></i> Corporate Interaction</a>
                </div>
            </div>
		</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="glyphicon glyphicon-calendar"></i>
                </div>
                <div class="text">
                    <var>${totalCorporateAppt.totalCount}</var>
                    <label class="text-muted"> TOTAL APPOINTMENTS</label>
                </div>
               <div class="options">
                    <a href="viewcorporateappointment?userId=<c:out value="${USERID}" />&roleType=<c:out value="${role}" />" class="btn btn-primary btn-lg"><i class="glyphicon glyphicon-plus"></i> Know More</a>
                </div>
            </div>
    	</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="glyphicon glyphicon-retweet"></i>
                </div>
                <div class="text">
                    <var>${totalCorporatetContact.totalContact}</var>
                    <label class="text-muted" id="p1">TOTAL CONTACTS</label>
                    
                </div>
                <div class="options">
                    <a href="#" class="btn btn-primary btn-lg" ><i class="glyphicon glyphicon-plus"></i> Know More</a>
                </div>
            </div>
                            
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
                        


                     <!--  -->
                      <!--   <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <div id="chartContainer" style="height: 400px; width: 100%;"></div>
                        </div>
                    </div>end col
                </div>
                end row -->
                
                
                    <!--     <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                          <div id="chartContainer2" style="width: 100%; height: 400px;"></div>
                        </div>
                    </div>end col
                </div>
                end row
                
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                         <div id="chartContainer3" style="width: 100%; height: 300px;display: inline-block;"></div>
                        </div>
                    </div>end col
                </div>
                end row
                
                 
                        <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                        <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <div id="chartContainer1" style="width: 45%; height: 300px;display: inline-block;"></div> 


<div id="chartContainer4" style="width: 45%; height: 300px;display: inline-block;"></div>
  </div>
  
  
<script lang="javascript" type="text/javascript">
  

var chart = new CanvasJS.Chart("chartContainer2",
    {
        animationEnabled: true,
        title: {
            text: "WELEZO DEPARTMENTS",
        },
        data: [
        {
            type: "pie",
            showInLegend: true,
            dataPoints: [
                { y: 1, legendText: "HR", indexLabel: "HR" },
                { y: 2, legendText: "Account", indexLabel: "Account" },
                { y: 25, legendText: "Sales", indexLabel: "Sales" },
                { y: 7, legendText: "IT", indexLabel: "IT" },
                { y: 5, legendText: "Operation", indexLabel: "Operation" },
                { y: 4, legendText: "CC", indexLabel: "Customer care" },
                { y: 3, legendText: "DM", indexLabel: "Digital marketing" }
            ]
        },
        ]
    });
chart.render();
</script>

<script>
var callsObj = JSON.parse('${object}');	


var chart = new CanvasJS.Chart("chartContainer3",
    {
        animationEnabled: true,
        title: {
            text: "DEPARTMENT AND EMPLOYEE COUNT(Including All Branches)"
        },
        axisX: {
            title :" Department List",
            valueFormatString: "",
            interval: 0.1,
            intervalType: "month"
        },
        axisY: {
        	 title :"Number of Employees ",
            includeZero: false,
        },
        data: [
        {
          type: "column",
          indexLabel: "{y} Employee",
          dataPoints: callsObj
        }
        ]
    });
chart.render();

</script>

<script>

var callsObj1 = JSON.parse('${object1}');	
var chart = new CanvasJS.Chart("chartContainer4",
    {
        animationEnabled: true,
        title: {
            text: "EMPLOYEEs AVG BMI"
        },
        axisX: {
        	 title :" Department List",
            interval: 1,
        },
        axisY: {
       	 title :"BMI ",
           includeZero: false,
       },
        data: [
        {
            type: "line",
            legendMarkerType: "triangle",
            legendMarkerColor: "green",
            color: "rgba(255,12,32,.3)",
            showInLegend: true,
            legendText: "Country wise population",
            dataPoints: callsObj1
        },
        ]
    });
chart.render();
    </script>
                            
                        </div> -->
                    </div><!-- end col-->
                    
                  <!--   <div class="row">
                    <div class="col-md-6">
<div class="alert alert-success alert-dismissible fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>HI Ramesh</strong> This alert box could indicate a successful or positive action.
  </div>
  </div>
  <div class="col-md-6">
  <div class="alert alert-info alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Mr.Anoop!</strong> This alert box could indicate a neutral informative change or action.
  </div>
  </div>
  
  <div class="col-md-6">
  <div class="alert alert-warning alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Mr Manju!</strong> This alert box could indicate a warning that might need attention.
  </div>
  </div>
  <div class="col-md-6">
  <div class="alert alert-danger alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Ms Misba!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
  </div>

</div>
 -->
                    
                </div>
                <!-- end row -->
                
                
                        <!--  -->
                        
                     
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