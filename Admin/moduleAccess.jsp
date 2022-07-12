<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>

        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <!-- App title -->
        <title>WELEZO</title>

         <!-- Plugins css-->
         
        <link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
       <!--  <link href="resources/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" /> -->
        
        <link href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
         
          <link href="resources/selectTable/prettify.css" rel="stylesheet" type="text/css"/>
        <!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
        <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        
        <script src="resources/js/modernizr.min.js"></script>
       
      
<!--  <script>
 function selectChanged(){
	 search = document.getElementById("search");
        if(search.value =="not_valid"){//or whatever th unwanted value is
            document.getElementById("battle").disabled = true;
        } else{
            document.getElementById("battle").disabled = true; 
        }
    }          
  </script> -->
        <style>
        
        </style>
   <script type="text/javascript">
   $(function(){
	    $('#RNA').submit(function(){
	         var options = $('#sampleMut > option:selected');
	         if(options.length == 0){
	             alert('no value selected');
	             return false;
	         }
	    });
	});
</script>
    </head>


    <body>

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
                               <font face="verdana" class="page-title">SELECT MODULE ACCESS</font>
                                <!-- <h4 class="page-title">Edit Collection</h4> -->
                            </li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right" >
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
 <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>

            <!-- ========== Left Sidebar Start ========== -->

                    <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
                   <!--  <div class="clearfix"></div> -->


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
             <div class="col-md-6">
            <div class="card-box" style="height: 500px">
            <div class="row">
             <p><font size="3" color="blue">SELECT MODULES AS PRIORITY  <i class="fa fa-arrow-down" aria-hidden="true"></i> AND MOVE <i class="fa fa-arrow-right" aria-hidden="true"></i></font></p>
             <form action="saveAccess" name="form" id="form" onsubmit="return validate()">
                <div class="col-sm-5">
             <input type="hidden" name="userId" value="${USERID}">
                
                 <select class="form-control" multiple="multiple" id="search2" size="8" style="height: 300px">
                                    <c:forEach items="${userAccessModule1}" var="modules1">
                                        <option value="${modules1.accessId}" >${modules1.moduleName} </option>
                                  </c:forEach>
                                    </select>
                                    
                </div>
                
                <div class="col-sm-2" style="padding-top: 110px">
                    <button type="button" id="search2_rightAll" class="btn btn-primary btn-block"><i class="glyphicon glyphicon-forward"></i></button>
                    <button type="button" id="search2_rightSelected" class="btn btn-success btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
                    <button type="button" id="search2_leftSelected" class="btn btn-success btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
                    <button type="button" id="search2_leftAll" class="btn btn-primary btn-block"><i class="glyphicon glyphicon-backward"></i></button>
                </div>
                
                <div class="col-sm-5">
                    <select name="accessId" id="search2_to" class="form-control"  size="8" multiple="multiple" style="height: 300px"></select>
                 <p><span id='display'></span></p>
                 <font id="custnameerror" style="color: red;"></font>
                <div class="row">
            <div class="col-sm-6">
                <button type="button" id="search_move_up" class="btn btn-block btn-info"><i class="glyphicon glyphicon-arrow-up"></i></button>
            </div>
            <div class="col-sm-6">
                <button type="button" id="search_move_down" class="btn btn-block btn-info col-sm-6"><i class="glyphicon glyphicon-arrow-down"></i></button>
            </div>
        </div>
        
                </div>
                 <br />
                                      <div align="center">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
											</div>
											<p><span id='display'></span></p>
											</form>
            </div>
            </div>
            </div>
            
            
            <!--  -->
            <div class="col-md-6">
            <div class="card-box" style="height: 500px">
           <div class="row">
          <p><font size="3" color="blue">REMOVE MODULES FROM SLIDER <i class="fa fa-arrow-down" aria-hidden="true"></i>AND MOVE <i class="fa fa-arrow-right" aria-hidden="true"></i></font></p>
           <form action="removeModules">
           <input type="hidden" name="userId" value="${USERID}">
    <div class="col-xs-5">
    
      <select class="multiselect form-control" size="8" id="search1" multiple="multiple" data-right="#multiselect_to_1" data-right-all="#right_All_1" data-right-selected="#right_Selected_1" data-left-all="#left_All_1" data-left-selected="#left_Selected_1" style="height: 300px">
                                        <c:forEach items="${userAccessModule}" var="modules2">
                                        <option value="${modules2.accessId}" >${modules2.moduleName} </option>
                                  </c:forEach>
                                        
                                    </select>
    </div>
    
    <div class="col-xs-2" style="padding-top: 110px">
        <button type="button" id="right_All_1" class="btn btn-primary btn-block"><i class="glyphicon glyphicon-forward"></i></button>
        <button type="button" id="right_Selected_1" class="btn btn-success btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
        <button type="button" id="left_Selected_1" class="btn btn-success btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
        <button type="button" id="left_All_1" class="btn btn-primary btn-block"><i class="glyphicon glyphicon-backward"></i></button>
    </div>
    
    <div class="col-xs-5">
        <select name="accessId"  id="multiselect_to_1" class="form-control" size="8" multiple="multiple" style="height: 300px"></select>
        
    </div>
    <p>&nbsp;</p>
                                      <div align="center">
												<button type="submit" onclick="return validate()" id="sub1"
													class="btn btn-danger waves-effect waves-light"
													value="submit">REMOVE</button>
											</div>
											</form>
    
                    </div>
            </div> 
            </div>
            </div>
            </div>
          
    </div>



                    </div> <!-- container -->

                </div> <!-- content -->




            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->



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

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

        <!--Morris Chart-->
		<script src="resources/plugins/morris/morris.min.js"></script>
		<script src="resources/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="resources/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
      <script src="resources/selectTable/jquery.min.js"></script>
          <script src="resources/selectTable/bootstrap.min.js"></script>
          <script src="resources/selectTable/prettify.min.js"></script>
          <script src="resources/selectTable/multiselect.min.js"></script>
  

<script type="text/javascript">
$(document).ready(function() {
    // make code pretty
    window.prettyPrint && prettyPrint();

    $('#search2').multiselect({
        search: {
            left: '<input type="text" name="q" class="form-control" placeholder="Search here..." /></br>',
            right: '<input type="text" name="q" class="form-control" placeholder="Search..." /></br>',
        },
        fireSearch: function(value) {
            return value.length > 3;
        }
    });
    
    $('#search1').multiselect({
        search: {
            left: '<input type="text" name="q" class="form-control" placeholder="Search here..." /></br>',
            right: '<input type="text" name="q" class="form-control" placeholder="Search..." /></br>',
        },
        fireSearch: function(value) {
            return value.length > 3;
        }
    });
    
});
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {
    $('.multiselect').multiselect();
    dblClick : true;
});
</script>


    </body>
</html>