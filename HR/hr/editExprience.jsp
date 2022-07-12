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

<title>Welezo</title>
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
<link href="resources/HR/css/responsive.css" rel="stylesheet"
	type="text/css" />


<script src="resources/HR/js/modernizr.min.js"></script>



<!-- Plugins css-->
<link
	href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/HR/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" />
<link href="resources/HR/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link
	href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css"
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



<!-- character validation script -->

<script type="text/javascript">
    function onlyNumbersAndPlus(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode == 43)
            return true;
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyNumbers(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyAlphabets(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;  //for IE
        else
            charCode = evt.which;  //for firefox
        if (charCode == 32) //for &lt;space&gt; symbol
            return true;
        if (charCode > 31 && charCode < 65) //for characters before 'A' in ASCII Table
            return false;
        if (charCode > 90 && charCode < 97) //for characters between 'Z' and 'a' in ASCII Table
            return false;
        if (charCode > 122) //for characters beyond 'z' in ASCII Table
            return false;
        return true;
    }
</script>

<script type="text/javascript">

function validate2(from)
{
	    var error=document.getElementById("companyerror");
	  	var company=form2["company"].value;

	      error.innerHTML="";
	   
	      if( company==null || company==""){
	          error.innerHTML="Enter previous expreience company name ";
	          return false;
	      }
	      

	       if(company.length<2){
	          error.innerHTML="Expreience company name  should be minimum 2 character";
	          return false;
	      } 
	      if(company.length>50){
	          error.innerHTML="Expreience company name should be in between 2 to 50 character";
	          return false;
	      }  

	      var error=document.getElementById("dateerror");
		  	var designation=form2["designation"].value;

		      error.innerHTML="";
		   
		      if( designation==null || designation==""){
		          error.innerHTML="Enter Designation ";
		          return false;
		      }

		      if(designation.length<2){
		          error.innerHTML="Designation name should be minimum 2 character";
		          return false;
		      } 
		      if(designation.length>30){
		          error.innerHTML="Designation name should be in between 2 to 30 character";
		          return false;
		      }/*end */


		      var error=document.getElementById("dateerror1");
			  	var datepickerautoclose=form2["datepickerautoclose"].value;

			      error.innerHTML="";
			   
			      if( datepickerautoclose==null || datepickerautoclose==""){
			          error.innerHTML="Select previous company start date ";
			          return false;
			      }

			      var error=document.getElementById("date1error");
				  	var date1=form2["datepickerautoclose1"].value;

				      error.innerHTML="";
				   
				      if( date1==null || date1==""){
				          error.innerHTML="Select previous company end date ";
				          return false;
				      }

		      var error=document.getElementById("ctcerror");
			  	var ctc=form2["ctc"].value;

			      error.innerHTML="";
			   
			      if( ctc==null || ctc==""){
			          error.innerHTML="Enter previous company ctc ";
			          return false;
			      }

			       if(ctc.length<1){
			          error.innerHTML="ctc should be minimum 1 digit";
			          return false;
			      } 
			      if(ctc.length>6){
			          error.innerHTML="ctc should be in between 1 to 6 digit";
			          return false;
			      } 
			      if(/^[0-9. ,]*$/.test(ctc) == false){
					   	error.innerHTML="Please enter numbers only ";
					   	return false;
					   }


			      var error=document.getElementById("reasonerror");
				  	var reason=form2["reason"].value;

				      error.innerHTML="";
				   
				      if( reason==null || reason==""){
				          error.innerHTML="Enter reason for leaving previous company ";
				          return false;
				      }

				       if(reason.length<3){
				          error.innerHTML="Reason should be minimum 3 character";
				          return false;
				      } 
				      if(reason.length>200){
				          error.innerHTML="Reason should be in between 3 to 200 digit";
				          return false;
				      } 
				      
					       
}

</script>
</head>
<body style="mergin: 0; background-color: gray">
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->
	<div class="wrapper">
		<div class="container">
			<!-- Page-Title -->
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<div class="row">
                       <h6></h6>
						<h4 class="custom-modal-title" style="text-align: center">EDIT WORK EXPERIENCE</h4>
						<div class="card-box">
							<div class="custom-modal-text text-left">

								<form:form action="postEditExpern" name="form2" onsubmit="retrun validate2()"  modelAttribute="employeeDetails" >
									<form:hidden path="expId" value="${experienceById.expId}" />
								<form:hidden path="empId" value="${experienceById.empId}" />
								<form:hidden path="status" value="Employee"/>
								<div class="row">
								<div class="form-group">
									<label for="name"> Company Name <span
										style="color: red;">*</span></label>
										 <form:input type="text"  value="${experienceById.companyName}" path="companyName"
										class="form-control" id="company"  />  <font id="companyerror" style="color: red;"></font>
								</div>
								<div class="form-group">
									<label for="position">Designation<span
										style="color: red;">*</span></label> <form:input type="text"
										path="designation" value="${experienceById.designation}" class="form-control" id="designation" />   <font id="dateerror" style="color: red;"></font>
										
								</div>
								</div>

                                 <div class="row">
								<div class="form-group">
									<label for="company">Start Date <span
										style="color: red;">*</span></label>
										<div class="input-group">
										 <form:input type="text"
										path="qualification" value="${experienceById.fromDate}" class="form-control" id="datepickerautoclose"
										placeholder="" /> <font id="dateerror1" style="color: red;"></font>
										 <span class="input-group-addon bg-primary b-0 text-white"><i
										class="ti-calendar"></i></span>
								</div>
								</div>
								<div class="form-group">
									<label for="company">End date <span style="color: red;">*</span></label>
									<div class="input-group">
									<form:input type="text" path="specialization" value="${experienceById.toDate}" class="form-control"
										id="datepickerautoclose1" placeholder="" />  <font id="date1error" style="color: red;"></font>
										 <span class="input-group-addon bg-primary b-0 text-white"><i
										class="ti-calendar"></i></span>
								</div>
								</div>
								</div>
								
								<div class="row">
								<div class="form-group">
									<label for="exampleInputEmail1">CTC/annum <span
										style="color: red;">*</span></label> <form:input type="text"
										path="ctcAnnum" class="form-control"  value="${experienceById.ctcAnnum}" id="ctc"  />
									<font id="ctcerror" style="color: red;"></font>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Reason for leaving </label><form:input type="text" path=""
										onkeypress="return onlyAlphabets(event,this);"
										class="form-control" id="reason"  value="${experienceById.companyName}"  />   <font id="" style="color: red;"></font>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Verification details </label><form:input type="text" path=""
										onkeypress="return onlyAlphabets(event,this);"
										class="form-control"  /> <font
										id="reasonerror" style="color: red;"></font>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Verified</label> <form:input type="text" path=""
										onkeypress="return onlyAlphabets(event,this);"
										class="form-control" /> <font
										id="reasonerror1" style="color: red;"></font>
								</div>
								</div>

								<div align="center">
									<button type="submit" onclick="return validate2()"
										class="btn btn-info waves-effect waves-light">Submit</button>
								</div>
								</form:form>
							</div>
							<!-- End row -->
						</div>
						<!-- end Col-9 -->


					</div>
					<!-- End row -->
				</div>
			</div>
			<!-- container -->
		</div>
		<!-- content -->



		<!-- Footer -->
		 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
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