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
        <title>Welezo</title>
      
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
			 <link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>
			<!--  <script src="resources/validation/customerCallRecords/viewcalls.js"></script> -->
			 	
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
                             <a href="customercare"> <i class="fa fa-home fa-2x" > </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm"	>
                                <font class="page-title">WELEZO VISITOR BOOK</font>
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

<!-- ========== Left Sidebar Start ========== -->
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->
           
           <div class="content-page">
			<!-- Start content -->
			<div class="content">

                    <div class="container">
                   
                   	<div id="myDIV">
                     <div class="panel panel-default">
                     <div class="panel-heading">
                                 	<div class="row">
                                 	<div class="col-sm-12">
                                   <form action="viewVistorBook" class="form-inline" >			
                        		<div class="panel-heading">
                        		
 <div class="form-group">
 <label class="" for="email">From:</label>
<input type="text" name="fromDate" value="${fromDate}" id="datepicker-autoclose" class="form-control input-sm"  />
</div>
        
        
     <div class="form-group">
	 <label class="" for="email">To:</label>                
    <input type="text" name="toDate" value="${toDate}" id="datepicker-autoclose1" class="form-control input-sm"  />                     		
    </div> 
    
    <div class="form-group">
	 <label class="" for="email">Purpose:</label>                
   <select name="purpose" class="form-control input-sm" >
													<option value="${purpose}" label="${purpose}"></option>
                                            		<option value="Casual Visit">Casual Visit </option> 
                                           			<option value="Enquiry">Enquiry</option>
                                            		<option value="Interview">Interview </option> 
                                            		<option value="Official ">Official </option> 
                                            		<option value="Prospect">Prospect </option> 
                                            		<option value="Service">Service </option>                                 		
                                                   </select>                     		
    </div> 
    
    <div class="form-group">
	 <button type="submit"
														class="btn btn-default btn-rounded btn-sm " value="Go">
														<i class="fa fa-search" aria-hidden="true"></i> Search
													</button>                   		
    </div> 
    
    <div class="col-sm-3">
	 <a href="#custom-modal" class="input-group-addon bg-success b-0 text-white"
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> ADD VISITOR DETAILS
                                        </a>                  		
                                 		
                                 		</div>
                                 		</div>
                                 </form>
                                 		</div>
                                 		</div>
                        		</div>
                        		
                        		<div id="myDIV">
								<div class="panel-body">
	                    <div class="row">
                            <div class="col-sm-12">
                                     <div class="scrollit">
 <table id="example" class="grid display nowrap" style="width: 100%">
                                        <thead>
	                    					<tr>
											<td><b>SL NO</b></td>
                                                <td><b>VISITOR NAME</b></td>
                                                <!-- <td><b>EXT NO</b></td> -->
                                                <td><b>CONTACT NUMBER</b></td>
                                              <!--   <td><b>SOURCE</b></td> -->
                                                <td><b>PURPOSE</b></td>
                                                <td><b>VISIT DATE</b></td>
                                                 <td><b>IN TIME</b></td>
                                                  <td><b>OUT TIME</b></td>
                                                 <td><b>UPDATED BY</b></td>
                                                 <td><b>Remarks</b></td>
	                    					</tr>
	                						</thead>
														<tfoot>
	                    					<tr>
											 <th><b>SL NO</b></th>
                                                <th><b>VISITOR NAME</b></th>
                                                <th><b>CONTACT NUMBER</b></th>
                                                <th><b>PURPOSE</b></th>
                                                <th><b>Visit Date</b></th>
                                                <th>In Time</th>
                                                  <th>Out Time</th>
                                                <th><b>Updated By</b></th>
                                                <th><b>Remarks</b></th>
	                    					</tr>
	                    					</tfoot>
														 <tbody>
                                            <c:forEach items="${visitorList}" var="list" varStatus="counter">
                        <tr>
							<td><c:out value="${counter.index+1}"/></td>
                        	<td><c:out value="${list.callerName}"/></td>
                        	<td><c:out value="${list.incomingNumber}"/></td>
                        	<td><c:out value="${list.purpose}"/></td> 
                        	<td><c:out value="${list.visitDate}"/></td>
                        	 <td><c:out value="${list.inTime}"/></td>
                        	  <td>
                        	  <c:if test="${list.outTime == ''}"><form action="updateVisitorTime">
                        	  <input type="hidden" name="callId" value="${list.callId}"> 
                        	  <input type="text" name="outTime" />
                        	  <input type="submit"></form></c:if>
                        	 <c:if test="${list.outTime ne null}">  <c:out value="${list.outTime}"/></c:if></td> 
                        
                      	  <td><c:out value="${list.updatedBy}"/></td> 
                         <td><c:out value="${list.remarks}"/></td> 
                        </tr>
                    </c:forEach>
                     </tbody>
                                    </table>
                                    </div>
                                  </div>  

	                           </div>
	                           </div>
	                           </div>
	                           </div>
	                           
	                           </div>
	                           </div>
	                            <!-- Modal -->
			<div id="custom-modal" class="modal-demo">
			    <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button>
			    <h4 class="custom-modal-title text-center">ADD CALL LIST</h4>
				
				
				<form action="saveVisitorData" name="form" onsubmit="return validate()"  >
			    <div class="custom-modal-text text-left">
				<input type="hidden" name="createdBy" value="<%=id %>" class="form-control"  />
				<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
							
                                   <div class="col-sm-12">
                                   <div class="col-sm-12">
													<h5>Visitor Name <span style="color:red;">*</span></h5>
													<input type="text" name="visitorName" class="form-control" id="firstName" />
												    <font id="firstNameError" style="color: red;"></font> 
												</div>
												</div>
                                    
												<div class="col-sm-12">
												 <div class="col-sm-12">
													<h5>Visitor Number <span style="color:red;">*</span></h5>
													<input type="text"  name="visitorNumber" id="contactnumber" class="form-control" />
													<font id="contactError" style="color: red;"></font>
												</div>
												</div>

												<div class="col-sm-12">
												<div class="col-sm-6">
													<div class="m-t-20">
													<h5>Select Source </h5>
													<select name="source" class="form-control" >
                                            		<option value="Visitor">Visitor</option>  
                                           			<%-- <form:option value="Incoming Call">Incoming Call</form:option>
                                            		<form:option value="Outgoing Call">Outgoing Call</form:option> --%>
                                                   	</select>
                                                 <!--   	<font id="firstNameError2" style="color: red;"></font>  -->
												</div>
												</div>
												
												<div class="col-sm-6">
												<div class="m-t-20">
													<h5>Purpose <span style="color:red;">*</span></h5>
													<select name="purpose" class="form-control" >
													<option value="" label="Select Purpose"></option>
                                            		<option value="Casual Visit">Casual Visit </option> 
                                           			<option value="Enquiry">Enquiry</option>
                                            		<option value="Interview">Interview </option> 
                                            		<option value="Official ">Official </option> 
                                            		<option value="Prospect">Prospect </option> 
                                            		<option value="Service">Service </option>                                 		
                                                   </select>
												 <!--   <span id="firstNameError3" style="color: red;"></span>  -->
												</div>
												</div>
												</div>
												
												<div class="col-sm-12">
												<div class="col-sm-6">
													<div class="m-t-20">
													<h5>Visit Date </h5>
													<input name="visitDate" class="form-control"  id="datepickerautoclose2">
												</div>
												</div>
												
												<div class="col-sm-6">
												<div class="m-t-20">
													<h5>In Time(HH:MM) <span style="color:red;">*</span></h5>
													<input name="inTime" class="form-control" ">
												</div>
												</div>
												<div class="col-sm-6">
												<div class="m-t-20">
													<h5>Out Time(HH:MM) <span style="color:red;">*</span></h5>
													<input name="outTime" class="form-control" >
												</div>
												</div>
												</div>
												
												<div class="col-sm-12">
												 <div class="col-sm-12">
													<h5>Remarks </h5>
													<textarea  name="remarks" class="form-control"  ></textarea>
												    <font id="Remarkserror" style="color: red;"></font> 
												</div>
												</div>
											
										
										
										<p>&nbsp;</p>
	             								<div class="col-md-offset-4">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
											
											</div>
										</div><!-- end col -->
	           							
									</div><!-- end row -->
								</div>
			</form>
	                      </div>     
	                           
	                           
                        	</div><!-- end col -->
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
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
    
    <script>
    function validate(from)
    {
	 
    /*start */ var error=document.getElementById("firstNameError");
	var firstName=form["firstName"].value;

    error.innerHTML="";
 
    if( firstName==null || firstName==""){
        error.innerHTML="Enter He / she FirstName";
        return false;
    }

    else if(!isNaN(firstName)){
        error.innerHTML="Name Can Not be a number";
        return false;
    }

    if(firstName.length<3){
        error.innerHTML="Name should be minimum 3 character";
        return false;
    } 
    if(firstName.length>25){
        error.innerHTML="Name should be in between 3 to 25 character";
        return false;
    }/*end */

    
  /*Start */ var error=document.getElementById("contactError");
   	var contactnumber=form["contactnumber"].value;

       error.innerHTML="";
    
       if( contactnumber==null || contactnumber==""){
           error.innerHTML="Enter Contact Number";
           return false;
       }

       else if(isNaN(contactnumber)){
           error.innerHTML="Mobile Number Can Not be alphabate";
           return false;
       }

       if(contactnumber.length<10){
           error.innerHTML="Contact has to be minmum 10 digits"
           return false;
       } 
       if(contactnumber.length>11){
           error.innerHTML="Invalid mobile number you entered more than 11 digits"
           return false;
       }/*end */
       
       if(/^[0-9 ,+]*$/.test(contactnumber) == false){
       	  error.innerHTML="Invalid mobile number ";
                 return false;
       }



   	
      
       var error = document.getElementById("firstNameError3");
       var purposes=form["purposes"].value;
       error.innerHTML="";
       
     
       if(purposes=null ||purposes=="" ) //for text use if(strUser1=="Select")
       {
        error.innerHTML="Please Select Purpose ";
       return false;
       }

     
  
    }/*end main line*/
        
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

        <!-- Datatable init js -->
        <script src"resources/pages/datatables.init.js"></script>

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
            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepicker-autoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker-autoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "yyyy-mm-dd",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
            	format: "dd/mm/yyyy",
                toggleActive: true,
                autoclose:true,
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'dd/mm/yy h:mm A',
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