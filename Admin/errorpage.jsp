<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="Lohith" content="SOFTWARE ENG.">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>WELEZO</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="resources/plugins/morris/morris.css">

        <!-- App css -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
		<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
		<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
		
        <script src="resources/js/modernizr.min.js"></script>
<style>

.account-pages{
 height: 100%; 
 background-position: center;
 background-size: cover;
 float:right;
}
h4{color:#b73636f5;text-align: center;
 font-weight: bold;
 font-size: 17px;
 }
#buttons{margin: 103px;
    margin-top: 207px;
    color: red;
    font-size: 11px;
    font-weight: 700;
   
       
    }
    #borde{
box-shadow: 1px 2px 5px #000000;
border: 1px solid white;
}
 #borde1{
box-shadow: 1px 2px 5px #000000;
border: 1px solid white;
}

</style>

    </head>
    <body>
<%@ page isErrorPage="true" %>  
      
       <div class="account-pages" style="background-image: url(./resources/images/error.png);"></div>
     
        <div class="clearfix"></div>
        <div class="wrapper-page">
        
        <div class="container">
     
    <!--   <div  class="bottom-left" style="padding:20px">
			  
                 <button type="button" value=" Go Back !" onclick="history.back(-1)" class="btn btn-primary">
                             <span class="glyphicon glyphicon-chevron-left"></span> Go Back </button>
                            
                       
                     
                             	
						
                           <a class="btn btn-success waves-effect waves-light" href="check" id="btnSubmit">
                           <i class="fa fa-sign-in" aria-hidden="true"></i>  Log-In </a>
                           
                         
                           
                            
       </div>
        -->
        
        
            <%-- <div id="errors">
                <h3 class="text-danger">Sorry an Exception Occured! Check Data</h3>
                <h4>${msg}</h4>
                
              <!--   <a class="btn btn-success waves-effect waves-light" href="check"> Return Home</a> -->
             
</div> --%>
</div>
<h4>
        Sorry an Exception Occured! Check Data</h4>
         <h4>${msg}</h4>
        <div class="text-center" id="buttons">
         
          <button type="button" value=" Go Back !" onclick="history.back(-1)" class="btn btn-primary btn-sm" id="borde">
                             <span class="glyphicon glyphicon-chevron-left"></span> Go Back </button>
                             &nbsp;
                              <a class="btn btn-success btn-sm waves-effect waves-light" href="check" id="borde1">
                           <i class="fa fa-sign-in" aria-hidden="true"></i>  Log-In </a>
        </div>
</div>
        <!-- End wrapper page -->


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