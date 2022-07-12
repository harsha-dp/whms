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

<!-- App title -->
<title>WELEZO</title>

     <!-- Plugins css-->
<link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
<link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">


                     <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        <script src="resources/js/modernizr.min.js"></script>
        
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="resources/js/leave.js"></script>



<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet" />

<!-- Datepicker start -->
		   <link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
           <link rel="stylesheet" href="/resources/demos/style.css">
		   <script src="resources/datepicker/jquery-1.12.4.js"></script>
		   <script src="resources/datepicker/jquery-ui.js"></script>
		   
		   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
          
      <!-- Datepicker end -->

<style type="text/css">
.modal-header {
	padding: -5px;
	/*  border-bottom: 22px solid #e5e5e5; */
	border-top: 22px solid #e5e5e5;
}


</style>
<style type="text/css">
.ui-datepicker {
    background: #4491bf;
    border: 1px solid #73b934;
    color: #5ab039;
}

</style>

<!--add file validation  -->
<script src="resources/validation/welezoconstant/leaveRequest.js"></script>
<!--  -->
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
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
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"><font face="verdana" class="page-title">EMPLOYEE
									LEAVES REQUEST</font></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
								<li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="glyphicon glyphicon-arrow-left" aria-hidden="true"> </i>
								</button>
             </li>
					</ul>


				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
		<!-- Top Bar End -->

		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
		<!-- Modal -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
				<!-- end row -->

				<!-- popup window -->
<br>
				<div class="card-box card-outline-danger">
					<div class="row">
						<div class="col-lg-12">
							<!-- Modal Add Category -->
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<!-- <h4 class="custom-modal-title">Leave Request</h4> -->
										<div class="custom-modal-text text-left">

											<!-- =============	form:form start from here ==============    -->

											<form:form action="saveLeaveAdmin" name="form"
												onsubmit="return valididate()" modelAttribute="leaveRequest">
												<form:hidden path="requestBy" value="<%=id%>" />
												<div class="row">
													<div class="col-md-12">
														<div class="col-md-7">
															<div class="form-group">
																<label><b>Employee Name <span
																		style="color: red">*</span></b></label>
																<form:select class="form-control input-sm" path="empId"
																	title="Select" id="name">
																	<form:option value="" label="Select Employee name " />
																	<c:forEach items="${allEmployees}" var="emp"
																		varStatus="status">
																		<form:option path="empId" value="${emp.empId}">${emp.empName}</form:option>
																	</c:forEach>
																</form:select>
																<font id="error" style="color: red"></font>
															</div>
														</div>

														<div class="col-md-5">
															<div class="form-group">
																<label>Total No. of days leave required <span
																	style="color: red">*</span></label>
																<form:input type="text" path="totalDays"
																	class="form-control input-sm" id="defaultconfig" />
																<font id="droperror" style="color: red"></font>
															</div>
														</div>
													</div>

													<div class="col-md-12">
														<div class="col-md-6">
															<div class="form-group">
																<label><b>From Date <span style="color: red">*</span></b></label>
																<div class="input-group">
																	<form:input path="fromDate"
																		class="form-control input-sm" id="datepicker" />
																	<span class="input-group-addon bg-info b-0 text-white"><i
																		class="ti-calendar"></i></span>
																</div>
																<font id="drop1error" style="color: red"></font>
															</div>
															
  <script src="resources/datepicker/jquery-1.12.4.js"></script>
  <script src="resources/datepicker/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $( function() {
    $("#datepicker").datepicker({
        minDate: "-5", 
        maxDate: "+1M",
        dateFormat: 'dd/mm/yy',
        beforeShowDay: noSunday,
        autoSize: true,
        
    });

    $("#datepicker1").datepicker({
        minDate: "-5", 
        maxDate: "+1M",
        dateFormat: 'dd/mm/yy',
        beforeShowDay: noSunday,
        autoSize: true,
        
    });
    function noSunday(date){ 
         return [date.getDay() != 0, ''];
      }; 

   /*  $("#datepicker").datepicker().datepicker("setDate", new Date()) */

  } );
});
</script>
														</div>

														<div class="col-md-6">
															<div class="form-group">
																<label><b>To Date <span style="color: red">*</span></b></label>
																<div class="input-group">
																	<form:input path="toDate" type="text"
																		class="form-control input-sm"
																		id="datepicker1" />
																	<span class="input-group-addon bg-info b-0 text-white"><i
																		class="ti-calendar"></i></span>
																</div>
																<font id="drop2error" style="color: red"></font>
															</div>
														</div>
													</div>


													<div class="col-md-12">
														<div class="col-md-6">
															<div class="form-group">
																<label><b>Leave Type <span
																		style="color: red">*</span></b></label> <select name="leaveType"
																	class="form-control input-sm" id="drop2">
																	<option value="">Select leave type</option>
																	<option>Casual Leave</option>
																	<option>Sick Leave</option>
																	<option>Earned Leave</option>
																	<option>Maternity Leave</option>
																	<option>Leave Without Pay-LWP</option>
																	<option>Discretionary Day-DDE</option>
																	<option>Other</option>
																</select> <font id="drop3error" style="color: red"></font>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label><b>Status</b></label> <select name="status"
																	class="form-control input-sm" id="department">
																	<option value="New">New</option>

																</select>
															</div>
														</div>
													</div>
													<div class="col-md-12">
														<div class="col-md-12">
															<div class="form-group">
																<label><b>Reason for Leave or Other Absence
																		(Optional) <span style="color: red">*</span>:
																</b></label>
																<form:textarea path="description"
																	class="form-control input-sm" maxlength="400"
																	name="alloptions" id="alloptions"></form:textarea>
																<font id="drop4error" style="color: red"></font>
															</div>
														</div>
													</div>
												</div>
										


									<div class="col-md-offset-4">
										<button type="submit" onclick="return validate()"
											class="btn btn-primary btn-rounded waves-effect waves-light"
											value="submit">Submit</button>
										<button type="reset"
											class="btn btn-danger btn-rounded waves-effect waves-light m-l-10">Clear</button>
									</div>
								</form:form>
								</div>
										<!-- end col -->
									</div>
									<!-- end row -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
  
   
  
    <!-- Plugins Js -->
	<script src="resources/plugins/switchery/switchery.min.js"></script>
	<script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>


	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>
     
   <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
  
	
</body>
</html>