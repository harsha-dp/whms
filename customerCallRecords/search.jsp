<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully  CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1"/>

<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!--  -->

<!-- App title -->
<title>WELEZO</title>
<!--  -->

<!--calendar css-->
<link href="resources/plugins/fullcalendar/dist/fullcalendar.css" rel="stylesheet" />

<!-- Plugins css-->
<link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
<!--  -->

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
<link href="resources/plugins/custombox/dist/custombox.min.css"	rel="stylesheet" />
<!--  -->


<!-- container top space remove -->
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<!--  -->

<!--Add presales validation  -->
<script src="resources/validation/presales/addPresales.js"></script>
<!--  -->
   
<script src="resources/js/modernizr.min.js"></script>

<!-- Datepicker start -->
<link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="resources/datepicker/jquery-1.12.4.js"></script>
<script src="resources/datepicker/jquery-ui.js"></script>
<link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>

<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<!--  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/> -->
<!-- Datepicker end -->
<style>

#n{
    border-style: solid;
    border-width: thin;
}
.modal .modal-dialog .modal-content .modal-header {
    background-color: coral;
}

</style>
<script>
//A $( document ).ready() block.
 $(window).load(function(){
                $('#onload').modal('show');
            });

</script>

<script>
//A $( document ).ready() block.
 $(window).load(function(){
                $('#appt').modal('show');
            });

</script>
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper" >
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
					         <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                            </li>
						<li>
                             <a href="welezouser_dashboard" > <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs">
							<font face="verdana" class="page-title" style="font-size:2vw;">PRESALES & CALLS DETAILS </font>
							
						</li>
						
					</ul>
					<ul class="nav navbar-nav navbar-right" style="font-size:1vw;">
								<li>
              <button type="button" class="button button5 btn-responsive btn-sm" value=" Go Back !" 
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
		 <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
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
						<div class="col-sm-12">
								<div class="card-box table-responsive">
								<%-- <div class="col-md-5">
								<h4>CUSTOMER DETAILS SEARCH</h4>
					            <p>(Check customer details already existing or not before fixing appointment)</p>
								<div id="custom-search-input">
				            	<form action="searchCustomer" name="form1" onsubmit="return validate1()" method="post">
				                <div class="input-group col-md-12">
				                    <input type="text" class="form-control input-sm" name="phoneNumber" id="search" placeholder="Enter Customer Contact Number :" />
				                    <span class="input-group-btn">
				                        <button class="btn btn-info btn-sm" onclick="return validate1()" type="submit">
				                            <i class="fa fa-search fa-1x"  aria-hidden="true"></i>
				                        </button>
				                    </span>
				                </div>
				                    <font id="searcherror" style="color:red"></font>
				                </form>
					        </div>
					        </div> --%>
					        <div class="col-md-5">
								<h4>CUSTOMER DETAILS SEARCH</h4>
					            <p>(Check customer details already existing or not before fixing appointment)</p>
								<div id="custom-search-input">
				            	<form action="searchCustomer" name="form1" onsubmit="return validate1()" method="post">
				                <div class="input-group col-md-12">
				                    <input type="text" class="form-control input-sm" name="phoneNumber" id="search" placeholder="Enter Customer Contact Number :" />
				                    <span class="input-group-btn">
				                        <button class="btn btn-info btn-sm" onclick="return validate1()" type="submit">
				                            <i class="fa fa-search fa-1x"  aria-hidden="true"></i>
				                        </button>
				                    </span>
				                </div>
				                </form>
					        </div>
					        </div>
                        		
                        		</div>
								
						 <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                      <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                       	<%--  <c:out value="${columnName.size()}"></c:out> --%>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <th class="filtername">${name.columnName}</th>
									</c:forEach>
									<th>Action</th>
                                   </tr>
                                        </thead>
					<tbody>
					 <c:choose>
      						 <c:when test="${not empty stkList}">
      						  <c:if test="${customerMoreThan3Appointment.totalAppt > 3}">
      						   
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true"  id="onload">

    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="n" id="n">
        <div class="modal-header text-center">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">Alert <i class="fa fa-exclamation-circle"></i> PLEASE VALIDATE THIS APPOINTMENT</h4>
        </div>
        <div class="modal-body">
        
         <h4 class="alert-heading text-center">Check This Customer <strong>${customerMoreThan3Appointment.CustomerName} </strong></h4>
  <h5 class="alert-heading text-center">already has Taken ${customerMoreThan3Appointment.totalAppt}  appointments</h5>
  <h5 class="alert-heading text-center">Customer last received call from CSR is ${customerLastCallRxFsomCSR.CalledBy} 
   called date ${customerLastCallRxFsomCSR.CalledOn}
   Duration has taken ${customerLastCallRxFsomCSR.Duration} Sec. </h5>
        
        </div>
        <div align="center">
          <button type="button" class="btn btn-default" data-dismiss="modal">Confirm</button>
        </div>
        <br />
        </div>
      </div>

    </div>
</div>

</c:if>
					  <c:forEach var="row" items="${stkList}" varStatus="counter"> 
                                <tr>
                                   <c:if test="${columnName.size() >= 1}"><td> ${counter.index +1}</td></c:if>
                                   <c:if test="${columnName.size() >= 2}"><td><a href="presalesview?leadsId=<c:out value='${row.attr1}'/>" >${row.attr2}</a></td></c:if>
                                   <c:if test="${columnName.size() >= 3}"><td>${row.attr3}</td></c:if>
                                   <c:if test="${columnName.size() >= 4}"><td>${row.attr4}</td></c:if>
                                   <c:if test="${columnName.size() >= 5}"><td>${row.attr5}</td></c:if>
                                    <c:if test="${columnName.size() >= 6}"><td>${row.attr6}</td></c:if>
                                    <c:if test="${columnName.size() >= 7}"><td>${row.attr7}</td></c:if>
                                     <c:if test="${columnName.size() >= 8}"><td>${row.attr8}</td></c:if>
                                   <c:if test="${columnName.size() >= 9}"><td>${row.attr9}</td></c:if>
                                    <c:if test="${columnName.size() >= 10}"><td>${row.attr10}</td></c:if>
                                     <c:if test="${columnName.size() >= 11}"><td>${row.attr11}</td></c:if>
                                     <c:if test="${columnName.size() >= 12}"><td>${row.attr12}</td></c:if>
                                      <c:if test="${row.attr7 == 'New Appointment'}"> <td><a href="editpresales?leadsId=<c:out value='${row.attr1}'/>" >edit</a></td>
                                     </c:if>
                                      <c:if test="${(row.attr7 == 'Rescheduled') || (row.attr7 == 'Not Interested') || (row.attr7 == 'Collected')  }"> <td><a href="presalesview?leadsId=<c:out value='${row.attr1}'/>" >ADD</a></td>
                                     </c:if>
            </tr></c:forEach>
            </c:when>
             <c:otherwise>
   <c:if test="${phoneNumber ne null}">
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true"  id="appt">


          <div class="modal-dialog modal-full">
                                            <div class="modal-content">
                    <div class="n" id="n">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><b> × </b></button>
                                                   <h6 class="custom-modal-titlel-text text-center"><b>PRE-SALES APPOINTMENT</b></h6>
                                                </div>
                                            
                                                <div class="modal-body">
                                                
				<form:form action="savePresales" name="form" onsubmit="return validate()" modelAttribute="presalesDTO">
                                                <div class="custom-modal-text text-left">

				<!-- =============	form:form start from here ==============    -->
				
				<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
					
					<div class="row">
						<div class="col-md-6">
						<div class="form-group">
						<label for="name">Customer Name <span style="color:red;">*</span></label>
						
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
						<form:input type="text"
							onkeypress="return onlyAlphabets(event,this);"
							path="customerName" class="form-control" id="custname"
							placeholder="" />
							</div>
							<font id="custnameerror" style="color: red;"></font>
					</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
						<label for="name">Mobile Number <span style="color:red;">*</span></label>
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-mobile" aria-hidden="true"></i></span>
						<form:input type="text" 	 path="primaryMob" value="${phoneNumber}" class="form-control" id="contactnumber"
							placeholder=""  />
						<span id="error" style="color: red; display: none">* Enter
							digits (0 - 9)</span>
					</div>
							<font id="contactError" style="color: red;"></font>
					</div>
					</div>
					</div>
					
					<div class="row">
						<div class="col-md-4">
					<div class="form-group">
						<label for="name">Address <span style="color:red;">*</span></label>
						
						<form:textarea path="residenceAddresss" id="addresss"
							rows="2" cols="55" />
                           <font id="addresserror" style="color: red;"></font>
					
					</div>
					</div>
					
					<div class="col-md-4">
							<div class="form-group">
								<label for="assign">City <span style="color:red;">*</span></label>
								<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
								<form:input type="text"
									onkeypress="return onlyAlphabets(event,this);" path="city"
									class="form-control" id="cityy" placeholder=""
									 />
							</div>
									  <font id="cityerror" style="color: red;"></font>
						</div>
						</div>
						
						<div class="col-md-4">
							<div class="form-group">
								<label for="priority">Pin Code</label>
								<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-map-pin" aria-hidden="true"></i></span>
								<form:input type="text" minlength="3" maxlength="10" runat="server"
									onkeypress="javascript:return isNumber(event)" path="pincode"
									class="form-control" id="priority" placeholder=""
									 />
								<span id="error" style="color: Red; display: none">*
									</span>
							</div>
							</div>
						</div>
					
					</div>
					
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
						<label for="Sdate">Product Interested <span style="color:red;">*</span></label>
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-product-hunt" aria-hidden="true"></i></span> 
						<form:select path="productIntrested" title="Product name"
							class="form-control input-sm" id="productt">
							<form:option value="" label="select Product Name" />
							<c:forEach var="product" varStatus="status" items="${allProducts}">
							<form:option  value="${product.productId}">${product.productName}</form:option>
							</c:forEach>
						</form:select>
					</div>
						 <font id="producterror" style="color: red;"></font>
					</div>
					</div>
					
					 <div class="col-md-4">
							<div class="form-group">
										<strong> Date of Appointment <span style="color:red;">*</span></strong>
										<form:input type="text" path="dateAppointment"
										id="datepicker" placeholder="dd/mm/yyyy" class="form-control input-sm" readonly="true"/>
						</div>
							<font id="dateerror" style="color: red;"></font>
						</div>
						 <script src="resources/datepicker/jquery-1.12.4.js"></script>
								  <script src="resources/datepicker/jquery-ui.js"></script>
								<script type="text/javascript">
								$(document).ready(function(){
								  $( function() {
								    $("#datepicker").datepicker({
								        minDate: +0, 
								        maxDate: "+1M",
								        dateFormat: 'dd/mm/yy',
								        beforeShowDay: noSunday,
								        
								    });
								    function noSunday(date){ 
								         return [date.getDay() != 0, ''];
								      }; 
								
								    } );
								});
								</script>
					<div class="col-md-4">
							<div class="form-group">
						<label for="name">Time of Appointment <span style="color:red;">*</span></label>
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
								<form:select path="timeAppointment" title="----TOA----"
									class="form-control input-sm" id="timee">
									<form:option value="" label="select time slot" />
									<form:option value="Before 9:30">  Before 09:30  </form:option>
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
									<form:option value="After 6:30">After 06:30</form:option>
								</form:select>
					</div>
								<font id="timeerror" style="color: red;"></font>
					</div>
                  </div>
						
						
					</div>
					
					<div class="row">
					
					<div class="col-md-4">
							<div class="form-group">
								<label for="Sdate">Channel <span style="color:red;">*</span></label>
								<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-television" aria-hidden="true"></i></span>
								<form:select path="channel" title="channel Name"
									class="form-control input-sm" id="channell">
									<form:option value="" label="select channel name" />
									<form:options items="${allChannels}" itemValue="channelId"
										itemLabel="channelsName" />
								</form:select>
							</div>
								 <font id="channelerror" style="color: red;"></font>
                           </div>
						</div>
						
						 
					 <div class="col-md-4">
							<div class="form-group">
										<strong>Team Name <span style="color:red;">*</span></strong>
										<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-users" aria-hidden="true"></i></span>
										<form:select path="teamName" title="Select Team Name"
											class="form-control input-sm" id="team">
											<form:option value="" label="select team name" />
											<c:forEach var="team" varStatus="status" items="${allTeamName}">
													<form:option path="teamName" value="${team.teamId}">${team.teamName}</form:option>
											</c:forEach>
										</form:select>
										</div>
										 <font id="teamerror" style="color: red;"></font>
							</div>
						</div>
						
					<div class="col-md-4">
							<div class="form-group">
										<strong>CSR </strong>
										<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
										<form:select path="csr" title="----Csr Name----"
											class="form-control input-sm">
											<form:option value="0" label="Select CSR Name" />
											<c:forEach var="employee" varStatus="status"	items="${csr}">
													<form:option path="csr" value="${employee.empId}">${employee.empName}</form:option>
											</c:forEach>
										</form:select>
										</div>
							</div>
						</div>
                    </div>
				
						 <div class="row">
                     <div class="col-md-6">
							<div class="form-group">
										<strong>Executive </strong>
										<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user-secret" aria-hidden="true"></i></span>
										<form:select path="executive" title="----Executive----"
											class="form-control" >
											<form:option value="0" label="select executive name" />
											<c:forEach var="employee1" varStatus="status" items="${executive}">
													<form:option path="executive" value="${employee1.empId}">${employee1.empName}</form:option>
											</c:forEach>
										</form:select>
										</div>
							</div>
						</div>
					<div class="col-md-6">
							<div class="form-group">
						<strong>Remark</strong>
						<form:textarea path="remark" id="textarea" 
							rows="2" cols="90"/>
					</div>
					</div>
					</div>
                                                </div><!--model body  -->
                                                    <div class="col-md-offset-5">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											    <button type="button" class="btn btn-success waves-effect waves-light m-l-10" data-dismiss="modal">Close</button>
											</div>
                                                </form:form>
                                                
                                            </div><!-- /.modal-content -->
                                            
                                        </div><!-- /.modal-dialog -->
      </div>

    </div>
</div>
</c:if>
</c:otherwise></c:choose>
								</tbody>
	                           </table>
	                           </div></div></div>
	                           <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                      <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                             <c:forEach var="names" items="${columnName1}"> 
                                            <th class="filtername">${names.columnName}</th>
									</c:forEach>
                                   </tr>
                                        </thead>
					<tbody>
					  <c:forEach var="rows" items="${stkList1}"> 
                                <tr>
                                   <c:if test="${columnName1.size() >= 1}"><td> ${rows.attr1}</td></c:if>
                                   <c:if test="${columnName1.size() >= 2}"><td>${rows.attr2}</td></c:if>
                                   <c:if test="${columnName1.size() >= 3}"><td>${rows.attr3}</td></c:if>
                                   <c:if test="${columnName1.size() >= 4}"><td>${rows.attr4}</td></c:if>
                                   <c:if test="${columnName1.size() >= 5}"><td>${rows.attr5}</td></c:if>
                                    <c:if test="${columnName1.size() >= 6}"><td>${rows.attr6}</td></c:if>
                                    <c:if test="${columnName1.size() >= 7}"><td>${rows.attr7}</td></c:if>
                                     <c:if test="${columnName1.size() >= 8}"><td>${rows.attr8}</td></c:if>
                                   <c:if test="${columnName1.size() >= 9}"><td>${rows.attr9}</td></c:if>
                                    <c:if test="${columnName1.size() >= 10}"><td>${rows.attr10}</td></c:if>
                                     <c:if test="${columnName1.size() >= 11}"><td>${rows.attr11}</td></c:if>
                                     <c:if test="${columnName1.size() >= 12}"><td>${rows.attr12}</td></c:if>
                                     
            </tr></c:forEach>
	                           </tbody>
	                           </table>
							</div>
						</div>
						<!-- end col -->
					</div></div>
					<!-- end row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
</div>
</div>
			<%-- <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %> --%>
		</div>
		

<!--  Modal content for the above example -->
                                    <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="full-width-modalLabel" aria-hidden="true" style="display: none;">
                                  
                                  
									  </div>
                                    </div><!-- /.modal -->
	</div>
	
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->

 <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
	

	</div>

	<!-- END wrapper -->

	<script>
            var resizefunc = [];
        </script>
<script type="text/javascript">

$(window).load(function(){        
	   $('#myModal').modal('show');
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

        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>
	 
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
        
	<!-- Plugins Js -->
	<script src="resources/plugins/switchery/switchery.min.js"></script>
	<script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<!-- <script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
	<script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

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