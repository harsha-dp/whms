<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<!-- <!-- Plugins css-->

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







<meta name="viewport" content="width=device-width">

<link href="resources/css/pages.css/pure-min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="resources/css/pages.css/pure-min.css/grids-responsive-min.css"
	type="text/css">


<link href="resources/plugins/welezo/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript" src="resources/js/jquery.min.js"></script>

<link href="resources/excel/Filter.css" rel="stylesheet" type="text/css" />


<script src="resources/validation/corporate/corporateDetails.js"></script>


<!--to generate pdf   -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<!-- JS to convert HTML Div to pdf.   -->
<script src="resources/js/printDiv.js"></script>

<style>
.table,td,th {
	border: 2px solid black medium;
	border-collapse: collapse;
	table-layout: auto;
}

#n {
	border-style: solid;
	border-width: thin;
}

th {
	text-align: center;
}
</style>

<script type="text/javascript">
	
</script>


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
						<li><font face="verdana" class="page-title1">REQUEST
								FOR QUOTATION </font></li>
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
		</div>
		<!-- Top Bar End -->
	</div>


	<!-- ========== Left Sidebar Start ========== -->
	<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
	<!-- Left Sidebar End -->


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div class="content-page">

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

	</div>


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">

			<div class="container">
				<div class="card-box">

					<!-- generate pdf from a div including css contents -->

					<div id="pdfGen">
						</br>
						<div id="n" class="n">
							<div class="m" style="padding: 30px">
								<h4>Health Package List and Parameters</h4>
								<br></br>
								<c:forEach items="${prefProdParam}" var="olist"
									varStatus="counter">

									<table id="tableProd" class="table table-bordered"
										style="border-style: 1px; width: 75%">
										<h6>
											<label> Health Package No: ${counter.index + 1} </label>
										</h6>
										<thead>

											<tr>
												<th style="width: 15%;"><b> Sl. No </b></th>
												<th style="width: 35%;"><b> Category </b></th>
												<th style="width: 35%;"><b> Health Parameters </b></th>
											</tr>

										</thead>

										<tbody>
											<c:forEach items="${olist}" var="ilist" varStatus="counter">
												<tr>
													<td><c:out value="${counter.index+1}" /></td>
													<td><c:out value="${ilist.serviceCategory}" /></td>
													<td><c:out value=" ${ilist.serviceParameters} " /></td>
												</tr>
											</c:forEach>

										</tbody>
										<p></p>


									</table>

								</c:forEach>

							</div>




						</div>

					</div>
					<div class="col-md-offset-4">
						<button type="submit"
							class="btn btn-primary waves-effect waves-light" id="btnPrint2"
							value="submit">Download PDF</button>

						<p>&nbsp;</p>
						<p>&nbsp;</p>
					</div>


				</div>
			</div>
			<!-- container -->
		</div>

		<!-- content -->
		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	</div>

</body>
</html>









