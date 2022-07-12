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

<script src="resources/js/modernizr.min.js"></script>

<!-- Modal-Effect -->
        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>
        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet">


<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/table/table-jquery-1.11.3.min.js"></script>
<link href="resources/table/table-jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<script src="resources/table/table-jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/table/table-buttons.dataTables.min.css" />
<script src="resources/table/table-dataTables.buttons.min.js"></script>
<script src="resources/table/table-buttons.colVis.min.js"></script>


<script>
	$(document)
			.ready(
					function() {
						// Setup - add a text input to each footer cell
						$('#example tfoot th')
								.each(
										function() {
											var title = $('#example thead th')
													.eq($(this).index()).text();
											$(this)
													.html(
															'<input type="text"  style="font-size : 12px; width: 90%; height: 25px;" placeholder="'
																	+ title
																	+ '" />');
										});

						var table = $('#example').DataTable({
							dom : 'Bfrtip',
							buttons : [ {
								extend : 'colvis',
								text : 'Change Layout',
								collectionLayout : 'fixed three-column'
							} ]
						});

						// Apply the search

						table.columns().every(
								function() {
									$('input', this.footer()).on(
											'keyup change',
											function() {
												table.column(
														$(this).parent()
																.index()
																+ ':visible')
														.search(this.value)
														.draw();

											});
								});
					});
</script>


</head>


<script type="text/javascript">


function validate(from)
{
/*Start */ 
    var error=document.getElementById("ResidenceAddresserror");
	var ResidenceAddress=form["ResidenceAddress"].value;

   error.innerHTML="";

   if( ResidenceAddress==null || ResidenceAddress==""){
       error.innerHTML="Please Select Application number";
       return false;
   }
}
</script>

<body class="fixed-left">

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
						<li><a href="welezouser_dashboard"> <i
								class="fa fa-home fa-2x" aria-hidden="true"> </i>
						</a></li>
						<li class="hidden-xs hidden-sm"	>
							<font class="page-title">CUSTOMER DETAILS</font>
						</li>
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
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
				<br>
					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<div class="row">
								
									<div class="clearfix">
                                            <div class="pull-left">
                                                <form:form action="applicationNumber" name="form" onsubmit="return validate()" modelAttribute="viewcustomers">
									<div class="col-md-7">
									<div class="input-group">
  <span class="input-group-addon input-sm">Enter Application No: <span style="color:red;">*</span></span>
  
  <form:select path="applicationNumber" title="Select Application No"  
											 id="ResidenceAddress" class="form-control input-lg">
											<form:option value="" label="Select Application number"  />
											<c:forEach var="tx" varStatus="status"	items="${alltransaction}">
											<c:if test="${tx.customerDeatils.customerId == null}">
									 <form:option path="applicationNumber"  value="${tx.applicationNo}">${tx.applicationNo}</form:option>
											</c:if>
											</c:forEach>
										</form:select>
  <span class="input-group-addon">
    <form:hidden path="customerId" value="${custDetails.customerId}"/>
                              	 <button type="submit" onclick="return validate()" class="btn btn-primary btn--sm" value="submit">Submit</button>
                                 
                                 
 </span>
</div>
	 </div>							
			 </form:form>						
                                  
                                 
                                   
                                  <div class="col-md-5">
                                  <font id="ResidenceAddresserror" style="color: red;"></font>
                                            <!-- </div> -->
                                            <div class="pull-right">
                                                <h4> 
                                                    <strong>
                                                    <i class="fa fa-user-o" aria-hidden="true"></i> <u>${custDetails.customerName}</u>
                                                    </strong>
                                                </h4>
                                                <h4> 
                                                  <button class="btn btn-aqua"><i class="fa fa-pencil-square-o" aria-hidden="true"> 	<a href="custEdit?customerId=<c:out value='${custDetails.customerId}'/>">Edit Customer Details</a></i></button> 
                                                </h4>
                                                
                                            </div>
                                            </div>
                                        </div>
									</div>
									<!-- end col -->
								</div>
								<!-- end row -->
								
								<div class="row m-t-40">
									<div class="col-lg-6">
									
													<div class="panel-group" id="accordion5">
											    <div class="panel panel-default">
											      <div class="panel-heading">
													        <h4 class="panel-title">
													          <a data-toggle="collapse" data-parent="#accordion5" href="#collapse5">ABOUT YOU </a>
													        </h4>
													      </div>
													      <div id="collapse5" class="panel-collapse collapse in">
													        <div class="panel-body">
													        <div align="right">
								                                <a href="#custom-modal3"
																	class="btn btn-success btn-md waves-effect waves-light"
																	data-animation="fadein" data-plugin="custommodal"
																	data-overlaySpeed="200" data-overlayColor="#36404a"> <i
																	class="zmdi zmdi-plus"></i> Add Proof type
																</a>
								                                </div>
								                                <br>
								                                
													        
													           <table class="table m-b-0">
																<tbody>
																	<tr class="active">
																		<th scope="row">Name :</th>
																		<td>${custDetails.customerName}</td>

																	</tr>
																	<tr class="warning">
																		<th scope="row">DOB</th>
																		<td>${dob}</td>

																	</tr>

																	<tr class="success">
																		<th scope="row">Marital Status :</th>
																		<td>${custDetails.maritalStatus}</td>

																	</tr>
																	<c:forEach var="customerResidenceAddress"
																		varStatus="status" items="${customerAddress}">

																		<c:if
																			test="${customerResidenceAddress.addressCatagories.addressType == 'Residence' }">

																			<tr class="info">
																				<th scope="row">Contact No.:</th>
																				<td>${customerResidenceAddress.primaryMob}</td>

																			</tr>


																			<tr class="warning">
																				<th scope="row">Address:</th>
																				<td>${customerResidenceAddress.residenceAddresss}</td>

																			</tr>


																		</c:if>
																	</c:forEach>
																	 
																		<tr class="danger">
																			<th scope="row">Proof Of Identity :</th>
																		<td><c:forEach items="${proofId}" var="proof">
																			${proof.idType} : ${proof.idNumber}<br/>
																		</c:forEach></td>
																		</tr>
																</tbody>

															</table>

														</div>
													</div>
												</div>
													  </div>
									</div>
									
									<div class="col-lg-6">
									<div class="panel-group">
									<div class="panel panel-default bx-shadow-none">
													<div class="panel-heading" role="tab" id="headingTwo">
														<h4 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse"
																data-parent="#accordion" href="#collapseTwo"
																aria-expanded="false" aria-controls="collapseTwo">
																HEALTH ANALYSIS </a>
														</h4>
													</div>
													<div id="collapseTwo" class="panel-collapse collapse"
														role="tabpanel" aria-labelledby="headingTwo">
														<div class="panel-body">

															<table class="table m-b-0">
                                                                 <p><b> * Number of family members in the
																		age group of :</b></p>
                                                               <tr class="success">
                                                               <th>Age<5</th>
                                                               <th>Age:6><18</th>
                                                               <th>Age:19><35</th>
                                                               <th>Age:36><50</th>
                                                               <th>Age:51><65</th>
                                                               <th>Age:>65</th>
                                                               </tr>
                                                            
																		<tr class="warning">
																			<td>${customerHealth.m5}</td>
																			<td>${customerHealth.m618}</td>
																			<td>${customerHealth.m1935}</td>
																			<td>${customerHealth.m3650}</td>
																			<td>${customerHealth.m5165}</td>
																			<td>${customerHealth.m65}</td>

																		</tr>
																	
                                                               
                                                               </table><br>
                                                               
                                                               <table class="table m-b-0">
                                                                 <p><b> * Medical Expenses per year  :</b></p>
                                                               <tr class="success">
                                                               <th>Diagnostics Rs</th>
                                                               <th>Consultations Rs</th>
                                                               <th>Pharmacy Rs</th>
                                                               <th>Hospitalization Rs</th>
                                                               </tr>
                                                            
																		<tr class="warning">
																			<td>${customerHealth.diagnostic}</td>
																			<td>${customerHealth.consultation}</td>
																			<td>${customerHealth.pharmacy}</td>
																			<td>${customerHealth.hospitalization}</td>
																		</tr>
                                                               </table><br>
                                                               
                                                               <table class="table m-b-0">

																<tr class="success">
																	<th scope="row">Your Height :</th>
																	<td class="warning">${customerHealth.custHeight}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Your Weight :</th>
																	<td class="warning">${customerHealth.custWeight}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you have health insurance :</th>
																	<td class="warning">${customerHealth.insurance}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you believe you need a health
																		check only when you are sick :</th>
																	<td class="warning">${customerHealth.sick}</td>
																</tr>


																<tr class="success">
																	<th scope="row">How often do you go for health
																		checks :</th>
																	<td class="warning">${customerHealth.healthCheck}</td>
																</tr>


																<tr class="success">
																	<th scope="row">When do you consult specialists:</th>
																	<td class="warning">${customerHealth.consultSpecialist}</td>
																</tr>


																<tr class="success">
																	<th scope="row">How often do you visit a dentist :</th>
																	<td class="warning">${customerHealth.visitDentist}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Which system of medicine do you
																		follow :</th>
																	<td class="warning">${customerHealth.medicinFollow}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you smoke :</th>
																	<td class="warning">${customerHealth.smoke}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you consume alcohol :</th>
																	<td class="warning">${customerHealth.alcohol}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Your food habits :</th>
																	<td class="warning">${customerHealth.foodHabits}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you suffer from any of these :</th>
																	<td class="warning">${customerHealth.custSuffer}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do any of your parents suffer from
																		these :</th>
																	<td class="warning">${customerHealth.parentsSuffer}</td>
																</tr>

																<tr class="success">
																	<th scope="row">How often do you exercise :</th>
																	<td class="warning">${customerHealth.exercise}</td>
																</tr>

																<tr class="success">
																	<th scope="row">How stressful is your life :</th>
																	<td class="warning">${customerHealth.stressfull}</td>
																</tr>


																<tr class="success">
																	<th scope="row">Do you have sufficient sleep :</th>
																	<td class="warning">${customerHealth.sleep}</td>
																</tr>

															</table>
													        
													        
													        
													        </div>
													        
													      </div>
													    </div>
									</div>
									</div>
									<!-- end col -->

									<div class="col-lg-6">
									 <div class="panel-group">
												    <div class="panel panel-default">
												      <div class="panel-heading">
												        <h4 class="panel-title">
												          <a data-toggle="collapse" href="#collapse2">FAMILY DETAILS</a>
												        </h4>
												      </div>
												      
												      <div id="collapse2" class="panel-collapse collapse">
												        <div class="panel-body">
												        <div align="right">
						                                    <a href="#custom-modal"
															class="btn btn-success btn-md waves-effect waves-light"
															data-animation="fadein" data-plugin="custommodal"
															data-overlaySpeed="200" data-overlayColor="#36404a"> <i
															class="zmdi zmdi-plus"></i> Add Family Member
														     </a>
						                                     </div>
						                                     <br>
						                                     <table class="table m-b-0">
																<thead>
																	<tr class="warning">
																		<th>Name</th>
																		<th>Gender</th>
																		<th>Relationship</th>
																		<th>Age</th>
																		<th>DOB</th>
																	</tr>
																</thead>

																<c:forEach items="${family}" var="cust">
																	<tbody>
																		<tr class="success">
																			<td>${cust.FName}</td>
																			<td>${cust.gender}</td>
																			<td>${cust.relationship}</td>
																			<td>${cust.age}</td>
																			<td>${cust.dob}</td>

																		</tr>
																	</tbody>
																</c:forEach>


															</table>
												        
												        
												        </div>
												      </div>
												    </div>
												  </div>
									
							
									</div>
									<!-- end col -->
									<div class="col-lg-6">
									<div class="panel-group">
													    <div class="panel panel-default">
													      <div class="panel-heading">
													        <h4 class="panel-title">
													          <a data-toggle="collapse" href="#collapse4">CUSTOMER REFERENCES</a>
													        </h4>
													      </div>
													      <div id="collapse4" class="panel-collapse collapse">
													        <div class="panel-body">
													        <div align="right">
						                                  <a href="#custom-modal1"
															class="btn btn-success btn-md waves-effect waves-light"
															data-animation="fadein" data-plugin="custommodal"
															data-overlaySpeed="200" data-overlayColor="#36404a"> <i
															class="zmdi zmdi-plus"></i> Add References
														     </a>
						                                     </div>
						                                     <br>
						                                     <table class="table" id="t01">
															
																<thead>
																	<tr class="warning">
																		<th>Name</th>
																		<th>Relationship</th>
																		<th>Contact Number</th>

																	</tr>
																</thead>

																<c:forEach items="${custRefrence}" var="ref">
																	<tbody>
																		<tr class="success">
																			<td>${ref.name}</td>
																			<td>${ref.relationship}</td>
																			<td>${ref.contactNumber}</td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>
													        
													        </div>
													      </div>
													    </div>
													  </div>
										</div>
								
												 
                                    <!--   start transaction   -->
                                    
                                    <div class="col-md-12">
										<div class="card-box table-responsive">
											<h4 class="header-title m-t-0 m-b-30">
												<font>TRANSACTION
													DETAILS :</font>
											</h4>
											
											<table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <tr>
                                                		
														<th style="width: 2 px;">Application Number</th>
														<th>Product Bought</th>
														<th>Customer Name</th>
														<!-- <th>Payment Mode</th> -->
														<th>Executive</th>
														<th>Card No.</th>
														<th>Sale Date</th>
														<th>Expired Date</th>
														<th>Payment Status</th>
													</tr>
                                            
                                        </thead>

                                        <tbody>
													<c:forEach items="${tranasctionByID}" var="transaction">
														<tr style="display: table-row;">
															<%--  <td class="account-name1 sort-value"><c:out value="${presales.address.primaryMob}" /></td> --%>
															<td><a href="editTransaction?transactionId=<c:out value='${transaction.transactionId}'/>"><c:out value="${transaction.applicationNo}" /></a></td>
															<td><c:out value="${transaction.productName}" /></td>
															<td><c:out value="${transaction.customerName}" /></td>
															<%-- <td><c:out value="${transaction.paymentStatus}" /></td> --%>
															<td><c:out value="${transaction.executive}" /></td>
															<td><c:out value="${transaction.cardNumber}" /></td>
															<td><c:out value="${transaction.collectedDate}" /></td>
															<td><c:out value="${transaction.expriryDate}" /></td>
																<td><c:out value="${transaction.txStatus}" /></td>
														</tr>
													</c:forEach>
												</tbody>
                                    </table>
											
                                    
									<!--  -->

										</div>
										<!-- content -->
									</div>
								</div>
								<!-- end row -->

							</div>
						</div>
						<!-- end col -->



					</div>
					<!-- end row -->



				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<%@ include file="/WEB-INF/jsp/Admin/footer.jsp"%>
			
			
			<!--start add family  -->		
		     <div id="custom-modal" class="modal-demo">
			    <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button>
			    <h4 class="custom-modal-title">ADD FAMILY MEMBER</h4>
	<!-- =============	form:form start from here ==============    -->	
	 <script type="text/javascript">
	 function validate1(from)
     {
	 /*start */ var error=document.getElementById("firstNameError");
    	var firstName=form1["firstName"].value;

        error.innerHTML="";
     
        if( firstName==null || firstName==""){
            error.innerHTML="Input Your FirstName";
            return false;
        }

        else if(!isNaN(firstName)){
            error.innerHTML="Name Can Not be a number";
            return false;
        } 

        if(firstName.length<3){
            error.innerHTML="Name should be minimum 3 character";
            return false;
        } 
        if(firstName.length>25){
            error.innerHTML="Name should be in between 3 to 25 character";
            return false;
        }/*end */ 

        var error = document.getElementById("sourcesss");
        var sources=form1["sources"].value;
        error.innerHTML="";
        
      
        if(sources=null ||sources=="" ) //for text use if(strUser1=="Select")
        {
         error.innerHTML="Please Select Gender ";
        return false;
        }

        var error = document.getElementById("firstNameError3");
        var sources1=form1["sources1"].value;
        error.innerHTML="";
        
      
        if(sources1=null ||sources1=="" ) //for text use if(strUser1=="Select")
        {
         error.innerHTML="Please Select relationship ";
        return false;
        }

        var error=document.getElementById("firstNameError4");
    	var agee=form1["agee"].value;

        error.innerHTML="";
     
        if( agee==null || agee==""){
            error.innerHTML="Enter customer age";
            return false;
        }

        else if(isNaN(agee)){
            error.innerHTML="Enter number only";
            return false;
        }

        if(agee.length<1){
            error.innerHTML="customer age should be minimum one digit";
            return false;
        } 
        if(agee.length>3){
            error.innerHTML="Invalid age please enter less then 4 digit";
            return false;
        }/*end */ 
         
        }  
     </script>
			       <form:form action="savefamilyMember" name="form1" onsubmit="return validate1()" modelAttribute="viewcustomers">
							<!-- PROGRESSBAR WIZARD -->
							<!-- <div class="col-lg-12"> -->
							<div class="custom-modal-text text-left">
								<div class="card-box p-b-0">
								<div class="row">
								<form:hidden path="customerId" value="${custDetails.customerId}"/>
                                        <div class="form-group has-success">
                                            <label class="col-md-3">Name <span style="color:red;">*</span></label>
                                            <div class="col-md-9">
                                             <form:input type="text" class="form-control"  path="customerName" placeholder="Name" id="firstName"/>
                                            <font id=firstNameError style="color: red;"></font>
                                            </div>
                                        </div>
                                        <br/><br>
                                        
                                        <div class="form-group has-success">
                                            <label class="col-md-3">Gender <span style="color:red;">*</span></label>
                                            <div class="col-md-9">
                                               <select name=gender class="form-control" id="sources">
															<option value="">Select</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
														</select>
														<font id=sourcesss style="color: red;"></font>
                                            </div>
                                        </div>
                                         <br/><br>
                                        
                                        <div class="form-group has-success">
                                            <label class="col-md-3">Relationship <span style="color:red;">*</span></label>
                                            <div class="col-md-9">
                                               <select name="maritalStatus" class="form-control" id="sources1" >
															<option value="">Select</option>
															<option value="Father">Father</option>
															<option value="Mother">Mother</option>
															<option value="Wife">Wife</option>
															<option value="Husband">Husband</option>
															<option value="Son">Son</option>
															<option value="Daugther">Daugther</option>
															<option value="Self">Self</option>
															<option value="Other">Other</option>
														</select>
														<font id=firstNameError3 style="color: red;"></font>
                                            </div>
                                          </div>
                                         <br/><br>
                                        
                                         <div class="form-group has-success">
                                            <label class="col-md-3">Age <span style="color:red;">*</span></label>
                                            <div class="col-md-9">
                                             <form:input type="text" class="form-control" path="addressType1" placeholder="Age" id="agee"/>
                                             <font id=firstNameError4 style="color: red;"></font>
                                            </div>
                                        </div>
                                          <br/><br>
                                          <div class="form-group has-success">
                                            <label class="col-md-3">DOB <span style="color:red;">*</span></label>
                                            <div class="col-md-9">
                                             <form:input type="text" class="form-control" path="dob" placeholder="dd/mm/yyyy" />
                                             <font id=firstNameError4 style="color: red;"></font>
                                            </div>
                                        </div>
									</div>
								</div>
                               <div align="center">
								<button type="submit" onclick="return validate1()" class="btn btn-info waves-effect waves-light">Submit</button>
						       </div>
						</div>
                  </form:form>
			    </div>
		</div>
		<!--end add family  -->	
		
		<!--start add reference  -->	
		
		
<script type="text/javascript">
	 function validate2(from)
     {
	 /*start */ var error=document.getElementById("firsNameError");
    	var firsName=form2["firsName"].value;

        error.innerHTML="";
     
        if( firsName==null || firsName==""){
            error.innerHTML="Enter customer reference name";
            return false;
        }

        else if(!isNaN(firsName)){
            error.innerHTML="Name Can Not be a number";
            return false;
        } 

        if(firsName.length<3){
            error.innerHTML="Name should be minimum 3 character";
            return false;
        } 
        if(firsName.length>25){
            error.innerHTML="Name should be in between 3 to 25 character";
            return false;
        }/*end */ 

        

        var error = document.getElementById("firstNameErro3");
        var sorces1=form2["sorces1"].value;
        error.innerHTML="";
        
      
        if(sorces1=null ||sorces1=="" ) //for text use if(strUser1=="Select")
        {
         error.innerHTML="Please elect relationship ";
        return false;
        }

        var error=document.getElementById("firstNameErro");
    	var ageee=form2["ageee"].value;

        error.innerHTML="";
     
        if( ageee==null || ageee==""){
            error.innerHTML="Enter customer reference number";
            return false;
        }

        else if(isNaN(ageee)){
            error.innerHTML="Enter numbers only";
            return false;
        }

        if(ageee.length<10){
            error.innerHTML="Mobile number should be minimum minimum 10 digit";
            return false;
        } 
        if(ageee.length>11){
            error.innerHTML="Invalid mobile number";
            return false;
        }/*end */  
         
        }  
     </script>		
		
		<div id="custom-modal1" class="modal-demo">
			<button type="button" class="close" onclick="Custombox.close();">
				<span>&times;</span><span class="sr-only">Close</span>
			</button>
			<h4 class="custom-modal-title">ADD CUSTOMER REFERENCES</h4>
			<!-- =============	form:form start from here ==============    -->
			<form:form action="saveCustRefernces" name="form2" onsubmit="return validate2()" modelAttribute="viewcustomers">
				<div class="custom-modal-text text-left">
					<div class="card-box p-b-0">
						<div class="row">
							<form:hidden path="customerId" value="${custDetails.customerId}"/>
							<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
							<div class="form-group has-success">
								<label class="col-md-3">Name <span style="color:red;">*</span></label>
								<div class="col-md-9">
									<form:input type="text" class="form-control" path="salaried" placeholder="Name" id="firsName"/>
									<font id=firsNameError style="color: red;"></font>
								</div>
							</div>
							<br /> <br>
							<div class="form-group has-success">
								<label class="col-md-3">Relationship <span style="color:red;">*</span></label>
								<div class="col-md-9">
									<select name="occupation" class="form-control" id="sorces1">
										<option value="">Select</option>
										<option value="Realtive">Realtive</option>
										<option value="Self">Self</option>
										<option value="Friend">Friend</option>
										<option value="Family">Family</option>
										<option value="Colleague">Colleague</option>
										<option value="Other">Other</option>
									</select>
									<font id=firstNameErro3 style="color: red;"></font>
								</div>
							</div>
							<br /> <br>
							<div class="form-group has-success">
								<label class="col-md-3">Contact No <span style="color:red;">*</span></label>
								<div class="col-md-9">
									<form:input type="text" class="form-control" path="annualIncome"
										placeholder="Contact No" id="ageee"/>
									<font id=firstNameErro style="color: red;"></font>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-group clearfix">
							<div class="col-lg-12">
								<div class="form-group m-b-0">
									<div align="center">
										<button type="submit" onclick="return validate2()" class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>
		<!--end  reference  -->		
			<!--start add proof  -->	
			
			<script type="text/javascript">
	 function validate3(from)
     {
	 
        var error = document.getElementById("carderror");
        var carde=form3["carde"].value;
        error.innerHTML="";
        
      
        if(carde=null ||carde=="" ) //for text use if(strUser1=="Select")
        {
         error.innerHTML="Please select proof type  ";
        return false;
        }

        var error=document.getElementById("cardnumbere");
    	var cardnumver=form3["cardnumver"].value;

        error.innerHTML="";
     
        if( cardnumver==null || cardnumver==""){
            error.innerHTML="Enter proof identity number";
            return false;
        }


        if(cardnumver.length<6){
            error.innerHTML="identity number should be minimum minimum 6 digit";
            return false;
        } 
        if(cardnumver.length>20){
            error.innerHTML="Invalid identity number please entere less then 25 digit";
            return false;
        }/*end */  
         
        }  
     </script>
				
		<div id="custom-modal3" class="modal-demo">
			<button type="button" class="close" onclick="Custombox.close();">
				<span>&times;</span><span class="sr-only">Close</span>
			</button>
			<h4 class="custom-modal-title">Add Prooftype</h4>


			<!-- =============	form:form start from here ==============    -->
			<form:form action="saveExternalId" name="form3" onsubmit="return validate3()" modelAttribute="viewcustomers">
				<div class="custom-modal-text text-left">
					<div class="card-box p-b-0">
						<div class="row">
						<form:hidden path="customerId" value="${custDetails.customerId}"/>
							<div class="form-group has-success">
								<label class="col-md-3">Name of Proof Identity <span style="color:red;">*</span></label>
								<div class="col-md-9">
									<select name="correspondence" class="form-control" path="idType" id="carde">
										<option value="">Select</option>
										<option value="Aadhar card">Aadhar card</option>
										<option value="Election ID">Election ID</option>
										<option value="Driving License">Driving License</option>
										<option value="Passport">Passport</option>
										<option value="Pancard">Pancard</option>
										<option value="Others">Others</option>
									</select>
									<font id=carderror style="color: red;"></font>
								</div>
							</div>
							<br /> <br>
							<div class="form-group has-success">
								<label class="col-md-3">Card No <span style="color:red;">*</span></label>
								<div class="col-md-9">
									<form:input type="text" class="form-control" path="anniversary"
										placeholder="Enter Card No" id="cardnumver"/>
										<font id=cardnumbere style="color: red;"></font>
								</div>
							</div>
						</div>



						<div class="form-group clearfix">
							<div class="col-lg-12">
								<div class="form-group m-b-0">
									<div class="col-sm-offset-6 col-sm-9 m-t-15">

										<button type="submit" onclick="return validate3()"
											class="btn btn-primary waves-effect waves-light">
											Save</button>
										<!-- <button type="reset"
												class="btn btn-default waves-effect m-l-5">Cancel</button>
										</div> -->
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
              
			</form:form>
		</div>
<!--end proof  -->		

		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->



	</div>
	<!-- END wrapper -->



	<script>
		var resizefunc = [];
	</script>

	<!-- jQuery  -->
	<!-- <script src="resources/js/jquery.min.js"></script>-->
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
	<script
		src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript"
		src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript"
		src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js"
		type="text/javascript"></script>
	<script
		src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"
		type="text/javascript"></script>
	<script
		src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"
		type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
		type="text/javascript"></script>


	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>

</body>
</html>