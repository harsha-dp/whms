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


<!--edit interaction  validation  -->
<script src="resources/validation/appointment/editInteraction.js"></script>
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
						<li><a href="customercare"><i class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	><font face="verdana" class="page-title">EDIT INTERACTION </font></li>
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
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->

		<%
			String userName = request.getParameter("userID");
			String userId = request.getParameter("id");
			if (userName != null) {
				session.setAttribute("approvalBy", userName);
			}
		%>
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
				
					<div class="row">
						<div class="col-lg-12">
							<div class="modal-dialog">
								<div class="modal-content">
									<h4 class="custom-modal-title">INTERACTION FORM </h4>
									<div class="custom-modal-text text-left">
										<form:form action="saveeditInterAction" modelAttribute="interActionTO">
												<form:hidden path="interactionId"	value="${interactionById.interactionId}" />
											<form:hidden path="customerId"	value="${interactionById.customerId}" />
											<form:hidden path="transactionId"	value="${interactionById.transactionId}" />
											<form:hidden path="interactionBy" value="<%=id%>" />

											<div class="form-group">
												<label for="name">Customer Name <span style="color:red;">*</span></label>
												<form:input type="text" path="" class="form-control"
													value="${interactionById.customerName}" 
													placeholder="Enter customer Name" id="name" readonly="true"/>
													<font id="nameerror" style="color: red;"></font>
											</div>
											<div class="form-group">
												<label for="Contactnumber">Contact Number <span style="color:red;">*</span></label>
												<form:input type="text" path=""
													value="${interactionById.nameHcc}" class="form-control" 
													id="Contactnumber" placeholder="Enter contact No." readonly="true" />
													<!-- <span id="error" style="color: red; display: none">* Enter digits only</span> -->
													<font id="contactErrorr" style="color: red;"></font>
											</div>
											<div class="form-group">
												<form:label path="interactionMode">Interaction Mode  <span style="color:red;">*</span></form:label>
												<form:select path="interactionMode" class="form-control" id="modee">
												<form:option value="${interactionById.interactionMode}" label="${interactionById.interactionMode}"></form:option>
												</form:select>
												<font id="modeeerror" style="color: red;"></font>
											</div>
											<div class="form-group">
												<form:label path="purpose">Purpose  <span style="color:red;">*</span></form:label>
												<form:select path="purpose" class="form-control" id="purposeee">
												    <form:option value="${interactionById.purpose}" label="${interactionById.purpose}"></form:option>
												    <c:forEach var="mode" varStatus="status" items="${welezoConstant}">
												<c:if test="${mode.constType=='Purpose_edit'}">
												<form:option path="purpose" value="${mode.CValue}" >${mode.CDisplay}</form:option>
												</c:if>
											</c:forEach>
												</form:select>
												<font id="purposeerror" style="color: red;"></font>
											</div>
											<div class="form-group">
												<form:label path="interactionThru">Interaction Through<span style="color:red;">*</span></form:label>
												<form:select path="interactionThru" class="form-control" id="through">
												<form:option value="${interactionById.interactionThru}" label="${interactionById.interactionThru}"></form:option>
												</form:select>
												<font id="througheerror" style="color: red;"></font>
											</div>

											<div class="form-group">
												<form:label path="status" for="exampleInputEmail1">Status :<span style="color:red;">*</span></form:label>
												<form:select path="status" class="form-control" id="statuss">
												<form:option value="${interactionById.status}" label="${interactionById.status}"></form:option>
												<c:forEach var="mode" varStatus="status" items="${welezoConstant}">
												<c:if test="${mode.constType=='InterActionStatus'}">
												<form:option path="status" value="${mode.CValue}" >${mode.CDisplay}</form:option>
												</c:if>
											</c:forEach>
												</form:select>
												<font id="statusserror" style="color: red;"></font>	
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Reception Remarks:</label>
												<form:hidden path="details" value="${interactionById.details}" />
												<form:textarea path="" type="text" class="form-control"
													id="exampleInputEmail1" placeholder="${interactionById.details}"  readonly="true"/>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">CC Remarks  <span style="color:red;">*</span></label>
												<form:textarea type="text" path="remarks" class="form-control"
													 placeholder="${interactionById.remarks}" id="details"/>
													<font id="detilserror" style="color: red;"></font>
											</div>
											<!-- <div class="form-group">
												<label for="exampleInputEmail1">Extension Number</label> <select
													class="form-control">
													<option value="casual visit">200</option>
												</select>
											</div> -->
											
											<div class="col-md-offset-5">
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
					<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
				</div>
              </div>
              </div>
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
				<script
					src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
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
            jQuery('#datepicker-autoclose').datepicker({
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
            	format: "dd/mm/yyyy",
            	autoclose: true,
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
        </script>
</body>
</html>