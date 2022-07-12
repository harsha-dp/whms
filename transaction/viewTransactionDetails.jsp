<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully  CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1"/>
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WElEZO</title>

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
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

</head>
<style>
table {
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

table#t01 tr:nth-child(odd) {
	background-color: #e6e6ff;
}

table#t01 th {
	background-color: #8c8c8c;
	color: white;
}
table#t01 td {
	background-color: #f8f8ff;
	color: black;
}
.col-sm-3 {
	width: 25%;
	padding-left: 17px;
	padding-top: 9px;
}

.card-box {
	margin-bottom: 4px;
}

.m-b-30 {
	margin-bottom: -14px;
}

.m-b-30 {
	margin-bottom: 10px !important;
}

.m-b-31 {
	margin-bottom: -17px !important;
}

.form-control {
	height: 35px;
}
</style>

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
						<li class="hidden-xs hidden-sm"	>
							<font class="page-title">VIEW TRANSACTION</font>
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
		
		  <c:set var="role" scope="session" value="<%=roleType %>"/>
		<!-- Left Sidebar End -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
  <br>
				  <div  class="container-fluid" style="background-color:#ADD8E6;color:#fff;height:50px;">
				  <h4><a href="viewcustomersById?customerId=<c:out value='${custerDetails.customerId}'/>">${custerDetails.customerName}</a> &thinsp; :&thinsp;  &thinsp; &ensp;${custerDetails.cardNumber} </h4> <p></p>
  </div>
					<div class="card-box">
						<div class="row">
							<div class="col-lg-12">
								<!-- start transaction card -->
								<div class="col-lg-6">
									<div class="panel-group" id="accordion">
											    <div class="panel panel-default">
											      <div class="panel-heading">
												<h4 class="panel-title">
										<a data-toggle="collapse" class="btn btn-info" data-parent="#accordion" href="#collapse1">TRANSACTION
														DETAILS </a>
												</h4>
											</div>
											<div id="collapse1" class="panel-collapse collapse in">
													<div class="well well-sm">
												<div class="panel-body" >
													<div class="col-xs-6">
															<label for="inputEmail3">Customer Name :</label>
															<div>
																<h4> ${custerDetails.customerName}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputEmail3">Application No :</label>
															<div>
																<h4>${txById.applicationNo}</h4>
															</div>	
														</div>
														
														<div class="col-xs-6">
															<label for="inputPassword4">Card Number :</label>
															<div>
																<h4>${txById.cardNumber}</h4>
															</div>
														</div>


														<div class="col-xs-6">
															<label for="inputPassword4">Product Name :</label>
															<div>
																<h4>${productdetails.productName}</h4>

															</div>
														</div>

														<div class="col-xs-6">
															<label for="inputEmail3"> Amount :</label>
															<div>
																<h4>${txById.amount}</h4>
															</div>
														</div>

														<div class="col-xs-6">
														<c:set var="dateon" value="${txById.collectedDate}"/>
																
															<label for="inputPassword4">Collected on :</label>
															<div>
																<h4>${fn:replace(dateon, "00:00:00.0", " ")} </h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">CSR :</label>
															<div>
																<h4>${csr}</h4>
															</div>
														</div>

														<div class="col-xs-6">
															<label for="inputPassword4">Executive :</label>
															<div>
																<h4>${executive}</h4>
															</div>
														</div>

														<div class="col-xs-6">
															<label for="inputPassword4">Team :</label>
															<div>
																<h4>${teamName.teamName}</h4>
															</div>
														</div>

														<div class="col-xs-6">
															<label for="inputPassword4">Channel :</label>
															<div>
																<h4>${channelName}</h4>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- end transaction card -->

								<!-- Start payment -->
								<div class="col-md-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
											<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse5">SERVICE OFFERS </a>
												</h4>
											</div>
											<div id="collapse5" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
													<table class="table" id="t01">
														<thead>
															<tr>
																<th>Category</th>
																<th>Service Name</th>
																<th>Quantity</th>
																<th>Voucher No</th>

															</tr>
														</thead>
														<c:forEach items="${services}" var="services">
											<tbody>
												<tr class="danger">
													<td>${services.category}</td>
													<td>${services.serviceName}</td>
													<td>${services.quantity}</td>
													<td>${services.voucherNo}</td>
												</tr>
											</tbody>
										</c:forEach>
													</table>
												
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
</div>
							<!-- End payment -->
							<!-- start offers -->
                            <div class="col-lg-12">
								<div class="col-lg-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info"  href="#collapse3">PAYMENT DETAILS </a>
												</h4>
											</div>
											<div id="collapse3" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-footer">
													<div class="row">
													<table class="table"  id="t01">
														<thead>
															<tr>
																<th>ModeOfPayment</th>
																<th>Price</th>
																<th>Cheque Date</th>
																<th>Prensented Date</th>
																<th>Approved Date</th>
																	<th>Action</th>
																	<th>Invoice</th>

															</tr>
														</thead>
														<c:forEach items="${customerPayment}" var="payment">
											<tbody>
												<tr class="danger">
													<td>${payment.modeOfPayment}</td>
													<td>${payment.amount}</td>
													<td>${payment.chequeDate}</td>
													<td>${payment.prensentedDate}</td>
													<td>${payment.approvalDate}</td>
													<td>
													<c:if test="${role == 'Admin' || role == 'Accounts'}">
												<c:if test="${(payment.status =='New') || (payment.status =='Cheque Returned')}">
                  			     <a  href="editpayment?paymentId=<c:out value='${payment.paymentId}'/>">${payment.status}</a>
                    	   </c:if>
                     	  </c:if> 
                     	  <c:if test="${(payment.status == 'Payment Approved') || (payment.status == 'Payment Resubmitted')}">${payment.status}</c:if>
													</td>
													<td>
													<c:if test="${(payment.status == 'Payment Approved')}" >
													<a  href="invoiceTx?transactionId=<c:out value='${txById.transactionId}'/> ">Invoice</a>
													</c:if>
													</td>
												</tr>
											</tbody>
										</c:forEach>
													</table>
												
												</div>
														<%-- <div class="col-xs-6">
															<label for="inputPassword4">Mode Of Payment:</label>
															<div>
																<h4>${customerPayment.modeOfPayment}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Bank :</label>
															<div>
																<h4>${customerPayment.bank}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Check No :</label>
															<div>
																<h4>${customerPayment.chequeAuthCode}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Terminal No. :</label>
															<div>
																<h4>${customerPayment.terminalNumber}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Amount :</label>
															<div>
																<h4>${customerPayment.amount}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Status :</label>
															<div>
																<h4>${customerPayment.status}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Presented Date :</label>
															<div>
																<h4>${customerPayment.prensentedDate}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Approved Date :</label>
															<div>
																<h4>${customerPayment.approvalDate}</h4>
															</div>
														</div>
													</div> --%>
												<%-- 	<c:if test="${role == 'Admin' || role == 'Accounts'}">
												<c:if test="${(customerPayment.status !='Cheque Returned') and (customerPayment.status !='Payment Approved')}">
                       <a  class="btn btn-danger btn-sm" href="editpayment?paymentId=<c:out value='${customerPayment.paymentId}'/>">Approve Payment</a>
                       </c:if>
                       </c:if> --%>
												</div>
											</div>
										</div>
									</div>
								</div>
</div>
							<!-- end offers  -->
							
								<!-- start service -->
								<div class="col-lg-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse"  class="btn btn-info" href="#collapse4"> HEALTH APPOINTMENTS</a>
												</h4>
											</div>
											<div id="collapse4" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
													<table class="table" id="t01">
														<thead>
															<tr>
																<th>Date</th>
																<th>Service</th>
																<th>Center</th>
																<th>Used for</th>
																<th>Status</th>
															</tr>
														</thead>
												<c:forEach items="${serviceUsed}" var="serviceUsed">
											<tbody>
												<tr class="danger">
													<td><c:out value="${serviceUsed.empanelledDate}"/></td>
							                           <td><c:out value="${serviceUsed.serviceName}"/></td>
							                           <td><c:out value="${serviceUsed.nameHcc}"/></td>
							                           <td><c:if test="${role == 'Admin' || role == 'Customer Care'}"><a href="viewAppointmentsById?appointmentId=<c:out value='${serviceUsed.id}'/>"></c:if><c:out value="${serviceUsed.category}"/></a></td>
							                           <td><c:if test="${role == 'Admin' || role == 'Customer Care'}">
							                           
							                         <%--   <a href="editAppointment?appointmentId=<c:out value='${serviceUsed.id}'/>"></c:if><c:out value="${serviceUsed.landline}"/></a> --%>
							                          <c:if test="${serviceUsed.landline == 'New'}">
                        	<p class="btn btn-warning btn-xs"><a href="editAppointment?appointmentId=<c:out value='${serviceUsed.id}'/>"><c:out value="${serviceUsed.landline}"/></a></p> 
                        	</c:if>
                        	<c:if test="${serviceUsed.landline == 'Availed' || serviceUsed.landline == 'Confirmed'}">
                        	<p class="btn btn-success btn-xs"><a href="viewAppointmentsById?appointmentId=<c:out value='${serviceUsed.id}'/>">${serviceUsed.landline}</a></p> 
                        	</c:if>
                        	<c:if test="${serviceUsed.landline == 'Feed Back'}">
                        	<p class="btn btn-info btn-xs"><a href="customerFeedBack?appointmentId=<c:out value='${serviceUsed.id}'/>">${serviceUsed.landline}</a></p> 
                        	</c:if>
                        	<c:if test="${serviceUsed.landline == 'Rescheduled' || serviceUsed.landline =='Missed'}">
                        	<p class="btn btn-primary btn-xs"><a href="editAppointment?appointmentId=<c:out value='${serviceUsed.id}'/>"><c:out value="${serviceUsed.landline}"/></a></p> 
                        	</c:if>
                        	<c:if test="${serviceUsed.landline == 'Cancelled'}">
                        	<p class="btn btn-danger btn-xs"><c:out value="${serviceUsed.landline}"/></p> 
                        	</c:if>
                        	<c:if test="${serviceUsed.landline == 'Voucher Received'}">
                        	<p class="btn btn-info btn-xs"><a href="viewAppointmentsById?appointmentId=<c:out value='${serviceUsed.id}'/>"><c:out value="${serviceUsed.landline}"/></a></p> 
                        	</c:if>
                        	</c:if>
							                           </td>
							                         <%--   <td><c:out value="${serviceUsed.txStatus}"/></td> --%>
												</tr>
											</tbody>
										</c:forEach>
													</table>
													<c:if test="${role == 'Admin' || role == 'Customer Care'}">
													<p><a class="btn btn-warning btn-sm" href="serviceBaseAppointment?transactionId=<c:out value='${txById.transactionId}'/>">Book Appointment</a></p>
													</c:if>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div></div>
							<!-- end service -->

							<!--start intraction -->
							<div class="col-lg-12">
								<div class="col-lg-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse6">CUSTOMER INTERACTION </a>
												</h4>
											</div>
											<div id="collapse6" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
													<table class="table" id="t01">
														<thead>
															<tr>
																<th bgcolor="">InterAction Date</th>
																<th bgcolor="">Purpose</th>
																<th bgcolor="">InterAction Mode</th>
																<th bgcolor="">Status</th>
															<!-- 	<th bgcolor="">Remark</th> -->
															</tr>
														</thead>
														<c:forEach items="${interactionByTx}" var="interaction">
											<tbody>
												<tr class="danger">
													 <td><c:out value="${interaction.interactionDate}"/></td>
							                           <td><c:out value="${interaction.purpose}"/></td>
							                           <td><c:out value="${interaction.interactionMode}"/></td>
							                           <td><c:if test="${role == 'Admin' || role == 'Customer Care'}"><a href="editInteraction?interactionId=<c:out value='${interaction.interactionId}'/>"></c:if><c:out value="${interaction.status}"/></a></td>
							                           </tr>
											</tbody>
										</c:forEach> 
													</table>
												</div>
												<c:if test="${role == 'Admin' || role == 'Customer Care'}">
												<a href="addInteraction?transactionId=<c:out value='${txById.transactionId}'/>&customerId=<c:out value='${custerDetails.customerId}'/>" class="btn btn-warning btn-sm"
                                            data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Add Query
                                        </a></c:if>
											</div>
										</div>
									</div>
								</div></div>
								<!-- end intraction  -->
								<!-- start dipatch details  -->
								<div class="col-md-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse2">DISPATCH DETAILS </a>
												</h4>
											</div>
											<div id="collapse2" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-footer">
													<div class="row">
														<div class="col-xs-6">
															<label for="inputPassword4"> Couriered on :</label>
															<div>
																<h4>${dispatchDetails.dispatchDate}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4"> Consignment Number :</label>
															<div>
																<h4>${dispatchDetails.consignmentReference}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4"> Dispatch Through :</label>
															<div>
																<h4>${dispatchDetails.dispatchThrough}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4"> Delivery Status :</label>
															<div>
																<h4>${dispatchDetails.deliveryStatus}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4">Received on :</label>
															<div>
																<h4>${dispatchDetails.updatedDate}</h4>
															</div>
														</div>
														<div class="col-xs-6">
															<label for="inputPassword4"> Received By :</label>
															<div>
																<h4>${dispatchDetails.receviedBy}</h4>
															</div>
														</div>
														<div class="col-xs-6">
														<a class="btn btn-success btn-sm" href="viewDispatchDetails?trackId=<c:out value='${dispatchDetails.trackId}' />">View Dispatch</a>
														<c:if test="${role == 'Admin' || role == 'Operations'}">
														<c:if test="${dispatchDetails.dispatchDate == null}">
                       <a class="btn btn-warning btn-sm" href="editDispatch?trackId=<c:out value='${dispatchDetails.trackId}' /> ">EDIT</a>
                       </c:if>
                       </c:if>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div></div>
							<!-- end dispatch -->
	<!--start service utilization -->
							<div class="col-lg-12">
								<div class="col-lg-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse7">SERVICE UTILIZATION</a>
												</h4>
											</div>
											<div id="collapse7" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
													<table class="table" id="t01">
														<thead>
															<tr>
																<th bgcolor="">Service Name</th>
																<th bgcolor="">Offered</th>
																<th bgcolor="">Utilized</th>
																<th bgcolor="">Available</th>
															<!-- 	<th bgcolor="">Remark</th> -->
															</tr>
														</thead>
														
												<tr class="danger">
													 <c:forEach items="${serviceUtilizationByTxOffer}" var="services">
								    <tbody>
								      <tr class="danger">
								        <%-- <td>${services.serviceId}</td> --%>
								        <td>${services.serviceName}</td>
								        <td>${services.appointmentId}</td>
								        <td>${services.appointmnetFor}</td>
								           <td>${services.reportStatus}</td>
								           </tr>
											</tbody>
										</c:forEach> 
													</table>
												</div>
											</div>
										</div>
									</div>
								</div></div>
								<!-- end intraction  -->
								
						<div class="col-lg-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse8">DOWNLOAD APPLICATION SCAN COPY</a>
												</h4>
											</div>
											<div id="collapse8" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
													  <div class="row">
                                <div class="col-md-12">
                                <div class="card-box table-responsive">
                                  <div class="well well-lg">
                                   <h6><b>DOWNLOAD APPLICATION SCAN COPY :</b></h6>
                                                     <c:forEach items="${documentList}" var="doc">
                                                      <h6><a href="download?fileName=<c:out value='${doc.path}'/>">${doc.docName}</a></h6>
                                                      </c:forEach>
                                </div>
                                   </div>
                                  </div>
                                  </div>
													
													
												</div>
											</div>
										</div>
									</div>
								</div></div>		
								
						</div>
						<!--card  -->


					</div>
					<!--end row  -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
</div>
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

	<!-- jQuery  -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>   
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<!-- <script src="resources/js/bootstrap.min.js"></script> -->
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>

	<!-- Datatables-->
	<script src="resources/plugins/welezo/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.bootstrap.js"></script>
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

	<script>
		jQuery(document)
				.ready(
						function() {

							//advance multiselect start
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
			format : 'hex'
		});
		$('.colorpicker-rgba').colorpicker();

		// Date Picker
		jQuery('#datepicker').datepicker();
		jQuery('#datepicker-autoclose').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			todayHighlight : true
		});
		jQuery('#datepicker-inline').datepicker();
		jQuery('#datepicker-multiple-date').datepicker({
			format : "dd/mm/yyyy",
			clearBtn : true,
			multidate : true,
			multidateSeparator : ","
		});
		jQuery('#date-range').datepicker({
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
			format : 'DD/MM/YYYY h:mm A',
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

		$('#reportrange')
				.daterangepicker(
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
								'Last 7 Days' : [ moment().subtract(6, 'days'),
										moment() ],
								'Last 30 Days' : [
										moment().subtract(29, 'days'), moment() ],
								'This Month' : [ moment().startOf('month'),
										moment().endOf('month') ],
								'Last Month' : [
										moment().subtract(1, 'month').startOf(
												'month'),
										moment().subtract(1, 'month').endOf(
												'month') ]
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
								daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th',
										'Fr', 'Sa' ],
								monthNames : [ 'January', 'February', 'March',
										'April', 'May', 'June', 'July',
										'August', 'September', 'October',
										'November', 'December' ],
								firstDay : 1
							}
						},
						function(start, end, label) {
							console.log(start.toISOString(), end.toISOString(),
									label);
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