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
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
      <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
     <!--  <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="resources/js/modernizr.min.js"></script>
 <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
        
               
      <!-- accept (dot) -->  
         <script language="Javascript">
         function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;
 
          return true;
       }
    
   </script>
        
         <!--  // interger validation script -->
        
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
 
 <script language="javascript" type="text/javascript">
    function onlyNumbersAndPlus(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode == 43)
            return true;
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyNumbers(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;   //if IE
        else
            charCode = evt.which; //if firefox
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
 
    function onlyAlphabets(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;  //for IE
        else
            charCode = evt.which;  //for firefox
        if (charCode == 32) //for &lt;space&gt; symbol
            return true;
        if (charCode > 31 && charCode < 65) //for characters before 'A' in ASCII Table
            return false;
        if (charCode > 90 && charCode < 97) //for characters between 'Z' and 'a' in ASCII Table
            return false;
        if (charCode > 122) //for characters beyond 'z' in ASCII Table
            return false;
        return true;
    }
</script>
<!-- single disble -->

<script>
function myFunction() {
    document.getElementById("datepicker").disabled = true;
}

function myFunctio() {
    document.getElementById("datepicker").disabled = false;
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
                            <li class="hidden-xs hidden-sm"	>
                               <font face="verdana" class="page-title">EDIT APPLICATION FORM </font>
                               <!--  <h4 class="page-title">Edit Customer</h4> -->
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

                        <!-- Right(Notification and Searchbox -->
                        

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
           <%--  <%@ include file="/jsp/sildermenu.jsp" %> --%>
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
                           <form:form action="saveEdit" modelAttribute="editCustomer">
                            <!-- PROGRESSBAR WIZARD -->
                            <div class="col-lg-12">
                                <div class="card-box p-b-0">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                      
                                    </div>

                        			<h4 class="header-title m-t-0 m-b-30">View Customer Progress Bar</h4>

                                    <div id="progressbarwizard" class="pull-in">
                                       <ul>
                                            <li><a href="#account-2" data-toggle="tab">ABOUT YOU</a></li>
                                            <li><a href="#last-2" data-toggle="tab">YOUR FAMILY</a></li>
                                            <li><a href="#profile-tab-2" data-toggle="tab">HEALTH ANALAYSIS</a>
                                            <li><a href="#welezo-2" data-toggle="tab">PROOF TYPE</a>
                                            <li><a href="#finish-2" data-toggle="tab">YOUR REFERENCE</a></li>
                                            
                                        </ul> 
                                        <div class="tab-content b-0 m-b-0">

                                            <div id="bar" class="progress progress-striped progress-bar-primary-alt active">
                                                <div class="bar progress-bar progress-bar-primary"></div>
                                            </div>

                                            <div class="tab-pane p-t-10 fade" id="account-2">
                                                <div class="row">
                                                <form:hidden path="createdBy"  value="<%=id%>" class="form-control" id="inputEmail3"  />
                                                <form:hidden path="customerId" value="${custDetails.customerId}"/>
                                                    <div class="form-group clearfix">
													<form:label path="customerName" class="col-md-2 control-label ">Name *</form:label>
													<div class="col-md-4">
														<form:input class="form-control required" maxlength="40" onkeypress="return onlyAlphabets(event,this);"  path="customerName" value="${custDetails.customerName}" />
													</div>
													<form:label path="dob" class="col-md-2 control-label "> Date of birth:</form:label>
													<div class="col-md-3">
														<form:input class="form-control" path="dob" onkeypress="return IsNumeric(event);" 
															value="${dob}" placeholder="mm/dd/yyyy"
															id="datepicker" />
															 <span id="error" style="color: Red; display: none"></span>
													</div>
												    </div>
												    
                                                                                                        
													<div class="form-group clearfix">
													
													<form:label path="gender" class="col-md-2 control-label "> Gender:</form:label>
													<div class="col-md-4">
													
													<c:if test="${custDetails.gender== null }">
													<form:radiobutton path="gender" value="Male" disabled="" /> Male
													<form:radiobutton path="gender"	value="Female" disabled=""/> Female
													<form:radiobutton path="gender"	value="Other" disabled=""/> Other
													 </c:if>
													<c:if test="${custDetails.gender=='Male'}">
													<form:radiobutton path="gender" value="Male" checked="true" /> Male
													<form:radiobutton path="gender"	value="Female" disabled=""/> Female
													<form:radiobutton path="gender"	value="Other" disabled=""/> Other
													 </c:if>
													 
													 <c:if test="${custDetails.gender=='Female'}">
														<form:radiobutton path="gender" value="Male" disabled="" /> Male
													<form:radiobutton path="gender"	value="Female" checked="true"/> Female
														<form:radiobutton path="gender"	value="Other" disabled=""/> Other
													 </c:if>
													 
													 <c:if test="${custDetails.gender=='Other'}">
														<form:radiobutton path="gender" value="Male" disabled=""/> Male
													<form:radiobutton path="gender"	value="Female" disabled=""/> Female
														<form:radiobutton path="gender"	value="Other" checked="true"/> Other
													 </c:if>
													 </div>
												</div>
                                                    
                                                 <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " >Marital status :</label>
                                                        <div class="col-md-3">
                                                         <c:if test="${custDetails.maritalStatus == null}">
                                                            <form:radiobutton path="maritalStatus" onclick="myFunction()" value="Single"  disabled=""/> Single
                                                            <form:radiobutton path="maritalStatus" onclick="myFunctio()" value="Married" disabled="" /> Married
                                                            <form:radiobutton path="maritalStatus" value="Others"  disabled=""/> Others
                                                            </c:if>
                                                             <c:if test="${custDetails.maritalStatus == ''}">
                                                            <form:radiobutton path="maritalStatus" onclick="myFunction()" value="Single"  disabled=""/> Single
                                                            <form:radiobutton path="maritalStatus" onclick="myFunctio()" value="Married" disabled="" /> Married
                                                            <form:radiobutton path="maritalStatus" value="Others"  disabled=""/> Others
                                                            </c:if>
                                                       		 <c:if test="${custDetails.maritalStatus =='Single'}">
                                                            <form:radiobutton path="maritalStatus" onclick="myFunction()" value="Single" checked="true"/> Single
                                                            <form:radiobutton path="maritalStatus"  onclick="myFunctio()" value="Married" disabled="" /> Married
                                                            <form:radiobutton path="maritalStatus" value="Others"  disabled=""/> Others
                                                            </c:if>
                                                             <c:if test="${custDetails.maritalStatus =='Married'}">
                                                            <form:radiobutton path="maritalStatus" onclick="myFunction()" value="Single" disabled=""/> Single
                                                            <form:radiobutton path="maritalStatus"  onclick="myFunctio()" value="Married" checked="true"/> Married
                                                            <form:radiobutton path="maritalStatus" value="Others"  disabled=""/> Others
                                                            </c:if>
                                                             <c:if test="${custDetails.maritalStatus =='Others'}">
                                                            <form:radiobutton path="maritalStatus" onclick="myFunction()" value="Single" disabled=""/> Single
                                                            <form:radiobutton path="maritalStatus"  onclick="myFunctio()" value="Married" disabled="" /> Married
                                                            <form:radiobutton path="maritalStatus" value="Others"  checked="true"/> Others
                                                            </c:if>
                                                            </div>
                                                            
                                                            <div class="col-md-4">
                                                                 Anniversary Date :
                                                            <form:input path="anniversary" id="datepicker1" value="${custDetails.anniversary}" /><!-- id="demo1" -->
                                                         </div>
                                                    </div>   
                                                    
												<hr>
							
							
							
							
						<%-- 	<c:forEach var="customerResidenceAddress" varStatus="status" items="${customerAddress}"> --%>
							
							<form:hidden path="aid" value="${residenceAddress.aid}"/>
							
					<%--  <c:if test="${customerResidenceAddress.addressCatagories.addressType == 'Residence' }">  --%>
					 
		  <div class="form-group clearfix">
								<c:choose>
									<c:when test="${not empty allAddressCatagories}">
									<label class="col-md-2 control-label " for="confirm1">Address Categories </label>
									<div class="col-md-3">
										<form:select path="addressType1" title="---- Customer Address Type ----"
											class="form-control" id="Residence Address">
											<form:option value="${residenceAddress.addressCatagories.addressTypeId}" >${residenceAddress.addressCatagories.addressType}</form:option>
											<c:forEach var="addressType" varStatus="status"				items="${allAddressCatagories}">
												<c:if test="${addressType.entity=='Customer'}">
													<form:option path="addressType1" value="${addressType.addressTypeId}">${addressType.addressType}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
										</div>
									</c:when>
								</c:choose>
						</div>
						
						
						
                                               <div class="form-group clearfix">
													<form:label path="residenceAddresss"
														class="col-md-2 control-label ">Address Line1 *</form:label>
													<div class="col-md-10">
														<form:input class="form-control"
															path="residenceAddresss" rows="2"
															value="${residenceAddress.residenceAddresss}" />
													</div>
												</div>
                                                    
                                                    <div class="form-group clearfix">
													<form:label path="city" class="col-md-2 control-label "> City:</form:label>
													<div class="col-md-2">
														<form:input type="text" onkeypress="return onlyAlphabets(event,this);" minlength="3" maxlength="20" path="city" class="form-control"
															placeholder="city" value="${residenceAddress.city}" />
													</div>
													<form:label path="pincode" class="col-md-1 control-label "> Pincode:</form:label>
													<div class="col-md-1">
														<form:input type="text" minlength="3" maxlength="6" path="pincode"
															class="form-control" placeholder="pincode" onkeypress="return IsNumeric(event);" 
															value="${residenceAddress.pincode}" />
															 <span id="error" style="color: Red; display: none">)</span>
													</div>
													<form:label path="landmark" class="col-md-1 control-label "> Landmark:</form:label>
													<div class="col-md-2">
														<form:input type="text" minlength="3" maxlength="35" path="landmark" onkeypress="return onlyAlphabets(event,this);" 
															class="form-control" placeholder="Landmark"
															value="${residenceAddress.landmark}" />
													</div>
													<form:label path="landline" class="col-md-1 control-label "> Landline:</form:label>
													<div class="col-md-2">
														<form:input type="text"  maxlength="11" minlength="10" path="landline" onkeypress="return IsNumeric(event);" 
															class="form-control" placeholder="Landline"
															value="${residenceAddress.landline}" />
															 <span id="error" style="color: Red; display: none"></span>
													</div>
												</div>
                                                    
                                                    
                                                    <div class="form-group clearfix">
													<form:label path="email" class="col-md-2 control-label "> Email:</form:label>
													<div class="col-md-3">
														<form:input type="text" minlength="3" maxlength="30" path="email" class="form-control"
															placeholder="Email" value="${residenceAddress.email}" />
													</div>
													<form:label path="primaryMob"
														class="col-md-2 control-label "> Primary Mobile:</form:label>
													<div class="col-md-2">
														<form:input type="text" maxlength="10" minlength="10" path="primaryMob" onkeypress="return IsNumeric(event);" 
															class="form-control" placeholder="Primary Mobile"
															value="${residenceAddress.primaryMob}" />
															  <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
													</div>
													<form:label path="altMob" class="col-md-1 control-label "> Alt.Mobile:</form:label>
													<div class="col-md-2">
														<form:input type="text"  maxlength="10" minlength="10" path="altMob" class="form-control" onkeypress="return IsNumeric(event);" 
															placeholder="Alt.Mobile"
															value="${residenceAddress.altMob}" />
															  <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
													</div>

												</div>
											<%-- 	</c:if> --%>
												
												
												
												
												<hr>
					 <div class="form-group clearfix">
					<%--  <c:if test="${customerResidenceAddress.addressCatagories.addressType == 'WorkPlace' ||  customerResidenceAddress.addressCatagories.addressType == 'Other'}"> --%>
								<c:choose>
									<c:when test="${not empty allAddressCatagories}">
									<label class="col-md-2 control-label " for="confirm1">Address Categories </label>
									<div class="col-md-3">
										<form:select path="addressType2" title="---- Customer Address Type ----"
											class="form-control" id="Residence Address">
											<form:option value="${workPlaceAddress.addressCatagories.addressTypeId}" >${workPlaceAddress.addressCatagories.addressType}</form:option>
											<c:forEach var="addressType" varStatus="status"				items="${allAddressCatagories}">
												<c:if test="${addressType.entity=='Customer'}">
													<form:option path="addressType2" value="${addressType.addressTypeId}">${addressType.addressType}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
										</div>
									</c:when>
								</c:choose>
							<%-- 	</c:if> --%>
						</div>
						
						<form:hidden path="aid" value="${workPlaceAddress.aid}"/>
												
                                               <div class="form-group clearfix">
													<form:label path="residenceAddresss"
														class="col-md-2 control-label ">Address Line2 *</form:label>
													<div class="col-md-10">
														<form:input class="form-control"
															path="residenceAddresss" rows="2"
															value="${workPlaceAddress.residenceAddresss}" />
													</div>
												</div>
                                                   
                                                    <div class="form-group clearfix">
													<form:label path="city" class="col-md-2 control-label "> City:</form:label>
													<div class="col-md-2">
														<form:input type="text" onkeypress="return onlyAlphabets(event,this);" minlength="3" maxlength="20" path="city" class="form-control"
															placeholder="city" value="${workPlaceAddress.city}" />
													</div>
													<form:label path="pincode" class="col-md-1 control-label "> Pincode:</form:label>
													<div class="col-md-1">
														<form:input type="text" minlength="3" maxlength="6" path="pincode"
															class="form-control" placeholder="pincode" onkeypress="return IsNumeric(event);" 
															value="${workPlaceAddress.pincode}" />
															 <span id="error" style="color: Red; display: none">)</span>
													</div>
													<form:label path="landmark" class="col-md-1 control-label "> Landmark:</form:label>
													<div class="col-md-2">
														<form:input type="text" minlength="3" maxlength="35" path="landmark" onkeypress="return onlyAlphabets(event,this);" 
															class="form-control" placeholder="Landmark"
															value="${workPlaceAddress.landmark}" />
													</div>
													<form:label path="landline" class="col-md-1 control-label "> Landline:</form:label>
													<div class="col-md-2">
														<form:input type="text"  maxlength="11" minlength="10" path="landline" onkeypress="return IsNumeric(event);" 
															class="form-control" placeholder="Landline"
															value="${workPlaceAddress.landline}" />
															 <span id="error" style="color: Red; display: none"></span>
													</div>
												</div>
                                                    
                                                    
                                                    <div class="form-group clearfix">
													<form:label path="email" class="col-md-2 control-label "> Email:</form:label>
													<div class="col-md-3">
														<form:input type="text" minlength="3" maxlength="30" path="email" class="form-control"
															placeholder="Email" value="${workPlaceAddress.email}" />
													</div>
													<form:label path="primaryMob"
														class="col-md-2 control-label "> Primary Mobile:</form:label>
													<div class="col-md-2">
														<form:input type="text" maxlength="10" minlength="10" path="primaryMob" onkeypress="return IsNumeric(event);"
															class="form-control" placeholder="Primary Mobile"
															value="${workPlaceAddress.primaryMob}" />
															  <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
													</div>
													<form:label path="altMob" class="col-md-1 control-label "> Alt.Mobile:</form:label>
													<div class="col-md-2">
														<form:input type="text"  maxlength="10" minlength="10" path="altMob" class="form-control" onkeypress="return IsNumeric(event);" 
															placeholder="Alt.Mobile"
															value="${workPlaceAddress.altMob}" />
															  <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
													</div>

												</div>
											
												<%-- </c:forEach> --%>
												
                                                    <div class="form-group clearfix">
													<form:label path="correspondence"
														class="col-md-2 control-label "> Correspondence At:</form:label>
													<div class="col-md-8">
													<c:if test="${custDetails.correspondence == null }">
														<form:radiobutton path="correspondence" value="Residence" disabled="" /> Residence
													<form:radiobutton path="correspondence" value="WorkPlace"  disabled=""/> Office/ Alternate Address
													 </c:if>
													<c:if test="${custDetails.correspondence =='Residence'}">
														<form:radiobutton path="correspondence" value="Residence" checked="true" /> Residence
													<form:radiobutton path="correspondence" value="WorkPlace"  disabled=""/> Office/ Alternate Address
													 </c:if>
													 
													 <c:if test="${custDetails.correspondence =='WorkPlace'}">
														<form:radiobutton path="correspondence" value="Residence" disabled=""/> Residence
													<form:radiobutton path="correspondence" value="WorkPlace" checked="true"  /> Office/ Alternate Address
													 </c:if>
														
													</div>
												</div>
                                                    
                                                    <div class="form-group clearfix">

													<form:label path="communiation"
														class="col-md-3 control-label "> Preferred mode of communication:</form:label>
													<div class="col-md-2">
													
													
													<c:if test="${custDetails.communiation== null}">
														<form:radiobutton path="communiation" value="sms" disabled="" /> SMS
													<form:radiobutton path="communiation" value="mail"  disabled=""/> Mail
														<form:radiobutton path="communiation" value="call" disabled=""/> Call
													 </c:if>
													<c:if test="${custDetails.communiation=='sms'}">
														<form:radiobutton path="communiation" value="sms" checked="true" /> SMS
													<form:radiobutton path="communiation" value="mail"  disabled=""/> Mail
														<form:radiobutton path="communiation" value="call" disabled=""/> Call
													 </c:if>
													 <c:if test="${custDetails.communiation=='mail'}">
														<form:radiobutton path="communiation" value="sms" checked="true" /> SMS
													<form:radiobutton path="communiation" value="mail" checked="true"/> Mail
														<form:radiobutton path="communiation" value="call" disabled=""/> Call
													 </c:if>
													 <c:if test="${custDetails.communiation=='call'}">
														<form:radiobutton path="communiation" value="sms" checked="true" /> SMS
													<form:radiobutton path="communiation" value="mail" disabled=""/> Mail
														<form:radiobutton path="communiation" value="call" checked="true"/> Call
													 </c:if>
														
													</div>
												</div>
												<hr>
												
												<div class="form-group clearfix">
														<form:label path="salaried" class="col-lg-4 control-label"> SALARIED</form:label>
														<div class="col-md-8">
														
														
														<c:if test="${custDetails.sector == null }">
															  <form:radiobutton path="salaried" value="Public Sector" disabled=""  /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
														<c:if test="${custDetails.sector =='Public Sector'}">
															  <form:radiobutton path="salaried" value="Public Sector" checked="true"  /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Private Sector'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" checked="true" /> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															  <c:if test="${custDetails.sector =='MNC'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" checked="true"/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Goverment'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" checked="true"/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='IT / BT /Pharma'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  checked="true"/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='BPO'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" checked="true"/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='FMCG'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" checked="true"/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Construction/ Real Estate'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" checked="true"/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Leisure / Holiday'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" checked="true"/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Insurance'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" checked="true"/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" disabled=""/> Banking
  															 </c:if>
  															 <c:if test="${custDetails.sector =='Banking'}">
															  <form:radiobutton path="salaried" value="Public Sector" disabled="" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector" disabled=""/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC" disabled=""/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment" disabled=""/> Goverment <br> <br>
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma"  disabled=""/> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" disabled=""/> BPO
  															 <form:radiobutton path="salaried" value="FMCG" disabled=""/> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" disabled=""/> Construction/ Real Estate <br> <br>
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" disabled=""/> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" disabled=""/> Insurance
  															 <form:radiobutton path="salaried" value="Banking" checked="true"/> Banking
  															 </c:if>
														</div>

													</div>
													<hr>
                                                    
                                                    <div class="form-group clearfix">
														<form:label path="occupation"  class="col-lg-4 control-label " >
															BUSINESS / PROFESSION / OCCUPATION</form:label>
														<div class="col-lg-8">
														
														<c:if test="${custDetails.ocupation == null}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='self employed'}">
															<form:radiobutton path="occupation" value="self employed" checked="true"/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Business Man'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" checked="true" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Doctor'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" checked="true"/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Lawyer'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" checked="true"/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='CA'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" checked="true"/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Consultant'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" checked="true"/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Retired'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" checked="true"/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Student'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" checked="true"/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Homemaker'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" checked="true"/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" disabled=""/> Other  <br> <br>
														</c:if>
														<c:if test="${custDetails.ocupation =='Other'}">
															<form:radiobutton path="occupation" value="self employed" disabled=""/> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" disabled="" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" disabled=""/> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" disabled=""/> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" disabled=""/> CA 
  															<form:radiobutton path="occupation" value="Consultant" disabled=""/> Consultant
  															<form:radiobutton path="occupation" value="Retired" disabled=""/> Retired 
  															<form:radiobutton path="occupation" value="Student" disabled=""/> Student
  															<form:radiobutton path="occupation" value="Homemaker" disabled=""/> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" checked="true"/> Other  <br> <br>
														</c:if>
														</div>
													</div>
                                                    <hr>
                                                   <div class="form-group clearfix">
														<form:label path="annualIncome" class="col-lg-4 control-label " for="surname1">
															ANNUAL FAMILY INCOME:</form:label>
														<div class="col-lg-8">
														<c:if test="${custDetails.annualIncome == null }">
															<form:radiobutton path="annualIncome" value="1lac" disabled="" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" disabled="" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" disabled=""/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" disabled=""/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" disabled=""/> >10 Lakhs 
  															</c:if>
														
														<c:if test="${custDetails.annualIncome =='1lac'}">
															<form:radiobutton path="annualIncome" value="1lac" checked="true" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" disabled="" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" disabled=""/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" disabled=""/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" disabled=""/> >10 Lakhs 
  															</c:if>
  															<c:if test="${custDetails.annualIncome =='1-3lac'}">
															<form:radiobutton path="annualIncome" value="1lac" disabled="" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" checked="true" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" disabled=""/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" disabled=""/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" disabled=""/> >10 Lakhs 
  															</c:if>
  															<c:if test="${custDetails.annualIncome =='3-5lac'}">
															<form:radiobutton path="annualIncome" value="1lac" disabled="" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" disabled="" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" checked="true"/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" disabled=""/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" disabled=""/> >10 Lakhs 
  															</c:if>
  															<c:if test="${custDetails.annualIncome =='5-10lac'}">
															<form:radiobutton path="annualIncome" value="1lac" disabled="" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" disabled="" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" disabled=""/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" checked="true"/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" disabled=""/> >10 Lakhs 
  															</c:if>
  															<c:if test="${custDetails.annualIncome =='>10lac'}">
															<form:radiobutton path="annualIncome" value="1lac" disabled="" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" disabled="" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" disabled=""/> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" disabled=""/> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" checked="true"/> >10 Lakhs 
  															</c:if>
  													</div>
													</div>
													</div>
													<div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-3">      
                                              <ul class="pager m-b-0 wizard">
                                               <!--  <li class="next last"><a href="#" class="btn btn-primary waves-effect waves-light">Last</a></li> -->
                                                 <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                               <!--  <li class="save"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li> -->
                                            </ul>
                                               </div>
                                               </div>   
													
												</div>
 <!--  -------------------- ----------------------------------Your family---------------------------------------------------------------   -->
                                            
                                            
                                                  <div class="tab-pane p-t-10 fade" id="last-2">
                                                      <div class="row">
                                                   <div class="form-group clearfix">
													<label class="col-md-2 control-label "> YOUR
														FAMILY:</label>
													<div class="col-md-8">
													 <div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	
														    <form:label path="FamilyName" ><th>Name</th></form:label>
    														<form:label path="sex" ><th>Gender</th> </form:label>
    														<form:label path="relationship" ><th>Relationship</th></form:label>
    														<form:label path="dob" ><th>DOB</th></form:label>
    														<form:label path="age" ><th>Age</th></form:label>
																</tr>
															</thead>
															<tbody>
															<c:forEach items="${family}" var="cust" varStatus="counter">
															
																<form:hidden path="familyId" value="${cust.familyId}"/>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" path="FamilyName" maxlength="25" minlength="3" value="${cust.FName}"/></td>
    									    	 <td>        <%-- < path="sex" value="${cust.gender}" /> --%>
    														 <div>
                                                         <select name="sex" path="sex" >
											                <option value="${cust.gender}">${cust.gender}</option>
											                <option value="Male" >Male</option>
											                <option value="Female"> Female </option>
											            </select>  
														</div>
    											 </td>
    														<td>  
    														
    													<div>
                                                        <select name="relationship" path="sex" >
											                <option value="${cust.relationship}">${cust.relationship}</option>
											                <option value="Self"> Self </option>
											                <option value="Spouse"> Spouse </option>
											                <option value="Son"> Son </option>
															<option value="Parent"> Parent</option>
								            		 	 	 <option value="Daugther">Daugther</option>
															<option value="Other">Other</option>
																			            </select>
    													</div>
    														   														
    														</td>
    														 <td><form:input type="text" path="memberDOB" value="${cust.dob}"  id="datepicker${counter.index + 3}"/></td>
    														 <td><form:input type="text" onkeypress="return IsNumeric(event);" path="age" maxlength="3" minlength="1" value="${cust.age}" /></td>
  														</tr>
  														
 														</c:forEach>
 														</tbody>
 														<%-- <tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName" /></td>
    														<td>
    													<div>
                                                        <select name="sex" >
											                <option value="">--Select--</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											                
											            </select>
														</div>
											            </td>
    													<td>	<div>
                                                        <select name="relationship"  >
											                <option value="">--Select--</option>
											               <option value="Father"> Father </option>
											                <option value="Mother"> Mother </option>
											                <option value="Wife"> Wife </option>
											                <option value="Husband"> Husband </option>
											                <option value="Children"> Children </option>
											                <option value="Other"> Other </option>
											            </select>
    													</div>
    														</td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age"  /></td>
  														</tr>
 														
 														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName" /></td>
    														<td>
    													<div>
                                                        <select name="sex" >
											                <option value="">--Select--</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											                
											            </select>
														</div>
											            </td>
    													
    													<td>	<div>
                                                        <select name="relationship"  >
											                <option value="">--Select--</option>
											               <option value="Father"> Father </option>
											                <option value="Mother"> Mother </option>
											                <option value="Wife"> Wife </option>
											                <option value="Husband"> Husband </option>
											                <option value="Children"> Children </option>
											                <option value="Other"> Other </option>
											            </select>
    													</div>
    														</td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age"  /></td>
  														</tr> --%>
 														
														</table>
														</div>
													</div>
												</div>
												
												
												<hr>
                                                    </div>
                                                    <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-3">      
                                              <ul class="pager m-b-0 wizard">
                                              
                                                <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                                 <!--  <li class="next last"><a href="#" class="btn btn-primary waves-effect waves-light">Last</a></li> -->
                                            <!--  <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li> -->
                                            </ul>
                                               </div>
                                               </div>   
                                                    
                                       </div>             												
                                                    <%--  <div class="form-group clearfix">
													<label class="col-md-2 control-label "> YOUR
														PAYMENT:</label>
													<div class="col-md-8">
														<form:radiobutton path="" value="cheque" />
														Cheque:
														<form:label path="chequeNumber"> ChequeNo.</form:label>
														<form:input path="chequeNumber" type="text"
															value="${customerPayment.chequeNumber}" />
														<form:label path="bank">  BANK </form:label>
  															<form:input path="bank" type="text" value="${customerPayment.bank}" placeholder="Bank Name" />
														<form:label path="chequeDate">Cheque Date</form:label>
														<form:input path="chequeDate"
															value="${chequeDate}"
															placeholder="mm/dd/yyyy" id="datepicker-autoclose" />
														<br> <br>
														<form:radiobutton path="" value="credit" />
														<form:label path="creditDebit">Credit/Debit card </form:label>
														<form:input path="creditDebit" type="text"
															value="${customerPayment.creditDebit}"
															placeholder="card Number Authorization code" />
													</div>
												</div>  --%>
												
                                                    <%-- <c:if test="${topups=='thyroid'}">checked</c:if> --%>
                                                    <%-- <c:if test="${topups=='woman_check'}">checked</c:if> --%>
                                               
  <!---------------------------------------------------- step2 ------------------------------------------------------------------------------------->
                                         
  <div class="tab-pane p-t-10 fade" id="profile-tab-2">
                                                <div class="row">
                                                    
                                                    
                                                    	<form:hidden path="id" value="${customerHealth.id}"/>
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label ">HEALTH
															ANALYSIS</label>
														<div class="col-lg-10">
															* Number of family members in the age group of : <br> &nbsp; <form:label path="m5" >5</form:label>
															<form:input type="text" path="m5" onkeypress="return IsNumeric(event);"  value="${customerHealth.m5}" maxlength="2" size="1" />&nbsp;  &nbsp;
															<form:label path="m618" >6-18</form:label>
															<form:input type="text" onkeypress="return IsNumeric(event);"  path="m618" value="${customerHealth.m618}" maxlength="2" size="1" />&nbsp;  &nbsp;
															<form:label path="m1935" >19-35</form:label>
															<form:input type="text" onkeypress="return IsNumeric(event);"  path="m1935" value="${customerHealth.m1935}" maxlength="2" size="1" />&nbsp;  &nbsp;

															<form:label path="m3650" >36-50</form:label>
															<form:input type="text" onkeypress="return IsNumeric(event);" path="m3650" value="${customerHealth.m3650}" maxlength="2" size="1" />&nbsp;  &nbsp;
															<form:label path="m3650" >51-65</form:label>   
															<form:input type="text" onkeypress="return IsNumeric(event);"  path="m5165" value="${customerHealth.m5165}" maxlength="2" size="1" />&nbsp;  &nbsp;
															<form:label path="occupation" >>65</form:label>
															<form:input type="text" onkeypress="return IsNumeric(event);"  path="m65" value="${customerHealth.m65}" maxlength="2" size="1" />
														<span id="error" style="color: Red; display: none"></span>
														</div>
													</div>
                                                    <div class="form-group clearfix">
														<label  class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Medical Expenses per year : <br> &nbsp; <form:label path="diagnostic" >Diagnostics Rs.</form:label>
															<form:input type="text" onkeypress="return isNumberKey(event)" path="diagnostic" value="${customerHealth.diagnostic}" maxlength="7"
																size="6" />
																<span id="error" style="color: Red; display: none"></span>
																
															/- <form:label path="consultion" >Consultations Rs. </form:label>
															<form:input type="text" onkeypress="return isNumberKey(event)" path="consultion" value="${customerHealth.consultation}" maxlength="7"
																size="6" />&nbsp;
																<span id="error" style="color: Red; display: none"></span>
															/- <br> <br><form:label path="pharmacy"  > Pharmacy Rs.</form:label>
															<form:input type="text" onkeypress="return isNumberKey(event)" path="pharmacy" value="${customerHealth.pharmacy}" maxlength="7"
																size="6" />
																<span id="error" style="color: Red; display: none"></span>
															/-<form:label path="hospitalization" > Hospitalization Rs.</form:label>
															<form:input type="text" onkeypress="return isNumberKey(event)" path="hospitalization" value="${customerHealth.hospitalization}"
																maxlength="7" size="6" />
																<!-- <span id="error" style="color: Red; display: none"></span> -->
															/-

														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
														<form:label path="custHeigth" >	* Your Height: </form:label>
															<form:input path="custHeigth" value="${customerHealth.custHeight}" maxlength="4"
																size="6" />
																<span id="error" style="color: Red; display: none"></span>
															Cms/inchs; &nbsp;<form:label path="custWeigth" > Your Weight:</form:label>
															<form:input type="text" path="custWeigth" value="${customerHealth.custWeight}" maxlength="4"
																size="6" />
															Kg
                                                          <span id="error" style="color: Red; display: none"></span>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Do you have health insurance? <br> &nbsp;
															
															<c:if test="${customerHealth.insurance == null}">
															<form:radiobutton path="insurance" value="yes" disabled=""/> Yes
                                                            <form:radiobutton path="insurance" value="no"  disabled=""/> No
                                                            </c:if>
															<c:if test="${customerHealth.insurance =='yes'}">
															<form:radiobutton path="insurance" value="yes" checked="true"/> Yes
                                                            <form:radiobutton path="insurance" value="no"  disabled=""/> No
                                                            </c:if>
                                                            <c:if test="${customerHealth.insurance =='no'}">
															<form:radiobutton path="insurance" value="yes" disabled=""/> Yes
                                                            <form:radiobutton path="insurance" value="no"  checked="true"/> No
                                                            </c:if>
                                                               &nbsp;&nbsp;  Annual Premium: 
															<form:input path="premium" type="text"  value="${customerHealth.premium}"/>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Do you believe you need a health check only when you
															are sick: <br> &nbsp;
															
															<c:if test="${customerHealth.sick == null}">
															 <form:radiobutton path="sick" value="Yes" disabled=""/> Yes
                                                            <form:radiobutton path="sick" value="No" disabled=""/> No
                                                            </c:if>
															  <c:if test="${customerHealth.sick =='Yes'}">
															 <form:radiobutton path="sick" value="Yes" checked="true"/> Yes
                                                            <form:radiobutton path="sick" value="No" disabled=""/> No
                                                            </c:if>
                                                            <c:if test="${customerHealth.sick =='No'}">
															 <form:radiobutton path="sick" value="Yes" disabled=""/> Yes
                                                            <form:radiobutton path="sick" value="No" checked="true"/> No
                                                            </c:if>
														</div>
													</div>
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* How often do you go for health checks? <br> &nbsp;
															
															<c:if test="${customerHealth.healthCheck == null }">
															 <form:radiobutton path="healthCheck"  value="Never" disabled="" /> Never
                                                            <form:radiobutton path="healthCheck" value="once a year" disabled=""/> Once a year
                                                            <form:radiobutton path="healthCheck" value="once a 2 year" disabled=""/> Once a 2 years
                                                            <form:radiobutton path="healthCheck" value="on Advice" disabled=""/> On Advice
															</c:if>
															<c:if test="${customerHealth.healthCheck =='Never'}">
															 <form:radiobutton path="healthCheck"  value="Never" checked="true"/> Never
                                                            <form:radiobutton path="healthCheck" value="once a year" disabled=""/> Once a year
                                                            <form:radiobutton path="healthCheck" value="once a 2 year" disabled=""/> Once a 2 years
                                                            <form:radiobutton path="healthCheck" value="on Advice" disabled=""/> On Advice
															</c:if>
															<c:if test="${customerHealth.healthCheck =='once a year'}">
															 <form:radiobutton path="healthCheck"  value="Never" disabled=""/> Never
                                                            <form:radiobutton path="healthCheck" value="once a year" checked="true"/> Once a year
                                                            <form:radiobutton path="healthCheck" value="once a 2 year" disabled=""/> Once a 2 years
                                                            <form:radiobutton path="healthCheck" value="on Advice" disabled=""/> On Advice
															</c:if>
															<c:if test="${customerHealth.healthCheck =='once a 2 year'}">
															 <form:radiobutton path="healthCheck"  value="Never" disabled=""/> Never
                                                            <form:radiobutton path="healthCheck" value="once a year" disabled=""/> Once a year
                                                            <form:radiobutton path="healthCheck" value="once a 2 year" checked="true"/> Once a 2 years
                                                            <form:radiobutton path="healthCheck" value="on Advice" disabled=""/> On Advice
															</c:if>
															<c:if test="${customerHealth.healthCheck =='on Advice'}">
															 <form:radiobutton path="healthCheck"  value="Never" disabled=""/> Never
                                                            <form:radiobutton path="healthCheck" value="once a year" disabled=""/> Once a year
                                                            <form:radiobutton path="healthCheck" value="once a 2 year" disabled=""/> Once a 2 years
                                                            <form:radiobutton path="healthCheck" value="on Advice" checked="true"/> On Advice
															</c:if>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* When do you consult specialists? <br> &nbsp;
															<c:if test="${customerHealth.consultSpecialist == null}">
															 <form:radiobutton path="consultSpecialist" value="regularly" disabled=""/> Regularly
                                                            <form:radiobutton path="consultSpecialist" value="During illness" disabled=""/> During illness
                                                            <form:radiobutton path="consultSpecialist" value="On Advice" disabled=""/> On Advice
                                                            </c:if>
															
															<c:if test="${customerHealth.consultSpecialist =='regularly'}">
															 <form:radiobutton path="consultSpecialist" value="regularly" checked="true"/> Regularly
                                                            <form:radiobutton path="consultSpecialist" value="During illness" disabled=""/> During illness
                                                            <form:radiobutton path="consultSpecialist" value="On Advice" disabled=""/> On Advice
                                                            </c:if>
                                                            <c:if test="${customerHealth.consultSpecialist =='During illness'}">
															 <form:radiobutton path="consultSpecialist" value="regularly" disabled=""/> Regularly
                                                            <form:radiobutton path="consultSpecialist" value="During illness" checked="true"/> During illness
                                                            <form:radiobutton path="consultSpecialist" value="On Advice" disabled=""/> On Advice
                                                            </c:if>
                                                            <c:if test="${customerHealth.consultSpecialist =='On Advice'}">
															 <form:radiobutton path="consultSpecialist" value="regularly" disabled=""/> Regularly
                                                            <form:radiobutton path="consultSpecialist" value="During illness" disabled=""/> During illness
                                                            <form:radiobutton path="consultSpecialist" value="On Advice" checked="true"/> On Advice
                                                            </c:if>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* How often do you visit a dentist? <br> &nbsp;
															
															<c:if test="${customerHealth.visitDentist == null }">
															<form:radiobutton path="visitDentist" value="Never" disabled=""/> Never
                                                            <form:radiobutton path="visitDentist" value="Six months" disabled=""/> Six months
                                                            <form:radiobutton path="visitDentist"  value="Year" disabled=""/> Year
                                                            <form:radiobutton path="visitDentist" value="When in pain" disabled=""/> When in pain
                                                            </c:if>
															<c:if test="${customerHealth.visitDentist =='Never'}">
															<form:radiobutton path="visitDentist" value="Never" checked="true"/> Never
                                                            <form:radiobutton path="visitDentist" value="Six months" disabled=""/> Six months
                                                            <form:radiobutton path="visitDentist"  value="Year" disabled=""/> Year
                                                            <form:radiobutton path="visitDentist" value="When in pain" disabled=""/> When in pain
                                                            </c:if>
                                                            <c:if test="${customerHealth.visitDentist =='Six months'}">
															<form:radiobutton path="visitDentist" value="Never" disabled=""/> Never
                                                            <form:radiobutton path="visitDentist" value="Six months" checked="true"/> Six months
                                                            <form:radiobutton path="visitDentist"  value="Year" disabled=""/> Year
                                                            <form:radiobutton path="visitDentist" value="When in pain" disabled=""/> When in pain
                                                            </c:if>
                                                            <c:if test="${customerHealth.visitDentist =='Year'}">
															<form:radiobutton path="visitDentist" value="Never" disabled=""/> Never
                                                            <form:radiobutton path="visitDentist" value="Six months" disabled=""/> Six months
                                                            <form:radiobutton path="visitDentist"  value="Year" checked="true"/> Year
                                                            <form:radiobutton path="visitDentist" value="When in pain" disabled=""/> When in pain
                                                            </c:if>
                                                            <c:if test="${customerHealth.visitDentist =='When in pain'}">
															<form:radiobutton path="visitDentist" value="Never" disabled=""/> Never
                                                            <form:radiobutton path="visitDentist" value="Six months" disabled=""/> Six months
                                                            <form:radiobutton path="visitDentist"  value="Year" disabled=""/> Year
                                                            <form:radiobutton path="visitDentist" value="When in pain" checked="true"/> When in pain
                                                            </c:if>
														</div>
													</div>
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Which system of medicine do you follow ? <br> &nbsp;
															<c:if test="${customerHealth.medicinFollow == null }">
															<form:radiobutton path="medicinFollow" value="Allopathy" disabled=""/> Allopathy
                                                            <form:radiobutton path="medicinFollow" value="homeopathy" disabled=""/> Homeopathy
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda" disabled=""/> Ayurveda
                                                            <form:radiobutton path="medicinFollow" value="Others" disabled=""/>Others
                                                            </c:if>
															
															<c:if test="${customerHealth.medicinFollow =='Allopathy'}">
															<form:radiobutton path="medicinFollow" value="Allopathy" checked="true"/> Allopathy
                                                            <form:radiobutton path="medicinFollow" value="homeopathy" disabled=""/> Homeopathy
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda" disabled=""/> Ayurveda
                                                            <form:radiobutton path="medicinFollow" value="Others" disabled=""/>Others
                                                            </c:if>
                                                            <c:if test="${customerHealth.medicinFollow =='homeopathy'}">
															<form:radiobutton path="medicinFollow" value="Allopathy" disabled=""/> Allopathy
                                                            <form:radiobutton path="medicinFollow" value="homeopathy" checked="true"/> Homeopathy
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda" disabled=""/> Ayurveda
                                                            <form:radiobutton path="medicinFollow" value="Others" disabled=""/>Others
                                                            </c:if>
                                                            <c:if test="${customerHealth.medicinFollow =='Ayurveda'}">
															<form:radiobutton path="medicinFollow" value="Allopathy" disabled=""/> Allopathy
                                                            <form:radiobutton path="medicinFollow" value="homeopathy" disabled=""/> Homeopathy
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda" checked="true"/> Ayurveda
                                                            <form:radiobutton path="medicinFollow" value="Others" disabled=""/>Others
                                                            </c:if>
                                                            <c:if test="${customerHealth.medicinFollow =='Others'}">
															<form:radiobutton path="medicinFollow" value="Allopathy" disabled=""/> Allopathy
                                                            <form:radiobutton path="medicinFollow" value="homeopathy" disabled=""/> Homeopathy
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda" disabled=""/> Ayurveda
                                                            <form:radiobutton path="medicinFollow" value="Others" checked="true"/>Others
                                                            </c:if>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Do you smoke?:<br> &nbsp;
															<c:if test="${customerHealth.smoke == null}">
															 <form:radiobutton path="smoke" value="Yes" disabled=""/> Yes
                                                            <form:radiobutton path="smoke" value="No" disabled=""/> No
                                                            </c:if>
															<c:if test="${customerHealth.smoke =='Yes'}">
															 <form:radiobutton path="smoke" value="Yes" checked="true"/> Yes
                                                            <form:radiobutton path="smoke" value="No" disabled=""/> No
                                                            </c:if>
															<c:if test="${customerHealth.smoke =='No'}">
															 <form:radiobutton path="smoke" value="Yes" disabled=""/> Yes
                                                            <form:radiobutton path="smoke" value="No" checked="true"/> No
                                                            </c:if>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Do you consume alcohol?<br> &nbsp;
															
															<c:if test="${customerHealth.alcohol == '' }">
															<form:radiobutton path="alcohol" value="No" disabled=""/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" disabled=""/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" disabled=""/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" disabled=""/> Heavy
                                                            </c:if>
															<c:if test="${customerHealth.alcohol == null }">
															<form:radiobutton path="alcohol" value="No" disabled=""/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" disabled=""/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" disabled=""/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" disabled=""/> Heavy
                                                            </c:if>
															<c:if test="${customerHealth.alcohol =='No'}">
															<form:radiobutton path="alcohol" value="No" checked="true"/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" disabled=""/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" disabled=""/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" disabled=""/> Heavy
                                                            </c:if>
                                                            <c:if test="${customerHealth.alcohol =='Ligth'}">
															<form:radiobutton path="alcohol" value="No" disabled=""/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" checked="true"/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" disabled=""/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" disabled=""/> Heavy
                                                            </c:if>
                                                            <c:if test="${customerHealth.alcohol =='Moderate'}">
															<form:radiobutton path="alcohol" value="No" disabled=""/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" disabled=""/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" checked="true"/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" disabled=""/> Heavy
                                                            </c:if>
                                                            <c:if test="${customerHealth.alcohol =='heavy'}">
															<form:radiobutton path="alcohol" value="No" disabled=""/> No
                                                            <form:radiobutton path="alcohol" value="Ligth" disabled=""/> Light
                                                            <form:radiobutton path="alcohol" value="Moderate" disabled=""/> Moderate
                                                            <form:radiobutton path="alcohol" value="heavy" checked="true"/> Heavy
                                                            </c:if>
														</div>
													</div>
													
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label "></label>
														<div class="col-lg-10">
															* Your food habits?<br> &nbsp;
															
															<c:if test="${customerHealth.foodHabits == null}">
															  <form:radiobutton path="foodHabits" value="Veg" disabled=""/> Veg
                                                            <form:radiobutton path="foodHabits" value="Non-veg" disabled=""/> Non- veg
                                                            </c:if>
															<c:if test="${customerHealth.foodHabits =='Veg'}">
															  <form:radiobutton path="foodHabits" value="Veg" checked="true"/> Veg
                                                            <form:radiobutton path="foodHabits" value="Non-veg" disabled=""/> Non- veg
                                                            </c:if>
                                                            <c:if test="${customerHealth.foodHabits =='Non-veg'}">
															  <form:radiobutton path="foodHabits" value="Veg" disabled=""/> Veg
                                                            <form:radiobutton path="foodHabits" value="Non-veg" checked="true"/> Non- veg
                                                            </c:if>
														</div>
													</div>
                                                    
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* Do you suffer from any of these?<br> &nbsp;
															
															<c:if test="${customerHealth.custSuffer == null}">
														<form:checkbox path="custSuffer" value="Diabets" disabled="" /> Diabetes&nbsp;&nbsp;
														<form:checkbox path="custSuffer"  value="BP"  disabled=""/> BP <br> <br>
														<form:checkbox path="custSuffer" value="High Cholesterol" disabled=""/>High Cholestero
														<form:checkbox path="custSuffer"  value="Heart Disease" disabled=""/> Heart Disease
													</c:if>
															
												     <c:if test="${customerHealth.custSuffer =='Diabets'}">
														<form:checkbox path="custSuffer" value="Diabets" checked="true" /> Diabetes&nbsp;&nbsp;
														<form:checkbox path="custSuffer"  value="BP"  disabled=""/> BP <br> <br>
														<form:checkbox path="custSuffer" value="High Cholesterol" disabled=""/>High Cholestero
														<form:checkbox path="custSuffer"  value="Heart Disease" disabled=""/> Heart Disease
													</c:if>
																
												     <c:if test="${customerHealth.custSuffer =='BP'}">
														<form:checkbox path="custSuffer" value="Diabets" disabled="" /> Diabetes&nbsp;&nbsp;
														<form:checkbox path="custSuffer"  value="BP"  checked="true" /> BP <br> <br>
														<form:checkbox path="custSuffer" value="High Cholesterol" disabled=""/>High Cholestero
														<form:checkbox path="custSuffer"  value="Heart Disease" disabled=""/> Heart Disease
													</c:if>
															
												     <c:if test="${customerHealth.custSuffer =='High Cholesterol'}">
														<form:checkbox path="custSuffer" value="Diabets" disabled="" /> Diabetes&nbsp;&nbsp;
														<form:checkbox path="custSuffer"  value="BP"  disabled=""/> BP <br> <br>
														<form:checkbox path="custSuffer" value="High Cholesterol" checked="true" />High Cholestero
														<form:checkbox path="custSuffer"  value="Heart Disease" disabled=""/> Heart Disease
													</c:if>
															
												     <c:if test="${customerHealth.custSuffer =='Heart Disease'}">
														<form:checkbox path="custSuffer" value="Diabets" disabled="" /> Diabetes&nbsp;&nbsp;
														<form:checkbox path="custSuffer"  value="BP"  disabled=""/> BP <br> <br>
														<form:checkbox path="custSuffer" value="High Cholesterol" disabled=""/>High Cholesterol
														<form:checkbox path="custSuffer"  value="Heart Disease" checked="true" /> Heart Disease
													</c:if>
														</div>
													</div>
                                                    
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* Do any of your parents suffer from these?<br> &nbsp;
															<form:checkbox path="parentsSuffer" value="Diabets" />	Diabetes
															<form:checkbox path="parentsSuffer" value="BP" />BP
															<form:checkbox path="parentsSuffer"	value="High Cholesterol" />
															High Cholesterol
															<form:checkbox path="parentsSuffer" value="Heart Disease" />
															Heart Disease

														</div>
													</div>
                                                    
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* How often do you exercise?<br> &nbsp;
															
															<c:if test="${customerHealth.exercise == null}">
															<form:radiobutton path="exercise" value="No at all" disabled=""/> No at all
                                                            <form:radiobutton path="exercise" value="Up to 30 min" disabled="" /> Up to 30 min
                                                            <form:radiobutton path="exercise" value="30-60 min"  disabled=""/> 30-60 min
                                                            <form:radiobutton path="exercise" value=">1 Hour" disabled=""/> >1 Hour
                                                            </c:if>
															<c:if test="${customerHealth.exercise =='No at all'}">
															<form:radiobutton path="exercise" value="No at all" checked="true"/> No at all
                                                            <form:radiobutton path="exercise" value="Up to 30 min" disabled="" /> Up to 30 min
                                                            <form:radiobutton path="exercise" value="30-60 min"  disabled=""/> 30-60 min
                                                            <form:radiobutton path="exercise" value=">1 Hour" disabled=""/> >1 Hour
                                                            </c:if>
															<c:if test="${customerHealth.exercise =='Up to 30 min'}">
															<form:radiobutton path="exercise" value="No at all" disabled=""/> No at all
                                                            <form:radiobutton path="exercise" value="Up to 30 min" checked="true" /> Up to 30 min
                                                            <form:radiobutton path="exercise" value="30-60 min"  disabled=""/> 30-60 min
                                                            <form:radiobutton path="exercise" value=">1 Hour" disabled=""/> >1 Hour
                                                            </c:if>
                                                            <c:if test="${customerHealth.exercise =='30-60 min'}">
															<form:radiobutton path="exercise" value="No at all" disabled=""/> No at all
                                                            <form:radiobutton path="exercise" value="Up to 30 min" disabled="" /> Up to 30 min
                                                            <form:radiobutton path="exercise" value="30-60 min"  checked="true"/> 30-60 min
                                                            <form:radiobutton path="exercise" value=">1 Hour" disabled=""/> >1 Hour
                                                            </c:if>
                                                            <c:if test="${customerHealth.exercise =='>1 Hour'}">
															<form:radiobutton path="exercise" value="No at all" disabled=""/> No at all
                                                            <form:radiobutton path="exercise" value="Up to 30 min" disabled="" /> Up to 30 min
                                                            <form:radiobutton path="exercise" value="30-60 min"  disabled=""/> 30-60 min
                                                            <form:radiobutton path="exercise" value=">1 Hour" checked="true"/> >1 Hour
                                                            </c:if>
														</div>
													</div>
                                                    
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* How stressful is your life?<br> &nbsp;
															<c:if test="${customerHealth.stressfull == null}">
															<form:radiobutton path="stressfull" value="Not at all" disabled="" /> Not at all
                                                            <form:radiobutton path="stressfull" value="Moderate" disabled="" /> Moderate
                                                            <form:radiobutton path="stressfull" value="High" disabled="" /> High
                                                            </c:if>
															<c:if test="${customerHealth.stressfull =='Not at all'}">
															<form:radiobutton path="stressfull" value="Not at all" checked="true" /> Not at all
                                                            <form:radiobutton path="stressfull" value="Moderate" disabled="" /> Moderate
                                                            <form:radiobutton path="stressfull" value="High" disabled="" /> High
                                                            </c:if>
                                                            <c:if test="${customerHealth.stressfull =='Moderate'}">
															<form:radiobutton path="stressfull" value="Not at all" disabled="" /> Not at all
                                                            <form:radiobutton path="stressfull" value="Moderate" checked="true" /> Moderate
                                                            <form:radiobutton path="stressfull" value="High" disabled="" /> High
                                                            </c:if>
                                                            <c:if test="${customerHealth.stressfull =='High'}">
															<form:radiobutton path="stressfull" value="Not at all" disabled="" /> Not at all
                                                            <form:radiobutton path="stressfull" value="Moderate" disabled="" /> Moderate
                                                            <form:radiobutton path="stressfull" value="High" checked="true"/> High
                                                            </c:if>
														</div>
													</div>
                                                    
                                                    <div class="form-group clearfix">
														<label  class="col-lg-2 control-label " for="email1"></label>
														<div class="col-lg-10">
															* Do you have sufficient sleep?<br> &nbsp;
															<c:if test="${customerHealth.sleep == null}">
															<form:radiobutton path="sleep" value="Yes" disabled="" /> Yes
                                                            <form:radiobutton path="sleep" value="No" disabled="" /> No
															</c:if>
															<c:if test="${customerHealth.sleep =='Yes'}">
															<form:radiobutton path="sleep" value="Yes" checked="true"/> Yes
                                                            <form:radiobutton path="sleep" value="No" disabled=""/> No
															</c:if>
															<c:if test="${customerHealth.sleep =='No'}">
															<form:radiobutton path="sleep" value="Yes" disabled=""/> Yes
                                                            <form:radiobutton path="sleep" value="No" checked="true"/> No
															</c:if>
														</div>
													</div>
													 <div class="form-group clearfix">
                                                        <form:label path="medicalHistory" class="col-md-2 control-label " for="password1" > Medical History</form:label>
                                                        <div class="col-md-6">
                                                     <form:input type="text" minlength="3" maxlength="100" path="medicalHistory" class="form-control" value="${customerHealth.medicalHistory}" placeholder="medical history" />
                                                        </div>
                                                    </div>
													<hr>
													
													<hr>
													   <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-5">      
                                              <ul class="pager m-b-0 wizard">
                                               <!--  <li class="previous first"><a href="#">First</a></li> -->
                                                <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                                <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                               <!--  <li class="next last"><a href="#" >Last</a></li> -->
                                               <!--  <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li>
                                                <li class="save"><a href="#">Save</a></li> -->
                                            </ul>
                                               </div>
                                               </div>
													
                                                </div>
                                            </div>
<!-- --------------------------------------------------------proof-------------------------------------------------------------------------- -->													
                                                  
                                                  
                                        <div class="tab-pane p-t-10 fade" id="welezo-2">
                                                <div class="row"> 
                                                    <div class="form-group clearfix">
														<label class="col-lg-2 control-label " for="email1">PROOF OF IDENTITY</label>
														 <div class="col-md-6">
                                                        <table class="table">
                                                        <thead>
  														<tr>
  														
    														<form:label path="idType" ><th>Name of Proof Identity</th></form:label>
    														<form:label path="idNumber" ><th>Card No</th></form:label>
 														</tr>
  														</thead>
															<tbody>
															<c:forEach items="${proofId}" var="proof">
																<form:hidden path="proofId" value="${proof.proofId}"/>
  														<tr>
    														 <td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="${proof.idType}">${proof.idType}</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                  <option value="Pancard"> Pancard</option>
											                <option value="other"> Others </option>
											            </select>
														</div></td>
    														 <td><form:input type="text" maxlength="20" minlength="5"  path="idNumber" value="${proof.idNumber}" /></td>
  														 <span id="error" style="color: Red; display: none"></span>
  														</tr>
 														</c:forEach></tbody>
 														
 														<%-- <tr>
    														<td><div> <select name="idType"  path="idType">
											               <option value="">--Select--</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber" />  
    													</td>
    													</tr>
    													<tr>
    														<td><div> <select name="idType"  path="idType">
											               <option value="">--Select--</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber" />  
    													</td>
    													</tr> --%>
 														
														</table>
														</div>
												
												
													<hr>
												
                                                <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-5">      
                                              <ul class="pager m-b-0 wizard">
                                              
                                  <!--     <li class="previous first"><a href="#">First</a></li> -->
                                                <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                                <!-- <li class="next last"><a href="#">Last</a></li> -->
                                                 <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                                <!-- <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li>
                                                <li class="save"><a href="#">Save</a></li> -->
                                            </ul>
                                               </div>
                                                </div>     
											</div>	
											</div>
											</div>	
													
                                                   <%--  <div class="form-group clearfix">
														<label class="col-md-2 control-label " for="password1">
															For Office use:</label>
														<div class="col-md-6">
															<form:label path="collected">   Collected on:
                                                      <form:input
																	path="collected" class="form-control"
																	value="${customerPayment.collected}" />
															</form:label>
															<form:label path="submittedOn">   Submitted on:
                                                      <form:input
																	path="submittedOn" class="form-control"
																	value="${submited}"
																	placeholder="mm/dd/yyyy" id="datepicker-autoclose" />
															</form:label>
															<form:label path="soDso">    SO / DSO: 
                                                     <form:input
																	path="soDso" class="form-control"
																	value="${customerPayment.soDso}" />
															</form:label>
														</div>
													</div> --%>
                                                    
 <!-- --------------------------------------------------------Tab 4 ----------------------------------------------------------------------------->                                           
                                         
                                             <div class="tab-pane p-t-10 fade" id="finish-2">
                                                <div class="row">
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> Your Reference:</label>
                                                        <div class="col-md-6">
                                                         <div class="table-responsive">
                                                        <table class="table">
                                                        <thead>
                                                        
  														<tr>
  															<form:label path="name"  ><th>Name</th></form:label>
    														<form:label path="relationshipRef" ><th>Relationship</th></form:label>
    														<form:label path="testNo" ><th>Contact No</th></form:label>
 														</tr>
  														</thead>
															<tbody>
															<c:forEach items="${custRefrence}" var="ref">
															
  														<tr>
    														 <td><form:input type="text" maxlength="25" minlength="3" onkeypress="return onlyAlphabets(event,this);" path="name" value="${ref.name}" /></td>
    														 <td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="${ref.relationship}">${ref.relationship}</option>
											               <option value="Father"> Father </option>
											                <option value="Mother"> Mother </option>
											                <option value="Wife"> Wife </option>
											                <option value="Husband"> Husband </option>
											                <option value="Friend"> Friend </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														 <td><form:input type="text" path="testNo" value="${ref.contactNumber}" /></td>
  														</tr>
 														</c:forEach></tbody>
 														
 														<%-- <tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name"/></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="">--Select--</option>
											               <option value="Father"> Father </option>
											                <option value="Mother"> Mother </option>
											                <option value="Wife"> Wife </option>
											                <option value="Husband"> Husband </option>
											                <option value="Children"> Friend </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text"  maxlength="11" minlength="3" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" path="contactNumber" /></td>
  														</tr> --%>
  														
														</table>
														</div>
														</div>
                                                    </div>
                                                    
                                                         <div class="form-group clearfix">
                                                        <div class="col-lg-12">
                                                           
                                                            <div class="form-group m-b-0">
                                                    <div class="col-sm-offset-3 col-sm-9 m-t-15">
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                            Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
							</form:form> 
                        </div>
                        <!-- end row -->
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
        
         <script>
    var jq = $.noConflict();
    jq( function() {
    	jq( "#datepicker" ).datepicker({
    	    changeMonth: true,
	        changeYear: true,
	        dateFormat: 'dd/mm/yy',
    	});
    	 jq( "#datepicker1" ).datepicker({
     	    changeMonth: true,
 	        changeYear: true,
 	        dateFormat: 'dd/mm/yy',
     	});
    	 jq( "#datepicker2" ).datepicker({
      	    changeMonth: true,
  	        changeYear: true,
  	        dateFormat: 'dd/mm/yy',
      	});
    	 jq( "#datepicker3" ).datepicker({
      	    changeMonth: true,
  	        changeYear: true,
  	        dateFormat: 'dd/mm/yy',
      	});
    	 jq( "#datepicker4" ).datepicker({
      	    changeMonth: true,
  	        changeYear: true,
  	        dateFormat: 'dd/mm/yy',
      	});
    	 jq( "#datepicker5" ).datepicker({
      	    changeMonth: true,
  	        changeYear: true,
  	        dateFormat: 'dd/mm/yy',
      	});
    	 jq( "#datepicker6" ).datepicker({
       	    changeMonth: true,
   	        changeYear: true,
   	        dateFormat: 'dd/mm/yy',
       	});
  } );
 
   
  </script>
               
               
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>      
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/detect.js"></script>
        <script src="resources/js/fastclick.js"></script>
        <script src="resources/js/jquery.slimscroll.js"></script>
        <script src="resources/js/jquery.blockUI.js"></script>
        <script src="resources/js/waves.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <!-- Form wizard -->
        <script src="resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
        <script src="resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
        
        <!-- Dropdown disable sta -->
  <script type="text/javascript">
$(document).ready(function () {
    $('#welezo-2').on('change', '.positionTypes', function () {
        // Get the selected options of all positions
        var allSelected = $(".positionTypes").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".positionTypes option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".positionTypes option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});

</script>

 <script type="text/javascript">
$(document).ready(function () {
    $('#account-2').on('change', '.form-control', function () {
        // Get the selected options of all positions
        var allSelected = $(".form-control").map(function () {
            return $(this).val();
        }).get();

        // set all enabled
        $(".form-control option").removeAttr("disabled");

        // Disable selected options in other positions
        $(".form-control option:not(:selected):not([value='0'])").each(function () {
            if ($.inArray($(this).val(), allSelected) != -1) {
                $(this).attr('disabled', true);
            }
        });
    });
});
</script>

<!-- Dropdown disable End -->
        

        <script type="text/javascript">
            $(document).ready(function() {
                $('#basicwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#progressbarwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    var $percent = ($current/$total) * 100;
                    $('#progressbarwizard').find('.bar').css({width:$percent+'%'});
                },
                'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#btnwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted','nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});

                var $validator = $("#commentForm").validate({
                    rules: {
                        emailfield: {
                            required: true,
                            email: true,
                            minlength: 3
                        },
                        namefield: {
                            required: true,
                            minlength: 3
                        },
                        urlfield: {
                            required: true,
                            minlength: 3,
                            url: true
                        }
                    }
                });

                $('#rootwizard').bootstrapWizard({
                    'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#commentForm").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        }
                    }
                });
            });

        </script>

    </body>
</html>