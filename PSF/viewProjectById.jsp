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
<title>WElEZO</title>

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

<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script src="resources/js/modernizr.min.js"></script>
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
<script src="resources/validation/PSF/viewProjectById.js"></script>
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
						<li class="hidden-xs hidden-sm"><font face="verdana" class="page-title">VIEW
								PROJECTS</font></li>
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
					<div class="row">
						<!-- PROGRESSBAR WIZARD -->
						<div class="col-lg-12">
							<div class="card-box p-b-0">

								<div id="progressbarwizard" class="pull-in">
									<!--  <nav class="nav-sidebar"> -->
									<ul>
										<li><a href="#account-2" data-toggle="tab"> PROJECTS</a></li>
										<li><a href="#last-2" data-toggle="tab"> CONSTANT</a></li>
										<li><a href="#profile-tab-2" data-toggle="tab">WORKFLOW
										</a>
										<li><a href="#welezo-2" data-toggle="tab">PRODUCT OFFERS</a>
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
														class="btn btn-info btn-md waves-effect waves-light"
														data-animation="fadein" data-plugin="custommodal"
														data-overlaySpeed="200" data-overlayColor="#36404a"> <i
														class="zmdi zmdi-plus"></i> Add PRODUCTS
													</a>
												</div>
												<br />

												<table id="datatable"
													class="table table-striped table-bordered">
													<thead>
                                            <tr>
                                               
												<th>Id</th>
                                          	 	<th class="filtername">Project Name</th>
                                              	<th class="filtername1">Parent Project</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
													<tbody>
                                            <c:forEach items="${allproject}" var="welezo">
                        <tr>
                        <td><c:out value="${welezo.projectId}" /></td>
                        	<td class="account-name sort-value"><c:out value="${welezo.projectName}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${welezo.parentProject}" /></td>
                        	<td>
                        	<a href="editProjects?projectId=<c:out value='${welezo.projectId}'/>"><button class="btn btn-primary btn-xs"  data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                       
                        </tr>
                    </c:forEach>
                                        </tbody> 
												</table>
											</div>
										</div>

										<!-- -last-2 -->


										<div class="tab-pane p-t-10 fade" id="last-2">
											<div class="row">

												<div class="form-group clearfix">
													<div align="left">
														<a href="#custom-modal1"
															class="btn btn-info btn-md waves-effect waves-light"
															data-animation="fadein" data-plugin="custommodal"
															data-overlaySpeed="200" data-overlayColor="#36404a">
															<i class="zmdi zmdi-plus"></i> Add SERVICES
														</a>
													</div>
													<br />
													<table id="datatable-responsive"
														class="table table-striped table-bordered dt-responsive nowrap"
														cellspacing="0" width="100%">
														<thead>
															<tr>
																<th>Sl.No</th>
																<th>Category Name</th>
																<th>Service Name</th>
																<th>Active Status</th>
																<th>Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${allservice}" var="services"
																varStatus="status">
																<tr>
																	<td><c:out value="${status.index+1}" /></td>
																	<td><c:out value="${services.category}" /></td>
																	<td><c:out value="${services.serviceName}" /></td>
																	<td><c:out value="${services.isActive}" /></td>
																	<td></td>

																	<%-- <td><a href="editproducts?productId=<c:out value='${products.productId}'/>">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
												</a></td> --%>
																</tr>
															</c:forEach>
														</tbody>
													</table>

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
															class="btn btn-info btn-md waves-effect waves-light"
															data-animation="fadein" data-plugin="custommodal"
															data-overlaySpeed="200" data-overlayColor="#36404a">
															<i class="zmdi zmdi-plus"></i> Add Channels
														</a>
													</div>
													<br />
													<table id="datatable-fixed-header"
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
																		href="editChannels?channelId=<c:out value='${welezo.channelId}'/>"><button
																				class="btn btn-primary btn-xs" data-target="#edit">
																				<span class="glyphicon glyphicon-pencil"></span>
																			</button>
																			</p></a></td>
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
																class="btn btn-info btn-md waves-effect waves-light"
																data-animation="fadein" data-plugin="custommodal"
																data-overlaySpeed="200" data-overlayColor="#36404a">
																<i class="zmdi zmdi-plus"></i> Add Teams
															</a>
														</div>
														<br />

														<table id="datatable-keytable"
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
																			href="editTeams?teamId=<c:out value='${welezo.teamId}'/>"><button
																					class="btn btn-primary btn-xs" data-target="#edit">
																					<span class="glyphicon glyphicon-pencil"></span>
																				</button>
																				</p></a></td>

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
	<div id="custom-modal2" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.close();">
			<span>&times;</span><span class="sr-only">Close</span>
		</button>
		<div align="center" style="background-color: #719bda">
			<h4 class="custom-modal-title">Update projects</h4>
		</div>
		<div class="row">
			<%-- <form:form class="form-horizontal" action="saveprojects" modelAttribute="projects">
                                  
                                    
                                
                                     <label>Project Name</label>
                                       <form:input type="text" path="projectName" class="form-control"  />
                                   </br>
                                        <label>ParentProject</label>
                                       <form:input type="text" path="parentProject" class="form-control" />
                                    </br>
                                    
                                     
                                     
                                        <div align="center">
                                        <button type="submit" class="btn btn-primary">Save</button>
					                  <button type="reset" class="btn btn-primary">Clear</button>
                    </div>
                    </form:form> --%>
		</div>
	</div>



	<!-- Modal -->
	<div id="custom-modal1" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.close();">
			<span>&times;</span><span class="sr-only">Close</span>
		</button>
		<div align="center" style="background-color: #719bda">
			<h4 class="custom-modal-title">Update Services</h4>
		</div>
		<div class="row">
			<%-- 	<form:form action="saveServices" modelAttribute="viewServices">
				<div class="col-md-12">
					<div class="text-left">
						<div class="card-box">
							
								<div class="col-md-12">
										<label>Select Category Name :</label>
										<form:select path="category" class="form-control">
										<form:option value="Select category"></form:option>
										<c:forEach items="${category}" var="categories">
										<form:option value="${categories.serviceId}">${categories.category}</form:option>
										</c:forEach>
										</form:select>
								</div>


								<div class="col-md-12">
										<label>Service Name :</label>
											<form:input type="text" class="form-control"  path="serviceName" id=""/>
								</div>
							

							<div class="col-md-12">
									<div class="form-group">
										<label>Active Status:</label>
											<form:input type="text" path="isActive"
												 class="form-control" />
									</div>
								
								
							<div align="center">
								<button type="submit"
									class="btn btn-custom btn-rounded waves-effect waves-light w-md m-b-5">Save</button>
							</div>
						</div>
					</div>
				</div>
		</form:form> --%>
		</div>
	</div>



	<!-- Modal -->
	<div id="custom-modal4" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.close();">
			<span>&times;</span><span class="sr-only">Close</span>
		</button>
		<div align="center" style="background-color: #719bda">
			<h4 class="custom-modal-title">Update Channels</h4>
		</div>
		<div class="row">

			<%-- <form:form class="form-horizontal" action="savechannels" modelAttribute="channels">
                                  
                                    
                                
                                     
                                        <label>channelsName</label>
                                       <form:input type="text" path="channelsName" class="form-control" />
                                    </br>
                                    
                                     
                                     
                                        <div align="center">
                                        <button type="submit" class="btn btn-primary">Save</button>
					                  <button type="reset" class="btn btn-primary">Clear</button>
                    </div>
                    </form:form> --%>

		</div>
	</div>

	<!-- Modal -->
	<div id="custom-modal5" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.close();">
			<span>&times;</span><span class="sr-only">Close</span>
		</button>
		<div align="center" style="background-color: #719bda">
			<h4 class="custom-modal-title">Update Teams</h4>
		</div>

		<div class="row">

			<%-- <form:form class="form-horizontal" action="saveteams" modelAttribute="teams">
                                    
                                     <label>Team Name</label>
                                       <form:input type="text" path="teamName" class="form-control" />
                                   </br>
                                        <label>Leader Name</label>
                                       <form:input type="text" path="leaderName" class="form-control" />
                                    </br>
                                    
                                      
                                     
                                        <div align="center">
                                        <button type="submit" class="btn btn-primary">Save</button>
					                  <button type="reset" class="btn btn-primary">Clear</button>
                    </div>
                    </form:form> --%>
		</div>
	</div>


	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->
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
                $('#datatable-scroller').DataTable( { ajax: "assets/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
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


	<script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init()};

        </script>


</body>
</html>