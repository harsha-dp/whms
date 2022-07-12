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
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!-- App title -->
<title>WELEZO</title>

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
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet"
	type="text/css" />
<script src="resources/js/modernizr.min.js"></script>
<!-- Table -->

<!-- <script src="resources/table/table-jquery-1.11.3.min.js"></script> -->

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
<link href="resources/css/tableHeight.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript">
	function validate(from) {
	var error = document.getElementById("dateerror");
	var datepickerautoclose = form["datepickerautoclose"].value;
	error.innerHTML = "";

	if (datepickerautoclose = null || datepickerautoclose == "") // for text
	{
		error.innerHTML = "Please select cheque presented date";
		return false;
	}	  
</script>
<script type="text/javascript">
function validates(from1) {

	var error=document.getElementById("parkerror");
	var park=form1["park"].value;

    error.innerHTML="";
    
	if(park=="" || park=="null")
		{
          error.innerHTML="This field cannot be empty!";
          return false;
		}
	else if(park.length<3){
           error.innerHTML="Enter minimum 3 character";
           return false;
		}
	else if(park.length>200){
        error.innerHTML="Enter maximum 200 character";
        return false;
		}
		
    var error=document.getElementById("locationerror");
	var location=form1["location"].value;

    error.innerHTML="";

	if(location=="" || location=="null")
		{
          error.innerHTML="This field cannot be empty!";
          return false;
		}
	else if(location.length<3){
           error.innerHTML="Enter minimum 3 character";
           return false;
		}
	else if(location.length>500){
        error.innerHTML="Enter maximum 500 character";
        return false;
		}
		
		var error=document.getElementById("cityerror");
	var city=form1["city"].value;

    error.innerHTML="";

	if(city=="" || city=="null")
		{
          error.innerHTML="This field cannot be empty!";
          return false;
		}
	else if(city.length<3){
           error.innerHTML="Enter minimum 3 character";
           return false;
		}
	else if(city.length>50){
        error.innerHTML="Enter maximum 50 character";
        return false;
		}
		
			 var error=document.getElementById("addresserror");
	var address=form1["address"].value;

    error.innerHTML="";

	if(address=="" || address=="null")
		{
          error.innerHTML="This field cannot be empty!";
          return false;
		}
	else if(address.length<3){
           error.innerHTML="Enter minimum 3 character";
           return false;
		}
	else if(address.length>500){
        error.innerHTML="Enter maximum 500 character";
        return false;
		}
		
	
		}
		


</script>
<script type="text/javascript">
function validatess(from) {

	var error=document.getElementById("dateerror");
	var datepickerautoclose2=form2["datepickerautoclose2"].value;

    error.innerHTML="";
    
	if(datepickerautoclose2=="" || datepickerautoclose2=="null")
		{
          error.innerHTML="Select date!";
          return false;
		}
	
		
    var error=document.getElementById("executiveerror");
	var executive=form2["executive"].value;

    error.innerHTML="";

	if(executive=="" || executive=="null")
		{
          error.innerHTML="Enter Executive name!";
          return false;
		}
	else if(executive.length<3){
           error.innerHTML="Enter minimum 3 character";
           return false;
		}
	else if(executive.length>50){
        error.innerHTML="Enter maximum 50 character";
        return false;
		}
		
		 var error=document.getElementById("parknerror");
	var parkn=form2["parkn"].value;

    error.innerHTML="";

	if(parkn=="" || parkn=="null")
		{
          error.innerHTML="Select park name!";
          return false;
		}
	
	
		}

</script>
<script>

function onlyNumbersAndPlus(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // if IE
	else
		charCode = evt.which; // if firefox
	if (charCode == 43)
		return true;
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}

function onlyNumbers(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // if IE
	else
		charCode = evt.which; // if firefox
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}

function onlyAlphabets(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // for IE
	else
		charCode = evt.which; // for firefox
	if (charCode == 32) // for &lt;space&gt; symbol
		return true;
	if (charCode > 31 && charCode < 65) // for characters before 'A' in ASCII
		// Table
		return false;
	if (charCode > 90 && charCode < 97) // for characters between 'Z' and 'a' in
		// ASCII Table
		return false;
	if (charCode > 122) // for characters beyond 'z' in ASCII Table
		return false;
	return true;
}
var specialKeys = new Array();
specialKeys.push(8); // Backspace
function IsNumeric(e) {
	var keyCode = e.which ? e.which : e.keyCode
	var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}
function isNumber(evt) {
	var iKeyCode = (evt.which) ? evt.which : evt.keyCode
	if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
		return false;

	return true;
}
</script>
<SCRIPT language="javascript">
	function addRow(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var colCount = table.rows[0].cells.length;

		for (var i = 0; i < colCount; i++) {

			var newcell = row.insertCell(i);

			newcell.innerHTML = table.rows[0].cells[i].innerHTML;
			//alert(newcell.childNodes);
			switch (newcell.childNodes[0].type) {
			case "text":
				newcell.childNodes[0].value = "";
				break;
			case "checkbox":
				newcell.childNodes[0].checked = false;
				break;
			case "select-one":
				newcell.childNodes[0].selectedIndex = 0;
				break;
			}
		}
	}

	function deleteRow(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for (var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					if (rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}
</SCRIPT>
<style>
tfoot {
	display: table-header-group;
}
</style>
<style>
.table, td, th {
	border: 1px solid #ddd;
}

.scrollit {
	overflow: scroll;
	height: 407px;
}

.custom-modal-title {
	color: black;
}
</style>
<style>
#n {
	border-style: solid;
	border-width: thin;
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
						<li><a href="pharamacyDashBoard"> <i
								class="fa fa-home fa-2x"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"><font class="page-title">PHARMACY LEAD DETAILS</font></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<button type="button" class="button button5 " value=" Go Back !"
								onclick="history.back(-1)">
								<i class="fa fa-undo" aria-hidden="true"> </i>
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
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<div id="myDIV">
						<div class="panel panel-default">
							<div class="panel-heading">

							<%-- 	<div class="row">
									<form action="btlActivity1" class="form-inline">
										<div class="panel-heading">

											<div class="form-group">
												<label class="" for="email">From:</label> <input type="text"
													name="fromDate" value="${fromDate}"
													id="datepicker-autoclose" class="form-control input-sm"
													placeholder="dd/mm/yyyy" />
											</div>

											<div class="form-group">
												<label class="" for="email">To:</label> <input type="text"
													name="toDate" value="${toDate}" id="datepicker-autoclose1"
													class="form-control input-sm" placeholder="dd/mm/yyyy" />
											</div>

											<div class="form-group">
												<label class="" for="email">Park Name:</label> <select
													name="parkId" class="form-control input-sm">
													<option value="" label="Select Park Name"></option>
													<c:forEach items="${allParkDetails}" varStatus="counter"
														var="park">
														<option value="${park.parkId}">${park.ParkName}</option>
													</c:forEach>
												</select>
											</div>

											<div class="form-group">
												<button type="submit"
													class="btn btn-default btn-rounded btn-sm " value="Go">
													<i class="fa fa-search" aria-hidden="true"></i> Search
												</button>
											</div>
										</div>
									</form>
								</div> --%>
							</div>

							<div id="myDIV">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-12">
											<br />
											<div>
												<button class="btn btn-default waves-effect waves-light"
													data-toggle="modal" data-target="#full-width-modal">
													<i class="zmdi zmdi-plus"></i> Add Pharmacy Leads
												</button>
												<!-- <a href="#custom-modal1"
													class="btn btn-default btn-md waves-effect waves-light"
													data-animation="fadein" data-plugin="custommodal"
													data-overlaySpeed="200" data-overlayColor="#138D75"> <i
													class="zmdi zmdi-plus"></i> Add Park Details
												</a> -->
											</div>
											<br />
											<div class="scrollit">
												<table id="example" class="grid display nowrap"
													style="width: 100%">
													<thead>
														<tr style="background-color: menu">
															<td><b> ID</b></td>
															<td><b>CUSTOMER NAME</b></td>
															<td><b>CONTACT NUMBER</b></td>
															<td><b>AGE/GENDER</b></td>
															<!-- <td><b>B</b></td>
															<td><b>SUGAR</b></td> -->
															<td><b>PHARMACY NAME</b></td>
															<!--<td><b>CITY</b></td> -->
														</tr>
													</thead>
													<tfoot>
														<tr>
															<th> ID</th>
															<th>CUSTOMER NAME</th>
															<th>CONTACT NUMBER</th>
															<th>AGE/GENDER</th>
															<!-- 	<th>BP</th>
														
															<th>SUGAR</th> -->
															<th>PHARMACY NAME</th>
														</tr>
													</tfoot>
													<tbody>
														<c:forEach items="${pharmacyLeadList}" var="pharma"
															varStatus="counter">

															<tr>
																<td><c:out value="${counter.index + 1}" /></td>
																<td><c:out value="${pharma.leadName}" /></td>
																<td><c:out value="${pharma.contactNumber}" /></td>
																<td><c:out value="${pharma.age}" />/<c:out
																		value="${pharma.gender}" /></td>
																
																<td><c:out value="${pharma.pharmacyName}" /></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<!--  -->
				<div id="full-width-modal" class="modal fade" tabindex="-1"
					role="dialog" aria-labelledby="full-width-modalLabel"
					aria-hidden="true" style="display: none;">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="n" id="n">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">
										<b> X </b>
									</button>
									<h4 class="custom-modal-titlel-text text-center">
										<b>ADD NEW PHARMACY LEADS</b>
									</h4>
								</div>
								<div class="modal-body">
									<form action="savePharmacyLeads" name="form2"
										onsubmit="return validatess()" method="post"
										class="form-inline">
										<input type="hidden" name="createdBy" value="<%=id%>">


										<div class="form-group">
											<label class="" for="email">Date:</label> <input type="text"
												name="activityDate" id="datepickerautoclose2"
												class="form-control input-sm" />
										</div>
								
										<div class="form-group">
											<label class="" for="email">Pharmacy Name:</label>
											 <select name="biometricId" class="form-control input-sm" id="parkn">
												<option value="" label="select park name" disabled selected></option>
												<c:forEach items="${pharmacyNameList}" varStatus="counter"
													var="pharmacy">
													<option value="${pharmacy.pharmacyId}">${pharmacy.pharmacyName}</option>
												</c:forEach>
											</select>
											
											   <!--  <input list="suggestionList"  id="answerInput" class="form-control" required="required">
								<datalist id="suggestionList">
								
    											<option data-value="1">Lohith</option>
    											<option data-value="2">Kallay</option>
    											 
								</datalist>
                                         
                                         <input type="hidden" name="biometricId" id="answerInput-hidden" />
						
						<script type="text/javascript">
						document.querySelector('input[list]').addEventListener('input', function(e) {
						    var input = e.target,
						        list = input.getAttribute('list'),
						        options = document.querySelectorAll('#' + list + ' option'),
						        hiddenInput = document.getElementById(input.id + '-hidden'),
						        inputValue = input.value;

						    hiddenInput.value = inputValue;

						    for(var i = 0; i < options.length; i++) {
						        var option = options[i];

						        if(option.innerText === inputValue) {
						            hiddenInput.value = option.getAttribute('data-value');
						            break;
						        }
						    }
						});
						</script>
											 -->
																
											
											
											
											
										</div>

										<font id="dateerror" style="color: red"></font> <font
											id="executiveerror" style="color: red"></font> <font
											id="parknerror" style="color: red"></font> <br /> <br />
										<div class="table-responsive">
											<TABLE id="dataTable" width="100%" border="1">
												<TR>
													<TD><INPUT type="checkbox" name="chk" /></TD>

													<TD><label>Leads Name : </label> <input
														type="text" name="leadName"
														onkeypress="return onlyAlphabets(event,this);"
														minlength="3" maxlength="50" style="width: 185px;">
														<font id="errorPhone" style="color: red"></font> <span
														id="error" style="color: red; display: none">*
															Enter digits (0 - 9)</span>
													</TD>


													<TD><label>Contact Number :</label> <input
														type="text" name="contactNumber" maxlength="10"
														minlength="10"
														onkeypress="javascript:return isNumber(event)">
													</TD>
													<TD><label>Age : </label> <input type="text"
														name="age" onkeypress="javascript:return isNumber(event)"
														minlength="1" maxlength="3">
													</TD>


													<TD><label>Gender :</label> <select
														name="gender">
															<option value="Male">Male</option>
															<option value="Female">Female</option>
													</select>
													</TD>


													<!-- <TD>&nbsp;<label>BP :</label> <input type="text"
														name="bp">
													</TD>
													<TD>&nbsp;<label>Sugar:</label> <input type="text"
														name="sugar">
													</TD> -->

												</TR>

											</TABLE>
										</div>
										<p>&nbsp;</p>

										<button type="button" class="btn btn-gray btn-rounded btn-sm"
											onclick="addRow('dataTable')">
											<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add More
										</button>

										<button type="button"
											class="btn btn-warning btn-rounded  btn-sm"
											onclick="deleteRow('dataTable')">
											<i class="fa fa-minus" aria-hidden="true"></i>&nbsp;Select &
											Delete
										</button>
										<p>&nbsp;</p>
										<div class="col-md-offset-5">
											<button type="submit" onclick="return validatess()"
												class="btn btn-primary waves-effect waves-light"
												value="submit">Save</button>
											<button type="reset"
												class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
										</div>
									</form>
								</div>

							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
				</div>
				<!-- /.modal -->
			</div>

			<!-- Modal -->
		<%-- 	<div id="custom-modal1" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title title-center">ADD NEW PARK
					DETAILS</h4>
				<div class="custom-modal-text text-left">
					<div class="container">
						<div class="row">
							<form action="saveParkDetails" method="post" name="form1"
								onsubmit="return validates()">

								<div class="col-md-12">
									<div class="from-group col-md-6">
										<label>Park Name : <span style="color: red">*</span></label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"
												aria-hidden="true"></i></span> <input type="text"
												class="form-control input-md" name="parkName" id="park">
										</div>
										<font id="parkerror" style="color: red"></font>
									</div>
									<div class="from-group col-md-6">
										<label>Park Location : <span style="color: red">*</span></label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-map-marker" aria-hidden="true"></i></span> <input
												type="text" class="form-control input-md" name="location"
												id="location">
										</div>
										<font id="locationerror" style="color: red"></font>
									</div>
								</div>
								<p>&nbsp;</p>
								<div class="col-md-12">
									<div class="from-group col-md-6">
										<label>City : <span style="color: red">*</span></label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-map-pin" aria-hidden="true"></i></span> <input
												type="text" class="form-control input-md" name="city"
												id="city">
										</div>
										<font id="cityerror" style="color: red"></font>
									</div>
									<div class="from-group col-md-6">
										<label>PinCode :</label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-map-pin" aria-hidden="true"></i></span> <input
												type="text" class="form-control input-md" name="pincode">
										</div>
									</div>
								</div>
								<p>&nbsp;</p>
								<div class="col-md-12">
									<div class="from-group col-md-12">
										<label>Park Address <span style="color: red">*</span></label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-address-book" aria-hidden="true"></i></span> <input
												type="text" class="form-control input-md" name="address"
												id="address">
										</div>
										<font id="addresserror" style="color: red"></font>
									</div>
								</div>
								<p>&nbsp;</p>
								<div class="col-md-offset-5">
									<button type="submit" onclick="return validates()"
										class="btn btn-primary waves-effect waves-light"
										value="submit">SUBMIT</button>
									<button type="reset"
										class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div> --%>
		</div>
		<!--  -->
	</div>
	<!-- content -->
	<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	</div>
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->
	</div>
	<!-- END wrapper -->

	<script>
            var resizefunc = [];
        </script>
	<!-- <script>
    $(function () {
      $('#example').excelTableFilter();
    });
  </script> -->

	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>

	<!-- Datatables-->
	<!-- 	<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/jszip.min.js"></script>
		
        <script src="resources/plugins/datatables/pdfmake.min.js"></script>
		
        <script src="resources/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.scroller.min.js"></script> -->

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
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

	<script>
            jQuery(document).ready(function() {

                //advance multiselect start
                $('#my_multi_select3').multiSelect({
                    selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    afterInit: function (ms) {
                        var that = this,
                            $selectableSearch = that.$selectableUl.prev(),
                            $selectionSearch = that.$selectionUl.prev(),
                            selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                            selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                        that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                            .on('keydown', function (e) {
                                if (e.which === 40) {
                                    that.$selectableUl.focus();
                                    return false;
                                }
                            });

                        that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                            .on('keydown', function (e) {
                                if (e.which == 40) {
                                    that.$selectionUl.focus();
                                    return false;
                                }
                            });
                    },
                    afterSelect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    },
                    afterDeselect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    }
                });

                // Select2
                $(".select2").select2();

                $(".select2-limiting").select2({
				  maximumSelectionLength: 2
				});

            });

            //Bootstrap-TouchSpin
            $(".vertical-spin").TouchSpin({
                verticalbuttons: true,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                verticalupclass: 'ti-plus',
                verticaldownclass: 'ti-minus'
            });
            var vspinTrue = $(".vertical-spin").TouchSpin({
                verticalbuttons: true
            });
            if (vspinTrue) {
                $('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
            }

            $("input[name='demo1']").TouchSpin({
                min: 0,
                max: 100,
                step: 0.1,
                decimals: 2,
                boostat: 5,
                maxboostedstep: 10,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                postfix: '%'
            });
            $("input[name='demo2']").TouchSpin({
                min: -1000000000,
                max: 1000000000,
                stepinterval: 50,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                maxboostedstep: 10000000,
                prefix: '$'
            });
            $("input[name='demo3']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_21']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_22']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            $("input[name='demo5']").TouchSpin({
                prefix: "pre",
                postfix: "post",
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo0']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            // Time Picker
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
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepicker-autoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker-autoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "yyyy-mm-dd",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
            	format: "dd/mm/yyyy",
                toggleActive: true,
                autoclose:true,
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'dd/mm/yy h:mm A',
                timePickerIncrement: 60,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'DD/MM/YYYY',
                minDate: '06/01/2016',
                maxDate: '06/30/2016',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary',
                dateLimit: {
                    days: 6
                }
            });

            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                format: 'DD/MM/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2016',
                maxDate: '12/31/2016',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-success',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            });

            //Bootstrap-MaxLength
            $('input#defaultconfig').maxlength()

            $('input#thresholdconfig').maxlength({
                threshold: 20
            });

            $('input#moreoptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger"
            });

            $('input#alloptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger",
                separator: ' out of ',
                preText: 'You typed ',
                postText: ' chars available.',
                validate: true
            });

            $('textarea#textarea').maxlength({
                alwaysShow: true
            });

            $('input#placement').maxlength({
                alwaysShow: true,
                placement: 'top-left'
            });
        </script>



</body>
</html>