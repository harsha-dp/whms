<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
<!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
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
        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet"/>
       <!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
       <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/modernizr.min.js"></script>
         <!-- Table -->
      
       <script src="resources/table/table-jquery-1.11.3.min.js"></script>

	    <link href="resources/table/table-jquery.dataTables.css" rel="stylesheet" type="text/css" />
	    <script src="resources/table/table-jquery.dataTables.js"></script>
	    <link rel="stylesheet" type="text/css" href="resources/table/table-buttons.dataTables.min.css"/>
	    <script src="resources/table/table-dataTables.buttons.min.js"></script>
	    <script src="resources/table/table-buttons.colVis.min.js"></script>
	       
	     
         <script src="resources/extraDatatable/jquery.dataTables.min.js"></script>
         <script src="resources/extraDatatable/dataTables.buttons.min.js"></script>
         <script src="resources/extraDatatable/buttons.print.min.js"></script>
         
         <script src="resources/extraDatatable/jszip.min.js"></script>
         <script src="resources/extraDatatable/pdfmake.min.js"></script>
         <script src="resources/extraDatatable/vfs_fonts.js"></script>
         <script src="resources/extraDatatable/buttons.colVis.min.js"></script>
         <script src="resources/extraDatatable/buttons.html5.min.js"></script>
         
          <script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>
           
          <link href="resources/excel/Filter.css" rel="stylesheet" type="text/css"/>
          <script src="resources/excel/headerOptions.js"></script>
	       <link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>
<style>
tfoot {
    display: table-header-group;
}

</style>
<style>
.table, td, th {
	border: 1px solid #ddd;
}
   
</style>
<script>
function validate(from) {

	var error = document.getElementById("custnameerror");
	var custname = form["custname"].value;

	error.innerHTML = "";

	if (custname == null || custname == "") {
		error.innerHTML = "Enter item name !!";
		return false;
	}

	if (custname.length < 3) {s
		error.innerHTML = "Item Name should be minimum 3 character";
		return false;
	}
	if (custname.length > 80) {
		error.innerHTML = "Item Name should be in between 3 to 80 character";
		return false;
	}/* end */


	var error = document.getElementById("cateerror");
	var cate = form["cate"].value;

	error.innerHTML = "";

	if (cate == null || cate == "") {
		error.innerHTML = "Select Item Category";
		return false;
	}

	var error = document.getElementById("uniterror");
	var unit = form["unit"].value;

	error.innerHTML = "";

	if (unit == null || unit == "") {
		error.innerHTML = "Please select type of measure !!";
		return false;
	}

	

}
</script>
<!--add item  validation  -->
<!-- <script src="resources/validation/
/itemList.js"></script> -->
<!--  -->
<script>
function validate1(from) {

	

	var error = document.getElementById("companyerror");
	var company = form1["company"].value;

	error.innerHTML = "";

	if (company == null || company == "") {
		error.innerHTML = "Enter Vendor company name !!";
		return false;
	}

	if (company.length < 3) {
		error.innerHTML = "Vendor Company name should be minimum 3 character";
		return false;
	}
	if (company.length > 200) {
		error.innerHTML = "Vendor Company name should be in between 3 to 200 character";
		return false;
	}/* end */

	
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
						<li><a href="inventoryDashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	><font class="page-title">INVENTORY ITEM LIST
							</font> <!-- <h4 class="page-title">Edit Presales</h4> --></li>
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
		</div>

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

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">	
								<div align="center">
									<a href="#custom-modal-item"
										class="btn btn-warning btn-sm btn-rounded"
										data-animation="fadein" data-plugin="custommodal"
										data-overlaySpeed="200" data-overlayColor="#36404a"> <i
										class="fa fa-plus"></i> Add Item
									</a> <a href="#custom-modal-vendor"
										class="btn btn-info btn-sm btn-rounded"
										data-animation="fadein" data-plugin="custommodal"
										data-overlaySpeed="200" data-overlayColor="#36404a"> <i
										class="fa fa-plus"></i> Add Vendors
									</a>
									<a href="vendorsList"
										class="btn btn-success btn-sm btn-rounded"
										data-animation="fadein" 
										data-overlaySpeed="200" data-overlayColor=""><i
										class="fa fa-eye"></i>  View  Vendors
									</a>
								
								</div>
								<div class="col-sm-12">
								
							<%-- 	<div class="form-group ">
											<c:forEach items="${categoryList}" var="item" varStatus="counter">
											 	 <c:out value="${item}">${item}</c:out>
											 	 
											</c:forEach>
								</div> --%>
								</div>
								<div class="col-sm-12">
									<div class="scrollit">
										
										<table id="example" class="grid display nowrap"
											style="width: 100%">
											<thead>
												<tr style="background-color: menu;">
													<td><b>SL.NO</b></td>
													<td><b>ITEM CATEGORY</b></td>
													<td><b>ITEM NAME</b></td>
													<td><b>CURRENT STOCK-UNIT</b></td>
													<!-- <td><b>UNIT OF MEASURE</b></td> -->
													<td><b>ACTION</b></td>
													<td><b>RE-ISSUE & EDIT ITEM </b></td>

												</tr>
											</thead>

											<tfoot>
												<tr>
													<th><b>ID</b></th>
													<th><b>Item category</b></th>
													<th><b>Item Name</b></th>													
													<th><b>Current Stock -Unit</b></th>
													<!-- <th><b>Unit Of Measure</b></th> -->
													<th><b>Action</b></th>
													<th><b>Options </b></th>
												</tr>
											</tfoot>
											<tbody>

												<c:forEach var="list" items="${stkList}" varStatus="counter">
													<tr>
														<td><c:out value="${counter.index+1}" /></td>
														<td><c:out value="${list.itemCategory}"></c:out></td>
														<td><c:out value="${list.itemName}"></c:out></td>
														<td>
										                        	 <c:if test="${(list.currentStock>0) && (list.currentStock<=2) }">
																			<p class="label label-warning ">${list.currentStock}</p>&nbsp ${list.unitOfMeasure}
																	 </c:if> 
																	 <c:if test="${(list.currentStock==0)}">
																			<p class="label label-danger">${list.currentStock}</p>&nbsp ${list.unitOfMeasure}
										                        	 
										                        	 </c:if>
										                        	 <c:if test="${(list.currentStock>=3)}">
										                        	    	<c:out value="${list.currentStock}"/>&nbsp ${list.unitOfMeasure}
										                        	 </c:if>		
										                 </td>
										                        	 
														
														<%-- <td><c:out value="${list.unitOfMeasure}"></c:out></td> --%>
														

														<td><a
															href="addinward?itemId=<c:out value='${list.itemId}'/>&itemName=<c:out value='${list.itemName}'/>"
															class="btn btn-warning btn-xs" data-overlaySpeed="200"
															data-overlayColor="#36404a"> <i class="fa fa-arrow-down"></i> InWard </a> <!-- <button type="button" data-id="3" class="btn btn-default editButton" id="custom-modal1">Edit</button> -->
									
															<c:if test="${(list.currentStock!=0) && (list.currentStock!=NaN)}">
																		<a
																href="addoutward?itemId=<c:out value='${list.itemId}'/>&itemName=<c:out value='${list.itemName}'/>"
																	class="btn btn-info btn-xs" data-overlaySpeed="200"
																data-overlayColor="#36404a"><i class="fa fa-arrow-up"></i> OutWard
																 </a> 	
										                        	 
										                       </c:if>
																
															
														</td>
														<td>	
															<a 
																href="editItemId?itemId=<c:out value='${list.itemId}'/>"
																class="btn btn-danger btn-xs" data-overlaySpeed="200" 
																data-overlayColor=""><i class="fa fa-edit"></i> Edit Item   </a> 
															
															<c:if test="${list.itemCategory =='Assest'|| list.itemCategory =='Computer Accessories'}">
															
															
															<a 
																href="reissue?itemId=<c:out value='${list.itemId}'/>&itemName=<c:out value='${list.itemName}'/>"
																class="btn btn-info btn-xs" data-overlaySpeed="200" 
																data-overlayColor=""> <i class="fa fa-refresh"></i> Reissue   </a>
															</c:if>	
														</td>	 
														<%-- 	<c:out value="${list.itemId}"></c:out>


															<button type="button" class="btn btn-warning"
																data-toggle="modal" data-target="#inwardProductModal"
																data-itemId="${list.itemId}"
																data-itemName="${list.itemName}">Inward</button>

															<button type="button" class="btn btn-warning"
																data-toggle="modal" data-target="#inwardProductModal"
																data-productid="${list.itemId}"
																data-productname="${list.itemName}">Delete</button> --%>
														</td>

													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
										

								</div>
							</div>
						</div>

					</div>

					<!--  -->
					<div id="custom-modal1" class="modal-demo">
						<button type="button" class="close" onclick="Custombox.close();">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="custom-modal-title">Add INWARD</h4>
						<div class="custom-modal-text text-left">

							<!-- end row -->

							<!-- popup window -->

							<div class="container">
								<div class="card-box">
									<div class="row">

										<!-- Modal Add Category -->
										<!--  <div class="modal fade none-border" id="add-category"> -->

										<!-- =============	form:form start from here ==============    -->
										<form:form action="saveinventory"
											modelAttribute="inventoryDTO">
											<%--    <form:hidden path="itemId" value="<%=id%>" class="form-control" />
										<form:hidden path="interactionBy" value="<%=id%>"	class="form-control" />
											<form:hidden path="customerId" value="${registerTO.customerId}" />
											<form:hidden path="transactionId" value="${registerTO.transactionId}" /> --%>

											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label>Item Name </label><br> <input type="text"
															name="itemId" value="${master.itemName}"
															class="form-control" readonly="true">
													</div>


													<div class="form-group">
														<label for="name">Price</label> <input type="text"
															name="price" class="form-control">
													</div>

													<div class="form-group">
														<label for="name">Quantity</label> <input type="text"
															name="quantity" class="form-control">
													</div>

													<div class="form-group">
														<label for="name">Invoice Number</label> <input
															type="text" name="" class="form-control">
													</div>

													<div class="form-group">
														<label for="name">Description</label> <input type="text"
															name="description" class="form-control">
													</div>

													<div class="form-group">
														<label for="name">Remarks</label>
														<textarea name="remarks" class="form-control"></textarea>
													</div>


												</div>
											</div>

											<div class="col-md-12">

												<br />

												<div align="center">
													<button type="submit"
														class="btn btn-success waves-effect waves-light"
														value="save">Save</button>
													<button type="button"
														class="btn btn-danger waves-effect waves-light m-l-5">Cancel</button>
												</div>
											</div>
										</form:form>
									</div>

								</div>

							</div>
						</div>

					</div>

					<div id="custom-modal" class="modal-demo">
						<button type="button" class="close" onclick="Custombox.close();">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="custom-modal-title">Add OutWARD</h4>
						<div class="custom-modal-text text-left">

							<!-- end row -->

							<!-- popup window -->

							<div class="container">
								<div class="card-box">
									<div class="row">

									
									</div>

								</div>

							</div>
						</div>

					</div>

					<!--  -->
				</div>
				<!-- end col -->
			</div>
			<!-- content -->

			<!-- Modal -->
			<div id="custom-modal-item" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">ADD NEW ITEM</h4>
				<div class="custom-modal-text text-left">

					<div class="container">
					
						<div class="card-box">
											
							<div class="row">

								<form:form action="savemaster" name="form"
									onsubmit="return validate()" modelAttribute="itemMasterDTO">

									<div class="col-lg-12">
										<input type="hidden" name="assetType" value="1"> <input
											type="hidden" name="itemGroup" value="-">

										<div class="form-group">
											<label>Item Name <span style="color: red;">*</span> :
											</label> <input type="text" name="itemName" id="custname"
												class="form-control input-md" placeholder="Mouse"> 
<font id="custnameerror" style="color: red"></font>
										</div>
									<!-- 	<div class="form-group">
											<label for="name">Item Category :</label> <input type="text"
												name="itemCategory" class="form-control input-md"
												placeholder="Ex. Computer accessories">
										</div> -->

									
										
										<div class="form-group">
											<label for="name">Item Category <span style="color: red;"> *</span> :</label> 
											
											<input  list="categoryListId"  name="itemCategory" class="form-control" id="cate">	
												<datalist id="categoryListId">														
													<c:forEach items="${categoryList}" var="item" varStatus="counter">
														  
														  <option  value="${item}"> ${item}</option>
														  
												  </c:forEach>
												  	 
												</datalist>
												
											
										<font id="cateerror" style="color: red"></font>
										</div>
										<div class="form-group">
											<label>Unit of Measure <span style="color: red;"> *</span>
												:
											</label> <select name="unitOfMeasure" class="form-control input-md"
												id="unit">
												<option value="">Select Unit Of Measure</option>
												<option value="Kilogram">Kilogram</option>
												<option value="Litre">Litre</option>
												<option value="Numbers">Numbers</option>
												<option value="Unit">Unit</option>
												<option value="Bundles">Bundles</option>
												<option value="Other">Other</option>
											</select> <font id="uniterror" style="color: red"></font>
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
			<!--  -->

			<div class="modal" id="my_modal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">Modal header</h4>
						</div>
						<div class="modal-body">
							<p>some content</p>
							<input type="text" name="bookId" value="" />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal -->
			<div id="custom-modal-vendor" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">ENTER NEW VENDOR DETAILS</h4>
				<div class="custom-modal-text text-left">

					<!-- end row -->

					<!-- popup window -->

					<div class="container">
						<div class="card-box">
							<div class="row">
							

								<!-- Modal Add Category -->
								<!--  <div class="modal fade none-border" id="add-category"> -->

								<!-- =============	form:form start from here ==============    -->
								 <form:form action="savevendors" name="form1" onsubmit="return validate1()" modelAttribute="vendors">
									<div class="row">
										<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label>Contact Person Name </label><br>
												 <form:input type="text" path="vendorName"  id="custname"  class="form-control"  />
												</div>
												
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="name">Phone Number </label> 
													<form:input type="text" path="vendorPhone"  
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label for="name">Company Name <span style="color:red"> *</span></label>
													<form:input type="text" path="vendorCompany"  id="company"
														class="form-control" />
												</div>
												<font id="companyerror" style="color: red;"></font>
											</div>




											<div class="col-md-6">
												<div class="form-group">
													<label for="name">Email Id</label> 
													<form:input type="text" path="vendorEmail"
														class="form-control" />
												</div>
											</div>
										</div>

<div class="col-md-12">
										<div class="col-md-6">
											<div class="form-group">
												<label for="name">Company Address</label>
												<form:textarea type="text" path="vendorAddress" id="addresss"
														class="form-control" />
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="name">ACC No,Bank Details,IFSC & Address</label>
												<form:textarea type="text" path="vendorBankDetails"
														class="form-control" />
											</div>
										</div>
									</div>



									<div class="col-md-12">
										<div class="col-md-offset-4">
											<button type="submit" onclick="return validate1()"
												class="btn btn-primary waves-effect waves-light"
												value="submit">Submit</button>
											<button type="reset"
												class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
										</div>

									</div>
									</div>
								</form:form>
							</div>

						</div>

					</div>

					<!--  -->

					<!-- Modal -->
					
				</div>

			</div>
			<!--  -->
			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
		</div>
		<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->

	<!-- END wrapper -->

	<script>
            var resizefunc = [];
        </script>

<script>
    $(function () {
      $('#example').excelTableFilter();
    });
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