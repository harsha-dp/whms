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
          
        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet">
        
        
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
 <style>
tr.solid {border-style: solid;}
.card-box {
    padding: 43px;
    }
</style>
    </head>
    
      <body class="fixed-left">
      <div id="wrapper">
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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-sm hidden-xs">
                             <font face="verdana" class="page-title">PAY SLIP</font>
                              <!--   <h4 class="page-title">View Transactions -->
                            </li>
                        </ul>
                       <ul class="nav navbar-nav navbar-right">
								<li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="fa fa-undo" aria-hidden="true"> </i>
								</button>
             </li>
					</ul>

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            
            
  
       <!-- Start menu -->
             <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Menu End -->
         <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                <!-- Page-Title -->

                <div class="row">
               <!--  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                </div> -->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card-box task-detail">
                        <h4 class="page-title">EMPLOYEE MONTHLY SALARY PAY SLIP</h4>
                            <div class="table table-responsive">
                                             <table class="table table-bordered m-0">
                                                
												<thead>
												<h6><p>[ See rule 78(2) (b) ]       1[FORM XIX]</p></h6>
                                                <tr>
												<th><image style="width:200px; height:80px;" src="resources\images\newlogo.png"></th>
                                                 
                                                  <th colspan="4"> <h4> Welezo Health Care Private Limited </h4> 
														No.13, Sanjaynagar Main Road, Amarjyothi Layout, Nagashettihalli,Bangalore-94
												   </th>
                                                    
                                                </tr>
												</thead>
                                                
												<tbody>
												
												<tr>
                                                   <!-- <td></td> -->
												   <td colspan="4"> <strong> PAY SLIP FOR THE MONTH OF : ${empSalSlip.payforMonth}</strong></td>
                                                </tr>
													
													<tr>
                                                        <td> <strong> NAME </strong> </td>
                                                        <td> ${empSalSlip.empName}</td>
                                                        <td> <strong> Paid Days </strong> </td>
                                                        <td>${empSalSlip.paidDays}</td>
														<%-- <td> <strong> No Of Actual Days</strong> </td>
                                                        <td>${empSalSlip.totalDays}</td> --%>
                                                        
                                                    </tr>
                                         
                                                    <tr>
                                                        <td> <strong> EMPLOYEE CODE </strong> </td>
                                                        <td>${employeeById.employeeId}</td>
														<td> <strong> PF NO </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'PF Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                        
                                                    </tr>
                                                    
                                                   <%--  <tr>
                                                        <td> <strong> DOJ </strong> </td>
                                                        <td>01-09-2016</td>
														<td> <strong> PF NO </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'PF Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                    </tr> --%>
                                                     <tr>
                                                        <td> <strong> Designation </strong> </td>
                                                        <td>${designation.designation}</td>
														<td> <strong> ESI NO </strong> </td>
                                                        <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'ESI Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Department </strong> </td>
                                                        <td>${designation.department}</td>
														<td> <strong> Payment </strong> </td>
                                                        <td>Bank Transfer</td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Location </strong> </td>
                                                        <td>Bangalore</td>
                                                        <td> <strong>Account No </strong> </td>
                                                        <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'Corporate Account No' }">
                                                        ${accounts.answer}
                                                        </c:if>
                                                        </c:forEach></td>
                                                    </tr>
													 <tr>
                                                        <td> </td>
                                                        <td></td>
                                                        <td> <strong>Bank Name </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'Corporate Account Bank' }">
                                                        ${accounts.answer}
                                                        </c:if>
                                                        </c:forEach></td>
                                                    </tr>
                                                    <tr>
                                                    <td colspan="4"></td>
                                                    </tr>
													<tr class="solid">  
													    <td style="color:green"> <strong> Earnings </strong>  </td>
                                                        <td style="color:green"> <strong> Amount </strong></td>
														<td style="color:green"> <strong> Deductions </strong> </td>
                                                        <td style="color:green"> <strong> Amount </strong> </td>
                                                    </tr>
													<tr>
                                                        <td> <strong> Basic & DA </strong>  </td>
                                                        <td>${empSalSlip.basicEarned}</td>
														<td> <strong> Provident Fund (PF) </strong>  </td>
                                                        <td>${empSalSlip.epf}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong> House Rent Allowance  </strong> </td>
                                                        <td>${empSalSlip.hraEarned}</td>
														<td> <strong> ESI </strong>  </td>
                                                        <td>${empSalSlip.esi}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong>Other Allowances </strong>  </td>
                                                        <td>${empSalSlip.others}</td>
                                                        <td> <strong>PT </strong>  </td>
                                                        <td>${empSalSlip.pt}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong>Travelling Allowances </strong>  </td>
                                                        <td></td>
                                                        <td > <strong> Others </strong>  </td>
                                                        <td>${empSalSlip.latePenalty}</td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Gross Pay </strong>  </td>
                                                        <td>${empSalSlip.grossEarned}</td>
                                                        <td > <strong> Total Deductions </strong>  </td>
                                                        <td>${empSalSlip.epf + empSalSlip.esi + empSalSlip.pt + empSalSlip.latePenalty}</td>
                                                    </tr>
                                                  
                                                    <tr>
                                                    <td colspan="4">Nett Pay: Rs. ${empSalSlip.nettSalary}/-</td>
                                                   
                                                    </tr>
                                                    
													<tr>
													
													<td colspan="4">InWords : <h5><b id="demo"></b></h5>  </td>
                                                    </tr>
													
													<tr>
													
													<td colspan="4">NOTE: This is system generated Pay Slip, Hence Signature not required </td>
                                                    </tr>
													
                                                   </tbody>
                                                
                             </table>
                            <div>


                            <div class="attached-files m-t-30">
							
							
                           
							<div class="hidden-print">
                                <div class="pull-right">
                                <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                </div>
                             </div>
                               
                                
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="text-right m-t-30">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- end col -->

                   </div> 
					</div>
					</div>
                </div>
                <!-- end row -->
</div>
</div>

                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
      <script type="text/javascript">
      var a = ['','One ','Two ','Three ','Four ', 'Five ','Six ','Seven ','Eight ','Nine ','Ten ','Eleven ','Twelve ','Thirteen ','Fourteen ','Fifteen ','Sixteen ','Seventeen ','Eighteen ','Nineteen '];
      var b = ['', '', 'Twenty','Thirty','Forty','Fifty', 'Sixty','Seventy','Eighty','Ninety'];

      function inWords (num) {
          if ((num = num.toString()).length > 9) return 'overflow';
          n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
          if (!n) return; var str = '';
          str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'Crore ' : '';
          str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'Lakh ' : '';
          str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'Thousand ' : '';
          str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'Hundred ' : '';
          str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'Only/- ' : '';
          return str;
      }

      </script>
      <script type="text/javascript">
     var sal =  ${empSalSlip.nettSalary};
		var words = inWords(sal);
		document.getElementById("demo").innerHTML = words;
		</script>

  
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

                /* advance multiselect start */
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

               /*  Select2 */
                $(".select2").select2();

                $(".select2-limiting").select2({
                             maximumSelectionLength: 2
                           });

            });

            /* Bootstrap-TouchSpin */
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

           /*  colorpicker start */

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

      /*       Date Picker */
            jQuery('#datepicker').datepicker();
            jQuery('#datepicker-autoclose').datepicker({
              format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });


            jQuery('#datepicker').datepicker();
            jQuery('#date-range').datepicker({
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

           /*  Date range picker */
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 30,
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

         /*    Bootstrap-MaxLength */
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