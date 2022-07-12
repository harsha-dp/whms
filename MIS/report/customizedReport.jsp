<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<meta name="description" content="Miminium Admin Template v.1">
	<meta name="author" content="Isna Nur Azis">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>WELEZO</title>
 
    <!-- start: Css -->
    <link rel="shortcut icon" href="resources/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/bootstrap.min.css">

      <!-- plugins -->
      
      <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/font-awesome.min.css"/>
      <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/simple-line-icons.css"/>
      <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/animate.min.css"/>
      <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/fullcalendar.min.css"/>
	  <link href="resources/reportMIS/asset/css/style.css" rel="stylesheet">
	   <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
	<!-- end: Css -->
 
        <!-- DataTables -->
        <link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
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
         
           <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	         
      
         
          <script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>
           
         <!--  <link href="resources/excel/Filter.css" rel="stylesheet" type="text/css"/> -->
          <script src="resources/excel/headerOptions.js"></script>
          <link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>
          
					<style>
tfoot {
    display: table-header-group;
}
#myDIV {
	border: 1px solid lightblue;
	width: 100%;
	height: 535px;
}
#myDIV1 {
	border: 1px solid lightblue;
	width: 100%;
	height: 481px;
}
</style>
<style>
.scrollit {
    overflow:scroll;
    height:460px;
}
</style>
<style>
.table, td, th,tr {
	border: 1px solid black;
}
td {
    padding: 10px !important;
    border: 1px solid #97a0a7 !important;
    }
th {
    background-color: #eaeaea/* #4CAF50 */;
    color: black;
}
.bg-default {
    background-color: #eaeaea!important;
}

.text-white {
    color: #191717 !important;
}
</style>
<style>
.table, td, th,tr {
	border: 1px solid black;
}
td {
    padding: 10px !important;
    border: 1px solid #97a0a7 !important;
    }
th {
    background-color: #eaeaea/* #4CAF50 */;
    color: black;
}
table.dataTable tfoot th, table.dataTable tfoot td {
    padding: 10px 18px 6px 18px;
    border-top: 1px solid #111111;
    display: none;
}


</style>
  </head>

 <body id="mimin" class="dashboard">
      <!-- start: Header -->
   <%@ include file="header.jsp" %>
 
      <!--end: Header -->
      
      <div class="container-fluid mimin-wrapper">
  <%@ include file="sliderMenu.jsp" %>
  
          <!-- start: Content -->
          <div id="content">
            <div class="col-md-12 top-20 padding-0">
              <div class="col-md-12">
         
                <div class="panel">
                <div id="myDIV">
                  <div class="panel panel-default">
                     <div class="panel-heading">
               <div class="row">
                  <div class="col-md-12 padding-2" style="padding-bottom:20px;">
                  <h4><u>${reportQueryByTitle.reportTitle}</u></h4>
                   <!--  <div class="col-md-12"> -->
                        <form action="misCustomReport" method="post">
                        <input type="hidden" name="reportId" value="${reportQueryByTitle.reportId}"> 
                        <div class="form-group">
			                                	     <div class="col-sm-11 col-md-11 col-lg-11" >
                                                        <div class="input-daterange input-group" >
														<span class="input-group-addon bg-default b-0 text-white">Date From</span>
														<input type="text" name="fromDate" value="${fromDate}"  id="datepicker-autoclose" class="form-control input-sm" placeholder="DD/MM/YYYY" /> 
														<span class="input-group-addon bg-default b-0 text-white">To</span>
														<input type="text" name="toDate" value="${toDate}" class="form-control input-sm" id="datepicker-autoclose1" placeholder="DD/MM/YYYY"  /> 
														<span class="input-group-addon bg-default b-0 text-white">Rows
															</span> 
															
															<c:set var="option" value="${reportQueryByTitle.x_axis}"/>
															<c:set var="splitvalues" value="${fn:split(option, ',')}" />
															<select array="splitvalues" name="x_axis"  id="assign" class="form-control input-sm">
																<option  value="${x_axis}">${x_axis}</option>
																<c:forEach items="${splitvalues}" varStatus="i" var="answer" >
           														<option value="${answer}"><c:out value="${splitvalues[i.index]}"/></option>
       														</c:forEach>
																</select>
																<span class="input-group-addon bg-default b-0 text-white">Columns </span>
																<c:set var="option" value="${reportQueryByTitle.y_axis}"/>
																<c:set var="y_axiss" value="${fn:split(option, ',')}" />
																<select name="y_axis"  title="----Select Y- Axis-"	id="assign" class="form-control input-sm">
																<option value="${y_axis}" >${y_axis}</option>
																<c:forEach items="${y_axiss}" varStatus="i" var="answer1" >
           														<option value="${answer1}"><c:out value="${y_axiss[i.index]}"/></option>
       														</c:forEach>
																</select>
																<%-- <span class="input-group-addon bg-default b-0 text-white">Value </span>
																<select name="value" title="----Select Value-"	id="assign" class="form-control input-sm">
																<option value="${value}" >${value}</option>
																<option value="Revenue" >Revenue</option>
																<option value="count" >Count Of sales</option>
																<option value="TicketSize" >Ticket Size</option>
																</select> --%>
													    </div>
													</div>
													
													<div class="col-sm-1 col-md-1 col-lg-1">
															<button type="submit" class="btn btn-default btn-rounded btn-sm waves-effect waves-light" value="Go"><i class="fa fa-search" aria-hidden="true">GO</i></button>
			                                	   </div>
													
                    </div>
			                                	   </form>
                 </div>
               <!--  </div> -->
             </div>
         </div>
                
                      <div id="myDIV1">
								<div class="panel-body">
	                    <div class="row">
                            <div class="col-sm-12">
                                     <div class="scrollit">
                  <div class="responsive-table">
                    <table id="example" class="table table-striped table-bordered table-hover table-condensed" width="auto" border="1" align="left">
                    
                   <thead>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <td> <b>${name.columnName}</b></td>
									</c:forEach>
                                   </tr>
                                        </thead>
                                        
                                          <tfoot>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <th> <b>${name.columnName}</b></th>
									</c:forEach>
                                   </tr>
                                        </tfoot>
                                        <tbody>
                          <c:forEach var="row" items="${stkList}"> 
                                <tr>
                                   <c:if test="${columnName.size() >= 1}"><td>  ${row.attr1}</td></c:if>
                                   <c:if test="${columnName.size() >= 2}"><td>${row.attr2}</td></c:if>
                                   <c:if test="${columnName.size() >= 3}"><td>${row.attr3}</td></c:if>
                                   <c:if test="${columnName.size() >= 4}"><td>${row.attr4}</td></c:if>
                                   <c:if test="${columnName.size() >= 5}"><td>${row.attr5}</td></c:if>
                                    <c:if test="${columnName.size() >= 6}"><td>${row.attr6}</td></c:if>
                                    <c:if test="${columnName.size() >= 7}"><td>${row.attr7}</td></c:if>
                                     <c:if test="${columnName.size() >= 8}"><td>${row.attr8}</td></c:if>
                                   <c:if test="${columnName.size() >= 9}"><td>${row.attr9}</td></c:if>
                                    <c:if test="${columnName.size() >= 10}"><td>${row.attr10}</td></c:if>
                                     <c:if test="${columnName.size() >= 11}"><td>${row.attr11}</td></c:if>
                                     <c:if test="${columnName.size() >= 12}"><td>${row.attr12}</td></c:if>
                                      <c:if test="${columnName.size() >= 13}"><td>${row.attr13}</td></c:if>
                                       <c:if test="${columnName.size() >= 14}"><td>${row.attr14}</td></c:if>
                                         <c:if test="${columnName.size() >= 15}"><td>${row.attr15}</td></c:if>
                                          <c:if test="${columnName.size() >= 16}"><td>${row.attr16}</td></c:if>
                                          <c:if test="${columnName.size() >= 17}"><td>${row.attr17}</td></c:if>
                                          <c:if test="${columnName.size() >= 18}"><td>${row.attr18}</td></c:if>
                                          <c:if test="${columnName.size() >= 19}"><td>${row.attr19}</td></c:if>
                                          <c:if test="${columnName.size() >= 20}"><td>${row.attr20}</td></c:if>
           						 </tr></c:forEach>
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
                  
                </div>
              <!--   </div> -->
              </div>
            </div>  
          </div>
          </div>
          <!-- end: content -->


    <!-- start: Javascript -->
 <!--    <script src="resources/reportMIS/asset/js/jquery.min.js"></script> -->
    <script src="resources/reportMIS/asset/js/jquery.ui.min.js"></script>
    <script src="resources/reportMIS/asset/js/bootstrap.min.js"></script>
   
    
    <!-- plugins -->    
    <script src="resources/reportMIS/asset/js/plugins/moment.min.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/fullcalendar.min.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/jquery.nicescroll.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/jquery.vmap.min.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/maps/jquery.vmap.world.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/jquery.vmap.sampledata.js"></script>
    <script src="resources/reportMIS/asset/js/plugins/chart.min.js"></script>

    <!-- custom -->
     <script src="resources/reportMIS/asset/js/main.js"></script>
   
  <!-- end: Javascript -->
  	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>

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
            jQuery('#datepicker-autoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker').datepicker();
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