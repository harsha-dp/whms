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
<script src="resources/table/table-jquery-1.11.3.min.js"></script>
<link href="resources/table/table-jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<script src="resources/table/table-jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/table/table-buttons.dataTables.min.css" />
<script src="resources/table/table-dataTables.buttons.min.js"></script>
<script src="resources/table/table-buttons.colVis.min.js"></script>
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>


<script src="resources/js/modernizr.min.js"></script>

<!--  // interger validation script -->

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>

<script>
    /*  WRITE THE VALIDATION SCRIPT IN THE HEAD TAG. */
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>

<!-- character validation script -->

<script type="text/javascript">
    function onlyNumbersAndPlus(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode == 43)
            return true;
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyNumbers(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyAlphabets(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;  //for IE
        else
            charCode = evt.which;  //for firefox
        if (charCode == 32) //for &lt;space&gt; symbol
            return true;
        if (charCode > 31 && charCode < 65) //for characters before 'A' in ASCII Table
            return false;
        if (charCode > 90 && charCode < 97) //for characters between 'Z' and 'a' in ASCII Table
            return false;
        if (charCode > 122) //for characters beyond 'z' in ASCII Table
            return false;
        return true;
    }
</script>
<style>
.modal-header, h4, .close {
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #f9f9f9;
}

#n {
	border-style: solid;
	border-width: thin;
}
.modal-header{
    background-color: aliceblue;
}
</style>
<script>
/**
 * 
 */

function validate1(from) {

	var error = document.getElementById("errorcontactName");
	var contactName = interaction["contactName"].value;

	error.innerHTML = "";

	if (contactName == null || contactName == "") {
		error.innerHTML = "Enter corporate contact person name";
		return false;
	}
	
	else if (contactName.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	else if (contactName.length > 100) {
		error.innerHTML = "Name should be in between 3 to 100 character";
		return false;
	}/* end */
	
	/* start */
	var error = document.getElementById("errorprimaryContact");
	var primaryContact = interaction["primaryContact"].value;

	error.innerHTML = "";

	if (primaryContact == null || primaryContact == "") {
		error.innerHTML = "Enter contact number";
		return false;
	}

	else if (isNaN(primaryContact)) {
		error.innerHTML = "Mobile Number Can Not be alphabate";
		return false;
	}
	
	else if (primaryContact.length < 10) {
		error.innerHTML = "Number should be 10 digits !!";
		return false;
	}
	else if (primaryContact.length > 11) {
		error.innerHTML = "Number should be 10 to 11 digits";
		return false;
	}/* end */
	
	
	var error = document.getElementById("erroradd_fields_placeholder");
	var add_fields_placeholder = interaction["add_fields_placeholder"].value;

	error.innerHTML = "";

	if (add_fields_placeholder == null || add_fields_placeholder == "") {
		error.innerHTML = "Please select mode of interaction ";
		return false;
	}
	
	var error = document.getElementById("errorpurposes");
	var purposes = interaction["purposes"].value;

	error.innerHTML = "";

	if (purposes == null || purposes == "") {
		error.innerHTML = "Please select purpose ";
		return false;
	}
	
	

}
</script>
<script>
/**
 * 
 */

function validate(from) {

	var error = document.getElementById("channellerror");
	var channele = form["channele"].value;

	error.innerHTML = "";

	if (channele == null || channele == "") {
		error.innerHTML = "Please select type of channel ";
		return false;
	}

	/* start */
	var error = document.getElementById("fnameerror");
	var cname = form["cname"].value;

	error.innerHTML = "";

	if (cname == null || cname == "") {
		error.innerHTML = "Enter corporate name";
		return false;
	}

	
	if (cname.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	if (cname.length > 300) {
		error.innerHTML = "Name should be in between 3 to 300 character";
		return false;
	}/* end */

	
	
	var error = document.getElementById("strengthherror");
	var strengthh = form["strengthh"].value;

	error.innerHTML = "";

	if (strengthh == null || strengthh == "") {
		error.innerHTML = "Please enter total strength";
		return false;
	}

	if (strengthh.length < 1) {
		error.innerHTML = "Enter minimum 1 digit";
		return false;
	}
	if (strengthh.length > 7) {
		error.innerHTML = "you entered more then 5 digits please enter less then 7 didgits";
		return false;
	}

	var error = document.getElementById("textareaerror");
	var textarea = form["textarea"].value;

	error.innerHTML = "";

	if (textarea == null || textarea == "") {
		error.innerHTML = "Enter corporate address";
		return false;
	}

	if (textarea.length < 3) {
		error.innerHTML = "Address should be minimum 3 character";
		return false;
	}
	if (textarea.length > 400) {
		error.innerHTML = "Address should be in between 3 to 400 character";
		return false;
	}/* end */

	var error = document.getElementById("cityyerror");
	var cityy = form["cityy"].value;

	error.innerHTML = "";

	if (cityy == null || cityy == "") {
		error.innerHTML = "Enter corporate city name";
		return false;
	}

	if (cityy.length < 3) {
		error.innerHTML = "city should be minimum 3 character";
		return false;
	}
	if (cityy.length > 50) {
		error.innerHTML = "city should be in between 3 to 50 character";
		return false;
	}/* end */

	

	
	var error = document.getElementById("typeeerror");
	var typee = form["typee"].value;

	error.innerHTML = "";

	if (typee == null || typee == "") {
		error.innerHTML = "Please select entity type";
		return false;
	}

	var error = document.getElementById("exceeeerror");
	var exceee = form["exceee"].value;

	error.innerHTML = "";

	if (exceee == null || exceee == "") {
		error.innerHTML = "Please select executive name";
		return false;
	}

}
</script>
<script type="text/javascript">

function validate2(from) {

	
	/* start */
	var error = document.getElementById("errorcnames");
	var cnames = form2["cnames"].value;

	error.innerHTML = "";

	if (cnames == null || cnames == "") {
		error.innerHTML = "Enter contact person name";
		return false;
	}
	if (!isNaN("cnames")) {
		error.innerHTML = "name cannot be number!!";
		return false;
	}

	if (cnames.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	if (cnames.length > 300) {
		error.innerHTML = "Name should be in between 3 to 300 character";
		return false;
	}/* end */
	
	
	var error = document.getElementById("errormnumber");
	var mnumber = form2["mnumber"].value;

	error.innerHTML = "";

	if (mnumber == null || mnumber == "") {
		error.innerHTML = "Please enter contact number";
		return false;
	}

	if (isNaN(mnumber)) {
		error.innerHTML = "Mobile number cannot be alphabet!!";
		return false;
	}
	if (mnumber.length < 10) {
		error.innerHTML = "Invalid mobile number";
		return false;
	}
	if (mnumber.length > 11) {
		error.innerHTML = "Please enter valid number!!";
		return false;
	}


	var error = document.getElementById("errordatepickerautoclose1");
	var datepickerautoclose1 = form2["datepickerautoclose1"].value;

	error.innerHTML = "";

	if (datepickerautoclose1 == null || datepickerautoclose1 == "") {
		error.innerHTML = "Please select date of followup!! ";
		return false;
	}

	var error = document.getElementById("errortimes");
	var times = form2["times"].value;

	error.innerHTML = "";

	if (times == null || times == "") {
		error.innerHTML = "Please select time of appointment!! ";
		return false;
	}
	
	var error = document.getElementById("errorexe");
	var exe = form2["exe"].value;

	error.innerHTML = "";

	if (exe == null || exe == "") {
		error.innerHTML = "Please select executive name!! ";
		return false;
	}
	
	var error = document.getElementById("errorstatus");
	var status = form2["status"].value;

	error.innerHTML = "";

	if (status == null || status == "") {
		error.innerHTML = "Please select executive name!! ";
		return false;
	}
	
	
	

}
</script>
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i class="zmdi zmdi-layers"></i></a> -->
				 <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /> </a>
			</div>

			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Page title -->
					<ul class="nav navbar-nav navbar-left">
						<li><a href="corporateDashBoard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"><font face="verdana" class="page-title">${corporateById.corporateName}
						</font></li>
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

		<%
   String userName = request.getParameter("userID");
	String userId =	request.getParameter("id");
   if(userName!=null){ 
         session.setAttribute("approvalBy",userName);
   }
%>
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
<br>
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<%--  <div class="panel-heading">
                                       <h4>Corporate Name : <strong>${corporateById.corporateName} </strong></h4>
                                    </div> --%>
								<div class="panel-body">
									<div class="col-md-12">
										<div class="col-md-4">
											<div class="clearfix">
												<div class="pull-left">
													<p class="m-t-10">
														<strong>Total Strength : </strong>
														${corporateById.headCount}
													</p>
													<p class="m-t-10">
														<strong>Address : </strong> ${corporateById.address}
													</p>
													<p class="m-t-10">
														<strong>Phone Number : </strong>
														${corporateById.contactNo}
													</p>
												</div>
											</div>
										</div>

										<div class="col-md-8">
											<div class="pull-right">
												<button class="btn btn-info btn-xs"
													data-toggle="modal" data-target=".bs-corporate-modal-lg"><i class="fa fa-edit"></i> EDIT CORPORATE DETAILS</button>
				<button class="btn btn-info btn-xs"
													data-toggle="modal" data-target=".bs-example-modal-lg">
													<i class="zmdi zmdi-plus"></i> ADD CORPORATE BRANCH</button>
													
												<!-- <button class="btn btn-default" data-toggle="modal"
													data-target=".bs-examples-modal-lg">
													<i class="zmdi zmdi-plus"></i> ADD INTERACTION
												</button> -->
												<%--  <a href="corporateContactList?corporateId=<c:out value='${corporateById.corporateId}'/>" class="btn btn-default btn-md waves-effect waves-light"
									data-overlaySpeed="200" data-overlayColor="#BFBFBF"> <i class="zmdi zmdi-plus"></i> Contact List</a> --%>

												<%-- <a
													href="corporateAppointment?corporateID=<c:out value='${corporateById.corporateId}'/>&corporateName=<c:out value='${corporateById.corporateName}'/>"
													class="btn btn-default btn-md waves-effect waves-light"
													data-overlaySpeed="200" data-overlayColor="#BFBFBF"> <i
													class="zmdi zmdi-plus"></i>ADD CONTACT
												</a> --%>
												<!-- <button class="btn btn-default" data-toggle="modal" data-target=".bs-examples1-modal-lg">
                                          <i class="zmdi zmdi-plus"></i> ADD CONTACT</button> -->
												
											</div>


										</div>
									</div>
									<br>
									<br />
									<p>&nbsp;</p>
									
									<!-- end row -->


									<!--  -->
									<div class="col-md-12">
										<div class="btn-pref btn-group btn-group-justified btn-group-lg"
											role="group" aria-label="...">
											
											<div class="btn-group" role="group">
												<button type="button" id="favorites" class="btn btn-primary"
													href="#tab2" data-toggle="tab">
													<span class="fa fa-cubes" aria-hidden="true"></span>
													<div class="hidden-xs">CONTACT LIST</div>
												</button>
											</div>
											<div class="btn-group" role="group">
												<button type="button" id="following"  class="btn btn-default"
													href="#tab11" data-toggle="tab">
													<span class="fa fa-joomla" aria-hidden="true"></span>
													<div class="hidden-xs">INTERACTION LIST</div>
												</button>
											</div>
											<!-- <div class="btn-group" role="group">
												<button type="button" id="stars" class="btn btn-primary"
													href="#tab1" data-toggle="tab">
													<span class="fa fa-building-o" aria-hidden="true"></span>
													<div class="hidden-xs">BRANCH LIST</div>
												</button>
											</div> -->
											
											<div class="btn-group" role="group">
												<button type="button" id="following" class="btn btn-default"
													href="#tab3" data-toggle="tab">
													<span class="fa fa-users" aria-hidden="true"></span>
													<div class="hidden-xs">APPOINTMENTS</div>
												</button>
											</div>
											<!-- <div class="btn-group" role="group">
												<button type="button" id="following" class="btn btn-default"
													href="#tab4" data-toggle="tab">
													<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
													<div class="hidden-xs">PRE-EMP CHECK UP</div>
												</button>
											</div>
											<div class="btn-group" role="group">
												<button type="button" id="following" class="btn btn-default"
													href="#tab5" data-toggle="tab">
													<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
													<div class="hidden-xs">ANNUAL CHECK UP</div>
												</button>
											</div> -->
										</div>

										<div class="tab-content">
										<div class="tab-pane fade in" id="tab11">

												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
														<!-- <button class="btn btn-default" data-toggle="modal"
													data-target=".bs-examples-modal-lg">
													<i class="zmdi zmdi-plus"></i> ADD INTERACTION
												</button> -->
												<p>&nbsp;</p>
															<table class="table table-bordered">
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>Contact NAME</b></th>
																		<th><b>Interaction Mode</b></th>
																		<th><b>Purpose</b></th>
																		<th><b>InterActed By</b></th>
																		<th><b>Date</b></th>
																		<th><b>Status</b></th>
																		<th><b>Remarks</b></th>
																		<!-- <th><b>Action</b></th> -->
																		
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${interActionList}" var="interAc" varStatus="counter">
																		<tr style="display: table-row;">
																			<td><c:out value="${counter.index + 1}" /></td>
																			<td><c:out value="${interAc.contactName}" /></td>
																			<td><c:out value="${interAc.interactionMode}" /></td>
																			<td><c:out value="${interAc.purpose}" /></td>
																			<td><c:out value="${interAc.interActedBy}" /></td>
																			<td><c:out	value="${interAc.interactionDate}" /></td>
																			<td><c:out value="${interAc.status}" /></td>
																			<td><c:out value="${interAc.remarks}" /></td>
																			<!-- <td><u>EDIT</u></td> -->
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
													</div>
												</div>
											</div>
											</div>
											<%-- <div class="tab-pane fade in active" id="tab1">

												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
														<button class="btn btn-default waves-effect waves-light"
													data-toggle="modal" data-target=".bs-example-modal-lg">
													<i class="zmdi zmdi-plus"></i> ADD CORPORATE BRANCH</button>
														<p>&nbsp;</p>
															<table class="table table-bordered">
															
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>CORPORATE NAME</b></th>
																		<th><b>TOTAL STRENGTH</b></th>
																		<th><b>CITY</b></th>
																		<th><b>ADDRESS</b></th>
																		<th><b>ACTION</b></th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${corporateBranch}" var="corporate"
																		varStatus="counter">
																		<tr style="display: table-row;">
																			<td><c:out value="${counter.index + 1}" /></td>
																			<td><a
																				href="viewcorporatebyId?corporateId=<c:out value='${corporate.corporateId}'/>"><c:out
																						value="${corporate.corporateName}" /></a></td>
																			<td><c:out value="${corporate.totalStrength}" /></td>
																			<td><c:out value="${corporate.city}" /></td>
																			<td><c:out
																					value="${corporate.residenceAddresss}" /></td>
																			<td><a
																				href="corporateAppointment?corporateID=<c:out value='${corporate.corporateId}'/>&corporateName=<c:out value='${corporate.corporateName}'/>">
																					<!-- <i class="fa fa-pencil-square-o" aria-hidden="true"></i> -->+
																					New Contact
																			</a></td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div> --%>
											<div class="tab-pane fade in active" id="tab2">
												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
														<button class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-examples1-modal-lg">
                                          <i class="zmdi zmdi-plus"></i>NEW CONTACT APPOINTMENT</button>
                                          <button class="btn btn-info btn-xs" data-toggle="modal"
													data-target=".bs-examples-modal-lg">
													<i class="zmdi zmdi-plus"></i>NEW CONTACT INTERACTION
												</button>
                                          <p>&nbsp;</p>
															<table class="table table-bordered">
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>CONTACT NAME</b></th>
																		<th><b>DESIGNATION</b></th>
																		<th><b>NUMBER</b></th>
																		<th><b>E-MAIL</b></th>
																		<th><b>CORPORATE NAME</b></th>
																		<th><b>ACTION</b></th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${conatctList}" var="contactList"
																		varStatus="counter">
																		<tr style="display: table-row;">
																			<td><c:out value="${counter.index + 1}" /></a></td>
																			<td><c:out value="${contactList.contactName}" /></td>
																			<td><c:out value="${contactList.designation}" /></td>
																			<td><c:out value="${contactList.contactNo}" /></td>
																			<td><c:out value="${contactList.email}" /></td>
																			<td><c:out value="${contactList.corporateName}" /></td>
																			<td>
																			<a href="corporateAppointmentEx?contactId=<c:out value='${contactList.contactId}'/>&corporateName=<c:out value='${contactList.corporateName}'/>">
																					<i class="far fa-calendar-alt" ><u>Add Meeting</u></i></a>
																					<a href="addInteractionForExistingContact?contactId=<c:out value='${contactList.contactId}'/>">
																					<i class="far fa-calendar-alt" ><u>Add Interaction</u></i></a>
																			</td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade in" id="tab3">
												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
														<!-- <button class="btn btn-default" data-toggle="modal" data-target=".bs-examples1-modal-lg">
                                          <i class="zmdi zmdi-plus"></i> ADD APPOINTMENT</button> -->
                                          <p>&nbsp;</p>
															<table class="table table-bordered">
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>CONTACT NAME</b></th>
																		<th><b>NUBMER</b></th>
																		<th><b>DESIGNATION</b></th>
																		<th><b>DOA & TIME</b></th>
																		<th><b>E-MAIL</b></th>
																		<th><b>EXECUTIVE</b></th>
																		<th><b>STATUS</b></th>
																		<th><b>ACTION</b></th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${apptList}" var="apptList"
																		varStatus="counter">
																		<tr style="display: table-row;">
																			<td><c:out value="${counter.index + 1}" /></td>
																			<td><c:out value="${apptList.contactName}" /></td>
																			<td><c:out value="${apptList.contactNo}" /></td>
																			<td><c:out value="${apptList.designation}" /></td>
																			<td><c:out value="${apptList.doa}" /></td>
																			<td><c:out value="${apptList.email}" /></td>
																			<td><c:out value="${apptList.executive}" /></td>
																			<td><c:out value="${apptList.status}" /></td>
																			<%-- <td><a
																				href="corporateAppointmentEx?contactId=<c:out value='${apptList.contactId}'/>&corporateName=<c:out value='${apptList.corporateName}'/>">
																					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																			</a> <a
																				href="editcorporateAppointment?corporateId=<c:out value='${apptList.appointmentId}'/>">Update-Appt</a>
																			</td> --%>
																			<td>
																					
																					<c:if test="${apptList.status!='Closed'}">
																						<a href="corporateAppointmentEx?contactId=<c:out value='${apptList.contactId}'/>&corporateName=<c:out value='${apptList.corporateName}'/>">
																							<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																					</a> 
																						<a	href="editcorporateAppointment?corporateId=<c:out value='${apptList.appointmentId}'/>">Update-Appt</a>
																						
																					</c:if>
																					<c:if test="${apptList.status=='Closed'}">
																						<a	href="productGeneration?corporateId=<c:out value="${corporateById.corporateId}"/>"> Create New Product</a>&nbsp;<span>|</span>
																						<a	href="viewcorpProdbyId?corporateId=<c:out value="${corporateById.corporateId}"/>"> View Products</a>
																						
																					</c:if>

																			</td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>

											<div class="tab-pane fade in" id="tab4">
												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
															<table class="table table-bordered">
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>EMPLOYEE NAME</b></th>
																		<th><b>NUMBER</b></th>
																		<th><b>AGE</b></th>
																		<th><b>GENDER</b></th>
																		<th><b>DOA</b></th>
																		<th><b>STATUS</b></th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${preEmpList}" var="preList"
																		varStatus="counter">
																		<tr style="display: table-row;">
																			<td><c:out value="${counter.index + 1}" /></td>
																			<td><c:out value="${preList.empName}" /></td>
																			<td><c:out value="${preList.contactNo}" /></td>
																			<td><c:out value="${preList.age}" /></td>
																			<td><c:out value="${preList.gender}" /></td>
																			<td><c:out value="${preList.doa}" /></td>
																			<td><c:out value="${preList.status}" /></td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>

											<div class="tab-pane fade in" id="tab5">
												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
															<table class="table table-bordered">
																<thead style="background-color: menu;">
																	<tr>
																		<th><b>#</b></th>
																		<th><b>EMPLOYEE NAME</b></th>
																		<th><b>NUMBER</b></th>
																		<th><b>AGE</b></th>
																		<th><b>GENDER</b></th>
																		<th><b>DOA</b></th>
																		<th><b>STATUS</b></th>
																	</tr>
																</thead>
																<tbody>
																	<%--  <c:forEach items="${corporateBranch}" var="corporate">
                    	  <tr style="display: table-row;">
                        	<td><c:out value="${corporate.corporateId}"/></a></td>
                        	 <td><c:out value="${corporate.corporateName}"/></td>
                        	 <td><c:out value="${corporate.totalStrength}"/></td>
                        	 <td><c:out value="${corporate.city}"/></td>
                        	 <td><c:out value="${corporate.residenceAddresss}"/></td> 
                        	<td><a href="corporateAppointment?corporateID=<c:out value='${corporate.corporateId}'/>&corporateName=<c:out value='${corporate.corporateName}'/>">
                       <!-- <i class="fa fa-pencil-square-o" aria-hidden="true"></i> -->+ New Contact</a></td></tr>
                        	</c:forEach> --%>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>

										</div>
										<!--  -->

										<!--   <div class="hidden-print">
                                            <div class="pull-right">
                                                <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                            </div>
                                        </div> -->
									</div>
								</div>

							</div>

						</div>
						<!-- end row -->


					</div>
				</div>
				<!-- content -->

				<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
			</div>
			<!--  Modal content for the above example -->
			<div class="modal fade bs-example-modal-lg" tabindex="-1"
				role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="n" id="n">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title text-center" id="myLargeModalLabel">NEW CORPORATE
									DETAILS</h4>
							</div>
							<div class="modal-body">
								<!--  -->
								<div class="custom-modal-text text-left">
									<!-- =============   form:form start from here ==============    -->
									<form:form action="saveCorporate" name="form"
										onsubmit="return validate()" modelAttribute="corporateDTO">
										<form:hidden path="parentId"
											value="${corporateById.corporateId}" />
										<form:hidden path="typeCorporate" value="branch" />
										<form:hidden path="createdBy" value="<%=id %>"
											class="form-control" />
										<div class="row">
										<h5 style="color:blue;">Corporate Deatils</h5>
										<hr>
											<div class="col-md-12">
												<div class="col-md-4">
													<div class="form-group">
														<label for="Sdate"><span style="color:red">*</span> Channel </label>
														<form:select path="channelId" class="form-control"
															id="channele" placeholder="Channel">
															<form:option value="" label="Select channel"></form:option>
															<form:options items="${allChannels}"
																itemValue="channelId" itemLabel="channelsName" />
														</form:select>
													</div>
													<font style="color:red" id="channellerror"></font>
												</div>
												<div class="col-md-8">
													<div class="form-group">
														<form:label path="corporateName" for="name"><span style="color:red">*</span> Name
														</form:label>
														<form:input type="text" id="cname"
															path="corporateName" class="form-control"
															placeholder="Enter corporate name" />
													</div>
													<font style="color:red" id="fnameerror"></font>
												</div>
											</div>
											<div class="col-md-12">
												<div class="col-md-4">
													<div class="form-group">
														<form:label path="totalStrength" for="name"> <span style="color:red">*</span> Total Strengtht 
														</form:label>
														<form:input type="text" path="totalStrength"
															class="form-control" id="strengthh"
															placeholder="Enter total strength" />
													</div>
													<font style="color:red" id="strengthherror"></font>
												</div>
												
												<div class="col-md-8">
													<div class="form-group">
														<label for="name"><span style="color:red">*</span> Address</label>
														<form:textarea path="residenceAddresss" id="textarea"
															class="form-control" maxlength="500" rows="1" />
													</div>
													<font style="color:red" id="textareaerror"></font>
												</div>
											</div>
											<div class="col-md-12">
												<div class="col-md-4">
													<div class="form-group">
														<label for="priority"><span style="color:red">*</span> City</label>
														<form:input type="text" path="city" class="form-control"
															onkeypress="return onlyAlphabets(event,this);" id="cityy"
															placeholder="" />
													</div>
													<font style="color:red" id="cityyerror"></font>
												</div>
												
												<div class="col-md-4">
													<div class="form-group">
														<label for="priority">Pincode</label>
														<form:input type="text" minlength="6" maxlength="8"
															onkeypress="return IsNumeric(event);" path="pincode"
															class="form-control" id="priority"
															placeholder="enter pincode" />
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<label for="priority">Landline Number</label>
														<form:input type="text"
															onkeypress="return IsNumeric(event);" minlength="10"
															maxlength="12" path="landline" class="form-control"
															placeholder="enter landline no" />
														<span id="error" style="color: block; display: none">
														</span>
													</div>
												</div>

											</div>


											<div class="col-md-12">
												<div class="col-md-6">
													<div class="form-group">
														<label for="priority">Landmark</label>
														<form:input type="text" path="landmark"
															class="form-control" placeholder="enter land mark" />
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="priority">Email</label>
														<form:input type="email" path="email" class="form-control"
															placeholder="email@mail.com" />
													</div>
												</div>
											</div>
											<div class="col-md-12">
											<div class="col-md-6">
													<div class="form-group">
														<label for="priority"><span style="color:red">*</span> Entity Type </label>
														<form:select path="entityType" title="Select Entity Type"
															class="form-control" id="typee">
															<form:option value="" label="select Entity Type" />
															<c:forEach var="constant" varStatus="status"
																items="${welezoConstant}">
																<c:if test="${constant.constType=='corp_entity'}">
																	<form:option path="entityType" value="${constant.id}">${constant.CDisplay}</form:option>
																</c:if>
															</c:forEach>
														</form:select>
													</div>
													<font style="color: red" id="typeeerror"></font>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<form:label path="executive"><span style="color:red">*</span> Executive 
														</form:label>
														<form:select path="executive"
															title="----Select Executive----" class="form-control"
															id="exceee">
															<form:option value="" label="select executive" />
															<c:forEach var="employee" varStatus="status"
																items="${executive}">
																<form:option path="executive" value="${employee.empId}">${employee.empName}</form:option>
															</c:forEach>
														</form:select>
														<font id="exceeeerror" style="color: red;"></font>
													</div>
												</div>
											</div>
												<h5 style="color:blue;">Corporate Contact  Deatils</h5>
											<hr>
											<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label for="priority">  Contact Person Name</label>
												<form:input type="text" path="name" class="form-control"  placeholder="Enter name of the person" />
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
									<form:label path="designation">Designation</form:label>
										<form:input type="text" path="designation" class="form-control" placeholder="" />
												</div>
											</div>
											</div>
											<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
									<form:label path="status">Contact Person Email</form:label>
										<form:input type="text" path="status" class="form-control" placeholder="" />
												</div>
											</div>
											 <div class="col-md-6">
											<div class="form-group">
											<form:label path="meetingStatus" for="name"> Contact Person Number</form:label>
										<form:input path="meetingStatus" 	class="form-control"  />
										</div>
								         </div>
										</div>
											<div class="col-md-12">
												
												<%-- <div class="col-md-6">
													<div class="form-group">
														<form:label path="remarks" for="name">Remark:</form:label>
														<form:input path="remarks" class="form-control" />
													</div>
												</div> --%>
											</div>
											<br />
											<br>
											<div class="col-md-offset-5">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
										</div>
									</form:form>
								</div>
								<!--  -->
							</div>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			
			           <!-- add new contact and new appointment  -->
           
           
<div class="modal fade bs-examples1-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
       <div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="n" id="n">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h3>ADD NEW APPOINTMENT </h3>
</div>
<form:form action="saveCorporateAppointment" name="form2" onsubmit="return validate2()" modelAttribute="corporateDTO" >
                                                
                                                <form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
                                                <form:hidden path="corporateId" value="${corporateById.corporateId}"/>
                                                <form:hidden path="contactId" value="${contactById.contactId}"/>
<div class="modal-body">
<div class="row">
 <div class="col-lg-12">
                                                        <div class="col-lg-6">
                                                               <div class="form-group">
                                                                       <label for="name"><span style="color:red">*</span> Contact Name </label>
                                                             <form:input type="text" path="name" class="form-control" id="cnames" onkeypress="return onlyAlphabets(event,this);" value="${contactById.name}"
                                                                                  placeholder="Enter contact preson name"  />
                                                                
                                                              </div>
                                                              <font style="color:red" id="errorcnames"></font>
                                                              </div>
                                                           
                                                           <div class="col-md-6">
                                                     <div class="form-group">
                                                           <label  for="name">Designation </label>
                                                                           <form:input type="text" path="designation" class="form-control" value="${contactById.designation}"
                                                                                 placeholder="enter Designation" />

                                                     </div>
                                                     </div>
                                                     </div>
                                                     
                                                       <div class="col-lg-12">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                     <label  for="priority"><span style="color:red">*</span> Mobile Number</label>
                                                                     <form:input type="text" value="${contactById.primaryMob}" id="mnumber"
                                                                          path="primaryMob" class="form-control"  placeholder=""
                                                                            />
                                                                </div>
                                                                <font style="color:red" id="errormnumber"></font>
                                                           </div>
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                                     <label  for="priority">Email</label>
                                                                     <form:input type="text"
                                                                            path="email" class="form-control" value="${contactById.email}"  placeholder="email@mail.com" />
                                                                </div>
                                                           </div>
                                                           </div>
                                                           
                                                            <div class="col-lg-12">
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                                     <label for="priority"><span style="color:red">*</span> Date of Follow Up </label>
                                                                     <div class="input-group">
                                                                     <form:input type="text" path="appointmentDate" class="form-control"
                                                                          placeholder="dd/mm/yyyy" id="datepickerautoclose1"
                                                                         />
                                                                           <span class="input-group-addon bg-primary b-0 text-white"><i
                                                     class="fa fa-calendar"></i></span>
                                                                           </div>
                                                                            <font style="color:red" id="errordatepickerautoclose1"></font>
                                                                </div>
                                                     </div>
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="priority"><span style="color:red">*</span> Time of Appointment </label>
                                           <form:select path="timeAppointment" title="----TOA----"  class="form-control"  id="times">
                                                <form:option value="" label="select Meeting Time slot"></form:option>
                                                <form:option value="9:30 AM">  09:30 AM </form:option>
                                                <form:option value="10:30 AM"> 10:30 AM </form:option>
                                                <form:option value="11:30 AM"> 11:30 AM </form:option>
                                                <form:option value="12:30 PM"> 12:30 PM </form:option>
                                                <form:option value="1:30 PM"> 01:30 PM </form:option>
                                                <form:option value="2:30 PM"> 02:30 PM </form:option>
                                                <form:option value="3:30 PM"> 03:30 PM </form:option>
                                                <form:option value="4:30 PM"> 04:30 PM </form:option>
                                                <form:option value="5:30 PM"> 05:30 PM </form:option>
                                                <form:option value="6:30 PM"> 06:30 PM </form:option>
                                           </form:select>
                                                                </div>
                                                                 <font style="color:red" id="errortimes"></font>
                                                           </div>
                                                           </div>
                                                            
                                                             <div class="col-lg-12">
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                <label for="priority"><span style="color:red">*</span> Executive </label>
                                                     <form:select path="executive" title="----Select Executive----"  class="form-control" id="exe">
                                                           <form:option value="" label="select executive name" />
                                                           <c:forEach var="employee" varStatus="status" items="${executive}">
                                                     <form:option path="executive" value="${employee.empId}" >${employee.empName}</form:option>
                                                           </c:forEach>
                                                     </form:select>
                                                                </div>
                                                                 <font style="color:red" id="errorexe"></font>
                                                           </div>
                                                     
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                <label for="priority"><span style="color:red">*</span> Status </label>
                                                     <form:select path="status" title="Select Executive" id="status"  class="form-control">
                                                           <form:option value="" label="select Appointment Status" />
                                                           <form:option value="New">New Appointment</form:option>
                                                           <form:option value="Rescheduled">Rescheduled</form:option>
                                                           <form:option value="Met">Met</form:option>
                                                           <form:option value="Not Intersted">Not Intersted</form:option>
                                                     </form:select>
                                                                </div>
                                                                 <font style="color:red" id="errorstatus"></font>
                                                           </div>
                                           </div>
                                            <div class="col-lg-12">
                                           <div class="col-md-8">
                                                <div class="form-group">
                                                     <label  for="name">Comment</label>
                                                     <form:textarea path="remarks" class="form-control" />
                                                </div>
                                                </div>
                                                </div>
                                                </div>
<div class="modal-footer">
 <div align="center">
                                                                <button type="submit" onclick="return validate2()"
                                                                     class="btn btn-primary waves-effect waves-light"
                                                                     value="submit">Save</button>
                                                                <button type="reset"
                                                                     class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
                                                           </div>
</div>
</div>
</form:form>
</div>
</div>
</div>
      </div>
              <!--  -->
                
                <!--edit corporate  -->
                           
<div class="modal fade bs-corporate-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
       <div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="n" id="n">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h3>EDIT CORPORATE DETAILS </h3>
</div>
<form:form action="postEditCorporateDetails"
                                                     modelAttribute="corporateDTO">
                                                     <form:hidden path="corporateId"   value="${corporateById.corporateId}" />
                                                      <form:hidden path="appointmentId" value="${corporateById.addressId}" />
                                                     <form:hidden path="createdBy" value="<%=id %>"
                                                           class="form-control" />
                                                     <div class="row">
                                                           <div class="col-md-12">
                                                                <div class="col-md-4">
                                                                     <div class="form-group">
                                                                           <label for="Sdate">Channel </label>
                                                                          <form:select path="channelId" class="form-control"
                                                                                id="channele" placeholder="Channel">
                                                                                <form:option value="${corporateById.channelId}" label="${corporateById.channelsName}"></form:option>
                                                                                <form:options items="${allChannels}" itemValue="channelId" itemLabel="channelsName" />
                                                                          </form:select>
                                                                     </div>
                                                                </div>
                                                                <div class="col-md-8">
                                                                     <div class="form-group">
                                                                          <form:label path="corporateName" for="name">Name
                                                                          </form:label>
                                                                          <form:input type="text" path="corporateName" value="${corporateById.corporateName}" class="form-control"
                                                                                />
                                                                     </div>
                                                                </div>
                                                           </div>
                                                           <div class="col-md-12">
                                                                <div class="col-md-4">
                                                                     <div class="form-group">
                                                                          <form:label path="totalStrength" for="name">Total Strengtht 
                                                                          </form:label>
                                                                          <form:input type="text" path="totalStrength" value="${corporateById.headCount}"
                                                                                class="form-control" id="strengthh"
                                                                                placeholder="Enter total strength" />
                                                                     </div>
                                                                </div>
                                                                <div class="col-md-8">
                                                                     <div class="form-group">
                                                                           <label for="name">Address</label>
                                                                          <form:input path="residenceAddresss" id="textarea" value="${corporateById.address}"
                                                                                class="form-control" maxlength="500" rows="1" />
                                                                     </div>
                                                                </div>
                                                           </div>
                                                           <div class="col-md-12">
                                                                <div class="col-md-4">
                                                                     <div class="form-group">
                                                                           <label for="priority">City</label>
                                                                          <form:input type="text" path="city" class="form-control" value="${corporateById.city}"
                                                                                onkeypress="return onlyAlphabets(event,this);" id="cityy"
                                                                                />
                                                                     </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                     <div class="form-group">
                                                                           <label for="priority">Pincode</label>
                                                                          <form:input type="text" minlength="6" maxlength="8"
                                                                                onkeypress="return IsNumeric(event);" path="pincode" value="${corporateById.pincode}"
                                                                                class="form-control" id="priority"
                                                                                 />
                                                                     </div>
                                                                </div>

                                                                <div class="col-md-4">
                                                                     <div class="form-group">
                                                                           <label for="priority">Landline Number</label>
                                                                          <form:input type="text"
                                                                                onkeypress="return IsNumeric(event);" minlength="10"
                                                                                maxlength="12" path="landline" class="form-control" value="${corporateById.contactNo}"
                                                                               />
                                                                           <span id="error" style="color: block; display: none">
                                                                           </span>
                                                                     </div>
                                                                </div>

                                                           </div>


                                                           <div class="col-md-12">
                                                                <div class="col-md-6">
                                                                     <div class="form-group">
                                                                           <label for="priority">Landmark</label>
                                                                          <form:input type="text" path="landmark" value="${corporateById.landmark}"
                                                                                class="form-control"  />
                                                                     </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                     <div class="form-group">
                                                                           <label for="priority">Email</label>
                                                                          <form:input type="email" path="email" class="form-control" value="${corporateById.email}"
                                                                                />
                                                                     </div>
                                                                </div>
                                                             <%--    <div class="col-md-6">
                                                                     <div class="form-group">
                                                                           <label for="priority">Entity Type </label>
                                                                          <form:select path="entityType" title="Select Entity Type"
                                                                                class="form-control" id="typee">
                                                                                <form:option value="" label="select Entity Type" />
                                                                                <c:forEach var="constant" varStatus="status"
                                                                                     items="${welezoConstant}">
                                                                                     <c:if test="${constant.constType=='corp_entity'}">
                                                                                           <form:option path="entityType" value="${constant.id}">${constant.CDisplay}</form:option>
                                                                                     </c:if>
                                                                                </c:forEach>
                                                                          </form:select>
                                                                     </div>
                                                                </div> --%>
                                                                
                                                           </div>
                                                           <br />
                                                           <br>
                                                           <div class="col-md-offset-5">
                                                                <button type="submit" 
                                                                     class="btn btn-primary waves-effect waves-light"
                                                                     value="submit">Save</button>
                                                                <button type="reset"
                                                                     class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
                                                           </div>
                                                     </div>
                                                </form:form>
</div>
</div>
</div>
      </div>
                
                <!-- end edit corporate -->
                
               <!-- contact interaction -->
                <div class="modal fade bs-examples-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true"
                     style="display: none;">
                     <div class="modal-dialog modal-lg">
                           <div class="modal-content">
                                <div class="n" id="n">
                                     <div class="modal-header">
                                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                                           <h3>CORPORATE CONTACT INTERACTION</h3>
                                     </div>
                                     <form action="saveCorpInterActions">
                                     <input type="hidden" name="corporateId" value="${corporateById.corporateId}">
                                     <input type="hidden" name="interactionBy" value="${USERID}">
                                     
                                           <div class="modal-body">
                                                <div class="row">
                                                     <div class="col-md-12">

                                                <div class="col-md-6">
                                                                <label>Contact Person Name</label>
                                                                <div class="form-group">
                                                                     <input type="text" name="contactName" class="form-control iput-sm" >
                                                                </div>
                                                           </div>
                                                <div class="col-md-6">
                                                                <label>Desgination</label>
                                                                <div class="form-group">
                                                                     <input type="text" name="designation" class="form-control iput-sm">
                                                                </div>
                                                           </div>
                                                           </div>
                                                           
                                                           <div class="col-md-12">
                                                           <div class="col-md-6">
                                                                <label>Contact Number</label>
                                                                <div class="form-group">
                                                                     <input type="text" name="primaryContact" class="form-control iput-sm">
                                                                </div>
                                                           </div>
                                                           <div class="col-md-6">
                                                                <label>Contact E-Mail</label>
                                                                <div class="form-group">
                                                                     <input type="text" name="primaryEmail" class="form-control iput-sm">
                                                                </div>
                                                           </div>
                                                           </div>
                                                           
                                                           <div class="col-md-12">
                                                           <div class="col-md-6">
                                                                <label>Interaction Mode </label>
                                                                <div class="form-group">
                                                                     <select name="interactionMode"  class="form-control iput-sm" id="add_fields_placeholder">
                                                                           <option value="Call">Call</option>
                                                                           <option value="SMS">SMS</option>
                                                                           <option value="Email">Email</option>
                                                                           <option value="Visit">Visit</option>
                                                                          </select>
                                                                </div>
                                                           </div>
<script>
$(document).ready(function()
        {
        $("#add_fields_placeholder").change(function()
{
  if($(this).val() == "Visit")
{
  $("#add_fields_placeholderValue").show();
}
else
{
  $("#add_fields_placeholderValue").hide();
}
  });
            $("#add_fields_placeholderValue").hide();
});

</script>


                                                           <div class="col-md-6">
                                                                <label>Purpose </label>
                                                                <div class="form-group">
                                                                     <select name="purpose"  class="form-control iput-sm">
                                                                     <c:forEach var="constant" varStatus="status"
                                                                                     items="${welezoConstant}">
                                                                                     <c:if test="${constant.constType=='Corporate_interaction_purpose'}">
                                                                                           <option value="${constant.CValue}">${constant.CDisplay}</option>
                                                                                     </c:if>
                                                                                </c:forEach>
                                                                     </select>
                                                                </div>
                                                           </div>
</div>
                                                           <div class="col-md-12">
                                                <div id="add_fields_placeholderValue">
                                                           <div class="col-md-4">
                                                           <label>Date</label>
                                                           <div class="form-group">
                                                                     <input type="text" name="appointmentDate" id="datepickerautoclose2" class="form-control iput-sm" placeholder="dd/mm/yyyy" />
                                                                </div>
                                                           </div>
                                                           
                                                           <div class="col-md-4">
                                                           <label>Time</label>
                                                           <div class="form-group">
                                                                   <!--   <input type="text" id="add_fields_placeholderValue" class="form-control iput-sm" /> -->
                                                                     <select name="timeAppointment" title="----TOA----"  class="form-control iput-sm" id="timee" >
                                                <option value="" label="select Meeting Time slot"></option>
                                                <option value="9:30 AM">  09:30 AM </option>
                                                <option value="10:30 AM"> 10:30 AM </option>
                                                <option value="11:30 AM"> 11:30 AM </option>
                                                <option value="12:30 PM"> 12:30 PM </option>
                                                <option value="1:30 PM"> 01:30 PM </option>
                                                <option value="2:30 PM"> 02:30 PM </option>
                                                <option value="3:30 PM"> 03:30 PM </option>
                                                <option value="4:30 PM"> 04:30 PM </option>
                                                <option value="5:30 PM"> 05:30 PM </option>
                                                <option value="6:30 PM"> 06:30 PM </option>
                                           </select>
                                                                </div>
                                                           </div>
                                                           
                                                           <div class="col-md-4">
                                                           <label>Executive</label>
                                                           <div class="form-group">
                                                      <!--  <input type="text" id="add_fields_placeholderValue"  class="form-control iput-sm" /> -->
                                               <select name="executive" title="----Select Executive----"  class="form-control iput-sm" id="exceutive">
                                                           <option value="" label="select executive name" />
                                                           <c:forEach var="employee" varStatus="status" items="${executive}">
                                                     <option  value="${employee.empId}" >${employee.empName}</option>
                                                           </c:forEach>
                                                     </select>
                                                                </div>
                                                           </div>
                                                           
                                                           </div>
                                                           </div>
                                                                
                                                           <div class="col-md-12">
                                                           <div class="col-md-6">
                                                                <label>Status </label>
                                                                <div class="form-group">
                                                                     <select name="status" class="form-control iput-sm">
                                                                     <option>Open</option>
                                                                     <option>Close</option>
                                                                     </select>
                                                                </div>
                                                           </div>
                                                           </div>

                                                           <div class="col-md-12">
                                                           <div class="col-md-12">
                                                                <label>Remarks</label>
                                                                <div class="form-group">
                                                                     <textarea name="remarks" class="form-control iput-sm" ></textarea>
                                                                </div>
                                                           </div>
</div>
                                                     </div>
                                                </div>
                                           <div class="modal-footer">
                                                <div align="center">
                                                     <button type="submit"   class="btn btn-primary waves-effect waves-light"
                                                          value="submit">Save</button>
                                                     <button type="reset"
                                                           class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
                                                </div>
                                           </div>
                                     </form>
                                </div>
                           </div>
                     </div>
                </div>
                <!--  -->



			<!-- ============================================================== -->
			<!-- End Right content here -->
			<!-- ============================================================== -->
		</div>
		<!-- END wrapper -->
		<script>
            var resizefunc = [];
        </script>

		<script>
        $(document).ready(function() {
        	$(".btn-pref .btn").click(function () {
        	    $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        	    // $(".tab").addClass("active"); // instead of this do the below 
        	    $(this).removeClass("btn-default").addClass("btn-primary");   
        	});
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

		<!-- Datatables-->
		<script src="resources/plugins/welezo/jquery.dataTables.min.js"></script>
		<!-- <script src="resources/plugins/welezo/dataTables.bootstrap.js"></script> -->
		<script src="resources/plugins/welezo/dataTables.buttons.min.js"></script>
		<script src="resources/plugins/welezo/buttons.bootstrap.min.js"></script>
		<script src="resources/plugins/welezo/jszip.min.js"></script>
		<script src="resources/plugins/welezo/pdfmake.min.js"></script>
		<script src="resources/plugins/welezo/vfs_fonts.js"></script>
		<script src="resources/plugins/welezo/buttons.html5.min.js"></script>
		<script src="resources/plugins/welezo/buttons.print.min.js"></script>
		<script src="resources/plugins/welezo/dataTables.fixedHeader.min.js"></script>
		<script src="resources/plugins/welezo/dataTables.keyTable.min.js"></script>
		<script src="resources/plugins/welezo/dataTables.responsive.min.js"></script>
		<script src="resources/plugins/welezo/responsive.bootstrap.min.js"></script>
		<script src="resources/plugins/welezo/dataTables.scroller.min.js"></script>

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
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose2').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });

            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose3').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "dd/mm/yyyy",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
                toggleActive: true
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
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