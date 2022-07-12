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

        <script src="resources/js/modernizr.min.js"></script>
        
    </head>
    <body>

        <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
            <div class="text-center">
                <!-- <a href="check" class="logo"><span>WELCOME <span>WELEZO</span></span></a> -->
                <img src="resources/images/newlogo.png"/>
            </div>
        	<div class="m-t-40 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
                </div>
                <div class="panel-body">
                
		<!--  sign-in form start from here   -->
                    <form:form class="form-horizontal m-t-20" action="dashboard" modelAttribute="login">

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <form:input class="form-control" path="userMail" placeholder="username or email" required="required"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <form:input class="form-control" type="password" path="password" placeholder="Password" required="required"/>
                            </div>
                        </div>

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-custom">
                                    <input id="checkbox-signup" type="checkbox">
                                    <label for="checkbox-signup">
                                        Remember me
                                    </label>
                                </div>

                            </div>
                        </div>

                        <div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <button class="btn btn-custom btn-bordred btn-block waves-effect waves-light" type="submit">Log In</button>
                            </div>
                        </div>
                        <div class="col-sm-12 text-center">
                    	<p class="text-muted">Don't have an account? <a href="signup" class="text-primary m-l-5"><b>Sign Up</b></a></p>
                		</div>

                        <div class="form-group m-t-30 m-b-0">
                            <div class="col-sm-12">
                                <a href="forgotpwd" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                            </div>
                        </div>
                    </form:form>
	<!-- 	sign-in form end here   -->
                </div>
            </div>
            <!-- end card-box-->

            
        </div>
        <!-- end wrapper page -->
        
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
        <script src="resources/js/wow.min.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
	
	</body>
</html>