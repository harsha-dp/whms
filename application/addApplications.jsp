
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
        <title>WELEZO</title>

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
     
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>

  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="resources/js/modernizr.min.js"></script>
        
   <style>
    .page-title{font-size:2vw;}
.button button5{font-size:2vw;}
.fa fa-home fa-2x{font-size:2vw;}
   </style>
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
        
        
      <!--   !--  // interger validation script -->
        
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


<script type="text/javascript">
var counter = 1;
var limit = 3;
function addInput(divName){
     if (counter == limit)  {
          alert("You have reached the limit of adding " + counter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "Entry " + (counter + 1) + " <br><input type='text' name='myInputs[]'>";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
     }
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
                               <font face="verdana"  class="page-title">ADD APPLICATION FORM</font>
                                <!-- <h4 class="page-title">AddCustomers</h4> -->
                            </li>
                        </ul>
                       <ul class="nav navbar-nav navbar-right">
								<li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="fa fa-undo" aria-hidden="true"> </i>
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
                           <form:form action="saveApplication" modelAttribute="addcustomers">
                            <!-- PROGRESSBAR WIZARD -->
                            <div class="col-lg-12">
                                <div class="card-box p-b-0">
                        			 <h4 class="header-title m-t-0 m-b-30">AddCustomers Progress Bar</h4>
                                    <div id="progressbarwizard" class="pull-in">
                          <nav class="nav-sidebar">
                                        <ul>
                                            <li><a href="#account-2" data-toggle="tab">ABOUT YOU</a></li>
                                            <li><a href="#last-2" data-toggle="tab">YOUR FAMILY</a></li>
                                            <li><a href="#profile-tab-2" data-toggle="tab">HEALTH ANALAYSIS</a>
                                            <li><a href="#welezo-2" data-toggle="tab">PROOF TYPE</a>
                                            <li><a href="#finish-2" data-toggle="tab">YOUR REFERENCE</a></li>
                                            
                                        </ul> 
                                    </nav>
                                        <div class="tab-content b-0 m-b-0">

                                            <div id="bar" class="progress progress-striped progress-bar-primary-alt active">
                                                <div class="bar progress-bar progress-bar-primary"></div>
                                            </div>
											<!-- Account-2 -->
											<form:hidden path="createdBy"  value="<%=id%>" class="form-control" id="inputEmail3"  />
                                            <div class="tab-pane p-t-10 fade" id="account-2">
                                               <div class="row">
                                                
                                                        <label class="col-md-2 control-label " for="userName1">Name * </label>
                                                        <div class="col-md-5">
                                                        
                                                            <form:input onkeypress="return onlyAlphabets(event,this);" minlength="3" maxlength="50" class="form-control" path="customerName" />
                                                        </div>
                                                 
                                             
                                                    <div class="form-group clearfix">
                                                    <div class="row">
                                                        <label class="col-md-2 control-label " for="password1"> Date of birth:</label>
                                                        
                                                        
                                                        <div class="col-md-3">
                                    
                                    
									<form:input type="text" path="dob" class="form-control" placeholder="dd/mm/yyyy" id="datepicker1" />
                                                       	
                                                          </div>
                                                        </div><br>
                                                        <label class="col-md-2 control-label " for="password1"> Gender:</label> 
                                                        <div class="col-md-4">
                                                            <form:radiobutton path="gender" value="Male" /> Male
															<form:radiobutton path="gender" value="Female" /> Female
															<form:radiobutton path="gender" value="Other" /> Other
                                                        </div>
                                                    </div>
                                                    
                                                    
													<div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " >Marital status :</label>
                                                        <div class="col-md-3">
                                                               
                                                            <form:radiobutton onclick="myFunction()"  name="sri" path="maritalStatus" value="Single" /> Single
                                                            <form:radiobutton onclick="myFunctio()"  name="sri" path="maritalStatus" value="Married" /> Married
                                                            <form:radiobutton  path="maritalStatus"  name="sri" value="Others" /> Others
                                                            </div>
                                                            
                                                            <div class="col-md-4">
                                                                 Anniversary Date :
                                                           
                                                            <form:input type="text" path="anniversary" id="datepicker" maxlength="11" minlength="7" placeholder="dd/mm/yyyy" /><!-- id="myCheck" -->
                                                         </div>
                                                    </div>
                                                    <hr>
                                                    
                                                    <div class="form-group clearfix">
								<c:choose>
									<c:when test="${not empty allAddressCatagories}">
									<label class="col-md-2 control-label " for="confirm1">Address Categories </label>
									<div div class="col-md-3">
										<form:select path="addressType1" title="select Address Type"
											class="form-control" id="Residence Address">
											<form:option value="" label="Select Address Type" />
											<c:forEach var="addressType" varStatus="status"				items="${allAddressCatagories}">
												<c:if test="${addressType.entity=='Customer'}">
													<form:option path="addressType1" value="${addressType.addressTypeId}">${addressType.addressType}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
									</c:when>
								</c:choose>
						</div>
						</div>
                                                      <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="confirm1"> Address Line1*</label>
                                                        <div class="col-md-10">
                                                            <form:textarea class="form-control" minlength="3" maxlength="200" path="residenceAddresss" rows="2" />
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> City:</label>
                                                        <div class="col-md-2">
                                                            <form:input type="text" onkeypress="return onlyAlphabets(event,this);" minlength="3" maxlength="20"  path="city" class="form-control" placeholder="city" />
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Pincode:</label>
                                                        <div class="col-md-1">
                                                           <form:input type="text" minlength="3" maxlength="6" onkeypress="return IsNumeric(event);" path="pincode" class="form-control" placeholder="pincode" />
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Landmark:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" path="landmark"	minlength="3" maxlength="35" class="form-control" placeholder="Landmark" />
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Landline:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="11" minlength="10" onkeypress="return IsNumeric(event);"  path="landline" class="form-control" placeholder="Landline" />
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> Email:</label>
                                                        <div class="col-md-3">
                                                            <form:input type="email" path="email" minlength="11" maxlength="50" class="form-control"	placeholder="Email" />
                                                        </div>
                                                        <label class="col-md-2 control-label " for="password1"> Primary Mobile:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="10" minlength="10" onkeypress="return IsNumeric(event);"  path="primaryMob" class="form-control" placeholder="Primary Mobile" />
                                                        <span id="error" style="color: Red; display: none"></span>
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Alt.Mobile:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="10" minlength="10" onkeypress="return IsNumeric(event);"  path="altMob" class="form-control" placeholder="Alt.Mobile"  />
                                                         <span id="error" style="color: Red; display: none"></span>
                                                        </div>
                                                        
                                                    </div>
                                                    <hr>
                                                     <div class="form-group clearfix">
								<c:choose>
									<c:when test="${not empty allAddressCatagories}">
									<label class="col-md-2 control-label " for="confirm1">Address Categories </label>
									<div div class="col-md-3">
										<form:select path="addressType2" title="Address Type"
											class="form-control" id="Residence Address">
											<form:option value="" label="Select Address Type" />
											<c:forEach var="addressType" varStatus="status"				items="${allAddressCatagories}">
												<c:if test="${addressType.entity=='Customer'}">
													<form:option path="addressType2" value="${addressType.addressTypeId}">${addressType.addressType}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
									</c:when>
								</c:choose>
						</div>
						</div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="confirm1">Address Line2 *</label>
                                                        <div class="col-md-10">
                                                            <form:textarea class="form-control" maxlength="200" minlength="3" path="residenceAddresss" rows="2" id="Residence Address" />
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> City:</label>
                                                        <div class="col-md-2">
                                                            <form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="20" minlength="3" path="city" class="form-control" placeholder="city" />
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Pincode:</label>
                                                        <div class="col-md-1">
                                                           <form:input type="text" maxlength="6"  minlength="3" onkeypress="return IsNumeric(event);"  path="pincode"	class="form-control" placeholder="pincode" />
                                                       
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Landmark:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="30" minlength="3" path="landmark" class="form-control" placeholder="Landmark" />
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Landline:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="11"  minlength="10" onkeypress="return IsNumeric(event);"  path="landline" class="form-control" placeholder="Landline" />
                                                       <span id="error" style="color: Red; display: none"></span>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> Email:</label>
                                                        <div class="col-md-3">
                                                            <form:input type="email" path="email"  minlength="11" maxlength="50" class="form-control" placeholder="Email" />
                                                        </div>
                                                        <label class="col-md-2 control-label " for="password1"> Primary Mobile:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="10"  minlength="10" onkeypress="return IsNumeric(event);"  path="primaryMob" class="form-control" placeholder="Primary Mobile" />
                                                       <span id="error" style="color: Red; display: none"></span>
                                                        </div>
                                                        <label class="col-md-1 control-label " for="password1"> Alt.Mobile:</label>
                                                        <div class="col-md-2">
                                                           <form:input type="text" maxlength="10"  minlength="10" onkeypress="return IsNumeric(event);"  path="altMob" class="form-control" placeholder="Alt.Mobile" />
                                                        <span id="error" style="color: Red; display: none"></span>
                                                        </div>
                                                        
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        
                                                        <label class="col-md-2 control-label " for="password1"> Correspondence At:</label>
                                                        <div class="col-md-8">
                                                            <form:radiobutton path="correspondence" value="Residence" />	Residence
															<form:radiobutton path="correspondence" value="WorkPlace" /> Office/ Alternate Address
  															
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        
                                                        <label class="col-md-3 control-label " for="password1"> Preferred mode of communication:</label>
                                                        <div class="col-md-2">
                                                            <form:radiobutton path="communiation" value="sms" />	SMS
															<form:radiobutton path="communiation" value="mail" />   Mail
															<form:radiobutton path="communiation" value="call" />   Call
  															
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-4 control-label" for="name1"> SALARIED</label>
                                                        <div class="col-md-8">
                                                            <form:radiobutton path="salaried" value="Public Sector" /> Public Sector
  															 <form:radiobutton path="salaried" value="Private Sector"/> Private Sector
  															 <form:radiobutton path="salaried" value="MNC"/> MNC 
  															 <form:radiobutton path="salaried" value="Goverment"/> Goverment <br> <br>
  															
  															 <form:radiobutton path="salaried" value="IT / BT /Pharma" /> IT / BT /Pharma
  															 <form:radiobutton path="salaried" value="BPO" /> BPO
  															 <form:radiobutton path="salaried" value="FMCG" /> FMCG
  															 <form:radiobutton path="salaried" value="Construction/ Real Estate" /> Construction/ Real Estate <br> <br>
  															
  															 <form:radiobutton path="salaried" value="Leisure / Holiday" /> Leisure / Holiday
  															 <form:radiobutton path="salaried" value="Insurance" /> Insurance
  															 <form:radiobutton path="salaried" value="Banking" /> Banking
                                                        </div>
                                                         
                                                        
                                                    </div>
                                                    <hr>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-4 control-label " for="surname1"> BUSINESS / PROFESSION / OCCUPATION</label>
                                                        <div class="col-lg-8">
                                                            <form:radiobutton path="occupation" value="self employed" /> Self Employed 
  															<form:radiobutton path="occupation" value="Business Man" /> Business Man
  															<form:radiobutton path="occupation" value="Doctor" /> Doctor 
  															<form:radiobutton path="occupation" value="Lawyer" /> Lawyer <br> <br>
  															<form:radiobutton path="occupation" value="CA" /> CA 
  															<form:radiobutton path="occupation" value="Consultant" /> Consultant
  															<form:radiobutton path="occupation" value="Retired" /> Retired 
  															<form:radiobutton path="occupation" value="Student" /> Student
  															<form:radiobutton path="occupation" value="Homemaker" /> Homemaker <br> <br>
  															<form:radiobutton path="occupation" value="Other" /> Other  <br> <br>

                                                        </div>
                                                    </div>
                                                    <hr>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-4 control-label " for="surname1"> ANNUAL FAMILY INCOME:</label>
                                                        <div class="col-lg-8">
                                                            <form:radiobutton path="annualIncome" value="1lac" /> 1 Lakh  
  															<form:radiobutton path="annualIncome" value="1-3lac" /> 1 to 3 Lakhs
  															<form:radiobutton path="annualIncome" value="3-5lac" /> 3 to 5 Lakhs 
  															<form:radiobutton path="annualIncome" value="5-10lac" /> 5 to 10 Lakhs 
  															<form:radiobutton path="annualIncome" value=">10lac" /> >10 Lakhs
  														</div>
                                                    </div>
                                                    <hr>
                                              
                                                   
                                                    <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-3">      
                                              <ul class="pager m-b-0 wizard">
                                               <!--  <li class="next last"><a href="#" class="btn btn-primary waves-effect waves-light">Last</a></li> -->
                                            <!--     <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li> -->
                                                <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                            </ul>
                                               </div>
                                               </div>    
                                                   
                                            </div></div>
                                            
                                            <!-- -last-2 -->
                                            
                                              
                                            <div class="tab-pane p-t-10 fade" id="last-2">
                                                <div class="row">
                                                	
                                                    <div class="form-group clearfix">
                                                        
                                                        <label class="col-md-2 control-label " for="password1"> YOUR FAMILY:</label>
                                                        <div class="col-lg-8">
                                                        <div class="table-responsive">
                                                        <table class="table">
                                                        
  														<tr>
    														<th>Name</th>
    														<th>Gender</th> 
    														<th>Relationship</th>
    														<th>DOB</th>
    														<th>Age</th>
    													</tr>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName" /></td>
    														<td>
    														<div>
									 				<select name="sex" >
											                <option value="">Select</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											                
											            </select>
														</div>
											            </td>
    													<td>	
    													<div>
                                                        <select name="relationship"  >
											                <option value="">Select </option>
											              <option value="Self"> Self </option>
											                <option value="Spouse"> Spouse </option>
											                <option value="Son"> Son </option>
															<option value="Parent"> Parent</option>
								            		 	 	 <option value="Daugther">Daugther</option>
															<option value="Other">Other</option>
											            </select>
    														</div>
    														</td>
    														<td><form:input type="text"  path="memberDOB" id="datepicker5"/></td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age" /></td>
  														</tr>
  														
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName"  /></td>
    														<td>
    														<div>
                                                        <select name="sex"  >
											                <option value="">Select</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											            </select>    
														</div>
											            </td>
    													<td>	<div>
                                                        <select name="relationship"  >
											                <option value="">Select</option>
											                <option value="Self"> Self </option>
											                <option value="Spouse"> Spouse </option>
											                <option value="Son"> Son </option>
															<option value="Parent"> Parent</option>
								            		 	 	 <option value="Daugther">Daugther</option>
															<option value="Other">Other</option>
											            </select>
    													</div>
    														</td>
    														<td><form:input type="text" id="datepicker6" path="memberDOB" /></td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age" /></td>
  														</tr>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName" /></td>
    														<td>
    														<div>
                                                        <select name="sex"  >
											                <option value="">Select</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											            </select>
													</div>
											            </td>
    													<td>
    													<div>
                                                        <select name="relationship" >
											                <option value="">Select</option>
											               <option value="Self"> Self </option>
											                <option value="Spouse"> Spouse </option>
											                <option value="Son"> Son </option>
															<option value="Parent"> Parent</option>
								            		 	 	 <option value="Daugther">Daugther</option>
											                 <option value="Other"> Other </option>
											            </select>
    													</div>
    														</td>
    														<td><form:input type="text" id="datepicker4" path="memberDOB" /></td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age"  /></td>
  														</tr>
  														
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="FamilyName" /></td>
    														<td>
    													<div>
                                                        <select name="sex" >
											                <option value="">Select</option>
											                <option value="Male">Male</option>
											                <option value="Female"> Female </option>
											                
											            </select>
														</div>
											            </td>
    													<td>	<div>
                                                        <select name="relationship"  >
											                <option value="">Select</option>
											               <option value="Self"> Self </option>
											                <option value="Spouse"> Spouse </option>
											                <option value="Son"> Son </option>
															<option value="Parent"> Parent</option>
								            		 	 	 <option value="Daugther">Daugther</option>
															<option value="Other">Other</option>
											            </select>
    													</div>
    														</td>
    														<td><form:input type="text" id="datepicker7"  path="memberDOB" /></td>
    														<td><form:input type="text" onkeypress="return IsNumeric(event);" maxlength="3" minlength="1" path="age"  /></td>
  														</tr>

														</table>
														</div>
														</div>

                                                    </div>
                                                    <hr>
                                          <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-5">      
                                              <ul class="pager m-b-0 wizard">
                                               <!--  <li class="previous first"><a href="#">First</a></li> -->
                                                <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                               <!--  <li class="next last"><a href="#">Last</a></li> -->
                                         <!--        <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li> -->
                                              <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                            </ul>
                                               </div>
                                               </div>  
                                                   </div>
                                                   </div>
                                            
     <!-------------------------------------------------------------- 1st page completed ------------------------------------------------------------------->
                                         
                                    
                                         
                                            <div class="tab-pane p-t-10 fade" id="profile-tab-2">
                                                <div class="row">
                                               
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1">HEALTH ANALYSIS</label>
                                                        <div class="col-lg-10">
                                                        
                                                           <b> * Number of family members in the age group of :</b> <br> &nbsp;
                                                             5 <form:input type="text" onkeypress="return IsNumeric(event);"  path="m5" maxlength="2" size="3"/>&nbsp;  &nbsp;
                                                             6-18 <form:input type="text" onkeypress="return IsNumeric(event);"  path="m618" maxlength="2" size="3"/>&nbsp;  &nbsp;
                                                             19-35 <form:input type="text" onkeypress="return IsNumeric(event);"  path="m1935" maxlength="2" size="3"/>&nbsp;  &nbsp;
                                                            36-50 <form:input type="text" onkeypress="return IsNumeric(event);" path="m3650" maxlength="2" size="3"/>&nbsp;  &nbsp;
                                                            51-65 <form:input type="text" onkeypress="return IsNumeric(event);"  path="m5165" maxlength="2" size="3"/>&nbsp;  &nbsp;
                                                            >65 <form:input type="text"  onkeypress="return IsNumeric(event);" path="m65" maxlength="2" size="3"/>
                                                         <span id="error" style="color: Red; display: none"></span>
                                                       
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                         <b>  * Medical Expenses per year : </b><br> &nbsp;
                                                             Diagnostics Rs. <form:input type="text" onkeypress="return isNumberKey(event)" path="diagnostic"  maxlength="8" size="6"/>  &nbsp; , &nbsp;
                                                             Consultations Rs. <form:input type="text" onkeypress="return isNumberKey(event)" path="consultion" maxlength="8" size="6"/>  <br> <br>&nbsp;
                                                             Pharmacy Rs. <form:input type="text" onkeypress="return isNumberKey(event)" path="pharmacy" maxlength="8" size="6"/> &nbsp; , &nbsp;
                                                             Hospitalization Rs. <form:input type="text" onkeypress="return isNumberKey(event)" path="hospitalization" maxlength="8" size="6"/> 
                                                           <!-- <span id="error" style="color: Red; display: none"></span>  --> 
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b> * Your Height: </b>  <form:input type="text" onkeypress="return isNumberKey(event)" path="custHeigth"  maxlength="4" size="6"/> Cms/inchs ;&nbsp; , &nbsp;
                                                            <b>  Your Weight: </b> <form:input type="text" onkeypress="return isNumberKey(event)" path="custWeigth" maxlength="3" size="6"/>  Kg
                                                            
                                                             <span id="error" style="color: Red; display: none"></span> 
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                          <b>   * Do you have health insurance? </b> <br> &nbsp;
                                                            <form:radiobutton path="insurance" value="yes"/> Yes &nbsp;
                                                            <form:radiobutton path="insurance" value="no" /> No &nbsp; &nbsp;
                                                                <b> Annual Premium:</b>
                                                            <form:input path="premium" maxlength="20" type="text"/>
                                                         </div>
                                                    </div>
                                                   
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * Do you believe you need a health check only when you are sick ?</b>   <br> &nbsp;
                                                            <form:radiobutton path="sick" value="Yes"/> Yes &nbsp;
                                                            <form:radiobutton path="sick" value="No"/> No
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * How often do you go for health checks ? </b> <br> &nbsp;
                                                            <form:radiobutton path="healthCheck"  value="Never"/> Never &nbsp;
                                                            <form:radiobutton path="healthCheck" value="once a year"/> Once a year &nbsp;
                                                            <form:radiobutton path="healthCheck" value="once a 2 year"/> Once a 2 years &nbsp;
                                                            <form:radiobutton path="healthCheck" value="on Advice"/> On Advice
                                                                   
                                                         </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                            <b> * When do you consult specialists ? </b>  <br> &nbsp;
                                                            <form:radiobutton path="consultSpecialist" value="regularly"/> Regularly &nbsp;
                                                            <form:radiobutton path="consultSpecialist" value="During illness"/> During illness &nbsp;
                                                            <form:radiobutton path="consultSpecialist" value="On Advice"/> On Advice
                                                            </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * How often do you visit a dentist ?  </b> <br> &nbsp;
                                                            <form:radiobutton path="visitDentist" value="Never"/> Never &nbsp;
                                                            <form:radiobutton path="visitDentist" value="Six months"/> Six months &nbsp;
                                                            <form:radiobutton path="visitDentist"  value="Year"/> Year &nbsp;
                                                            <form:radiobutton path="visitDentist" value="When in pain"/> When in pain
                                                            
                                                         </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * Which system of medicine do you follow ? </b> <br> &nbsp;
                                                            <form:radiobutton path="medicinFollow" value="Allopathy"/> Allopathy  &nbsp;
                                                            <form:radiobutton path="medicinFollow" value="homeopathy"/> Homeopathy  &nbsp;
                                                            <form:radiobutton path="medicinFollow" value="Ayurveda"/> Ayurveda  &nbsp;
                                                            <form:radiobutton path="medicinFollow" value="Others"/>Others
                                                            
                                                         </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                        
                                                           <b>   * Do you smoke ? </b>  <br> &nbsp;
                                                            <form:radiobutton path="smoke" value="Yes"/> Yes &nbsp;
                                                            <form:radiobutton path="smoke" value="No"/> No
                                                           
                                                         </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                            <b> * Do you consume alcohol ? </b><br> &nbsp;
                                                            <form:radiobutton path="alcohol" value="NO"/> No &nbsp;
                                                            <form:radiobutton path="alcohol" value="Ligth"/> Light &nbsp;
                                                            <form:radiobutton path="alcohol" value="Moderate"/> Moderate &nbsp;
                                                            <form:radiobutton path="alcohol" value="heavy"/> Heavy
                                                            
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * Your food habits ?</b> <br> &nbsp;
                                                            <form:radiobutton path="foodHabits" value="Veg"/> Veg &nbsp;
                                                            <form:radiobutton path="foodHabits" value="Non-veg"/> Non- veg
                                                           
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                            <b> * Do you suffer from any of these ?</b> <br> &nbsp;
                                                            <form:checkbox path="custSuffer" value="Diabets"/> Diabetes &nbsp;
                                                            <form:checkbox path="custSuffer" value="BP"/> BP &nbsp;
                                                            <form:checkbox path="custSuffer" value="High Cholesterol"/> High Cholesterol &nbsp;
                                                            <form:checkbox path="custSuffer" value="Heart Disease"/> Heart Disease
                                                            
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                           <b>  * Do any of your parents suffer from these ? </b> <br> &nbsp;
                                                             <form:checkbox path="parentsSuffer" value="Diabets"/> Diabetes &nbsp;
                                                            <form:checkbox path="parentsSuffer" value="BP"/> BP &nbsp;
                                                            <form:checkbox path="parentsSuffer" value="High Cholesterol"/> High Cholesterol &nbsp;
                                                            <form:checkbox path="parentsSuffer" value="Heart Disease"/> Heart Disease
                                                            
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                            <b> * How often do you exercise ? </b><br> &nbsp;
                                                            <form:radiobutton path="exercise" value="No" /> No &nbsp;
                                                            <form:radiobutton path="exercise" value="Up to 30 min" /> Up to 30 min &nbsp;
                                                            <form:radiobutton path="exercise" value="30-60 min" /> 30-60 min &nbsp;
                                                            <form:radiobutton path="exercise" value=">1 Hour" /> >1 Hour
                                                            
                                                         </div>
                                                    </div>
                                                    
                                                    <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                            <b> * How stressful is your life ?</b> <br> &nbsp;
                                                            <form:radiobutton path="stressfull" value="Not at all"/> Not at all &nbsp;
                                                            <form:radiobutton path="stressfull" value="Moderate"/> Moderate &nbsp;
                                                            <form:radiobutton path="stressfull" value="High"/> High
                                                           
                                                            
                                                         </div>
                                                    </div>
                                                    
                                                  <%--   <div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1"></label>
                                                        <div class="col-lg-10">
                                                          <b>  * Do you have sufficient sleep:?</b> <br> &nbsp;
                                                            <form:radiobutton path="sleep" value="Yes"/> Yes &nbsp;
                                                            <form:radiobutton path="sleep" value="No"/> No
                                                         </div>
                                                    </div> --%>
                                                     <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> </label>
                                                        <div class="col-md-10">
                                                        <b> Medical History </b><form:input type="text" maxlength="200" path="medicalHistory" class="form-control" placeholder="medical history" />
                                                        
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    
                        
                                                      <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-5">      
                                              <ul class="pager m-b-0 wizard">
                                               <!--  <li class="previous first"><a href="#">First</a></li> -->
                                                <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                               <!--  <li class="next last"><a href="#" >Last</a></li> -->
                                                <!-- <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li> -->
                                                <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                            </ul>
                                               </div>
                                               </div>  
                                                </div> 
                                            </div>
              <!--  ----------------------------------------------------------------------------------------------------------------------- -->                             
                        <div class="tab-pane p-t-10 fade" id="welezo-2">
                                                <div class="row">
                                                	<div class="form-group clearfix">
                                                        <label class="col-lg-2 control-label " for="email1">PROOF OF IDENTITY</label>
                                                        <div class="col-lg-6">
                                                        
                                                         <table class="table">
  														<tr>
    														<th>Name of Proof Identity</th>
    														<th>Card No :</th>
    												   </tr>
  														<tr>
    														<td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="">select</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="Pancard"> Pancard</option>
											                <option value="Other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber" />  
    													</td>
    													</tr>
    													
    													<tr>
    														<td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="">select</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="Pancard"> Pancard</option>
											                <option value="Other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber" />  
    													</td>
    													</tr>
    													<tr>
    														<td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="">select</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="Pancard"> Pancard</option>
											                <option value="Other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber"/>  
    													</td>
    													</tr>
    													
    													<tr>
    														<td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="">select</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="Pancard"> Pancard</option>
											                <option value="Other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber" />  
    													</td>
    													</tr>
    													
    													<tr>
    														<td><div> <select name="idType" class="positionTypes" path="idType">
											               <option value="">select</option>
											                <option value="Aadhar card ">Aadhar card </option>
											                <option value="Election ID"> Election ID  </option>
											                <option value="Driving License"> Driving License</option>
											                <option value="Passport"> Passport</option>
											                <option value="Pancard"> Pancard</option>
											                <option value="Other"> Others </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="20" minlength="6" path="idNumber"/>  
    													</td>
    													</tr>
                                                        	</table>
                                                         </div>
                                                    </div>
                                                  </div>
                                                  <hr>
                                                 
                                                <div class="form-group clearfix">  
                                                   <label class="col-lg-3 control-label " for="email1"></label>
                                                   <div class="col-lg-5">      
                                              <ul class="pager m-b-0 wizard">
                                  <!--     <li class="previous first"><a href="#">First</a></li> -->
                                                <li class="previous"><a href="#" class="btn btn-primary waves-effect waves-light">Previous</a></li>
                                               <!--  <li class="next last"><a href="#">Last</a></li> -->
                                                <!-- <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Next</a></li> -->
                                                <li class="next"><a href="#" class="btn btn-primary waves-effect waves-light">Save</a></li>
                                               <!--  <li class="save"><a href="#">Save</a></li> -->
                                            </ul>
                                               </div>
                                                </div>      
                                            </div>

                                            
               <!--  ----------------------------------------------------------------------------------------------------------------------- -->                                    
                                            <div class="tab-pane p-t-10 fade" id="finish-2">
                                                <div class="row">
                                                    <div class="form-group clearfix">
                                                        <label class="col-md-2 control-label " for="password1"> Your Reference:</label>
                                                        <div class="col-md-6">
                                                        
                                                         <div class="table-responsive">
                                                        <table class="table">
  														<tr>
    														<th>Name</th>
    														<th>Relationship</th>
    														<th>Contact No:</th>
 														</tr>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name"/></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="">Select</option>
											               <option value="Realtive"> Realtive </option>
											                <option value="Self"> Self </option>
											                <option value="Friend"> Friend </option>
											                <option value="Family"> Family </option>
											                <option value="Colleague"> Colleague </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text"  maxlength="11" minlength="10" onkeypress="return IsNumeric(event);" path="contactNumber" /></td>
  														</tr>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name" /></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="">Select</option>
											                <option value="Realtive"> Realtive </option>
											                <option value="Self"> Self </option>
											                <option value="Friend"> Friend </option>
											                <option value="Family"> Family </option>
											                <option value="Colleague"> Colleague </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text"  maxlength="11" minlength="10" onkeypress="return IsNumeric(event);" path="contactNumber"  /></td>
  														</tr>
  														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name"  /></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="">Select</option>
											                <option value="Realtive"> Realtive </option>
											                <option value="Self"> Self </option>
											                <option value="Friend"> Friend </option>
											                <option value="Family"> Family </option>
											                <option value="Colleague"> Colleague </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text"  maxlength="11" minlength="10" onkeypress="return IsNumeric(event);" path="contactNumber"  /></td>
 														</tr>
 														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name"  /></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                <option value="">Select</option>
											                <option value="Realtive"> Realtive </option>
											                <option value="Self"> Self </option>
											                <option value="Friend"> Friend </option>
											                <option value="Family"> Family </option>
											                <option value="Colleague"> Colleague </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text"  maxlength="11" minlength="10" onkeypress="return IsNumeric(event);"  path="contactNumber"  /></td>
 														</tr>
 														<tr>
    														<td><form:input type="text" onkeypress="return onlyAlphabets(event,this);" maxlength="25" minlength="3" path="name"  /></td>
    														<td><div> <select name="relationshipRef"  path="relationshipRef">
											                 <option value="Realtive"> Realtive </option>
											                <option value="Self"> Self </option>
											                <option value="Friend"> Friend </option>
											                <option value="Family"> Family </option>
											                <option value="Colleague"> Colleague </option>
											                <option value="Other"> Other </option>
											            </select>
														</div></td>
    														<td><form:input type="text" maxlength="11" minlength="10" onkeypress="return IsNumeric(event);"  path="contactNumber"  /></td>
 														</tr>
 														
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


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">T`O`M`</h4>
                <div class="notification-list nicescroll">
                    <ul class="list-group list-no-border user-list">
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-2.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">Michael Zenaty</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-info">
                                    <i class="zmdi zmdi-account"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Signup</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">5 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Message received</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-3.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">James Anderson</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 days ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-warning">
                                    <i class="zmdi zmdi-settings"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">Settings</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

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
    	 jq( "#datepicker7" ).datepicker({
       	    changeMonth: true,
   	        changeYear: true,
   	        dateFormat: 'dd/mm/yy',
       	});
  } );
 
   
  </script>
               
         <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>      
      <!--   <script src="resources/js/jquery.min.js"></script> -->
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
<!-- 	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
	<script
		src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
		type="text/javascript"></script>


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
        
        
     <!--    <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script> -->

<!-- 	<script>
            jQuery(document).ready(function() {

                //advance multiselect start
                $('#my_multi_select3').multiSelect({
                    selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    afterInit: function (ms) {
                        var that = this,
                            $selectableSearch = that.$selectableUl.prev(),
                            $selectionSearch = that.$selectionUl.prev(),
                            selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                            selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                        that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                            .on('keydown', function (e) {
                                if (e.which === 40) {
                                    that.$selectableUl.focus();
                                    return false;
                                }
                            });

                        that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                            .on('keydown', function (e) {
                                if (e.which == 40) {
                                    that.$selectionUl.focus();
                                    return false;
                                }
                            });
                    },
                    afterSelect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    },
                    afterDeselect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    }
                });

                // Select2
                $(".select2").select2();

                $(".select2-limiting").select2({
				  maximumSelectionLength: 2
				});

            });

            //Bootstrap-TouchSpin
            $(".vertical-spin").TouchSpin({
                verticalbuttons: true,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                verticalupclass: 'ti-plus',
                verticaldownclass: 'ti-minus'
            });
            var vspinTrue = $(".vertical-spin").TouchSpin({
                verticalbuttons: true
            });
            if (vspinTrue) {
                $('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
            }

            $("input[name='demo1']").TouchSpin({
                min: 0,
                max: 100,
                step: 0.1,
                decimals: 2,
                boostat: 5,
                maxboostedstep: 10,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                postfix: '%'
            });
            $("input[name='demo2']").TouchSpin({
                min: -1000000000,
                max: 1000000000,
                stepinterval: 50,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary",
                maxboostedstep: 10000000,
                prefix: '$'
            });
            $("input[name='demo3']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_21']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo3_22']").TouchSpin({
                initval: 40,
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            $("input[name='demo5']").TouchSpin({
                prefix: "pre",
                postfix: "post",
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });
            $("input[name='demo0']").TouchSpin({
                buttondown_class: "btn btn-primary",
                buttonup_class: "btn btn-primary"
            });

            // Time Picker
            jQuery('#timepicker').timepicker({
                defaultTIme : false
            });
            jQuery('#timepicker2').timepicker({
                showMeridian : false
            });
            jQuery('#timepicker3').timepicker({
                minuteStep : 60
            });

            //colorpicker start

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepicker-autoclose').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "dd/mm/yyyy",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
                toggleActive: true
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 60,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'DD/MM/YYYY',
                minDate: '06/01/2016',
                maxDate: '06/30/2016',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary',
                dateLimit: {
                    days: 6
                }
            });

            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                format: 'DD/MM/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2016',
                maxDate: '12/31/2016',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-success',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            });

            //Bootstrap-MaxLength
            $('input#defaultconfig').maxlength()

            $('input#thresholdconfig').maxlength({
                threshold: 20
            });

            $('input#moreoptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger"
            });

            $('input#alloptions').maxlength({
                alwaysShow: true,
                warningClass: "label label-success",
                limitReachedClass: "label label-danger",
                separator: ' out of ',
                preText: 'You typed ',
                postText: ' chars available.',
                validate: true
            });

            $('textarea#textarea').maxlength({
                alwaysShow: true
            });

            $('input#placement').maxlength({
                alwaysShow: true,
                placement: 'top-left'
            });
        </script> -->

    </body>
</html>