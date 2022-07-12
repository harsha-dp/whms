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
        <!--cc dashboard  validation  -->
<script src="resources/validation/appointment/customerDashboard.js"></script>
<!--  -->
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
 
.bg-aqua, .callout.callout-info, .alert-info, .label-info, .modal-info .modal-body {
    background-color: #8a959a !important;
    color: #fff !important;
}
.small-box>.inner {
    padding: 10px;
}

.small-box h3 {
    font-size: 38px;
    font-weight: bold;
    margin: 0 0 10px 0;
    white-space: nowrap;
    padding: 0;
}
.small-box h3, .small-box p {
    z-index: 5;
}
h2, h3, h4, h5, h6 {
    color: #eee;
    }
.small-box p {
    font-size: 15px;
}
/* .fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
} */
.fa-2x {
    font-size: 2em;
    color: #438ebe;
}
.small-box>.small-box-footer {
    position: relative;
    text-align: center;
    padding: 3px 0;
    color: #fff;
    color: #333;
    display: block;
    z-index: 10;
    background: #ddd;
    text-decoration: none;
}
.small-box {
    border-radius: 2px;
    position: relative;
    display: block;
    margin-bottom: 17px;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
    border: 1px solid #188ae2;
}
.small-box .icon {
    -webkit-transition: all .3s linear;
    -o-transition: all .3s linear;
    transition: all .3s linear;
    position: absolute;
    top: 0px;
    right: 10px;
    z-index: 0;
    font-size: 90px;
    color: rgba(0,0,0,0.15);
}
.label-default {
    background-color: #5b62bc;
    border-radius: 29px;
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
                             <font face="verdana" class="page-title">CUSTOMER CARE DASHBOARD</font>
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
                    
                    <div class="card-box">
                    	<div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3 style="color:white">${totalHealthAppointment.total}</h3>
              <p>Health Appointment</p>
              
<progress value="${totalHealthAppointment.total}" max="1000" min="1" title="Total Appointments ${totalHealthAppointment.total}"></progress><br/>
                <a href="viewappointment"> <button class="label label-default">Today Appt <span class="badge">${healthApptCount.serviceName}</span></button></a>
                <a href="appointmentList"><button class="label label-default">New Appt <span class="badge">${newApptCount}</span></button></a><br/>
           
            </div>
            <div class="icon">
              <i class="fa fa-calendar"></i>
            </div>
            <a href="viewappointment" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
         
         <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${totalPreEmployment.total}</h3> 
               <h5> <a href="preEmployee"><button class="label label-default">New Appointment<span class="badge">${newPreEmpAppointment.total}</span></button></a>
             </h5>
              <p>Pre Employment Appt.</p>
            </div>
            <div class="icon">
              <i class="fa fa-book"></i>
            </div>
            
            <a href="preEmployee" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h5> <a href="checkAvailableHospital"> <button class="label label-default">Appointment Open </button></a></h5>

              <p>Service Availability</p>
            </div>
            <div class="icon">
              <i class="fa fa-plus-square"></i>
            </div>
            <a href="checkAvailableHospital" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
       
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${dashBoardCount.interactionMode}</h3>

              <p>Customer Interaction</p>
            </div>
            <div class="icon">
              <i class="fa fa-user"></i>
            </div>
            <a href="viewinteraction" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
      
                  	<div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3 style="color:white">--</h3>

              <p>Appointment Summary</p>
              <progress max="" value="" min="" title=""></progress>
            </div>
            <div class="icon">
              <i class="fa fa-eye"></i>
            </div>
            <a href="healthsummary" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${hospitalCount.nameHcc}<sup style="font-size: 20px"></sup></h3>

              <p>Hospital List</p>
             <progress max="300" value="${hospitalCount.nameHcc}" min="1" title="Total hospitals ${hospitalCount.nameHcc}"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-hospital-o"></i>
            </div>
            <a href="viewHospitals" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${customerCount.customerName}</h3>

              <p>Customer List</p>
              <progress max="10000" value="${customerCount.customerName}" min="1" title="Total Customer ${customerCount.customerName}"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-users"></i>
            </div>
            <a href="customerSearch" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->	
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${vocuherPending.total}</h3>

              <p>Voucher Received</p>
              <progress max="200" value="${vocuherPending.total}" min="100" title="Voucher Received ${vocuherPending.total}"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-calendar-check-o"></i>
            </div>
            <a href="voucherEntry" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
      
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3 style="color:white">${newApptCount}</h3>

              <p>Appointment Calendar</p>
              <progress max="50" value="${newApptCount}" min="1" title="Appointment Calendar ${newApptCount}"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-calendar"></i>
            </div>
            <a href="appointmentList" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${feedBackPending.total}</h3>

              <p>Customer Feedback</p>
              <progress max="50" value="${feedBackPending.total}" min="1" title="Customer Feedback ${feedBackPending.total}"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-exclamation"></i>
            </div>
            <a href="viewCustomerFeedback" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>--</h3>

              <p>Visitor Book</p>
              <progress max="50" value="10" min="1" title=""></progress>
            </div>
            <div class="icon">
              <i class="fa fa-mortar-board"></i>
            </div>
            <a href="viewcalls" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->	
        <div class="col-md-3 col-sm-6 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>--</h3>

              <p>Reports</p>
              <progress max="5" value="1" min="0" title="Coming soon"></progress>
            </div>
            <div class="icon">
              <i class="fa fa-heartbeat"></i>
            </div>
            <a href="viewCustomerReport" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
      
                
               <div class="row">
		<div class="col-lg-4">
        
        <form action="searchCustomerTx" class="classNameHere" role="search" name="form" onsubmit="return validate()">
    	<div class="input-group">
			<input type="text" class="form-control" name="cardRPhnNumber" name="srch-term" id="cardRPhnNumber" placeholder="Card/Moblie/DOB/Appln No/DOB : YYYY-MM-DD ">
			<div class="input-group-btn">
				<button class="btn btn-default" onclick="return validate()" type="submit"><i class="glyphicon glyphicon-search"></i></button>
			</div>
		</div>
		</form>
        </div>
          <font id="contactError" style="color: red;"></font>
        <c:choose>
									<c:when test="${not empty stkList}">
						 <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                      <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                             <c:if test="${name.columnName ne 'Health Check' && name.columnName ne 'Customer'}">
                                            <th class="filtername">${name.columnName}</th>
                                            </c:if>
                                          
									</c:forEach>
									<th>Action</th>
                                   </tr>
                                        </thead>
					<tbody>
					  <c:forEach var="row" items="${stkList}"> 
                                <tr>
                                  <%--  <c:if test="${columnName.size() >= 1}"><td> <a href="serviceBaseAppointment?transactionId=<c:out value='${row.attr1}'/>">Book</a></td></c:if> --%>
                        <%--            <c:if test="${columnName.size() >= 2}"><td><a href="viewcustomersById?customerId=<c:out value='${row.attr2}'/>">View</a></td></c:if> --%>
                                   <c:if test="${columnName.size() >= 3}"><td><a href="editTransaction?transactionId=<c:out value='${row.attr1}'/>">${row.attr3}</a></td></c:if>
                                   <c:if test="${columnName.size() >= 4}"><td>${row.attr4}</td></c:if>
                                   <c:if test="${columnName.size() >= 5}"><td><a href="viewcustomersById?customerId=<c:out value='${row.attr2}'/>">${row.attr5}</a></td></c:if>
                                    <c:if test="${columnName.size() >= 6}"><td>${row.attr6}</td></c:if>
                                    <c:if test="${columnName.size() >= 7}"><td>${row.attr7}</td></c:if>
                                     <c:if test="${columnName.size() >= 8}"><td>${row.attr8}</td></c:if>
                                   <c:if test="${columnName.size() >= 9}"><td>${row.attr9}</td></c:if>
                                    <c:if test="${columnName.size() >= 10}"><td>${row.attr10}</td></c:if>
                                     <c:if test="${columnName.size() >= 11}"><td>${row.attr11}</td></c:if>
                                     <c:if test="${columnName.size() >= 12}"><td>${row.attr12}</td></c:if>
                                     
                                      <td> <a href="addInteraction?transactionId=<c:out value='${row.attr1}'/>&customerId=<c:out value='${row.attr2}'/>" class="btn btn-default btn-md waves-effect waves-light"
                                            data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Add Query
                                        </a> </td>
                                   <!--  <td> <a href="#custom-modal" class="btn btn-default btn-md waves-effect waves-light"
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Add Interaction
                                        </a> </td> -->
            </tr></c:forEach>
	                          
								</tbody>
								
	                           </table>
	                          
	                           </div></c:when>
	                       
	                            <%-- <c:otherwise>
	                            <a href="newcalldata" class="btn btn-primary btn-md"
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> ADD NON EXISTING CUSTOMER DETAILS
                                        </a>
	                           </c:otherwise> --%>
	                           </c:choose>
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