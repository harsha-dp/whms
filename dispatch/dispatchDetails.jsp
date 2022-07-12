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
	    
<!-- Datepicker start -->
		   <link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
           <link rel="stylesheet" href="/resources/demos/style.css">
		   <script src="resources/datepicker/jquery-1.12.4.js"></script>
		   <script src="resources/datepicker/jquery-ui.js"></script>
		    <link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
      <!-- Datepicker end --><script src="resources/js/modernizr.min.js"></script>
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>



 <!--add file validation  -->
<script src="resources/validation/dispatch/dispatchDetails.js"></script>
<!--  -->
</head>
<style>
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


</style>
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
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm">
							<font class="page-title">VIEW  DISPATCH</font>
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
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
				<br>
					<div class="row">
                            <div class="col-md-12">
                                <div class="card-box">
                                	<div class="row">
										<div class="col-md-6" style="border-right-style: dotted;">
											<h4 class="m-t-0 m-b-20 header-title"><b> <u> CUSTOMER DETAILS</u></b></h4>
										<div> <strong> <h5> Application No: </strong> ${txById.applicationNo} </h5>  </div>

									<div> <strong><h5>Customer Name :</strong> ${custerDetails.customerName} </h5>  </div>

									<div> <strong> <h5> Product Name : </strong>  ${productName} </h5>  </div>
									
									<div> <strong> <h5> Card Number : </strong>  ${txById.cardNumber} </h5> </div>
									
									<div> <strong> <h5>Mobile No : </strong> ${residenceAddress.primaryMob} </h5> </div>
									
									<div> <strong> <h5> Mail Id : </strong>  ${residenceAddress.email} </h5> </div>
									
									<div> <strong> <h5> Residence Address : </strong> ${residenceAddress.residenceAddresss} </h5>  </div>

									<div> <strong> <h5> WorkPlace Address : </strong>  ${WorkPlace.residenceAddresss} </h5> </div>
									<hr>
									
									<h4 class="m-t-0 m-b-20 header-title"><b> <u> SERVICE DETAILS </u></b></h4>
									
									
								<table class="table table-bordered m-0">
									<thead>
											<tr>
												<th>Category</th>
												<th>Service Name</th>
												<th>Qunatity</th>
												<th>voucher No</th>
											</tr>
										</thead>
										<c:forEach items="${services}" var="services">
											<tbody>
												<tr>
													<td>${services.category}</td>
													<td>${services.serviceName}</td>
													<td>${services.quantity}</td>
													<td>${services.voucherNo}</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
											
										</div>
										
										<div class="col-md-6" style="border-left-style: dotted;">
											<h4 class="m-t-0 m-b-20 header-title"><b> <u>DISPATCH DETAILS LIST : </u></b></h4>
											
									<table class="table table-bordered m-0">
									<thead>
											<tr>
												<th><b>DISPATCH DATE</b></th>
												<th><b>DISPATCH THRU</b></th>
												<th><b>CONSIGNMENT NO</b></th>
												<th><b>DISPATCH STATUS</b></th>
												<th><b>DELIVERY STATUS</b></th>
												<th><b>RECEIVED BY</b></th>
												<th><b>RECEIVED DATE</b></th>
												
											</tr>
										</thead>
										<c:forEach items="${dispatchList}" var="list">
											<tbody>
												<tr>
													<td>${list.dispatchDate}</td>
													<td>${list.dispatchThrough}</td>
													<td>${list.consignmentReference}</td>
													<td>${list.dispatchStatus}</td>
													<td>${list.deliveryStatus}</td>
													<td>${list.receviedBy}</td>
													<td>${list.receivedDate}</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
									
																
							<c:if test="${dispatchTrackById.deliveryStatus != 'Received'}">
								<div class="col-md-12">

									<div class="card-box">
									<c:if test="${dispatchTrackById.deliveryStatus != 'RTO'}">
										<h4 class="header-title m-t-0 m-b-30">
											<font face="verdana" color="#000080"> <u>DISPATCH UPDATES :</u> </font>
										</h4>
										<div class="row">
											<div class="col-md-12">
												<form:form action="editDispatchdetails" name="form" onsubmit="return validate()"
													modelAttribute="dispatchTrackingTO" class="form-horizontal">
													<form:hidden path="trackId"
														value="${dispatchTrackById.trackId}" />
													<form:hidden path="updatedBy" value="<%=id%>"
														class="form-control" id="inputEmail3" />

													
													<div class="m-t-20">
														<h5>Received by:</h5>
														<form:input type="text" path="receviedBy"
															class="form-control" id="receivedd" minlength="3" maxlength="30" />
														<span id="error" style="color: Red; display: none"></span>
														<font id="receivedderror" style="color: red;"></font>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="m-t-20">
																<h5>Received Date</h5>
																<div class="input-group">
																	<form:input path="dispatchDate" type="text"
																		class="form-control" id="datepicker"
																		/>
																	<span
																		class="input-group-addon bg-primary b-0 text-white"><i
																		class="fa fa-calendar"></i></span>
																</div>
																<font id="dateerror" style="color: red;"></font>
															</div>
															<script src="resources/datepicker/jquery-1.12.4.js"></script>
								  <script src="resources/datepicker/jquery-ui.js"></script>
								<script type="text/javascript">
								$(document).ready(function(){
								  $( function() {
								    $("#datepicker").datepicker({
								        minDate: -4, 
								        maxDate: "+15",
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
														<div class="col-md-12">
															<div class="m-t-20">
																<h5>Dispatch Status</h5>
																<%-- <form:input path="deliveryStatus" value="${dispatchTrackById.dispatchStatus}" class="form-control"   id="alloptions" required="required"/> --%>

																<form:select path="deliveryStatus"
																	title="----Status----" class="form-control" id="statuss">
																	<form:option value="${dispatchTrackById.dispatchStatus}">${dispatchTrackById.dispatchStatus}</form:option>
																	<form:option value="RTO"> RTO </form:option>
																	<form:option value="Received"> Received </form:option>
																</form:select>
																<font id="statusserror" style="color: red;"></font>
															</div>
														</div>
													</div>
													<br>
													<br>

													<div class="form-group m-b-0">
														<div class="col-sm-offset-3">
															<button type="submit" onclick="return validate()"
																class="btn btn-info waves-effect waves-light">Submit</button>
																<button type="reset"
						class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
															<!--      <button type="submit" class="btn btn-info waves-effect waves-light">Cancel</button> -->
														</div>
													</div>
												</form:form>
											</div>
											<!-- form-group -->
										</div>
										<!-- end col -->
	</c:if>
		<c:if test="${dispatchTrackById.deliveryStatus == 'RTO'}">
										<h4 class="header-title m-t-0 m-b-30">
											<font face="verdana" color="#000080"> <u>DISPATCH DETAILS - RTO :</u> </font>
										</h4>
										<div class="row">
											<div class="col-md-12">
													<form action="saveRTODispatch"   method="post">
													
											<input name="txId" type="hidden" 	value="${dispatchTrackById.transactionMaster.transactionId}" />
												
											<input name="createdBy" type="hidden"  value="<%=id%>" class="form-control" id="inputEmail3" />

											<div class="row">
												<div class="col-md-12">
													<div class="m-t-20">
														<h5>Dispatch Status</h5>
														<select name="dispatchStatus" title="----Status----"
															class="form-control" style="height:34px;" id="status" >
															<option value="InTransit"> InTransit </option>
														</select>
														<font id="statusserror" style="color: red;"></font>
													</div>
												</div>

												<div class="col-md-12">
													<div class="m-t-20">
														<h5>Delivery Status</h5>
														<select name="deliveryStatus" title="----Status----"
															class="form-control" style="height:34px;" id="deliverystatus" >
															<option value="" label="Select Delivery Status" />
															<option value="InProgress"> InProgress </option>
															<option value="Delivered"> Delivered </option>
															<option value="Pending"> Pending </option>
															<option value="Other"> Other </option>
														</select>
														 <font id="deliverystatusserror" style="color: red;"></font>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-12">
													<div class="m-t-20">
														<h5>Dispatch Date</h5>
														<div class="input-group">
															<input name="dispatchDate" type="text"
																class="form-control input-sm" style="height:34px;" id="datepickerautoclose"
																required="required" />
															<span class="input-group-addon bg-primary b-0 text-white"><i
																class="ti-calendar"></i></span>
														</div>
														 <font id="dateerror" style="color: red;"></font> 
													</div>
												</div>

												<div class="col-md-12">
													<div class="m-t-20">
														<h5>Dispatch Through</h5>
														
														<select name="dispatchThrough" title="----dispatch list----" class="form-control input-sm" >
											<c:forEach var="constant" varStatus="status" items="${welezoConstant}">
												<c:if test="${constant.constType=='Dispatch Thru'}">
													<option  value="${constant.CValue}" >${constant.CDisplay}</option>
												</c:if>
											</c:forEach>
										</select>
													</div>
												</div>
											</div>
                                            
                                            
                                            <div class="row">
                                            <div class="col-md-12">
											<div class="m-t-20">
												<h5>Consignment Reference</h5>
												<input type="text" name="consignmentReference"
													class="form-control input-sm" maxlength="75" name="moreoptions" style="height:34px;"
													id="conthrough" />
											</div>
											<font id="consignerror" style="color: red;"></font>
											</div>
											</div>
                                           <br/>
											<div class="form-group m-b-0">
												<div align="center">
													<button type="submit" onclick="return validate()"
														class="btn btn-info waves-effect waves-light">Submit</button>
														<button type="reset"
						class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
													<!--      <button type="submit" class="btn btn-info waves-effect waves-light">Cancel</button> -->
												</div>
											</div>
										</form>
											</div>
											<!-- form-group -->
										</div>
										<!-- end col -->
</c:if>
									</div>
									<!-- end col -->
								</div>
							</c:if>
							<!-- end row -->
									
										</div>
										<%-- <br>
										<br>
										 <div>
                                                      <p><h3><b>UPLOADED EMPLOYEE DOCUMENT LIST :</b></h3></p>
                                                     <c:forEach items="${documentList}" var="doc">
                                                      <h2><a href="download?fileName=<c:out value='${doc.path}'/>">${doc.docName}</a></h2>
                                                      </c:forEach>
                                                </div> --%>
										
									</div>
									
									
                                </div>
                                
                                
                                <!-- calls uploaded from data box  -->
                                 <div class="row">
                                <div class="col-md-12">
                                <div class="card-box table-responsive">
                                  <div class="well well-lg">
                                   <h6><b>DOWNLOAD APPLICATION DOCUMENT LIST :</b></h6>
                                                     <c:forEach items="${documentList}" var="doc">
                                                      <h6><a href="download?fileName=<c:out value='${doc.path}'/>">${doc.docName}</a></h6>
                                                      </c:forEach>
                                </div>
                                   </div>
                                  </div>
                                  </div>
                                
                                
                                
                                
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->
						
						<div class="hidden-print">
                                            <div class="pull-right">
                                                <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                            </div>
                                           
                                        </div>
				
</div>
</div>

					
					<!-- content -->

					<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

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
	<script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<!-- <script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
	<script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

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
            
            jQuery("#datepicker").datepicker();
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