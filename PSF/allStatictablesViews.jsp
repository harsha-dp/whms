<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />

<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WELEZO</title>

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

<!-- Custom box css -->
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet">
 <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">

<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet" />

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

<script src="resources/js/modernizr.min.js"></script>
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>


<style type="text/css">
.nav-tabs.nav-justified>li>a {
	border-bottom: 2px solid #b51d1d;
}

.nav-tabs a {
	color: #5b2fe0;
	font-size: 15px;
	font-weight: 600;
	font-family: 'Karla', sans-serif;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	color: #555;
	cursor: default;
	background-color: #b1d71a;
	border: 1px solid #ddd;
	border-bottom-color: transparent;
}
</style>
<!--add file validation  -->
<script src="resources/validation/PSF/allStatictablesViews.js"></script>
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
						<li class="hidden-xs hidden-sm"	><font face="verdana" class="page-title">PRODUCTS SERVICES CHANNELS AND TEAM</font></li>
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
				<br>
					<div class="row">
						<!-- PROGRESSBAR WIZARD -->
						<div class="col-lg-12">
							<div class="card-box p-b-0">

								<div id="progressbarwizard" class="pull-in">
									<!--  <nav class="nav-sidebar"> -->
									<ul>
										<li><a href="#account-2" data-toggle="tab"> PRODUCTS</a></li>
										<li><a href="#last-2" data-toggle="tab"> SERVICES</a></li>
										<li><a href="#profile-tab-2" data-toggle="tab">CHANNELS
										</a>
										<li><a href="#welezo-2" data-toggle="tab">TEAMS</a>
									</ul>
									<!--  </nav> -->
									<div class="tab-content b-0 m-b-0">

										<div id="bar"
											class="progress progress-striped progress-bar-primary-alt active">
											<div class="bar progress-bar progress-bar-primary"></div>
										</div>
										<!-- Account-2 -->

										<div class="tab-pane p-t-10 fade" id="account-2">
											<div class="row">
												<div align="left">
													<a href="#custom-modal2"
														class="btn btn-primary waves-effect waves-light"
														data-toggle="modal" data-target="#myModal"><i
														class="zmdi zmdi-plus"></i> Add PRODUCTS </a>
												</div>
												<br />
<div class="table-responsive">
												<table id="datatable"
													class="table table-striped table-bordered">
													<thead>
														<tr>
															<th>Sl.No</th>
															<th>Product Name</th>
															<th>Product Price</th>
															<th>Start Date</th>
															<th>Valid Till</th>
															<th>Prodid Ccavenue</th>
															<th>Order By</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${allproducts}" var="products"
															varStatus="status">
															<tr>
																<td><c:out value="${status.index+1}" /></td>
																<td><c:out value="${products.productName}" /></td>
																<td><c:out value="${products.productPrice}" /></td>
																<td><c:out value="${products.startDate}" /></td>
																<td><c:out value="${products.validTill}" /></td>
																<td><c:out value="${products.prodidCcavenue}" /></td>
																<td><c:out value="${products.isActive}" /></td>

																<td><a
																	href="editproducts?productId=<c:out value='${products.productId}'/>">
																		<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												</div>
											</div>
										</div>

										<!-- -last-2 -->


										<div class="tab-pane p-t-10 fade" id="last-2">
											<div class="row">

												<div class="form-group clearfix">
													<div align="left">
														<a href="#custom-modal1"
															class="btn btn-primary waves-effect waves-light"
															data-toggle="modal" data-target="#myModal1"> <i
															class="zmdi zmdi-plus"></i> Add SERVICES
														</a>
													</div>
													<br />
													<div class="table-responsive">
													<table id="datatable-responsive"
														class="table table-striped table-bordered dt-responsive nowrap"
														cellspacing="0" width="100%">
														<thead>
															<tr>
																<th>Sl.No</th>
																<th>Category Name</th>
																<th>Service Name</th>
																<th>Description</th>
																<th>Active Status</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${allservice}" var="services"
																varStatus="status">
																<tr>
																	<td><c:out value="${status.index+1}" /></td>
																	<td><c:out value="${services.category}" /></td>
																	<td><c:out value="${services.serviceName}" /></td>
																	<td><c:out value="${services.serviceDescription}" /></td>
																	<td><c:if test="${services.isActive == '1'}" >Enabled</c:if>
																	<c:if test="${services.isActive == '0'}" >Disabled</c:if></td>

																	<%-- <td><a href="editproducts?productId=<c:out value='${products.productId}'/>">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
												</a></td> --%>
																</tr>
															</c:forEach>
														</tbody>
													</table>
</div>
												</div>
												<hr>

											</div>
										</div>

										<!-------------------------------------------------------------- 1st page completed ------------------------------------------------------------------->
										<div class="tab-pane p-t-10 fade" id="profile-tab-2">
											<div class="row">
												<div class="form-group clearfix">
													<div align="left">
														<a href="#custom-modal4"
															class="btn btn-primary waves-effect waves-light"
															data-toggle="modal" data-target="#myModal2"> <i
															class="zmdi zmdi-plus"></i> Add Channels
														</a>
													</div>
													<br />
													<table id="datatable-keytable"
														class="table table-striped table-bordered">
														<thead>
															<tr>
																<th>Id</th>
																<th class="filtername">Channels Name</th>
																<th>Actions</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${channelss}" var="welezo">
																<tr>
																	<td><c:out value="${welezo.channelId}" /></td>
																	<td class="account-name sort-value"><c:out
																			value="${welezo.channelsName}" /></td>
																	<td><a
																		href="editChannels?channelId=<c:out value='${welezo.channelId}'/>">
																			<i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>

										<!--  -->
										<div class="tab-pane p-t-10 fade" id="welezo-2">
											<div class="row">
												<div class="form-group clearfix">
													<div class="col-lg-12">
														<div align="left">
															<a href="#custom-modal5"
																class="btn btn-primary waves-effect waves-light"
																data-toggle="modal" data-target="#myModal3"> <i
																class="zmdi zmdi-plus"></i> Add Teams
															</a>
														</div>
														<br />

														<table id="datatable-fixed-header"
															class="table table-striped table-bordered">
															<thead>
																<tr>

																	<th>Id</th>
																	<th class="filtername">Team Name</th>
																	<th class="filtername1">Leader Name</th>
																	<th>Actions</th>
																</tr>
															</thead>

															<tbody>
																<c:forEach items="${allteams}" var="welezo">
																	<tr>
																		<td><c:out value="${welezo.teamId}" /></td>
																		<td class="account-name sort-value"><c:out
																				value="${welezo.teamName}" /></td>
																		<td class="account-name1 sort-value"><c:out
																				value="${welezo.leaderName}" /></td>
																		<td><a
																			href="editTeams?teamId=<c:out value='${welezo.teamId}'/>">
																				<i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>

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
								<!-- container -->

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  ----------------------------------------------------------------------------------------------------------------------- -->
		<!--  ----------------------------------------------------------------------------------------------------------------------- -->

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	</div>

	<!-- Modal -->
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">ADD NEW PRODUCT</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<div class="text-left">
								<form action="saveProducts" name="form3" onsubmit="return validate3()" method="post">

									<div class="col-md-12">
										<div class="col-md-6">
											<div class="form-group">
												<label>Product Name <span style="color:red">*</span></label>
												<div class="input-group">
													<input type="text" class="form-control" name="productName"
														id="product" />
														<font id="errorproduct" style="color:red"></font>
														
												</div>
											</div>
										</div>


										<div class="col-md-6">
											<div class="form-group">
												<label>Product Price <span style="color:red">*</span></label>
												<div class="input-group">
													<input type="text" class="form-control" name="price" id="pricees" />
													<font id="errorpricees" style="color:red"></font>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-12">

										<div class="col-md-6">
											<div class="form-group">
												<label>Service Start Date <span style="color:red">*</span></label>
												<div class="input-group">
													<input type="text" name="startDate"
														id="datepickerautoclose" class="form-control" /> <span
														class="input-group-addon bg-primary b-0 text-white"><i
														class="fa fa-calendar"></i></span>
												</div>
														<font id="errordatepickerautoclose" style="color:red"></font>
											</div>
										</div>


										<div class="col-md-6">
											<div class="form-group">
												<label>Service End Date <span style="color:red">*</span></label>
												<div class="input-group">
													<input type="text" name="validTill"
														id="datepickerautoclose1" class="form-control" /> <span
														class="input-group-addon bg-primary b-0 text-white"><i
														class="fa fa-calendar-o"></i></span>
												</div>
														<font id="errordatepickerautoclose1" style="color:red"></font>
											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="col-md-6">
											<div class="form-group">
												<label>CC Avenue Id</label>
												<div class="input-group">
													<input type="text" name="prodidCcavenue"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Today Offers :</label>
												<div class="input-group">
													<input type="text" name="offerPrice" class="form-control" />
												</div>
											</div>
										</div>
										<div class="col-md-12">
												<div class="form-group">
													<label>Product Description</label>
													<div class="input-group">
														<textarea name="description" rows="3" cols="120"
															class="form-control"></textarea>
													</div>
												</div>
										</div>
										<div align="center">
												<button type="submit" onclick="return validate3()" class="btn btn-primary">Save</button>
												<button type="reset" class="btn btn-danger">Clear</button>
											</div>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<!-- Modal -->
	<div id="myModal1" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">ADD NEW SERVICE</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<form action="saveService" method="post" name="form2" onsubmit="return validate2()">
								<div class="text-left">
									<div class="card-box">
										<div class="col-md-12">
											<label>Select Service Category <span style="color:red">*</span></label> <select
												name="category" class="form-control" id="services">
												<option value="" label="Select Sevice Category"></option>
												<c:forEach items="${category}" var="categories">
													<option value="${categories.category}">${categories.category}</option>
												</c:forEach>
											</select>
											<font id="errorservices" style="color:red"></font>
										</div>
										<div class="col-md-12">
											<label>Service Name <span style="color:red">*</span></label> <input type="text"
												class="form-control" name="serviceName" id="service" />
												<font id="errorservice" style="color:red"></font>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label>Service Description <span style="color:red">*</span></label>
												<textarea name="description" rows="3" cols="220" id="descriptions"
													class="form-control"></textarea>
													<font id="errordescriptions" style="color:red"></font>
											</div>
											<div align="center">
												<button type="submit" onclick="return validate2()" class="btn btn-primary">Save</button>
												<button type="reset" class="btn btn-danger">Clear</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modal -->
	<div id="myModal2" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">ADD NEW CHANNEL</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<div class="text-left">
								<form class="form-horizontal" name="form1" onsubmit="return validate1()" action="saveChannels"
									method="post">
									
										<div class="col-md-12">
											<label>Channel Name <span style="color:red">*</span></label> <input type="text"
												name="channelsName" class="form-control" id="channelss"/>
												<font id="errorchannelss" style="color:red;"></font>
										</div>
									
									<br />
									<p>&nbsp;</p>
									<div align="center">
												<button type="submit" onclick="return validate1()" class="btn btn-primary">Save</button>
												<button type="reset" class="btn btn-danger">Clear</button>
											</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	
	<!-- Modal -->
	<div id="myModal3" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">ADD NEW TEAM NAME</h4>
				</div>
				<div class="modal-body">
					<div class="row">

						<form class="form-horizontal" name="form" onsubmit="return validate()" action="saveTeams" method="post">
							<div class="col-md-12">
								<div class="text-left">
										<div class="col-md-12">
											<label>Team Name <span style="color:red">*</span></label> 
											<input type="text" name="teamName" id="team"
												class="form-control" /> 
												  <font id="errorteam" style="color:red"></font>
												<br />
												 <label>Leader Name <span style="color:red">*</span></label> <input
												type="text" name="leaderName" class="form-control" id="leader" /> <br />
                                              <font id="errorleader" style="color:red"></font>


											<div align="center">
												<button type="submit" onclick="return validate()" class="btn btn-primary">Save</button>
												<button type="reset" class="btn btn-danger">Clear</button>
											</div>
										</div>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->
	</div>
	<!-- END wrapper -->
	<script>
            var resizefunc = [];
        </script>

	<!-- Right Sidebar -->
	<div class="side-bar right-bar">
		<a href="javascript:void(0);" class="right-bar-toggle"> <i
			class="zmdi zmdi-close-circle-o"></i>
		</a>
		<h4 class="">T`H`E`M`E`L`O`C`K`.`C`O`M`</h4>
		<div class="notification-list nicescroll">
			<ul class="list-group list-no-border user-list">
				<li class="list-group-item"><a href="#" class="user-list-item">
						<div class="avatar">
							<img src="assets/images/users/avatar-2.jpg" alt="">
						</div>
						<div class="user-desc">
							<span class="name">Michael Zenaty</span> <span class="desc">There
								are new settings available</span> <span class="time">2 hours ago</span>
						</div>
				</a></li>
				<li class="list-group-item"><a href="#" class="user-list-item">
						<div class="icon bg-info">
							<i class="zmdi zmdi-account"></i>
						</div>
						<div class="user-desc">
							<span class="name">New Signup</span> <span class="desc">There
								are new settings available</span> <span class="time">5 hours ago</span>
						</div>
				</a></li>
				<li class="list-group-item"><a href="#" class="user-list-item">
						<div class="icon bg-pink">
							<i class="zmdi zmdi-comment"></i>
						</div>
						<div class="user-desc">
							<span class="name">New Message received</span> <span class="desc">There
								are new settings available</span> <span class="time">1 day ago</span>
						</div>
				</a></li>
				<li class="list-group-item active"><a href="#"
					class="user-list-item">
						<div class="avatar">
							<img src="assets/images/users/avatar-3.jpg" alt="">
						</div>
						<div class="user-desc">
							<span class="name">James Anderson</span> <span class="desc">There
								are new settings available</span> <span class="time">2 days ago</span>
						</div>
				</a></li>
				<li class="list-group-item active"><a href="#"
					class="user-list-item">
						<div class="icon bg-warning">
							<i class="zmdi zmdi-settings"></i>
						</div>
						<div class="user-desc">
							<span class="name">Settings</span> <span class="desc">There
								are new settings available</span> <span class="time">1 day ago</span>
						</div>
				</a></li>

			</ul>
		</div>
	</div>
	<!-- /Right-bar -->

	</div>
	<!-- END wrapper -->

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




	<!-- Form wizard -->
	<script
		src="resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
	<script
		src="resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>


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
	-->
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


	<script type="text/javascript">
            $(document).ready(function() {
                $('#basicwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#progressbarwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    var $percent = ($current/$total) * 100;
                    $('#progressbarwizard').find('.bar').css({width:$percent+'%'});
                },
                'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#btnwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted','nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});

                var $validator = $("#commentForm").validate({
                    rules: {
                        emailfield: {
                            required: true,
                            email: true,
                            minlength: 3
                        },
                        namefield: {
                            required: true,
                            minlength: 3
                        },
                        urlfield: {
                            required: true,
                            minlength: 3,
                            url: true
                        }
                    }
                });

                $('#rootwizard').bootstrapWizard({
                    'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#commentForm").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        }
                    }
                });
            });

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
            
            jQuery("#datepickerautoclose1").datepicker();
     		jQuery('.fa-calendar-o').click(function() {
     			jQuery("#datepickerautoclose1").focus();
           	  });
     		
     		jQuery("#datepickerautoclose").datepicker();
     		jQuery('.fa-calendar').click(function() {
     			jQuery("#datepickerautoclose").focus();
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