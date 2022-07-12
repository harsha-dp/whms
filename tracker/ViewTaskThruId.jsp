<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <link rel="shortcut icon" href="assets/images/favicon_1.ico">

        <title>Welezo</title>
        
        <link href="resources/plugins/bootstrap-table/css/bootstrap-table.min.css" rel="stylesheet" type="text/css" />

		<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer.css" rel="stylesheet" type="text/css"/>

        <script src="resources/js/modernizr.min.js"></script>
        
    </head>


    <body class="fixed-left">

       <div id="wrapper">
            <!-- Top Bar Start -->
            
            <div class="topbar">
				<div class="col-md-10">
                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" width="180px" height="50px" /></a>
                </div>
                </div>
                <div class="col-md-2">
               <div><h4><i class="fa fa-user"></i> ${userById.userName}</h4></div>
               </div>
</div>
			<!-- ========== Left Sidebar Start ========== -->
           <%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
           <%--  <%@ include file="/WEB-INF/jsp/sildermenu.jsp" %> --%>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->                      
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <ol class="breadcrumb">
                                  <li><a href="welezouser_dashboard">Home</a></li>
                                  <%--  <li><a href="viewTaskById?userId=<c:out value="${userById.userId}" />">${userById.userName}</a></li> --%>
                                    <li><a href="AddTask?userId=<c:out value="${userById.userId}" />">Add Task</a></li>
                                    <li><a href="viewDetails3?userId=<c:out value="${userById.userId}" />">View Task</a></li>
                                    <li class="active">${userById.userName}</li>
                                </ol>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Right Sidebar -->
                            <div class="col-lg-12 col-md-8">
                                <div class="row">
                                   	<!--Custom Toolbar-->
						<!--===================================================-->
						<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Task Details</b></h4>
								<!-- 	<button id="demo-delete-row" class="btn btn-danger" disabled><i class="fa fa-times m-r-5"></i>Delete</button> -->
								<form action="searchTask">
								<input type="hidden" name="userId" value="${userById.userId}"> 
								Assignee :
								 <select name="name" title="----vendorame----">
											<option value="" label="Select name assignee" />
											<option  value="${userById.userName}">${userById.userName}</option>
													
										</select>
								status :
								 <select name="status" title="----vendorame----">
											<option value="" label="Select Task Status" />
											<option  value="New">New</option>
											<option  value="Cancelled">Cancelled</option>
											<option  value="Completed">Completed</option>
											<option  value="Deployed">Deployed</option>
											<option  value="Active">Active</option>
										</select>
								<button type="submit">search</button>
								</form>
									<table id="demo-custom-toolbar"  data-toggle="table"
										   data-toolbar="#demo-delete-row"
										   data-search="true"
										   data-show-refresh="true"
										   data-show-toggle="true"
										   data-show-columns="true"
										   data-sort-name="id"
										   data-page-list="[5, 10, 20]"
										   data-page-size="5"
										   data-pagination="true" data-show-pagination-switch="true" class="table-bordered ">
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
                                   <c:if test="${columnName.size() >= 1}"><td><a href="editTask?taskId=<c:out value='${row.attr1}'/>&userId=<c:out value="${userById.userId}" />"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</a></td></c:if>
                                   <c:if test="${columnName.size() >= 2}"><td>${row.attr2}</td></c:if>
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
                                      <c:if test="${columnName.size() >= 13}"><td>${row.attr13}</td></c:if>
                                       <c:if test="${columnName.size() >= 14}"><td>${row.attr14}</td></c:if>
                                         <c:if test="${columnName.size() >= 15}"><td>${row.attr15}</td></c:if>
                                          <c:if test="${columnName.size() >= 16}"><td>${row.attr16}</td></c:if>
                                          <c:if test="${columnName.size() >= 17}"><td>${row.attr17}</td></c:if>
                                          <c:if test="${columnName.size() >= 18}"><td>${row.attr18}</td></c:if>
                                          <c:if test="${columnName.size() >= 19}"><td>${row.attr19}</td></c:if>
                                          <c:if test="${columnName.size() >= 20}"><td>${row.attr20}</td></c:if>
                                          <c:if test="${columnName.size() >= 21}"><td>${row.attr21}</td></c:if>
                                          <c:if test="${columnName.size() >= 22}"><td>${row.attr22}</td></c:if>
            </tr></c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
                                </div> <!-- End row -->
                            </div> <!-- end Col-9 -->
                        </div><!-- End row -->
                    </div> <!-- container -->
                </div> <!-- content -->

                <%@ include file="/WEB-INF/jsp/Admin/tracker/footer.jsp" %>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

	    </div>
        <!-- END wrapper -->
	
	    <script>
            var resizefunc = [];
        </script>
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

        <script src="resources/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>

        <script src="resources/pages/jquery.bs-table.js"></script>


        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

	
	</body>
</html>