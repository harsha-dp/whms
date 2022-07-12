<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully .">
<meta name="author" content="Coderthemes">


<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<title>Welezo</title>

<!--calendar css-->
 <link href="resources/HR/plugins/fullcalendar/dist/fullcalendar.css" rel="stylesheet" />

<link href="resources/HR/plugins/fullcalendar/dist/fullcalendar.min.css"
	rel="stylesheet" type="text/css" />

<!-- <link href="resources/HR/plugins/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" type="text/css"/> -->

<link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
<script src="resources/HR/js/modernizr.min.js"></script>


<link href="resources/HR/fullcalendar/lib/cupertino/jquery-ui.min.css" rel="stylesheet" type="text/css" />
<!-- <script src="resources/HR/fullcalendar/lib/jquery-ui.min.js"></script> -->
<script src="resources/HR/fullcalendar/lib/jquery.min.js"></script>
<script src="resources/HR/fullcalendar/lib/moment.min.js"></script>

<link href="resources/HR/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
<script src="resources/HR/fullcalendar/fullcalendar.min.js"></script>
<!-- <link href="resources/HR/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" type="text/css"/> -->

<style type='text/css'>

/* #fc td, .fc th {
	border-width: thin;
	color: black;
}

.fc-day {
	background: #56af3a;
}

.fc-unthemed td.fc-today {
	background: #57adcc;
}


.fc table {
	width: 100%;
	table-layout: fixed;
	border-spacing: 0;
	font-size: 1.1em;
	height: 50px;
	color: white;
}

.fc-row fc-week fc-widget-content {
	height: 50px;
}
.fc th.fc-widget-header {
    background: #5ab1cf;
    }
.fc-day-grid-event .fc-content {
    color: black;
}
 */
 .fc th.fc-widget-header {
    background: #c5e8bb;
    }
.fc-day-grid-event .fc-content {
    color: black;
}
  
</style> 


<style>
.fc-sun { color:red;  }
.fc-past {
  background-color: #F5F5F6;
}
.fc-today {
    background: orange !important;
    border: none !important;
    border-top: 1px solid #ddd !important;
    font-weight: bold;
}
</style>


</head>


<body>

	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->
	<div class="wrapper">
		<div class="container">
			<!-- Page-Title -->
			<div class="row">
				<div class="col-lg-12">

					<div class="row">
                   <!-- <div class="col-md-1">
                   </div> -->
						<div class="col-md-12">
							<div class="card-box">
								<div id="mycalendar"></div>

								<script type="text/javascript">
									var callsObj = JSON.parse('${object}');
									$('#mycalendar')
											.fullCalendar(
													{
														header : {
															left : 'prev,next today',
															center : 'title',
															right : 'month,agendaWeek,agendaDay'
																
														},
														editable : false,
														events : [],
														eventColor : 'orange',
													    titleColor: 'black',
														height: $(window).height() - 250,
													});

									$.each(callsObj, function(i, item) {
										noCalls = item.calls;
										console.log(noCalls); //"Boxing Day"
										callDate = item.date; //May, 26 Oct 2014 13:00:00 EST

										var eventObject = {
											title : 'Total Calls : '
													+ noCalls,
													/* title1 : 'Total Calls : '
														+ noCalls, */
											start : callDate,
											allDay : true
										};
										$('#mycalendar').fullCalendar(
												'renderEvent', eventObject,
												true);
										console.log(eventObject.start);
									});
								</script>

							</div>
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->


				</div>
				<!-- end col-12 -->
			</div>
			</div>
			<!-- end row -->


			<!-- Footer -->
			<%@ include file="/WEB-INF/jsp/HR/footer.jsp"%>
		</div>
		<!-- end container -->

	<!-- jQuery  -->
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