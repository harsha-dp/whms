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

<!-- App title -->
<title>WELEZO</title>

<!--calendar css-->
<link href="resources/plugins/fullcalendar/dist/fullcalendar.css"
	rel="stylesheet" />

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

<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>

<!-- Datepicker start -->
		   <link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
           <link rel="stylesheet" href="/resources/demos/style.css">
		   <script src="resources/datepicker/jquery-1.12.4.js"></script>
		   <script src="resources/datepicker/jquery-ui.js"></script>
		    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
      <!-- Datepicker end -->

<!--add vendors  validation  -->
<script src="resources/validation/appointment/editAppointment.js"></script>
<!--  -->
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">

		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i
					class="zmdi zmdi-layers"></i></a> -->
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
                             <a href="customercare"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs hidden-sm"	>
							<font class="page-title">EDIT HEALTH APPOINTMENT</font>
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
			<!-- Start content -->
			<div class="content">
				<div class="container"></div>
				<!-- end row -->

				<!-- popup window -->

				<div class="row">
					<div class="col-lg-12">

						<!-- Modal Add Category -->
						<!--  <div class="modal fade none-border" id="add-category"> -->
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									
									<h4 class="custom-modal-title">
										CUSTOMER NAME : <b>${custDetails.customerName}</b> 
									</h4>
								</div>

								<div class="modal-body">
									<form:form action="postEditAppointment"  name="form" onsubmit="return validate()"  modelAttribute="appointmentDTO">

								<form:hidden path="bookedBy" value="<%=id %>" class="form-control"  />
								<form:hidden path="appointmentId" value="${appointmentById.appointmentId}"/>
										<div class="row">
											<div class="col-md-6">
												<form:label path="customerId" class="control-label">Customer Name </form:label>

												<form:input  onkeypress="return onlyAlphabets(event,this);" path="" 
													value="${custDetails.customerName}"
													class="form-control form-white" readonly="true" />
											</div>
											<div class="col-md-6">
												<form:label path="familyId" class="control-label">Appointment For</form:label>
												<form:select path="familyId" class="form-control" readonly="true">
													<form:option value="${family.familyId}" label="${family.FName}"
														class="form-control form-white" />
												</form:select>

											</div></div>
											<br/>
											<div class="row">
											<div class="col-md-6">
												<form:label path="hospitalId" class="control-label">Hospital Name</form:label>
												<form:select path="hospitalId" class="form-control" readonly="true">
													<form:option value="" label="${hospitalById.nameHcc}"
														class="form-control form-white" />
													<form:options items="${hospitalDetail}" itemValue="id"
														itemLabel="nameHcc" />
												</form:select>

											</div>
									
											<div class="col-md-6">
												<label class="control-label">Service</label>
												<%--  <form:input path="" class="form-control form-white" placeholder="Service" type="text" name="category-name"/> --%>
												<form:select path="serviceId" class="form-control"  readonly="true">
													<form:option value="" label="${allServicesById.serviceName}"
														class="form-control form-white" />
													<form:options items="${allservice}" itemValue="serviceId"
														itemLabel="serviceName" />
												</form:select>
											</div>

										</div>	

										<br>
										<hr>
										<div class="row">
											<div class="col-md-6">
												<form:label path="appointmentDate" class="control-label">Date</form:label>

												<div class="input-group">
													<form:input type="text" path="appointmentDate" class="form-control"
														placeholder="dd/mm/yyyy" id="datepicker" value="${appointment}" /> <span
														class="input-group-addon bg-primary b-0 text-white"><i
														class="ti-calendar"></i></span>
												</div>
												<font id="dateerror" style="color: red;"></font>
												<!-- input-group -->
											<script src="resources/datepicker/jquery-ui.js"></script>
											<script type="text/javascript">
											$(document).ready(function(){
											  $( function() {
											    $("#datepicker").datepicker({
											        minDate: +0, 
											        maxDate: "+1M",
											        dateFormat: 'dd/mm/yy',
											        beforeShowDay: noSunday,
											        
											    });
											    function noSunday(date){ 
											         return [date.getDay() != 0, ''];
											      }; 
											
											    } );
											});
											</script>

											</div>
											<div class="col-md-6">
												<form:label path="appointmentTime" class="control-label">Time</form:label>
												<%-- <form:input path="appointmentTime" class="form-control form-white"
													placeholder="hh:mm" type="text" name="category-name" value="${appointmentById.appointmentTime}"  required="required" /> --%>
											<form:select path="appointmentTime" title="----TOA----"
									class="form-control" id="timee" >
									<form:option value="${appointmentById.appointmentTime}" label="${appointmentById.appointmentTime}" />
									<form:option value="8:30 AM">  08:30 AM </form:option>
									<form:option value="9:30 AM">  09:30 AM </form:option>
									<form:option value="10:30 AM"> 10:30 AM </form:option>
									<form:option value="11:30 AM"> 11:30 AM </form:option>
									<form:option value="12:30 PM"> 12:30 PM </form:option>
									<form:option value="1:30 PM "> 01:30 PM </form:option>
									<form:option value="2:30 PM "> 02:30 PM </form:option>
									<form:option value="3:30 PM "> 03:30 PM </form:option>
									<form:option value="4:30 PM "> 04:30 PM </form:option>
									<form:option value="5:30 PM "> 05:30 PM </form:option>
									<form:option value="6:30 PM "> 06:30 PM </form:option>
								</form:select>
								<font id="timeerror" style="color: red;"></font>
											</div>
										</div>
										<br>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="Ddate">Status:</label>
									<form:select path="statusAppointment" title="----TOA----"	class="form-control" id="status" >
									<form:option value="" label="Select Appointment Status" />
									<c:forEach var="mode" varStatus="status" items="${welezoWorkFlow}">
												<c:if test="${mode.CValue == appointmentById.statusAppointment}">
												<form:option path="interactionMode" value="${mode.CDisplay}" >${mode.CDisplay}</form:option>
												</c:if>
											</c:forEach>
								</form:select>
									<font id="statuserror" style="color: red;"></font>
												</div>
											</div>
											<div class="col-md-12">
									<div class="form-group">
										<form:label path="remarks" for="name">Remark:</form:label>
										<form:textarea path="remarks" placeholder="${appointmentById.remarks}"	class="form-control" id="remark" />
										<font id="Remarkerror" style="color: red;"></font>
									</div>
										</div>	
											</div>
						
						                    <div class="col-md-offset-4">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
						
									</form:form>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<!-- END MODAL -->
		</div>
		<!-- end col-12 -->
	</div>
	<!-- end row -->


	</div>
	<!-- container -->

	</div>
	<!-- content -->

	<%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

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
	<!-- <script src="resources/js/jquery.min.js"></script> -->
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
	<!-- <script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
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

	<!-- <script>
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
                minuteStep : 60
            });

            //colorpicker start

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
            	format: 'dd/mm/yyyy',
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
                toggleActive: true
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 60,
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
        </script> -->

</body>
</html>