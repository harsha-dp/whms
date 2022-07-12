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

<title>Welezo</title>

<!-- Modal -->
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
   <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
   <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
   <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
   <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">


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
<link href="resources/HR/css/responsive.css" rel="stylesheet"
	type="text/css" />

<script src="resources/HR/js/modernizr.min.js"></script>
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
 var error=document.getElementById("errorgoalname");
 var goalname=form["goalname"].value;

   error.innerHTML="";

   if( goalname==null || goalname==""){
       error.innerHTML="Enter plan title !";
       return false;
   }

   else if(!isNaN(goalname))
   {
   error.innerHTML="Enter Only characters !";
     return false;
   }

   else if(goalname.length<3)
   {
   error.innerHTML="Name should atleast 3 character !";
       return false;
   }
   else if(goalname.length>80)
   {
   error.innerHTML="Name should maximum 80 character !";
       return false;
   }


   var error=document.getElementById("errorlist");
   var list=form["list"].value;

     error.innerHTML="";

     if( list==null || list==""){
         error.innerHTML="Select department!";
         return false;
     } 
   
   
 var error=document.getElementById("errorassignto");
 var sel2=form["sel2"].value;

   error.innerHTML="";

   if( sel2==null || sel2==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   } 


   var error=document.getElementById("errorassigned");
   var assigned=form["assigned"].value;

     error.innerHTML="";

     if( assigned==null || assigned==""){
         error.innerHTML="This field cannot be empty!";
         return false;
     }
     
     var error=document.getElementById("errorAppraisal");
     var Appraisal=form["Appraisal"].value;

       error.innerHTML="";

       if( Appraisal==null || Appraisal==""){
           error.innerHTML="Select type!";
           return false;
       }
       
   
 var error=document.getElementById("errordatepickerautoclose");
 var datepickerautoclose=form["datepickerautoclose"].value;

   error.innerHTML="";

   if( datepickerautoclose==null || datepickerautoclose==""){
       error.innerHTML="Select Start Date!";
       return false;
   }
   
   
   
 var error=document.getElementById("errordatepickerautoclose1");
 var datepickerautoclose1=form["datepickerautoclose1"].value;

   error.innerHTML="";

   if( datepickerautoclose1==null || datepickerautoclose1==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
   
  
   
   
 var error=document.getElementById("errordgoal");
 var goal=form["goal"].value;

   error.innerHTML="";

   if( goal==null || goal==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
    else if(goal.length<3)
   {
   error.innerHTML="Goal should atleast 3 character !";
       return false;
   }
   else if(goal.length>400)
   {
   error.innerHTML="Goal should maximum 400 character !";
       return false;
   }
}

</script>


</head>


<body>
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">
			<div class="col-lg-12">

				<!--Custom Toolbar-->
				<!--===================================================-->
				
				<div class="row">
				
					<form:form action="savegoal" name="form" onsubmit="return validate()" modelAttribute="goalTO">
						<div class="card-box card-outline-danger">
						<h4 class="header-title m-t-0 m-b-30">ADD EMPLOYEE GOALS :</h4>
							<div class="col-md-12">
								<div class="col-md-6">
									<label for="ex1">Plan Title <span style="color:black">*</span></label><font id="errorgoalname" style="color:red"></font>
									<form:input type="text" path="goalName" class="form-control" placeholder=" "
										id="goalname" />
								</div>
								 <br/>
								</div>
								
								<div class="col-md-12">
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
									
								<div class="col-md-3">
								 <div class="form-group">
								     <label>Department List <span style="color:black">*</span></label>
									 <select name="entityType" class="form-control " id="list">
									   <option value="" label="Select Department Name" ></option>
	                                <c:forEach items="${allDepartment}" var="dept">
									    <option value="${dept.department}" data-val="${dept.department}">
									      ${dept.department}
									    </option>
									    </c:forEach>
  									</select>
  									<font id="errorlist" style="color:red"></font>
                                   </div>
                                   </div>
                                   
                                   
                                    <div class="form-group">
								    <script>
								$("#list").change(function() { 
									if($(this).data('options') == undefined){
									    $(this).data('options',$('#sel2 option').clone());
									    } 
									var id = $(this).val();
									var options = $(this).data('options').filter('[data-val=' + id + ']');
									$('#sel2').html(options);
									});
								</script>
								
							<div class="col-md-3">
								<div class="form-group">
								    <label>Assigned To <span style="color:black">*</span></label>
                                 	 <select name="goalSetFor" class="form-control " id="sel2">
                                 	  <option value="" label="Select Employee Name" data-val="null"></option>
									  <c:forEach items="${employeeList}" var="empList">
									    <option value="${empList.empId}" data-val="${empList.department}">
									      ${empList.empName}
									    </option>
									    </c:forEach>
									    </select>
									    <font id="errorassignto" style="color:red"></font>
									   </div>
								   </div>
									    
					    	<div class="col-md-3">
							     <div class="form-group">
								    <label>Assigned BY <span style="color:black">*</span></label>
                                 	 <select name="goalSetBy" class="form-control " id="assigned">
                                 	  <option value="" label="Select Assigner" data-val="null"></option>
									  <c:forEach items="${managersList}" var="mgrList">
									    <option value="${mgrList.empId}" data-val="${mgrList.department}">
									      ${mgrList.empName}
									    </option>
									    </c:forEach>
									    </select>
									      <font id="errorassigned" style="color:red"></font>
									  </div>
							    </div>
						    </div>
									<%-- <label for="ex2">Assigned To <span style="color:red">*</span></label><font id="errorAssignedto" style="color:red"></font>
									 <form:input type="text" path="" class="form-control" id="ex2" />
									<form:select class="form-control" path="goalSetFor"
										title="Select" id="Assignedto">
										<form:option value="" label="Select Employee" />
										<c:forEach items="${allEmployees}" var="emp"
											varStatus="status">
											<form:option path="goalSetFor" value="${emp.empId}">${emp.empName}</form:option>
										</c:forEach>
									</form:select>
								</div>
								<div class="col-xs-4">
									<label for="ex3">Assigned BY <span style="color:red">*</span></label><font id="errorAssignedby" style="color:red"></font>
									<form:input type="text" path="" class="form-control" id="ex3" />
									<form:select class="form-control" path="goalSetBy"
										title="Select" id="Assignedby">
										<form:option value="" label="Select Employee" />
										<c:forEach items="${allEmployees}" var="emp"
											varStatus="status">
											<form:option path="goalSetBy" value="${emp.empId}">${emp.empName}</form:option>
										</c:forEach>
									</form:select> --%>
								</div>
								
								
							
							<div class="col-lg-12">
							            <div class="col-xs-3">
											<label for="ex3">Select Type<span style="color:black">*</span></label>
											<form:select path="type" class="form-control" title="Select" id="Appraisal">
													<form:option  value="" label="Select type"></form:option>
													<c:forEach items="${metricsList}" var="metric">
													<form:option  value="${metirc.metricId}">${metirc.metricName}</form:option>
													</c:forEach>
												</form:select>
												 <font id="errorAppraisal" style="color:red"></font>
										</div>
										
										<div class="col-md-3">
											<label for="ex1">Start Date <span style="color:black">*</span></label>
											<div class="input-group">
												<form:input type="text" path="goalFrom" class="form-control"
													id="datepickerautoclose" placeholder="dd/mm/yyyy" />
												<span class="input-group-addon bg-primary b-0 text-white"><i
													class="fa fa-calendar"></i></span>
											</div>
										<font id="errordatepickerautoclose" style="color:red"></font>
										</div>
										
										<div class="col-md-3">
											<label for="ex2">End Date <span style="color:black">*</span></label>
											<div class="input-group">
												<form:input type="text" path="goalTo" class="form-control"
													id="datepickerautoclose1" placeholder="dd/mm/yyyy" />
												<span class="input-group-addon bg-primary b-0 text-white"><i
													class="fa fa-calendar-o"></i></span>
											</div>
										<font id="errordatepickerautoclose1" style="color:red"></font>
										</div>
										</div>
										
										        <div class="col-lg-12">
										
									              <form:hidden  path="status" value="New" />
										
	                                             </div>
									
									<div class="col-lg-12">
											<div class="col-xs-9">
												<label for="ex1">Goal Information <span style="color:red">*</span></label>
												<form:input path="goalInfo" class="form-control" id="goal"
													placeholder="Enter Goal information" />
													<font id="errordgoal" style="color:red"></font>
											</div>
									</div>
									
									<div class="col-lg-12">
											<div class="col-xs-9">
												<label for="ex1">Instruction</label>
												<form:textarea path="remarks" class="form-control" id="ex3"
													placeholder=""></form:textarea>
											</div>
									</div>
									<p>&nbsp;</p>
								
							                   <div class="col-md-offset-3">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
									</div>		
					</form:form>
						</div>
						</div>
						
						</div>
					</div>
			
				
				<!-- End row -->
			<!-- End row -->
		<!-- container -->
	<!-- content -->



	<!-- Footer -->
	<%@ include file="/WEB-INF/jsp/HR/footer.jsp"%>
	<!-- End Footer -->

	</div>
	<!-- end container -->



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
			multidate : true,
			multidateSeparator : ","
		});
		jQuery('#date-range').datepicker({
			toggleActive : true
		});
	</script>

</body>
</html>