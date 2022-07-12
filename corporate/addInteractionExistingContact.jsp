
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WELEZO</title>

<!-- Plugins css-->
<link
	href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
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
	rel="stylesheet" />
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script src="resources/js/modernizr.min.js"></script>

<!--  // interger validation script -->

<!--add vendors  validation  -->
<script src="resources/validation/corporate/corporateAppointment.js"></script>
<!--  -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <script>
/**
 * 
 */

function validate(from) {

	var error = document.getElementById("errorcontactName");
	var contactName = form["contactName"].value;

	error.innerHTML = "";

	if (contactName == null || contactName == "") {
		error.innerHTML = "Enter corporate contact person name";
		return false;
	}
	
	else if (contactName.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	else if (contactName.length > 100) {
		error.innerHTML = "Name should be in between 3 to 100 character";
		return false;
	}/* end */
	
	/* start */
	var error = document.getElementById("errorprimaryContact");
	var primaryContact = form["primaryContact"].value;

	error.innerHTML = "";

	if (primaryContact == null || primaryContact == "") {
		error.innerHTML = "Enter contact number";
		return false;
	}

	else if (isNaN(primaryContact)) {
		error.innerHTML = "Mobile Number Can Not be alphabate";
		return false;
	}
	
	else if (primaryContact.length < 10) {
		error.innerHTML = "Number should be 10 digits !!";
		return false;
	}
	else if (primaryContact.length > 11) {
		error.innerHTML = "Number should be 10 to 11 digits";
		return false;
	}/* end */
	
	
	var error = document.getElementById("erroradd_fields_placeholder");
	var add_fields_placeholder = form["add_fields_placeholder"].value;

	error.innerHTML = "";

	if (add_fields_placeholder == null || add_fields_placeholder == "") {
		error.innerHTML = "Please select mode of interaction ";
		return false;
	}
	
	var error = document.getElementById("errorpurposes");
	var purposes = form["purposes"].value;

	error.innerHTML = "";

	if (purposes == null || purposes == "") {
		error.innerHTML = "Please select purpose ";
		return false;
	}
	
	

}
</script>
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
                             <a href="corporateDashBoard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs hidden-sm">
						<font face="verdana"  class="page-title"> ${contactById.corporateName}</font>
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
	</div>
	<!-- Top Bar End -->

	<!-- ========== Left Sidebar Start ========== -->
	 <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
	<!-- Left Sidebar End -->


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div class="content-page">

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

	</div>
	<!-- Modal -->
	<!-- <div id="custom-modal" class="modal-demo"> -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="container"></div>
			<!-- end row -->

			<!-- popup window -->
<br>
			<div class="row">
				<div class="col-lg-12">

					<!-- Modal Add Category -->
					<!--  <div class="modal fade none-border" id="add-category"> -->
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="modal-title text-center ">CORPORATE INTERACTION</h4>
								</div>
								<div class="custom-modal-text text-left">
									<!-- =============	form:form start from here ==============    -->
							<form action="saveCorpInterActionsExisting" name="form" onsubmit="return validate()">
							<input type="hidden" name="contactId" value="${contactById.contactId}">
							<input type="hidden" name="corporateId" value="${contactById.corporateId}">
							<input type="hidden" name="interactionBy" value="${USERID}">
							
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">

									<div class="col-md-6">
												<label><span style="color:red">*</span> Contact Person Name</label>
												<div class="form-group">
													<input type="text" name="contactName" id="contactName" value="${contactById.contactName}" class="form-control iput-sm" >
												</div>
												<font style="color:red" id="errorcontactName"></font>
											</div>
									<div class="col-md-6">
												<label>Desgination</label>
												<div class="form-group">
													<input type="text" name="designation" value="${contactById.designation}" class="form-control iput-sm">
												</div>
											</div>
											</div>
											<div class="col-md-12">
											<div class="col-md-6">
												<label><span style="color:red">*</span> Contact Number</label>
												<div class="form-group">
													<input type="text" name="primaryContact" id="primaryContact" value="${contactById.contactNo}" class="form-control iput-sm">
												</div>
												<font style="color:red" id="errorprimaryContact"></font>
											</div>
											<div class="col-md-6">
												<label>Contact E-Mail</label>
												<div class="form-group">
													<input type="text" name="primaryEmail" value="${contactById.email}" class="form-control iput-sm">
												</div>
											</div>
											</div>
											<div class="col-md-12">
											<div class="col-md-6">
												<label><span style="color:red">*</span> Interaction Mode </label>
												<div class="form-group">
													<select name="interactionMode" class="form-control iput-sm" id="add_fields_placeholder">
														 <option value="">--Select--</option>
                                                                           <option value="Call">Call</option>
                                                                           <option value="SMS">SMS</option>
                                                                           <option value="Email">Email</option>
                                                                           <option value="Visit">Visit</option>
														</select>
												</div>
												  <font style="color:red" id="erroradd_fields_placeholder"></font>
</div>
<script>
$(document).ready(function()
        {
    $("#add_fields_placeholder").change(function()
{
  if($(this).val() == "Visit")
{
  $("#add_fields_placeholderValue").show();
}
else
{
  $("#add_fields_placeholderValue").hide();
}
  if($(this).val() == "SMS")
  {
    $("#add_fields_placeholderValue3").show();
  }
  else
  {
    $("#add_fields_placeholderValue3").hide();
  }
  if ($(this).val() == "Email"){
$("#add_fields_placeholderValue1").show();
	  }
  else{
	  $("#add_fields_placeholderValue1").hide();
	  }
    if ($(this).val() == "Call"){
    	$("#add_fields_placeholderValue2").show();
    		  }
    	  else{
    		  $("#add_fields_placeholderValue2").hide();
    		  }
    	  });
    
    $("#add_fields_placeholderValue").hide();
    $("#add_fields_placeholderValue1").hide();
    $("#add_fields_placeholderValue2").hide();
    $("#add_fields_placeholderValue3").hide();
});

</script>

<div class="col-md-6">
												<label><span style="color:red">*</span> Purpose </label>
												<div class="form-group">
													<select name="purpose" class="form-control iput-sm" id="purposes">
													<c:forEach var="constant" varStatus="status"
																items="${welezoConstant}">
																<c:if test="${constant.constType=='Corporate_interaction_purpose'}">
																	<option value="${constant.CValue}">${constant.CDisplay}</option>
																</c:if>
															</c:forEach>
													</select>
												</div>
												        <font style="color:red" id="errorpurposes"></font>
											</div>
											</div>


 <div class="col-md-12">
                                                <div id="add_fields_placeholderValue">
                                                           <div class="col-md-4">
                                                           <label><span style="color:red">*</span> Date</label>
                                                           <div class="form-group">
                                                                     <input type="text" name="appointmentDate" id="datepickerautoclose2" class="form-control iput-sm" placeholder="dd/mm/yyyy" />
                                                                </div>
                                                                <font style="color:red" id="errordatepickerautoclose2"></font>
                                                           </div>
                                                           
                                                           <div class="col-md-4">
                                                           <label><span style="color:red">*</span> Time</label>
                                                           <div class="form-group">
                                                                   <!--   <input type="text" id="add_fields_placeholderValue" class="form-control iput-sm" /> -->
                                                                     <select name="timeAppointment" title="----TOA----"  class="form-control iput-sm" id="timee" >
                                                <option value="" label="select Meeting Time slot"></option>
                                                <option value="9:30 AM">  09:30 AM </option>
                                                <option value="10:30 AM"> 10:30 AM </option>
                                                <option value="11:30 AM"> 11:30 AM </option>
                                                <option value="12:30 PM"> 12:30 PM </option>
                                                <option value="1:30 PM "> 01:30 PM </option>
                                                <option value="2:30 PM "> 02:30 PM </option>
                                                <option value="3:30 PM "> 03:30 PM </option>
                                                <option value="4:30 PM "> 04:30 PM </option>
                                                <option value="5:30 PM "> 05:30 PM </option>
                                                <option value="6:30 PM "> 06:30 PM </option>
                                           </select>
                                                                </div>
                                                                  <font style="color:red" id="errortimee"></font>
                                                           </div>
                                                           
                                                           <div class="col-md-4">
                                                           <label><span style="color:red">*</span> Executive</label>
                                                           <div class="form-group">
                                                      <!--  <input type="text" id="add_fields_placeholderValue"  class="form-control iput-sm" /> -->
                                               <select name="executive" title="----Select Executive----"  class="form-control iput-sm" id="exceutive">
                                                           <option value="" label="select executive name" />
                                                           <c:forEach var="employee" varStatus="status" items="${executive}">
                                                     <option  value="${employee.empId}" >${employee.empName}</option>
                                                           </c:forEach>
                                                     </select>
                                                                </div>
                                                                     <font style="color:red" id="errorexceutive"></font>
                                                           </div>
                                                           
                                                           </div>
                                                           </div>
                                                           
                                                       <div class="col-md-12">
                                                          <div id="add_fields_placeholderValue1">
                                                           <div class="col-md-4">
                                                           <label><span style="color:red">*</span> Upload Email</label>
                                                           <div class="form-group">
                                                                     <input type="file"  id="email" class="form-control iput-sm" />
                                                                </div>
                                                                <font style="color:red" id="erroremail"></font>
                                                           </div>
                                                           </div>
                                                           </div>
                                                           
                                                            <div class="col-md-12">
                                                          <div id="add_fields_placeholderValue2">
                                                           <div class="col-md-6">
                                                           <label><span style="color:red">*</span>Call Status</label>
                                                           <div class="form-group">
                                                           <input type="text" list="data" class="form-control">
                                                           <datalist id="data">
                                                           <option value="Called">Called</option>
                                                           <option value="Scheduled">Scheduled</option>
                                                           <option value="RNR">RNR</option>
                                                           <option value="Switch Off">Switch Off</option>
                                                           <option value="DND">DND</option>
                                                           <option value="Not interested">Not interested</option>
                                                            <option value="Scheduled the call">Scheduled the call</option>
                                                             <option value="Call back">Call back</option>
                                                              <option value="Closed">Closed</option>
                                                           </datalist>
                                                                   <!--  <select class="form-control iput-sm" id="call" >
                                                                     <option> Called/Scheduled</option>
                                                                     <option></option>
                                                                     <option> RNR/Switch Off/DND/Not interested</option>
                                                                     <option> Scheduled the call/call back/closed</option>
                                                                     </select> -->
                                                                </div>
                                                                <font style="color:red" id="errorcalll"></font>
                                                           </div>
                                                           </div>
                                                           </div>
                                                           
                                                            <div class="col-md-12">
                                                          <div id="add_fields_placeholderValue3">
                                                           <div class="col-md-3">
                                                           <label><span style="color:red">*</span> From</label>
                                                           <div class="form-group">
                                                                    <input type="text" class="form-control iput-sm" id="number">
                                                                </div>
                                                           </div>
                                                           
                                                           <div class="col-md-2">
                                                           <label><span style="color:red">*</span> Date</label>
                                                           <div class="form-group">
                                                                    <input type="text" class="form-control iput-sm" id="datepickerautoclose3" placeholder="dd/mm/yyyy">
                                                                </div>
                                                           </div>
                                                           
                                                            <div class="col-md-2">
                                                           <label><span style="color:red">*</span> Time</label>
                                                           <div class="form-group">
                                                                     <select name="timeAppointment" title="----TOA----"  class="form-control iput-sm" id="timees" >
                                                <option value="" label="Select Time slot"></option>
                                                <option value="9:30 AM">  09:30 AM </option>
                                                <option value="10:30 AM"> 10:30 AM </option>
                                                <option value="11:30 AM"> 11:30 AM </option>
                                                <option value="12:30 PM"> 12:30 PM </option>
                                                <option value="1:30 PM "> 01:30 PM </option>
                                                <option value="2:30 PM "> 02:30 PM </option>
                                                <option value="3:30 PM "> 03:30 PM </option>
                                                <option value="4:30 PM "> 04:30 PM </option>
                                                <option value="5:30 PM "> 05:30 PM </option>
                                                <option value="6:30 PM "> 06:30 PM </option>
                                           </select>
                                                                </div>
                                                           </div>
                                                           
                                                            <div class="col-md-5">
                                                           <label><span style="color:red">*</span> Content</label>
                                                           <div class="form-group">
                                                                    <input type="text" class="form-control iput-sm" id="number">
                                                                </div>
                                                           </div>
                                                           
                                                           </div>
                                                           </div>
                                                           
                                                           
									
											<div class="col-md-12">
											<div class="col-md-6">
												<label>Status </label>
												<div class="form-group">
													<select name="status" class="form-control iput-sm">
													<option>Open</option>
													<option>Close</option>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<label>Remarks</label>
												<div class="form-group">
													<textarea name="remarks" class="form-control iput-sm" ></textarea>
												</div>
											</div>
											</div>

										</div>
									</div>
								<div class="modal-footer">
									<div align="center">
										<button type="submit" onclick="return validate()"
											class="btn btn-primary waves-effect waves-light"
											value="submit">Save</button>
										<button type="reset"
											class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
									</div>
								</div>
							</form>
						</div>
							</div>
							
						</div>
					</div>
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
            jQuery('#datepickerautoclose2').datepicker({
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