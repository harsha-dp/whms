<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully  CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />

<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!--  -->

<!-- App title -->
<title>WELEZO</title>

<!-- App CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/css/components.css" rel="stylesheet" type="text/css" />
<link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
<!--  -->

<!-- DataTables -->
<link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
<!--  -->

<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet" />
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>
<!--  -->
 
        <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	         
<!-- Table -->

<script src="resources/table/table-jquery-1.11.3.min.js"></script>

<link href="resources/table/table-jquery.dataTables.css" rel="stylesheet" type="text/css" />
<script src="resources/table/table-jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="resources/table/table-buttons.dataTables.min.css" />

<link rel="stylesheet" type="text/css" href="resources/excel/tableBorder.css" />	
	
<script src="resources/table/table-dataTables.buttons.min.js"></script>
<script src="resources/table/table-buttons.colVis.min.js"></script>

<script src="resources/extraDatatable/jquery-1.12.4.js"></script>
<script src="resources/extraDatatable/jquery.dataTables.min.js"></script>
<script src="resources/extraDatatable/dataTables.buttons.min.js"></script>
<script src="resources/extraDatatable/buttons.print.min.js"></script>

<script src="resources/extraDatatable/jszip.min.js"></script>
<script src="resources/plugins/datatables/pdfmake.min.js"></script>
<!-- <script src="resources/extraDatatable/pdfmake.min.js"></script> -->
<script src="resources/extraDatatable/vfs_fonts.js"></script>
<script src="resources/extraDatatable/buttons.colVis.min.js"></script>
<script src="resources/extraDatatable/buttons.html5.min.js"></script>

<script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>

<link href="resources/excel/Filter.css" rel="stylesheet" type="text/css" />
<script src="resources/excel/headerOptions.js"></script>
<link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>

<!--view hospital validation  -->
<script src="resources/validation/hospital/viewHospitals.js"></script>
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
								class="fa fa-home fa-2x"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	><font class="page-title">VIEW HOSPITAL</font></li>
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

		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->
		  <c:set var="role" scope="session" value="<%=roleType %>"/>
		<div class="content-page">
			<!-- Start content -->
			<div class="content">

				<div class="container">
					<!--   <h2>Panel Heading</h2> -->
					<div id="myDIV">
						<div class="panel panel-default">
							<div class="panel-heading">
								<form action="viewHospital">

									<div class="row">
										<div class="panel-heading">
											<div class="form-group">
												<div class="col-md-4">
													<div class="input-daterange input-group">
														<span class="input-group-addon bg-default b-0 text-black">Select
															City</span> <select class="form-control input-sm" name="city">
															<option value="${city}">${city}</option>
															<c:forEach items="${cityList}" var="hospital">
																<option value="${hospital.city}">${hospital.city}</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="col-md-2">
													<button type="submit"
														class="btn btn-default btn-rounded btn-sm " value="Go">
														<i class="fa fa-search" aria-hidden="true"></i> Search
													</button>
												</div>
												<div class="col-md-4">
												</div>

												<div class="col-md-2">
													<c:if test="${role == 'Admin' || role == 'Customer Care'}">
														<a href="#custom-modal"
															class="btn btn-success btn-md waves-effect waves-light"
															data-animation="fadein" data-plugin="custommodal"
															data-overlaySpeed="200" data-overlayColor="#36404a">
															<i class="zmdi zmdi-plus"></i> Add New Hospitals
														</a>
													</c:if>
												</div>
											</div>
										</div>
									</div>

								</form>

							</div>
							<div id="myDIV">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-12 col-lg-12 col-md-12">
											<div class="scrollit">
											<div id=color>
												<table id="example" class="grid display nowrap"
													style="width: 100%">
													<thead>
														<tr>
															<td><b>ID</b></td>
															<td><b>HEALTH CARE CENTER</b></td>
															<td><b>EMPANELLED DATE</b></td>
															<td><b>CITY</b></td>
															<td><b>LOCATION</b></td>
															<td><b>ADDRESS</b></td>
															<td><b>ACTION</b></td>
														</tr>
													</thead>

													<tfoot>
														<tr>
															<th>Id</th>
															<th>Health Care Center</th>
															<th>Empanelled Date</th>
															<th>City</th>
															<th>Location</th>
															<th>Address</th>
															<th>Actions</th>
														</tr>
													</tfoot>

													<tbody>
														<c:forEach items="${hospitalDetail}" var="hospital"
															varStatus="counter">
															<%--   <c:forEach items="${hospital.customerAddresses}" var="address"> --%>
															<tr>
																<td><c:out value="${counter.index + 1}" /></td>
																<td class="account-name sort-value"><a
																	href="viewHospitalByID?id=<c:out value='${hospital.hospitalId}'/>"><c:out
																			value="${hospital.nameHcc}" /></a></td>
																<td class="account-name1 sort-value"><c:out
																		value="${hospital.empanelledDate}" /></td>
																<td class="account-name2 sort-value"><c:out
																		value="${hospital.city}" /></td>
																<td class="account-name3 sort-value"><c:out
																		value="${hospital.location}" /></td>
																<td class="account-name4 sort-value"><c:out
																		value="${hospital.address}" /></td>
																<%-- 	<td class="account-name4 sort-value"><c:out value="${hospital.email}"/></td> 
                        	<td class="account-name5 sort-value"><c:out value="${hospital.landline}"/></td> --%>

																<td>
																	<%-- <a href="viewHospitalByID?id=<c:out value='${hospital.id}'/>">
                        	<i class="fa fa-eye" aria-hidden="true"></i></a> --%>
																	<c:if
																		test="${role == 'Admin' || role == 'Customer Care'}">
																		<a href="editHospital?id=<c:out value='${hospital.hospitalId}'/>">
																	</c:if><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												</div>
											</div>
										</div>
									</div>
									<!--  -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->

		<!-- END wrapper -->

		<!-- Modal -->
		<div id="custom-modal" class="modal-demo">
			<button type="button" class="close" onclick="Custombox.close();">
				<span>&times;</span><span class="sr-only">Close</span>
			</button>
			<h4 class="custom-modal-title">Add New Hospitals</h4>
			<div class="custom-modal-text text-left">

				<!-- =============	form:form start from here ==============    -->
				<form:form action="saveHospital" name="form"
					onsubmit="return validate()" modelAttribute="hospitalServiceDTO">

					<form:hidden path="createdBy" value="<%=id%>" class="form-control" />

					<label>Hospital Chain</label>
					<form:select path="facilityChain" class="form-control" id="one">
						<form:option value="" label="Select Hospital Chain" />
						<c:forEach var="mode" varStatus="status" items="${welezoConstant}">
							<c:if test="${mode.constType=='Hospital_chain'}">
								<form:option path="facilityChain" value="${mode.CValue}">${mode.CDisplay}</form:option>
							</c:if>
						</c:forEach>
					</form:select>
					<script>      
                                                                         document.getElementById("one").onchange = function () {
                                                                             document.getElementById("two").setAttribute("disabled", "disabled");
                                                                             if (this.value == 'car')
                                                                               document.getElementById("two").removeAttribute("disabled");
                                                                           };
                                                                     </script>
					<div class="form-group">
						<label for="name">Health Care Center</label>
						<form:input type="text" maxlength="60" path="nameHcc" id="two"
							class="form-control" required="required" placeholder="" />
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Empanelled Date <span style="color: red">*</span></label>
								<div class="input-group">
									<form:input type="text" path="empanelledDate"
										class="form-control" placeholder="dd/mm/yyyy"
										id="datepickerautoclose2" />
									<span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
								</div>
								<font id="errordatepickerautoclose" style="color: red"></font>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="priority">Location <span style="color: red">*</span></label>
								<form:input type="text" path="location"
									onkeypress="return onlyAlphabets(event,this);"
									class="form-control" placeholder="" id="locations" />
								<font id="errorlocations" style="color: red"></font>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="name">Address <span style="color: red">*</span></label>

						<form:textarea path="residenceAddresss" id="textarea"
							class="form-control" maxlength="225" rows="2" />
						<font id="errortextarea" style="color: red"></font>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="assign">City <span style="color: red">*</span></label>
								<form:input type="text" maxlength="25"
									onkeypress="return onlyAlphabets(event,this);" path="city"
									class="form-control" id="city" placeholder="" />
								<font id="errorcity" style="color: red"></font>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="priority">Pincode <span style="color: red">*</span></label>
								<form:input type="text" maxlength="8" path="pincode"
									onkeypress="return IsNumeric(event);" class="form-control"
									id="pincode" placeholder="" />
								<font id="errorpincode" style="color: Red; display: none"></font>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="assign">Appointment Booking</label>
								<form:input type="text" path="apptBooking" class="form-control"
									placeholder="Enter Name And Contact Number" />
								<span id="error" style="color: Red; display: none"></span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="priority">Escalation Contact</label>
								<form:input type="text" path="escalationContact"
									class="form-control"
									placeholder="Enter Name and Contact Number" />
								<span id="error" style="color: Red; display: none"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="name">Auth. Signatory</label>
								<form:input type="text" path="authSignatory"
									class="form-control" id="name"
									placeholder="Enter Name and Contact Number" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<form:label path="landline" for="priority">Escalation Mail Id</form:label>
								<form:input type="text" path="escMail"
									value="${hospitalById.escMail}" class="form-control"
									placeholder="" />
								<span id="error" style="color: Red; display: none"></span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="name">Email Id's</label>
						<form:input type="email" path="emailIds" class="form-control"
							id="name" placeholder="" />
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="assign">Latitude <span style="color: red">*</span></label>
								<form:input type="text" maxlength="25" path="latitude"
									class="form-control" id="lattitude" placeholder="" />
								<font id="errorlattitude" style="color: red"></font>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="priority">Longitutde <span
									style="color: red">*</span></label>
								<form:input type="text" maxlength="25" path="longitude"
									id="longitudee" class="form-control" placeholder="" />
							</div>
							<font id="errorlongitudee" style="color: Red"></font>
						</div>
					</div>
					<%-- <div class="form-group">
						<label for="name">Select Hospital Service</label>
					</div>
					<table id="table">

						<tbody>
							<c:choose>
								<c:when test="${not empty serviceHospital}">
									<tr>
										<td><strong>Health Check </strong></td>
									</tr>
									<c:forEach var="services" varStatus="status"
										items="${serviceHospital}">
										<c:if test="${services.category=='Health Check'}">
											<tr>
												<td>${services.category}: </td>
												<td><form:checkbox path="sId"
														value="${services.serviceId}" /></td>
												<td>${services.serviceName}</td>
											</tr>
										</c:if>
									</c:forEach>
									<tr>
										<td><strong>Consultaion</strong></td>
									</tr>
									<c:forEach var="services" varStatus="status"
										items="${serviceHospital}">
										<c:if test="${services.category=='Consultation'}">
											<tr>
												<td>${services.category}: </td>
												<td><form:checkbox path="sId"
														value="${services.serviceId}" /></td>
												<td>${services.serviceName}</td>
											</tr>
										</c:if>
									</c:forEach>
									<tr>
										<td><strong>Dentistry</strong></td>
									</tr>
									<c:forEach var="services" varStatus="status"
										items="${serviceHospital}">
										<c:if test="${services.category=='Dentistry'}">
											<tr>
												<td>${services.category}: </td>
												<td><form:checkbox path="sId"
														value="${services.serviceId}" /></td>
												<td>${services.serviceName}</td>
											</tr>
										</c:if>
									</c:forEach>
									<tr>
										<td><strong>Pharmacy</strong></td>
									</tr>
									<c:forEach var="services" varStatus="status"
										items="${serviceHospital}">
										<c:if test="${services.category=='Pharmacy'}">
											<tr>
												<td>${services.category}: </td>
												<td><form:checkbox path="sId"
														value="${services.serviceId}" /></td>
												<td>${services.serviceName}</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:when>
							</c:choose>
						</tbody>
					</table> --%>
					
					<br />

					<div class="col-md-offset-4">
						<button type="submit" onclick="return validate()"
							class="btn btn-primary waves-effect waves-light" value="submit">Submit</button>
						<button type="reset"
							class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
					</div>

				</form:form>
			</div>
		</div>
	</div>



	<script>
		var resizefunc = [];
	</script>

	<script>
		$(function() {
			$('#example').excelTableFilter();
		});
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

	<!--Date format  -->
	<script src="resources/table/tableDateScript.js"></script>
	<!--  -->

	<!-- Datatables-->
	<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
	<script src="resources/plugins/datatables/dataTables.buttons.min.js"></script>
	<script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
	<script src="resources/plugins/datatables/jszip.min.js"></script>
	<script src="resources/plugins/datatables/pdfmake.min.js"></script>
	<script src="resources/plugins/datatables/vfs_fonts.js"></script>
	<script src="resources/plugins/datatables/buttons.html5.min.js"></script>
	<script src="resources/plugins/datatables/buttons.print.min.js"></script>
	<script
		src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
	<script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>

	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

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
	<script type="text/javascript">
		$(document).ready(function() {
			$('#datatable').dataTable();
			$('#datatable-keytable').DataTable({
				keys : true
			});
			$('#datatable-responsive').DataTable();
			$('#datatable-scroller').DataTable({
				ajax : ".resources/plugins/welezo/json/scroller-demo.json",
				deferRender : true,
				scrollY : 380,
				scrollCollapse : true,
				scroller : true
			});
			var table = $('#datatable-fixed-header').DataTable({
				fixedHeader : true
			});
		});
		TableManageButtons.init();
	</script>
	<script type="text/javascript">
	jQuery(document)
	.ready(
			function() {

				// advance multiselect start
				$('#my_multi_select3')
						.multiSelect(
								{
									selectableHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
									selectionHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
									afterInit : function(ms) {
										var that = this, $selectableSearch = that.$selectableUl
												.prev(), $selectionSearch = that.$selectionUl
												.prev(), selectableSearchString = '#'
												+ that.$container
														.attr('id')
												+ ' .ms-elem-selectable:not(.ms-selected)', selectionSearchString = '#'
												+ that.$container
														.attr('id')
												+ ' .ms-elem-selection.ms-selected';

										that.qs1 = $selectableSearch
												.quicksearch(
														selectableSearchString)
												.on(
														'keydown',
														function(e) {
															if (e.which === 40) {
																that.$selectableUl
																		.focus();
																return false;
															}
														});

										that.qs2 = $selectionSearch
												.quicksearch(
														selectionSearchString)
												.on(
														'keydown',
														function(e) {
															if (e.which == 40) {
																that.$selectionUl
																		.focus();
																return false;
															}
														});
									},
									afterSelect : function() {
										this.qs1.cache();
										this.qs2.cache();
									},
									afterDeselect : function() {
										this.qs1.cache();
										this.qs2.cache();
									}
								});

				// Select2
				$(".select2").select2();

				$(".select2-limiting").select2({
					maximumSelectionLength : 2
				});

			});

//Bootstrap-TouchSpin
$(".vertical-spin").TouchSpin({
verticalbuttons : true,
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary",
verticalupclass : 'ti-plus',
verticaldownclass : 'ti-minus'
});
var vspinTrue = $(".vertical-spin").TouchSpin({
verticalbuttons : true
});
if (vspinTrue) {
$('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
}

$("input[name='demo1']").TouchSpin({
min : 0,
max : 100,
step : 0.1,
decimals : 2,
boostat : 5,
maxboostedstep : 10,
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary",
postfix : '%'
});
$("input[name='demo2']").TouchSpin({
min : -1000000000,
max : 1000000000,
stepinterval : 50,
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary",
maxboostedstep : 10000000,
prefix : '$'
});
$("input[name='demo3']").TouchSpin({
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary"
});
$("input[name='demo3_21']").TouchSpin({
initval : 40,
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary"
});
$("input[name='demo3_22']").TouchSpin({
initval : 40,
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary"
});

$("input[name='demo5']").TouchSpin({
prefix : "pre",
postfix : "post",
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary"
});
$("input[name='demo0']").TouchSpin({
buttondown_class : "btn btn-primary",
buttonup_class : "btn btn-primary"
});

//Time Picker
jQuery('#timepicker').timepicker({
defaultTIme : false
});
jQuery('#timepicker2').timepicker({
showMeridian : false
});
jQuery('#timepicker3').timepicker({
minuteStep : 60
});

//colorpicker start

$('.colorpicker-default').colorpicker({
format : 'hex'
});
$('.colorpicker-rgba').colorpicker();

//Date Picker
//Date Picker
jQuery('#datepicker').datepicker();
jQuery('#datepickerautoclose').datepicker({
format : 'dd/mm/yyyy',
autoclose : true,
todayHighlight : true
});
jQuery('#datepicker-inline').datepicker();
jQuery('#datepicker-multiple-date').datepicker({
format : "yyyy-mm-dd",
clearBtn : true,
multidate : true,
multidateSeparator : ","
});
jQuery('#date-range').datepicker({
format : "dd/mm/yyyy",
autoclose : true,
todayHighlight : true,
toggleActive : true
});

//Date range picker
$('.input-daterange-datepicker').daterangepicker({
buttonClasses : [ 'btn', 'btn-sm' ],
applyClass : 'btn-default',
cancelClass : 'btn-primary'
});
$('.input-daterange-timepicker').daterangepicker({
timePicker : true,
format : 'dd/mm/yy h:mm A',
timePickerIncrement : 60,
timePicker12Hour : true,
timePickerSeconds : false,
buttonClasses : [ 'btn', 'btn-sm' ],
applyClass : 'btn-default',
cancelClass : 'btn-primary'
});
$('.input-limit-datepicker').daterangepicker({
format : 'DD/MM/YYYY',
minDate : '06/01/2016',
maxDate : '06/30/2016',
buttonClasses : [ 'btn', 'btn-sm' ],
applyClass : 'btn-default',
cancelClass : 'btn-primary',
dateLimit : {
	days : 6
}
});

$('#reportrange span').html(
	moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - '
			+ moment().format('MMMM D, YYYY'));

$('#reportrange').daterangepicker(
	{
		format : 'DD/MM/YYYY',
		startDate : moment().subtract(29, 'days'),
		endDate : moment(),
		minDate : '01/01/2016',
		maxDate : '12/31/2016',
		dateLimit : {
			days : 60
		},
		showDropdowns : true,
		showWeekNumbers : true,
		timePicker : false,
		timePickerIncrement : 1,
		timePicker12Hour : true,
		ranges : {
			'Today' : [ moment(), moment() ],
			'Yesterday' : [ moment().subtract(1, 'days'),
					moment().subtract(1, 'days') ],
			'Last 7 Days' : [ moment().subtract(6, 'days'), moment() ],
			'Last 30 Days' : [ moment().subtract(29, 'days'), moment() ],
			'This Month' : [ moment().startOf('month'),
					moment().endOf('month') ],
			'Last Month' : [
					moment().subtract(1, 'month').startOf('month'),
					moment().subtract(1, 'month').endOf('month') ]
		},
		opens : 'left',
		drops : 'down',
		buttonClasses : [ 'btn', 'btn-sm' ],
		applyClass : 'btn-success',
		cancelClass : 'btn-default',
		separator : ' to ',
		locale : {
			applyLabel : 'Submit',
			cancelLabel : 'Cancel',
			fromLabel : 'From',
			toLabel : 'To',
			customRangeLabel : 'Custom',
			daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ],
			monthNames : [ 'January', 'February', 'March', 'April', 'May',
					'June', 'July', 'August', 'September', 'October',
					'November', 'December' ],
			firstDay : 1
		}
	},
	function(start, end, label) {
		console.log(start.toISOString(), end.toISOString(), label);
		$('#reportrange span').html(
				start.format('MMMM D, YYYY') + ' - '
						+ end.format('MMMM D, YYYY'));
	});

//Bootstrap-MaxLength
$('input#defaultconfig').maxlength()

$('input#thresholdconfig').maxlength({
threshold : 20
});

$('input#moreoptions').maxlength({
alwaysShow : true,
warningClass : "label label-success",
limitReachedClass : "label label-danger"
});

$('input#alloptions').maxlength({
alwaysShow : true,
warningClass : "label label-success",
limitReachedClass : "label label-danger",
separator : ' out of ',
preText : 'You typed ',
postText : ' chars available.',
validate : true
});

$('textarea#textarea').maxlength({
alwaysShow : true
});

$('input#placement').maxlength({
alwaysShow : true,
placement : 'top-left'
});

	</script>
</body>
</html>