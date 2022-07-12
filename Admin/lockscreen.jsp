<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App title -->
        <title>Welezo</title>

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
            <!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i class="zmdi zmdi-layers"></i></a> -->
				<img  class="img-responsive" src="resources\images\newlogo.png"  />
			</div>
        	<div class="m-t-40 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Welcome Back</h4>
                </div>
                <div class="panel-body">
                    <form method="post" action="" role="form" class="text-center">
						<div class="user-thumb">
							<img src="assets/images/users/avatar-1.jpg" class="img-responsive img-circle img-thumbnail" alt="thumbnail">
						</div>
						<div class="form-group">
							<p class="text-muted m-t-10">
								Enter your password to access the Admin.
							</p>
							
							<div class="input-group m-t-30">
								<input type="password" class="form-control" placeholder="Password" required="">
								<span class="input-group-btn">
								<button type="button" value=" Go Back !" onclick="history.back(-1)" class="btn btn-primary" >
                             <span class="glyphicon glyphicon-chevron-left"></span> Log In </button>
									<!-- <button type="submit" class="btn btn-pink w-sm waves-effect waves-light">
										Log In
									</button> -->
								</span>
							</div>
						</div>

					</form>


                </div>
            </div>
            <!-- end card-box -->

			<div class="row">
				<div class="col-sm-12 text-center">
					<p class="text-muted">Not Michael Zenaty?<a href="page-login.html" class="text-primary m-l-5"><b>Sign In</b></a></p>
				</div>
			</div>

        </div>
        <!-- end wrapper -->




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