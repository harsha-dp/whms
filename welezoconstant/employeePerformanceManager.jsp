<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully CRM, CMS, etc.">
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
 <script type="text/javascript">

 <!--add file validation  -->
 <script src="resources/validation/welezoconstant/employeePerformanceManager.js"></script>
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
						<li class="hidden-xs hidden-sm"	><font face="verdana"  class="page-title">EMPLOYEE PERFORMANCE</font> 
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
	<!-- Top Bar End -->

	<!-- ========== Left Sidebar Start ========== -->
	<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
	<!-- Left Sidebar End -->
	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
		 <div class="container">
		 <br>
		 <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
						<h3 align="center" style="mergin:4px;background-color:#6f809b;color:white;">EMPLOYEE PERFORMANCE REVIEW.</h3>

							<form:form action="searchPerformance" name="form" onsubmit="return validate()" modelAttribute="performanceDTO">
				<form:hidden path="module" value="Manager" />
										<div class="row">
      <div class="col-xs-3">
        <label for="ex2">Employee Name :</label>
      						 <form:select class="form-control" path="empId" title="Select" id="employe">
                                         <form:option value="" label="Select Employee" />
                                       <c:forEach items="${allEmployees}" var="emp" varStatus="status">
											<form:option path="empId" value="${emp.empId}" >${emp.empName}</form:option>		
                                      </c:forEach>
                                       </form:select>
                                       <font id="employeerror" style="color:red"></font>
      </div>
      <div class="col-xs-3">
        <label for="ex3">Evaluator :</label>
         <form:input type="text" path="" value="${USERNAME}" class="form-control"  readonly="true"/>
      </div>
       <div class="col-xs-3">
        <label for="ex3">Evaluation Period :</label>
          <form:select class="form-control" path="evaluatorPeriod" title="Select" id="period">
                                         <form:option value="" label="Select Month Of Evaluation" />
											<form:option value="January 2017" >January 2017</form:option>
											<form:option value="February 2017" >February 2017</form:option>
											<form:option value="March 2017" >March 2017</form:option>
											<form:option value="April 2017" >April 2017</form:option>
											<form:option value="May 2017" >May 2017</form:option>
											<form:option value="June 2017" >June 2017</form:option>
											<form:option value="July 2017" >July 2017</form:option>
											<form:option value="August 2017" >August 2017</form:option>		
											<form:option value="September 2017" >September 2017</form:option>
											<form:option value="October 2017" >October 2017</form:option>
											<form:option value="November 2017" >November 2017</form:option>
											<form:option value="December 2017" >December 2017</form:option>
                                       </form:select>
                                       <font id="perioderror" style="color:red"></font>
      </div>
      <div class="col-xs-3" style="padding-top: 25px">
    <button type="submit" onclick="return validate()"
									class="btn btn-primary waves-effect waves-light">Search</button>
      </div>
    </div>
									</form:form>
									</div>
									</div></div>
    <br/>
    <form:form action="savePerfromance" modelAttribute="performanceDTO">
    	<form:hidden path="module" value="Manager"/>
    		<form:hidden path="empId" value="${employeeById.empId}"/>
    		<form:hidden path="evaluatorPeriod" value="${month}"/>
   	 
   	 <div class="card-box card-outline-danger">
   	 
   	 <h4>Employee Name : ${employeeById.empName}</h4> Month : ${month}
							<div class="form-group">
                              <div class="col-md-8">
						<table  class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                            <th>Sl No</th>
                                          	 	<th style="background-color: lightblue;">Skill/Attributes</th>
                                          	 	<!-- 	<th style="background-color: lightblue;">Employee Review</th> -->
                                          	 		<th style="background-color: lightblue;">Manager Review</th>
                                              	<th align="center" style="background-color: lightblue; ">Status</th>
                                            </tr>
                                        </thead>
                           
                           <tbody>
                            <c:set var="val" value="${check}"/>
        <c:choose>
           <c:when test="${val.equals('test')}">
													<c:forEach items="${allMetrics}" var="metric">
														<tr>
															<td><form:hidden path="metricId" value="${metric.metricId}" />
																<c:out value='${metric.metricId}' /></td>
															<td><c:out value="${metric.mNname}" /></td>
															<td align="center">
															<c:if test="${metric.ratingType == 'Discrete'}">
															<c:set var="ratingOptions" value="${metric.ratingOptions}" />
																	<c:set var="rating"
																		value="${fn:split(ratingOptions, ' ')}" />
																	<select array="rating" name="text" class="form-control"
																		style="width: 150px; border: 1px solid #35b8e0; padding-left: 50px">
																		<c:forEach var="numbers" items="${rating}">
																			<option value="${numbers}"><c:out
																					value="${numbers}" /></option>
																		</c:forEach>
																	</select>
																</c:if> <c:if test="${metric.ratingType == 'Text'}">
																	<textarea name="text" rows="3" cols="80"></textarea>
																</c:if></td>
																<td>Please Fill required feild</td>
														</tr>
													</c:forEach>
													<c:forEach items="${allMetricsManager}" var="mgrMetric">
														<tr>
															<td><form:hidden path="metricId" value="${mgrMetric.metricId}" />
																<c:out value='${mgrMetric.metricId}' /></td>
															<td><c:out value="${mgrMetric.mNname}" /></td>
															<td align="center">
															<c:if test="${mgrMetric.ratingType == 'Discrete'}">
															<c:set var="ratingOptions" value="${mgrMetric.ratingOptions}" />
																	<c:set var="rating"
																		value="${fn:split(ratingOptions, ' ')}" />
																	<select array="rating" name="text" class="form-control"
																		style="width: 150px; border: 1px solid #35b8e0; padding-left: 50px">
																		<c:forEach var="numbers" items="${rating}">
																			<option value="${numbers}"><c:out
																					value="${numbers}" /></option>
																		</c:forEach>
																	</select>
																</c:if> <c:if test="${mgrMetric.ratingType == 'Text'}">
																	<textarea name="text" rows="3" cols="80"></textarea>
																</c:if></td>
																<td>(Only for Managers)</td>
														</tr>
													</c:forEach>
													</c:when> 
													<c:otherwise>
													<c:forEach items="${managerEntry}" var="mgr">
                        <tr>
                        	<td><form:hidden path="metricId" value="${mgr.id}"/><c:out value='${mgr.metricId}'/></td>
                        	<td><c:out value="${mgr.attrbute}" /></td>
                       		<td><c:out value="${mgr.mgrEval}" /></td>
                       		<td>Filled</td>
                        	</tr>
                    </c:forEach>
													</c:otherwise>
													</c:choose>
												</tbody>
                                    </table>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->
							<div class="form-group row"></div>
							 <div class="col-md-offset-4">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
						</div>
						</form:form>
				</div>
				<!-- End row -->
			
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
        <script src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
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
							



