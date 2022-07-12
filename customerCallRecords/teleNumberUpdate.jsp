<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
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

<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>

<!--  // interger validation script -->

<SCRIPT language="javascript">
	function addRow(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var colCount = table.rows[0].cells.length;

		for (var i = 0; i < colCount; i++) {

			var newcell = row.insertCell(i);

			newcell.innerHTML = table.rows[0].cells[i].innerHTML;
			//alert(newcell.childNodes);
			switch (newcell.childNodes[0].type) {
			case "text":
				newcell.childNodes[0].value = "";
				break;
			case "checkbox":
				newcell.childNodes[0].checked = false;
				break;
			case "select-one":
				newcell.childNodes[0].selectedIndex = 0;
				break;
			}
		}
	}

	function deleteRow(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for (var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					if (rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}
</SCRIPT>

 <!--add file validation  -->
<script src="resources/validation/customerCallRecords/teleNumberUpdate.js"></script>
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
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"><font face="verdana" class="page-title">TELESALES
								CALLS </font> <!-- <h4 class="page-title">Edit Presales</h4> --></li>
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
	<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
	<!-- Left Sidebar End -->


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

	<!-- Modal -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="row">
				<div class="col-sm-12">
				<form action="saveNumbers" name="form" onsubmit="return validate()" method="post">
					<div class="card-box table-responsive">
						<div class="form-group">
							<div class="col-sm-8">
								 
								<div class="input-group">
									<span class="input-group-addon bg-primary b-0 text-white">Date <span style="color:red">*</span></span>
									<input type="text" name="date" id="datepickerautoclose"  class="form-control input-sm"  placeholder="DD/MM/YYYY"/>
										
										 <span	class="input-group-addon bg-info b-0 text-white">CSR Name <span style="color:red">*</span></span>
										 <select name="csr" title="----Csr Name----" class="form-control input-sm" id="assign">
											<option value="" label="Select CSR Name" />
											<c:forEach var="employee" varStatus="status" items="${allEmployeeDetails}">
												<c:if test="${employee.roleType=='CSR'}">
													<option  value="${employee.empId}">${employee.empName}</option>
												</c:if>
											</c:forEach>
										</select>
								</div>
								<div class="col-md-offset-0">
								<font id="errordatepickerautoclose" style="color:red"></font>
								</div>
								<div class="col-md-offset-9">
								<font id="errorcsr" style="color:red"></font>
								</div>
							</div>

						</div>
						<p>&nbsp;</p>

						

						<TABLE id="dataTable" width="1000px" border="1">
							<TR>
								<TD><INPUT type="checkbox" name="chk" /></TD>
                                  
								<TD>&nbsp;<label>Phone Number : </label> <input type="text" name="number" onkeypress="javascript:return isNumber(event)"  minlength="10" maxlength="13"  required="required">
                                     <font id="errorPhone" style="color:red"></font>
                                     <span id="error" style="color: red; display: none">* Enter
							digits (0 - 9)</span>
								</TD>


								<TD>&nbsp;<label>Customer Name :</label> <input type="text" name="name" onkeypress="return onlyAlphabets(event,this);">
								</TD>


								<TD>&nbsp;<label>Status :</label> 
								<select name="status"  required="required" >
								        <option label="Select Status" ></option>
										<option value="RNR">RNR</option>
										<option value="Switched Off">Switched Off</option>
										<option value="Not Interested">Not Interested</option>
										<option value="Interested May buy">Interested May buy</option>
										<option value="Customer Purchased">Customer Purchased</option>
										<option value="Out Of station">Out Of station</option>
								</select>
								<span id="errorstatuss" style="color:red"></span>
								</TD>

							</TR>

						</TABLE>
						<p>&nbsp;</p>
						<button type="button" class="btn btn-gray btn-rounded btn-sm"
							 onclick="addRow('dataTable')" > <i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add More</button>
							
							<button type="button" class="btn btn-warning btn-rounded  btn-sm"
							 onclick="deleteRow('dataTable')" /> <i class="fa fa-minus" aria-hidden="true"></i>&nbsp;Select & Delete</button>
							
						<p>&nbsp;</p>
						<div class="col-md-offset-5">
							<button type="submit" onclick="return validate()"
								class="btn btn-primary waves-effect waves-light" value="submit">Submit</button>
							<button type="reset"
								class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
						</div>


					</div>
</form>
				</div>
				<!-- end col -->
			</div>
			<!-- Modal -->
		</div>
	</div>
	</div>
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->

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

	<script>
		jQuery(document)
				.ready(
						function() {

							//advance multiselect start
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
			format : 'hex'
		});
		$('.colorpicker-rgba').colorpicker();

		// Date Picker
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose').datepicker({
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

		//Date range picker
		$('.input-daterange-datepicker').daterangepicker({
			buttonClasses : [ 'btn', 'btn-sm' ],
			applyClass : 'btn-default',
			cancelClass : 'btn-primary'
		});
		$('.input-daterange-timepicker').daterangepicker({
			timePicker : true,
			format : 'DD/MM/YYYY h:mm A',
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

		$('#reportrange')
				.daterangepicker(
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
								'Last 7 Days' : [ moment().subtract(6, 'days'),
										moment() ],
								'Last 30 Days' : [
										moment().subtract(29, 'days'), moment() ],
								'This Month' : [ moment().startOf('month'),
										moment().endOf('month') ],
								'Last Month' : [
										moment().subtract(1, 'month').startOf(
												'month'),
										moment().subtract(1, 'month').endOf(
												'month') ]
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
								daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th',
										'Fr', 'Sa' ],
								monthNames : [ 'January', 'February', 'March',
										'April', 'May', 'June', 'July',
										'August', 'September', 'October',
										'November', 'December' ],
								firstDay : 1
							}
						},
						function(start, end, label) {
							console.log(start.toISOString(), end.toISOString(),
									label);
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
