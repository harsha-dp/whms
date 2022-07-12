<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="Lohith" content="SOFTWARE ENG.">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>WELEZO</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/plugins/morris/morris.css">

        <!-- App css -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
		<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
		<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
		
        <script src="resources/js/modernizr.min.js"></script>
   <style>
	#search {
    float: right;
    margin-top: 9px;
    width: 250px;
}

.search {
    padding: 5px 0;
    width: 230px;
    height: 30px;
    position: relative;
    left: 10px;
    float: center;
    line-height: 22px;
}

    .search input {
        position: absolute;
        width: 0px;
        float: Left;
        margin-left: 210px;
        -webkit-transition: all 0.7s ease-in-out;
        -moz-transition: all 0.7s ease-in-out;
        -o-transition: all 0.7s ease-in-out;
        transition: all 0.7s ease-in-out;
        height: 30px;
        line-height: 18px;
        padding: 0 2px 0 2px;
        border-radius:1px;
    }

        .search:hover input, .search input:focus {
            width: 200px;
            margin-left: 0px;
        }

.btn {
    height: 30px;
    position: absolute;
    right: 0;
    top: 5px;
    border-radius:1px;
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
                    <!-- <a href="index.html" class="logo"> </a> -->
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
                             <font face="verdana" class="page-title">APPLICATION STATUS DETAILS</font>
                              <!--   <h4 class="page-title">View Transactions</h4> -->
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
          
             <c:set var="role" scope="session" value="<%=roleType %>"/>
            <div class="content-page">
                <!-- Start content -->
               
                <div class="content">
                    <div class="container">
                    <br>
                    
                    
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                   
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="text-center">
                                               <form action="applicationStatusSearch1">
						
		<h4>Search Application Status</h4>
        <div class="search" style="margin-left: 350px;">
<input type="text" name="applicationNo" class="form-control input-sm" placeholder="Search" />
 <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-search"></i> Search</button>
</div>

	</form>
                                            </div>
                                        </div><!-- end col -->
                                        </div>
                                        <br/>
                                         <div class="row">
                                        <div class="col-md-12">
                                         <table class="table table-bordered table-hover ">
                                                        <thead>
                                                        <tr style="background-color: menu"> 
                                                        <th>CUSTOMER DETAILS </th> 
                                                        <th>COLLECTION DETAILS</th>
                                                        <th>TRANSACTION DETAILS </th> 
                                                        <th>DISPATCH DETAILS </th> 
                                                        </tr>
                                                      </thead> 
                                                      <tbody>      
                                                        <tr>
                                                        <td class="tabn"><strong>Customer Name</strong> : ${applicationStatusTx.customerName} <br><br>
                                                       <strong> Package</strong> : ${applicationStatusTx.productName}
                                                        </td>
                                                        <td class="tabn">${applicationStatusTx.collectedDate}</td>
                                                        <td class="tabn"><strong>Status :</strong>${applicationStatusTx.txStatus} <br><br>
                                                       <strong> Date</strong> : ${applicationStatusTx.approvalDate}
                                                        </td>
                                                        <td class="tabn"><strong>Status :</strong>${applicationStatusDispatch.deliveryStatus} <br><br>
                                                       <strong> Date : ${applicationStatusDispatch.dispatchDate }</strong>
                                                        </td>
                                                        </tr>
                                                        </tbody> 
                                                        </table>
                                        
                                        </div>
                                        
                                        
                                    </div><!-- end row -->

                                    <!-- <div class="row m-t-40">
                                        <div class="col-lg-6">
                                            <div class="p-20">
                                                <div class="panel-group m-b-0" id="accordion" role="tablist"
                                                     aria-multiselectable="true">
                                                    <div class="panel panel-default bx-shadow-none">
                                                        <div class="panel-heading" role="tab" id="headingOne">
                                                            <h4 class="panel-title">
                                                                <a role="button" data-toggle="collapse"
                                                                   data-parent="#accordion" href="#collapseOne"
                                                                   aria-expanded="true" aria-controls="collapseOne">
                                                                    ORDER INFORMATION
                                                                </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapseOne" class="panel-collapse collapse in"
                                                             role="tabpanel" aria-labelledby="headingOne">
                                                            <div class="panel-body">
                                                           
                                                            
                                                               <table class="table table-condensed table-hover">
                                                        <tr>
                                                        <th class="tabq">Customer Application No </th> <td class="tabn">100020</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Card Number </th> <td class="tabn">WBNG 3389 1008 3623</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Package Name </th> <td class="tabn">Welezo Basic</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Price </th> <td class="tabn">1999</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Package Purchase Date </th> <td class="tabn">17-05-2018 </td>
                                                        </tr>
                                                         <tr>
                                                        <th class="tabq">Package Purchase Validity Date</th> <td class="tabn">17-05-2019 </td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Total Service </th> <td class="tabn">4</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Utilized Service </th> <td class="tabn">2</td>
                                                        </tr>
                                                        
                                                        
                                                        
                                                        </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                            </div>
                                        </div>end col

                                        <div class="col-lg-6">
                                            <div class="p-20">
                                                <div class="panel-group m-b-0" id="accordion1" role="tablist"
                                                     aria-multiselectable="true">
                                                    <div class="panel panel-default bx-shadow-none">
                                                        <div class="panel-heading">
                                                            <h4 class="panel-title">
                                                                <a role="button" data-toggle="collapse"
                                                                   data-parent="#accordion1" href="#faq4">
                                                                  CUSTOMER INFORMATION 
                                                                </a>
                                                            </h4>
                                                        </div>
                                                        
                                                        <div id="faq4" class="panel-collapse collapse in">
                                                            <div class="panel-body">
                                                        <table class="table table-condensed table-hover">
                                                        <tr> 
                                                        <th class="tabq">Customer Name </th> <td class="tabn">Navin</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Contact Number </th> <td class="tabn">9876543210</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Alternate Number </th> <td class="tabn">9845098450</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Location </th> <td class="tabn">Baengalor</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Address </th> <td class="tabn">Woc 5th block Rajajinagar </td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Email </th> <td class="tabn">hiremath@welezohealth.com</td>
                                                        </tr>
                                                        <tr>
                                                        <th class="tabq">Application Number :</th> <td class="tabn">100010</td>
                                                        </tr>
                                                        
                                                        
                                                        
                                                        </table>
                                                        
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>end col
                                     
                                     
                                        
                                      <div class="col-md-12">
                                      <h5>PRESALES STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Add presales ?</th>
                                      <th>Edit Presales ?</th>
                                      <th>Package Name ?</th>
                                      <th>Met/ Not Met </th>
                                      <th>Interested</th>
                                      <th>CSR Name</th>
                                      <th>Executive Name</th>
                                      <th>Applicaton EnteredBy</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>Done</td>
                                      <td>In-Progress</td>
                                      <td>Welezo Basic</td>
                                      <td>Met</td>
                                      <td>Yes</td>
                                      <td>Sowmya</td>
                                      <td>Waseem</td>
                                      <td>Ranjana</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                           
                                        
                                      <div class="col-md-12">
                                      <h5>PRESALES STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Add presales ?</th>
                                      <th>Edit Presales ?</th>
                                      <th>Package Name ?</th>
                                      <th>Met/ Not Met </th>
                                      <th>Interested</th>
                                      <th>CSR Name</th>
                                      <th>Executive Name</th>
                                      <th>Applicaton EnteredBy</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>Done</td>
                                      <td>In-Progress</td>
                                      <td>Welezo Basic</td>
                                      <td>Met</td>
                                      <td>Yes</td>
                                      <td>Sowmya</td>
                                      <td>Waseem</td>
                                      <td>Ranjana</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                        
                                       
                                         
                                      <div class="col-md-12">
                                      <h5>ACCOUNT STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Payment Details</th>
                                      <th>Payment Status</th>
                                      <th>Payment Mode</th>
                                      <th>Payment Date</th>
                                      <th>Approved By</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>Completed</td>
                                      <td>Approved</td>
                                      <td>Debit card</td>
                                      <td>17-05-2018</td>
                                      <td>Manju</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                        
                                       
                                         
                                      <div class="col-md-12">
                                      <h5>DISPATCH STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Dispatch Status</th>
                                      <th>Delivery Status</th>
                                      <th>Dispatched Date</th>
                                      <th>Dispatch Through</th>
                                      <th>Dispatch Received Date</th>
                                      <th>Dispatch Received By</th>
                                      <th>Application Upload Status</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>New</td>
                                      <td>In-pregress</td>
                                      <td>16-05-2018</td>
                                      <td>DTDC</td>
                                      <td>17-05-2018</td>
                                      <td>Sanju</td>
                                      <td>Pending</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                        
                                       
                                         
                                      <div class="col-md-12">
                                      <h5>CUSTOMER CARE STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Package Name</th>
                                      <th>Services</th>
                                      <th>Utlilized Services</th>
                                      <th>Package Price</th>
                                      <th>Quantity</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>Welezo Basic</td>
                                      <td>Executive Health check up</td>
                                      <td>Dentistry</td>
                                      <td>1999</td>
                                      <td>1</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                        
                                         
                                      <div class="col-md-12">
                                      <h5>CSR STATUS</h5>
                                      <table class="table table-bordered">
                                      <thead>
                                      <tr style="background-color: menu;">
                                      <th>Package Name</th>
                                      <th>Services</th>
                                      <th>Utlilized Services</th>
                                      <th>Package Price</th>
                                      <th>Quantity</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <tr>
                                      <td>Welezo Basic</td>
                                      <td>Executive Health check up</td>
                                      <td>Dentistry</td>
                                      <td>1999</td>
                                      <td>1</td>
                                      </tr>
                                      </tbody>
                                      </table>
                                      
                                      </div> 
                                       
                                        
                                        
                                    </div> --><!-- end row -->

                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->                        
                            </div><!-- end col -->
                        </div>
                    </div> <!-- container -->
                </div> <!-- content -->
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
        <!-- END wrapper -->
        <script>
            var resizefunc = [];
        </script>
        
     <!--    <script src="resources/plugins/charts/canvasjs.min2.js"></script> -->

        <!-- jQuery  -->
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/detect.js"></script>
        <script src="resources/js/fastclick.js"></script>
        <script src="resources/js/jquery.slimscroll.js"></script>
        <script src="resources/js/jquery.blockUI.js"></script>
        <script src="resources/js/waves.js"></script>
        <script src="resources/js/wow.min.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        
         <!-- Flot chart js -->
        <!-- <script src="resources/plugins/flot-chart/jquery.flot.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.time.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.resize.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.pie.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.selection.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.stack.js"></script>
        <script src="resources/plugins/flot-chart/jquery.flot.crosshair.js"></script> -->

        <!-- flot init -->
        <script src="resources/pages/jquery.flot.init.js"></script>
        

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

        <!-- KNOB JS -->
        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

         <!--Morris Chart-->
		<script src="resources/plugins/morris/morris.min.js"></script>
		<script src="resources/plugins/raphael/raphael-min.js"></script>
		<script src="resources/pages/jquery.morris.init.js"></script>
		
		 <!--Chartist Chart-->
		<script src="resources/plugins/chartist/dist/chartist.min.js"></script>
        <script src="resources/plugins/chartist/dist/chartist-plugin-tooltip.min.js"></script>
		<script src="resources/pages/jquery.chartist.init.js"></script>

        <!-- Dashboard init -->
        <script src="resources/pages/jquery.dashboard.js"></script>

    </body>
</html>