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
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<!--  -->
<script src="resources/js/modernizr.min.js"></script>

<!-- Datepicker start -->
<link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="resources/datepicker/jquery-1.12.4.js"></script>
<script src="resources/datepicker/jquery-ui.js"></script>
<link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<!--  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/> -->
<!-- Datepicker end -->

<!--Edit presales validation  -->
<script src="resources/validation/presales/viewPresalesById.js"></script>
<!--  -->

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
					 <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                             </li>
						<li>
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs hidden-sm">
							<font class="page-title">
							CUSTOMER APPOINTMENT DETAILS : 
							</font>
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

						<div class="col-lg-12" >
							<!-- <div class="card-box" style="background-image: url(./resources/images/paper.jpg)"> -->
									<div class="card-box">
								<!-- <h4 class="header-title m-t-0 m-b-30">CUSTOMER APPOINTMENT DETAILS :</h4> -->
                        			<div class="row">
                        			<table  style="width:100%"  >
                        			<tr>
								        <td>Customer Name :</td><td><h4>${leadsById.customerName}</h4></td><td></td><tr>
                                                               <tr>
                                                               <td>Contact No:</td><td><h4>${leadsById.primaryMob}</h4></td><td></td><tr>
                                                               <tr>
                                                               <td>Customer Address :</td><td><h4>
                                                                 ${leadsById.residenceAddresss} <br>
                                                                 ${leadsById.city} &nbsp
                                                                 </h4></td><td></td></tr>
                                                                 <tr>
                                                               <td>Pincode:</td><td><h4>${leadsById.pincode}</h4></td></tr><td></td><tr>
                                                               <tr>
                                                               <tr>

								        <td>Channel : </td>  <td><h4>${leadsById.channelsName}</h4></td>
								        <td>Team   : </td><td><h4>${leadsById.teamNames}</h4></td></tr>
								        
								  <tr><td>Executive :</td><td><h4>${leadsById.executiveName}</h4></td><td>CSR   :</td><td> <h4>${leadsById.CSRName}</h4></td></tr>
								  <tr><td>Date Of Appointment:</td> <td><h4>${leadsById.dateAppointment}</h4></td>
								<td>Time Of Appointment :</td><td> <h4>${leadsById.timeAppointment}</h4></td></tr>
								<tr><td>Product :</td> <td><h4>${leadsById.productName}</h4></td><td>Status :</td><td><h4>${leadsById.status}</h4></td></tr>
								<tr><td>Remarks :</td> <td><h4>${leadsById.remark}</h4></td><td></tr>
								<tr><td></td><td></td>
								 <c:choose>
      						 <c:when test="${leadsById.status != 'New Appointment'}">
								<td><a href="#custom-modal"
									class="btn btn-default btn-md waves-effect waves-light"
									data-animation="fadein" data-plugin="custommodal"
									data-overlaySpeed="200" data-overlayColor="#36404a"> <i
									class="zmdi zmdi-plus"></i> Add New Appointments
								</a></td>
								</c:when>
								<c:otherwise>
								<td>
								<h4><a href="editpresales?leadsId=<c:out value='${leadsById.leadsId}'/>" class="btn btn-default btn-md waves-effect waves-light" >Edit</a></h4></td><td>
								</td></c:otherwise></c:choose>
								</tr>
								
								  </table>
                        		</div>
                        	</div>
													
								</div>
							</div>
						</div>
						<!-- end col -->
						
						
						 <div class="col-lg-12">
                        		<div class="card-box">
                        			<h4 class="header-title m-t-0 m-b-30">PREVIOUS APPOINTMENTS DETAILS :</h4>
                        			<div class="row">
                        			 <table id="datatable-buttons"
									class="table table-striped table-bordered" >
	                <thead>
	                    <tr>
											<!-- <th class="filterid">Appointment Id</th> -->
											<th> Customer Name</th>
											<th>Product Intrested</th>
											<th>Channel</th>
											<th>CSR</th>
											<th>DOA</th>
											<th>Executive</th>
											<th>Appt Type</th>
											<th>Status</th>
	                    </tr>
	                </thead>
	                           <tbody>
	                           <c:forEach items="${listPresales}" var="presales">
	                	<tr style="display: table-row;">
	                        <%--  <td class="account-id"><a class="sort-value" href="user/1" target="_blank"><c:out value="${presales.leadsId}" /></a></td> --%>
	                        <td><a href="presalesview?leadsId=<c:out value='${presales.leadsId}'/>" ><c:out value="${presales.customerName}" /></a></td>
	                        <%--  <td class="account-name1 sort-value"><c:out value="${presales.address.primaryMob}" /></td> --%>
	                          <td ><c:out value="${presales.productIntrested}" /></td>
	                           <td><c:out value="${presales.remark}" /></td>
	                           <td><c:out value="${presales.csr}" /></td>
	                           <td><c:out value="${presales.dateAppointment}" /></td>
	                           <td><c:out value="${presales.executive}" /></td>
	                            <td><c:out value="${presales.appointmentType}" /></td>
	                           <td><c:out value="${presales.status}" /></td>
	                        
	                           </tr>
	                           </c:forEach>
	                           </tbody>
	                           </table>
	                           </div></div></div>
	                            <div class="col-lg-12">
                        		<div class="card-box">
	                           <h4 class="header-title m-t-0 m-b-30">CALLS DETAILS</h4>
	                           <div class="row">
                        			<table class="table" border="1" >
								    <thead >
								      <tr>
								       <!--  <th bgcolor="#34EAD8">Service Id</th> -->
								        <th bgcolor="#34EAD8">Extension Number</th>
								        <th bgcolor="#34EAD8">Employee Name</th>
								        <th bgcolor="#34EAD8">Call Date & TIME</th>
								        <th bgcolor="#34EAD8">Duration</th>
								        <th bgcolor="#34EAD8">Contact Number</th>
								      </tr>
								    </thead>
								    <c:forEach items="${teleCallsByPhoneNo}" var="calls">
								    <tbody>
								      <tr>
								        <td>${calls.extensionNo}</td>
								        <td>${calls.emplName}</td>
								         <td>${calls.callDate}</td>
								          <td>${calls.duration}</td>
								        <td>${calls.phoneNo}</td>
								        
								      </tr>
								    </tbody>
								    </c:forEach>
								  </table>
                        		</div>
                        	</div><!-- end col -->
                        </div>
                        <!-- End row -->

					</div>
					<!-- container -->

				</div>
				<!-- content -->
	<!-- Modal -->
		<div id="custom-modal" class="modal-demo" >
			<button type="button" class="close" onclick="Custombox.close();">
				<span>&times;</span><span class="sr-only">Close</span>
			</button>
			<h4 class="custom-modal-title">Pre-Sales Appointment</h4>
			
			<div class="custom-modal-text text-left">

				<!-- =============	form:form start from here ==============    -->
				<form:form action="postEditpresales" name="form" onsubmit="return validate()" modelAttribute="presalesDTO">
				
				<form:hidden path="leadsId" value="${leadsById.leadsId}"/>
				<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
				<form:hidden path="status" value="New" class="form-control"  />
					<div class="form-group">
						<label for="name">Customer Name <span style="color:red;">*</span></label>
						<form:input type="text" value="${leadsById.customerName}"
							onkeypress="return onlyAlphabets(event,this);"
							path="customerName" class="form-control"  id="custname"
							placeholder="" />
							<font id="custnameerror" style="color: red;"></font>
					</div>
						<div class="form-group">
						<label for="name">Mobile Number <span style="color:red;">*</span></label>
						<form:input type="text"  value="${leadsById.primaryMob}" minlength="10" maxlength="10"
							onkeypress="return IsNumeric(event);" ondrop="return false;"
						 path="primaryMob" class="form-control"
							id="contactnumber" placeholder=""  />
						<span id="error" style="color: red; display: none">
							</span>
							<font id="contactError" style="color: red;"></font>
					</div>
					<div class="form-group">
						<label for="name">Address <span style="color:red;">*</span></label>

						<form:input path="residenceAddresss" value="${leadsById.residenceAddresss}" id="addresss"
							class="form-control" maxlength="225" rows="2" />
                          <font id="addresserror" style="color: red;"></font> 

					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="assign">City <span style="color:red;">*</span></label>
								<form:input type="text" value="${leadsById.city}"
									onkeypress="return onlyAlphabets(event,this);" path="city"
									class="form-control" id="cityy" placeholder=""
									 />
									 <font id="cityerror" style="color: red;"></font>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="priority">Pincode </label>
								<form:input type="text" value="${leadsById.pincode}" maxlength="6" runat="server"
									onkeypress="javascript:return isNumber(event)" path="pincode"
									class="form-control"  placeholder=""
									/>
								<font id="error" style="color: Red; display: none">*
									</font>
							</div>
						</div>
					</div>
					<hr>
					
					<div class="row">
					<div class="col-md-6">
					<div class="form-group">
						<label for="Sdate">Product intersted <span style="color:red;">*</span></label> <br>
						<form:select path="productIntrested" title="Product name"
							class="form-control" id="productt">
							<form:option value="" label="select product Name" />
							<c:forEach var="product" varStatus="status" items="${allProducts}">
							<form:option  value="${product.productId}">${product.productName}</form:option>
							</c:forEach>
						</form:select>
						<font id="producterror" style="color: red;"></font>
					</div>
               </div>
               
					
						<div class="col-md-6">
							<div class="form-group">
										<strong>CSR </strong>
										<form:select path="csr" title="----Csr Name----"
											class="form-control" id="assign">
											<form:option value="0" label="select CSR name" />
											<c:forEach var="employee" varStatus="status" items="${csr}">
													<form:option path="csr" value="${employee.empId}">${employee.empName}</form:option>
											</c:forEach>
										</form:select>
							</div>
						</div>
						</div>
						
						<div class="row">
						<div class="col-md-6">
										<strong>Team Name <span style="color:red;">*</span></strong>
										<form:select path="teamName" title="Select Team Name"
											class="form-control" id="team">
											<%-- <form:option value="" label="select team name" /> --%>
											<c:forEach var="team" varStatus="status"
												items="${allTeamName}">
													<form:option path="teamName" value="${team.teamId}">${team.teamName}</form:option>
											</c:forEach>
										</form:select>
										<font id="teamerror" style="color: red;"></font>
						</div>
					
					
						<div class="col-md-6">
								<strong>Channel <span style="color:red;">*</span></strong>
								<form:select path="channel" title="channel Name"
									class="form-control" id="channell">
									<%-- <form:option value="" label="select channel name" /> --%>
									<form:options items="${allChannels}" itemValue="channelId"
										itemLabel="channelsName" />
								</form:select>
								<font id="channelerror" style="color: red;"></font>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label> Date of Appointment <span style="color:red;">*</span></label>
								<div class="input-group">
									<form:input type="text" path="dateAppointment"
									id="datepicker" placeholder="dd/mm/yyyy" readonly="true" class="control-label input-lg"/>
									<!-- <span class="input-group-addon bg-primary b-0 text-white"><i
										class="ti-calendar"></i></span> -->
										 
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

							</div>
							<font id="dateerror" style="color: red;"></font>
						</div>

						<div class="col-md-6">

							<div class="bootstrap-timepicker">
								<label>Time of Appointment <span style="color:red;">*</span></label>
								<%-- <form:option value="-1" label="--Product Name--" /> --%>
								<%-- <form:input path="timeAppointment" id="timepicker" type="text"
									class="form-control" /> --%>

								<form:select path="timeAppointment" title="----TOA----"
									class="form-control" id="timee">
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
								<font id="timeerror" style="color: red;"></font>
							</div>

						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
										<strong>Executive </strong>
										<form:select path="executive" title="----Executive----"
											class="form-control" id="assign">
											<form:option value="0" label="select executive name" />
											<c:forEach var="employee" varStatus="status"	items="${executive}">
													<form:option path="executive" value="${employee.empId}">${employee.empName}</form:option>
											</c:forEach>
										</form:select>
							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="name">Remark:</label>

						<form:textarea path="remark" id="textarea" class="form-control"
							maxlength="225" rows="2" required="required" />


					</div>

				                    	 <div class="col-md-offset-4">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
				</form:form>
			</div>
		</div>
 
	</div>
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