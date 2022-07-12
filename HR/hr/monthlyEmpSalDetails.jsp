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

        <title>WElEZO</title>
        <!-- DataTables -->
        <link href="resources/HR/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />

        
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
                            
                            <h4 class="header-title m-t-0 m-b-30">EMPLOYEE SALARY DETAILS</h4>
 <div class="row">
                                 			<div class="col-md-12" >
                                 			<div class="form-group">
                            <form action="monthlySal" method="post">
			                                			<div class="col-sm-4">
			                                				<div class="input-daterange input-group" id="date-range">
			                                					<span class="input-group-addon bg-primary b-0 text-white">Select Month</span>
											<select name="month" class="form-control">
											<option value="2017/01/31" >Select Salary Month </option>
											<option value="2017/01/31" >January 2017</option>
											<option value="2017/02/28" >February 2017</option>
											<option value="2017/03/31" >March 2017</option>
											<option value="2017/04/30" >April 2017</option>
											<option value="2017/05/31" >May 2017</option>
											<option value="2017/06/30" >June 2017</option>
											<option value="2017/07/31" >July 2017</option>
											<option value="2017/08/31" >August 2017</option>		
											<option value="2017/09/30" >September 2017</option>
											<option value="2017/10/31" >October 2017</option>
											<option value="2017/11/30" >November 2017</option>
											<option value="2017/12/31" >December 2017</option>
											</select>
																</div>
															</div>
																<div class="col-sm-2">
			                                					<div class="input-daterange input-group" id="date-range">
															<button type="submit" class="btn btn-success btn-rounded waves-effect waves-light" value="Go">Search</button>
			                                			</div>
			                                		</div>
			                                		</form>
			                                		</div>
                                 			</div>
                                 		</div>
                            <br>
                           Month : ${month}
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr class="info">
                                    	<th>EMP Name</th>
                                    	<th>Basic</th>
                                        <th>Gross</th>
                                        <th>Paid Days</th>
                                        <th>Late Days</th>
                                        <th>Total Days</th>
                                        <th>Basic Earned</th>
                                        <th>HRA Earned</th>
                                          <th>Others</th>
                                            <th>Gross Earned</th>
                                             <th>EPF</th>
                                              <th>ESI</th>
                                                <th>Pt</th>
                                                  <th>Earned Sal</th>
                                                     <th>Late Penalty</th>
                                                        <th>Net Sal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                         <c:forEach items="${monthlyEmpSalary}" var="salary">
                        <tr class="success">
                            <td><c:out value="${salary.empName}" /></td>
                        	<td class="account-name sort-value"><c:out value="${salary.basicPerc}"/></td>
                        	<td class="account-name1 sort-value"><c:out value="${salary.gross}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${salary.paidDays}"/></td>
                        	<td class="account-name3 sort-value"><c:out value="${salary.lateDays}"/></td> 
                        	<td class="account-name4 sort-value"><c:out value="${salary.totalDays}"/></td>
                        	<td class="account-name5 sort-value"><c:out value="${salary.basicEarned}"/></td>
                        	<td class="account-name6 sort-value"><c:out value="${salary.hraEarned}"/></td>
                        	<td class="account-name7 sort-value"><c:out value="${salary.others}"/></td>
                        	<td class="account-name8 sort-value"><c:out value="${salary.grossEarned}"/></td>
                        	<td class="account-name9 sort-value"><c:out value="${salary.epf}"/></td>
                        	<td class="account-name11 sort-value"><c:out value="${salary.esi}"/></td>
                        		<td class="account-name11 sort-value"><c:out value="${salary.pt}"/></td>
                        			<td class="account-name12 sort-value"><c:out value="${salary.earnedSalary}"/></td>
                        			<td class="account-name13 sort-value"><c:out value="${salary.latePenalty}"/></td>
                        			<td class="account-name14 sort-value" ><c:out value="${salary.nettSalary}" /></td>
                        	<%-- <td><a href="salComp?empId=<c:out value='${salary.empId}'/>" class="btn btn-warning btn-xs">ADD</a>
                        	</td> --%>
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->
               
                <!-- Footer -->
                 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
        </div>
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
    </body>
</html>