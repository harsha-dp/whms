<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

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
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css" />
         <!-- Table -->
   <!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<style>
.notice {
    padding: 15px;
    background-color: #fafafa;
    border-left: 6px solid #7f7f84;
    margin-bottom: 10px;
    -webkit-box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
       -moz-box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
            box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
}
.notice-success {
    border-color: #80D651;
}
.notice-success>strong {
    color: #80D651;
}
.notice-info {
    border-color: #45ABCD;
}
.notice-info>strong {
    color: #45ABCD;
}
.notice-warning {
    border-color: #FEAF20;
}
.notice-warning>strong {
    color: #FEAF20;
}
.notice-danger {
    border-color: #d73814;
}

</style>
<script type="text/javascript">
function validate(from){

	var error = document.getElementById("uploadserror");
	var uploads = form["uploads"].value;

	error.innerHTML="";

	if(uploads == null || uploads == ""){
	error.innerHTML="Please select file";
	return false;
	}

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
                   <img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" />
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
                             <a href="pharamacyDashBoard"> <i class="fa fa-home fa-2x" > </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                               <font face="verdana" class="page-title">PHARMACY DETAILS
                                   </font>
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
                    <br>
                     <div class="panel panel-default">
                     <div class="panel-heading">
                                 	<div class="card-box">
                                 	<div class="row">
                                 	<div class="col-md-12">
                                 <form action="" >		
                        		<div class="panel-heading">
                                 		
       <div class="col-md-6">                          		 
    <div class="notice notice-success">
     <label class="col-md-3 control-label"> Pharmacy Name </label>: <strong>${pharmacyData.pharmacyName}</strong> 
    </div>
    <div class="notice notice-success">
     <label class="col-md-3 control-label">Registration Number </label> : <strong>${pharmacyData.regnNo}</strong> 
    </div>
    
     <div class="notice notice-success">
    <label class="col-md-3 control-label"> Owner Name </label> : <strong>${pharmacyData.primaryContact}</strong>
    </div>
     <div class="notice notice-success">
    <label class="col-md-3 control-label"> CONTACT NUMBERS  </label> : <strong>${pharmacyData.primaryNumber}/${pharmacyData.alternateNumber}</strong> 
    </div>
        <div class="notice notice-success">
    <label class="col-md-3 control-label"> Address  </label> : <strong>${pharmacyData.address}</strong>
    </div>
    <div class="notice notice-success">
    <label class="col-md-3 control-label"> City - Location </label>:  <strong>${pharmacyData.city} - ${pharmacyData.location}</strong>
    </div>
    
     <div class="notice notice-success">
    <label class="col-md-3 control-label"> Welezo Agency Code </label>:  <strong>${pharmacyData.welezoCode}</strong>
    </div>
   
    </div>
        <div class="col-md-6">
    
     <div class="notice notice-info">
    <label class="col-md-3 control-label"> Email  </label>:  <strong>${pharmacyData.email}</strong>
    </div>
    <div class="notice notice-info">
    <label class="col-md-3 control-label"> Empaneled Date </label> : <strong>${pharmacyData.empanelDate}</strong>
    </div>
    <div class="notice notice-info">
   <label class="col-md-3 control-label"> Expiry Date  </label> : <strong>${pharmacyData.expiryDate}</strong> 
    </div>
    <div class="notice notice-info">
   <label class="col-md-3 control-label"> Executive </label> : <strong>${pharmacyData.executive}</strong> 
    </div>
    
    
            </div>
                                 		</div>
                             </form>
                             
                             
                               <div class="col-md-6">
                               <div class="well well-lg">
                              <form method="post" action="pharmacyMOUFileUpload" name="form" onsubmit="return validate()" enctype="multipart/form-data">
                               <input type="hidden" name="pharmacyId" value="${pharmacyData.pharmacyId}">
                               <input type="hidden" name="pharmacyName" value="${pharmacyData.pharmacyName}"> 
                     
            <table>
            <p><font color="blue"><u>UPLOAD MOU SCAN COPY HERE </u><i class="fa fa-arrow-down" aria-hidden="true"></i></font></p>
                 	
                 <tr>
                    <td><b>  Select file </b> <span style="color:red"> * </span></td>
                    <td><input type="file" name="file" id="uploads"/>
                    <font id="uploadserror" style="color:red"></font>
                    </td>
                </tr>
                
                
                <tr class="separator">
             <td><h6></h6></td>
             </tr>
                <tr>
               <td colspan="2" align="center"><button type="submit" value="Upload" class="btn btn-primary" onclick="return validate()">
                    <i class="fa fa-upload" aria-hidden="true"></i> Upload
                </button></td>
                </tr>
            </table>
            </form>
                                 <div>
                                   <h6><b>DOWNLOAD APPLICATION DOCUMENT LIST :</b></h6>
                                                     <c:forEach items="${documentList}" var="doc">
                                                       <c:set var = "docName" value = "${fn:substringAfter(doc.docName,'_')}" />
						    <c:set var = "docName1" value = "${fn:substringAfter(docName,'_')}" />
                                                      <h6><a href="download?fileName=<c:out value='${doc.path}'/>">${docName1}</a></h6>
                                                      </c:forEach>
                                </div>
            </div>
                             </div>
                                 		</div>
                                 		</div>
                                 		
                        		 <div align="center">
										 <button class="btn btn-info btn-md waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-edit"></i> EDIT</button>
                                      </div>
                                      
                                 		</div>
                        		</div>
	                           </div>
                        	</div><!-- end col -->
                        	<!--  -->
                        	  <!--  Modal content for the above example -->
                                    </div><!-- /.modal -->
                                             <!-- calls uploaded from data box  -->
                                             
                                             
                                              <!--  Modal content for the above example -->
                                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                            <div class="n" id="n">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title title-text text-center" id="myLargeModalLabel">EDIT PHARMACY REGISTRATION FORM</h4>
                                                </div>
                                                <div class="modal-body">
                                                <form action="updatePharamacy" method="post">
                                                <input type="hidden" name="createdBy" value="${USERID}">
                                                <input type="hidden" name="pharmacyId" value="${pharmacyData.pharmacyId}">
                                                <div class="row">
                                                 <div class="col-sm-12">
                                                  <div class="form-group col-md-6">
                                                  <div class="p-20">	
                                                <label>Pharmacy Name :</label>
                                                <input type="text" name="pharmacyName" value="${pharmacyData.pharmacyName}" class="form-control">
                                                
                                                <label>Registration Number :</label>
                                                <input type="text" name="regnNo" value="${pharmacyData.regnNo}" class="form-control">
                                                
                                                
                                                <label>Welezo Agency Code :</label>
                                                <input type="text" name="welezoCode" value="${pharmacyData.welezoCode}" class="form-control" placeholder="(WH/BLR/PH/99999) ">
                                                
                                                <label>Owner Name :</label>
                                                <input type="text" name="primaryContact" value="${pharmacyData.primaryContact}" class="form-control">
                                                <label>Landline/Alternative Number :</label>
                                                <input type="text" name=alternateNumber value="${pharmacyData.alternateNumber}" class="form-control">

                                                <label>Address :</label>
                                                  <input name="address" value="${pharmacyData.address}" class="form-control"  id="comment" >
                                                
                                                </div>
                                                  </div>
                                                  
                                                  <div class="form-group col-md-6">
                                                  <div class="p-20">

                                                <label>Location :</label>
                                                <input type="text" name="location" value="${pharmacyData.location}" class="form-control">
                                                
                                                
                                                <label>City:</label>
                                                <input type="text" name="city" value="${pharmacyData.city}" class="form-control">
                                                
                                                <label>Phone :</label>
                                                <input type="text" name="primaryNumber" value="${pharmacyData.primaryNumber}" class="form-control">
                                               
                                                <label>Email Address :</label>
                                                <input type="text" name="email" value="${pharmacyData.email}" class="form-control">
                                                
                                                <label>Empanel Date :</label>
                                                <input type="text" name="empanelDate" value="${pharmacyData.empanelDate}" class="form-control" id="datepicker-autoclose" placeholder="DD/MM/YYYY">
                                                
                                                <label>Expiry Date :</label>
                                                <input type="text" name="expiryDate" value="${pharmacyData.expiryDate}" class="form-control" id="datepicker-autoclose1" placeholder="DD/MM/YYYY">
												
												  <label>Executive :</label>
                                               <select name="executive" title="----Select Executive----"	class="form-control" >
											<option value="${pharmacyData.executiveId}" >${pharmacyData.executive}</option>
											<c:forEach var="employee" varStatus="status" items="${executive}">
											
										<option value="${employee.empId}" >${employee.empName}</option>
											</c:forEach>
										</select>
    
                                                  </div>
                                                  </div>
                                                           <div class="col-md-offset-5">
												<button type="submit" 
													class="btn btn-primary waves-effect waves-light"
													value="submit">SUMBIT</button>
												
											    <button type="button" class="btn btn-success waves-effect waves-light m-l-10" data-dismiss="modal">Close</button>
											</div>
											
                                                  </div>
                                                  </div>
                                                  </form>
                                                 </div> 
                                                 </div>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                                 
	</div>
                        	
        
			
			         	
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
<!-- <script>
    $(function () {
      $('#example').excelTableFilter();
    });
  </script> -->
 
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
        <script src="resources/pages/datatables.init.js"></script>

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
            jQuery('#datepickerautoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });

            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });

            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose2').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });


            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose3').datepicker({
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