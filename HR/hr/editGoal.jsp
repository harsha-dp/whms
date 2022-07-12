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
   
 var error=document.getElementById("errorAssignedto");
 var Assignedto=form["Assignedto"].value;

   error.innerHTML="";

   if( Assignedto==null || Assignedto==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
 var error=document.getElementById("errorAssignedby");
 var Assignedby=form["Assignedby"].value;

   error.innerHTML="";

   if( Assignedby==null || Assignedby==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
   
 var error=document.getElementById("errordatepickerautoclose");
 var datepickerautoclose=form["datepickerautoclose"].value;

   error.innerHTML="";

   if( datepickerautoclose==null || datepickerautoclose==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
   
 var error=document.getElementById("errordatepickerautoclose1");
 var datepickerautoclose1=form["datepickerautoclose1"].value;

   error.innerHTML="";

   if( datepickerautoclose1==null || datepickerautoclose1==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
   
   
 var error=document.getElementById("errorAppraisal");
 var Appraisal=form["Appraisal"].value;

   error.innerHTML="";

   if( Appraisal==null || Appraisal==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
   
   
   
 var error=document.getElementById("errorinstruction");
 var instruction=form["instruction"].value;

   error.innerHTML="";

   if( instruction==null || instruction==""){
       error.innerHTML="This field cannot be empty!";
       return false;
   }
    else if(instruction.length<3)
   {
   error.innerHTML="instruction should atleast 3 character !";
       return false;
   }
   else if(instruction.length>400)
   {
   error.innerHTML="instruction should maximum 400 character !";
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
   
}/*end main line*/

</script>
</head>


<body>
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 align="center" style="mergin: 0; background-color: white">EDIT EMPLOYEE GOAL</h3>

					<!--Custom Toolbar-->
					<!--===================================================-->

					<form:form action="postEditGoal" name="form" onsubmit="return validate()" modelAttribute="goalTO">
						<form:hidden path="goalId" value="${goalById.goalId}" />
						<form:hidden path="goalSetFor" value="${goalById.goalSetFor}" />
						<form:hidden path="goalSetBy" value="${goalById.goalSetBy}" />
						<div class="card-box card-outline-danger">
							<div class="col-md-12">
									<div class="col-xs-6">
										<label for="ex1">Plan Title<span style="color:red">*</span></label><font id="errorgoalname" style="color:red"></font></label>
										<form:input type="text" path="goalName"
											value="${goalById.goalName}" class="form-control" id="goalname" />
									</div>
									</div>
									<br> <p>&nbsp;</p>
									<div class="col-md-12">
									<div class="col-xs-4">
										<label for="ex2">Assigned To<span style="color:red">*</span></label><font id="errorAssignedto" style="color:red"></font>
										<form:input type="text" path="" value="${goalById.setFor}"
											class="form-control" id="Assignedto" readonly="true" />
									</div>
									<div class="col-xs-4">
										<label for="ex3">Assigned BY <span style="color:red">*</span></label><font id="errorAssignedby" style="color:red"></font>
										<form:input path="" value="${goalById.setBy}"
											class="form-control" id="Assignedby" readonly="true"/>
									</div>
									
									      <div class="col-xs-4">
												<label for="ex3">Select Status<span style="color:red">*</span></label><font id="errorAppraisal1" style="color:red"></font>
												<form:select class="form-control" path="status"
													title="Select" id="Appraisal">
													<form:option value="${goalById.status}" >${goalById.status}</form:option>
													<form:option value="Achived">Achived</form:option>
													<form:option value="In Progress">In Progress</form:option>
													<form:option value="Not Achived">Not Achived</form:option>
												</form:select>
     										</div>
									
								</div>
							 <p>&nbsp;</p>
							<div class="col-lg-12">
							                
							                <div class="col-xs-4">
												<label for="ex3">Select Type<span style="color:red">*</span></label><font id="errorAppraisal2" style="color:red"></font>
												<form:select class="form-control" path="type"	title="Select" id="Appraisal">
													<form:option value="${goalById.type}" >${goalById.type}</form:option>
													<form:option value="Weekly">Weekly</form:option>
													<form:option value="Monthly">Monthly</form:option>
													<form:option value="Yearly">Yearly</form:option>
												</form:select>
											</div>
											
											<div class="col-xs-4">
												<label for="ex1">Start Date <span style="color:red">*</span></label><font id="errordatepickerautoclose" style="color:red"></font>
												<div class="input-group">
													<form:input type="text" path="goalFrom"
														value="${goalById.goalFrom}" class="form-control"
														id="datepickerautoclose" placeholder="dd/mm/yyyy" />
													<span class="input-group-addon bg-primary b-0 text-white"><i
														class="fa fa-calendar"></i></span>
												</div>
											</div>
											<div class="col-xs-4">
												<label for="ex2">End Date <span style="color:red">*</span></label><font id="errordatepickerautoclose1" style="color:red"></font>
												<div class="input-group">
													<form:input type="text" path="goalTo"
														value="${goalById.goalTo}" class="form-control"
														id="datepickerautoclose1" placeholder="dd/mm/yyyy" />
													<span class="input-group-addon bg-primary b-0 text-white"><i
														class="fa fa-calendar-o"></i></span>
												</div>
											</div>
											</div>
											 <p>&nbsp;</p>
										
											
											
											
											<div class="col-lg-12">
											<div class="col-xs-6">
												<label for="ex1">Goal Information </label>
												<form:input path="goalInfo" class="form-control" id="goal" value="${goalById.goalInfo}"/>
											   <font id="errordgoal" style="color:red"></font>
											</div>
									       
											
											<div class="col-xs-6">
												<label for="ex1">Instruction</label>
												<form:textarea type="text" path="remarks"
													placeholder="${goalById.remarks}" class="form-control" id="ex3" />
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
											</form:form>
						</div>
				</div>

				<!-- End row -->
			</div>
			<!-- End row -->
		</div>	
	
	<!-- Footer -->
	<%@ include file="/WEB-INF/jsp/HR/footer.jsp"%>
	<!-- End Footer -->

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