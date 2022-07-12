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
<meta name="keywords" content="welezo, HTML, CSS, XML, XHTML, JavaScript">
        <!-- Ap p Favicon -->
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
        <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>

<script>
    /*  WRITE THE VALIDATION SCRIPT IN THE HEAD TAG. */
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>

<!-- character validation script -->
<script>
    // WRITE THE VALIDATION SCRIPT IN THE HEAD TAG.
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>
<style>
.account-pages {
    background-size: cover;
    background-color: #52b532ad;
}
.panel-body {
    padding: 26px;
}
.btn-bordred.btn-custom {
    background-color: #84c870;
    border-bottom: 2px solid #4fa4f8 !important;
}
.wrapper-page{
margin-top: -5px;
margin-bottom: -30px;
}

</style>
  <script type="text/javascript">
                function validate(from)
                {
                	var error = document.getElementById("errorusername");
                    var Username = form["Username"].value;

                    error.innerHTML = "";

                    if (Username == null || Username == "") {
                      error.innerHTML = "Enter your name !!";
                      return false;
                    }

                    else if(!isNaN(Username))
                    {
                    error.innerHTML="Enter Only characters !";
                      return false;
                    }

                    if (Username.length < 3) {
                      error.innerHTML = "Your name should be minimum 3 character";
                      return false;
                    }
                    if (Username.length > 80) {
                      error.innerHTML = "Your name should be in between 3 to 80 character";
                      return false;
                    }/*end */  
                    
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


            		   var error = document.getElementById("errorphone");
                       var phone = form["phone"].value;

                       error.innerHTML = "";

                       if (phone == null || phone == "") {
                         error.innerHTML = "Enter your mobile number !";
                         return false;
                       }

                       else if(isNaN(phone))
          		     {
          		     error.innerHTML="Enter Only digits !";
          		       return false;
          		     }

                       else if(phone.length<10)
          		     {
          		     error.innerHTML="Mobile number should be atleast 10 digits !";
          		         return false;
          		     }
          		     else if(phone.length>11)
          		     {
          		     error.innerHTML="Mobile number should be atleast 10 digits !";
          		         return false;
          		     }
                   	   
            		 

            	    
            	}

                </script>
                <style> 
#example1 {
    border: 2px solid red;
    padding: 10px;
    border-radius: 25px;
}
.account-pages {
    background-size: cover;
    background-image: url('./resources/images/crmBg.jpg');
}
.btn-bordred.btn-custom {
    background-color: #17868d;
    border-bottom: 2px solid #4fa4f8 !important;
}
</style>
    </head>
    <body>

       <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
        	<div style="background-color: #17868d;margin-top: 11px !important;border-color: white" id="example1">
        		<div class="text-center">
                <img src="resources\images\logo.png" height="80" alt="Responsive image" />
            </div>
                <div class="panel-body">
                
		<!--  sign-in form start from here   -->
                  <form:form class="form-horizontal m-t-20" action="signup1" name="form" onsubmit="return validate()" modelAttribute="signup">

                        <div class="form-group ">
							<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
								<form:input  class="form-control" type="text" path="userName" placeholder="Username" id="Username" />
							</div>
							<font id="errorusername" style="color:red"></font>
						</div>
						
						
						<div class="form-group ">
							<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
								<form:input class="form-control" type="email" path="userMail"  placeholder="Yourname@welezohealth.com" id="email" />
							</div>
							<font id="erroremail" style="color:red"></font>
						</div>
						
						<div class="form-group">
						<div class="input-group">
						<span class="input-group-addon">
					    <i class="ace-icon fa fa-phone"></i>
							</span>
								<form:input class="form-control" type="text" path="mobileNumber"  id="phone"  placeholder="Mobile"  />
						</div>
							<font id="errorphone" style="color:red"></font>
						</div>
						
						
						<div class="form-group">
							<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-key"
								aria-hidden="true"></i></span>
								<form:input class="form-control" type="password" id="password1"  path="password" placeholder="Password" required="required"  />
							</div>
							<font id="errorpass" style="color:red"></font>
						</div>
						
						<div class="form-group">
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-key"
								aria-hidden="true"></i></span>
								<input class="form-control" type="password"  id="password2" name="pass2" onkeyup="checkPass(); return false;" placeholder="Confirm_Password" required="required"/>
							 <span id="confirmMessage" class="confirmMessage"></span>
						</div>
						<font id="errorpassword" style="color:red"></font>
						</div>
						
						

						
						<div class="form-group text-center m-t-40">
							<div class="col-xs-12">
							<p>${check}</p>
								<button class="btn btn-rounded btn-lg" type="submit" onclick="return validate()" style="color:white;background-color: #21a6e8c2;width:141px;height:35px;border-color: white">
									Register
								</button>
							</div>
						</div>
						
						 <div class="col-sm-12 text-center">
                    	<p class="text-muted">Already have account?<a href="check" class="text-primary m-l-5"><b>Sign In</b></a></p>
                		</div>
                		<div class="form-group">
							<div class="col-xs-12 text-center">
								<!-- <div class="checkbox checkbox-custom"> -->
								<!-- 	<input id="checkbox-signup" type="checkbox" checked="checked"> -->
									<label for="checkbox-signup" style="color:white"> <a href="./resources/images/LoginAndSignUp.pdf" target="_blank" style="color:white"><blink>  Click Here  <i class="fa fa-hand-o-right"> SignUp & LogIn Procedure </i>  </blink></a></label>
									<!-- <button class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#myModal">Standard Modal</button> -->
								<!-- </div> -->
							</div>
						</div>

                    </form:form>
	<!-- 	sign-in form end here   -->
                </div>
            </div>
            <!-- end card-box-->
	<!-- <div class="row">
				<div class="col-sm-12 text-center">
					<p class="text-muted">Already have account?<a href="check" class="text-primary m-l-5"><b>Sign In</b></a></p>
				</div>
			</div>
             -->
             
                       <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                 <div class="modal-header modal-header-success">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1><i class="glyphicon glyphicon-thumbs-up"></i> Term & Conditions</h1>
                </div>
                                                <div class="modal-body">
                                                    <h4>Text in a modal</h4>
                                                    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                                                    <hr>
                                                    <h4>Overflowing text to show scroll behavior</h4>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
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