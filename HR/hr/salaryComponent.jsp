<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
 <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

<title>WElEZO</title>
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
		else if(isNaN(period))
			{
              error.innerHTML="Enter Valid Number";
              return false;
			}

		else if(period.length>2)
 		{
			 error.innerHTML="Enter Valid Number";
             return false;
	 	}

		var error = document.getElementById("period1error");
		var period1 = form["period1"].value;
		error.innerHTML = "";
		if (period1 == null || period1 == "") {
			error.innerHTML = "This field cannot be empty !";
			return false;
		}
		else if(isNaN(period1))
		{
          error.innerHTML="Enter Valid Number";
          return false;
		}

	     else if(period1.length>2)
		{
		 error.innerHTML="Enter Valid Number";
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
				<div class="col-sm-12">
					<div class="card-box table-responsive">
                       
                       <div class="col-md-12">
						<div class="form-group row">
						<div class="col-md-5">
							<label>Employee Name : ${setEmpSalComponent.empName}</label>
						</div>
						<div class="col-md-5">
							<label>Department : ${setEmpSalComponent.department}</label>
						</div>
						<div class="col-md-5">
							<label>Designation : ${setEmpSalComponent.designation}</label>
						</div>
						<div class="col-md-5">
							<label>Gross Salary : ${setEmpSalComponent.gross}</label>
						</div>
						<div class="col-md-5">
							<label>Net Salary : ${setEmpSalComponent.nett}</label>
						</div>
						
                      </div>
                      <hr>
                      <form:form action="saveEmpPayment" name="form"
							onsubmit="return validate()" modelAttribute="salComponentDTO">
                      <form:hidden path="empId" value="${setEmpSalComponent.empId}"/>
                       <form:hidden path="gross" value="${setEmpSalComponent.gross}"/>
                        <form:hidden path="empName" value="${setEmpSalComponent.empName}"/>
                     <div class="col-md-12">
                      <div class="col-md-5">
						<div class="form-group row">
							<label>Select Salary Pay Month</label>
							<div class="col-10">
							<%-- 	 <form:input path="payforMonth" class="form-control" /> --%>
								 <form:select path="payforMonth" class="form-control" id="names">
								            <form:option value="" label="Select payforMonth" />
								            <form:option  value="31/01/2017" >January 2017</form:option>
											<form:option  value="28/02/2017" >February 2017</form:option>
											<form:option  value="31/03/2017" >March 2017</form:option>
											<form:option  value="30/04/2017" >April 2017</form:option>
											<form:option  value="31/05/2017" >May 2017</form:option>
											<form:option  value="30/06/2017" >June 2017</form:option>
											<form:option  value="31/07/2017" >July 2017</form:option>
											<form:option  value="31/08/2017" >August 2017</form:option>		
											<form:option  value="30/09/2017" >September 2017</form:option>
											<form:option  value="31/10/2017" >October 2017</form:option>
											<form:option  value="30/11/2017" >November 2017</form:option>
											<form:option  value="31/12/2017" >December 2017</form:option>
								</form:select>
								<font id="error" style="color: red"></font>
							</div>
						</div>
						</div>
						
						<div class="col-md-1">
						</div>
                           
                        <div class="col-md-5">   
						<div class="form-group row">
							<label for="example-search-input" class="col-2 col-form-label">Basic Percentage Saralry</label>
							<div class="col-10">
							 <form:input path="basicPerc" class="form-control"  value="${setEmpSalComponent.basicPercent}" /> 
							</div>
						</div>
						</div>
						<div class="col-md-1">
						</div>
						</div>
						
						<div class="col-md-12">
						<div class="col-md-5">
						<div class="form-group row">
							<label for="example-tel-input" class="col-2 col-form-label">Number Of Paid Days</label>
							<div class="col-10">
								 <form:input path="paidDays" class="form-control"  id="period"/>
							</div>
							<font id="perioderror" style="color: red"></font>
						</div>
						</div>
						
						<div class="col-md-1">
						</div>
						
						<div class="col-md-5">
						<div class="form-group row">
							<label for="example-tel-input" class="col-2 col-form-label">Number Of Late Days</label>
							<div class="col-10">
								 <form:input path="lateDays" class="form-control" id="period1"/>
								 <font id="period1error" style="color: red"></font>
							</div>
						</div>
						</div>
						</div>
                      
						<%-- 		<div class="col-md-12">
				<h5>OTHER ALLOWANCE/DEDUCTION</h5>
                 <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                    	<th>Id</th>
                                    	<th>Pay Name</th>
                                        <th>Description</th>
                                        <th>Pay Frequency</th>
                                        <th>Pay Component</th>
                                        <th>Allowance/Deduction</th>
                                        <th>Due Date</th>
                                        <th>Amount</th>
                                        <th>Pay Date</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                         <c:forEach items="${allPayType}" var="payType">
                        <tr>
                            <td><form:hidden path="paytypeId" value="${payType.paytypeId}" /><c:out value="${payType.paytypeId}" /></td>
                        	<td class="account-name sort-value"><c:out value="${payType.payName}"/></td>
                        	<td class="account-name1 sort-value"><c:out value="${payType.payDescriptions}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${payType.payFrequency}"/></td>
                        	<td class="account-name3 sort-value"><c:out value="${payType.payComponent}"/></td> 
                        	<td class="account-name4 sort-value"><c:out value="${payType.allowanceDeduction}"/></td>
                        	<td class="account-name5 sort-value"><c:out value="${payType.dueDate}"/></td>
                        	<td class="account-name6 sort-value"><input type="text" name="amount" ></td>
                        	<td class="account-name7 sort-value"><input type="text" name="dueDate" ></td>
                            
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
 --%>             
 <div align="center" style="padding-right: 100px">
					<button type="submit" onclick="return validate()" class="btn btn-primary btn-rounded btn-md "> SUBMIT</button>
					</div>
					</form:form>
					</div>
					</div>
					<!-- end card -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->

			<!-- Footer -->
			 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
			<!-- End Footer -->

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

	<!-- Modal-Effect -->
	<script src="resources/HR/plugins/custombox/dist/custombox.min.js"></script>
	<script src="resources/HR/plugins/custombox/dist/legacy.min.js"></script>

	<!-- App js -->
	<script src="resources/HR/js/jquery.core.js"></script>
	<script src="resources/HR/js/jquery.app.js"></script>


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
	<script
		src="resources/HR/plugins/datatables/dataTables.fixedHeader.min.js"></script>
	<script
		src="resources/HR/plugins/datatables/dataTables.keyTable.min.js"></script>
	<script
		src="resources/HR/plugins/datatables/dataTables.responsive.min.js"></script>
	<script
		src="resources/HR/plugins/datatables/responsive.bootstrap.min.js"></script>
	<script
		src="resources/HR/plugins/datatables/dataTables.scroller.min.js"></script>

	<!-- Datatable init js -->
	<script src="resources/HR/pages/datatables.init.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#datatable').dataTable();
							$('#datatable-keytable').DataTable({
								keys : true
							});
							$('#datatable-responsive').DataTable();
							$('#datatable-scroller')
									.DataTable(
											{
												ajax : "resources/HR/plugins/datatables/json/scroller-demo.json",
												deferRender : true,
												scrollY : 380,
												scrollCollapse : true,
												scroller : true
											});
							var table = $('#datatable-fixed-header').DataTable(
									{
										fixedHeader : true
									});
						});
		TableManageButtons.init();
	</script>
</body>
</html>