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
     <!--   <style type="text/css">
    .col-lg-8 {
    bottom: -8px;
    .h4{
     bottom: -8px;
    }
}
/* Footer */
.footer {
  border-top: 1px solid rgba(152, 166, 173, 0.2);
  bottom: 0px;
  color: #98a6ad;
  text-align: left !important;
  padding: 19px 30px 20px;
  position: absolute;
  right: 0px;
  left: 0px;
}
       </style> -->
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
                                  <li><a href="viewTaskById?userId=<c:out value="${userById.userId}" />">${userById.userName}</a></li>
                                    <li><a href="AddTask?userId=<c:out value="${userById.userId}" />">Add Task</a></li>
                                    <li><a href="viewDetails3?userId=<c:out value="${userById.userId}" />">View Task</a></li>
                                    <li class="active">View Task Inbox</li>
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

                        			<h4 class="header-title m-t-10"> View Task</h4>
                                    
                                    
                                    <div class="row">
                                    <div class="col-lg-5">
                                    <div class="box dark">
                                    
       
        <div class="body">
            <div class="form-horizontal">
               <div class="panel panel-default">
                 <div class="panel-heading">
                <div class="form-group">
                    <h4 class="control-label col-lg-4">Project name :</h4> 
                  
                    <h4 class="control-label col-lg-1">${taskById.projectName}</h4>
                        
                </div>
                <!-- /.form-group -->

                <div class="form-group">
                    <label for="pass1" class="control-label col-lg-4"><b>Author</b> :</label>

                    <div class="col-lg-8">
                         ${taskById.Authors}
                    </div>
                </div>
                <!-- /.form-group -->

                <div class="form-group">
                    <label class="control-label col-lg-4">Assigned To :</label>

                    <div class="col-lg-8">
                      ${taskById.Assignee}
                     </div>
                </div>
                <!-- /.form-group -->
                 
                <div class="form-group">
                    <label class="control-label col-lg-4">Task Type :</label>

                    <div class="col-lg-8">
                       ${taskById.taskActivity}
                    </div>
                </div>
                <!-- /.form-group -->

                <div class="form-group">
                    <label for="text2" class="control-label col-lg-4">Task Priority :</label>

                    <div class="col-lg-8">
                      ${taskById.priority}
                    </div>
                </div>
                <!-- /.form-group -->


                <div class="form-group">
                    <label for="text4" class="control-label col-lg-4">Estimated Time :</label>

                    <div class="col-lg-8">
                        ${taskById.estimatedTime}
                    </div>
                </div>
                <!-- /.form-group -->

                <div class="form-group">
                    <label for="autosize" class="control-label col-lg-4">Module :</label>

                    <div class="col-lg-8">
                         ${taskById.module}
                    </div>
                </div>
                <!-- /.form-group -->

                <div class="form-group">
                    <label for="tags" class="control-label col-lg-4">Released Version :</label>

                    <div class="col-lg-8">
                       ${taskById.releaseName}
                    </div>
                </div>
                <!-- /.form-group -->
                
            </div>
        </div>
    </div>
    </div>
    </div>                              
      </div>
                                   

                                        <div class="col-lg-7">
                                         <div class="panel panel-warning">
                                         <div class="panel-heading">
					                          <h4>Task Title : ${taskById.taskTitle}</h4>
					                           <h5><b>Description</b> : ${taskById.taskDescription}</h5>
					                        </div>
                                               <br>
                                            <div class="panel panel-warning">
                                             <div class="panel-heading">
                                             <div class="row">
                                           
                                             <div class="form-group">
                                             Start Date : ${taskById.startDate}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             Expected Date : ${taskById.dueDate}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             Task Status :  ${taskById.taskStatus}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             Task Activity :  ${taskById.taskType}
                                             </div>
                                             </div>
                                            
					                        </div>
					                        </div>      
                                            <br>
                                             <div class="panel-heading">
                                            <table id="datatable-buttons" class="table table-striped table-bordered">
										     <thead>
                                                <tr>
                                                <th>User Notes</th>
                                                <th>Time spent</th>
                                                <th>Date Spent</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                 <c:forEach var="timespent" items="${timeSpentDetails}"> 
                                                <tr>
                                                <td>${timespent.userNotes}</td>
                                                <td>${timespent.timeSpent}</td>
                                                <td>${timespent.dateSpentOn}</td>
                                                </tr>
                                                 </c:forEach>
                                                </tbody>
                                                </table>
                                               </div>
                                                 <br>
                                                 <%-- <c:if test="${taskById.taskStatus == 'New'}">
                                             <div class="panel-heading">
                                             <form action="taskApproval" method="post">
                                          <input type="hidden" name="taskId" value="${taskById.taskId}" />
						<input type="hidden" name="userId" value="${userById.userId}" class="form-control"  />
                                             <h5><b>APPROVED BY :</b></h5>
										<select name="approvalBy" id="Assign"   class="form-control"  data-style="btn-white" >
										<option value="" label="Approval By"></option>
										<c:forEach items="${user}" var="emp" varStatus="status">
										<option value="${emp.userId}" >${emp.userName}</option>
											</c:forEach>
											</select>
											
											 <h5><b>Remarks :</b></h5>
											<textarea  name="remarks" cols="100" rows="4" > </textarea>
											
											<input type="submit" value="SUBMIT"> 
                                             </form>
                                             
                                               </div>
                                               </c:if> --%>
                                               </div>
                                          
                                               
                                        </div><!-- end col -->
                                    </div><!-- end row -->
                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->
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