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

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>WElEZO</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="assets/plugins/morris/morris.css">

        <!-- App css -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
       <!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
       <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /> </a>
         
        <script src="resources/js/modernizr.min.js"></script>
        
        
        <script type="text/javascript">
     				function validate(from)
     				{
     					/*Start */ var error=document.getElementById("contactError");
     			       var cardRPhnNumber=form["cardRPhnNumber"].value;

     			        error.innerHTML="";
     			     
     			        if( cardRPhnNumber==null || cardRPhnNumber==""){
     			            error.innerHTML="Please enter customer card number";
     			            return false;
     			        }

     			        else if(isNaN(cardRPhnNumber)){
     			            error.innerHTML="Thank you for enter vaild number";
     			            return true;
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
                    <!-- <a href="index.html" class="logo"> </a> -->
                   
		                  <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                             </li>  </div>

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
							
                           <!--  <li>
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li> -->
                            <li class="hidden-xs hidden-sm">
                             <font face="verdana" class="page-title">SALES DASH BOARD </font>
                              <!--   <h4 class="page-title">View Transactions</h4> -->
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
                    
                    	<div class="row">
                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box fadeInDown animated">
                                    <div class="bg-icon bg-icon-info pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo4.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">${customerCount.customerName}</b></h3>
                                        <p class="text-muted"><a href="viewcustomers">Add Sales </a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-pink pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo7.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">${hospitalCount.nameHcc}</b></h3>
                                        <p class="text-muted"><a href="viewHospitals">View Sales</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-purple pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo8.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">${healthApptCount.serviceName}</b></h3>
                                        <p class="text-muted"><a href="viewappointment">Sales Summary</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
							
							 <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo13.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">${dashBoardCount.interactionMode}</b></h3>
                                        <p class="text-muted"><a href="viewinteraction">Call List</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
							
                            <!-- <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo9.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">107</b></h3>
                                        <p class="text-muted"><a href="healthsummary">Appointment Summary</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            -->
                            
                            <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo12.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter"> <br/></b></h3>
                                        <p class="text-muted"><a href="healthsummary">Appointment Summary</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            
                           <div class="col-md-6 col-lg-4">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo5.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter"><br/></b></h3>
                                        <p class="text-muted"><a href="viewdispatch">Dispatch List</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div> 
                            
                            <!-- <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo5.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">178</b></h3>
                                        <p class="text-muted">Total Dispatch</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div> -->
                            
                            <!-- <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo7.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">76</b></h3>
                                        <p class="text-muted">Total Hospital</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div> -->
                            
                            <!-- <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <img class="img-responsive" src="./resources/images/welezo8.png">
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">12</b></h3>
                                        <p class="text-muted">Today Health Appointment</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div> -->
                            
                        </div>
                        
                        
                        
                        				<%-- 	<div class="row">
						<div class="col-sm-12">
							<div class="card-box table-responsive">
								<div class="col-md-6">
					    		<h4>CUSTOMER DETAILS SEARCH</h4>
					            <div id="custom-search-input">
			            
			            	<form action="searchCustomerTx" name="form" onsubmit="return validate()">
			                <div class="input-group col-md-12">
			                    <input type="text" class="form-control input-lg" id="cardRPhnNumber" name="cardRPhnNumber"  placeholder="Enter card OR contact number :" />
			                    <span  class="input-group-btn">
			                        <button class="btn btn-info btn-lg" onclick="return validate()" type="submit">
			                            <i class="fa fa-search fa-3x"  aria-hidden="true"></i>
			                        </button>
			                    </span>
			                </div>
			                </form>
					        </div>
					        <font id="contactError" style="color: red;"></font>
					        </div>
                        		</div>
                        		
								<c:choose>
									<c:when test="${not empty stkList}">
						 <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                      <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <th class="filtername">${name.columnName}</th>
									</c:forEach>
                                   </tr>
                                        </thead>
					<tbody>
					  <c:forEach var="row" items="${stkList}"> 
                                <tr>
                                   <c:if test="${columnName.size() >= 1}"><td> <a href="serviceBaseAppointment?transactionId=<c:out value='${row.attr1}'/>">Book</a></td></c:if>
                                   <c:if test="${columnName.size() >= 2}"><td><a href="viewcustomersById?customerId=<c:out value='${row.attr2}'/>">View</a></td></c:if>
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
                                     
                                      <td> <a href="addInteraction?transactionId=<c:out value='${row.attr1}'/>&customerId=<c:out value='${row.attr2}'/>" class="btn btn-default btn-md waves-effect waves-light"
                                            data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Add Query
                                        </a> </td>
                                   <!--  <td> <a href="#custom-modal" class="btn btn-default btn-md waves-effect waves-light"
                                           data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                            <i class="zmdi zmdi-plus"></i> Add Interaction
                                        </a> </td> -->
            </tr></c:forEach>
	                           
								</tbody>
	                           </table>
	                           </div></div>
	                           </div></c:when></c:choose></div>
	          </div> --%>
                    					

                    <%--     <div class="row">
                        	
                        	<div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        			
                        			<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Calls 2.jpg">
                                 </div>
                                    
                        			<h4 class="header-title m-t-0 m-b-30"><a href="callDetails1">Total Calls</a></h4>

                                    <div class="widget-box-2">
                                       <h4 class="m-b-0">Total Calls : ${callsCount.getPrice()}</h4>
                                       <h4 class="m-b-0">Presentations : ${callsCount.getCsr()}</h4>
  							</div>
                        		</div>
                            </div><!-- end col -->
                            <div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        		<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Image2.jpg">
                                 </div>
                        			<h4 class="header-title m-t-0 m-b-30"><a href="presalesSummary">Total Pre-Sales</a></h4>
                        			<div class="widget-box-2">
                                       <h4 class="m-b-0">Today Appt : ${presalesCount.appointmentType}</h4>
                                       <h4 class="m-b-0">Appt. generated : ${presalesCount.csr}</h4>
                                       <h4 class="m-b-0">Meetings : ${presalesCount.customerName}</h4>
                                    </div>

                                   
                        		</div>
                            </div><!-- end col -->
                            
                            <div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        			
                        			<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Revenue Collection.jpg">
                                 </div>
                                    
                        			<h4 class="header-title m-t-0 m-b-30">Collection Revenue</h4>

                                    <div class="widget-box-2">
                                        <h4 class="m-b-0">Today Sales : ${collectionCount.getCsr()}</h4>
                                       <h4 class="m-b-0">Revenue : ${collectionCount.getPrice()}</h4>
                                    </div>
                        		</div>
                            </div><!-- end col -->

                            
  
                        </div>
                        <!-- end row -->
                        
                        <div class="row">

                            <div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        		<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Image4.jpg">
                                 </div>
                                    
                        			<h4 class="header-title m-t-0 m-b-30">Total Transaction</h4>
                        		
                        			<div class="widget-box-2">
                                       <h4 class="m-b-0">Today Transactions : ${presalesCount.appointmentType}</h4>
                                       <h4 class="m-b-0">Payment Approved : ${presalesCount.csr}</h4>
                                    </div>
                                   
                        		</div>
                            </div><!-- end col -->


                            <div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        			<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Image3.jpg">
                                 </div>
                                    

                        			<h4 class="header-title m-t-0 m-b-30">Total Customers</h4>
                        			
                        			<div class="widget-box-2">
                                        <h2 class="m-b-0"> 0 </h2>
                                    </div>
                        		</div>
                            </div><!-- end col -->
                             <div class="col-lg-4 col-md-6">
                        		<div class="card-box">
                        			
                        			<div class="widget-chart-box-1">
                                            <img class="img-responsive" src="./resources/images/Image1.jpg">
                                 </div>
                        			<h4 class="header-title m-t-0 m-b-30">Total Dispatch</h4>
                                    <div class="widget-box-2">
                                        <h2 class="m-b-0"> 0 </h2>
                                    </div>
                        		</div> --%>
                            </div><!-- end col -->
                        </div>
                    </div> <!-- container -->
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

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

        <!--Morris Chart-->
		<script src="resources/plugins/morris/morris.min.js"></script>
		<script src="resources/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="resources/pages/jquery.dashboard.js"></script>

    </body>
</html>