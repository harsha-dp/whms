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
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <!-- App title -->
        <title>WElEZO</title>
        
       <link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		 <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        <script src="resources/js/modernizr.min.js"></script>
      <!--   <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
      <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        
		<!-- Datepicker start -->
		   <link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
           <link rel="stylesheet" href="/resources/demos/style.css">
		   <script src="resources/datepicker/jquery-1.12.4.js"></script>
		   <script src="resources/datepicker/jquery-ui.js"></script>
		   <link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
      <!-- Datepicker end -->
      
      
<!--add vendors  validation  -->
<script src="resources/validation/appointment/serviceBaseAppointment.js"></script>
<!--  -->
   
    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <!-- <a href="index.html" class="logo"><span>WELEZO<span>ADMIN</span></span><i class="zmdi zmdi-layers"></i></a> -->
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
                            <li>
                           <a href="customercare"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                                <font class="page-title">HEALTH APPOINTMENT</font>
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
                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->
            <!-- ========== Left Sidebar Start ========== -->
            <%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <div class="row">
                        	<div class="col-md-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
											<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse5"> CUSTOMER TRANSACTION DETAILS :</a>
												</h4>
											</div>
											<div id="collapse5" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
	                                            <div class="form-group">
	                                            	<form>
	                                                <label  for="inputEmail3" class="col-sm-3 control-label">Application No:</label>
	                                                <div class="col-sm-9">
	                                                  <h4><a href="editTransaction?transactionId=<c:out value='${txById.transactionId}'/>">${txById.applicationNo}</a></h4>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="form-group">
	                                             <label for="inputPassword3" class="col-sm-3 control-label">Customer Name:</label>
	                                                <div class="col-sm-9">
	                                                  <h4><a href="viewcustomersById?customerId=<c:out value='${custerDetails.customerId}'/>">${custerDetails.customerName}</a> </h4>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="form-group">
	                                                 <label for="inputPassword4" class="col-sm-3 control-label">Product Name:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${productdetails.productName}</h4>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label">Payment Status:</label>
	                                                <div class="col-sm-9">
	                                                <%--  <form:input path="paymentStatus" value="${txById.paymentStatus}"  class="form-control" id="inputPassword4" placeholder="Payment Status:" /> --%>
													<h4>${txById.paymentStatus}</h4>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label" >Status:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${txById.txStatus}</h4>
	                                                </div>
	                                            </div>
	                                             <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label" >CSR:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${csr}</h4>
	                                                </div>
	                                            </div>
	                                             <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label" >executive:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${executive}</h4>
	                                                </div>
	                                            </div>
	                                             <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label" >Channel:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${channelName}</h4>
	                                                </div>
	                                            </div>
	                                             <div class="form-group">
	                                                 <label  for="inputPassword4" class="col-sm-3 control-label" >Card Number:</label>
	                                                <div class="col-sm-9">
	                                                  <h4>${txById.cardNumber}</h4>
	                                                </div>
	                                            </div>
                                    </form>
	                                            <div class="row">  
	                                           <div class="col-md-6">
											
	                                            </div> 
	                                
												</div>
											</div>
										</div>
									</div>
								</div>
							</div><!-- end col -->
							</div>
                           <div class="col-md-6">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
											<h4 class="panel-title">
													<a data-toggle="collapse" class="btn btn-info" href="#collapse6"> SERVICE DETAILS :</a>
												</h4>
											</div>
											<div id="collapse6" class="panel-collapse collapse">
											<div class="well well-sm">
												<div class="panel-body">
                        		
                        			<h5> ${productdetails.productName}</h5>
                        			<table class="table" border="1" >
								    <thead >
								      <tr>
								        <!-- <th bgcolor="#34EAD8">Service Id</th> -->
								        <th bgcolor="#34EAD8">Service Name</th>
								        <th bgcolor="#34EAD8">Offered</th>
								        <th bgcolor="#34EAD8">Utilized</th>
								         <th bgcolor="#34EAD8">Available</th>
								        <!--  <th bgcolor="#34EAD8">Action</th> -->
								      </tr>
								    </thead>
								    <c:forEach items="${serviceUtilizationByTxOffer}" var="services">
								    <tbody>
								      <tr class="danger">
								        <%-- <td>${services.serviceId}</td> --%>
								        <td>${services.serviceName}</td>
								        <td>${services.appointmentId}</td>
								        <td>${services.appointmnetFor}</td>
								           <td>${services.reportStatus}</td>
								        <%-- <td><a href="bookappointment?serviceId=<c:out value='${services.serviceId}'/>">
                       Book</a></td> --%>
                      <%--  <td>
                       <a href="bookappointment?serviceId=<c:out value='${services.serviceId}'/>&txId=<c:out value="${txById.transactionId}" />"><u>Book</u></a>
                       </td> --%>
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
                        		<!--  -->
                            <div class="col-lg-12">
                                 <div  class="container-fluid" style="background-color:#ADD8E6;color:#ADD8E6;height:40px;">
				  <h4> BOOK HEALTH APPOINTMENT</h4> <p></p>
  </div>
                                <div class="card-box">
                                <div class="row">
                                 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>      
								<script src="resources/js/select.js"></script>
								<script type="text/javascript">
									$(document).ready(function(){
										$(function() {
											if (localStorage.getItem('model')) {
												$("#model option").eq(localStorage.getItem('model')).prop('selected', true);
											}
											$("#model").on('change', function() {
												var str = $(this).val();
												location.href = "serviceBaseAppointment?data=" + str+"&transactionId=12";
												localStorage.setItem('model', $('option:selected', this).index());
											});
										});
									});
								</script>
								
								<script type="text/javascript">
								$("#welezo1").change(function() { 
									if($(this).data('options') == undefined){
									    $(this).data('options',$('#welezo2 option').clone());
									    } 
									var id = $(this).val();
									var options = $(this).data('options').filter('[data-val=' + id + ']');
									$('#welezo2').html(options);
									});
								</script>
			                    <form:form  action="checkServiceAvailable"  name="form" onsubmit="return validate()" modelAttribute="appointmentDTO">
				                    <form:hidden path="bookedBy" value="<%=id %>" class="form-control"  />
									<form:hidden path="customerId" value="${custerDetails.customerId}"/>
									<form:hidden path="transactionId" value="${txById.transactionId}"/>
									
									
								  <div class="col-md-12">
								    <div class="col-md-6">
								     <label><b>SELECT HOSPITAL & SERVICE <span style="color:red;">*</span></b></label>
									 <select name="serviceId" class="form-control" id="sel1">
									 <option value="" label="Select services"></option>
  										<c:forEach items="${serviceUtilizationByTxOffer}" var="service">
  										<c:if test="${service.reportStatus != 0}">
    									<option value="${service.serviceId}">${service.serviceName}</option>
    									</c:if>
  										</c:forEach>
  									</select>
  									<font id="sel1error" style="color: red;"></font>
                                   </div>
                                
                                <div class="col-md-6">
                                <label class="control-label">Appointment For <span style="color:red;">*</span></label>
                                <form:select path="familyId" class="form-control form-white" id="family">
													<form:option value="" label="Select Member"
														class="form-control form-white" />
													<form:options items="${custfamily}" itemValue="familyId" itemLabel="FName" />
												</form:select>
												<font id="familerror" style="color: red;"></font>		
                                 
                                </div>
                                </div>
                               
                               
                              <%--   <div class="col-md-12">
								    <div class="col-md-6">
								    <script>
								$("#sel1").change(function() { 
									if($(this).data('options') == undefined){
									    $(this).data('options',$('#sel2 option').clone());
									    } 
									var id = $(this).val();
									var options = $(this).data('options').filter('[data-val=' + id + ']');
									$('#sel2').html(options);
									});
								</script>
								    <label></label>
                                 	 <select name="hospitalId" class="form-control" id="sel2">
                                 	  <option value="" label="Select Hospital"></option>
									  <c:forEach items="${serviceBaseHospital}" var="service">
									    <option value="${service.hospitalId}" data-val="${service.serviceId}">
									      ${service.nameHcc}
									    </option>
									  </c:forEach>
									  </select>
								    </div> --%>
								      <p>&nbsp;</p>
								    <div class="col-md-12">
								     <div class="col-md-6">
								      <label class="control-label">Date <span style="color:red;">*</span></label>
												<div class="input-group">
													<form:input  path="appointmentDate" class="form-control"
														placeholder="dd/mm/yyyy" id="datepicker" readonly="true"/> <span
														class="input-group-addon bg-primary b-0 text-white" ><i
														class="fa fa-calendar"></i></span>
														</div>
														 <font id="dateerror" style="color: red;"></font>
								    </div>
								    <script src="resources/datepicker/jquery-1.12.4.js"></script>
  <script src="resources/datepicker/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $( function() {
    $("#datepicker").datepicker({
        minDate: -30, 
        maxDate: "+1M",
        dateFormat: 'dd/mm/yy',
       /*  beforeShowDay: noSunday, */
        
    });
    
    $("#datepicker").datepicker();
		$('.fa-calendar').click(function() {
			$("#datepicker").focus();
   	  });
		
    function noSunday(date){ 
         return [date.getDay() != 0, ''];
      }; 

   /*  $("#datepicker").datepicker().datepicker("setDate", new Date()) */

  } );
});
</script>
								    
								    
								
								    <div class="col-md-6">
								    <label>Preferred City <span style="color:red;">*</span></label>
								    <form:select path="serviceName" title="Select City"
									class="form-control" id="timee" >
									<form:option value="" label="Select preferred City" />
									<c:forEach items="${cityList}" var="cityl">
										<option  value="${cityl.city}">${cityl.city}</option>
										</c:forEach>
								    </form:select>
								    <font id="timeerror" style="color: red;"></font>
								    </div>
								    </div>
								      <br/>
								      <p>&nbsp;</p>
								        <div class="col-md-12">
												<div class="col-md-offset-5">
													<button type="submit" onclick="return validate()"
														class="btn btn-info waves-effect waves-light">Check Availablity</button>
														<button type="reset" class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
												</div>
											</div>
										
										 </form:form>			
                               
                                </div>
                                </div>
                                </div>
                                </div>
                             
                        <!-- end row -->
                    </div> <!-- container -->
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
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
       <!--  <script src="resources/js/jquery.min.js"></script> -->
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/detect.js"></script>
        <script src="resources/js/fastclick.js"></script>
        <script src="resources/js/jquery.slimscroll.js"></script>
        <script src="resources/js/jquery.blockUI.js"></script>
        <script src="resources/js/waves.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <!-- Plugins Js -->
        <script src="resources/plugins/switchery/switchery.min.js"></script>
        <script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/plugins/moment/moment.js"></script>
     
     	<!-- <script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script> -->
     	<!-- <script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
        <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

    </body>
</html>