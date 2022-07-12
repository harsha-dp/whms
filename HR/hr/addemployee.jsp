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
         <style>
      .nav-tabs.nav-justified>.dropdown .dropdown-menu {
    top: auto;
    left: auto;
    right: 140px;
}
        </style>
    </head>
    <body>
           <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->

        <div class="wrapper">
            <div class="container">
            <div class="row">
              <!-- PROGRESSBAR WIZARD -->
                    <div class="col-lg-12">
                        <div class="card-box p-b-0">

                        <!--     <h6 class="header-title m-t-0 m-b-30">EMPLOYEE LIST</h6>
 -->
                            <div id="progressbarwizard" class="pull-in">
                                <ul class="nav nav-tabs">
                                    <!-- <li><a href="#account-2" data-toggle="tab"> <sup style="color: green"> ACTIVE EMPLOYEES </sup> </a></li> -->
                                     <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">VIEW EMPLOYEES  <span class="caret"></span></a>
                                     <ul class="dropdown-menu">
        <li><a href="#account-1" data-toggle="tab">PERMANENT <i class="glyphicon glyphicon-chevron-right" aria-hidden="true"></i></a></li>
        <li><a href="#account-2" data-toggle="tab">CONTRACT <i class="glyphicon glyphicon-chevron-right" aria-hidden="true"></i></a></li>
        <li><a href="#account-3" data-toggle="tab">CONSULTANT <i class="glyphicon glyphicon-chevron-right" aria-hidden="true"></i></a></li>                        
      </ul>
                                     </li>
                                      <!--  <li><a href="#account-3" data-toggle="tab"> <sup style="color: blue"> CONTRACT EMPLOYEES </sup> </a></li> -->
                                    <li><a href="#profile-tab-2" data-toggle="tab"> RELEAVED EMPLOYEES</a></li>
                                    <li><a href="#finish-2" data-toggle="tab"> TERMINATED EMPLOYEES </a></li>
                                </ul>

                                <div class="tab-content b-0 m-b-0">
                                    <!-- <div id="bar" class="progress progress-striped progress-bar-primary-alt active">
                                        <div class="bar progress-bar progress-bar-success"></div>
                                    </div> -->
                                    <div class="tab-pane p-t-10 fade in active" id="account-1">
                                        <div class="row">
                                          <h6 class="header-title m-t-0 m-b-30"><u>PERMANENT EMPLOYEE LIST</u></h6>
                           <div class="table table-responsive">
                            <table id="datatable-buttons" class="table table-bordered">
                                <thead style="background-color: menu">
                                    <tr>
                                    <th>#</th>
                                        <th>NAME</th>
                                    	<th>EMP ID </th>
                                        <th>GENDER</th>
                                        <th>E-MAIL ID</th>
                                        <th>CONTACT NUMBER</th>
                                        <th>EMP TYPE</th>
                                        <th>DESIGNATION</th>
                                        <th>DEPARTMENT</th>
                                    </tr>
                                </thead>

                                <tbody>
                                         <c:forEach items="${permanentEmployees}" var="emp" varStatus="counter">
                        <tr>
                        <td><c:out value="${counter.index +1}" /></td>
                        	<td class="account-name sort-value"><a href="viewEmployeeById?empId=<c:out value='${emp.empId}'/>"><c:out value="${emp.empName}"/></a></td>
                            <td class="account-name7 sort-value"><c:out value="${emp.employeeId}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${emp.gender}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${emp.corporateEmail}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${emp.emergencyContact}"/></td>
                        	<td class="account-name4 sort-value"><span class="label label-success"><c:out value="${emp.empType}"/></span></td> 
                        	<td class="account-name5 sort-value"><c:out value="${emp.designation}"/></td>
                        	<td class="account-name6 sort-value"><c:out value="${emp.department}"/></td> 
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="tab-pane p-t-10 fade" id="account-2">
                                        <div class="row">
                                          <h6 class="header-title m-t-0 m-b-30"><U>CONTRACT EMPLOYEE LIST</U></h6>
                            <div class="table table-responsive">
                            <table id="datatable-fixed-header" class="table table-bordered">
                                <thead style="background-color: menu">
                                     <tr>
                                    <th>#</th>
                                        <th>NAME</th>
                                    	<th>EMP ID </th>
                                        <th>GENDER</th>
                                        <th>E-MAIL ID</th>
                                        <th>CONTACT NUMBER</th>
                                        <th>EMP TYPE</th>
                                        <th>DESIGNATION</th>
                                        <th>DEPARTMENT</th>
                                    </tr>
                                </thead>

                                <tbody>
                                         <c:forEach items="${contractEmployees}" var="emp" varStatus="counter">
                         <tr>
                        <td><c:out value="${counter.index +1}" /></td>
                        	<td class="account-name sort-value"><a href="viewEmployeeById?empId=<c:out value='${emp.empId}'/>"><c:out value="${emp.empName}"/></a></td>
                            <td class="account-name7 sort-value"><c:out value="${emp.employeeId}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${emp.gender}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${emp.corporateEmail}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${emp.emergencyContact}"/></td>
                        	<td class="account-name4 sort-value"><span class="label label-info"><c:out value="${emp.empType}"/></span></td> 
                        	<td class="account-name5 sort-value"><c:out value="${emp.designation}"/></td>
                        	<td class="account-name6 sort-value"><c:out value="${emp.department}"/></td> 
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane p-t-10 fade" id="account-3">
                                        <div class="row">
                                          <h6 class="header-title m-t-0 m-b-30"><u>CONSULTANT EMPLOYEE LIST</u></h6>
                            <div class="table table-responsive">
                            <table id="datatable" class="table table-bordered">
                                <thead style="background-color: menu">
                                     <tr>
                                    <th>#</th>
                                        <th>NAME</th>
                                    	<th>EMP ID </th>
                                        <th>GENDER</th>
                                        <th>E-MAIL ID</th>
                                        <th>CONTACT NUMBER</th>
                                        <th>EMP TYPE</th>
                                        <th>DESIGNATION</th>
                                        <th>DEPARTMENT</th>
                                    </tr>
                                </thead>

                                <tbody>
                                         <c:forEach items="${consultantEmployees}" var="emp" varStatus="counter">
                         <tr>
                        <td><c:out value="${counter.index +1}" /></td>
                        	<td class="account-name sort-value"><a href="viewEmployeeById?empId=<c:out value='${emp.empId}'/>"><c:out value="${emp.empName}"/></a></td>
                            <td class="account-name7 sort-value"><c:out value="${emp.employeeId}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${emp.gender}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${emp.corporateEmail}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${emp.emergencyContact}"/></td>
                        	<td class="account-name4 sort-value"><span class="label label-primary"><c:out value="${emp.empType}"/></span></td> 
                        	<td class="account-name5 sort-value"><c:out value="${emp.designation}"/></td>
                        	<td class="account-name6 sort-value"><c:out value="${emp.department}"/></td> 
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="tab-pane p-t-10 fade in" id="profile-tab-2">
                                        <div class="row">
                                            <!--   <h6 class="header-title m-t-0 m-b-30"><u>RELEAVED EMPLOYEE LIST</u></h6> -->
                        <div class="table table-responsive">
                            <table id="datatable-responsive" class="table table-bordered dt-responsive nowrap">
                                <thead style="background-color: menu">
                                    <tr>
                                    <th>#</th>
                                        <th>Name</th>
                                    	<th>Emp ID </th>
                                        <th>Gender</th>
                                        <th>Corporate Mail</th>
                                        <th>Personal Mail</th>
                                        <th>Emergency Contact No.</th>
                                        <th>Address</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                          <c:forEach items="${releavedList}" var="emp" varStatus="counter">
                        <tr>
                           <td><c:out value="${counter.index +1}" /></td>
                        	<td class="account-name sort-value"><a href="viewEmployeeById?empId=<c:out value='${emp.empId}'/>"><c:out value="${emp.empName}"/></a></td>
                            <td class="account-name7 sort-value"><c:out value="${emp.employeeId}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${emp.gender}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${emp.corporateEmail}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${emp.personalEmail}"/></td>
                        	<td class="account-name4 sort-value"><c:out value="${emp.emergencyContact}"/></td> 
                        	<td class="account-name5 sort-value"><c:out value="${emp.permanentAddress}"/></td>
                        	<td class="account-name6 sort-value"><span class="label label-warning"><c:out value="${emp.status}"/></span></td> 
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
</div>
                                          

                                        </div>
                                    </div>
                                    <div class="tab-pane p-t-10 fade" id="finish-2">
                                        <div class="row">
                                         <!--   <h6 class="header-title m-t-0 m-b-30"><u>TERMINATED EMPLOYEE LIST</u></h6> -->
                             <div class="table table-responsive">
                             <table id="datatable-keytable" class="table table-bordered" >
                               <thead style="background-color: menu">
                                    <tr>
                                    <th>#</th>
                                        <th>Name</th>
                                    	<th>Emp ID </th>
                                        <th>Gender</th>
                                        <th>Corporate Mail</th>
                                        <th>Personal Mail</th>
                                        <th>Emergency Contact No.</th>
                                        <th>Address</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                          <c:forEach items="${terminatedList}" var="emp" varStatus="counter">
                        <tr>
                           <td><c:out value="${counter.index +1}" /></td>
                        	<td class="account-name sort-value"><a href="viewEmployeeById?empId=<c:out value='${emp.empId}'/>"><c:out value="${emp.empName}"/></a></td>
                            <td class="account-name7 sort-value"><c:out value="${emp.employeeId}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${emp.gender}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${emp.corporateEmail}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${emp.personalEmail}"/></td>
                        	<td class="account-name4 sort-value"><c:out value="${emp.emergencyContact}"/></td> 
                        	<td class="account-name5 sort-value"><c:out value="${emp.permanentAddress}"/></td>
                        	<td class="account-name6 sort-value"><span class="label label-danger"><c:out value="${emp.status}"/></span></td> 
                        </tr>
                    </c:forEach>
                                </tbody>
                            </table>
                            </div>
                                        </div>
                                    </div>
                                    <!-- <ul class="pager m-b-0 wizard">
                                        <li class="previous first" style="display:none;"><a href="#">First</a>
                                        </li>
                                        <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                        <li class="next last" style="display:none;"><a href="#">Last</a></li>
                                        <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li>
                                    </ul> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end col -->
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
        
         <!-- Form wizard -->
        <script src="resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
        <script src="resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
        
       
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
        
        
        <script type="text/javascript">
            $(document).ready(function() {
                $('#basicwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#progressbarwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    var $percent = ($current/$total) * 100;
                    $('#progressbarwizard').find('.bar').css({width:$percent+'%'});
                },
                'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#btnwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted','nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});

                var $validator = $("#commentForm").validate({
                    rules: {
                        emailfield: {
                            required: true,
                            email: true,
                            minlength: 3
                        },
                        namefield: {
                            required: true,
                            minlength: 3
                        },
                        urlfield: {
                            required: true,
                            minlength: 3,
                            url: true
                        }
                    }
                });

                $('#rootwizard').bootstrapWizard({
                    'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#commentForm").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        }
                    }
                });
            });

        </script>

    </body>
</html>