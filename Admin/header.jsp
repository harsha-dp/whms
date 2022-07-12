<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@page errorPage="/check" %> 

<html>
<head>
<title>Welezo</title>
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<style>
.navbar .nav>li>a>.label {
    position: absolute;
    top: 8px;
    right: 107px;
    text-align: center;
    font-size: 9px;
    padding: 2px 2px 2px 2px;
    line-height: .9;
}
.label-success {
    background-color: red;
}

.navbar-default .navbar-nav>li>a {
    margin-top: 1px;
    }
    .fa-envelope-o:before {
    content: "\f003";
    color: black;
}

.container {
    padding-top: 5px;
}

</style>
</head>
<body>

 <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                  <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" id="logo" width="100%" /> </a>
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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x " aria-hidden="true"  style="font-size:20px;"> </i>  </a>
                            </li>
                            <li class="hidden-xs hidden-sm">
                                 <font class="page-title" >PREVENTIVE HEALTH CARE </font>
                            </li>
                            
                        </ul>
                        
                       
                          <%-- <ul class="nav navbar-nav navbar-center" style="font-size:2vw;">
                           <li>
                              <a href="viewMeeting?userId=<c:out value="${USERID}" />"> <i class="fa fa-envelope fa-md" style="color:blue" aria-hidden="true"> <span class="badge  badge-danger">${meetingNotification.total}</span> </i> </a>
                            </li>
                          </ul> --%>
                          
                        <ul class="nav navbar-nav navbar-right">
								
            		<h2><a class="account"><img src="data:image/png;base64,${empImge1}" class="img-circle"  style="height: 22px; padding-left: 3px; margin:-2px 4px -1px -44px;">${USERNAME} </a></h2>
                             <div class="dropdown">
									<div class="submenu">
									<ul class="root">
								<li><a href="userProfile?userId=<c:out value="${USERID}" />"><i class="fa fa-camera" aria-hidden="true"></i> Profile</a></li>
									<li><a href="#custom-modal2" data-animation="door" data-plugin="custommodal"
                                                    	data-overlaySpeed="100" data-overlayColor="#36404a"> <i class="fa fa-key" aria-hidden="true"></i>
									 Change Password
									 </a> </li>
                                                    	<li>
									<li ><a href="#settings"><i class="fa fa-cog" aria-hidden="true"></i> Settings</a></li>
									<li ><a href="logout?userId=<c:out value="${USERID}" />"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
									</ul>
									</div>
								</div>
            
					</ul>
					 <ul class="nav navbar-nav navbar-right hidden-sm hidden-xs" >
                         <li class="dropdown messages-menu">
            <a href="viewMeeting?userId=<c:out value="${USERID}" />" >
              <i class="fa fa-envelope-o"></i>

              <span class="label label-success">${meetingNotification.total}</span>
            </a>
           </li>
           
          <!--  <li class="dropdown notifications-menu hidden-sm hidden-xs">
            <a href="#" class="dropdown messages-menu" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            </li> -->
            
            </ul>

                        <!-- Right(Notification and Searchbox -->
              

                    </div><!-- end container -->
                </div><!-- end navbar -->
                
                
                
            </div>
            <!-- Top Bar End -->

                <!-- Button mobile view to collapse sidebar menu -->
               <%--  <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                          <div class="topbar-left">
                           <a href="welezouser_dashboard" class="logo"><img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /> </a>
                          </div> 
                            <li>
                                <font class="page-title1">PREVENTIVE HEALTH CARE</font>
                            </li>	
                        </ul>
                       <!--    <label id="lblGreetings"></label> -->
                         <ul class="nav navbar-nav navbar-center" style="margin-top: 9px">
                            <li style="margin-left: 440px">
                             <a href="viewMeeting?userId=<c:out value="${USERID}" />"> <i class="fa fa-envelope fa-lg" style="color:blue" aria-hidden="true"> <span class="badge  badge-danger" style="margin-top: -25px;margin-right: 7px">${meetingNotification.total}</span> </i> </a>
                            </li> 
                            <!-- <li id="lblGreetingss"></li> -->
                            
                        </ul>
                        <ul class="nav navbar-nav navbar-right" style="width:auto;">
									<h2><a class="account"><img src="data:image/png;base64,${empImge1}" class="img-circle"  style="height: 22px; padding-left: 3px; margin:-2px 4px -1px -44px;">${USERNAME} </a></h2>
                             <div class="dropdown">
									<div class="submenu">
									<ul class="root">
								<li><a href="userProfile?userId=<c:out value="${USERID}" />"><i class="fa fa-camera" aria-hidden="true"></i> Profile</a></li>
									<li><a href="#custom-modal2" data-animation="door" data-plugin="custommodal"
                                                    	data-overlaySpeed="100" data-overlayColor="#36404a"> <i class="fa fa-key" aria-hidden="true"></i>
									 Change Password
									 </a> </li>
                                                    	<li>
									<li ><a href="#settings"><i class="fa fa-cog" aria-hidden="true"></i> Settings</a></li>
									<li ><a href="logout?userId=<c:out value="${USERID}" />"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
									</ul>
									</div>
								</div>
                        </ul>
                    </div><!-- end container -->
                </div><!-- end navbar -->
 --%>
			<!-- Modal -->
			<div id="custom-modal2" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.close();">
			<span>&times;</span><span class="sr-only">Close</span>
		</button>
		<div align="center" style="background-color: #719bda">
			    <h4 class="custom-modal-title">Change Password</h4>
			    </div>
			    <div class="custom-modal-text">
			        <div class="custom-modal-text text-left">
			      
			        <form:form  name="ValidationForm" action="changePassword" modelAttribute="usermasterDTO">
			        <form:hidden path="userId" value="${USERID}" class="form-control"  />
			        	
                        
			        	<div class="form-group">
                            <label for="name">Current Password</label>
                            <form:input type="password" path=""  class="form-control" placeholder="Enter old password" />
                        </div>
                        
                        <div class="form-group">
                            <label for="pass1">New Password</label>
                            <form:input type="password" id="password1"  path="password" class="form-control" placeholder="Enter new passworrd" />
                        </div>
                       
                        <div class="form-group">
                            <label for="pass2">Confirm Password</label>
                            <form:input  type="password" id="password2" path="userName" class="form-control"  onkeyup="checkPass(); return false;" placeholder="Enter confirm password" />
                         
                        </div>
                        <div align="center">
                                        <button type="submit" class="btn btn-primary">Save</button>
					                  <button type="reset" class="btn btn-primary">Clear</button>
                    </div>
                    </form:form>
			    </div>
			    </div>
			</div>
</body>
<!-- <script>
$.noConflict();
</script> -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
							<script type="text/javascript" >
							$(document).ready(function()
							{
							
							$(".account").click(function()
							{
							var X=$(this).attr('id');
							if(X==1)
							{
							$(".submenu").hide();
							$(this).attr('id', '0');
							}
							else
							{
							$(".submenu").show();
							$(this).attr('id', '1');
							}
							});
							//Mouse click on sub menu
							$(".submenu").mouseup(function()
							{
							return false
							});
							
						
							$(document).mouseup(function()
							{
							$(".submenu").hide();
							$(".account").attr('id', '');
							});
							});

							
									
							</script>
							
<script type="text/javascript">
window.onload = function () {
	document.getElementById("password1").onchange = validatePassword;
	document.getElementById("password2").onchange = validatePassword;
}
function validatePassword(){
var pass2=document.getElementById("password2").value;
var pass1=document.getElementById("password1").value;
if(pass1!=pass2)
	document.getElementById("password2").setCustomValidity("Passwords Don't Match");
else
	document.getElementById("password2").setCustomValidity('');	 
//empty string means no validation error
}
</script>
<script>
    var myDate = new Date();
    var hrs = myDate.getHours();

    var greet;

    if (hrs < 12)
        greet = 'Good Morning';
    else if (hrs > 11 && hrs <= 15)
        greet = 'Good Afternoon';
    else 
        greet = 'Good Evening';

    document.getElementById('lblGreetingss').innerHTML =
        '<b>' + greet + '</b> !';
</script> 
									<style>
							.dropdown
							{
							color: #555;
						    margin: 12px -22px 0 0;;
							width: 143px;
							position: relative;
							height: 17px;
							text-align:left;
							}
							.submenu
							{
							background: #fff;
							position: absolute;
							top: -12px;
							left: -20px;
							z-index: 100;
							width: 150px;
							display: none;
							margin-left: -13px;
							padding: 40px 0 5px;
							border-radius: 6px;
							box-shadow: 0 2px 8px rgba(0, 0, 0, 0.45);
							}
							.dropdown li a
							{
							color: #555555;
							display: block;
							font-family: arial;
							font-weight: bold;
							padding: 6px 15px;
							cursor: pointer;
							text-decoration:none;
							}
							
							.dropdown li a:hover
							{
							background:#155FB0;
							color: #FFFFFF;
							text-decoration: none;
							}
							a.account 
							{
							font-size: 11px;
							line-height: 16px;
							color: black;
							position: absolute;
							z-index: 110;
							display: block;
							padding: 11px 0 0 20px;
							height: 28px;
							width: 121px;
							margin: 5px 0 0 -10px;
							text-decoration: none;
							background: url(icons/arrow.png) 116px 17px no-repeat;
							cursor:pointer;
							}
							.root
							{
							list-style:none;
							margin:0px;
							padding:0px;
							font-size: 11px;
							padding: 11px 0 0 0px;
							border-top:1px solid #dedede;
							}
							

.notification-icon .badge {
     background-color: red;
     margin-top: -20px;
}
							</style>
							

</html>