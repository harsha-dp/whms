<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
                <h4 class="page-title">Department : ${departmentName} </h4>
                <div class="col-lg-4 col-md-6">
                        <div class="text-center card-box">
                         <h4 class="header-title m-t-0 m-b-30"><u>TEAM HEAD :</u></h4>
                          <c:forEach items="${empDeptWise}" var="employeeList"> 
                           
                        <c:if test="${employeeList.designation == 'Team Leader' && departmentName == 'Telesales' }">
                            <div>
                                <img src="data:image/png;base64,${employeeList.employeeImage}" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image">
                                <div class="text-left">
                                    <p class="text-muted font-13"><strong>Full Name :</strong><a href="viewEmployeeById?empId=<c:out value="${employeeList.empId}" />"><span class="m-l-15">${employeeList.empName}</span></a></p>
                                    <p class="text-muted font-13"><strong>Mobile :</strong><span class="m-l-15">1800 102 8364</span></p>
                                    <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">${employeeList.corporateEmail}</span></p>
                                    <p class="text-muted font-13 m-b-5"><strong>Designation :</strong> <span class="m-l-15">${employeeList.designation}</span></p>
                                </div>
                            </div>
                           </c:if>
                        </c:forEach>
                         <c:forEach items="${empDeptWise}" var="employeeList"> 
                        <c:if test="${employeeList.designation == 'Asst. Manager' && departmentName != 'Telesales' || employeeList.designation == 'Manager' }">
                            <div>
                                <img src="data:image/png;base64,${employeeList.employeeImage}" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image">
                                <div class="text-left">
                                    <p class="text-muted font-13"><strong>Full Name :</strong><a href="viewEmployeeById?empId=<c:out value="${employeeList.empId}" />"><span class="m-l-15">${employeeList.empName}</span></a></p>
                                    <p class="text-muted font-13"><strong>Mobile :</strong><span class="m-l-15">1800 102 8364</span></p>
                                    <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">${employeeList.corporateEmail}</span></p>
                                    <p class="text-muted font-13 m-b-5"><strong>Designation :</strong> <span class="m-l-15">${employeeList.designation}</span></p>
                                </div>
                            </div>
                           </c:if>
                        </c:forEach>
                        </div>
                    </div>
                
                   
                   
                    <div class="col-lg-8 col-md-8">
                       <!--  <div class="card-box"> -->
                            <h4 class="header-title m-t-5 m-b-10"><u>TEAM MEMBERS LIST :</u></h4>
                            <c:forEach items="${empDeptWise}" var="employeeList"> 
                   <c:if test="${employeeList.designation != 'Asst. Manager' && employeeList.designation != 'Manager'}">
                               <!--  <li class="list-group-item"> -->
                                   <%--  <a href="#" class="user-list-item">
                                        <div class="avatar">
                                            <img src="data:image/png;base64,${employeeList.employeeImage}" alt="">
                                        </div>
                                        <div class="user-desc">
                                           <a href="viewEmployeeById?empId=<c:out value="${employeeList.empId}" />"> <span class="name">${employeeList.empName}</span></a><br/>
                                            <span class="desc">${employeeList.designation}</span>
                                             <span class="m-l-15">${employeeList.corporateEmail}</span>
                                        </div>
                                    </a> --%>
                                    
                       <div class="col-lg-6">
                        <div class="card-box widget-user">
                            <ul class="list-group m-b-0 user-list">
                            <div>
                                <img src="data:image/png;base64,${employeeList.employeeImage}" class="img-responsive img-circle" alt="">
                                <div class="wid-u-info">
                                   <strong>Employee Name :</strong>  <a href="viewEmployeeById?empId=<c:out value="${employeeList.empId}" />"> 
                               <span class="m-l-15"> ${employeeList.empName}</span></a><br/>
                                  <strong>Designation :</strong>  <span class="m-l-15"> ${employeeList.designation}</span><br/>
                                <strong>Corporate Mail:</strong>  <span class="m-l-15"> ${employeeList.corporateEmail}</span>     
                                </div>
                            </div>
                            </ul>
                        </div>
                    </div>
                               <!--  </li> -->

                           
                        </c:if>
                         </c:forEach>
                        <!-- </div> -->
                    </div>
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

        <!-- Counter Up  -->
        <script src="resources/HR/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="resources/HR/plugins/counterup/jquery.counterup.min.js"></script>

        
        <script src="resources/HR/plugins/jquery-knob/jquery.knob.js"></script>

        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>