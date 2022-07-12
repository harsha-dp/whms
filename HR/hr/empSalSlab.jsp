<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
      
       <!-- App Favicon -->
       <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo</title>
        <!-- DataTables -->
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
        <!-- Modal -->
        <link href="resources/HR/plugins/custombox/dist/custombox.min.css" rel="stylesheet">

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
        <script src="resources/HR/js/modernizr.min.js"></script>
        
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
    <body>

			<!-- Start menu -->
           <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->
        <div class="wrapper">
            <div class="container">
                    <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
							<div class="form-group">
			<form action="salrSlab1"  name="form"
							onsubmit="return validate()" >
		 <div class="row">		
		<div class="col-md-12">							
       <div class="col-lg-3 col-sm-6 co-xs-6">
        <label for="ex3">Select Sal Month :</label>
          <select class="form-control" name="months" title="Select" id="period">
                                         <option value="" label="Select Salary Pay Month" />
                                         <c:forEach items="${monthsList}" var="months" >
											<option  value="${months.payforMonth}" >${months.months}</option>
											</c:forEach>
                                       </select>
                                       <font id="perioderror" style="color: red"></font>
      </div>
      <div class="col-lg-1 col-sm-6 co-xs-6" style="bottom : 5px">
      <p>&nbsp;</p>
                          <button type="submit" onclick="return validate()" class="btn btn-primary waves-effect waves-light"> <i class="fa fa-search" aria-hidden="true"></i> Search</button>
        
      </div>
      </div>
      </div>
									</form>
									</div>
     <div id="myDIV">
								<div class="panel-body">
	                    <div class="row">
                            <div class="col-sm-12">
                              <form action="salComp">
                                     <div class="scrollit">
  <table id="example" class="grid display nowrap" style="width: 100%" border="1">
                                        <thead>
                                            <tr align="center">
                                            <td><b>id</b></td>
                                               <td><b>Employee Name</b></td>
                                                <td><b>Pay for month</b></td>
                                                <td><b>Basic Per</b></td>
                                                <td><b>Gross</b></td>
                                                <td><b>Net Salary</b></td>
                                                <td><b>Paid Days </b></td>
                                               <td><b>Late Days</b></td>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                           <th>id</th>
                                    	<th>Employee Name</th>
                                        <th>Pay for month</th>
                                        <th>Basic Per</th>
                                        <th>Gross</th>
                                        <th>Net Salary</th>
                                        <th>Paid Days</th>
                                        <th>Late Days</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                               
                      
                                         <c:forEach items="${empSalslab}" var="salary" varStatus="counter">
                        <tr align="center">
                            <td><input type="hidden" name="salSlabId" value="${salary.id}"/><c:out value="${counter.index + 1}" /></td>
                        	<td><a href="viewEmployeeById?empId=<c:out value='${salary.empId}'/>"><c:out value="${salary.empName}"/></a></td>
                        	<td><c:out value="${salary.payforMonth}"/></td>
                        	<td><c:out value="${salary.basicPerc}"/></td> 
                        	<td><c:out value="${salary.hraPerc}"/></td>
                        	<td><c:out value="${salary.gross}"/></td>
                        	<td><input type="text" name="paidDays" value="${salary.paidDays}"/></td>
                        	<td><input type="text" name="lateDays" value="${salary.lateDays}" ></td>
                        </tr>
                    </c:forEach>
                        	
                                </tbody>
                            </table>
                        </div>
                         <div align="center">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
											</div>
											</form>
                    </div><!-- end col -->
                </div>
                </div>
                </div>
                </div>
                </div>
                </div>
                </div>
                
                <!-- end row -->
               
                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
      <!-- jQuery  -->
          <script>
            var resizefunc = [];
        </script>
<script>
    $(function () {
      $('#example').excelTableFilter();
    });
  </script>
		<!-- jQuery  -->
	<!-- <script src="resources/HR/js/jquery.min.js"></script> -->
	<script src="resources/HR/js/bootstrap.min.js"></script>
	<script src="resources/HR/js/detect.js"></script>
	<script src="resources/HR/js/fastclick.js"></script>

	<script src="resources/HR/js/jquery.slimscroll.js"></script>
	<script src="resources/HR/js/jquery.blockUI.js"></script>
	<script src="resources/HR/js/waves.js"></script>
	<script src="resources/HR/js/wow.min.js"></script>
	<script src="resources/HR/js/jquery.nicescroll.js"></script>
	<script src="resources/HR/js/jquery.scrollTo.min.js"></script>

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
        <script src="resources/HR/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/HR/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="resources/HR/pages/datatables.init.js"></script>

       
	<script src="resources/HR/plugins/jquery-knob/jquery.knob.js"></script>

	<!--Morris Chart-->
	<script src="resources/HR/plugins/morris/morris.min.js"></script>
	<script src="resources/HR/plugins/raphael/raphael-min.js"></script>

	<!-- Dashboard init -->
	<script src="resources/HR/pages/jquery.dashboard.js"></script>

	<!-- App js -->
	<script src="resources/HR/js/jquery.core.js"></script>
	<script src="resources/HR/js/jquery.app.js"></script>
	 <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: "resources/HR/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
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
                minuteStep : 15
            });

            //colorpicker start

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
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
            	format: "dd/mm/yyyy",
            	autoclose : true,
            	toggleActive:true,
            	todayHighlight: true,
            });
            
            jQuery("#target").datepicker();
    		jQuery('.fa-calendar-o').click(function() {
    			jQuery("#target").focus();
          	  });
    		
    		jQuery("#daterange").datepicker();
    		jQuery('.fa-calendar').click(function() {
    			jQuery("#daterange").focus();
          	  });


            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'MM/DD/YYYY h:mm A',
                timePickerIncrement: 30,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'MM/DD/YYYY',
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
                format: 'MM/DD/YYYY',
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