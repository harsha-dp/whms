<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	border: 0;
}

#n {
	border-style: solid;
	border-width: thin;
}

div.outbox {
	border: 2px solid green;
	outline-color: red;
	outline-style: solid;
}

.form>h4 {
	margin-bottom: 20px;
}

.form>div,#selection-treeview {
	display: inline-block;
	vertical-align: top;
}

#checked-items {
	margin-top: 20px;
}

.selected-data {
	padding: 20px;
	background: #f5f5f5;
	font-size: 115%;
	font-weight: bold;
}

.dx-list-item-content {
	padding-left: 0;
}
</style>




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
								FOR QUOTATION </font> <!--  <h4 class="page-title">ADD COLLECTIONS</h4> -->
						</li>
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
	</div>
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
					<div class="col-md-12">
						<div class="">
							<div class="card-box table-responsive">
								<div class="row" style="padding-left: 60px;">
									<br> <br />
	
						<div class="n" id="n">
										<!-- =============	form:form start from here ==============    -->
							<form:form action="generateRequestQuotation" name="form"
											modelAttribute="corpHospitalDTO">
								<%-- <c:forEach items="${corpEmailROQ}" var="list" varStatus="counter" end="1">
									<div class="col-lg-12">
										<div class="col-lg-6">
											<div class="form-group">
												<label for="name">Executive Name : ${list.executiveName} </label>
												<form:input type="text" path="name" class="form-control"
													onkeypress="return onlyAlphabets(event,this);"
													value="${list.executiveEmail}" id="namee" readonly="true" />
												<form:hidden path="executiveName" value="${list.executiveName}"/>
												<font id="fnameerror" style="color: red"></font>
						
											</div>
										</div>
						
										<div class="col-md-6">
											<div class="form-group">
												<label for="name">Report To : ${list.reporttoName}</label>
												<form:input type="text" path="designation" class="form-control"
													value="${list.reporttoEmail}" id="desiname"/>
												<form:hidden path="reportingtoName" value="${list.reporttoEmail}"/>
												<font id="desinameerror" style="color: red"></font>
						
											</div>
										</div>
									</div>
									</c:forEach>	 --%>
									
									
									<div class="col-sm-12">

										<table class="noborder table-responsive">
											<tbody>
												
												<tr>
													<td>
														<h5 style="color: #2f6f94">
															<b> Select the Product for which Request of Quotation
																should be Generated </b>
														</h5>
													</td>
												</tr>

												<tr>
													<td style="width: 350px;">
														<table class="table table-striped">

															<c:forEach items="${corpProduct}" var="corp"
																varStatus="loop">
																<c:if test="${corp.isActive==1}">
																	<tr>
																		<td width="10%">&nbsp; &nbsp; <form:checkbox
																				path="prefProduct" value="${corp.prodId}" />&nbsp;${corp.proName}
																		</td>

																	</tr>
																</c:if>
															</c:forEach>

														</table>
													</td>
												</tr>


											</tbody>
										</table>
									</div>
									<div class="col-md-offset-3">
										<br> <br />
										<button type="submit" onclick="return validate()"
											class="btn btn-primary waves-effect waves-light"
											value="submit">Submit</button>
										<button type="reset"
											class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
										<p>&nbsp;</p>
										<p>&nbsp;</p>
									</div>
							</form:form>

									<%-- 
								<div class="col-sm-12">

										<table class="noborder table-responsive">
											<tbody>
												
												<tr>
													<td>
														<h5 style="color: #2f6f94">
															<b> Select the Product for which Request of Quotation
																should be Generated </b>
														</h5>
													</td>
												</tr>

												<tr>
													<td style="width: 350px;">
														<table class="table table-striped">

															<c:forEach items="${corpProduct}" var="corp"
																varStatus="loop">
																<c:if test="${corp.isActive==1}">
																	<tr>
																		<td width="10%">&nbsp; &nbsp; <form:checkbox
																				path="prefProduct" value="${corp.prodId}" />&nbsp;${corp.proName}
																		</td>

																	</tr>
																</c:if>
															</c:forEach>

														</table>
													</td>
												</tr>


											</tbody>
										</table>
									</div>
									 --%>
									<br></br>
									
									<p>&nbsp;</p>

								</div>



							</div>
						</div>
					</div>

				</div>

			</div>

		</div>
		<!-- container -->
	</div>


</body>
</html>