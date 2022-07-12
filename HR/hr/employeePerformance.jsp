<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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

<title>Welezo</title>

<!-- Modal -->
<!-- DataTables -->
<link href="resources/HR/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />


<!-- Modal -->
<link href="resources/HR/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet">

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


<script src="resources/js/modernizr.min.js"></script>
<script>
	$(function() {
		if (!Modernizr.inputtypes.date) {
			$('input[type=date]').datepicker({
				dateFormat : 'yy-mm-dd'
			});
		}
	});
</script>
<script type="text/javascript">
	function validate(from) {

		var error = document.getElementById("error");
		var names = form["names"].value;
		error.innerHTML = "";
		if (names == null || names == "") {
			error.innerHTML = "This field cannot be empty !";
			return false;
		}

		var error = document.getElementById("perioderror");
		var period = form["period"].value;
		error.innerHTML = "";
		if (period == null || period == "") {
			error.innerHTML = "This field cannot be empty !";
			return false;
		}

	}
</script>
</head>



<body>
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->
	<div class="wrapper">
		<div class="container">
			<div class="row">
			<div class="col-lg-12">
						<h3 align="center" style="mergin:4px;background-color:#6f809b;color:white;">EMPLOYEE PERFORMANCE REVIEW.</h3>

				<!--Custom Toolbar-->
						<div class="card-box card-outline-danger">
							<div class="form-group">
				<!--===================================================-->
				<form:form action="searchPerformanceHr"  name="form"
							onsubmit="return validate()" modelAttribute="performanceDTO">
				<form:hidden path="module" value="HR"/>
										<div class="row">
		<div class="col-md-12">							
      <div class="col-xs-3">
        <label for="ex2">Employee Name :</label>
      						 <form:select class="form-control" path="empId" title="Select" id="names"	>
                                         <form:option value="" label="Select Employee" />
                                       <c:forEach items="${allEmployees}" var="emp" varStatus="status">
											<form:option path="empId" value="${emp.empId}" >${emp.empName}</form:option>		
                                      </c:forEach>
                                       </form:select>
                                       <font id="error" style="color: red"></font>
      </div>
      <div class="col-xs-3">
        <label for="ex3">Evaluator :</label>
         <form:input type="text" path="" value="${USERNAME}" class="form-control" readonly="true"/>
       
      </div>
       <div class="col-xs-3">
        <label for="ex3">Evaluation Period :</label>
          <form:select class="form-control" path="evaluatorPeriod" title="Select" id="period">
                                         <form:option value="" label="Select Month Of Evaluation " />
											<form:option  value="January 2017" >January 2017</form:option>
											<form:option  value="February 2017" >February 2017</form:option>
											<form:option  value="March 2017" >March 2017</form:option>
											<form:option  value="April 2017" >April 2017</form:option>
											<form:option  value="May 2017" >May 2017</form:option>
											<form:option  value="June 2017" >June 2017</form:option>
											<form:option  value="July 2017" >July 2017</form:option>
											<form:option  value="August 2017" >August 2017</form:option>		
											<form:option  value="September 2017" >September 2017</form:option>
											<form:option  value="October 2017" >October 2017</form:option>
											<form:option  value="November 2017" >November 2017</form:option>
											<form:option  value="December 2017" >December 2017</form:option>
                                       </form:select>
                                       <font id="perioderror" style="color: red"></font>
      </div>
      <div class="col-xs-3" style="bottom : 5px">
      <p>&nbsp;</p>
                          <button type="submit" onclick="return validate()" class="btn btn-primary waves-effect waves-light">Search</button>
        
      </div>
      </div>
    </div>
									</form:form>
									</div>
									</div></div></div>
    <br/>
    
    <form:form action="savePerfromance" modelAttribute="performanceDTO">
    	<form:hidden path="module" value="HR"/>
    <div class="card-box card-outline-danger">
     <h4>Employee Name : ${employeeById.empName}</h4> Month : ${month}
							<div class="form-group">
                              <div class="col-md-8">
						<table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                            <th>Sl No</th>
                                          	 	<th style="background-color: lightblue;">Skill/Attributes</th>
                                          	 		<!-- <th style="background-color: lightblue;">Employee Review</th> -->
                                          	 		<th style="background-color: lightblue;">Manager Review</th>
                                          	 		<th style="background-color: lightblue;">HR Review</th>
                                              	<th align="center" style="background-color: lightblue; ">Action</th>
                                            </tr>
                                        </thead>
                           <tbody>
                         <c:forEach items="${empEvaluationHR}" var="metric">
														<tr>
															<td><form:hidden path="metricId" value="${metric.id}"/><c:out value='${metric.metricId}'/></td>
                        	<td><c:out value="${metric.attrbute}" /></td>
                        	<%-- <td><c:out value="${metric.selfEval}" /></td> --%>
                        		<td><c:out value="${metric.mgrEval}" /></td>
                        		<td><c:out value="${metric.hrEval}" /></td>
                        		
                        	<td align="center"><c:if test="${metric.hrEval == null}">
                        	<c:if test="${metric.ratingType == 'Discrete' && metric.applicableFor == 'All'}">
                        	<c:set var="ratingOptions" value="${metric.ratingOptions}" />
																	<c:set var="rating"
																		value="${fn:split(ratingOptions, ' ')}" />
																	<select array="rating" name="text" class="form-control"
																		style="width: 150px; border: 1px solid #35b8e0; padding-left: 50px">
																		<c:forEach var="numbers" items="${rating}">
																			<option value="${numbers}"><c:out value="${numbers}" /></option>
																		</c:forEach>
																		</select>
															
                        	</c:if>
                        	<c:if test="${metric.ratingType == 'Text' && metric.applicableFor == 'All'}">
                        	<textarea name="text" rows="3" cols="50"></textarea></c:if>
                        	</c:if>
                        	</td>
														</tr>
													</c:forEach>
                                        </tbody>
                                    </table>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->
							<div class="form-group row"></div>
							<div align="center">
								<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
							</div>
						</div>
						</form:form>
				</div>
				<!-- End row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
			<!-- Footer -->
			 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
			<!-- End Footer -->

		

	<script>
		var resizefunc = [];
	</script>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
	<script src="resources/js/jquery.min.js"></script>



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


	<script
		src="resources/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>

	<script src="resources/pages/jquery.bs-table.js"></script>


	<!-- Modal-Effect -->
	<script src="resources/HR/plugins/custombox/dist/custombox.min.js"></script>
	<script src="resources/HR/plugins/custombox/dist/legacy.min.js"></script>

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

							/* advance multiselect start */
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

							/*  Select2 */
							$(".select2").select2();

							$(".select2-limiting").select2({
								maximumSelectionLength : 2
							});

						});

		/* Bootstrap-TouchSpin */
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

		// Time Picker

		/*       Date Picker */
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
	</script>
</body>
</html>