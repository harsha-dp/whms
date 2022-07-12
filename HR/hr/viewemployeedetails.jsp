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

        <title>Welezo</title>
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
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><u>EMPLOYEE LIST :</u></h4>
                    </div>
                </div>
                <!-- end row -->
                <div class="row">
                             <c:forEach items="${allEmployees}" var="employee" varStatus="counter">
                    <div class="col-md-3">
                        <div class="text-center card-box">
                            <div class="dropdown pull-right">
                                <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="attendance11?empId=<c:out value='${employee.empId}'/>">Attendence</a></li>
                                    <!-- <li><a href="#">Delete</a></li>
                                    <li><a href="#">Block</a></li> -->
                                    
                                </ul>
                            </div>
                            <div>
                                <img src="data:image/png;base64,${employee.employeeImage}" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image">
                                <div class="text-left">
                                    <p class="text-muted font-13"><strong>Full Name :</strong> <span class="m-l-15">${employee.empName}</span></p>
                                	<p class="text-muted font-13"><strong>Employee ID :</strong> <span class="m-l-15">${employee.employeeId}</span></p>
                                    <p class="text-muted font-13"><strong>Contact Number :</strong><span class="m-l-15">${employee.personalContact}</span></p>
                                    <p class="text-muted font-13"><strong>Gender :</strong> <span class="m-l-15">${employee.gender}</span></p>
                                    <%-- <p class="text-muted font-13"><strong>Address :</strong> <span class="m-l-15">${employee.permanentAddress}</span></p> --%>
                                    <p class="text-muted font-13" style="height: 30px;size: 10px"><strong>E-Mail :</strong> <span class="m-l-15">${employee.corporateEmail}</span></p>
                                   <p class="text-muted font-13" style="height: 50px;size: 10px"><strong>Address :</strong> <span class="m-l-15">${employee.permanentAddress}</span> </p>
                                </div>

                               <a href="viewEmployeeById?empId=<c:out value='${employee.empId}'/>"> <button type="button" class="btn btn-custom btn-rounded waves-effect waves-light">View Profile</button></a>
                            </div>

                        </div>
                    </div> <!-- end col -->
  </c:forEach>
                </div>
                <!-- end row -->
</div>

                <!-- Footer -->
                 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->


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