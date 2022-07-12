<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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

       
     <!--    <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
     <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/modernizr.min.js"></script>
      
   <style>
 
table td,th {
    border-top: thin solid; 
    border-bottom: thin solid;
    border-right:  thin solid;
    border-left: thin solid;
}
td, th {
    padding: 2px;
    
}

 
/* table td:first-child {
    border-left: thin solid;
}

table td:last-child {
    border-right: thin solid;
} */
   </style>
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
                            <li>
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                            <font class="page-title">INVOICE </font>
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
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
			
                <div class="content">
                    <div class="container">
               
               <div class="col-md-12">
               <div class="card-box">
				<div class="card-row">
               <div id="" class="margin-control invisible margin-control-top" style="left: 6px; top: 41px; width: 975px; clip: rect(-41px, 981px, 599px, -6px);" aria-hidden="false">
  <div class="margin-control-line"></div>
  <input class="margin-control-textbox" aria-hidden="true" type="text" aria-label="Top margin">
</div>
                  <div class="n" id="n">
                 <table cellpadding="0" cellspacing="0" width="100%" style="border: 2px;" rules="none" >
                                                
                                                
												
												<tr>
                                                    <td colspan="2" align="center"><img src="resources\images\newlogo.png"  height="100px" width="250px"></td>
                                                </tr>
                                                <tr >
                                                    <td colspan="2" align="center"><h6 style="letter-spacing: 2px;"><strong>INVOICE</strong></h6></td>
                                                </tr>
  
													
													<tr>
                                                        <td colspan="1"> <p style="line-height:0"><strong>Pravasi Cabs Pvt Ltd</strong>  </p> 
                                                        <address>
                                                        <p style="line-height:0.5; font-family: Times New Roman">#81, 2nd floor, BDA Complex,</p>
                                                        <p style="line-height:0.5">14th mail, 6th sector HSR Layout,</p>
                                                        <p style="line-height:0.5">Bangalore-560102</p>
                                                        <p style="line-height:0.5">Contact No : 9845098450</p>
                                                        </address>
                                                        </td>
                                                    <td>
                                                    
                                                     <table class="table table-bordered">
                                                    <tr><td  style=" vertical-align : middle;"> <p style="line-height:0.5"><strong>Invoice No .</strong> : WHCC/17-18/0202</p></td></tr>
                                                    <tr><td> <p style="line-height:0.5"><strong>PO - Mail</strong></p></td></tr>
                                                    <tr>
                                                   <td><p style="line-height:0.5"><strong>Service</strong>: FEB-MAR 2018</p></td>
                                                    </tr>
   
    
    </table>
    </td>
    </tr>                                                
                                                  
                                                    <tr>
                                                        <td> <strong> PAN No</strong>. : AABCW8313L  </td>
                                                        <td><strong> Date</strong> : 21-2-2018</td>
                                                        
                                                    </tr>
                                                    
                                                     <tr>
                                                        
                                                        <td>
                                                       <table class="table table-bordered" >
                                                    <tr>
                                                    <td align="center"><strong> Particulars</strong></td>
                                                    </tr>
                                                     <tr height="150">
                                                       <td>
                                                       <ul>
                                                       <li>Employee Health Check Up</li>
                                                       <li>Himoglobin</li>
                                                       <li>BP</li>
                                                       <li>Sugar</li>
                                                       </ul>
                                                       </td>
                                                    </tr>
                                                    
                                                    
                                                    
                                                             </table>
                                                        
                                                        </td>
                                                        <td> 
                                                    
                                      <table cellpadding="0" cellspacing="0" width="100%" style="border: 1px;" rules="none">
                                                     <thead>
                                                    <tr>
                                                    <th class="text-center"><strong> No of PAX</strong></th>
                                                    <th class="text-center"><strong> Rate</strong></th>
                                                    <th class="text-center"><strong> Amount</strong></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                     <tr style="height: 200px;">
                                                    <td class="text-center">18</td>
                                                    <td class="text-center">350</td>
                                                    <td align="right">6,300</td>
                                                    </tr>
                                                   
                                                   
                                                     </tbody>
                                                    
                                                             </table>
                                                        
                                                        </td>
                                                        
                                                    </tr>
                                                    
                                                    
                                                     <tr>
                                                        <td> <p style="line-height:0.5"> <strong> Payment Instructions : </strong></p>
                                                         <p style="line-height:0.5">All payment should be made in the name of</p>
                                                        <p style="line-height:0.5"><strong><q>Welezo Healthcare Private Limited</q> by cheque payabale at</strong></p>
                                                         </td>
                                                        <td> 
                                                        
                                                        <table class="table table-bordered" border="2">
                                                   
                                                     <tr>
                                                    <td align="right"> <p style="line-height:0.5">Total</p>
                                                    </td>
                                                    
                                                    <td align="right"><strong> <p style="line-height:0.5">6,300</p></strong></td>
                                                    </tr>
                                                    </table>
                                                    
                                                    <table class="table table-bordered">
                                                    <tr><td colspan="2" align="center"> <p style="line-height:0.5"><strong>(Rupees Six Thousand Three Hundres Only)</strong></p></td>
                                                    
                                                    </tr>
                                                    
                                                             </table>
                                                        
                                                        
                                                        </td>
                                                        
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td> <p style="line-height:1">Write transfer can be made to</p>
                                                        
                                                        <p style="line-height:0.6;"><strong>Name     </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        : Welezo Healthcare Private Limited</p>
                                                        <p style="line-height:0.6;"><strong>Bank     </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         &nbsp;&nbsp; : Indusland Bank</p>
                                                        <p style="line-height:0.6;"><strong>AccountNo</strong>  : 252113141516</p>
                                                        <p style="line-height:0.6;"><strong>IFSC Code</strong>&nbsp;&nbsp;  : INDB0000967</p>
                                                        <p style="line-height:0.6;"><strong>MICR Code</strong>  : 560234019</p>
                                                        <p style="line-height:0.6;"><strong>Branch</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    : Sanjayanagar, Bangalore</p>
                                                        <p style="line-height:0.6;"><u>Note : All Bank charges and commissions / expenses
                                                        to your account.</u></p>
                                                        
                                                         </td>
                                                        <td>
                                                       <p align="left" style="line-height:1"> For <strong> Welezo Healthcare Private Limited</strong></p>
                                                        <p style="height: 100px;"></p>
                                                            <p align="right" style="line-height:0.6;"><strong>Authorised Signatory</strong></p>
                                                        </td>
                                                    </tr>
                                                   
													
													
													
													
                                                
                             </table>
                             </div>
                           
                            <p style="line-height:1.2;"> Payment Terms : </p> 
                            <p style="line-height:0.6;">All payments to be made in form of cheque or through a wire transfer into the above mentioned account.</p>
                                           <p align="center" style="line-height:0.6;"><strong>Welezo Healthcare Private Limited</strong></p>
                                    <p align="center" style="line-height:0.6;">No.13, Sanjayanagar Main Road, Amar Jyothi Layout, Nagashettyhalli, Bangalore - 560094
                                   </p> <p align="center" style="letter-spacing: 2px;line-height:0.6;">Toll Free : 18001028364</p>
                                           
                                                 <p align="right">www.welezohealth.com</p>
                                                 
                                                 <div class="hidden-print">
                                <div class="pull-right">
                                <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                </div>
                             </div>
                             
                             </div>
               </div>
                               
 
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->
                     
                </div> <!-- content -->

                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

            </div>
			 
        <!-- END wrapper -->
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

        <!-- Datatables-->
        <script src="resources/plugins/welezo/jquery.dataTables.min.js"></script>
        <!-- <script src="resources/plugins/welezo/dataTables.bootstrap.js"></script> -->
        <script src="resources/plugins/welezo/dataTables.buttons.min.js"></script>
        <script src="resources/plugins/welezo/buttons.bootstrap.min.js"></script>
        <script src="resources/plugins/welezo/jszip.min.js"></script>
        <script src="resources/plugins/welezo/pdfmake.min.js"></script>
        <script src="resources/plugins/welezo/vfs_fonts.js"></script>
        <script src="resources/plugins/welezo/buttons.html5.min.js"></script>
        <script src="resources/plugins/welezo/buttons.print.min.js"></script>
        <script src="resources/plugins/welezo/dataTables.fixedHeader.min.js"></script>
        <script src="resources/plugins/welezo/dataTables.keyTable.min.js"></script>
        <script src="resources/plugins/welezo/dataTables.responsive.min.js"></script>
        <script src="resources/plugins/welezo/responsive.bootstrap.min.js"></script>
        <script src="resources/plugins/welezo/dataTables.scroller.min.js"></script>
        
        <!-- Plugins Js -->
        <script src="resources/plugins/switchery/switchery.min.js"></script>
        <script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/plugins/moment/moment.js"></script>
     	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
     	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
        

        <!-- Datatable init js -->
        <script src="resources/pages/datatables.init.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>


    </body>
</html>