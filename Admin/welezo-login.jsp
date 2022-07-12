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
        <link rel="shortcut icon" href="resources/images/favicon.ico">

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
         <script type="text/javascript">
                function validate(from)
                {
                    
            	 var error=document.getElementById("erroremail");
            	 var email=form["email"].value;

            	   error.innerHTML="";

            	   if( email==null || email==""){
            	       error.innerHTML="Enter your Welezo EmailId !";
            	       return false;
            	   }

            	   /* if(/^\w+([\.-]?\w+)*@\w+([.]?\w+)*(\w\w{3})*(\.\w{3})+$/.test(email) == false){ */
            	   /* if(/^(?=[^@]{3,20}@)([\w\.-]*[a-zA-Z0-9_]@(?=.{12,12}\.[a-z]{3}$)[\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z])$/.test(email) == false){ */
            		    //error message
            		   if(/^[a-zA-Z0-9\.]*@(welezohealth.com)$/.test(email) == false){ 
            		  error.innerHTML="invalid emailId please enter your emailID like yourname@welezohealth.com";
            		  return false;
            		}

            		   var error=document.getElementById("errorpass");
                  	    var pass=form["pass"].value;

                  	   error.innerHTML="";

                  	   if(pass==null || pass==""){
                  	       error.innerHTML="Enter your Password !";
                  	       return false;
                  	   }



            	}

                </script>
              <style>
.account-pages {
    background-size: cover;
    background-image: url('./resources/images/crmBg.jpg');
}
.panel-body {
    padding: 26px;
}
.btn-bordred.btn-custom {
    background-color: #17868d;
    border-bottom: 2px solid #4fa4f8 !important;
}
.wrapper-page{
margin-top: -5px;
margin-bottom: -10px;
}
</style>
<style> 
#example1 {
    border: 2px solid red;
    padding: 10px;
    border-radius: 25px;
}
</style>
    </head>
    <body>
 <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
        
        
        	<div  style="background-color: #17868d;margin-top: 121px !important;border-color: white" id="example1">
        		<div class="text-center">
                <img src="resources\images\logo.png" height="80" alt="Responsive image"/>
            </div>
                <div class="text-center">
                   <!--  <h4 class="text-uppercase font-bold m-b-0">Sign In</h4> -->
                </div> 
                <div class="panel-body">
                
		<!--  sign-in form start from here   -->
                    <form:form class="form-horizontal m-t-20" action="welezouser_dashboard" name="form" onsubmit="return validate()" modelAttribute="login">

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <form:input class="form-control" path="userMail" placeholder="Username or Email" id="email"/>
                                <font id="erroremail" style="color:white"></font>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <form:input class="form-control" type="password" path="password" placeholder="Password" id="pass"/>
                           <font id="errorpass" style="color:white"></font>
                            </div>
                        </div>

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-custom">
                                    <input id="checkbox-signup" type="checkbox">
                                    <label for="checkbox-signup" style="color:white">
                                        Remember me
                                    </label>
                                </div>

                            </div>
                        </div>

                        <div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <button class="btn btn-rounded btn-lg " onclick="return validate()"  type="submit" style="color:white;background-color: #21a6e8c2;width:141px;height:35px;border-color: white">LOGIN</button>
                            </div>
                        </div>
                        <div class="col-sm-12 text-center">
                    	<p class="text-muted" >Don't have an account? <a href="signup" class="text-info m-l-5"><b>Sign Up</b></a></p>
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