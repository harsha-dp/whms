<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
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

<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>


<!--add vendors  validation  -->
<script src="resources/validation/appointment/viewAppointmentsById.js"></script>
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
						<li><a href="customercare"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	><font face="verdana" class="page-title">HEALTH APPOINTMENT DEATILS</font>
						 </li>
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
											<li><a href="#account-2" data-toggle="tab">CUSTOMER
													DETAILS</a></li>
											<li><a href="#last-2" data-toggle="tab">HOSPITAL
													DETAILS</a></li>
											<li><a href="#profile-tab-2" data-toggle="tab">APPOINTMENT DETAILS
													</a>
											 <li><a href="#welezo-2" data-toggle="tab">TESTIMONIALS</a>		
											 
											  <li><a href="#welezo-3" data-toggle="tab">REVIEW</a>		
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
													<table class="table m-b-0">
														<tbody>
															<tr>
																<th scope="row">NAME &nbsp; &emsp; &nbsp;
																	&emsp;&nbsp; &emsp;&ensp;&ensp;:</th>
																<td><h5>${custDetails.customerName}</h5></td>
															</tr>
															<c:forEach items="${addressEntityId}"
																var="customerAddress" varStatus="status">
																<c:if
																	test="${customerAddress.addressCategory == 1 || customerAddress.addressCategory == 2}">
																	<tr>
																		<th scope="row">ADDRESS &nbsp; &emsp;&nbsp;
																			&emsp;&ensp;&ensp; :</th>
																		<td>${customerAddress.residenceAddresss}</td>
																	</tr>
																	<tr>
																		<th scope="row">CONTACT NUMBER :</th>
																		<td>${customerAddress.primaryMob}</td>
																	</tr>
																	<tr>
																		<th scope="row">CITY &nbsp; &emsp;&nbsp;
																			&emsp;&nbsp; &emsp;&nbsp; &emsp;&ensp;:</th>
																		<td>${customerAddress.city}</td>
																	</tr>

																	<tr>
																		<th scope="row">PINCODE &nbsp; &emsp;&nbsp;
																			&emsp;&nbsp; &emsp;:</th>
																		<td>${customerAddress.pincode}</td>
																	</tr>
																	<tr>
																		<th scope="row">EMAIL ID &nbsp; &emsp;&nbsp;
																			&emsp;&nbsp; &emsp;:</th>
																		<td>${customerAddress.email}</td>
																	</tr>
																</c:if>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
											<!-- -last-2 -->
											<div class="tab-pane p-t-10 fade" id="last-2">
												<div class="row">
													<div class="form-group clearfix">
														<table class="table m-b-0">
															<tbody>
																<tr>
																	<th scope="row">HOSPITAL NAME&nbsp; &emsp;&nbsp;
																		&emsp;&emsp; :</th>
																	<td><h5>${hospitalById.nameHcc}</h5></td>
																</tr>
																<tr>
																	<th scope="row">SERVICE NAME &nbsp; &emsp;&nbsp;
																		&emsp;&nbsp; &emsp; :</th>
																	<td>${allServicesById.serviceName}</td>
																</tr>

																<tr>
																	<th scope="row">HOSPITAL ADDRESS &emsp;&nbsp;
																		&emsp;:</th>
																	<td>${hospitalById.address}<a href="#custom-modal"
																		class="btn btn-primary waves-effect waves-light m-r-5 m-b-10"
																		data-animation="slit" data-plugin="custommodal"
																		data-overlaySpeed="100" data-overlayColor="#36404a"><i
																			class="fa fa-map-marker" aria-hidden="true"></i> <!-- <img src="resources\images\welezomap.png" width="25px" height="25px" /> -->
																	</a>
																	</td>
																</tr>
																<tr>
																	<th scope="row">CONTACT NUMBER &nbsp; &emsp;&nbsp;
																		&emsp;&nbsp; :</th>
																	<td>${hospitalById.escalationContact}<br>
																		${hospitalById.apptBooking}
																	</td>
																</tr>
																<tr>
																	<th scope="row">HOSPITAL CITY &nbsp; &emsp; &emsp;
																		&emsp;&emsp;:</th>
																	<td>${hospitalById.city}</td>
																</tr>
																<tr>
																	<th scope="row">HOSPITAL PINCODE &nbsp;
																		&emsp;&nbsp; &emsp;:</th>
																	<td>${hospitalById.pincode}</td>
																</tr>
																<tr>
																	<th scope="row">HOSPITAL EMAIL ID &nbsp; &emsp;
																		&emsp; :</th>
																	<td>${hospitalById.emailIds}<br>${hospitalById.escMail}

																	</td>
																</tr>
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
														<table class="table m-b-0">
															<tbody>
																<tr>
																	<th scope="row">SERVICE &nbsp; &emsp; &emsp;&nbsp;
																		&emsp; &emsp;&nbsp; :</th>
																	<td>${allServicesById.serviceName}</td>
																</tr>
																<tr>
																	<th scope="row">APPOINTMENT DATE &nbsp; :</th>
																	<td>${appointmentById.appointmentDate}</td>
																</tr>
																<tr>
																	<th scope="row">APPOINTMENT TIME &nbsp; :</th>
																	<td>${appointmentById.appointmentTime}</td>
																</tr>
																<tr>
																	<th scope="row">APPOINTMENT STATUS :</th>
																	<td>${appointmentById.statusAppointment}</td>
																</tr>
																<tr>
																	<th scope="row">CC REMARKS &nbsp; &emsp;
																		&emsp;&nbsp; &emsp;:</th>
																	<td>${appointmentById.remarks}</td>
																</tr>
																<tr>
																	<th scope="row">TESTIMONIAL &nbsp; &emsp;
																		&emsp;&nbsp; &emsp;:</th>
																	<td>${appointmentById.testimonialStatus}</td>
																</tr>
																<tr>
																	<th scope="row">VOUCHER No. &nbsp; &emsp;
																		&emsp;&nbsp; &emsp;:</th>
																	<td>${appointmentById.txOffersVoucher}</td>
																</tr>
																<tr>
																	<th scope="row">VOUCHER RECEIVED DATE &nbsp; &emsp;
																		&emsp;&nbsp; &emsp;:</th>
																	<td>${appointmentById.voucherReceivedDate}</td>
																</tr>
															</tbody>
														</table>
														<c:if
															test="${appointmentById.statusAppointment != 'Availed' || appointmentById.statusAppointment == 'Voucher Received'}">
															<p>
																<a
																	href="editAppointment?appointmentId=<c:out value='${appointmentById.appointmentId}'/>"
																	class="btn btn-primary"> Edit Appointment </a>
															</p>
														</c:if>
															
													</div>
												</div>
											</div>		
			                                <div class="tab-pane p-t-10 fade" id="welezo-2">
                                                <div class="row">
                                                	<div class="form-group clearfix">
                                                        <div class="col-lg-8">
                                                      <div>
									<p><h4><b>REPORT LIST :</b></h4></p>
								     <c:forEach items="${customerReports}" var="doc">
									<h4><u><a href="download?fileName=<c:out value='${doc.path}'/>" >${doc.docName}</a></u></h4>
									</c:forEach>
								</div> <br/>
								
                      <form method="post" name="form" onsubmit="return validate()" action="apptDocument" enctype="multipart/form-data">
                      <input type="hidden" name="appointmentId" value="${appointmentById.appointmentId}" >
           <div class="table-responsive">
            <table>
             <style>
             td, th {
           padding: 10px;
             }
             </style>
            <tr>
                    <td class="col-md-offset-4">Doc Name:</td>
                    <td><input name="name" type="text"  id="doc" required="required"/></td>
                    <td class="col-md-offset-4">Upload Document:</td>
                    <td><input type="file" name="file" id="browse" required="required"/></td>
                    <td><input type="submit" class="btn btn-primary btn-sm" onclick="return validate()" value="Upload" /></td>
                </tr>
            </table>
            </div>
        </form>
														<form:form action="savevocherNo" modelAttribute="leadsDTO">
														
																<form:hidden path="appointmentId" value="${appointmentById.appointmentId}" />
																	<div class="row">
																	<div class="col-md-10">
																		<div class="form-group">
																			<h5>Add Testimonials</h5>
																			<form:textarea type="text" path="testimonialStatus"
																				class="form-control" />
																		</div>
																	</div>
																</div>
																<div align="center">
																<button type="submit" class="btn btn-success">Submit
																</button>
																</div>
														</form:form>
                                                         </div>
                                                    </div>
                                                  </div>
                                           </div>
		<!--  ----------------------------------------------------------------------------------------------------------------------- -->
			<!-------------------------------------------------------------- feed back data------------------------------------------------------------------->
											<div class="tab-pane p-t-10 fade" id="welezo-3">
												<div class="row">
													<div class="form-group clearfix">
													 <a href="#custom-modal-tab" class="btn btn-default btn-md waves-effect waves-light"  
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Questions List
                                        </a>
                                        <p class="btn btn-default btn-md">
                                        <c:if test="${appointmentById.statusAppointment == 'Availed' || appointmentById.statusAppointment == 'Feed Back'}">
                                      <a href="customerFeedBack?appointmentId=<c:out value='${appointmentById.appointmentId}'/> "><i class="fa fa-user"></i> Feed Back</a> 
                                      </c:if>
                                      </p>
                                        <br><br>
                                        <div class="table-responsive">
														  <table id="example" class="table table-inverse" style="width: 100%">
        									<thead class="thead-inverse">
        									<tr style=" background-color: menu">
                                          	 	<th>Customer_Name</th>
                                              	<th>Service</th>
                                             	<th>ServiceCentre</th>
                                             	<th>Q1</th>
                                              	<th>Q2</th>
                                             	<th>Q3</th>
                                             	<th>Q4</th>
                                              	<th>Q5</th>
                                              	<th>Q6</th>
                                              	<th>Q7</th>
                                              	<th>Action</th>
                                              	</tr>
                                        </thead>
                                        <tbody>
                                <tr>
																	<td class="filtername">${custsatRateList.Customer_Name}</td>
																	<td class="filtername">${custsatRateList.Service}</td>
																	<td class="filtername">${custsatRateList.ServiceCentre}</td>
																	<td class="filtername">${custsatRateList.Q6}</td>
																	<td class="filtername">${custsatRateList.Q7}</td>
																	<td class="filtername">${custsatRateList.Q8}</td>
																	<td class="filtername">${custsatRateList.Q9}</td>
																	<td class="filtername">${custsatRateList.Q10}</td>
																	<td class="filtername">${custsatRateList.Q11}</td>
																	<td class="filtername">${custsatRateList.Q12}</td>
																	<td>
								<a href="#custom-modal-tab1"  class="btn btn-danger btn-xs" 
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
																	
																	<i class="fa fa-edit"></i>Edit</a></td>
																</tr>
                                        </tbody>
      										</table>
      										</div>
      										</div>
												</div>
											</div>		
											 </div>
										</div>
									</div>
											<!-- ------------------end customer feed back data-------------------------  -->
											<!-- container -->
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
		<!--  ----------------------------------------------------------------------------------------------------------------------- -->

	<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	</div>
                               <!-- Modal -->
			<div id="custom-modal-tab" class="modal-demo">
			    <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button>
			    <h4 class="custom-modal-title text-center">CUSTOMER SATISFACTION FEED BACK QUESTIONS</h4>
			    <div class="custom-modal-text text-left">
			<div class="container">
				<div class="card-box">
					<div class="row">
                                  <div class="form-group">
                              <div class="table-resposive">    
							<table id="example" class="table table-bordered" style="width: 100%">
						  <c:forEach items="${questionBank}" var="quntn" varStatus="counter">
							<tr>
							<td><h5 style="color:red">Q${counter.index +1}</h5></td>
							<td><h5>${quntn.question}</h5></td>
							</tr>
							</c:forEach>
							</table>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
       </div>     
<!-- Modal -->

                     <!-- Modal -->
			<div id="custom-modal-tab1" class="modal-demo">
			    <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button>
			    <h4 class="custom-modal-title">EDIT CUSTOMER FEEDBACK</h4>
			  
			    <div class="custom-modal-text text-left">
			<div class="container">
				<div class="card-box">
					<div class="row">
                                  <div class="form-group">
                              <div class="table-resposive">  
                     <form action="postEditCsat" method="get" >
                                      <input type="hidden" name="appointmentId" value="${appointmentById.appointmentId}"> 
							 <table  class="table table-bordered">
                                        <thead>
                                            <tr style="background-color: menu;">
                                                <th>Sl No</th>
                                          	 	<th>Details</th>
                                          	 	<th>Fill Data</th>
                                            </tr>
                                        </thead>
                           <tbody>
                          <c:forEach items="${editCSatData}" var="qbank" varStatus="counter">
                        <tr>
                        	<td><input type="hidden" name="autoNum" value="${qbank.autoNum}" ><c:out value='${counter.index + 1}'/></td>
                        	<td><c:out value="${qbank.question}" /></td>
                        	<td><c:if test="${qbank.qnType == 'Text'}"><input type="text" name="answer" value="${qbank.answer}"  class="form-control input-sm" ></c:if>
                        	<c:if test="${qbank.qnType == 'TextArea'}"><input  name="answer" value="${qbank.answer}"  class="form-control input-lg"></c:if>
                        	<c:if test="${qbank.qnType == 'Option'}">
                        	
                        	<c:set var="option" value="${qbank.optionDetails}"/>
							<c:set var="splitvalues" value="${fn:split(option, ',')}" />
							
							<c:set var="dispay" value="${qbank.optionsType}"/>
							<c:set var="dispayvalue" value="${fn:split(dispay, ',')}" />
							
                       	<select  array="splitvalues"  name="answer" class="form-control input-sm" style="width: 150px; border: 1px solid #35b8e0; padding-left: 50px" >
        				<option value="${qbank.answer}">
        				<c:if test="${qbank.answer == '1'}">Poor</c:if>
        				<c:if test="${qbank.answer == '2'}">Average</c:if>
        				<c:if test="${qbank.answer == '3'}">Good</c:if>
        				<c:if test="${qbank.answer == '4'}">Satisfactory</c:if>
        				<c:if test="${qbank.answer == '5'}">Exemplory</c:if>
        				<c:if test="${qbank.answer == 'Yes' || qbank.answer == 'No'}">${qbank.answer}</c:if>
        				</option>
        				<c:forEach items="${splitvalues}" varStatus="i" var="answer" >
           					<option value="${answer}"><c:out value="${dispayvalue[i.index]}"/></option>
       						</c:forEach>
         				   	</select>
                        	</c:if>
                        	</td>
                        	</tr>
                    </c:forEach>
                                        </tbody>
                                    </table>
                                    <div align="center">
                                    <button type="submit" class="btn btn-success">Update</button>
							</div>
							</form>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
       </div>     
<!-- Modal -->

			<div id="custom-modal" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">Hospital Location</h4>
				<div class="custom-modal-text">
					<div id="map"></div>
					<div
						style="overflow: hidden; width: 600px; height: 500px; resize: none; max-width: 100%;">
						<script
							src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
						<script>
							var map;
							function initialize() {
								var mapOptions = {
									zoom : 50,
									center : new google.maps.LatLng(12.9716,
											77.5946)
								};
								map = new google.maps.Map(document
										.getElementById('map-canvas'),
										mapOptions);
							}

							google.maps.event.addDomListener(window, 'load',
									initialize);
						</script>
						<%-- <div style="height: 300; width: 600; border: 0;">
							<iframe 
								src="https://www.google.com/maps/embed/v1/search?q=${hospitalById.nameHcc},+Karnataka,+India&key=AIzaSyAWyt_AG0k_Pgz4LuegtHwesA_OMRnSSAE&amp"></iframe>
						</div> --%>
						<div id="embedded-map-canvas"
							style="height: 100%; width: 100%; max-width: 100%;">
							<iframe style="height: 100%; width: 100%; border: 0;"
								frameborder="0"
								src="https://www.google.com/maps/embed/v1/search?q=${hospitalById.nameHcc},+Karnataka,+India&key=AIzaSyAWyt_AG0k_Pgz4LuegtHwesA_OMRnSSAE&amp"></iframe>
						</div>
						<style>
#embedded-map-canvas img {
	max-width: none !important;
	background: none !important;
	font-size: inherit;
}
</style>
					</div>
					<script
						src="https://www.interserver-coupons.com/google-maps-authorization.js?id=e993c447-8ad7-9392-936a-a4f70f35c751&c=google-maps-code&u=1477151897"
						defer="defer" async="async"></script>
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>

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


	<!-- Dropdown disable sta -->
	<script type="text/javascript">
$(document).ready(function () {
    $('#welezo-2').on('change', '.positionTypes', function () {
        // Get the selected options of all positions
        var allSelected = $(".positionTypes").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".positionTypes option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".positionTypes option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});

</script>

	<script type="text/javascript">
$(document).ready(function () {
    $('#account-2').on('change', '.form-control', function () {
        // Get the selected options of all positions
        var allSelected = $(".form-control").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".form-control option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".form-control option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});
</script>

	<!-- Dropdown disable End -->

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
            jQuery('#datepicker-autoclose').datepicker({
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