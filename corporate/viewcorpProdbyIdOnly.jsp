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
<link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
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

<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet" />
<link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" />
<script src="resources/js/modernizr.min.js"></script>
<!-- Table -->

<script src="resources/table/table-jquery-1.11.3.min.js"></script>

<link href="resources/table/table-jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<script src="resources/table/table-jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/table/table-buttons.dataTables.min.css" />
<script src="resources/table/table-dataTables.buttons.min.js"></script>
<script src="resources/table/table-buttons.colVis.min.js"></script>

<script src="resources/extraDatatable/jquery-1.12.4.js"></script>
<script src="resources/extraDatatable/jquery.dataTables.min.js"></script>
<script src="resources/extraDatatable/dataTables.buttons.min.js"></script>
<script src="resources/extraDatatable/buttons.print.min.js"></script>

<script src="resources/extraDatatable/jszip.min.js"></script>
<script src="resources/extraDatatable/pdfmake.min.js"></script>
<script src="resources/extraDatatable/vfs_fonts.js"></script>
<script src="resources/extraDatatable/buttons.colVis.min.js"></script>
<script src="resources/extraDatatable/buttons.html5.min.js"></script>

<script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>

<link href="resources/excel/Filter.css" rel="stylesheet" type="text/css" />
<script src="resources/excel/headerOptions.js"></script>
<!--add vendors  validation  -->
<script src="resources/validation/corporate/corporateDetails.js"></script>
<!--  -->
<style>
tfoot {
	display: table-header-group;
}

.table,td,th {
	border: 1px solid #ddd;
}

#n {
	border-style: solid;
	border-width: thin;
}
</style>

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

<!-- 	App js -->
<script src="resources/js/jquery.core.js"></script>
<script src="resources/js/jquery.app.js"></script>


</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<img class="img-responsive" src="resources\images\newlogo.png"
					width="230px" height="80px" />
			</div>

			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container1">

					<!-- Page title -->
					<ul class="nav navbar-nav navbar-left">
						<li><a href="corporateDashBoard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li><font face="verdana" class="page-title1">PRODUCT
								LIST</font> <!--  <h4 class="page-title">ADD COLLECTIONS</h4> --></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<h4>
								<button type="button" value=" Go Back !"
									onclick="history.back(-1)" class="btn btn-primary1">
									<span class="glyphicon glyphicon-chevron-left"></span> Back
								</button>
							</h4>
						</li>
					</ul>
				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
		<!-- Top Bar End -->

		<!-- ========== Left Sidebar Start ========== -->
		<%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->


		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">

				<div class="container">
					<div class="card-box table-responsive">

						<div class="col-md-12">
							<div class="clearfix">
								<div class="pull-left">
									<p class="m-t-10">
										<strong>Product Name : </strong> ${prodName}
									</p>

									<br>
								</div>



							</div>
						</div>

						<div class="col-md-12">
							<div class="scrollit">
								<table id="example" class="grid display nowrap"
									style="width: 100%">
									<thead>
										<tr>
											<td><b>Sl. NO</b></td>
											<td><b>CATEGORY</b></td>
											<td><b>PARAMETERS NAME</b></td>

										</tr>
									</thead>

									<tfoot>
										<tr>
											<th>Sl. NO</th>
											<th>CATEGORY</th>
											<th>TEST PARAMETERS</th>
										</tr>
									</tfoot>
									<tbody>

										<c:forEach items="${prodList}" var="prod" varStatus="counter">
											<tr style="display: table-row;">
												<td><c:out value="${counter.index + 1}" /></td>
												<td><c:out value="${prod.serviceCategory}"></c:out></td>
												<%-- 	<td> <c:out value="${prod.serviceId}"></c:out> </td> --%>
												<td><c:out value="${prod.serviceParameters}"></c:out></td>
											</tr>

										</c:forEach>



									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
				<!-- container -->

				<!-- ============================================================== -->
				<!-- End Right content here -->
				<!-- ============================================================== -->


			</div>

		</div>
	</div>
</body>

</html>