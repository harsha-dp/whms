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
 .info-box {
    display: block;
    min-height: 90px;
    background: #fff;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
    border-radius: 2px;
    margin-bottom: 15px;
}
.bg-aqua, .callout.callout-info, .alert-info, .label-info, .modal-info .modal-body {
    background-color: #00c0ef !important;
        color: #fff !important;
}

.info-box-content {
    padding: 5px 10px;
    margin-left: 90px;
}
.info-box-number {
    display: block;
    font-weight: bold;
    font-size: 18px;
}
.info-box-icon {
    border-top-left-radius: 2px;
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 2px;
    display: block;
    float: left;
    height: 90px;
    width: 90px;
    text-align: center;
    font-size: 45px;
    line-height: 90px;
    background: rgba(0,0,0,0.2);
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
                             <font face="verdana" class="page-title">DISPATCH DASHBOARD</font>
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
               <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><!-- <i class="fa fa-truck"></i> -->
            
				<img src="resources/images/dashboard/Daddress.jpg"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="detailsDispach">Customer Dispatch Address</a></span>
              <span class="info-box-number">--</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua">
          <!--   <i class="fa fa-bus" data-toggle="modal" data-target=".bs-example-modal-sm2"></i> -->
            <img src="resources/images/dashboard/Dispatch.jpg" width="70px" height="50px" data-toggle="modal" data-target=".bs-example-modal-sm2"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="viewdispatch" >Dispatch List</a></span>
              <span class="info-box-number">${pendingDispatch.total}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua">
          <!--   <i class="fa fa-clone" data-toggle="modal" data-target=".bs-example-modal-sm3"></i> -->
		 <img src="resources/images/dashboard/Dsummary.jpg" />
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="dispatchSummary">Dispatch Summary</a></span>
              <span class="info-box-number">${totalDispatch.total}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua">
           <!--  <i class="fa fa-folder-open" data-toggle="modal" data-target=".bs-example-modal-sm1"></i> -->
             <img src="resources/images/dashboard/Applicationstock.jpg" width="70px" height="50px"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="viewDetails2">Application Stock</a></span>
              <span class="info-box-number">--</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua">
            <!-- <i class="fa fa-envelope-o" data-toggle="modal" data-target=".bs-example-modal-sm"></i> -->
				<img src="resources/images/dashboard/Voucher.jpg" data-toggle="modal" data-target=".bs-example-modal-sm"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text">
              <a href="voucher">Voucher Details</a></span>
              <span class="info-box-number">--</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><!-- <i class="	fa fa-refresh"></i> -->
				<img src="resources/images/dashboard/inward.jpg"/>
            
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="searchItem">Inward/outward Inventory</a></span>
              <span class="info-box-number">${inWard.total}/${outWard.total}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><!-- <i class="fa fa-sliders"></i> -->
				<img src="resources/images/dashboard/Itemlist.jpg"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="viewIteamsList">Item List</a></span>
              <span class="info-box-number">--</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><!-- <i class="	fa fa-sitemap"></i> -->
				<img src="resources/images/dashboard/Vendor.jpg"/>
            </span>

            <div class="info-box-content">
              <span class="info-box-text"><a href="vendorsList">Vendors List</a></span>
              <span class="info-box-number">--</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
               </div>                          
                            </div><!-- end col -->
                        </div>
                        
                    </div> <!-- container -->
                    
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
                
                 <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="mySmallModalLabel">Voucher Details</h4>
                                                </div>
                                                <div class="modal-body">
                                                 <table border="1" >
                                                 <tbody>
                                                 <tr style="background-color: menu">
                                                 <th>Service</th>
                                                 <th>Voucher Count</th>
                                                 </tr>
                                                 </tbody>
                                                <c:forEach items="${voucherList}" var="list">
                                                <tr>
                                                <td>${list.serviceName}</td>
                                                <td>${list.voucherCount}</td>
                                                </tr>
                                                </c:forEach>
                                                    </table>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                                    
                                      <div class="modal fade bs-example-modal-sm1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="mySmallModalLabel">Application Details</h4>
                                                </div>
                                                <div class="modal-body">
                                                 <table border="1" >
                                                 <tbody>
                                                 <tr style="background-color: menu">
                                                 <th>Application Status</th>
                                                 <th>Total</th>
                                                 </tr>
                                                 </tbody>
                                                <c:forEach items="${applicationStatusReport}" var="list">
                                                <tr>
                                                <td>${list.status}</td>
                                                <td>${list.Total}</td>
                                                </tr>
                                                </c:forEach>
                                                    </table>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                                    
                                     <div class="modal fade bs-example-modal-sm2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="mySmallModalLabel">Dispatch Details</h4>
                                                </div>
                                                <div class="modal-body">
                                                 <table border="1" >
                                                 <tbody>
                                                 <tr style="background-color: menu">
                                                 <th>Dispatch Status</th>
                                                 <th>Dispatch Total</th>
                                                 </tr>
                                                 </tbody>
                                                <c:forEach items="${dispatchStatusReport}" var="list">
                                                <tr>
                                                <td>${list.status}</td>
                                                <td>${list.Total}</td>
                                                </tr>
                                                </c:forEach>
                                                    </table>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
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