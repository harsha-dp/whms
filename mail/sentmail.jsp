<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully  CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <!-- App title -->
        <title>Welezo Health</title>

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />

		<link href="resources/css/welezoeditor.css" type="text/css" rel="stylesheet"/>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> 
        <script src="resources/js/modernizr.min.js"></script>

    </head>
    <body class="fixed-left">
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- LOGO -->
                <div class="topbar-left">
                <img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" />
                </div>
                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container1">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x"> </i>  </a>
                            </li>
                            <li>
                             <!--    <h4 class="page-title">View Hospitals </h4> -->
                                <font face="verdana"  class="page-title1">Send Mail</font>
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

                         <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<form action="sendingMail" enctype="multipart/form-data" >									          
	                                   To : <input type="text" name="toAddress"  class="form-control" placeholder="Email"></input> <br>
	                                   
	                                   Subject : <input type="text" name="subject"  class="form-control" placeholder="subject"></input> <br>
	                                                
										<!-- Attach file:
										<input type="file" name="attachedFiles"  class="form-control" placeholder="subject" /> -->
										 <textarea rows="10" cols="39" name="message"id="elm1" ></textarea>
									<br> <br>
										<button type="submit" class="btn btn-success waves-effect waves-light">Send</button>
                        				<button type="reset" class="btn btn-danger waves-effect waves-light m-l-5">Clear</button>
										
									</form>
								</div>
							</div><!-- end col -->
						</div>
                        <!-- End row -->

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

        <!--form wysiwig js-->
        <script src="resources/plugins/tinymce/tinymce.min.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
        
        				 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
							<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
							<script src="resources/js/welezoeditor.js"></script>
							<script>
								$(document).ready(function() {
									$("#txtEditor").Editor();
								});
							</script>
							
							

        <script type="text/javascript">
        	$(document).ready(function () {
			    if($("#elm1").length > 0){
			        tinymce.init({
			            selector: "textarea#elm1",
			            theme: "modern",
			            height:300,
			            plugins: [
			                "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
			                "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
			                "save table contextmenu directionality emoticons template paste textcolor"
			            ],
			            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons",
			            style_formats: [
			                {title: 'Bold text', inline: 'b'},
			                {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
			                {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
			                {title: 'Example 1', inline: 'span', classes: 'example1'},
			                {title: 'Example 2', inline: 'span', classes: 'example2'},
			                {title: 'Table styles'},
			                {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
			            ]
			        });
			    }
			});
        </script>

    </body>
</html>