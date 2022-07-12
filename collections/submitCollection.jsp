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
<meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1"/>

<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">
<!--  -->

<!-- App title -->
<title>WELEZO</title>
<!--  -->

<!-- DataTables -->
<link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
<!--  -->

<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet">
<!--  -->

<!-- App CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/css/components.css" rel="stylesheet" type="text/css" />
<link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
 <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
 <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
 <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
 <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
 <link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<script src="resources/js/modernizr.min.js"></script>

<link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

<script src="resources/js/modernizr.min.js"></script>

<!--  // interger validation script -->

<!--add vendors  validation  -->
<!-- <script src="resources/validation/collections/submitCollection.js"></script> -->

<script>
function validate(from) {

	var error = document.getElementById("paymenterror");
	var purposes = form["payment"].value;
	error.innerHTML = "";

	if (purposes = null || purposes == "") // for text use
											// if(strUser1=="Select")
	{
		error.innerHTML = "Please Select Payment Mode ";
		return false;
	}

	var error = document.getElementById("checkerror");
	var datepicker1 = form["datepicker1"].value;

	error.innerHTML = "";

	if (payment.datepicker1) {
		error.innerHTML = "Cheque number has to be minmum 6 digits"
		return false;
	}

}

function disable_Online() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = true;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;

}
function disable_Cash() {
	document.getElementById("datepicker1").disabled = true;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}
function disable_Credit() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}

function disable_pos() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = false;
	document.getElementById("batch").disabled = false;
	document.getElementById("credit").disabled = false;
}

function enable_Cheque() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = false;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}

function disable_NEFT() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = false;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}
function disable_CCAvenu() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}
function disable_PayTM() {
	document.getElementById("datepicker1").disabled = false;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = true;
	document.getElementById("terminal").disabled = false;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}
function disable_Complimentary() {
	document.getElementById("datepicker1").disabled = true;
	document.getElementById("datepicker2").disabled = true;
	document.getElementById("datepicker-autoclose").disabled = false;
	document.getElementById("terminal").disabled = true;
	document.getElementById("batch").disabled = true;
	document.getElementById("credit").disabled = false;
}

</script>
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
						<li><a href="txdashboard"> <i class="fa fa-home fa-2x"
								aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	><font face="verdana" class="page-title">SUBMIT PAYMENT DETAILS </font></li>
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
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->

			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>

		<!-- Modal -->
		<!-- <div id="custom-modal" class="modal-demo"> -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container"></div>
				<!-- end row -->

				<!-- popup window -->

				<!-- <div class="row" style="background-image: url(./resources/images/WelezoBackground.jpg)"> -->
				<div class="col-lg-12 col-md-12 col-sm-12">
						<!-- Modal Add Category -->
						<!--  <div class="modal fade none-border" id="add-category"> -->
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header ">
									<!-- <h4 class="custom-modal-title">SUBMIT APPLICATION</h4> -->
									<div class="custom-modal-text text-left">

										<!-- =============	form:form start from here ==============    -->
										<form:form action="submitCollections" name="form"
											onsubmit="return validate()" modelAttribute="collectionDTO">

											<form:hidden path="collectionId"
												value="${collectionById.collectionId}" />
											<form:hidden path="createdBy" value="<%=id %>"
												class="form-control" />
												
												
											
								<div class="col-sm-12">	
									<div class="form-group col-md-4">
									<div class="p-20">	
												<form:label path="" for="name">Customer Name</form:label>
												<form:input type="text" path=""
													value="${presalesById.customerName}" class="form-control"
													id="name" placeholder="" readonly="true" />
													
												
												
												<form:label path="productnumber" for="Sdate">Product Bought</form:label>
												<form:select path="productnumber" title="Product Name"
													class="form-control" id="assign">
													<form:option value="${getproductById.productId}"
														label="${getproductById.productName}" readonly="true">
													</form:option>
													<%-- <form:options items="${allProducts}" itemValue="productId"
							itemLabel="productName"  /> --%>
												</form:select>	
												
												
												<form:label path="price" for="Sdate">Product Price</form:label>
												<form:select path="price" title="Product Name"
													class="form-control" id="assign" readonly="true">
													<form:option value="${collectionById.price}"> ${collectionById.price} </form:option>
													<%-- <form:options items="${allProducts}" itemValue="productPrice"
							itemLabel="productPrice"  /> --%>
												</form:select>
												
												<form:label path="applicationNo" for="Sdate">Application No 
												</form:label>
												<form:select path="applicationNo" title="select Application"
													class="form-control" id="aplicationno">
													<form:option value="${collectionById.applicationNo}"
														label="${collectionById.applicationNo}" />
												</form:select>
												
												<c:choose>
															<c:when test="${not empty allEmployeeDetails}">
																<form:label path="csr" for="assign">CSR</form:label>
																<form:select path="csr" title="----Csr Name----"
																	class="form-control" id="assign" readonly="true">
																	<form:option value="${collectionById.csr}"	label="${csr}" />
																</form:select>
															</c:when>
														</c:choose>
												
														<c:choose>
															<c:when test="${not empty allEmployeeDetails}">
																<form:label path="team" for="priority">Team Name</form:label>
																<form:select path="team" title="----Team Leader----"
																	class="form-control" id="assign" readonly="true">
																	<form:option value="${teamName.teamId}"
																		label="${teamName.teamName}" />
																</form:select>
															</c:when>
														</c:choose>
									
														<form:label path="channel" for="Sdate">Channel</form:label>
														<form:select path="channel" title="channels Name"
															class="form-control" id="assign" readonly="true">
															<form:option value="${channelName.channelId}"> ${channelName.channelsName} </form:option>
														</form:select>
												
														<label>Collected Date</label>
														<div class="input-group">
															<form:input type="text" path="colectedDate"
																value="${collectionDate}" class="form-control"
																placeholder="dd/mm/yyyy" readonly="true" />
															<span class="input-group-addon bg-primary b-0 text-white"><i
																class="fa fa-calendar-o"></i></span>
														</div>
													
													<c:choose>
														<c:when test="${not empty allEmployeeDetails}">
															<form:label path="executive">Collected By</form:label>
															<form:select path="executive" title="----Executive----"
																class="form-control" id="assign" readonly="true">
																<form:option value="${collectionById.executive}"
																	label="${executive}" />
															</form:select>
														</c:when>
													</c:choose>
												
													
											</div>
											</div>


											<div class="form-group col-md-8">
											<div class="p-20">	
												<form:label path="paymentMode" for="Sdate">Payment Mode <span
														style="color: red;">*</span>
												</form:label>
												<br>
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
												<form:select path="paymentMode" title="Select Payment Mode"
													class="form-control" id="payment">
													<form:option value="${collectionById.paymentMode}"
														label="Confirm Payement is it :${collectionById.paymentMode}"></form:option>
													<form:option path="paymentMode"	value="${collectionById.paymentMode}">${collectionById.paymentMode}</form:option>
													
													<c:forEach items="${bankList}" var="list">
															<c:if test="${list.constType == 'payment_mode'}">
													<form:option path="paymentMode" value="${list.CValue}">${list.CDisplay}</form:option>
															</c:if>
															</c:forEach>
												</form:select>
</div>
												<!-- disbale   code -->
												<script>	
			     	var select = document.getElementById("payment");
					select.onchange = function()
					{
    				var selectedString = select.options[select.selectedIndex].value;
    				
						if(selectedString == "Online")
								{
							disable_Online();
							}	
						else if(selectedString == "Cash")
						{
							disable_Cash();
						}	
						else if(selectedString == "Credit/Debit")
						{
							disable_Credit();
						}
						else if(selectedString == "POS")
						{	
						disable_pos();
						}
						else if(selectedString == "Cheque")
						{
							enable_Cheque();
						}	

						else if(selectedString == "NEFT")
                        {
                             disable_NEFT();
                        }

						else if(selectedString == "CCAvenu")
                        {
							disable_CCAvenu();

                        }
						else if(selectedString == "PayTM")
                        {
							disable_PayTM();
                        } 
						else if(selectedString == "Complimentary")
						{
							disable_Complimentary();
						}

				}
			</script>
												<font id="paymenterror" style="color: red;"></font>
												<br>
												
														<form:label path="chequeAuthCode">Cheque No./Authentication No <span
																style="color: red;">*</span>
														</form:label>
														<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-cc" aria-hidden="true"></i></span>
															<form:input type="text" path="chequeAuthCode"
																class="form-control"
																minlength="6"
																maxlength="11" placeholder="Enter Cheque No./Auth.."
																id="datepicker1" required="required" />
															<!-- <font id="checkerror" style="color: red;"></font> -->
															<span id="error" style="color: red; display: none">*
																Enter digits only</span>
														</div>
												<br>
												
												
														<form:label path="bank">Bank <span
																style="color: red;">*</span>
														</form:label>
														<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-university" aria-hidden="true"></i></span>
														<form:select path="bank" title="----Select bank Name----"
															class="form-control" id="datepicker2" required="required">
															<form:option value="" label="Select Bank Name"></form:option>
															<c:forEach items="${bankList}" var="list">
															<c:if test="${list.constType == 'Bank Name'}">
															<form:option value="${list.CValue}" >${list.CDisplay}</form:option>
															</c:if>
															</c:forEach>
														</form:select>
														<font id="bankerror" style="color: red;"></font>
													</div>
													
													<div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
														<form:label path="chequeDate">Cheque Date <span
																style="color: red;">*</span>
														</form:label>
														<div class="input-group">
															<form:input type="text" id="datepicker-autoclose"
																path="chequeDate" class="form-control"
																placeholder="dd/mm/yyyy" required="required" />
															<span class="input-group-addon"><i
																class="fa fa-calendar"></i></span> <font id="dateerror"
																style="color: red;"></font>
														</div>
														</div>
														</div>
														
														<div class="col-md-6">
														<div class="m-t-20">
														<form:label path="terminalNumber">Terminal No:</form:label>
														<form:select path="terminalNumber" title="Terminal Name"
															class="form-control" id="terminal" required="required">
															<form:option value="" label="Select Terminal Number"></form:option>
															<form:option value="RA005377">RA005377</form:option>
															<form:option value="RA005378">RA005378</form:option>
															<form:option value="RA005379">RA005379</form:option>
															<form:option value="RA005375">RA005375</form:option>
															<form:option value="RA005376">RA005376</form:option>
														</form:select>
														<font id="terminalerror" style="color: red;"></font>
												</div>
												</div>
												<div class="col-md-6">
														<div class="m-t-20">
														<form:label path="cardNumber">Batch No:</form:label>
														<form:input path="cardNumber" class="form-control" placeholder="Enter batch No." id="batch" required="required"/>
												</div>
												</div>
												<div class="col-md-6">
														<div class="m-t-20">
														<form:label path="cardNumber">Credited To Account:</form:label>
														<form:select path="creditedTo" title="----Select bank Name----"
															class="form-control" id="credit" required="required">
															<form:option value="" label="Select Bank Name"></form:option>
															<c:forEach items="${welezoBankList}" var="Welezolist">
															<form:option value="${Welezolist.acctId}" >${Welezolist.accName}</form:option>
															</c:forEach>
														</form:select>
												</div>
												</div>
														</div>
													<form:label path="remarks">Remarks</form:label>
													<form:textarea type="text" path="remarks" id="remark"
														class="form-control" placeholder="Enter Any Remarks"
														minlength="3" maxlength="150" />
													<font id="Remarkerror" style="color: red;"></font>
													</div>
													
													<div align="center">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
											</div>
											</div>
										</form:form>
													
													
												</div>
												<!--  -->
												<c:if test="${getproductById.productName == 'Customised'}">
					
					<div class="col-md-6" style="padding-top: 27px;mergin-top:100px">
					
				<h6 class="custom-modal-title">Customised Service List :</h6>
				<!-- <label for="Sdate">Customised	Service List :</label> -->
						<table class="table table-bordered m-0">
							<thead>
								<tr>
									<th style="background-color: #71b6f9; color: white">Category</th>
									<th style="background-color: #71b6f9; color: white">Service</th>
									<th style="background-color: #71b6f9; color: white">Quantity</th>
								</tr>
							</thead>
							<c:forEach items="${CollectionOffers}" var="offers">
											<tbody>
												<tr class="#ebeff2">
													<td>${offers.category}</td>
													<td>${offers.serviceName}</td>
													<td>${offers.quantity}</td>
												</tr>
											</tbody>
										</c:forEach>
						</table>
					</div>
					</c:if>
												<!--  -->
											</div>
											
									</div>
								</div>
								<!--  -->
							<%-- 		<c:if test="${getproductById.productName == 'Customised'}">
					
					<div class="col-md-6" style="padding-top: 27px;mergin-top:100px">
					
				<div class=card-box>
				<h6 class="custom-modal-title">Customised Service List :</h6>
				<!-- <label for="Sdate">Customised	Service List :</label> -->
						<table class="table table-bordered m-0">
							<thead>
								<tr>
									<th style="background-color: #71b6f9; color: white">Category</th>
									<th style="background-color: #71b6f9; color: white">Service</th>
									<th style="background-color: #71b6f9; color: white">Quantity</th>
								</tr>
							</thead>
							<c:forEach items="${CollectionOffers}" var="offers">
											<tbody>
												<tr class="#ebeff2">
													<td>${offers.category}</td>
													<td>${offers.serviceName}</td>
													<td>${offers.quantity}</td>
												</tr>
											</tbody>
										</c:forEach>
						</table>
						</div>	
					</div>
					</c:if>
							 --%>	<!--  -->
							</div>
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

		<!-- Form wizard -->
		<script
			src="resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
		<script
			src="resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

		<!-- App js -->
		<script src="resources/js/jquery.core.js"></script>
		<script src="resources/js/jquery.app.js"></script>


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


		<!-- Dropdown disable sta -->
		<script type="text/javascript">
$(document).ready(function () {
    $('#welezo-2').on('change', '.positionTypes', function () {
        // Get the selected options of all positions
        var allSelected = $(".positionTypes").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".positionTypes option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".positionTypes option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});

</script>

		<script type="text/javascript">
$(document).ready(function () {
    $('#account-2').on('change', '.form-control', function () {
        // Get the selected options of all positions
        var allSelected = $(".form-control").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".form-control option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".form-control option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});
</script>

		<!-- Dropdown disable End -->

		<script type="text/javascript">
            $(document).ready(function() {
                $('#basicwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#progressbarwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    var $percent = ($current/$total) * 100;
                    $('#progressbarwizard').find('.bar').css({width:$percent+'%'});
                },
                'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#btnwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted','nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});

                var $validator = $("#commentForm").validate({
                    rules: {
                        emailfield: {
                            required: true,
                            email: true,
                            minlength: 3
                        },
                        namefield: {
                            required: true,
                            minlength: 3
                        },
                        urlfield: {
                            required: true,
                            minlength: 3,
                            url: true
                        }
                    }
                });

                $('#rootwizard').bootstrapWizard({
                    'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#commentForm").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        }
                    }
                });
            });

        </script>


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
            
            jQuery("#datepicker-autoclose1").datepicker();
     		jQuery('.fa-calendar-o').click(function() {
     			jQuery("#datepicker-autoclose1").focus();
           	  });
     		
     		jQuery("#datepicker-autoclose").datepicker();
     		jQuery('.fa-calendar').click(function() {
     			jQuery("#datepicker-autoclose").focus();
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