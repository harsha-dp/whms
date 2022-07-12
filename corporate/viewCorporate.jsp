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

        <!-- App title -->
        <title>WELEZO</title>
         <!-- Plugins css-->
         
        <link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

     <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        
  
        <!-- DataTables -->
        <link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
        
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
	       
         <script src="resources/extraDatatable/jquery-1.12.4.js"></script>
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
         <!--add vendors  validation  -->
<!-- <script src="resources/validation/corporate/corporateDetails.js"></script> -->
<script>
/**
 * 
 */

function validate(from) {

	var error = document.getElementById("channellerror");
	var channele = form["channele"].value;

	error.innerHTML = "";

	if (channele == null || channele == "") {
		error.innerHTML = "Please select type of channel ";
		return false;
	}

	/* start */
	var error = document.getElementById("fnameerror");
	var cname = form["cname"].value;

	error.innerHTML = "";

	if (cname == null || cname == "") {
		error.innerHTML = "Enter corporate name";
		return false;
	}

	
	if (cname.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	if (cname.length > 300) {
		error.innerHTML = "Name should be in between 3 to 300 character";
		return false;
	}/* end */

	
	
	var error = document.getElementById("strengthherror");
	var strengthh = form["strengthh"].value;

	error.innerHTML = "";

	if (strengthh == null || strengthh == "") {
		error.innerHTML = "Please enter total strength";
		return false;
	}

	if (strengthh.length < 1) {
		error.innerHTML = "Enter minimum 1 digit";
		return false;
	}
	if (strengthh.length > 7) {
		error.innerHTML = "you entered more then 5 digits please enter less then 7 didgits";
		return false;
	}

	var error = document.getElementById("textareaerror");
	var textarea = form["textarea"].value;

	error.innerHTML = "";

	if (textarea == null || textarea == "") {
		error.innerHTML = "Enter corporate address";
		return false;
	}

	if (textarea.length < 3) {
		error.innerHTML = "Address should be minimum 3 character";
		return false;
	}
	if (textarea.length > 400) {
		error.innerHTML = "Address should be in between 3 to 400 character";
		return false;
	}/* end */

	var error = document.getElementById("cityyerror");
	var cityy = form["cityy"].value;

	error.innerHTML = "";

	if (cityy == null || cityy == "") {
		error.innerHTML = "Enter corporate city name";
		return false;
	}

	if (cityy.length < 3) {
		error.innerHTML = "city should be minimum 3 character";
		return false;
	}
	if (cityy.length > 50) {
		error.innerHTML = "city should be in between 3 to 50 character";
		return false;
	}/* end */

	

	
	var error = document.getElementById("typeeerror");
	var typee = form["typee"].value;

	error.innerHTML = "";

	if (typee == null || typee == "") {
		error.innerHTML = "Please select entity type";
		return false;
	}

	var error = document.getElementById("exceeeerror");
	var exceee = form["exceee"].value;

	error.innerHTML = "";

	if (exceee == null || exceee == "") {
		error.innerHTML = "Please select executive name";
		return false;
	}

}

function onlyNumbersAndPlus(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // if IE
	else
		charCode = evt.which; // if firefox
	if (charCode == 43)
		return true;
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}

function onlyNumbers(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // if IE
	else
		charCode = evt.which; // if firefox
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}

function onlyAlphabets(evt) {
	var charCode;
	if (window.event)
		charCode = window.event.keyCode; // for IE
	else
		charCode = evt.which; // for firefox
	if (charCode == 32) // for &lt;space&gt; symbol
		return true;
	if (charCode > 31 && charCode < 65) // for characters before 'A' in ASCII
										// Table
		return false;
	if (charCode > 90 && charCode < 97) // for characters between 'Z' and 'a' in
										// ASCII Table
		return false;
	if (charCode > 122) // for characters beyond 'z' in ASCII Table
		return false;
	return true;
}
/* WRITE THE VALIDATION SCRIPT IN THE HEAD TAG. */
function isNumber(evt) {
	var iKeyCode = (evt.which) ? evt.which : evt.keyCode
	if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
		return false;

	return true;
}
var specialKeys = new Array();
specialKeys.push(8); // Backspace
function IsNumeric(e) {
	var keyCode = e.which ? e.which : e.keyCode
	var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}
</script>
<!--  -->
<style>
tfoot {
    display: table-header-group;
}
.table, td, th {
	border: 1px solid #ddd;
}

#n{
    border-style: solid;
    border-width: thin;
}   
.modal-header{
    background-color: aliceblue;
}
</style>

 
    </head>
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
							
                            <li>
                             <a href="corporateDashBoard?userId=<c:out value="${USERID}" />"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                            <font face="verdana" class="page-title">CORPORATE LIST </font>
                               <!--  <h4 class="page-title">ADD COLLECTIONS</h4> -->
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
                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->

			<!-- ========== Left Sidebar Start ========== -->
           <%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                
                  <div class="container">
                  <br>
                   <div class="card-box table-responsive">
                 <!--   <a href="viewcrp" class="btn btn-success btn-md waves-effect waves-light"
									data-overlaySpeed="200" data-overlayColor="#36404a"> <i
									class="zmdi zmdi-plus"></i> Add New Corporate
								</a>
								 -->
								 <button class="btn btn-default " data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-plus"></i>
							ADD	NEW CORPORATE</button> <br> <br>
      										 <div class="scrollit">
                                             <table id="example" class="grid display nowrap" style="width: 100%">
        									<thead>
	                    					<tr>
											<td><b>ID</b></td>
											<td><b>CORPORATE NAME</b></td>
											<td><b>COMPANY TYPE</b></td>
											<td><b>EMPLOYEE COUNT</b></td>
											<td><b>CITY</b></td>
											<td><b>PIN CODE</b></td>
											<td><b>CONTACT NO.</b></td>
											<td><b>EXECUTIVE</b></td>
	                    					</tr>
	                						</thead>
									        <tfoot>
									         <tr>
											<th>ID</th>
											<th>CORPORATE NAME</th>
											<th>COMPANY TYPE</th>
											<th>EMPLOYEE COUNT</th>
											<th>CITY</th>
											<th>PIN CODE</th>
											<th>CONTACT NO.</th>
											<th>EXECUTIVE</th>
	                    					</tr>
									        </tfoot>
											 <tbody>
                                            <c:forEach items="${allCorporate}" var="corporate" varStatus="counter">
                    	  <tr style="display: table-row;">
                        	<td><c:out value="${counter.index + 1}"/></td>
                        	 <td><a href="viewcorporatebyId?corporateId=<c:out value='${corporate.corporateId}'/>"><c:out value="${corporate.corporateName}"/></a></td>
                        	 <td><c:out value="${corporate.entityType}"/></td>
                        	 <td><c:out value="${corporate.headCount}"/></td>
                        	 <td><c:out value="${corporate.city}"/></td> 
                        	  <td><c:out value="${corporate.pincode}"/></td> 
                        	   <td><c:out value="${corporate.contactNo}"/></td> 
                        	    <td><c:out value="${corporate.executive}"/></td> 
                        	
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
                    </div>
                   </div>
                 </div> <!-- container -->
                </div> <!-- content -->
     
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

             </div>
          
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

 <!--  Modal content for the above example -->
                                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                              <div class="n" id="n">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title text-center" id="myLargeModalLabel">NEW CORPORATE DETAILS FORM</h4>
                                                </div>
                                                <div class="modal-body">
                                                 <!--  -->
                                                 	<div class="custom-modal-text text-left">
									<!-- =============	form:form start from here ==============    -->
									<form:form action="saveCorporate" name="form" onsubmit="return validate()" modelAttribute="corporateDTO" >
									<form:hidden path="typeCorporate" value="new"/>
									<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
									<div class="row">
									<h5 style="color:blue;"><u>CORPORATE DETAILS</u></h5>
									<hr>
									<div class="col-md-12">
											<div class="col-md-4">
												<div class="form-group">
													<label for="Sdate">Channel <span style="color:red;">*</span></label><br>
													<form:select path="channelId" class="form-control"
														id="channele" placeholder="Channel">
														<form:option value="" label="Select channel"></form:option>
														<form:options items="${allChannels}"
															itemValue="channelId" itemLabel="channelsName" />
													</form:select>
													<font id="channellerror" style="color: red;"></font>
												</div>
											</div>
											
											<div class="col-md-8">
											<div class="form-group">
											<form:label path="corporateName" for="name">Name <span style="color:red;">*</span></form:label>
											<form:input type="text"	
												path="corporateName" class="form-control" id="cname" placeholder="Enter corporate name" />
												<font id="fnameerror" style="color: red;"></font>
										       </div>
											</div>
											
								</div>
								
								<div class="col-md-12">
								<div class="col-md-4">
								<div class="form-group">
											<form:label path="totalStrength" for="name">Total Strength <span style="color:red;">*</span></form:label>
											<form:input type="text"	path="totalStrength" class="form-control" id="strengthh"  placeholder="Enter total strength"/>
												<font id="strengthherror" style="color: red;"></font>
										</div>
								</div>
								<div class="col-md-8">
								<div class="form-group">
											<label  for="name">Address <span style="color:red;">*</span></label>
											<form:textarea path="residenceAddresss" id="textarea"
														class="form-control" maxlength="500" rows="1"  />
											<font id="textareaerror" style="color: red;"></font>
										</div>
								</div>
								
								</div>
										
										
										
										<div class="col-md-12">
											<div class="col-md-4">
												<div class="form-group">
													<label  for="priority">City <span style="color:red;">*</span></label>
													<form:input type="text"
														 path="city" class="form-control" onkeypress="return onlyAlphabets(event,this);"
														id="cityy" placeholder=""  />
														<font id="cityyerror" style="color: red;"></font>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label  for="priority">Pincode</label>
													<form:input type="text" minlength="6" maxlength="8" onkeypress="return IsNumeric(event);"
														path="pincode" 	class="form-control" id="priority" placeholder="enter pincode"
														 />
												</div>
											</div>
											
											<div class="col-md-4">
												<div class="form-group">
													<label  for="priority">Corporate Number</label>
													<form:input type="text" onkeypress="return IsNumeric(event);" minlength="10" maxlength="12"
														path="landline" class="form-control"  placeholder="Enter Contact Number"/>
												</div>
											</div>
											
										</div>
										
										
										<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label for="priority">Landmark</label>
													<form:input type="text"	 path="landmark" class="form-control" placeholder="Enter land mark" />
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label  for="priority">Corporate Email</label>
													<form:input type="email" path="email" class="form-control" placeholder="email@mail.com" />
												</div>
											</div>
											
										</div>
										<div class="col-md-12">
										<div class="col-md-6">
												<div class="form-group">
													<label  for="priority">Entity Type <span style="color:red;">*</span></label>
												<form:select path="entityType" title="Select Entity Type" class="form-control" id="typee">
												<form:option value="" label="select Entity Type" />
												<c:forEach var="constant" varStatus="status" items="${welezoConstant}">
												<c:if test="${constant.constType=='corp_entity'}">
												<form:option path="entityType" value="${constant.id}" >${constant.CDisplay}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
										<font id="typeeerror" style="color: red;"></font>
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
									<form:label path="executive">Executive <span style="color:red;">*</span></form:label>
										<form:select path="executive" title="----Select Executive----"	class="form-control" id="exceee">
											<form:option value="" label="select executive" />
											<c:forEach var="employee" varStatus="status" items="${executive}">
										<form:option path="executive" value="${employee.empId}" >${employee.empName}</form:option>
											</c:forEach>
										</form:select>
								<font id="exceeeerror" style="color: red;"></font>
												</div>
											</div>
										</div>
											<hr>
											<h5 style="color:blue;"><U>CORPORATE CONTACT  DETAILS</U></h5>
											<p>(Not mandatory to fill contact details. If there is a contact details Enter here)</p>
											<hr>
											<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label for="priority">  Contact Person Name</label>
												<form:input type="text" path="name" class="form-control"  placeholder="Enter name of the person" />
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
									<form:label path="designation">Designation</form:label>
										<form:input type="text" path="designation" class="form-control" placeholder="" />
												</div>
											</div>
											</div>
											
											<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
									<form:label path="status">Contact Person Email</form:label>
										<form:input type="text" path="status" class="form-control" placeholder="" />
												</div>
											</div>
											 <div class="col-md-6">
											<div class="form-group">
											<form:label path="meetingStatus" for="name"> Contact Person Number</form:label>
										<form:input path="meetingStatus" 	class="form-control"  />
										</div>
								         </div>
										</div>
										<div class="col-md-12">
											
											
											<%--  <div class="col-md-12">
											<div class="form-group">
											<form:label path="remarks" for="name">Remark:</form:label>
										<form:input path="remarks" 	class="form-control"  />
										</div>
								         </div> --%>
										</div>
										
										
									<br/><br>
									 <div class="col-md-offset-5">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
								</div>
						</form:form>
								</div>
							
                                                 <!--  -->
                                                </div>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->

        </div>
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

<!-- 	App js -->
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