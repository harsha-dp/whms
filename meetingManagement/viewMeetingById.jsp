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

        <!-- App Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App title -->
        <title>WELEZO</title>

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
       <!--   <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
 <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

        <script src="resources/js/modernizr.min.js"></script>
<style>
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" > </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                                <font class="page-title"> MEETING DETAILS</font>
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
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
<br>
                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card-box">

                                <!-- <div >
                        			<h3 class="header-title  m-t-0 m-b-30" align="left"> <u></u></h3>
                        			<h3 class="header-title  m-t-0 m-b-30" align="right"> <u>MOM</u></h3>
                   </div> -->
                   <div>
  				<div class="pull-left">
  			<h3><u>Message Inbox</u></h3>
  </div>
  <%-- <div class="pull-right">
  <h4 class="text-right"><a href="enterMOM?id=<c:out value="${meetingById.id}" />"><u>Enter MOM</u></a></h4>
  </div> --%>
  <div class="clearfix"></div>
</div>
                   <div class="container-fluid">
                        		  <div class="row">
                        		  <table border="1" width="100%">
                        		  <tr>
                        		  <td class="col-sm-3 col-md-4" style="background-color:#CBD7D6;">
                        			<h5><b>Meeting Date</b> : ${meetingById.mDate}</h5>
                        			<h5><b>Time</b> :  ${meetingById.mTime}</h5>
                        			<h5><b>Duration</b> : ${meetingById.duration} </h5>
                        			<h5><b>Location</b> : ${meetingById.place}</h5>
                        			</td>
                        			<td class="col-sm-3 col-md-4" style="background-color:#CBD7D6;">
                        			<h5><b>MEETING HOST</b> : ${meetingById.host}</h5>
                        			<h5><b>MEETING NAME</b> :${meetingById.mName}</h5>
                        			<h5><b>TYPE OF MEETING</b> : ${meetingById.mType}</h5>
                        			<br/>
                        			</td>
                        			<td class="col-sm-3 col-md-4" style="background-color:#CBD7D6;">
                        			<h5><b>Status Of Meeting</b> : NA</h5>
                        			<h5><b>TIME KEEPER </b>: Purpose</h5>
                        			<h5><p>&nbsp;</p></h5>
                        			</td>
                        			</tr>
                        			</table>
                        			</div>
                        			<br/>
                        			      <hr>                  		
                        			
                        			
                        			<div class="col-lg-12">
                        			<table class="table table-sm table-inverse" border="2" >
                        			   <tr>
                        			   <th><b>ATTENDEES PRESENT </b></th> <td><b>${meetingAttendees} </b></td>
                        			 </tr>
                        			 <tr>
                        			    <th><b>ATTENDEES NOT PRESENT </b></th> <td><b>NA </b></td>
                        			   </tr>
                        			    <tr>
                        			    <th><b>DESCRIPTION</b> </th>
                        			     <td><b>${meetingById.mDescription}</b> </td>
                        			   </tr>
                        			</table>
                        			<br/>
                        			<hr/>
                        			<h4><u>MOM Description</u></h4>
                        			<div class="pull-right">
  				<h4 class="text-right"><a href="enterMOM?id=<c:out value="${meetingById.id}" />"><u>Enter MOM</u></a></h4>
  					</div>
	                                            <table class="table table-sm table-inverse"  border="1" style="width: 100%">
                                                 <thead>
									         <tr>
											<th>Meeting Description</th>
											<th>Action Item</th>
											<th>Updated By</th>
	                    					</tr>
									        </thead>
											<tbody>
											<c:forEach items="${momList}" var="list">
											<tr>
											<td>${list.minutesOfMeeting}</td>
											<td>${list.actionItems}</td>
											<td>${list.empName}</td>
											</tr>
											</c:forEach>
	                						</tbody>
                                               </table>
                        			</div>
                        			</div><!-- end row -->
                        		</div>
                        	</div><!-- end col -->
                        </div>
                        <!-- end row -->
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
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>


    </body>
</html>