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

<title>WELEZO</title>

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
	
        <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	

<script src="resources/HR/js/modernizr.min.js"></script>

</head>

<body>
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">

			<!-- Page-Title -->

<div class="col-sm-12">
					<div class="row">
						<div class="card-box">
                       
                         <a href="#demo" class="btn btn-info btn-block" data-toggle="collapse"> <i class="fa fa-plus" aria-hidden="true"></i> NEW JOB OPENING </a>
  <div id="demo" class="collapse">
  <br />
  <!--  	<h6 class="header-title m-t-0 m-b-30">Open Vacancies</h6> -->
  <div class="table table-responsive">
							  <table id="datatable-fixed-header" class="table table-striped table-bordered">
								<thead>
									<tr>
										<!-- <th>Id </th> -->
										<th>Dept & Designation</th>
										<th>No_position</th>
										<th>Open Date</th>
										<th>Target Date</th>
										<th>Filled Position</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${allJobOpenings}" var="jobList">
										<tr>
											<%--  <td><c:out value="${jobList.jobOpenId}" /></td> --%>
											<td class="account-name5 sort-value"><c:out
													value="${jobList.Department}" /></td>
											<td class="account-name1 sort-value"><c:out
													value="${jobList.noPosition}" /></td>
											<td class="account-name2 sort-value"><c:out
													value="${jobList.openDate}" /></td>
											<td class="account-name3 sort-value"><c:out
													value="${jobList.targetDate}" /></td>
											<td class="account-name4 sort-value"><c:out
													value="${jobList.filledPosition}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</div>
  </div>
                       
						
						</div>
						<!-- end Col-9 -->
					</div>
					<!-- End row -->






			</div>
			
 
 
				<div class="col-sm-12">
					<div class="row">
						<div class="card-box">
									<div class="panel-group" id="accordion5">
											    <div class="panel panel-default">
											      <div class="panel-heading">
													        <h4 class="panel-title">
													          <a data-toggle="collapse" data-parent="#accordion5" href="#collapse5">INTERVIEW CANDIDATE LIST</a>
													        </h4>
													      </div>
													      <div id="collapse5" class="panel-collapse collapse in">
													        <div class="panel-body">
													        <!--  <div class="card-block"> -->
													         <form action="recuirmentlist1" method="post" class="form-inline">
													         <div class="form-group">
													         <label>From</label>
													         <input type="text" name="fromDate" value="${fromDate}" class="form-control input-sm" id="datepickerautoclose1" />
													         </div>
													        
													        <div class="form-group">
													         <label>To</label>
													       <input type="text" name="toDate" value="${toDate}" id="date-range" class="form-control input-sm"  />
													         </div>
													         
													         <div class="form-group">
													         <label>Status</label>
													         <select name="status" title="Appointment Status"  id="assign" class="form-control input-sm">
																<option value="${status}" label="${status}" ></option>
																<option value="Shortlisted">Shortlisted</option>
																<option value="For Interview">For Interview</option>
																<option value="Rejected">Rejected</option>
																<option value="On Hold">On Hold</option>
																<option value="Selected">Selected</option>
																<option value="Offered">Offered</option>
																</select>	
													         </div>
													         
													         <div class="form-group">
													         <button type="submit" class="btn btn-success waves-effect waves-light" value="Go">Go</button>
													         </div>
													         
                           
                            
			                                			
																
			                                		</form>
			                                		</div>
			                                		
			                                		
			                 <div class="table table-responsive">                		
							 <table id="datatable-keytable" class="table table-striped table-bordered">
								<thead>
									<tr>
										 	<th>SL No.</th>
											<th>Candidate Name</th>
											<th>Contact number</th>
											<th>E-Mail</th>
											<th>Gender</th>
											<th>Applied Position</th>
											<th>Department</th>
										     <th>Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${candidateList}" var="emp" varStatus="counter">
										<tr>
											  <td><c:out value="${counter.index + 1}" /></td>
											<td class="account-name sort-value"><a href="OtherEmployeeDetails?empId=<c:out value='${emp.candidateId}'/>"><c:out
														value="${emp.Name}" /></a></td>
											<td class="account-name1 sort-value"><c:out value="${emp.contactNumber}" /></td>
											<td class="account-name2 sort-value"><c:out value="${emp.email}"/></td>
											<td class="account-name3 sort-value"><c:out	value="${emp.gender}" /></td>
											<td class="account-name4 sort-value"><c:out	value="${emp.designation}" /></td>
											<td class="account-name5 sort-value"><c:out value="${emp.department}"/></td>
											<td class="account-name6 sort-value">
											<c:if test="${emp.interviewStatus == 'Offered'}">
											<a href="addEmployeeDTOWelezo?candidateId=<c:out value='${emp.candidateId}'/>"><c:out value="${emp.interviewStatus}"/></a>
											</c:if>
											<c:if test="${emp.interviewStatus != 'Offered'}">
											<c:out value="${emp.interviewStatus}"/>
											</c:if>
											
											
											</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
							</div>
  </div>
  </div>   
  
													    

														</div>
													</div>
												</div>

			</div>
			
			</div>
			
			<!-- container -->

			<!-- Footer -->
			 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
			<!-- End Footer -->

		</div>
		<!--container  -->



	</div>
	<!--wrapper  -->

	<!-- /Right-bar -->
	 <!-- jQuery  -->
        <script src="resources/HR/js/jquery.min.js"></script>
        <script src="resources/HR/js/bootstrap.min.js"></script>
        <script src="resources/HR/js/detect.js"></script>
        <script src="resources/HR/js/fastclick.js"></script>
        <script src="resources/HR/js/jquery.slimscroll.js"></script>
        <script src="resources/HR/js/jquery.blockUI.js"></script>
        <script src="resources/HR/js/waves.js"></script>
        <script src="resources/HR/js/wow.min.js"></script>
        <script src="resources/HR/js/jquery.nicescroll.js"></script>
        <script src="resources/HR/js/jquery.scrollTo.min.js"></script>

        <!-- Datatables-->
        <script src="resources/HR/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/HR/plugins/datatables/jszip.min.js"></script>
        <script src="resources/HR/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/HR/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/HR/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="resources/HR/pages/datatables.init.js"></script>

        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: "resources/HR/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>
        
        
         <script src="resources/HR/plugins/moment/moment.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/x-editable/dist/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
        <script type="text/javascript" src="resources/HR/pages/jquery.xeditable.js"></script>
        
        
        <!-- Plugins Js -->
        <script src="resources/HR/plugins/switchery/switchery.min.js"></script>
        <script src="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/HR/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/moment/moment.js"></script>
     	<script src="resources/HR/plugins/timepicker/bootstrap-timepicker.min.js"></script>
     	<script src="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/HR/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

    
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
	<script type="text/javascript">
	jQuery(document)
	.ready(
			function() {

				// advance multiselect start
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

//Time Picker
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

//Date Picker
//Date Picker
jQuery('#datepicker').datepicker();
jQuery('#datepickerautoclose').datepicker({
format : 'dd/mm/yyyy',
autoclose : true,
todayHighlight : true
});

jQuery('#datepicker').datepicker();
jQuery('#datepickerautoclose1').datepicker({
format : 'dd/mm/yyyy',
autoclose : true,
todayHighlight : true
});

jQuery('#datepicker-inline').datepicker();
jQuery('#datepicker-multiple-date').datepicker({
format : "yyyy-mm-dd",
clearBtn : true,
multidate : true,
multidateSeparator : ","
});
jQuery('#date-range').datepicker({
format : "dd/mm/yyyy",
autoclose : true,
todayHighlight : true,
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
format : 'dd/mm/yy h:mm A',
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

$('#reportrange').daterangepicker(
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
			'Last 7 Days' : [ moment().subtract(6, 'days'), moment() ],
			'Last 30 Days' : [ moment().subtract(29, 'days'), moment() ],
			'This Month' : [ moment().startOf('month'),
					moment().endOf('month') ],
			'Last Month' : [
					moment().subtract(1, 'month').startOf('month'),
					moment().subtract(1, 'month').endOf('month') ]
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
			daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ],
			monthNames : [ 'January', 'February', 'March', 'April', 'May',
					'June', 'July', 'August', 'September', 'October',
					'November', 'December' ],
			firstDay : 1
		}
	},
	function(start, end, label) {
		console.log(start.toISOString(), end.toISOString(), label);
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