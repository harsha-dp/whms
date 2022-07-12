<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



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
<title>WElEZO</title>

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
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">


<script src="resources/js/modernizr.min.js"></script>
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet"
	type="text/css" />
</head>
<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>

<script>
    /*  WRITE THE VALIDATION SCRIPT IN THE HEAD TAG. */
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>

<!-- character validation script -->

<script type="text/javascript">


/*start*/
      function isNumber(evt) {
      evt = (evt) ? evt : window.event;
      var charCode = (evt.which) ? evt.which : evt.keyCode;
      if (charCode > 31 && (charCode < 48 || charCode > 57)) {
          return false;
      }
      return true;
  }
 /*end */
 </script>
<script type="text/javascript">
 function onlyAlphabets(evt) {
     var charCode;
     if (window.event)
         charCode = window.event.keyCode;  //for IE
     else
         charCode = evt.which;  //for firefox
     if (charCode == 32) //for &lt;space&gt; symbol
         return true;
     if (charCode > 31 && charCode < 65) //for characters before 'A' in ASCII Table
         return false;
     if (charCode > 90 && charCode < 97) //for characters between 'Z' and 'a' in ASCII Table
         return false;
     if (charCode > 122) //for characters beyond 'z' in ASCII Table
         return false;
     return true;
 }
</script>

<script type="text/javascript">


function validate(from)
{
/*Start */ 
    var error=document.getElementById("statusserror");
	var status=form["status"].value;

   error.innerHTML="";

   if( status==null || status==""){
       error.innerHTML="Select Your Dispatch Status";
       return false;
   }

   var error=document.getElementById("deliverystatusserror");
	var status=form["deliverystatus"].value;

  error.innerHTML="";

  if( status==null || status==""){
      error.innerHTML="Select Your Delivery Status";
      return false;
  }

  var error=document.getElementById("dateerror");
	var datepickerautoclose=form["datepickerautoclose"].value;

error.innerHTML="";

if( datepickerautoclose==null || datepickerautoclose==""){
    error.innerHTML="Please Select Date";
    return false;
}


var error=document.getElementById("througherror");
var through=form["through"].value;

error.innerHTML="";

if( through==null || through==""){
error.innerHTML="Please input dispatch through";
return false;
}

if(/^[a-zA-Z,() ,]*$/.test(through) == false){
    //error message
	error.innerHTML="Please enter only character and special symbol like.. () ";
	return false;
}

/* else if( !isNaN(through))
	{
      error.innerHTML="input character only";
         return false;
	} */
if(through.length<3)

	{
      error.innerHTML="Enter minimum 3 character";
          return false;
	}
if(through.length>50)

{
	 error.innerHTML="You entered more then 50 characetr please enter less than 50 character";
      return false;
}



var error=document.getElementById("consignerror");
var conthrough=form["conthrough"].value;

error.innerHTML="";

if( conthrough==null || conthrough==""){
error.innerHTML="Please input Consignment Reference number";
return false;
}

if(conthrough.length<2)

	{
	 error.innerHTML="Enter minimum 2 character ";
          return false;
	}
if(conthrough.length>9)

{
	 error.innerHTML="You entered more then 9 characetr please enter less than 9 character";
      return false;
}

}

</script>

<script type="text/javascript">
       function validate1(from) {
    	   
           var error=document.getElementById("uploaderrors");
           var uploads=form1["uploads"].value;

           error.innerHTML="";

           if(uploads==null || uploads=="")
               {
        	   error.innerHTML="Select File!";
               return false;
               }
		
	}
   
        </script>

<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">

		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
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
						<li class="hidden-xs hidden-sm"><font class="page-title">DISPATCH
								AND VOUCHER DETAILS</font></li>
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

.m-b-31 {
	margin-bottom: -17px !important;
}

.form-control {
	height: 50px;
}
</style>


					<div class="row">
						<div class="col-md-12">
							<div class="card-box">
								<div class="row">
									<div class="col-md-3" style="border-right-style: dotted;">
										<h4 class="m-t-0 m-b-20 header-title">
											<b> <u> CUSTOMER DETAILS : </u>
											</b>
										</h4>

										<div>
											<label for="inputEmail3">Application No:
												<h5>${txById.applicationNo}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword3">Customer Name :
												<h5>${custerDetails.customerName}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4">Product Name :
												<h5>${productName}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4">Card Number :
												<h5>${txById.cardNumber}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4">Mobile No :
												<h5>${residenceAddress.primaryMob}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4"> Mail Id :
												<h5>${residenceAddress.email}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4">Residence Address :
												<h5>${residenceAddress.residenceAddresss}</h5>
											</label>
										</div>

										<div>
											<label for="inputPassword4">WorkPlace Address :
												<h5>${WorkPlace.residenceAddresss}</h5>
											</label>
										</div>


									</div>

									<div class="col-md-5">
										<h4 class="m-t-0 m-b-20 header-title">
											<b> <u> ENTER VOUCHERS FOR SERVICES : </u>
											</b>
										</h4>
										<div class="row">
											<form:form action="posteditDispatch"
												modelAttribute="dispatchTrackingTO">
												<form:hidden path="transactionId"
													value="${txById.transactionId}" />
												<form:hidden path="trackId"
													value="${dispatchTrackById.trackId}" />
												<table class="table m-0">
													<thead>
														<tr>
															<th>Category</th>
															<th>Service Name</th>
															<th>Qunatity</th>
															<th>voucher No</th>
														</tr>
													</thead>
													<c:forEach items="${services}" var="services">
														<form:hidden path="txOffersId"
															value="${services.txofferId}" />
														<tbody>
															<tr>
																<td>${services.category}</td>
																<td>${services.serviceName}</td>
																<td>${services.quantity}</td>
																<td><form:input path="voucherNo"
																		class="form-control input-sm"
																		value="${services.voucherNo}" style="height:34px;" />
																</td>
															</tr>
														</tbody>
													</c:forEach>

												</table>
												<!--  <input type="submit" value="Submit"> -->
												<center>
													<br> <br>
													<button type="submit" value="Submit"
														class="btn btn-info waves-effect waves-light">Submit</button>
												</center>
											</form:form>
										</div>
									</div>

									<div class="col-md-4" style="border-left-style: dotted;">
										<h4 class="m-t-0 m-b-20 header-title">
											<b> <u> DISPATCH DETAILS : </u>
											</b>
										</h4>

										<div class="card-box">
											<div class="row">
												<div class="col-md-12">
													<form:form action="saveDispatch" name="form"
														onsubmit="return validate()"
														modelAttribute="dispatchTrackingTO"
														class="form-horizontal">
														<form:hidden path="trackId"
															value="${dispatchTrackById.trackId}" />

														<form:hidden path="createdBy" value="<%=id%>"
															class="form-control" id="inputEmail3" />

														<div class="row">
															<div class="col-md-12">
																<div class="m-t-20">
																	<h5>Dispatch Status</h5>
																	<%-- <form:input path="dispatchStatus" value="${dispatchTrackById.dispatchStatus}" class="form-control"   id="alloptions" required="required"/> --%>
																	<form:select path="dispatchStatus"
																		title="----Status----" class="form-control"
																		style="height:34px;" id="status">
																		<form:option
																			value="${dispatchTrackById.dispatchStatus}">${dispatchTrackById.dispatchStatus}</form:option>
																		<form:option value="InTransit"> InTransit </form:option>
																	</form:select>
																	<font id="statusserror" style="color: red;"></font>
																</div>
															</div>

															<div class="col-md-12">
																<div class="m-t-20">
																	<h5>Delivery Status</h5>
																	<%-- <form:input path="deliveryStatus" onkeypress="return onlyAlphabets(event,this);" value="${dispatchTrackById.deliveryStatus}" class="form-control"  id="placement" required="required"/> --%>
																	<form:select path="deliveryStatus"
																		title="----Status----" class="form-control"
																		style="height:34px;" id="deliverystatus">
																		<form:option
																			value="${dispatchTrackById.deliveryStatus}">${dispatchTrackById.deliveryStatus}</form:option>
																		<form:option value="InProgress"> InProgress </form:option>
																		<form:option value="Delivered"> Delivered </form:option>
																		<form:option value="Pending"> Pending </form:option>
																		<form:option value="Other"> Other </form:option>
																	</form:select>
																	<font id="deliverystatusserror" style="color: red;"></font>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-12">
																<div class="m-t-20">
																	<h5>Dispatch Date</h5>
																	<div class="input-group">
																		<form:input path="dispatchDate"
																			value="${dispatchTrackById.dispatchDate}" type="text"
																			class="form-control input-sm" style="height:34px;"
																			id="datepickerautoclose" required="required" />
																		<span
																			class="input-group-addon bg-primary b-0 text-white"><i
																			class="ti-calendar"></i></span>
																	</div>
																	<font id="dateerror" style="color: red;"></font>
																</div>
															</div>

															<div class="col-md-12">
																<div class="m-t-20">
																	<h5>Dispatch Through</h5>

																	<form:select path="dispatchThrough"
																		title="----dispatch list----"
																		class="form-control input-sm">
																		<form:option value="${leadsById.csr}"
																			label="${leadsById.CSRName}" />
																		<c:forEach var="constant" varStatus="status"
																			items="${welezoConstant}">
																			<c:if test="${constant.constType=='Dispatch Thru'}">
																				<form:option value="${constant.CValue}">${constant.CDisplay}</form:option>
																			</c:if>
																		</c:forEach>
																	</form:select>
																</div>
															</div>
														</div>


														<div class="row">
															<div class="col-md-12">
																<div class="m-t-20">
																	<h5>Consignment Reference</h5>
																	<form:input path="consignmentReference"
																		value="${dispatchTrackById.consignmentReference}"
																		class="form-control input-sm" maxlength="75"
																		name="moreoptions" style="height:34px;"
																		id="conthrough" />
																</div>
																<font id="consignerror" style="color: red;"></font>
															</div>
														</div>
														<br />
														<div class="form-group m-b-0">
															<div align="center">
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

										</div>

									</div>
								</div>
							</div>
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->

					<!--  -->


					<!-- calls uploaded from data box  -->
					<div class="row">
						<div class="col-md-12">
							<div class="card-box table-responsive">
								<div class="well well-lg">
									<form method="post" action="applicationUpload" name="form1"
										onsubmit="return validate1()" enctype="multipart/form-data">
										<input type="hidden" name="trackId"
											value="${dispatchTrackById.trackId}"> <input
											type="hidden" name="applicationNumber"
											value="${txById.applicationNo}">

										<table>
											<tr class="separator">
												<td><p>
														<font size="3" color="blue"><u>UPLOAD
																APPLICATION SCAN COPY HERE </u><i class="fa fa-arrow-down"
															aria-hidden="true"></i></font>
													</p></td>
											</tr>
											<tr>
												<td><p>
														<font size="2" color="red">Application Upload
															Status:</font><font size="2" color="black">
															${dispatchTrackById.applicationStatus}</font>
													</p></td>
											</tr>
											<tr>
												<td><b>Select file</b><span style="color: red">*</span></td>
												<td><input type="file" name="file" id="uploads" /> <font
													id="uploaderrors" style="color: red"></font></td>
											</tr>


											<tr class="separator">
												<td><h6></h6></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><button type="submit"
														value="Upload" class="btn btn-primary"
														onclick="return validate1()">
														<i class="fa fa-upload" aria-hidden="true"></i> Upload
													</button></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
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