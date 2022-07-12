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


<!-- Plugins css-->
        <link href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/HR/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />

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

</head>

<script type="text/javascript">
function validate(from)
{
    var error= document.getElementById("openingserror");
    var openings=form["openings"].value;
     error.innerHTML="";

     if(openings==null || openings=="")
         {
            error.innerHTML="Enter number of openings";
            return false;
         }
     if(openings.length>6)
     {
         error.innerHTML="Maximum 6 integer";
         return false;
         }


     var error=document.getElementById("selecterror");
     var select=form["select"].value;
     error.innerHTML="";
     if(select==null || select=="")
     {
        error.innerHTML="Select Dept & Designatrion";
        return false;
     }


      var error=document.getElementById("opendateerror");
     var opendate=form["opendate"].value;
     error.innerHTML="";
     if(opendate==null || opendate=="")
     {
        error.innerHTML="Select open date";
        return false;
     } 

     var error=document.getElementById("targetdateerror");
     var target=form["target"].value;
     error.innerHTML="";
     if(target== null || target=="")
     {
        error.innerHTML="Select targerdate";
        return false;
     }

     var error=document.getElementById("fillederror");
 	 var filled=form["filled"].value;

     error.innerHTML="";
  
     if( filled==null || filled==""){
         error.innerHTML="This fiels cannot be empty!";
         return false;
     }

     else if(isNaN(filled)){
         error.innerHTML="Enter numbers only";
         return false;
     }

     if(filled.length<1){
         error.innerHTML="Enter Number of filled openings "
         return false;
     } 
     if(filled.length>6){
         error.innerHTML="Maximum 6 integers "
         return false;
     }/*end */

}/*end script  */




</script>

<body>
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">
              
			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<div class="btn-group pull-right m-t-15"></div>
					<div align="center">
						<!-- <h3 class="page-title"; style="color:white">Raise Leave Request</h3> -->
					</div>
				</div>
			</div>
      
			<div class="row">
				<!-- Right Sidebar -->
				<div class="col-lg-12">
					<div class="row">
						<!--Custom Toolbar-->
								<div class="col-md-9">
								<div class="card-box card-outline-danger" style="height:550px" >
								
								 <table id="datatable-buttons" class="table table-striped table-bordered">
								 <h4 align="left"><u><b>JOB OPENINGS</b></u></h4>
                                <thead>
                                    <tr>
                                    	<th>Id </th>
                                    	<th>Dept & Designation</th>
                                        <th>No_position</th>
                                        <th>Open Date</th>
                                        <th>Target Date </th>
                                        <th>Filled Position</th>
                                         <th>Action</th>
                                    </tr>
                                </thead>
 
                                <tbody>
                                    <c:forEach items="${allJobOpenings}" var="jobList">
                        <tr>
                            <td><c:out value="${jobList.jobOpenId}" /></td>
                        	<td class="account-name5 sort-value"><c:out value="${jobList.Department}"/></td>
                        	<td class="account-name1 sort-value"><c:out value="${jobList.noPosition}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${jobList.openDate}"/></td>
                        	<td class="account-name3 sort-value"><c:out value="${jobList.targetDate}"/></td> 
                        	<td class="account-name4 sort-value"><c:out value="${jobList.filledPosition}"/></td>
                        		<td><a href="editJobOpenings?jobOpenId=<c:out value='${jobList.jobOpenId}'/>">Edit</a></td>
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
								</div>
								</div>
							
								<div class="col-md-3">
								<div class="card-box card-outline-danger" >
								<h4 align="left" style="mergin:10; color: black;" ><u><b>ADD JOB OPENINGS</b></u></h4>
								
								<hr>
													 <form:form action="saveJobOpenings" name="form" onsubmit="return validate()" modelAttribute="jobOpenTO">
													 <form:hidden path="jobOpenId" value="${jobOpeninsById.jobOpenId}"/>
								                <div class="col-sm-12">
								                <div class="col-md-12">
								                    <div class="form-group row">
													  <label for="example-email-input" class="col-2 col-form-label">No of openings  <span style="color:red">*</span></label>
													  <div class="col-10">
													    <form:input  type="number" path="noPosition" value="${jobOpeninsById.noPosition}" id="openings" class="form-control" />
													      <font id="openingserror" style="color:red"></font>
													  </div>
													</div>
													</div>
													<div class="form-group">
													<label for="assign">Department & Designation  <span style="color:red">*</span></label>
													<div class="input-group">
														<form:select class="form-control" path="roleId" title="Select" id="select">
                                         <form:option value="${jobOpeninsById.roleId}" label="${jobOpeninsById.Department}" />
                                       </form:select>
                                        <font id="selecterror" style="color:red"></font>
													</div>
													 </div>
													<div class="form-group">
													 <div class="input-daterange input-group" id="date-range">
													<label for="assign">Open Date <span style="color:red">*</span></label>
													<div class="input-group">
														<form:input type="text" path="openDate" value="${jobOpeninsById.openDate}" class="form-control" 
															placeholder="dd/mm/yyyy"  id="opendate"  /> <span
															class="input-group-addon bg-primary b-0 text-white"><i
															class="fa fa-calendar"></i></span>
													</div>
															 <font id="opendateerror" style="color:red"></font>
												  <br/>
													<div class="form-group">
													<label for="assign">Target Date <span style="color:red">*</span></label>
													<div class="input-group">
														<form:input type="text" path="targetDate" value="${jobOpeninsById.targetDate}" class="form-control" 
															placeholder="dd/mm/yyyy" id="target" /> <span
															class="input-group-addon bg-primary b-0 text-white"><i
															class="fa fa-calendar-o"></i></span>
													</div>
															 <font id="targetdateerror" style="color:red"></font>
													 </div>
												   </div>
												   <div class="input-group">
													  <label for="assign" >No of Position filled <span style="color:red">*</span></label>
													<div class="input-group">
													    <form:input  type="text" path="filledPosition" value="${jobOpeninsById.filledPosition}" class="form-control" id="filled" />
													    <font id="fillederror" style="color:red"></font>
													  </div>
													</div>
												   </div>
													</div>

								<div align="center">
									<button type="submit" onclick="return validate()"
										class="btn btn-primary waves-effect waves-light">Submit</button>
								</div>
								</form:form>
								</div>
								</div>
					
					<!-- End row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->



			<!-- Footer -->
			 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
			<!-- End Footer -->

		</div>
		<!-- end container -->
	</div>
</div>

	<script>
		var resizefunc = [];
	</script>
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
        
        
        <!-- Plugins Js -->
        <script src="resources/HR/plugins/switchery/switchery.min.js"></script>
        <script src="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/HR/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/moment/moment.js"></script>
     	<script src="resources/HR/plugins/timepicker/bootstrap-timepicker.min.js"></script>
     	<script src="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/HR/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
        
       
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
            jQuery('#datepicker-autoclose').datepicker({
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
            	toggleActive:true
            });
            
            jQuery("#target").datepicker();
    		jQuery('.fa-calendar-o').click(function() {
    			jQuery("#target").focus();
          	  });
    		
    		jQuery("#opendate").datepicker();
    		jQuery('.fa-calendar').click(function() {
    			jQuery("#opendate").focus();
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