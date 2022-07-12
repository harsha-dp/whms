<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured  CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
      
 <!-- App Favicon -->
  <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo </title>
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
<link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
<script src="resources/HR/js/modernizr.min.js"></script>

<!-- Plugins css-->
        <link href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/HR/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
    


<script src="resources/js/modernizr.min.js"></script>
<script>
	$(function() {
		if (!Modernizr.inputtypes.date) {
			$('input[type=date]').datepicker({
				dateFormat : 'yy-mm-dd'
			});
		}
	});
</script>





<script type="text/javascript">

function validate(from)
{
	    
	        var error=document.getElementById("datepickerautocloseerror");
		  	var datepickerautoclose=form["datepickerautoclose"].value;

		      error.innerHTML="";
		   
		      if( datepickerautoclose==null || datepickerautoclose==""){
		          error.innerHTML="Please select leave from date ";
		          return false;
		      }

		     


		      var error=document.getElementById("datepickerautoclose1error");
			  	var datepickerautoclose1=form["datepickerautoclose1"].value;

			      error.innerHTML="";
			   
			      if( datepickerautoclose1==null || datepickerautoclose1==""){
			          error.innerHTML="Please select leave To date ";
			          return false;
			      }

			      var error=document.getElementById("dayerror");
				  	var day=form["day"].value;

				      error.innerHTML="";
				   
				      if( day==null || day==""){
				          error.innerHTML="Please select total days of leave request ";
				          return false;
				      }
			      


			      var error=document.getElementById("leaveerror");
				  	var leave=form["leave"].value;

				      error.innerHTML="";
				   
				      if( leave==null || leave==""){
				          error.innerHTML="Please select type of leave ";
				          return false;
				      }

			      var error=document.getElementById("reasonerror");
				  	var reason=form["reason"].value;

				      error.innerHTML="";
				   
				      if( reason==null || reason==""){
				          error.innerHTML="Enter reason for leave ";
				          return false;
				      }

				       if(reason.length<3){
				          error.innerHTML="Leave reason should be minimum 3 character";
				          return false;
				      } 
				      if(reason.length>200){
				          error.innerHTML="Leave reason should be in between 3 to 200 digit";
				          return false;
				      } 

				     /*  var error=document.getElementById("departmenterror");
					  	var department=form["department"].value;

					      error.innerHTML="";
					   
					      if( department==null || department==""){
					          error.innerHTML="Please select status ";
					          return false;
					      } */
					       
}
</script>

</head>
<body style="mergin:0;background-color: gray">
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">
              
      
			<div class="row">
				<!-- Right Sidebar -->
				<div class="col-lg-12">
					<div class="row">
					<div align="center">
						<h3 class="page-title"; style="color:white">VIEW LEAVE REQUEST</h3>
					</div>
						<!--Custom Toolbar-->
						<!--===================================================-->
						<div class="row">
							 <form:form  action="postEditleaves" name="form" onsubmit="return validate()" modelAttribute="leaveRequest" > 
							 <form:hidden path="requestId" value="${leavesById.requestId}"/>
							<div class="card-box card-outline-danger">
								<div class="col-sm-12">
									<h4 style="color: purple;">PERSONAL INFORMATION</h4>
									<div class="col-md-6">
										<label>Name </label> 
											<form:select class="form-control" path="empId" title="Select" >
                                         <form:option value="${leavesById.empId}">${leavesById.Leavefor}</form:option>
                                       </form:select>
									</div>
								</div>
								<div class="col-sm-12">
									<h4 style="color:teal;">DATES/HOURS OF LEAVE</h4>
									<div class="col-md-6">
										<label>From Date <span style="color:red;">*</span> </label>
										<div class="input-group"> 
										 <form:input path="fromDate" type="text"  class="form-control" value="${leavesById.fromDate}" id="datepickerautoclose"/>
                                  <font id="datepickerautocloseerror" style="color: red;"></font>
                                    <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
										</div>
										
									</div>
									<div class="col-md-6">
									<label>To Date <span style="color:red;">*</span> </label> 
										<div class="input-group"> 
										<form:input  path="toDate" type="text"
											class="form-control" value="${leavesById.toDate}" id="datepickerautoclose1"/>
                                          <font id="datepickerautoclose1error" style="color: red;"></font>
                                           <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar-o"></i></span>
										</div>
										</div>
								</div>
								
								<div class="col-sm-12">
									<div class="col-md-6">
										<label>Total Days Requested <span style="color:red;">*</span></label> <form:input type="number" path="totalDays"
											class="form-control" value="${leavesById.totalDays}" id="day"/>
											<font id="dayerror" style="color: red;"></font>
									</div>
								</div>
								<div class="col-sm-12">
									<h4 style="color:blue;">LEAVE TYPE</h4>
									<div class="col-md-6">
										<label class="from-control">Choose Just One <span style="color:red;">*</span> </label> 
										 <select name="leaveType" class="form-control" id="leave">
										    <option value="${leavesById.leaveType}">${leavesById.leaveType}</option>
										</select>
										<font id="leaveerror" style="color: red;"></font>
									</div>
								</div>

								<div class="col-sm-12">
									<h4 style="color: purple;">REASON <span style="color:red;">*</span></h4>
									<div class="col-md-6">
										<label>Reason for Leave or Other Absence (Optional): </label>
										<form:textarea path="description" class="form-control" placeholder="${leavesById.description}" id="reason"></form:textarea>
                                       <font id="reasonerror" style="color: red;"></font>
									</div>
									<div class="col-md-6">
										<label>Satatus <span style="color:red;">*</span></label> 
										<select name="status" class="form-control input-md" >
									<option value="${leavesById.status}">${leavesById.status}</option> 
									<option value="Approved">Approved</option>
									<option value="Rejected">Rejected</option>
									<option value="Requested">Requested</option>
									</select>
									<font id="departmenterror" style="color: red;"></font>
									</div>
								</div>
                              
                              <p>&nbsp;</p>
								<div class="col-md-offset-5">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>

							</div>
							</form:form>
							<!-- End row -->
						</div>
						<!-- end Col-9 -->
					</div>
					<!-- End row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
			<!-- Footer -->
			 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
			<!-- End Footer -->

		</div>
		<!-- end container -->
	</div>
	     
 <script>
		var resizefunc = [];
	</script>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
	<script src="resources/js/jquery.min.js"></script>



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


	<script
		src="resources/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>

	<script src="resources/pages/jquery.bs-table.js"></script>


	<!-- Modal-Effect -->
	<script src="resources/HR/plugins/custombox/dist/custombox.min.js"></script>
	<script src="resources/HR/plugins/custombox/dist/legacy.min.js"></script>

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

							/* advance multiselect start */
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

							/*  Select2 */
							$(".select2").select2();

							$(".select2-limiting").select2({
								maximumSelectionLength : 2
							});

						});

		/* Bootstrap-TouchSpin */
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

		// Time Picker

		/*       Date Picker */
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			change: true,
			todayHighlight : true
		});

		/*       Date Picker */
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose1').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			todayHighlight : true
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
			format : "dd/mm/yyyy",
			clearBtn : true,
			autoclose : true
		});
		jQuery('#date-range').datepicker({
			toggleActive : true,
			autoclose : true
		});
	</script>
        
</body>
</html>