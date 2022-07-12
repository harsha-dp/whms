<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>WElEZO</title>

     <!-- Plugins css-->
<link href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
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
        <script src="resources/js/modernizr.min.js"></script>
        
<link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="resources/js/leave.js"></script>



<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet" />

<!-- Datepicker start -->
		   <link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
           <link rel="stylesheet" href="/resources/demos/style.css">
		   <script src="resources/datepicker/jquery-1.12.4.js"></script>
		   <script src="resources/datepicker/jquery-ui.js"></script>
		   
		   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
          
      <!-- Datepicker end -->

<style type="text/css">
.modal-header {
	padding: -5px;
	/*  border-bottom: 22px solid #e5e5e5; */
	border-top: 22px solid #e5e5e5;
}


</style>
<style type="text/css">
.ui-datepicker {
    background: #4491bf;
    border: 1px solid #73b934;
    color: #5ab039;
}

</style>
<script type="text/javascript">
function validate(from) {

    var error=document.getElementById("error");
    var name=form["name"].value;

    error.innerHTML="";
    if(name==""||name==null
    )
    {
      error.innerHTML="This field cannot be empty!";
      return false;
    }
    

    var error=document.getElementById("droperror");
    var defaultconfig=form["defaultconfig"].value;

    error.innerHTML="";
    if(defaultconfig==""||defaultconfig==null)
    {
      error.innerHTML="This field cannot be empty!";
      return false;
    }
    else if(isNaN(defaultconfig))
      {
      error.innerHTML="Enter digits only!";
      }
    else if(defaultconfig.length>3)
      {
      error.innerHTML="Enter maximum 3 digits only!";
      }
    if(/^[0-9,.]*$/.test(defaultconfig) == false){
        //error message
            error.innerHTML="Please enter only digits and (dot) only ";
            return false;
     }


    var error=document.getElementById("drop1error");
    var datepicker=form["datepicker"].value;

    error.innerHTML="";
    if(datepicker==""||datepicker==null)
    {
      error.innerHTML="This field cannot be empty!";
      return false;
    }

    var error=document.getElementById("drop2error");
    var datepicker1=form["datepicker1"].value;

    error.innerHTML="";
    if(datepicker1==""||datepicker1==null)
    {
      error.innerHTML="This field cannot be empty!";
      return false;
    }

    var error=document.getElementById("drop3error");
    var drop2=form["drop2"].value;

    error.innerHTML="";
    if(drop2==""||drop2==null)
    {
      error.innerHTML="This field cannot be empty!";
      return false;
    }
    
    
    var error=document.getElementById("drop4error");
	var alloptions=form["alloptions"].value;

    error.innerHTML="";
 
    if( alloptions==null || alloptions==""){
        error.innerHTML="This field cannot be empty!";
        return false;
    }
    
    if(alloptions.length<3){
        error.innerHTML="Enter minimum 3 character";
        return false;
    } 
    if(alloptions.length>400){
        error.innerHTML="Enter in between 3 to 400 character";
        return false;
    }/*end */

}
</script>
</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<img class="img-responsive" src="resources\images\newlogo.png"
					width="230px" height="80px" />
			</div>

			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container1">

					<!-- Page title -->
					<ul class="nav navbar-nav navbar-left">
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li><font face="verdana" class="page-title1">Ajax Search :
									</font></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<h4>
								<button type="button" value=" Go Back !"
									onclick="history.back(-1)" class="btn btn-primary1">
									<span class="glyphicon glyphicon-chevron-left"></span> Back
								</button>
							</h4>
						</li>
					</ul>

				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
		<!-- Top Bar End -->

		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
		</div>
		<!-- Modal -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container"></div>
				<!-- end row -->

				<!-- popup window -->

				<div class="card-box card-outline-danger">
					<div class="row">
						<div class="col-lg-12">
						<form action="">
						<input id="drugsListpop"  class="form-control pretext inlineselect"
													 style="margin-top: 10px; margin-left: 0px; margin-right:10px;width:30%;"
													list="prescriptionDL" auctoComplete="off"
													onkeyup="prescriptionSearchKeyUp()"
													placeholder="city Name" />
						</form>
						
						<script type="text/javascript">
						function prescriptionSearchKeyUp() {
							var name = $("#drugsListpop").val();

							if (name.length == 1 && cSearchFlag) {
								cSearchHash = {};
								cSearchTableTypeList=[];
								var row = '';
								var i = 0;
								$
										.post(
												"storemasteritemontypes",
												{
													typeId:1,
													itemName : name
												},
												function(data) {
													$
															.each(
																	data,
																	function(id, option) {

																		cSearchHash[option.lid] = option.name;
																		cSearchTableTypeList.push(option.strItemType+ "^"+option.strStrength);
																		itemName[i] = option.name;

																		i++;
																	});
																
													document.getElementById('prescriptionDL').innerHTML = '';

													for (var j = 0; j < i; j++) {
														row = '<option value="'+itemName[j] +'" label="'+itemName[j]+'" />';

														$('#prescriptionDL').append(row);

													}
													cSearchFlag = false;
													
												});

							} else if (name.length == 0) {
								cSearchFlag = true;
								$("#prescriptionDL").empty();
							}
						}
						</script>
					</div></div></div></div></div>
							




	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->

	<!-- END wrapper -->

	<script>
		var resizefunc = [];
	</script>

	<!-- jQuery  -->
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
  
   
  
    <!-- Plugins Js -->
	<script src="resources/plugins/switchery/switchery.min.js"></script>
	<script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>


	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>
     
   <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
  
	
</body>
</html>