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
<meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1"/>

<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!--  -->

<!-- App title -->
<title>WELEZO</title>
<!--  -->

<!-- Plugins css-->
<link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
<link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
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
<link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet" />
<!--  -->

<!--height container size  -->
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script src="resources/js/modernizr.min.js"></script>
<!--  -->

<!--Edit presales validation  -->
<script src="resources/validation/presales/editPresales.js"></script>
<!--  -->
<script>

</script>
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar" style="height: 20px">

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
						<li>
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs hidden-sm">
						<font face="verdana" class="page-title">EDIT PRESALES</font>
							<!-- <h4 class="page-title">Edit Presales</h4> -->
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
			</div>
			<!-- end container -->
		</div>
		<!-- end navbar -->
	<!-- Top Bar End -->

	<!-- ========== Left Sidebar Start ========== -->
	 <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
	<!-- Left Sidebar End -->


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

	<!-- Modal -->
	<!-- <div id="custom-modal" class="modal-demo"> -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">

			<!-- popup window -->
<br>
			<div class="form-row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<!-- Modal Add Category -->
					<!--  <div class="modal fade none-border" id="add-category"> -->
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								
								<div class="custom-modal-text text-left ">


									<!-- =============	form:form start from here ==============    -->
									<form:form action="postEditpresales" name="form" onsubmit="return validate()" modelAttribute="presalesDTO" >
									
									<form:hidden path="leadsId" value="${leadsById.leadsId}"/>
									<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
									
								<div class="col-md-12">	
									<div class="form-group col-md-6">
											<form:label path="customerName" for="name">Customer Name <span style="color:red;">*</span></form:label>
											<form:input type="text"
												onkeypress="return onlyAlphabets(event,this);"
												path="customerName" value="${leadsById.customerName}"
												class="form-control input-sm" id="custname" placeholder=""
												 />
												<font id="custnameerror" style="color: red;"></font>
										</div>
										
										<div class="form-group col-md-6">
											<form:label path="primaryMob" for="name">Mobile Number <span style="color:red;">*</span></form:label>
											<form:input type="text" 
												onkeypress="return IsNumeric(event);" 
												 path="primaryMob"
												value="${leadsById.primaryMob}" class="form-control input-sm"
												id="contactnumber" placeholder=""  />
											<span id="error" style="color: red; display: none">
												</span>
												<font id="contactError" style="color: red;"></font>
										</div>
										</div>
										
											<div class="col-md-12">	
											
											<div class="form-group col-md-12">	
											<form:label path="residenceAddresss" for="name">Address <span style="color:red;">*</span></form:label>
											<form:input path="residenceAddresss"
												value="${leadsById.residenceAddresss}" 
												cols="65" class="form-control input-sm" id="addresss" placeholder=""
												/>
											 <font id="addresserror" style="color: red;"></font>
										</div>
										
										</div>
										
											<div class="col-md-12">	
									<div class="form-group col-md-4">
													<form:label path="city" for="priority">City <span style="color:red;">*</span></form:label>
													<form:input type="text"
														onkeypress="return onlyAlphabets(event,this);" path="city"
														value="${leadsById.city}" class="form-control input-sm"
														id="cityy" placeholder="" />
														 <font id="cityerror" style="color: red;"></font>
											</div>
											<div class="form-group col-md-4">
													<form:label path="pincode" for="priority">Pin code </form:label>
													<form:input type="text" minlength="3" maxlength="10"
														onkeypress="return IsNumeric(event);"
														path="pincode" value="${leadsById.pincode}"
														class="form-control input-sm" id="priority" placeholder=""
														 />
													<!-- <span id="error" style="color: Red; display: none"></span> -->

											</div>
											
											<div class="form-group col-md-4">
                             <label for="Sdate">Product interested <span style="color:red;">*</span></label> <br>
                              <form:select path="productIntrested" title="Product Name" class="form-control input-sm" id="productt" >
						<form:option value="${leadsById.productIntrested}"> ${leadsById.productName} </form:option>
					<c:forEach var="product" varStatus="status" items="${allProducts}">
							<form:option  value="${product.productId}">${product.productName}</form:option>
							</c:forEach>					</form:select>
					 <font id="producterror" style="color: red;"></font>
					</div>
										</div>
										
										<div class="col-md-12">	
					
					<div class="form-group col-md-4">
									<form:label path="executive">Executive </form:label>
										<form:select path="executive" title="----Select Executive----"	class="form-control input-sm" >
											<form:option value="${leadsById.executive}" label="${leadsById.executiveName}" />
											<c:forEach var="employee" varStatus="status" items="${executive}">
										<form:option path="executive" value="${employee.empId}" >${employee.empName}</form:option>
											</c:forEach>
										</form:select>
												</div>
										 <div class="form-group col-md-4">
										<form:label path="csr" for="assign">CSR </form:label>
										<form:select path="csr" title="----Csr Name----"
											class="form-control input-sm" >
											<form:option value="${leadsById.csr}" label="${leadsById.CSRName}" />
											<c:forEach var="employee1" varStatus="status"
												items="${csr}">
													<form:option path="csr" value="${employee1.empId}" >${employee1.empName}</form:option>
											</c:forEach>
										</form:select>
												</div>
											

										 <div class="form-group col-md-4">
										<form:label path="teamName" for="priority">Team Name <span style="color:red;">*</span></form:label>
										<form:select path="teamName" title="----Team Name----" class="form-control input-sm" id="team">
											<form:option value="${leadsById.teamName}" label="${leadsById.teamNames}" />
											
											<c:forEach var="team" varStatus="status"
												items="${allTeamName}">
													<form:option path="teamName" value="${team.teamId}" >${team.teamName}</form:option>
											</c:forEach>
										</form:select>
										  <font id="teamerror" style="color: red;"></font>
												</div>
												</div>
												
												
												 <div class="col-md-12">
												 <div class="form-group col-md-4">
													<label for="Sdate">Channel <span style="color:red;">*</span></label><br>

													<form:select path="channel" class="form-control input-sm"
														id="channell" placeholder="Channel">
														<form:option value="${leadsById.channel}"> ${leadsById.channelsName} </form:option>
														<form:options items="${allChannels}"
															itemValue="channelId" itemLabel="channelsName" />
													</form:select>
													 <font id="channelerror" style="color: red;"></font>
												</div>
												

										 <div class="form-group col-md-4">
													<form:label path="dateAppointment"> Date of Appointment <span style="color:red;">*</span></form:label>
													<div class="input-group">
													<form:input type="text" path="dateAppointment"
														value="${leadsById.dateAppointment}" class="form-control input-sm"
														placeholder="dd/mm/yyyy" id="datepickerautoclose"
														 />
														<span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
														</div>
														 <font id="dateerror" style="color: red;"></font>
												</div>

										 <div class="form-group col-md-4">
													<form:label path="timeAppointment">Time of Appointment <span style="color:red;">*</span></form:label>

														
								<form:select path="timeAppointment" title="----TOA----"	class="form-control input-sm" id="timee" >
									<form:option value="${leadsById.timeAppointment}" >${leadsById.timeAppointment}</form:option>
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


                              
								<div class="col-md-12">
									 <div class="form-group col-md-3">
										<label for="Ddate" >Meeting Status <span style="color:red;">*</span></label> <br>
										<form:radiobutton path="meetingStatus" value="Met"  id="chkYes" name="chkPassPort"  /> Met
										<form:radiobutton path="meetingStatus" value="Not Met" id="chkNo" name="chkPassPort1" /> Not Met
										
										<div id="dvPassport" style="display: none">
										<p style="color:blue;">Please select below one reason !!</p>
										<form:radiobutton path="reasons" value="Delay from executive" id="chknoch" />
										Delay from executive <br>
										<form:radiobutton path="reasons" value="Customer not in place" id="chknoch1"/>
										Customer not in place <br>
										<form:radiobutton path="reasons" value="Wrong Address" id="chknoch2"/>
										Wrong Address <br>
										<form:radiobutton path="reasons" value="Customer busy" id="chknoch3"/>
										Customer busy <br>
										<form:radiobutton path="reasons" value="Other" id="chknoch4"/>
										Other <br>
									</div>
									
					
									<font id="meetingeerror" style="color: red;"></font>
									</div>
									
<!-- 	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> -->
<script type="text/javascript">

$(document).ready(function () {
        $("input[name='meetingStatus']").click(function () {
            if ($("#chkYes").is(":checked")) {
                $("#dvPassport").hide();
            } else {
                $("#dvPassport").show();
            }
        });
    });
</script>
									
									<!-- <script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
									<script>
									$('#block').click(function(){
									    $('#block').show(1);
									});
									
									$('#cbxShowHide').click(function(){
									    this.checked?$('#block').show(1):$('#block').hide(1);
									});

									$('#cbxShowHide2').click(function(){
									    this.checked?$('#block').hide(1):$('#block').show(1);
									});
							</script> -->
							
							

							
								 <div class="form-group col-md-5">
										<label for="Ddate">Status <span style="color:red;">*</span></label><br>
										<form:radiobutton path="status" value="Rescheduled" id="reschule" name="chkPassPort" /> Rescheduled
								        <form:radiobutton path="status" value="Collected" id="coll" name="chkPassPort" /> Collected 
									   <!--   <input type="button" id="target" value="Collected"/> -->
									   	<form:radiobutton path="status" value="Not Interested" id="not" name="chkPassPort" /> Not Interested  
									     <div id="dvPassportss" style="display: none">
									     
									     
											 <%--<form:select path="paymentMode" >
											<form:option value="" label="Select Payment Mode"></form:option>
											<c:forEach var="mode" varStatus="status" items="${welezoConstant}">
												<c:if test="${mode.constType=='Payment_mode'}">
												<form:option path="paymentMode" value="${mode.CValue}" >${mode.CDisplay}</form:option>
												</c:if>
											</c:forEach>
										</form:select> --%>
										
							             <form:select path="paymentMode"  id="payment" >
                                                                           <form:option value="payment" label="Select Payment Mode"></form:option>
                                                                           <c:forEach var="mode" varStatus="status" items="${welezoConstant}">
                                                                                  <c:if test="${mode.constType=='payment_mode'}">
                                                                                  <form:option path="paymentMode" value="${mode.CValue}" >${mode.CDisplay}</form:option>
                                                                                  </c:if>
                                                                           </c:forEach>
                                                                     </form:select>
										
										
										<%--  <form:select path="applicationNo" title="select Application"  id="aplicationno">
								<form:option value="" label="Select Application Number" />
                           <c:forEach var="application" varStatus="status"	items="${allApplicationNo}">
						<form:option path="applicationNo" value="${application.applicationNo}">${application.applicationNo}</form:option>
											</c:forEach> 
											</form:select> --%>
											
											<form:select path="applicationNo" title="select Application" id="apln">
                                           <form:option value="application" label="Select Application Number" />
                                          <c:forEach var="application" varStatus="status" items="${allApplicationNo}">
                                         <form:option path="applicationNo" value="${application.applicationNo}" >${application.applicationNo}</form:option>
                                              </c:forEach> 
                                            </form:select>
											
											
											</div>
									
										<div id="dvPassports" style="display: none">
										<form:radiobutton path="reasons" value="Not a Good Concept" id="chno1"/> Not a Good Concept<br>
										<form:radiobutton path="reasons" value="Product Not matching" id="chno2" /> Product Not matching <br>
										<form:radiobutton path="reasons" value="No Money / Not affordable" id="chno3"/> No Money / Not affordable <br>
										<form:radiobutton path="reasons" value="health panel Concern" id="chno4"/> health panel Concern <br>
										<form:radiobutton path="reasons" value="health panel Concern" id="chno5"/> Other <br>

									</div>
									</div>
								
								
									<div class="col-md-4">
										<form:label path="remark" for="name">Remark <span style="color:red;">*</span></form:label>
										<form:textarea path="remark" placeholder="${leadsById.remark}"
											class="form-control input-sm" id="remarkss" rows="4" cols="6"/>
									<font id="remarksserror" style="color: red;"></font>
									</div>
									</div>
									<br />
								<!-- <div class="container">
  									<div class="row">
   								 <div class="col-lg-2 col-lg-offset-3 sec-1-btn text-center">
									<button type="submit" onclick="return validate()"
										id="singlebutton"	class="btn btn-primary center-block" value="save">Save</button>
										</div>
										 <div class="col-lg-2 sec-1-btn text-center">
									<button type="reset" id="singlebutton" class="btn  btn-danger waves-effect waves-light m-l-5">Clear</button>
						</div>
								</div>
							</div> -->
							                 <div class="col-md-offset-5">
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
				</div>
				</div>

				<%--  </form:form>--%>
			</div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript">
    $(function () {
        $("input[name='status']").click(function () {
            if ($("#not").is(":checked")) {
                $("#dvPassports").show();
                $("#dvPassportss").hide();
            } 
            else if($("#coll").is(":checked")) {
                $("#dvPassportss").show();
                $("#dvPassports").hide();
            } else{
                $("#dvPassports").hide();
                $("#dvPassportss").hide();
            }
        });
    });
</script>
                                                           <!--    <script>
                                                              $('#cbxShowHid').click(function(){
                                                                  this.checked?$('#bloc').show(1):$('#bloc').hide(1);/* not interested  */
                                                              });
                                         $('#target').click(function(){
                                                                  this.checked?$('#bloc').hide(1):$('#bloc').show(2);/* collected */
                                                              }); 
                                                              $('#cbxShowHid2').click(function(){
                                                                  this.checked?$('#bloc').hide(2):$('#bloc').show(2);/* rescheduled */
                                                              });
                                                       </script>
                                                       
                                                       <script type="text/javascript">
                                                                           $( "#dialog" ).hide();
                                                                           $( "#target" ).click(function() {
                                                                               $( "#dialog" ).show();
                                                                               $( "#dialog" ).dialog();
                                                                           });

                                                                           $( "#dialog1" ).hide();
                                                                                  $( "#cbxShowHid2" ).click(function() {
                                                                                      $( "#dialog" ).hide();
                                                                                      $( "#dialog1" ).dialog();
                                                                                  });    

                                                                                  $( "#dialog2" ).hide();
                                                                                  $( "#cbxShowHid" ).click(function() {
                                                                                      $( "#dialog" ).hide();
                                                                                      $( "#dialog2" ).dialog();
                                                                                  });    
                                                                                  
                                                                                  
                                                                           </script> -->
                                                                           
                                                                       

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
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

	<script>
            jQuery(document).ready(function() {

                /* advance multiselect start */
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

               /*  Select2 */
                $(".select2").select2();

                $(".select2-limiting").select2({
				  maximumSelectionLength: 2
				});

            });

            /* Bootstrap-TouchSpin */
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
                minuteStep : 15
            });

           /*  colorpicker start */

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

      /*       Date Picker */
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
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

           /*  Date range picker */
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 30,
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

         /*    Bootstrap-MaxLength */
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