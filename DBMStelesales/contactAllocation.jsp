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
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WELEZO</title>


<!-- Plugins css-->

<!-- Plugins css-->
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link
	href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- App CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
<!-- <link href="resources/css/pages.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/css/responsive.css" rel="stylesheet"
	type="text/css" />


<!-- DataTables -->
<link href="resources/plugins/welezo/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet"
	type="text/css" />
<script src="resources/js/modernizr.min.js"></script>


<!--add file validation  -->
<script src="resources/validation/DBMStelesales/contactAllocation.js"></script>
<!--  -->
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i class="zmdi zmdi-layers"></i></a> -->
				<a href="welezouser_dashboard"><img class="img-responsive"
					src="resources\images\newlogo.png" width="230px" height="80px" />
				</a>
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
						<li class="hidden-xs hidden-sm"><font class="page-title">DATABASE
								ALLOCATION TO CSR </font> <!--  <h4 class="page-title">View Records</h4> -->
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
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
<br>
					<div class="row">
						<form action="saveAllocatedData" name="form"
							onsubmit="return validate()" method="post">
							<input type="hidden" name="sourceId"
								value="${sourceDetailsById.sourceId}"> <input
								type="hidden" name="allocatedBy" value="<%=id %>">
							<div class="col-sm-12">
								<div class="card-box table-responsive">
									<div class="form-group">
										<div class="col-sm-3">
											<div class="input-group">
												<table>
													<tr>
														<td><h6>
																<font color="blue">Source Details</font> : <font
																	color="LimeGreen">${sourceDetailsById.sourceDetails}</font>
															</h6></td>
													</tr>

													<tr>
														<td><h6>
																<font color="blue">Data Quantity</font> : <font
																	color="LimeGreen">${sourceDetailsById.dataQuantity}</font>
															</h6></td>
													</tr>

													<tr>
														<td><h6>
																<font color="blue">For Allocation </font>: <font
																	color="LimeGreen">${sourceDetailsById.ForAllocation}</font>
															</h6></td>
													</tr>

												</table>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="input-group">
												<span class="input-group-addon bg-default b-0 text-black">Enter
													No. Of Allocation</span> <input type="text" name="allocatedNo"
													id="data" class="form-control input-sm"
													placeholder="Enter No." />

											</div>
											<font style="color: red" id="errordata"></font>

										</div>
										<div class="col-sm-5">
											<div class="input-group">
												<span class="input-group-addon bg-default b-0 text-black">Remarks</span>
												<input type="text" name="remarks" id=""
													class="form-control input-sm" placeholder="Enter Remarks" />
											</div>
											<h6></h6>
										</div>
									</div>




									<script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

									<div class="col-sm-9">
										<div style="height: 400px; overflow: auto;">
											<table id="datatable-buttons"
												class="table table-striped table-bordered">
												<thead>
													<p>
														<label><input type="checkbox" name="empId"
															id="checkAll" /> Select / UnSelect all</label>
													</p>
													<tr>
														<th><b>SL NO</b></th>
														<th><b>SELECT CHECK BOX</b></th>
														<th><b>EXTENSION NUMBER</b></th>
														<th><b>CSR LIST</b></th>
													</tr>
												</thead>

												<tbody>
													<c:forEach var="employee" varStatus="counter"
														items="${extnCsrList}">
														<tr>
															<td><c:out value="${counter.index + 1}" /></td>
															<td align="center"><input type="checkbox"
																name="empId" value="${employee.empId}" /></td>

															<td>&nbsp ${employee.extensionNo}</td>
															<td>&nbsp ${employee.empName}</td>
														</tr>
													</c:forEach>
												</tbody>
												<script type="text/javascript">
												$("#checkAll").click(function(){
												    $('input:checkbox').not(this).prop('checked', this.checked);
												});
			                         	</script>
											</table>
										</div>
										<div class="col-md-offset-5">
											<button type="submit" onclick="return validate()"
												class="btn btn-primary btn-rounded waves-effect waves-light"
												value="submit">Submit</button>
											<button type="reset"
												class="btn btn-danger btn-rounded waves-effect waves-light m-l-10">Clear</button>
										</div>
									</div>
								</div>
							</div>

						</form>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->

			</div>
			<!-- container -->

		</div>
		<!-- content -->

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

		<!-- Modal -->

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


	<!-- Datatables-->
	<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
	<!--  <script src="resources/plugins/datatables/dataTables.buttons.min.js"></script> -->
	<script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
	<script src="resources/plugins/datatables/jszip.min.js"></script>

	<!--   <script src="resources/plugins/datatables/pdfmake.min.js"></script>
		 -->
	<script src="resources/plugins/datatables/vfs_fonts.js"></script>
	<script src="resources/plugins/datatables/buttons.html5.min.js"></script>
	<!--  <script src="resources/plugins/datatables/buttons.print.min.js"></script> -->
	<script
		src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
	<script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>
	<!-- Plugins Js -->
	<script src="resources/plugins/switchery/switchery.min.js"></script>
	<script
		src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript"
		src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript"
		src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js"
		type="text/javascript"></script>
	<script
		src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"
		type="text/javascript"></script>
	<script
		src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"
		type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
		type="text/javascript"></script>


	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>



</body>
</html>