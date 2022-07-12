<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />

<link rel="shortcut icon" href="resources/images/favicon.ico">

<title>WELEZO</title>

<link rel="stylesheet" href="resources/plugins/morris/morris.css">

<!-- App css -->
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

<script src="resources/js/modernizr.min.js"></script>
<style>
@media only screen and (max-width: 600px) {
}

#body {
	background: #eaeaea;
	width: 100%;
	/* height: 602px; */
	height: auto;
	padding-bottom: 70px;
	margin-top: 30px;
}

.modal .modal-dialog .modal-content {
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	border-color: #DDDDDD;
	border-radius: 2px;
	box-shadow: none;
	padding: 9px;
}

.body {
	min-width: 380px;
}

.content-page {
	margin-left: 200px;
}

.back {
	border-style: solid;
	border-width: thin;
}

.modal-title {
	margin: 0px 2px;
	line-height: 1.42857143;
	border: solid 1px;
	background-color: #2c4353;
	color: white;
	padding-top: 6px;
	padding-bottom: 6px;
}

/* html {
	position: relative;
	min-height: 100%;
	background: #3a4e75;
} */
</style>
<!-- <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
.modal .modal-dialog .modal-content {
  border-color: #4522ec;
    border-radius: 2px;
    box-shadow: none;
    padding: 12px 10px 3px 10px;
    background-color: #27a6ca;
}
</style> -->
<style>
.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 0px;
}

.tableborder {
	border-right: 1px solid black;
}

td, th {
	border-left: 1px solid black;
	border-bottom: 1px solid black;
	text-align: left;
}

th {
	background-color: #b3f7f4;
}

.col-sm-6 {
	padding-right: 0px;
	padding-left: 0spx;
	padding-left: 0px;
}

.content {
	text-align: center;
}

h5>a {
	color: black;
	font-size: 18px;
	font-family: Adobe Garamond Pro;
}

h5>a:hover {
	background-color: Silver;
	color: white;
}
</style>
<script>
	function myFunction() {
		alert("Your Access denied!!");
	}
</script>
<script>
function newDoc() {
    window.location.assign("txdashboard")
}
</script>
<script>
	//var jq = $.noConflict();
</script>
</head>
<!-- <script>
let student = {
		  name: 'John',
		  age: 30,
		  isAdmin: false,
		  courses: ['html', 'css', 'js'],
		  wife: null
		};

		let json = JSON.stringify(student);

		alert(typeof json); // we've got a string!

		alert(json);
</script> -->


<body class="fixed-left" id="body">
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="header.jsp"%>


		<!-- Top Bar End -->
		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="sildermenu.jsp"%>
		<!-- Left Sidebar End -->

		<c:set var="role" scope="session" value="<%=roleType%>" />
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<div class="row">


						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<c:if test="${msg  ne null}">
								<div class="alert alert-info" role="alert">
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>

									<h4 class="alert-heading text-center" style="color: gray">
										<p id="lblGreetingss"></p>
										${msg}
									</h4>
								</div>
							</c:if>
						</div>
					</div>

					<div class="row" id="body">
						<div class="col-md-12">


							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
									<%-- <c:when test="${roleAccess.businessUnit == 'Sales' || roleAccess.businessUnit == 'Sales & Marketing' || roleAccess.businessUnit == 'Admin'}"> --%>
								<c:choose>
									<c:when
										test="${roleAccess.businessUnit == 'Sales' || roleAccess.businessUnit == 'Sales & Marketing' || roleAccess.businessUnit == 'Admin'}">

										<a href="salesDashboards"><img
											src="./resources/images/dashboard/Leads.jpg"></a>
										<div class="clear"></div>
										<!-- <p><img src="./resources/images/dashboard/notification.gif"></p> -->
										<h5>
											<a href="salesDashboards" style="color: #4B0082;">Sales </a>
										</h5>
									</c:when>
									<c:otherwise>
										<h5>
											<a
												href='#' onclick="myFunction()"><img
												src="./resources/images/dashboard/Leads.jpg"></a>
												<a href='#' onclick="myFunction()" id="center">Sales</a> 
										</h5>
									</c:otherwise>
								</c:choose>
							</div>

							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
							<c:choose>
											<c:when
												test="${(roleAccess.businessUnit == 'Operations' && roleAccess.department == 'Accounts') || roleAccess.businessUnit == 'Admin'}">
											
								<a href="txdashboard"><img src="./resources/images/dashboard/Account.jpg"
									data-toggle="modal" data-target=".bs-example-modal-sm2" onclick="newDoc()"/></a>
								<div class="clear"></div>

									<h5>
													<a href="txdashboard" style="color: #E12BC8;">Accounts</a>
									</h5>
											</c:when>
											<c:otherwise>
												<a href='#' onclick="myFunction()">Accounts</a>
									<a href="#" onclick="myFunction()"><img src="./resources/images/dashboard/Account.jpg"></a>

											</c:otherwise>
										</c:choose>
									<!--  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only"></span>
  </button> -->


								</div>
							</div>

							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<img src="./resources/images/dashboard/Operation.jpg">
								<div class="clear"></div>
								<div class="btn-group dropright">
									<h5>
										<c:choose>
											<c:when
												test="${(roleAccess.businessUnit == 'Operations' && roleAccess.department == 'Operations')  || roleAccess.businessUnit == 'Admin'}">
												<a href="operationDashboards" style="color: black;">Dispatch</a>
											</c:when>
											<c:otherwise>
												<a href='#' onclick="myFunction()">Dispatch</a>
											</c:otherwise>
										</c:choose>
									</h5>
									<!-- <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only"></span>
  </button> -->


								</div>
							</div>


							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<img src="./resources/images/dashboard/Customer1.jpg">
								<div class="clear"></div>
								<div class="btn-group dropright">
									<h5>
										<c:choose>
											<c:when
												test="${roleAccess.businessUnit == 'Operations' && roleAccess.department == 'CustomerCare' || roleAccess.businessUnit == 'Admin'}">
												<a href="customercare">Customer Care</a>
											</c:when>
											<c:otherwise>
												<a href='#' onclick="myFunction()" id="center3">Customer
													Care</a>
											</c:otherwise>
										</c:choose>
									</h5>

								</div>
							</div>



							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<img src="./resources/images/dashboard/IT.jpg">
								<div class="clear"></div>
								<div class="btn-group dropright">
									<c:choose>
										<c:when
											test="${roleAccess.businessUnit == 'IT' || roleAccess.businessUnit == 'Admin'}">
											<h5>
												<a href="viewDetails3?userId=<c:out value="${USERID}" /> ">
													IT </a>
											</h5>
										</c:when>
										<c:otherwise>
											<h5>
												<a href='#' onclick="myFunction()">IT</a>
											</h5>
										</c:otherwise>
									</c:choose>

								</div>
							</div>

							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">

								<img src="./resources/images/dashboard/Empanelment.jpg">
								<div class="clear"></div>

								<div class="btn-group dropright">
									<c:choose>
										<c:when
											test="${(roleAccess.businessUnit == 'Operations' && roleAccess.department == 'Business Development') || roleAccess.businessUnit == 'Admin'}">
											<h5>
												<a href="viewHospitals">Empanelment</a>
											</h5>
										</c:when>
										<c:otherwise>
											<h5>
												<a href='#' onclick="myFunction()">Empanelment</a>
											</h5>
										</c:otherwise>
									</c:choose>

								</div>
							</div>

							<p>&nbsp;</p>
							<br>
							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<script>
alert("${(roleAccess.businessUnit == 'Admin')}");
								</script>
								<c:choose>

									<c:when test="${(roleAccess.businessUnit =='Admin') || roleAccess.businessUnit=='IT'}">
									
										<a href="homeHr"> <img
											src="./resources/images/dashboard/HR.jpg">
										</a>
										<div class="clear"></div>
										<div class="btn-group dropright">
											<h5>
												<a href="homeHr">Human Resources</a>
											</h5>
										</div>
									</c:when>
									<c:otherwise>
										<h5>
											<a href='#' onclick="myFunction()">Human Resources</a> <a
												href='#' onclick="myFunction()"> <img
												src="./resources/images/dashboard/HR.jpg">
											</a>
										</h5>
									</c:otherwise>
								</c:choose>
							</div>





							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<c:choose>
									<c:when
										test="${roleAccess.businessUnit == 'IT' || roleAccess.businessUnit == 'Admin'}">
										<a href="websiteDashBoard"><img
											src="./resources/images/dashboard/Web.jpg"></a>
										<div class="clear"></div>
										<div class="btn-group dropright">
											<h5>
												<a href="websiteDashBoard">Web Support</a>
											</h5>
										</div>
								</c:when>
									<c:otherwise>
										<h5>
											<a href='#' onclick="myFunction()">Web Support</a> <a
												href="#" onclick="myFunction()"> <img
												src="./resources/images/dashboard/Web.jpg"></a>
										</h5>
									</c:otherwise>
								</c:choose>

							</div>



							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">

								<c:choose>
									<c:when
										test="${roleAccess.businessUnit == 'IT' || roleAccess.businessUnit == 'Admin'}">

										<a href="misWelcome"><img
											src="./resources/images/dashboard/MIS.jpg"></a>
										<div class="clear"></div>
										<div class="btn-group dropright">
											<h5>
												<a href="misWelcome">MIS Reports</a>
											</h5>
										</div>
									</c:when>
									<c:otherwise>
										<h5>
											<a href='#' onclick="myFunction()">MIS Reports</a> <a
												href="#" onclick="myFunction()"> <img
												src="./resources/images/dashboard/MIS.jpg">
											</a>
										</h5>
									</c:otherwise>
								</c:choose>

							</div>

							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<c:choose>
									<c:when
										test="${roleAccess.businessUnit == 'IT' || roleAccess.businessUnit == 'Admin'}">
										<a href="manual_dashboard"> <img
											src="./resources/images/dashboard/Admin.jpg"></a>
										<div class="clear"></div>
										<div class="btn-group dropright">
											<h5>
												<a href="manual_dashboard">System Admin</a>
											</h5>
										</div>
									</c:when>
									<c:otherwise>
										<h5>
											<a href='#' onclick="myFunction()">System Admin</a> <a
												href="#"><img
												src="./resources/images/dashboard/Admin.jpg"></a>
										</h5>
									</c:otherwise>
								</c:choose>
							</div>

							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 module-boxes">
								<c:choose>
									<c:when
										test="${roleAccess.businessUnit == 'IT' || roleAccess.businessUnit == 'Admin'}">
										<a href="applicationStatusSearch"> <img
											src="./resources/images/dashboard/search.png"></a>
										<div class="clear"></div>
										<div class="btn-group dropright">
											<h5>
												<a href="applicationStatusSearch">Application Status</a>
											</h5>

										</div>
									</c:when>
									<c:otherwise>
										<a href="#" onclick="myFunction()"><img
											src="./resources/images/dashboard/search.png"></a>
										<a href='#' onclick="myFunction()">Application Status</a>
									</c:otherwise>
								</c:choose>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- container -->

		</div>
		<!-- content -->
	</div>
	<!--wraper  -->


	<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	<!-- /Right-bar -->

	<!-- 	<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog modal-md">
			<div class="design">
				<div class="modal-content">

					<div class="row">
						<div class="col-sm-12">
							<table class="table table-bordered tableborder">
								<tr>
									<td style="background-color: #1686e6; text-align: center">
										Tele Sales Details</td>
									<td style="background-color: #1686e6; text-align: center">
										Tele Sales Details</td>
								</tr>

							</table>
							<div class="row">
								<div class="col-sm-6">
									<table class="table table-bordered tableborder">
										<thead>
											<tr>
												<th>Total Call</th>
												<th>Total Presentation</th>
												<th>Total CSR</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm-6">
									<table class="table table-bordered tableborder">
										<thead>
											<tr>
												<th>Total Call</th>
												<th>Total Presentation</th>
												<th>Total CSR</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div class="row">


						<div class="col-sm-12">
							<table class="table table-bordered tableborder">
								<tr>
									<td style="background-color: #1686e6; text-align: center">
										Tele Sales Details</td>
									<td style="background-color: #1686e6; text-align: center">
										Tele Sales Details</td>
							</table>
							<div class="row">
								<div class="col-sm-6">
									<table class="table table-bordered tableborder">
										<thead>
											<tr>
												<th>Total Call</th>
												<th>Total Presentation</th>
												<th>Total CSR</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm-6">
									<table class="table table-bordered tableborder">
										<thead>
											<tr>
												<th>Total Call</th>
												<th>Total Presentation</th>
												<th>Total CSR</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
											<tr>
												<td>1450</td>
												<td>45</td>
												<td>40</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>

						</div>
					</div>


				</div>
				/.modal-content
			</div>
		</div>
		/.modal-dialog
	</div> -->
	<!-- /.modal -->




	<!-- <div class="modal fade bs-example-modal-sm1" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="back">Appointment Details</h4>
				</div>
				<div class="modal-body">
					<p>Total Today Appointment: 20</p>
					<br />
					<p>Today Collection: 10
					<p>Tomorrow Appointment : 25</p>
				</div>
			</div>
			/.modal-content
		</div>
		/.modal-dialog
	</div> -->
	<!-- /.modal -->

	<!-- <div class="modal fade bs-example-modal-sm2" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="mySmallModalLabel">Accounts
						Details</h4>
				</div>
				<div class="modal-body">
					<p>Total Pending Submission: 20</p>
					<br />
					<p>Today payment Approved: 10
					<p>Payment In progress : 25</p>
				</div>
			</div>
			/.modal-content
		</div>
		/.modal-dialog
	</div> -->
	<!-- /.modal -->
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->


	<!-- END wrapper -->

	<script>
		window.setTimeout(function() {
			$(".alert").fadeTo(500, 0).slideUp(500, function() {
				$(this).remove();
			});
		}, 4000);
	</script>
	<script type="text/javascript">
		var myDate = new Date();
		var hrs = myDate.getHours();

		var greet;

		if (hrs < 12)
			greet = 'Good Morning';
		else if (hrs > 11 && hrs <= 15)
			greet = 'Good Afternoon';
		else
			greet = 'Good Evening';

		document.getElementById('lblGreetingss').innerHTML = '<b>' + greet
				+ '</b> !';
	</script>


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

	<!-- KNOB JS -->
	<!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
	<script src="resources/plugins/jquery-knob/jquery.knob.js"></script>


	<!-- Dashboard init -->
	<script src="resources/pages/jquery.dashboard.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>


</body>
</html>