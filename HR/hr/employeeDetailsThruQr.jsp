<!DOCTYPE html>
<html>
<head>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully featured  CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<title>WELEZO</title>
<!-- DataTables -->
<link href="resources/HR/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- Modal -->
<link href="resources/HR/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet">
<link href="resources/HR/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/responsive.css" rel="stylesheet"
	type="text/css" />
<script src="resources/HR/js/modernizr.min.js"></script>
<script src="resources/js/modernizr.min.js"></script>

<!-- Plugins css-->
<link
	href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/HR/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" />
<link href="resources/HR/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link
	href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<link href="resources/HR/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/responsive.css" rel="stylesheet"
	type="text/css" />
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 400px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.title {
	color: white;
	font-size: 18px;
}

button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: gray;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

a {
	text-decoration: none;
	font-size: 22px;
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}
</style>
</head>
<body background="white">


	<div class="topbar">

		<!-- LOGO -->
		<div class="topbar-left">
			<a href="welezouser_dashboard"><img class="img-responsive"
				src="resources\images\newlogo.png" width="230px" height="80px" /> </a>
		</div>
	</div>
	<br/>
	<div class="row">
		<div class="col-md-6">
			<div class="text-center card-box">

				<h4><u>EMPLOYEE CONTACT DETAILS</u></h4>
				<img src="data:image/png;base64,${empImge}"
					class="img-square thumb-xl img-thumbnail m-b-20"
					alt="profile-image">
					
					<br/>
					<div class="text-left">
					<div class="col-md-6">
						<p class="text-muted font-13">
						<strong>NAME:</strong><span class="m-l-15">${employeeById.empName}</span>
						</p>
						<br/>
							<p class="text-muted font-13">
						<strong>Contact No.:</strong><span class="m-l-15"> ${employeeById.emergencyContact}</span>
						</p>
						</div>
						<br/>
							<p class="text-muted font-13">
						<strong>E-Mail: </strong><span class="m-l-15">${employeeById.corporateEmail}
						</span>
						</p>
						</div>
						<br/>
							<p class="text-muted font-13">
						<strong>Address:</strong><span class="m-l-15"> No 13, Sanjay Nagar Main Road, Above Foodworld,
							Amarjyothi Layout, Nagashettyhalli, Bengaluru, Karnataka 560094</span></p>
</div>
						
						</div>
						<p>
							<button>info@welezohealth.com &nbsp&nbsp         Please Contact Above Address  &nbsp&nbsp    Visit: www.welezohealth.com</button>
						</p>
						</div>
						<footer class="footer text-left"> 2016 A © Welezo Health Care Pvt.Ltd. </footer>
</body>
</html>
