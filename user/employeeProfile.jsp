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

        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <!-- App title -->
        <title>WELEZO</title>

        <!-- Bootstrap Date picker css -->
        <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css" />
		<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
    

        <script src="resources/js/modernizr.min.js"></script>
<style>
.panel-heading {
    border: none !important;
    padding: 18px 68px;
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
                             <font face="verdana" class="page-title">EMPLOYEE PROFILE</font>
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
           
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                    <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-color panel-tabs panel-warning">
                                    <div class="panel-heading">
                                    
                                        <ul class="nav nav-pills pull-right">
											<li class="active">
												<a href="#navpills-1" data-toggle="tab" aria-expanded="true">PERSONAL DETAILS</a>
											</li>
											
											<li class="">
												<a href="#navpills-2" data-toggle="tab" aria-expanded="false">LEAVES</a>
											</li>
											
											<li class="">
											<a href="#navpills-3" data-toggle="tab" aria-expanded="false">GOALS</a>
											
											<li class="">
												<a href="#navpills-4" data-toggle="tab" aria-expanded="false">ROLES</a>
											</li>
											
											<li class="">
												<a href="#navpills-5" data-toggle="tab" aria-expanded="false">BANK DETAILS</a>
											</li>
											
											<li class="">
												<a href="#navpills-6" data-toggle="tab" aria-expanded="false">PERFORMANCE</a>
											</li>
											
											<li class="">
												<a href="#navpills-7" data-toggle="tab" aria-expanded="false">ATTENDENCE</a>
											</li>
											
											<li class="">
												<a href="#navpills-8" data-toggle="tab" aria-expanded="false">PAYSLIP</a>
											</li>
											
										</ul>
                                        <h3 class="panel-title">: </h3>
                                    </div>
                                    <div class="panel-body">
										<div class="tab-content">
											<div id="navpills-1" class="tab-pane fade in active">
												<div class="row">
                                                    <div class="col-md-12">
                                                       <div>
                                                          <img src="data:image/png;base64,${empImge}" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image">
												            <div class="text-left">
																
															<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Emp ID :</strong> <span class="m-l-15">${employeeById.employeeId}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>EMP Name:</strong><span class="m-l-15">${employeeById.empName}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Father Name :</strong> <span class="m-l-15">${employeeById.FHName}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Relationship :</strong> <span class="m-l-15">${employeeById.relationship}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>D O B :</strong> <span class="m-l-15">${employeeById.dob}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Gender :</strong><span class="m-l-15">${employeeById.gender}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Marital status:</strong> <span class="m-l-15">${employeeById.maritalStatus}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Emergency Contact :</strong> <span
																			class="m-l-15">${employeeById.emergencyContact}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Personal contact :</strong> <span
																			class="m-l-15">${employeeById.personalContact}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Personal Email :</strong> <span class="m-l-15">${employeeById.personalEmail}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Blood group :</strong><span class="m-l-15">${employeeById.bloodGroup}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Permanent address</strong> <span
																			class="m-l-15">${employeeById.permanentAddress}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Communication Address :</strong> <span
																			class="m-l-15">${employeeById.communicationAddresss}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Remarks :</strong> <span
																			class="m-l-15">${employeeById.remarks}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>NOTE* :</strong> <span
																			class="m-l-15">"If there is any changes in your Profile Data Conatct HR."</span>
																	</p>
																</div>
															</div>
											                </div>
                                                    </div>
												</div>
											</div>
											<div id="navpills-2" class="tab-pane fade">
												<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												 <div align="left">

													<a href="leaveRequestAdmin?userId=<c:out value="${USERID}" />"
														class="btn btn-info btn-md waves-effect waves-light"
														data-overlaySpeed="200" data-overlayColor="#36404a">APPLY LEAVE
													</a>
												<div>
												<br/>
					              <div class="text-left">
					               <div class="table table-responsive">
									<table class="table" id="t01" bordercolor="black" border='1'>
        									<thead>
	                    					<tr class="info">
											<th>Id</th>
                                          	 	<th class="filtername">Employee Name</th>
                                              	<th class="filtername1">Total Days</th>
                                             	<th class="filtername2">From Date</th>
                                             	<th class="filtername3">To Date</th>
                                                <th class="filtername4">Leave Type</th>
                                                <th class="filtername5">Status</th>
                                                 <th class="filtername6">Report TO</th>
                                                   <th class="filtername7">Action</th>
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${leavesList}" var="leaves" varStatus="counter">
                        <tr>
                        <td><c:out value="${counter.index + 1}" /></td>
                        	<td class="account-name sort-value"><c:out value="${leaves.empName}" /></td>
                        	<td class="account-name1 sort-value"><c:out value="${leaves.totalDays}" /></td>
                       		<td class="account-name2 sort-value"><c:out value="${leaves.fromDate}"/></td>
                       		<td class="account-name3 sort-value"><c:out value="${leaves.toDate}"/></td>
                        	<td class="account-name4 sort-value"><c:out value="${leaves.leaveType}"/></td> 
                        	<td class="account-name5 sort-value"><c:out value="${leaves.status}"/></td> 
                        	 	<td class="account-name6 sort-value"><c:out value="${leaves.report}"/></td>
                        	 	<c:if test="${leaves.status == 'New'}">
                        	 	<td><a href="cancelLeaveReq?requestId=<c:out value='${leaves.requestId}'/>&userId=<c:out value='${USERID}'/>" >
                        	 	<button type="button" class="btn btn-warning btn-xs" onclick="return confirm('Are you sure!!Do you want to Cancel Your leave?' ) ">Cancel</button></a></td> </c:if>
                        	 	<c:if test="${leaves.status == 'Cancelled' || leaves.status == 'Approved' || leaves.status == 'Rejected' }">
                        	 	<td><a href="#"><button type="button" class="btn btn-success btn-xs" onclick="return confirm('you can't change here!! please contact HR' ) ">${leaves.status}</button></a></td>
                        	 	</c:if>
                        </tr>
                    </c:forEach>
                       </tbody>
                       </table>
                       </div>
                       </div>
																</div>
					                            </div>
													</div>
												</div>
											</div>
											<div id="navpills-3" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
													 <div align="left">

													<a href="goalSettings?userId=<c:out value="${USERID}" />"
														class="btn btn-info btn-md waves-effect waves-light"
														data-overlaySpeed="200" data-overlayColor="#36404a">ADD GOALS	</a>
										</div>
										<br/>
                                                        <div>
                                                         <div class="table table-responsive">
													  <table class="table" id="t01" bordercolor="black" border='1'>
        																	<thead>
        																	<tr>
	                    														<th>Id</th>
                                    	<th>Plan Title</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                        <th>Goal Status</th>
                                        <th>Goal Info</th>
                                        <th>Set For</th>
                                         <th>Set By</th>
											
											</tr></thead>
											 <tbody>
                                              <c:forEach items="${goalsAdmin}" var="goal" varStatus="counter">
                        <tr>
                             <td><c:out value="${counter.index + 1}" /></td>
                        	<td class="account-name sort-value"><a href="editGoalsAdmin?goalId=<c:out value='${goal.goalId}'/>"><c:out value="${goal.goalName}"/></a></td>
                        	<td class="account-name1 sort-value"><c:out value="${goal.goalFrom}"/></td>
                       		<td class="account-name2 sort-value"><c:out value="${goal.goalTo}"/></td>
                        	<td class="account-name3 sort-value"><c:out value="${goal.status}"/></td> 
                        	<td class="account-name4 sort-value"><c:out value="${goal.goalInfo}"/></td>
                        	<td class="account-name5 sort-value"><c:out value="${goal.setFor}"/></td>
                        	<td class="account-name6 sort-value"><c:out value="${goal.setBy}"/></td>
                            
                        </tr>
                    </c:forEach>
                     </tbody>
                    </table>
                    </div>
				                               
											</div>
													</div>
												</div>
											</div>
											
											<div id="navpills-4" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
													 <div class="table table-responsive">
                                                      <table class="table" id="t01" bordercolor="block" border='1'>
        									<thead>
	                    					<tr class="info">
											<th>Join Date</th>
											<!-- <th>Till Date</th> -->
											<th>Designation(Grade-Department)</th>
											<th>Report To</th>
											<th>Emp Type</th>
											<th>Salary Slab</th>
											
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${empRoleDesignation}" var="role">
                                <tr class="success">
                        	
                        	 <td><c:out value="${role.fromDate}" /></td>
                        	<%--  <td><c:out value="${role.toDate}"/></td> --%>
                        	 <td><c:out value="${role.designation}"/></td>
                        	  <td><c:out value="${role.companyName}"/></td>
                        	  <td><c:out value="${role.level}"/></td>
                        	  <td><c:out value="${role.specialization}"/></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
													</div>
												</div>
											</div>
										<!--  -->	
											
											<div id="navpills-5" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
													 <div class="table table-responsive">
                                                      <table class="table" id="t01" bordercolor="black" border='2' >
        									<thead>
	                    					<tr class="info">
											<th>Name</th>
											<th>Details</th>
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${employeeACCDetails}" var="accounts">
                      <tr class="success">
                        	<td><c:out value="${accounts.question}"/></td>
                        	 <td><c:out value="${accounts.answer}" /></td>
                        </tr>
                        </c:forEach>
                     </tbody> 
                    </table>
                    </div>
													</div>
												</div>
											</div>
											
											<!--  -->
											<div id="navpills-6" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
													 <div class="table table-responsive">
                                                      <table class="table" id="t01" bordercolor="black" border='2' >
        									<thead>
	                    					<tr class="info">
											<th>Name</th>
											<th>Details</th>
											</tr></thead>
											 <tbody>
                                           <%--  <c:forEach items="${employeeACCDetails}" var="accounts">
                      <tr class="success">
                        	<td><c:out value="${accounts.question}"/></td>
                        	 <td><c:out value="${accounts.answer}" /></td>
                        </tr>
                        </c:forEach> --%>
                     </tbody> 
                    </table>
                    </div>
													</div>
												</div>
											</div>
											
											<!--  -->	
											
											<div id="navpills-8" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
                                                     <form action="autoPaySlip" >
									<p><h3><b>MONTHLY SALARY PAY SLIP</b></h3></p>
									<input type="hidden" name="empId" value="${employeeById.empId}">
									<%-- <select name="empId"  >
							<option value="${employeeById.empId}">${employeeById.empName}</option>
							</select> --%>
							<div class="col-sm-4">
							<select name="month" class="form-control">
											<option value="2017/01/31" >Select Salary Month </option>
											<c:forEach items="${monthList}" var="list" >
											<option value="${list.payforMonth}" >${list.months}</option>
											</c:forEach>
											
											</select>
							</div>
							<input type="submit" class="btn btn-primary btn-sm" value="VIEW">
									</form>
									<br/>
									<br/>
									</div>
												</div>
											</div>
											
											<!--  -->
											<!--  -->	
											
											<div id="navpills-7" class="tab-pane fade">
												<div class="row">
													<div class="col-md-12">
                                                     <h3><b> View Your Attendance :</b></h3>
									<h4><a href="attendance13?empId=<c:out value='${employeeById.empId}'/> "><u>Click Here</a></u></h4>
													</div>
												</div>
											</div>
											
											<!--  -->
										</div>
									</div>
                                </div>
                            </div><!-- end col -->

                            <!-- <div class="col-lg-6">
                                <div class="card-box card-tabs">
                                    <ul class="nav nav-pills pull-right">
                                        <li class="active">
                                            <a href="#cardpills-1" data-toggle="tab" aria-expanded="true">Tab One</a>
                                        </li>
                                        <li class="">
                                            <a href="#cardpills-2" data-toggle="tab" aria-expanded="false">Tab Two</a>
                                        </li>
                                        <li class="">
                                            <a href="#cardpills-3" data-toggle="tab" aria-expanded="false">Tab Three</a>
                                        </li>
                                    </ul>
                                    <h4 class="header-title m-b-30">Card with tabs</h4>

                                    <div class="tab-content">
                                        <div id="cardpills-1" class="tab-pane fade in active">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p>
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                        accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                        non cupidatat skateboard dolor brunch. Food truck quinoa
                                                        nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua
                                                        put a bird on it squid single-origin coffee nulla assumenda
                                                        shoreditch et.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="cardpills-2" class="tab-pane fade">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p>
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                        accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                        non cupidatat skateboard dolor brunch. Food truck quinoa
                                                        nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua
                                                        put a bird on it squid single-origin coffee nulla assumenda
                                                        shoreditch et.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="cardpills-3" class="tab-pane fade">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p>
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                        accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                        non cupidatat skateboard dolor brunch. Food truck quinoa
                                                        nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua
                                                        put a bird on it squid single-origin coffee nulla assumenda
                                                        shoreditch et.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>end col -->
                        </div>
                        <!-- end row -->

              <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-color panel-tabs panel-success">
                                    <div class="panel-heading">
                                    
                                        <ul class="nav nav-pills pull-right">
											<li class="active">
												<a href="#navpills-9" data-toggle="tab" aria-expanded="true">LEAVES POLICY</a>
											</li>
											
											<li class="">
												<a href="#navpills-10" data-toggle="tab" aria-expanded="false">HAND BOOK</a>
											</li>
											
											<li class="">
											<a href="#navpills-11" data-toggle="tab" aria-expanded="false">TRAINING MODULE</a>
											
											<li class="">
												<a href="#navpills-12" data-toggle="tab" aria-expanded="false">Holiday Master</a>
											</li>
											
										
											
										</ul>
                                        <h3 class="panel-title">: </h3>
                                    </div>
                                    <div class="panel-body">
										<div class="tab-content">
											<div id="navpills-9" class="tab-pane fade">
												<div class="row">
                                                    <div class="col-md-12">
                                                        Coming soon tab-1
                                                    </div>
												</div>
											</div>
										
										<div id="navpills-10" class="tab-pane fade">
												<div class="row">
                                                    <div class="col-md-12">
                                                      <a href="./resources/images/BOOK.pdf" target="_blank"><u><b>Click here to see hand book(Password-welezo@2017)</b></u></a>  
                                                    </div>
												</div>
											</div>
											
											<div id="navpills-11" class="tab-pane fade">
												<div class="row">
                                                    <div class="col-md-12">
                                                       <a href="./resources/images/Training Module.pdf" target="_blank"><u><b>Click here to see Telesales Training Module Hand Book(Password-welezo)</b></u></a>
                                                    </div>
												</div>
											</div>
											
											<div id="navpills-12" class="tab-pane fade">
												<div class="row">
                                                   <div class="col-md-12">
                                                       
                                                       <div class="table table-responsive">
                                                       <table class="table table-bordered">
                                                       <tr style="background-color: menu;">
                                                       <th>Sl.No</th>
                                                       <th>Holidays Name</th>
                                                       <th>Day</th>
                                                       <th>Date</th>
                                                       </tr>
                                                       <tbody>
                                                       <c:forEach items="${holiday}" var="holiday" varStatus="loop">
                                                       <tr>
                                                       <td><c:out value="${loop.index+1}"></c:out></td>
                                                       <td><c:out value="${holiday.holiday_name}"></c:out></td>
                                                       <td><c:out value="${holiday.holiday_day}"></c:out></td>
                                                       <td><c:out value="${holiday.datetime}"></c:out></td>
                                                       </tr>
                                                       </c:forEach>
                                                       </tbody>
                                                       </table>
                                                       </div>
                                                    </div>
												</div>
											</div>
											<!--  -->
										</div>
									</div>
                                </div>
                            </div><!-- end col -->

                         
                        </div>
                        <!-- end row -->

                        
                       
                            </div><!-- end col -->

                            
                        </div>
                        <!-- end row -->
                        
                         <!-- end row -->
                    </div> <!-- container -->

               

                 <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        




  
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

       <script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/jszip.min.js"></script>
              
        <script src="resources/plugins/datatables/pdfmake.min.js"></script>
              
        <script src="resources/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="resources/pages/datatables.init.js"></script>
        
       <!-- Plugins Js -->
       <script src="resources/plugins/switchery/switchery.min.js"></script>
       <script
              src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
       <script type="text/javascript"
              src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
       <script type="text/javascript"
              src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
       <script src="resources/plugins/select2/dist/js/select2.min.js"
              type="text/javascript"></script>
       <script
              src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"
              type="text/javascript"></script>
       <script
              src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"
              type="text/javascript"></script>
       <script src="resources/plugins/moment/moment.js"></script>
       <script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
       <script
              src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
       <script
              src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
       <script
              src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
       <script
              src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
              type="text/javascript"></script>


       <!-- Datatable init js -->
       <script src="resources/pages/datatables.init.js"></script>

       <!-- App js -->
       <script src="resources/js/jquery.core.js"></script>
       <script src="resources/js/jquery.app.js"></script>

       <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

       <script>
            jQuery(document).ready(function() {

                /* advance multiselect start */
                $('#my_multi_select3').multiSelect({
                    selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    afterInit: function (ms) {
                        var that = this,
                            $selectableSearch = that.$selectableUl.prev(),
                            $selectionSearch = that.$selectionUl.prev(),
                            selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                            selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                        that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                            .on('keydown', function (e) {
                                if (e.which === 40) {
                                    that.$selectableUl.focus();
                                    return false;
                                }
                            });

                        that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                            .on('keydown', function (e) {
                                if (e.which == 40) {
                                    that.$selectionUl.focus();
                                    return false;
                                }
                            });
                    },
                    afterSelect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    },
                    afterDeselect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    }
                });

               /*  Select2 */
                $(".select2").select2();

                $(".select2-limiting").select2({
                             maximumSelectionLength: 2
                           });

            });

            /* Bootstrap-TouchSpin */
            $(".vertical-spin").TouchSpin({
                verticalbuttons: true,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                verticalupclass: 'ti-plus',
                verticaldownclass: 'ti-minus'
            });
            var vspinTrue = $(".vertical-spin").TouchSpin({
                verticalbuttons: true
            });
            if (vspinTrue) {
                $('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
            }

            $("input[name='demo1']").TouchSpin({
                min: 0,
                max: 100,
                step: 0.1,
                decimals: 2,
                boostat: 5,
                maxboostedstep: 10,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                postfix: '%'
            });
            $("input[name='demo2']").TouchSpin({
                min: -1000000000,
                max: 1000000000,
                stepinterval: 50,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                maxboostedstep: 10000000,
                prefix: '$'
            });
            $("input[name='demo3']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_21']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_22']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            $("input[name='demo5']").TouchSpin({
                prefix: "pre",
                postfix: "post",
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo0']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            // Time Picker
            jQuery('#timepicker').timepicker({
                defaultTIme : false
            });
            jQuery('#timepicker2').timepicker({
                showMeridian : false
            });
            jQuery('#timepicker3').timepicker({
                minuteStep : 15
            });

           /*  colorpicker start */

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

      /*       Date Picker */
            jQuery('#datepicker').datepicker();
            jQuery('#datepicker-autoclose').datepicker({
              format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });


            jQuery('#datepicker').datepicker();
            jQuery('#date-range').datepicker({
              format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            
                     
            
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "dd/mm/yyyy",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
                toggleActive: true
            });

           /*  Date range picker */
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 30,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'DD/MM/YYYY',
                minDate: '06/01/2016',
                maxDate: '06/30/2016',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary',
                dateLimit: {
                    days: 6
                }
            });

            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                format: 'DD/MM/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2016',
                maxDate: '12/31/2016',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-success',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            });

         /*    Bootstrap-MaxLength */
            $('input#defaultconfig').maxlength()

            $('input#thresholdconfig').maxlength({
                threshold: 20
            });

            $('input#moreoptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger"
            });

            $('input#alloptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger",
                separator: ' out of ',
                preText: 'You typed ',
                postText: ' chars available.',
                validate: true
            });

            $('textarea#textarea').maxlength({
                alwaysShow: true
            });

            $('input#placement').maxlength({
                alwaysShow: true,
                placement: 'top-left'
            });
        </script>

    </body>
</html>