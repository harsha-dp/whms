
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script>
	window.jQuery
			|| document
					.write(decodeURIComponent('%3Cscript src="js/jquery-3.1.0.min.js"%3E%3C/script%3E'))
</script>

<!-- <link rel="stylesheet" type="text/css"
	href="https://cdn3.devexpress.com/jslib/17.2.7/css/dx.spa.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn3.devexpress.com/jslib/17.2.7/css/dx.common.css" />

<link rel="dx-theme" data-theme="generic.light" 	href="https://cdn3.devexpress.com/jslib/17.2.7/css/dx.light.css" />
<script src="https://cdn3.devexpress.com/jslib/17.2.7/js/dx.all.js"></script> -->

<script
	src='//static.codepen.io/assets/editor/live/console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js'>
	
</script>
<script
	src='//static.codepen.io/assets/editor/live/css_live_reload_init-890dc39bb89183d4642d58b1ae5376a0193342f9aed88ea04330dc14c8d52f55.js'>
	
</script>





<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<meta http-equiv="X-UA-Compatible"
	content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<title>WELEZO</title>


<!-- Plugins css-->
<link
	href="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css"
	rel="stylesheet" />
<link href="resources/plugins/multiselect/css/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="resources/plugins/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css">
<link href="resources/plugins/select2/dist/css/select2-bootstra p.css"
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
<link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css" />
<script src="resources/js/modernizr.min.js"></script>


<!-- TreeStructure Checkbox Jquery  -->
<!-- <link rel='stylesheet prefetch' href='https://cdn3.devexpress.com/jslib/17.2.7/css/dx.spa.css'> -->
<link rel='stylesheet prefetch'
	href='https://cdn3.devexpress.com/jslib/17.2.7/css/dx.common.css'>
<link rel='stylesheet prefetch'
	href='https://cdn3.devexpress.com/jslib/17.2.7/css/dx.light.css'>
	
<script src="https://cdn3.devexpress.com/jslib/17.2.7/js/dx.all.js"></script>
<!--Form Validation  -->
<script	type="text/javascript"  src="resources/js/json2.min.js"></script>
<script type="text/javascript" src="resources/validation/corporate/prodGenerationForm.js"></script>
<!-- 
<link href="resources/css/dx.common.css" rel="stylesheet" type="text/css">
<link href="resources/css/dx.light.css" rel="stylesheet" type="text/css">

<script src="resources/js/dx.all.js"> </script> -->


<head>

<script>


	var products = JSON.parse('${object}');
	

	console.log(products);
	var checkedItemFinal2 = [];
	
	var chekLen, i;
	var testCheck;

	

	$(function(){
		console.log("finction eneed");
		var checkedItems = [];
		var checkedItemFinal = [];
		var serviceList = [];
		console.log("inside main");

		
		window.checkAjaxCall = function() {
			
			
			chekLen = checkedItems.length;
			

			var error2 = document.getElementById("proNameerror");

			var proNameIdd = form["proNameId"].value;
			var regExp = /^[0-9a-zA-Z]+$/;
			error2.innerHTML = " ";

			if (proNameIdd == null || proNameIdd == ""){
				error2.innerHTML = "Please Enter Product Name";
				document.form.proName.focus();
				return false;
			}

			
			if (!regExp.test(proNameIdd)){
			
				error2.innerHTML = "Only Alphanumeric Characters  Allowed ";
				document.form.proName.focus();
				return false;
			}
			
			var error3 = document.getElementById("preEmpIderror");
			var preEmpIdd = form["preEmpId"].value;

			error3.innerHTML = "";

			if (preEmpIdd == null || preEmpIdd == ""){
				error3.innerHTML = "Please select mode of Service ";
				//document.form.healthCheckId.focus();
				return false;
			}
			
			var error4 = document.getElementById("servCouuntiderror");
			var servCouuntidd = form["serviceCountid"].value;

			error4.innerHTML = "";

			if (servCouuntidd == null || servCouuntidd == ""){
			
				error4.innerHTML = "Please Enter the Headcount ";
				document.form.serviceHeadCount.focus();
				return false;
			}
			

			for (var i = 0; i < checkedItems.length; i++) {
				var item = checkedItems[i];
				
				serviceList[i] = item.key;
			
			}
			
			
			
				
				var proName = $('#proNameId').val(); 
				var empCount = $('#serviceCountid').val();
				var healthMode= $("form input[type='radio']:Checked").val();
				/* var companyId = $('#companyId').val(); */
				var companyId = ${corporateById.corporateId};
				
				
				var json={"proName":proName,"empCount":empCount,"healthMode":healthMode,"companyId":companyId,"serviceList":serviceList};
				
				
				$.ajax({
			        url: "validateCaptchaThroughAJAX",
			        type: 'POST',
			        data: JSON.stringify(json),
			        cache:false,
			        beforeSend: function(xhr) {  
			            xhr.setRequestHeader("Accept", "application/json");  
			            xhr.setRequestHeader("Content-Type", "application/json");  
			        },
			        success:function(response){
			        	
			        	alert("Congrats!! The Product " + response.proName + " has been successfully created.");
			        	window.location.href = "viewcorporatebyId?corporateId="+${corporateId};
			        },
			        error:function(jqXhr, textStatus, errorThrown){
			        	
			        	alert(" Error!! The Product " + proName + " couldn't be created.Please try again.");
			        	window.location.href = "viewcorporatebyId?corporateId="+${corporateId};
			        }
			        
			    });
				
		}//window.madeAjaxCall=function()	

		$("#selection-treeview").dxTreeView({

			items : products,
			width : 220,
			dataSource : products,
			showCheckBoxesMode : "normal",
			searchEnabled : true,
			dataStructure : 'plain',

			onItemSelectionChanged : function(e) {
				var item = e.node;

				if (isProduct(item)) {
					processProduct($.extend({
						category : item.parent.text
					}, item));
				} else {
					$.each(item.items, function(index, product) {
						processProduct($.extend({
							category : item.text
						}, product));
					});
				}
				checkedItemsList.option("items", checkedItems);
				/* console.log("checkedItemsList:" + checkedItems.itemData.id); */
				console.log("in checkedItemsList:");
				console.dir(checkedItemsList);

			},
			itemTemplate : function(data) {
				return "<div>" + data.text + "</div>";
				
			}
		});

		$("#searchMode").dxSelectBox({
			dataSource : [ "contains", "startswith" ],
			value : "contains",
			onValueChanged : function(data) {
				treeView.option("searchMode", data.value);
			}
		});

		var checkedItemsList = $("#checked-items").dxList(
				{

					width : 250,
					items : checkedItems,
					itemTemplate : function(data) {
						var a = new Array();
						a['key'] = data.key;


						return "<div>" + data.parent.text + " - " + data.text
								+ "-" + data.key + "</div>";

						/*+ ((data.price) ? (" ($" + data.price + ")")
								: "") + "</div>"; */
						/* return "<div>" + data.text + " (" + data.category
								+ ") - $" + data.itemData.price + "</div>"; */
					}

				}).dxList("instance");

		function isProduct(data) {
			return !data.items.length;
		}

		function processProduct(product) {
			var itemIndex = -1;

			$.each(checkedItems, function(index, item) {
				if (item.key === product.key) {
					/* console.log("item.key:"+item.key); */
					itemIndex = index;
					return false;
				}
			});

			if (product.selected && itemIndex === -1) {
				checkedItems.push(product);
				checkedItemFinal.push(product);
				console.log("Inside checkedItems.push:");
				console.log(product);

			} else if (!product.selected) {

				checkedItems.splice(itemIndex, 1);
				checkedItemFinal.splice(itemIndex, 1);
				
			}
			console.log('checkedItemFinal after function()');
			console.dir(checkedItemFinal); //Items Checked 
			checkedItemFinal2 = checkedItems
			console.log('checkedItemFinal  after function()');
			console.dir(checkedItemFinal);


		} //end of processProduct(product)

		

	}); //function close
	
</script> 

<style>
body {
	background: #ebeff2;
	font-family: 'Varela Round', sans-serif;
	margin: 0 0 15px 0;
	font-size: 11px;
	padding-bottom: 60px;
	overflow-x: hidden;
	color: #797979;
	line-height: 20px;
}


#checkEle
({
'20%'';
}
);
</style>
<style>
.form>h4 {
	margin-bottom: 30px;
}
/* 
.form>div,
#selection-treeview {
    display: inline-block;
    vertical-align: top;
}

#checked-items {
    margin-top: 50px;
}

.selected-data {
    padding: 50px;
    background: #f5f5f5;
    font-size: 115%;
    font-weight: bold;
}

.dx-list-item-content {
    padding-left: 0;
}
 */
label {
	font-weight: 400;
}
</style>

<style>

.indent-small {
	margin-left: 5px;
}

.form-group.internal {
	margin-bottom: 0;
}

.dialog-panel {
	margin: 10px;
}

.datepicker-dropdown {
	z-index: 200 !important;
}

.panel-primary>.panel-heading {
	background-color: #55acef;
}

.panel-heading {
	padding: 10px 15px;
	border-bottom: 5px solid transparent;
	border-bottom-color: transparent;
	border-top-right-radius: 3px;
	border-top-left-radius: 3px;
}

*,::before,::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border;
}

#s {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	width: 960px;
	padding: 30px;
	overflow: hidden;
	border: none;
	color: rgba(0, 0, 0, 0.9);
	-o-text-overflow: clip;
	text-overflow: clip;
	background: -webkit-linear-gradient(0deg, rgba(255, 255, 255, 1) 0,
		rgba(243, 243, 243, 1) 50%, rgba(237, 237, 237, 1) 51%,
		rgba(255, 255, 255, 1) 100%);
	background: -moz-linear-gradient(90deg, rgba(255, 255, 255, 1) 0,
		rgba(243, 243, 243, 1) 50%, rgba(237, 237, 237, 1) 51%,
		rgba(255, 255, 255, 1) 100%);
	background: linear-gradient(90deg, rgba(255, 255, 255, 1) 0,
		rgba(243, 243, 243, 1) 50%, rgba(237, 237, 237, 1) 51%,
		rgba(255, 255, 255, 1) 100%);
	background-position: 50% 50%;
	-webkit-background-origin: padding-box;
	background-origin: padding-box;
	-webkit-background-clip: border-box;
	background-clip: border-box;
	-webkit-background-size: auto auto;
	background-size: auto auto;
	-webkit-box-shadow: 5px 5px 8px 2px rgba(0, 0, 0, 0.4), 1px 1px 1px 0
		rgba(0, 0, 0, 0.3);
	box-shadow: 5px 5px 8px 2px rgba(0, 0, 0, 0.4), 1px 1px 1px 0
		rgba(0, 0, 0, 0.3);
}

/* body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.428571429;
	color: #333;
} */
html {
	font-size: 62.5%;
}

html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
}

border-bottom: 1px solid transparent ; border-bottom-color: transparent 
	 ; border-top-right-radius: 3px ; border-top-left-radius: 3px ; .card {
	width: 550px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	text-align: center;
}

.panel-body {
	background: #e5e5e5; /* Old browsers */
	background: -moz-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* FF3.6+ */
	background: -webkit-gradient(radial, center center, 0px, center center, 100%,
		color-stop(0%, #e5e5e5), color-stop(100%, #ffffff));
	/* Chrome,Safari4+ */
	background: -webkit-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* Opera 12+ */
	background: -ms-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* IE10+ */
	background: radial-gradient(ellipse at center, #e5e5e5 0%, #ffffff 100%);
	/* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e5e5e5',
		endColorstr='#ffffff', GradientType=1);
	/* IE6-9 fallback on horizontal gradient */
	font: 600 15px "Open Sans", Arial, sans-serif;
}

label.control-label {
	font-weight: 600;
	color: #777;
}
</style>


</head>


<body class="fixed-left">

	<!-- Begin page -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><div
		id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<!-- <a href="index.html" class="logo"><span>Admin<span>Welezo</span></span><i class="zmdi zmdi-layers"></i></a> -->
				<img class="img-responsive" src="resources\images\newlogo.png" />
			</div>

			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default">
				<div class="container">

					<!-- Page title -->
					<ul class="nav navbar-nav navbar-left">
						<li><a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li><font face="verdana" class="page-title1">PRODUCT
								GENERATION</font> <!-- <h4 class="page-title">Edit Presales</h4> --></li>
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

			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

		</div>

		<div class="content-page">
			<!-- Start content -->
			<div class="content">

				<!-- end row -->

				<div class="container">

					<div class="row">
						<div class="col-md-12">
							<div class="card-box">
								<!-- 	<div  style="position: relative; left: 5px; top: 2px;"style="overflow: scroll;" > -->

								<div class='panel panel-primary dialog-panell card ' id='s'>

									<div class='panel-heading'>
										<h5 align="center" style="color: white">CORPORATE PRODUCT
											DETAILS</h5>
									</div>

									<!-- <h4 class=" text-center" id="myLargeLabel">CORPORATE 	DETAILS</h4> -->


									<!-- 	<div style="padding: 20px;"> -->
									<div class="row" style="border-style: thin;">

										<div class="dx-viewport demo-container">


											<form:form name="form" action=""	modelAttribute="corporateDTO" method="POST"
												onSubmit="" class="productForm">
											<%-- 	<form:hidden path="${corporateId.corporateId}" /> --%>
												<div class="row" style="padding: 20px;">
													<div>
														
														
														<div class="row" style="padding: 20px;">		
																<div id="jsonResponse" style="color:red; font-weight:500;"> </div>
														</div>
														<div class="col-md-4">
															
															<div class="form-group">
																<form:label path="corporateId">Company Name 
																</form:label>
																<form:input  type="text" path="" id="corporateId" class="form-control" value="${corporateById.corporateName}"  readonly="true" ></form:input> 
																
																
															</div>
															
														</div>
													</div>



													<div class="col-md-4">
														<div>
															<div class="form-group">
																<form:label path="proName" for="proName"> Enter the Name of Product to be Created <span
																		style="color: red;">*</span>
																</form:label>
																<form:input type="text" path="proName" class="form-control" id="proNameId" />
																<font id="proNameerror" style="color: red;"></font>
															</div>

														</div>
													</div>


												</div>

												<div class="row" style="padding: 20px;">

													<div class="col-md-4">
														<div class="form-group">
		
																	<form:label path="healthCheckId" for="healthCheckId">Mode of Health Check <span
																		style="color: red;">*</span>
																	</form:label> &nbsp;&nbsp;&nbsp;&nbsp; <br>
																	<p></p>
																	<div id="checkEle">
																		&nbsp;
																		<form:radiobutton path="healthCheckId" value="Pre-Employment"
																			id="preEmpId" />
																		Pre Employment &nbsp;&nbsp;&nbsp;&nbsp;
																		<form:radiobutton path="healthCheckId" value="Annual"
																			id="preEmpId" />
																		Annual
		
																	</div>
																	<font id="preEmpIderror" style="color: red;"></font>
																</div>

													</div>

													<div class="col-md-4">
															<div class="form-group ">
				
																			<form:label path="serviceHeadCount" for="serviceHeadCount">Number of Employees for this Service<span
																				style="color: red;">*</span>
																			</form:label>
																			<form:input type="number" path="serviceHeadCount" id="serviceCountid"
																				class="form-control" 	placeholder="Enter Service Headcount" min="1" />
																			<font id="servCouuntiderror" style="color: red;"></font>

															</div>
													</div>

												</div>


												<div class="col-md-12" style="padding: 20px;">


													<div class="col-md-8">
														<h6 style="font-weight: 300; font-size: 14px;">Select
															Test Parameters for Package</h6>
															<div id="selection-treeview">
															</div>
													</div>


													
													
													<div class="col-md-4 " style="width: 25%;">
														<div class="caption">Search Options</div>
														<br></br>
														<div class="option">
															<span>Search mode</span>
															<div id="searchMode"></div>
														</div>

													</div>


												</div>
												<div class="col-md-offset-4">
													<!-- <button id='getChkService' type="submit"
														onSubmit="madeAjaxCall()"
														class="btn btn-primary waves-effect waves-light"
														value="submit">Save</button>
													<button type="reset"
														class="btn btn-danger waves-effect waves-light m-l-10">Clear</button> -->

													<input  type="button"  value="Submit" class="btn btn-primary waves-effect waves-light"
														onclick="checkAjaxCall();">
													 <button type="reset"
														class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>		
													

													<p>&nbsp;</p>
													<p>&nbsp;</p>
												</div>
												<div id="result"></div>
											
												<p>&nbsp;</p>
											
											</form:form>
											
										</div>
									</div>
								</div>
							</div>
							<!-- END of panel panel-primary dialog-panel  -->
						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->

		<!-- END wrapper -->
	</div>
</body>
</html>

