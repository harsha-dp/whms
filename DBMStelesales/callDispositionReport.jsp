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
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!-- App title -->
<title>Welezo</title>

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
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script src="resources/js/modernizr.min.js"></script>
<!-- Table -->

<script src="resources/table/table-jquery-1.11.3.min.js"></script>

<link href="resources/table/table-jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<script src="resources/table/table-jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/table/table-buttons.dataTables.min.css" />
<script src="resources/table/table-dataTables.buttons.min.js"></script>
<script src="resources/table/table-buttons.colVis.min.js"></script>

<script src="resources/extraDatatable/jquery-1.12.4.js"></script>
<script src="resources/extraDatatable/jquery.dataTables.min.js"></script>
<script src="resources/extraDatatable/dataTables.buttons.min.js"></script>
<script src="resources/extraDatatable/buttons.print.min.js"></script>

<script src="resources/extraDatatable/jszip.min.js"></script>
<script src="resources/extraDatatable/pdfmake.min.js"></script>
<script src="resources/extraDatatable/vfs_fonts.js"></script>
<script src="resources/extraDatatable/buttons.colVis.min.js"></script>
<script src="resources/extraDatatable/buttons.html5.min.js"></script>

<script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>

<link href="resources/excel/Filter.css" rel="stylesheet" type="text/css" />
<script src="resources/excel/headerOptions.js"></script>
 <link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>
<style>
tfoot {
	display: table-header-group;
}

</style>
<style>
.table, td, th {
	border: 1px solid #ddd;
}
 .topbar {
    height: 70px;
 display: block;
  
   /*  margin: 20px auto 0 auto; */
   /*  overflow: hidden; */
}  
</style>
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">
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
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"><font class="page-title">CALL STATUS DISPOSITION AND CALL BACK REPORT</font></li>
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

		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">

				<div class="container">
					<!--   <h2>Panel Heading</h2> -->
					<div id="myDIV">
						<div class="panel panel-default">
							<div class="panel-heading">
								 <form action="callsDispositions1" method="post" class="form-inline">

									<div class="row">
										<div class="panel-heading">
			
			<div class="form-group">
	 <label class="" for="email">From:</label>
<input type="text" name="fromDate" value="${fromDate}" id="datepicker-autoclose" class="form-control input-sm"  />
</div>
<div class="form-group">
	 <label class="" for="email">To:</label>
<input type="text" name="toDate" id="datepicker-autoclose1" value="${toDate}" class="form-control input-sm"  />
</div>
<div class="form-group">
	 <label class="" for="email">Select:</label>
<select name="groupBy" id="date-range" class="form-control input-sm"  >
																<option value="${groupBy}" label="${groupBy}">${groupBy}</option>
																<option value="Calls Disposition">Calls Disposition</option>
																<option value="Call Back Report">Call Back Report</option>
																</select>
</div>
<div class="form-group">
	<button type="submit"
														class="btn btn-default btn-rounded btn-sm " value="Go">
														<i class="fa fa-search" aria-hidden="true"></i> Search
													</button>

</div>							
										
										
											
											
										</div>
									</div>

								</form>

							</div>
							<div id="myDIV">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-12 col-lg-12 col-md-12">
											<div class="scrollit">
													<table id="example" class="grid display nowrap"
														style="width: 100%">
														<thead>
                                       	<%--  <c:out value="${columnName.size()}"></c:out> --%>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <td class="filtername"><b>${name.columnName}</b></td>
									</c:forEach>
                                   </tr>
                                        </thead>
                                        
                                        <tfoot>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <th class="filtername">${name.columnName}</th>
									</c:forEach>
                                   </tr>
                                        </tfoot>
                                        
                                        <tbody>
                                <c:forEach var="row" items="${stkList}"> 
                                <tr>
                                   <c:if test="${columnName.size() >= 1}"><td>${row.attr1}</td></c:if>
                                	<c:if test="${columnName.size() >= 2}"><td>${row.attr2}</td></c:if>
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
                                      <c:if test="${columnName.size() >= 13}"><td>${row.attr13}</td></c:if>
                                       <c:if test="${columnName.size() >= 14}"><td>${row.attr14}</td></c:if>
                                         <c:if test="${columnName.size() >= 15}"><td>${row.attr15}</td></c:if>
                                          <c:if test="${columnName.size() >= 16}"><td>${row.attr16}</td></c:if>
                                          <c:if test="${columnName.size() >= 17}"><td>${row.attr17}</td></c:if>
                                          <c:if test="${columnName.size() >= 18}"><td>${row.attr18}</td></c:if>
                                          <c:if test="${columnName.size() >= 19}"><td>${row.attr19}</td></c:if>
                                          <c:if test="${columnName.size() >= 20}"><td>${row.attr20}</td></c:if>
               
            </tr></c:forEach>
                                        </tbody>
													</table>
											</div>
										</div>
									</div>
									<!--  -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->

		<!-- END wrapper -->

	</div>



	<script>
		var resizefunc = [];
	</script>

	<script>
		$(function() {
			$('#example').excelTableFilter();
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

	<!--Date format  -->
	<script src="resources/table/tableDateScript.js"></script>
	<!--  -->

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
	<script
		src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
	<script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>

	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

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
jQuery('#datepicker-autoclose').datepicker({
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