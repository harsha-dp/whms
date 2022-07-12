<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully featured admin CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<title>Welezo</title>
<!--Morris Chart CSS -->
<link rel="stylesheet" href="resources/HR/plugins/morris/morris.css">

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


</head>
<style>
ta /* ble {
	width: 398px;
	height: 171px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 3px;
	text-align: left;
}

table#t01 tr:nth-child(odd) {
	background-color: #e6e6ff;
}

table#t01 th {
	background-color: #8c8c8c;
	color: white;
}
table#t01 td {
	background-color: #f8f8ff;
	color: black;
} */ 
.col-sm-3 {
	width: 25%;
	padding-left: 17px;
	padding-top: 9px;
}

.card-box {
	margin-bottom: 4px;
}

.m-b-30 {
	margin-bottom: -14px;
}

.m-b-30 {
	margin-bottom: 10px !important;
}

.m-b-31 {
	margin-bottom: -17px !important;
}

.form-control {
	height: 35px;
}
</style>
<body>

	<!-- Start menu -->
	<%@ include file="menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">

			<!-- Page-Title -->
			<!-- <div class="row">
				<div class="col-sm-12">
					<h4 class="text-center">HUMAN RESOURCE</h4>
				</div>
			</div> -->



			<div class="row">
			
			<div class="col-sm-12">
			
			
			<div class="col-sm-3 col-md-3 col-lg-3">
			
				<div class="col-lg-12 col-md-12">
					<div class="card-box widget-user">
						<div>
							<img src="./resources/HR/images/da-1.png"
								class="img-responsive img-circle" alt="user">
							<div class="wid-u-info">
								<h5 class="m-t-0 m-b-5">
									<a href="department"><span class="dropcap text-primary">D</span>EPARTMENTS</a>
								</h5>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12 col-md-12">
					<div class="card-box widget-user">
						<div>
							<img src="./resources/HR/images/da-2.png"
								class="img-responsive img-circle" alt="user">
							<div class="wid-u-info">
								<h5 class="m-t-0 m-b-5">
									<a href="viewEmployees"><span class="dropcap text-primary">E</span>MPLOYEE
										LIST</a>
								</h5>
							</div>
						</div>
					</div>
				</div>
				

				<div class="col-lg-12 col-md-12">
					<div class="card-box widget-user">
						<div>
							<img src="./resources/HR/images/da-3.png"
								class="img-responsive img-circle" alt="user">
							<div class="wid-u-info">
								<h5 class="m-t-0 m-b-5">
									<a href="attendance"><span class="dropcap text-primary">A</span>TTENDANCE</a>
								</h5>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12 col-md-12">
					<div class="card-box widget-user">
						<div>
							<img src="./resources/HR/images/da-4.png"
								class="img-responsive img-circle" alt="user">
							<div class="wid-u-info">
								<h5 class="m-t-0 m-b-5">
									<a href="recuirmentlist"><span class="dropcap text-primary">R</span>ECRUITMENT</a>
								</h5>
							</div>
						</div>
					</div>
				</div>
				
				
				</div>
				
				
				<div class="col-sm-9">
					<div class="panel">
						<div class="panel-body">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<!--  -->

								<div class="col-md-12 tabs-area">

									<ul id="tabs-demo6" class="nav nav-tabs nav-tabs-v6"
										role="tablist">
										<li role="presentation" class="active"><a
											href="#tabs-demo7-area1" id="tabs-demo6-1" role="tab"
											data-toggle="tab" aria-expanded="true"><i
												class="fa fa-calendar"> TODAY ATTENDANCE</i></a></li>
										<li role="presentation" class=""><a
											href="#tabs-demo7-area2" role="tab" id="tabs-demo6-2"
											data-toggle="tab" aria-expanded="false"><i
												class="fa fa-calendar-o"> EMPLOYEE BIRTHDAY</i></a></li>
										<li role="presentation"><a href="#tabs-demo7-area3"
											id="tabs-demo6-3" role="tab" data-toggle="tab"
											aria-expanded="false"><i class="fa fa-users">
													EMPLOYEE COUNTS </i></a></li>
													<li role="presentation" class=""><a
											href="#tabs-demo8-area4" role="tab" id="tabs-demo6-4"
											data-toggle="tab" aria-expanded="false"><i
												class="fa fa-user-times">LEAVES LIST</i></a></li>
										<li role="presentation" class=""><a
											href="#tabs-demo7-area4" role="tab" id="tabs-demo6-4"
											data-toggle="tab" aria-expanded="false"><i
												class="fa fa-user"> EMA REPORT</i></a></li>
									</ul>
									<div id="tabsDemo6Content"
										class="tab-content tab-content-v6 col-md-12">
										<div role="tabpanel" class="tab-pane fade active in"
											id="tabs-demo7-area1" aria-labelledby="tabs-demo7-area1">

											<h6>Today Employee Attendance Details.</h6>
												<div style="overflow: scroll; height: 300px">
											<table class="table table-bordered">
												<thead style="background-color: menu;">
													<tr>
														<th>Sl No.</th>
														<th>EMPLOYEE NAME</th>
														<th>ATTENDANCE STATUS</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${employeeAbsenties}" var="absenties"
														varStatus="counter">
														<tr>
															<td>${counter.index +1}</td>
															<td>${absenties.empName}</td>
															<td><c:if test="${absenties.attMark == 'A'}">Absent</c:if>
																<c:if test="${absenties.attMark == 'Lt'}">Late</c:if> <c:if
																	test="${absenties.attMark == 'HD'}">Half Day</c:if>
																	<c:if test="${absenties.attMark == 'L'}">Leave</c:if> 
																	</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											</div>

										</div>
										<div role="tabpanel" class="tab-pane fade"
											id="tabs-demo7-area2" aria-labelledby="tabs-demo7-area2">
											<!--    <p>test</p> -->
											<table class="table table-bordered">
												<thead style="background-color: menu;">
													<tr>
														<th>Sl No.</th>
														<th>EMPLOYEE NAME</th>
														<th>DOB</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${employeeBirthdayList}" var="dob"
														varStatus="counter">
														<tr>
															<td>${counter.index +1}</td>
															<td>${dob.empName}</td>
															<td>${dob.DOB}</td>

														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade"
											id="tabs-demo7-area3" aria-labelledby="tabs-demo7-area3">
											<table class="table table-bordered table-hover">
												<thead style="background-color: menu;">
													<tr>
														<th>Sl No.</th>
														<th>STATUS</th>
														<th>TOTAL EMPLOYEE</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${totalEmployeeReport}" var="list"
														varStatus="counter">
														<tr>
															<td>${counter.index +1}</td>
															<td>${list.STATUS}</td>
															<td>${list.Total}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

										</div>
										<div role="tabpanel" class="tab-pane fade"
											id="tabs-demo7-area4" aria-labelledby="tabs-demo7-area4">
											<div style="overflow: scroll; height: 400px">
											<table id="datatable-buttons" class="table table-striped table-bordered">
												<thead style="background-color: menu;">
													<tr>
														<th>SL No.</th>
														<th>Employee Name</th>
														<th>Absenties</th>
														<th>Lates</th>
														<th>Half Days</th>
														<th>Present days</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${monthlyAttendance}" var="attendance"
														varStatus="counter">
														<tr>
															<td>${counter.index +1}</td>
															<td>${attendance.empName}</td>
															<td>${attendance.absents}</td>
															<td>${attendance.lates}</td>
															<td>${attendance.halfDays}</td>
															<td>${attendance.paidDays}</td>
													</c:forEach>
												</tbody>
											</table>
                                              </div>
										</div>

	<div role="tabpanel" class="tab-pane fade"
											id="tabs-demo8-area4" aria-labelledby="tabs-demo7-area4">
											<div style="overflow: scroll; height: 400px">
											<table id="datatable-buttons" class="table table-striped table-bordered">
												<thead style="background-color: menu;">
													<tr>
														<th>SL No.</th>
														<th>Employee Name</th>
														<th>Report To</th>
														<th>Leave Type</th>
														<th>From - To Date</th>
														<th>Status</th>
														<th>No. Days</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${employeeLeavesList}" var="leaves"
														varStatus="counter">
														<tr>
															<td>${counter.index +1}</td>
															<td>${leaves.empName}</td>
															<td>${leaves.reportName}</td>
															<td>${leaves.leaveType}</td>
															<td>${leaves.fromDate} - ${leaves.toDate}</td>
															<td>${leaves.status}</td>
															<td>${leaves.totalDays}</td>
													</c:forEach>
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
			<!-- end row -->



			
			
			<!--  -->
		</div>


		<%@ include file="/WEB-INF/jsp/HR/footer.jsp"%>

	</div>
	<!-- end container -->

	</div>

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

       
	<script src="resources/HR/plugins/jquery-knob/jquery.knob.js"></script>

	<!--Morris Chart-->
	<script src="resources/HR/plugins/morris/morris.min.js"></script>
	<script src="resources/HR/plugins/raphael/raphael-min.js"></script>

	<!-- Dashboard init -->
	<script src="resources/HR/pages/jquery.dashboard.js"></script>

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
                minuteStep : 15
            });

            //colorpicker start

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
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
            	format: "dd/mm/yyyy",
            	autoclose : true,
            	toggleActive:true,
            	todayHighlight: true,
            });
            
            jQuery("#target").datepicker();
    		jQuery('.fa-calendar-o').click(function() {
    			jQuery("#target").focus();
          	  });
    		
    		jQuery("#daterange").datepicker();
    		jQuery('.fa-calendar').click(function() {
    			jQuery("#daterange").focus();
          	  });


            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'MM/DD/YYYY h:mm A',
                timePickerIncrement: 30,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'MM/DD/YYYY',
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
                format: 'MM/DD/YYYY',
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