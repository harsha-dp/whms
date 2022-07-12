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
        <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/>
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
<script src="resources/validation/corporate/corporateDetails.js"></script>
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
</style>

  
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
                    <div class="container1">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                             <a href="corporateDashBoard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li>
                            <font face="verdana" class="page-title1"> PRODUCT LIST </font>
                               <!--  <h4 class="page-title">ADD COLLECTIONS</h4> -->
                            </li>
                        </ul>
					<ul class="nav navbar-nav navbar-right">
                           <li>
                            <h4><button type="button" value=" Go Back !" onclick="history.back(-1)" class="btn btn-primary1" >
                             <span class="glyphicon glyphicon-chevron-left"></span>  Back </button></h4>
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
                   <div class="card-box table-responsive">
                   
                   <div class="col-md-12">
                                        <div class="clearfix">
                                            <div class="pull-left">
                                               
                                            </div>
                                            
                                            <div class="pull-right">
                                           

									
								
								     <a href="requestGenerationForm?corporateId=<c:out value='${corporateId}'/>" class="btn btn-default btn-md waves-effect waves-light" > <b> GENERATE REQUEST FOR QUOTATION </b></a>
				 	<br/><br>	
                                            </div>
                                            
                                        </div>
                                        </div>
              		
				 	<div class="col-md-12">
      										 <div class="scrollit">
                                             <table id="example" class="grid display nowrap" style="width: 100%">
        									<thead>
	                    					<tr>
											<td><b>ID</b></td>
											<td><b>CORPORATE NAME</b></td>											
											<td><b>PRODUCT NAME</b></td>
											<td><b>PACKAGE MODE</b></td>
											<td><b>HEAD COUNT</b></td>
											<!-- <td><b>PRODUCT STATUS</b></td>				 -->							
	                    					</tr>
	                						</thead>
	                						
									        <tfoot>
									         <tr>
											<th>ID</th>
											<th>CORPORATE NAME</th>										
											<th>PRODUCT NAME</th>
										    <th>PACKAGE MODE</th>
											<th>SERVICE HEAD COUNT</th>
											<!-- <th>PRODUCT STATUS</th> -->
											</tr>
									        </tfoot>
											 <tbody>
                                            <c:forEach items="${corpProdById}" var="corporate" varStatus="counter">
								                    	  <tr style="display: table-row;">
								                        	<td><c:out value="${counter.index + 1}"/></td>
								                        	 <td><c:out value="${corporate.corpName}"/></td>
								                        
								                        	  <td><a href="viewcorpProdbyIdOnly?prodId=<c:out value='${corporate.prodId}'/>&corporateId=<c:out value='${corporate.corpId}'/>&prodName=<c:out value='${corporate.proName}'/> "> <c:out value="${corporate.proName}"/> </a></td>
								                        
								                        	   <td><c:out value="${corporate.healthId}"/></td>
								                        	  <td><c:out value="${corporate.headCount}"/></td> 
								                        	
                        	
                        	
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
                    </div>
                   </div>
                 </div> <!-- container -->
                 </div>
                 </div>
                 
</body>
</html>