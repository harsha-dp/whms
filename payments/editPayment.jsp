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

<!--Date picker start -->
<link href="resources/css/jquery-ui.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>

<script>
  $(function() {
      $('#myVariable').datepicker({dateFormat: 'dd/mm/yy'});
});
</script>

<!--Date picker End  -->
<!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet"
	type="text/css" />

<script src="resources/js/modernizr.min.js"></script>

<!--add file validation  -->
<script src="resources/validation/payments/editPayment.js"></script>
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
				<a href="welezouser_dashboard"><img class="img-responsive"
					src="resources\images\newlogo.png" width="230px" height="80px" />
				</a>
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
						<li class="hidden-xs hidden-sm"><font face="verdana"
							class="page-title">SUBMIT PAYMENT DETAILS </font> <!--  <h4 class="page-title">Submit Payments</h4> -->
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
		<%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->
		<%
   String userName = request.getParameter("userID");
	String userId =	request.getParameter("id");
   if(userName!=null){ 
         session.setAttribute("approvalBy",userName);
   }
%>

		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container"></div>
				<!-- container -->

			</div>
			<!-- content -->

			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
		</div>

		<div class="content-page">
			<!-- popup window -->
			<div class="row">
				<div class="col-lg-12">
					<div class="modal-dialog">
						<div class="modal-content p-0">
							<!--  <ul class="nav nav-tabs navtab-bg nav-justified">
                                                    <li class="active">
                                                        <a href="#home-2" data-toggle="tab" aria-expanded="false">
                                                            <span class="visible-xs"><i class="fa fa-home"></i></span>
                                                           	<h4 class="custom-modal-title">PAYMENT APPROVAL</h4>
                                                        </a>
                                                    </li>
                                                </ul> -->
							<div class="tab-content">
								<!-- <div class="tab-pane  active" id="home-2">
                                        
                                                    </div> -->
								<form:form action="postEditPayment" class="form-horizontal"
									name="form" onsubmit="return validate()"
									modelAttribute="paymentDetailsTO">
									<div class="tab-pane" id="profile-2">

										<form:hidden path="paymentId" value="${paymentById.paymentId}"
											class="form-control" />

										<form:hidden path="createdBy" value="<%=id%>"
											class="form-control" id="inputEmail3" />
										<div class="form-group">
											<form:label path="modeOfPayment" for="inputPassword3"
												class="col-sm-3 control-label">Mode Of Payment:</form:label>
											<div class="col-sm-9">
												<form:input path="modeOfPayment"
													value="${paymentById.modeOfPayment}" class="form-control"
													id="inputPassword3" placeholder="Mode Of Payment:"
													readonly="true" />
											</div>
										</div>

										<div class="form-group">
											<form:label path="chequeAuthCode" for="inputPassword4"
												class="col-sm-3 control-label">Cheque/Authr Number:</form:label>
											<div class="col-sm-9">
												<form:input path="chequeAuthCode"
													value="${paymentById.chequeAuthCode}" class="form-control"
													id="inputPassword4" placeholder="cheque NUmber:"
													readonly="true" />
											</div>
										</div>
										<%--  
	                                            <div class="form-group">
	                                                <form:label path="cardNumber" for="inputPassword4" class="col-sm-3 control-label">Card Number</form:label>
	                                                <div class="col-sm-9">
	                                                  <form:input path="cardNumber" value="${paymentById.cardNumber}" class="form-control" id="inputPassword4" placeholder="Enter Card Number:" />
	                                                </div>
	                                            </div> --%>
										<%-- <div class="form-group">
	                                               <form:label path="cardNumber" for="inputPassword4" class="col-sm-3 control-label">Card Number</form:label>
	                                                <div class="col-sm-9">
	                                                   <form:input path="cardNumber" value="${paymentById.cardNumber}" class="form-control" id="inputPassword4" placeholder="Card Number" />
	                                                </div>
	                                            </div> --%>
										<div class="form-group">
											<form:label path="bank" for="inputPassword4"
												class="col-sm-3 control-label">Bank</form:label>
											<div class="col-sm-9">
												<form:input path="bank" value="${paymentById.bank}"
													class="form-control" id="inputPassword4" placeholder="BANK"
													readonly="true" />
											</div>
										</div>

										<div class="form-group">
											<form:label path="chequeDate" for="inputPassword4"
												class="col-sm-3 control-label">Cheque Date:</form:label>
											<div class="col-sm-9">
												<form:input path="chequeDate" value="${paymentDate[1]}"
													class="form-control" placeholder="Cheque Date:"
													readonly="true" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="terminalNumber" for="inputPassword4"
												class="col-sm-3 control-label">Terminal Number</form:label>
											<div class="col-sm-9">
												<form:input path="terminalNumber"
													value="${paymentById.terminalNumber}" class="form-control"
													id="inputPassword4" placeholder="Expiry Date"
													readonly="true" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="amount" for="inputPassword4"
												class="col-sm-3 control-label">Amount</form:label>
											<div class="col-sm-9">
												<form:input path="amount" value="${paymentById.amount}"
													class="form-control" id="inputPassword4"
													placeholder="Expiry Date" readonly="true" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="prensentedDate" for="inputPassword4"
												class="col-sm-3 control-label">Cheque presented date <span
													style="color: red;">*</span>
											</form:label>
											<div class="col-sm-6">
												<div class="input-group">
													<form:input path="prensentedDate" value="${paymentDate[3]}"
														id="datepickerautoclose" class="form-control"
														placeholder="presented date:" />
													<span class="input-group-addon bg-primary b-0 text-white"><i
														class="ti-calendar"></i></span>
												</div>
												<font id="dateerror" style="color: red;"></font>
											</div>
										</div>

										<div class="form-group">
											<form:label path="approvalDate" for="inputPassword4"
												class="col-sm-3 control-label">Approval Date <span
													style="color: red;">*</span>
											</form:label>
											<div class="col-sm-6">
												<div class="input-group">
													<form:input path="approvalDate" value="${paymentDate[0]}"
														class="form-control" id="datepickerautoclose1"
														placeholder="Approval Date:" />
													<span class="input-group-addon bg-primary b-0 text-white"><i
														class="ti-calendar"></i></span>
												</div>
												<font id="dateerror1" style="color: red;"></font>
											</div>
										</div>
										<%-- <div class="form-group">
	                                                <form:label path="approvalBy" for="inputPassword4" class="col-sm-3 control-label">Approval By:</form:label>
	                                                <div class="col-sm-9">
	                                                   <form:input path="approvalBy" value="${paymentById.approvalBy}" class="form-control" id="inputPassword4" placeholder="Approval By:" />
	                                                </div>
	                                            </div> --%>

									</div>
									<%--  <div class="form-group">
	                                               <form:label path="approvalOn" for="inputPassword4" class="col-sm-3 control-label">Approval On:</form:label>
	                                                <div class="col-sm-6">
	                                                   <form:input path="approvalOn" value="${paymentById.approvalOn}"  class="form-control" id="inputPassword4" placeholder="Approval On:" />
	                                                </div>
	                                            </div> --%>
									<div class="form-group">
										<form:label path="status" for="inputPassword4"
											class="col-sm-3 control-label">Payment Status <span
												style="color: red;">*</span>
										</form:label>
										<div class="col-sm-6">
											<form:select path="status" title="----payment status----"
												class="form-control" id="assign">
												<%-- <form:option value=""></form:option> --%>
												<form:option path="status" value="${paymentById.status}">${paymentById.status}</form:option>
												<form:option path="status" value="Payment Approved">Payment Approved</form:option>
												<form:option path="status" value="Not Approved">Not Approved</form:option>
												<form:option path="status" value="Cheque Returned">Cheque Returned</form:option>
												<%-- <form:option path="status" value="Credit/debit">Credit/debit</form:option> --%>
											</form:select>
											<font id="assignerror" style="color: red;"></font>
										</div>
									</div>

									<div class="form-group m-b-0">
										<div class="col-sm-offset-5 col-sm-9">
											<button type="submit" onclick="return validate()"
												class="btn btn-primary waves-effect waves-light"
												value="submit">Submit</button>
											<button type="reset"
												class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
										</div>
									</div>
								</form:form>

							</div>

						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->


			<!-- ============================================================== -->
			<!-- End Right content here -->
			<!-- ============================================================== -->


			<!-- Right Sidebar -->
			<div class="side-bar right-bar">
				<a href="javascript:void(0);" class="right-bar-toggle"> <i
					class="zmdi zmdi-close-circle-o"></i>
				</a>
				<h4 class="">`</h4>
				<div class="notification-list nicescroll">
					<ul class="list-group list-no-border user-list">
						<li class="list-group-item"><a href="#"
							class="user-list-item">
								<div class="avatar">
									<img src="assets/images/users/avatar-2.jpg" alt="">
								</div>
								<div class="user-desc">
									<span class="name">Michael Zenaty</span> <span class="desc">There
										are new settings available</span> <span class="time">2 hours
										ago</span>
								</div>
						</a></li>
						<li class="list-group-item"><a href="#"
							class="user-list-item">
								<div class="icon bg-info">
									<i class="zmdi zmdi-account"></i>
								</div>
								<div class="user-desc">
									<span class="name">New Signup</span> <span class="desc">There
										are new settings available</span> <span class="time">5 hours
										ago</span>
								</div>
						</a></li>
						<li class="list-group-item"><a href="#"
							class="user-list-item">
								<div class="icon bg-pink">
									<i class="zmdi zmdi-comment"></i>
								</div>
								<div class="user-desc">
									<span class="name">New Message received</span> <span
										class="desc">There are new settings available</span> <span
										class="time">1 day ago</span>
								</div>
						</a></li>
						<li class="list-group-item active"><a href="#"
							class="user-list-item">
								<div class="avatar">
									<img src="assets/images/users/avatar-3.jpg" alt="">
								</div>
								<div class="user-desc">
									<span class="name">James Anderson</span> <span class="desc">There
										are new settings available</span> <span class="time">2 days
										ago</span>
								</div>
						</a></li>
						<li class="list-group-item active"><a href="#"
							class="user-list-item">
								<div class="icon bg-warning">
									<i class="zmdi zmdi-settings"></i>
								</div>
								<div class="user-desc">
									<span class="name">Settings</span> <span class="desc">There
										are new settings available</span> <span class="time">1 day ago</span>
								</div>
						</a></li>

					</ul>
				</div>
			</div>
			<!-- /Right-bar -->

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

            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
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