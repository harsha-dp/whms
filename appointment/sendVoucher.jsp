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
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WElEZO</title>

<!-- Plugins css-->
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link
	href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" />
<link href="resources/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- App CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/css/responsive.css" rel="stylesheet"
	type="text/css" />
<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">

<!-- DataTables -->
<link href="resources/plugins/welezo/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/welezo/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<!-- Modal-Effect -->
<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
<script src="resources/plugins/custombox/dist/legacy.min.js"></script>
<link href="resources/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet" />
<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" /> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>

</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i class="zmdi zmdi-layers"></i></a> -->
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
							
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li><font class="page-title1">E VOUCHER SCANNED COPY :
						</font></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
								<li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="glyphicon glyphicon-arrow-left" aria-hidden="true"> </i>
								</button>
             </li>
					</ul>
				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
		<!-- Top Bar End -->

		<!-- ========== Left Sidebar Start ========== -->
		<%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
		<%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp"%>
		<!-- Left Sidebar End -->

		<c:set var="role" scope="session" value="<%=roleType %>" />
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
				<br>
					<div class="col-md-9">
						<div class="card-box">
							<form action="test" role="form">
							<input type="hidden" name="appointmentId" value="${eVocherData.appointmentId}">
								<div class="form-group">
									<input type="email" class="form-control" placeholder="To">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-6">
											<input type="email" class="form-control" placeholder="Cc">
										</div>
										<div class="col-md-6">
											<input type="email" class="form-control" placeholder="Bcc">
										</div>
									</div>
								</div>
								<div class="form-group">
									<input type="text" name="text" class="form-control" placeholder="Subject">
								</div>


								<div class="form-group">
									<div style="width:100%;" align="center">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" style="background-color:#53636e;" bgcolor="#53636e;">
    
    <br>
    <br>
    <table width="583" border="0" cellspacing="0" cellpadding="0">
      
	  
	   <tr>
        <td align="left" valign="top" bgcolor="#3d90bd" style="background-color:#3d90bd;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="75" height="60">&nbsp;</td>
            <td style="color:#FFFFFF; font-family:Times New Roman, Times, serif; font-size:40px;"><b>${eVocherData.service}</b> <br>
 </td>
            <td width="55">&nbsp;</td>
          </tr>

        </table></td>
      </tr>
	  
	  
	  
      <tr>
        <td align="left" valign="top" bgcolor="#FFFFFF" style="background-color:#FFFFFF;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35" align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
              <td align="left" valign="top">
                	
                  <div style="font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;">Voucher No :WHMS0012CONS02</div></td>
                <td align="right" valign="top">
                	
                  <div style="font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;">DATE : 14-08-2017</div></td>
              </tr>
              <tr>
                <td align="left" valign="top"> 
				
				 <tr style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
						                                   <!--  <td class="content-block"
						                                        style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; margin: 0; padding: 0 0 20px;"
						                                        valign="top">
						                                        Please confirm your email address by clicking the link below.
						                                    </td> -->
						                               
						                                </tr>
						                                
						                             
						                                <!-- Strat 1.Customer Card Number   -->
						                                <tr style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                            <br/>
															<td style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                valign="top" color: "blue";> <b>Customer Card Number :</b>
                                                            </td>
															
                                                            <td class="alignright"
                                                                style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                align="right" valign="top" text-align: "left">WHMS 1089 1909 1889
                                                            </td>
                                                        </tr>
                                                        <!-- End 1.Customer Card Number  -->
                                                        
                                                        
                                                        
                                                        <!-- Strat 2.Customer Name  -->
                                                        
                                                        <tr style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                            <td style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                valign="top"> <b>Customer Name :</b>
                                                            </td>
                                                            <td class="alignright"
                                                                style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                align="right" valign="top">${eVocherData.CustomerName }
                                                            </td>
                                                        </tr>
                                                        
                                                        <!-- End  2.Customer Name  -->
                                                        
                                                        
                                                        <!-- Start  3.Customer Age   -->
                                                         <tr style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                            <td style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                valign="top"> <b>Service Center :</b>
                                                            </td>
                                                            <td class="alignright"
                                                                style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                align="right" valign="top">${eVocherData.ServiceCentre }
                                                            </td>
                                                        </tr>
                                                        <!-- End  3.Customer Age   -->
                                                        
                                                        
                                                         <!-- Start  4.Reationdhip  With Member   -->
                                                         <tr style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                            <td style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                valign="top"> <b>Appointment For :</b>
                                                            </td>
                                                            <td class="alignright"
                                                                style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
                                                                align="right" valign="top">${eVocherData.ApptFor }
                                                            </td>
                                                        </tr>
                                                        <!-- End  4.Reationdhip  With Member   -->
                                                        
                                                        <!-- Start  5.Mobile Number  -->
                                                        
                                                        <tr
																			style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
																			<td
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				valign="top">Appointment Date :</td>
																			<td class="alignright"
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				align="right" valign="top">${eVocherData.ApptDate }
																			</td>
																			</tr>
                                                  
                                                        <!-- End  5.Mobile Number  -->
                                                        
                                                        <tr
																			style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
																			<td
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				valign="top">Time</td>
																			<td class="alignright"
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				align="right" valign="top">${eVocherData.ApptTime }
																			</td>
																		</tr>
																		<!-- End 1. Health Center  -->


																		<!-- Start 2. Date  -->
																		<tr
																			style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
																			<td
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				valign="top">Relationship With Customer :</td>
																			<td class="alignright"
																				style="font-family: 'Varela Round', sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;"
																				align="right" valign="top">${eVocherData.UserReln }
																			</td>
																		</tr>
              <tr>
                <td align="left" valign="top" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;">
</td>
              </tr>
              <tr>
                <td align="left" valign="top" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;">&nbsp;</td>
              </tr>
            </table></td>
            <td width="35" align="left" valign="top">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top" bgcolor="#3d90bd" style="background-color:#3d90bd;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35">&nbsp;</td>
            <td height="60" valign="middle" style="color:#FFFFFF; font-size:11px; font-family:Arial, Helvetica, sans-serif;"><b>Welezo Health Care Pvt.Ltd</b> - All copy right reserved<br>
        <b>Hours: Mon-Sat 9:30-6:15, Sun. Closed <br> Customer Support : care@welezohealth.com <br> Helpline No: 18001028364</b></td>
            <td width="35">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
  </table>
    <br>
    <br></td>
  </tr>
</table>

</div>
								</div>




								<div class="btn-toolbar form-group m-b-0">
									<div class="pull-right">
										<button type="button"
											class="btn btn-success waves-effect waves-light m-r-5">
											<i class="fa fa-floppy-o"></i>
										</button>
										<button type="button"
											class="btn btn-success waves-effect waves-light m-r-5">
											<i class="fa fa-trash-o"></i>
										</button>
										<button class="btn btn-purple waves-effect waves-light">
											<span>Send</span> <i class="fa fa-send m-l-10"></i>
										</button>
									</div>
								</div>

							</form>

						</div>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
		</div>

	</div>


	<!-- End row -->

	</div>
	<!-- container -->

	</div>
	<!-- content -->

	</div>
	<!-- End content-page -->

	</div>
	<!-- content -->

	<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
	</div>
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
	<script src="resources/pages/jquery.inbox.js"></script>

	<!--form validation init-->
	<script src="resources/plugins/summernote/dist/summernote.min.js"></script>

	<!-- Modal-Effect -->
	<script src="resources/plugins/custombox/dist/custombox.min.js"></script>
	<script src="resources/plugins/custombox/dist/legacy.min.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>

	<script>

            jQuery(document).ready(function(){

                $('.summernote').summernote({
                    height: 320,                 // set editor height
                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor
                    focus: false                 // set focus to editable area after initializing summernote
                });

            });
        </script>

</body>
</html>