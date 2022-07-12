<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="A fully  CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>


 <!-- App Favicon -->
 <link rel="shortcut icon" href="resources/images/favicon.ico">

<title>Welezo</title>

<!-- Modal -->
<!-- DataTables -->
<link href="resources/HR/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/HR/plugins/datatables/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/HR/plugins/datatables/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />


<!-- Modal -->
<link href="resources/HR/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet">

<link href="resources/HR/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
<link href="resources/HR/css/responsive.css" rel="stylesheet"
	type="text/css" />
         <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
          <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
            <link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
          <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">


<script src="resources/HR/js/modernizr.min.js"></script>


<script src="resources/js/modernizr.min.js"></script>

<!-- Datepicker start -->
<link href="resources/datepicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="resources/datepicker/jquery-1.12.4.js"></script>
<script src="resources/datepicker/jquery-ui.js"></script>
<link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<!--  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/> -->
<!-- Datepicker end -->
</head>
<!-- character validation script -->

<script  type="text/javascript">
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

<script type="text/javascript">


function validate(from)
{
	  
	var error=document.getElementById("exprienceerror");
  	var exprience=form["exprience"].value;

      error.innerHTML="";
   
      if(exprience==null || exprience==""){
          error.innerHTML="Enter interviewer Exprience ";
          return false;
      }

      if(exprience.length<1){
          error.innerHTML=" Enter minimum 1 digit";
          return false;
      } 
      if(exprience.length>2){
          error.innerHTML=" Enter maximum 2 digit";
          return false;
      } 


	        var error=document.getElementById("companyerror");
		  	var company=form["company"].value;

		      error.innerHTML="";
		   
		      if( company==null || company==""){
		          error.innerHTML="Enter previous company name ";
		          return false;
		      }

		      if(company.length<2){
		          error.innerHTML="Entere minimum 2 character";
		          return false;
		      } 
		      if(company.length>200){
		          error.innerHTML="Company name should be in between 2 to 200 character";
		          return false;
		      }/*end */

			        var error=document.getElementById("locationerror");
				  	var location=form["location"].value;

				      error.innerHTML="";
				   
				      if( location==null || location==""){
				          error.innerHTML="Enter your company location  ";
				          return false;
				      }

				      if(location.length<4){
				          error.innerHTML=" Location should be minimum 4 digit";
				          return false;
				      } 
				      if(location.length>200){
				          error.innerHTML="  Location should be maximum 200 digit";
				          return false;
				      }/*end */
				      
				      var error=document.getElementById("salaryerror");
					  	var salary=form["salary"].value;

					      error.innerHTML="";
					   
					      if( salary==null || salary==""){
					          error.innerHTML="Enter your salary  ";
					          return false;
					      }

					      if(salary.length<1){
					          error.innerHTML=" Salary should be minimum 1 digit";
					          return false;
					      } 
					      if(salary.length>10){
					          error.innerHTML="Salary should be maximum 10 digit";
					          return false;
					      }/*end */
					      
					      var error=document.getElementById("expectederror");
						  	var expected=form["expected"].value;

						      error.innerHTML="";
						   
						      if( expected==null || expected==""){
						          error.innerHTML="Enter your expected salary  ";
						          return false;
						      }

						      if(expected.length<1){
						          error.innerHTML="Expected salary should be minimum 1 digit";
						          return false;
						      } 
						      if(expected.length>10){
						          error.innerHTML="Expected salary should be maximum 10 digit";
						          return false;
						      }/*end */

}  

</script>

</head>


<script type="text/javascript">

function validate2(from)
{
	    var error=document.getElementById("companyerror");
	  	var company=form2["company"].value;

	      error.innerHTML="";
	   
	      if( company==null || company==""){
	          error.innerHTML="Enter previous expreience company name ";
	          return false;
	      }

	       if(company.length<2){
	          error.innerHTML="Expreience name should be minimum 2 character";
	          return false;
	      } 
	      if(company.length>100){
	          error.innerHTML="Expreience name should be in between 2 to 100 character";
	          return false;
	      }  

	      var error=document.getElementById("designationerror");
		  	var designation=form2["designation"].value;

		      error.innerHTML="";
		   
		      if( designation==null || designation==""){
		          error.innerHTML="Enter Designation ";
		          return false;
		      }

		      if(designation.length<2){
		          error.innerHTML="Designation name should be minimum 2 character";
		          return false;
		      } 
		      if(designation.length>50){
		          error.innerHTML="Designation name should be in between 2 to 50 character";
		          return false;
		      }/*end */


		      var error=document.getElementById("dateerror");
			  	var datepickerautoclose=form2["datepickerautoclose"].value;

			      error.innerHTML="";
			   
			      if( datepickerautoclose==null || datepickerautoclose==""){
			          error.innerHTML="Select previous company start date ";
			          return false;
			      }

			      var error=document.getElementById("date1error");
				  	var datepickerautoclose1=form2["datepickerautoclose1"].value;

				      error.innerHTML="";
				   
				      if( datepickerautoclose1==null || datepickerautoclose1==""){
				          error.innerHTML="Select previous company end date ";
				          return false;
				      }

		      var error=document.getElementById("ctcerror");
			  	var ctc=form2["ctc"].value;

			      error.innerHTML="";
			   
			      if( ctc==null || ctc==""){
			          error.innerHTML="Enter previous company ctc ";
			          return false;
			      }

			       if(ctc.length<1){
			          error.innerHTML="ctc should be minimum 1 digit";
			          return false;
			      } 
			      if(ctc.length>6){
			          error.innerHTML="ctc should be in between 1 to 6 digit";
			          return false;
			      } 
			      if(/^[0-9. ,]*$/.test(ctc) == false){
					   	error.innerHTML="Please enter numbers only ";
					   	return false;
					   }


			      var error=document.getElementById("reasonerror");
				  	var reason=form2["reason"].value;

				      error.innerHTML="";
				   
				      if( reason==null || reason==""){
				          error.innerHTML="Enter reason for leaving previous company ";
				          return false;
				      }

				       if(reason.length<3){
				          error.innerHTML="Reason should be minimum 3 character";
				          return false;
				      } 
				      if(reason.length>200){
				          error.innerHTML="Reason should be in between 3 to 200 digit";
				          return false;
				      } 
				      if(/^[0-9. ,]*$/.test(ctc) == false){
						   	error.innerHTML="Please enter numbers only ";
						   	return false;
						   }

					       
}

</script>


<script type="text/javascript">

function validate6(from)
{
	   /*  var error=document.getElementById("answerInputerror");
	  	var seanswerInputlect=form6["answerInput"].value;

	      error.innerHTML="";
	   
	      if( answerInput==null || answerInput==""){
	          error.innerHTML="Please select department ";
	          return false;
	      } */

	      var error=document.getElementById("datepickerautoclose3error");
		  	var datepickers=form6["datepickers"].value;

		      error.innerHTML="";
		   
		      if( datepickers==null || datepickers==""){
		          error.innerHTML="Please select employee Join Date ";
		          return false;
		      }



		      var error=document.getElementById("reporterror");
			  	var report=form6["report"].value;

			      error.innerHTML="";
			   
			      if( report==null || report==""){
			          error.innerHTML="Please select salary slab";
			          return false;
			      }
					       
}

</script>


<script type="text/javascript">

function validate7(from)
{
	    var error=document.getElementById("interstatuserror");
	  	var interstatus=form7["interstatus"].value;

	      error.innerHTML="";
	   
	      if( interstatus==null || interstatus==""){
	          error.innerHTML="Please select interviewer status ";
	          return false;
	      }
	     
	      var error=document.getElementById("roundserror");
		  	var rounds=form7["rounds"].value;

		      error.innerHTML="";
		   
		      if( rounds==null || rounds==""){
		          error.innerHTML="Please select interviewer round ";
		          return false;
		      }
		      
		      var error=document.getElementById("datepickererror");
			  	var datepicker=form7["datepicker"].value;

			      error.innerHTML="";
			   
			      if( datepicker==null || datepicker==""){
			          error.innerHTML="Please select Interviewed  date ";
			          return false;
			      }

}

</script>
<body class="fixed-left">
	
	
	<!-- Start menu -->
	 <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
	<!-- Menu End -->
	
	
	 <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-group pull-right m-t-15">
                </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h4 class="header-title m-t-0 m-b-30">CANDIDATE'S INFORMATION </h4>
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="bg-muted text-center p-30">
                                        <div class="btn-group">
                                        <h5 class="m-b-30 m-t-0">Name : ${candidateDetails.Name}</h5>
                                        <h5 class="m-b-30 m-t-0">DOB : ${candidateDetails.dob}</h5>
                                        <h5 class="m-b-30 m-t-0">Gender : ${candidateDetails.gender}</h5>
                                        <h5 class="m-b-30 m-t-0">Contact No. : ${candidateDetails.contactNumber}</h5>
                                        <h5 class="m-b-30 m-t-0">Address : ${candidateDetails.address}</h5>
                                        <h5 class="m-b-30 m-t-0">Personal Mail:${candidateDetails.email}</h5>
                                        </div>
                                        <!-- Demo only -->
                                        <div class="hidden-xs" style="height: 18px;"></div>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-sm-12">
                                    <ul class="nav nav-tabs">
                                        <li role="presentation" class="active">
                                            <a href="#home1"  data-toggle="tab">QUALIFICATION & WORK EXPERIENCE </a>
                                        </li>
                                       <!--  <li role="presentation">
                                            <a href="#profile1" data-toggle="tab">WORK EXPERIENCE</a>
                                        </li> -->
                                        <li role="presentation">
                                            <a href="#work1"  data-toggle="tab">INTERVIEWER COMMENT</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#work2"  data-toggle="tab">COMMENTS</a>
                                        </li>
                                         <li role="presentation">
                                            <a href="#document"  data-toggle="tab">CV UPLOAD</a>
                                        </li>
                                         <li role="presentation">
                                            <a href="#payroll"  data-toggle="tab">OFFER LETTER</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                    
                                        <div role="tabpanel" class="tab-pane fade in active" id="home1">
                                        
                                        <div align="right">

													<a href="#custom-modal"
														class="btn btn-info btn-md waves-effect waves-light"
														data-animation="fadein" data-plugin="custommodal"
														data-overlaySpeed="200" data-overlayColor="#36404a">
														<i class="zmdi zmdi-plus"></i> Add Other Details
													</a>
													
													
										</div>
										<br>
 
  <table id="user" class="table table-bordered" style="clear: both">
							                <tbody> 
							                    <tr>         
							                        <td width="15%">Department</td>
							                        <td width="34%"><b>${candidateDetails.department}</b></td>
							                        <td width="1%"></td>
							                        <td width="15%">Relevant Experience</td>
							                        <td width="34%"><b> ${candidateDetails.relaventExp}</b></td>
							                    </tr>
							                    <tr>         
							                        <td>Applied Position</td>
							                        <td><b>${candidateDetails.designation}</b></td>
							                         <td width="1%"></td>
							                        <td>PrviousCmpyDesignation</td>
							                        <td><b>${candidateDetails.prviousCmpyDesignation}</b></td>
							                    </tr>  
							                    <tr>         
							                        <td>Highest Qualification</td>
							                        <td><b>${candidateDetails.higestQualification}</b></td>
							                         <td width="1%"></td>
							                        <td>Location Constrain</td>
							                        <td> <b>${candidateDetails.locationContrain}</b></td>
							                    </tr>
							                    <tr>         
							                        <td>Total Years of Experience</td>
							                        <td><b>${candidateDetails.totalExp}</b></td>
							                         <td width="1%"></td>
							                         <td>Current Salary</td>
							                        <td><b>${candidateDetails.currentSalary}</b></td>
							                    </tr>
							                     <tr>         
							                        <td>Reference</td>
							                        <td><b> ${candidateDetails.refference}</b></td>
							                         <td width="1%"></td>
							                         <td>Expected Salary</td>
							                        <td> <b>${candidateDetails.expectedSalary}</b></td>
							                    </tr> 
							                         
							                    <tr>         
							                        <td>Referred By</td>
							                        <td><b>${candidateDetails.companyName}</b></td>
							                         <td width="1%"></td>
							                        <td>Joining Date</td>
							                        <td><b>${candidateDetails.joiningDate}</b></td>
							                    </tr>
							                    <tr>         
							                        <td>Remarks</td>
							                        <td><b>${candidateDetails.remarks}</b></td>
							                        <td></td>
							                        <td></td>
							                        <td></td>
							                    </tr>
							                </tbody>
							            </table>
							       
									
                                        </div>
                                        
                                        <div id="custom-modal-fb" class="modal-demo">
							<button type="button" class="close" onclick="Custombox.close();">
								<span>&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="custom-modal-title">CANDIDATE REVIEW</h4>
                                     <form action="saveInterviewFeedback" method="post" >
                                      <input type="hidden" name="candidateId" value="${candidateDetails.candidateId}">
                                <div class="col-md-12">
                                <br />
                                <table  class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                            <th style="background-color: lightblue;">Sl No</th>
                                          	 	<th style="background-color: lightblue;">Details</th>
                                          	 	<th style="background-color: lightblue;">Fill Data</th>
                                            </tr>
                                        </thead>
                           <tbody>
                          <c:forEach items="${questionBank}" var="qbank" varStatus="counter">
                        <tr>
                        	<td><input type="hidden" name="qnId" value="${qbank.qnId}" ><c:out value='${counter.index + 1}'/></td>
                        	<td><c:out value="${qbank.question}" /></td>
                        	<td><c:if test="${qbank.qnType == 'Text'}"><input type="text" name="answer" class="form-control" ></c:if>
                        	<c:if test="${qbank.qnType == 'TextArea'}"><textarea  name="answer" rows='3' cols="50"></textarea></c:if>
                        	<c:if test="${qbank.qnType == 'Option'}">
                        	
                        	<c:set var="option" value="${qbank.optionDetails}"/>
							<c:set var="splitvalues" value="${fn:split(option, ',')}" />
							
							<c:set var="dispay" value="${qbank.optionsType}"/>
							<c:set var="dispayvalue" value="${fn:split(dispay, ',')}" />
							
                       	<select  array="splitvalues"  name="answer" class="form-control" style="width: 150px; border: 1px solid #35b8e0; padding-left: 50px" >
        				<c:forEach items="${splitvalues}" varStatus="i" var="answer" >
           					<option value="${answer}"><c:out value="${dispayvalue[i.index]}"/></option>
       						</c:forEach>
         				   	</select>
                        	</c:if>
                        	</td>
                        	</tr>
                    </c:forEach>
                                        </tbody>
                                    </table>
					</div><!--div class col-md-12  -->
					<div align="center">
						<button type="submit"  class="btn btn-info waves-effect waves-light">Submit</button>
					</div>
					<br />
			 </form>
									</div>
									
									
                                        <div role="tabpanel" class="tab-pane fade" id="work1">
                                        
                                        <div align="right">
                                        <a href="#custom-modal-fb"
														class="btn btn-info btn-md waves-effect waves-light"
														data-animation="fadein" data-plugin="custommodal"
														data-overlaySpeed="200" data-overlayColor="#36404a">
														<i class="zmdi zmdi-plus"></i> HR Reviews
													</a>
													</div>
                                    <form:form action="saveRemarks" name="form7" onsubmit="return validate7()" modelAttribute="employeeDetails">
									<form:hidden path="empId" value="${candidateDetails.candidateId}"/>
									<form:hidden path="empQufnId" value="${USERID}"/>
								   
								   <div class="col-md-12">
								    <div class="col-md-4">
								    <div class="form-group">
										<label for="name">Interview Status <span style="color:red;">*</span></label> 
									 <form:select class="form-control" path="status" title="Select" id="interstatus">
                                         <form:option value="" label="select status" />
                                       <c:forEach items="${welezoWorkFlow}" var="welezo" varStatus="status">
                                     	<c:if test="${welezo.CValue == candidateDetails.interviewStatus}"> 
											<form:option path="status" value="${welezo.CDisplay}" >${welezo.CDisplay}</form:option>		
											</c:if>
                                      </c:forEach>
                                       </form:select> 
                                        <font id="interstatuserror" style="color: red;"></font>
									</div>
									</div>
									 <div class="col-md-4">
									 <div class="form-group">
										<label for="name">Interview Rounds <span style="color:red;">*</span></label> 
									 <form:select class="form-control" path="level" title="Select" id="rounds">
                                         <form:option value="" label="select status" />
                                       <c:forEach items="${interViewRounds}" var="welezo" varStatus="status">
                                     	<c:if test="${welezo.CValue == candidateDetails.interviewStatus}"> 
											<form:option path="level" value="${welezo.CDisplay}" >${welezo.CDisplay}</form:option>		
											</c:if>
                                      </c:forEach>
                                       </form:select> 
                                        <font id="roundserror" style="color: red;"></font>
									</div>
									</div>
									 <div class="col-md-4">
									 <div class="form-group">
										<label for="name">Interview Date<span style="color:red;">*</span></label> 
										<form:input  path="dob" id="datepicker" class="form-control"/>
									 <script src="resources/datepicker/jquery-1.12.4.js"></script>
								  <script src="resources/datepicker/jquery-ui.js"></script>
								<script type="text/javascript">
								$(document).ready(function(){
								  $( function() {
								    $("#datepicker").datepicker({
								        minDate: +0, 
								        maxDate: "+1M",
								        dateFormat: 'dd/mm/yy',
								        beforeShowDay: noSunday,
								        
								    });
								    function noSunday(date){ 
								         return [date.getDay() != 0, ''];
								      }; 
								
								    } );
								});
								</script>
									</div>
									 <font id="datepickererror" style="color: red;"></font>
									</div>
									</div>
									 <div class="col-md-12">
								    <div class="col-md-6">
									<div class="form-group">
									<c:if test="${candidateDetails.interviewStatus == 'For Interview'}">
										<label for="name">Interviewed By </label> 
									 <form:select class="form-control" path="expId" title="Select" id="interviewed">
                                         <form:option value="" label="select HR Name" />
                                       <c:forEach items="${empDeptWiseHR}" var="Hr" varStatus="status">
											<form:option path="expId" value="${Hr.empId}" >${Hr.empName}</form:option>		
                                      </c:forEach>
                                       </form:select> 
                                        <font id="interviewederror" style="color: red;"></font>
                                        </c:if>
                                        <c:if test="${candidateDetails.interviewStatus != 'For Interview'}">
										<label for="name">Interviewed By<span style="color:red;">*</span></label> 
									 <form:select class="form-control" path="expId" title="Select" >
                                         <form:option value="" label="select HR Name" />
                                       <c:forEach items="${empDeptWise}" var="other" varStatus="status">
											<form:option path="expId" value="${other.empId}" >${other.empName}</form:option>		
                                      </c:forEach>
                                       </form:select> 
                                        </c:if>
									</div>
									</div>
									
									<div class="col-md-6">
									<div class="form-group">
										<label for="name">Remarks</label> 
										<form:textarea  path="remarks" id="name" placeholder="" cols="80" rows="3"></form:textarea>
									</div>
									</div>
									</div>
									
									<div align="center">
										<button type="submit" onclick="return validate7()"
											class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
									</form:form>
									<br />
									 <div align="right">
									 <a href="#demo" class="btn btn-success" data-toggle="collapse">
									 <i class="fa fa-plus" aria-hidden="true"></i> VIEW HR REVIEW</a>
 </div>
 <br />
  <div id="demo" class="collapse">
    <table id="datatable" class="table table-striped table-bordered" cellpadding="1" cellspacing="1">
        									<thead>
	                    					<tr class="default">
											<th>Organizational Fitness</th>
											<th>Review</th>
											</tr>
											</thead>
											 <tbody>
                                            <c:forEach items="${candidateReviewDetails}" var="review">
                      <tr>
                        	<td><c:out value="${review.question}"/></td>
                        	 <td><c:out value="${review.answer}" /></td>
                        	
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
  </div>
                                        </div>
                                         <div role="tabpanel" class="tab-pane fade" id="work2">
										<br>
                                           <div class="panel-body">
											<!-- <div class="well well-sm"> -->
												<div class="panel-body">
                                        <table id="datatable" class="table table-striped table-bordered">
        									<thead>
	                    					<tr class="info">
											<th>InterView Date</th>
											<th>InterViewd By</th>
											<th>Levels</th>
											<th>Status</th>
											<th>Remarks</th>
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${interviewerFeedback}" var="fb">
                      <tr>
                        	<td><c:out value="${fb.interviewDate}"/></td>
                        	 <td><c:out value="${fb.empName}" /></td>
                        	 <td><c:out value="${fb.interviewRound}"/></td>
                        	  <td><c:out value="${fb.interviewStatus}"/></td>
                        	 <td><c:out value="${fb.remarks}"/></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                                        <br>
																	</div>
																<!-- </div> -->
															</div>
                                        </div>
                                        
                                      <!--   ------------------ Start Uploading Documents---------------- -->
                                        
                                          <div role="tabpanel" class="tab-pane fade" id="document">
                                        <h4>UPLOAD CV</h4>
							<div class="custom-modal-text text-left">
							<form method="post" name="form8" action="ivDocument" enctype="multipart/form-data">
							<input type="hidden" name="empId" value="${candidateDetails.candidateId}">
							<input type="hidden" name="name" value="${candidateDetails.Name}" readonly="readonly" />
           					 <table>
               				  <tr>
                			    <td><br></td>
                   			 <td><input type="file" name="file" id="browse" class="form-control input-sm" required="required"/>
                			    </td>
                </tr>
               <tr><td><br/></td>
               </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-sm" value="Submit" /></td>
                </tr>
            </table>
        </form>
        <br/>
         <p><h3><b>DOCUMENT LIST :</b></h3></p>
                                                     <c:forEach items="${documentList}" var="doc">
                                                     <c:set var="name" value="${doc.docName}"/>
                                                      <h4><a href="download?fileName=<c:out value='${doc.path}'/>" ><u>${fn:substringAfter(name, "_")}</a></u></h4>
                                                      </c:forEach>
        </div>
                                        </div>
                                        <!-- ---------------------------------------End of uploading Document----------------------- -->
                                        
                                        <div role="tabpanel" class="tab-pane fade" id="payroll">
                                         <div align="left">

													<a href="#custom-modal6"
														class="btn btn-info btn-md waves-effect waves-light"
														data-animation="fadein" data-plugin="custommodal"
														data-overlaySpeed="200" data-overlayColor="#36404a">
														<i class="zmdi zmdi-plus"></i> Add Designation
													</a>
										</div>
										<br>
  <table id="datatable" class="table table-striped table-bordered">
        									<thead>
	                    					<tr class="info">
											<th>Slab Name</th>
											<th>Gross</th>
											<th>Nett</th>
											<th>Action</th>
											</tr></thead>
											 <tbody>
                      <tr>
                        	<td><c:out value="${candidateDetails.slabName}"/></td>
                        	 <td><c:out value="${candidateDetails.gross}" /></td>
                        	 <td><c:out value="${candidateDetails.nett}"/></td>
                        	  <td>
                        	   <%--  <c:if test="${employeeById.status == 'Selected' || employeeById.status == 'Offered' || employeeById.status == 'Confirmed'}"> --%>
                        	  <a href="empOfferletter?candidateId=<c:out value="${candidateDetails.candidateId}"/>&slabId=<c:out value="${candidateDetails.slabId}"/>" class="btn btn-info btn-md waves-effect waves-light">Offer Letter</a>
                        	 <%-- </c:if>  --%>
                        	  </td>
                        </tr>
                     </tbody>
                    </table>

                                        <br>
                                        </div>
                                    </div>
                                </div>
                               </div></div> 
                            </div>
                            <!-- end row -->
                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->
                
                <div class="row">
						
								<!--===================================================-->
								<div class="row">
									
						<!-- content -->

						<!-- Modal -->
						<div id="custom-modal" class="modal-demo">
							<button type="button" class="close" onclick="Custombox.close();">
								<span>&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="custom-modal-title">OTHER DETAILS</h4>
							<div class="custom-modal-text text-left">
								<form:form role="form" action="saveCandidateOtherDetails" name="form" onsubmit="return validate()" modelAttribute="employeeDetails">
								<form:hidden path="empId" value="${candidateDetails.candidateId}"/>
								<%-- <form:hidden path="status" value="${employeeById.status}"/> --%>
								<div class="form-group">
										<label for="name">Relevant Experience <span style="color:red;">*</span></label> 
										<form:input type="text" path="qualification" class="form-control"  placeholder="" id="exprience"/>
									<!--  <font id="exprienceerror" style="color: red;"></font> -->
									</div>
									<div class="form-group">
										<label for="name">Previous Company Designation <span style="color:red;">*</span></label> 
										<form:input type="text" path="designation" class="form-control" id="company" placeholder="" />
									 <!--  <font id="companyerror" style="color: red;"></font> -->
									</div>
									<div class="form-group">
										<label for="name">Location Constrain <span style="color:red;">*</span></label> 
										<form:input type="text" path="institute" onkeypress="return onlyAlphabets(event,this);" class="form-control" id="location"  placeholder="" />
									    <!-- <font id="locationerror" style="color: red;"></font> -->
									    <span id="error" style="color: red; display: none">* Enter digits (0 - 9)</span>
									</div>
									<div class="form-group">
										<label for="position">Current Salary / Previous Salary <span style="color:red;">*</span></label> 
										<form:input type="text" path="biometricId" class="form-control" placeholder=""  id="salary"/>
									   <!--  <font id="salaryerror" style="color: red;"></font> -->
									</div>
									<div class="form-group">
										<label for="company">Expected Salary <span style="color:red;">*</span></label> 
										<form:input type="text"	path="qualifiedYear" class="form-control"  placeholder="" id="expected"/>
									    <!-- <font id="expectederror" style="color: red;"></font> -->
									</div>
									<%-- <div class="form-group">
										<label for="exampleInputEmail1">Percentage  </label>
										 <form:input type="text" path="percentage" class="form-control"  placeholder="" />
									     <font id="percentageerror" style="color: red;"></font>
									</div> --%>
									<div align="center">
										<button type="submit" onclick="return validate()"
											class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
								</form:form>
							</div>
						</div>


						<div id="custom-modal1" class="modal-demo">
							<button type="button" class="close" onclick="Custombox.close();">
								<span>&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="custom-modal-title">WORK EXPERIENCE</h4>
							<div class="custom-modal-text text-left">
								<form:form action="saveExperience" name="form2" onsubmit="retrun validate2()" modelAttribute="employeeDetails" >
								<form:hidden path="empId" value="${employeeById.empId}"/>
								<form:hidden path="status" value="${employeeById.status}"/>
									<div class="form-group">
										<label for="name"> Company Name <span style="color:red;">*</span></label> 
										<form:input type="text" path="companyName" class="form-control" id="company" placeholder="" />
									  <font id="companyerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="position">Designation  <span style="color:red;">*</span></label>
										 <form:input type="text" path="designation" class="form-control" id="designation" placeholder="" />
									 <font id="designationerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="company">Start Date  <span style="color:red;">*</span></label>
										<div class="input-group">
										 <form:input type="text" path="qualification" class="form-control" id="datepickerautoclose" placeholder="" />
									<font id="dateerror" style="color: red;"></font>
									 <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
									</div>
									</div>
									
									<div class="form-group">
										<label for="company">End date  <span style="color:red;">*</span></label> 
									<div class="input-group">
									<form:input type="text" path="specialization" class="form-control" id="datepickerautoclose1" placeholder="" />
									 <font id="date1error" style="color: red;"></font>
									  <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar-o"></i></span>
									</div>
									</div>
									
									<div class="form-group">
										<label for="exampleInputEmail1">CTC/annum  <span style="color:red;">*</span></label> 
										<form:input type="text" path="ctcAnnum" class="form-control" id="ctc" placeholder="2.0" />
									    <font id="ctcerror" style="color: red;"></font>
									</div>

									<div class="form-group">
										<label for="exampleInputEmail1">Reason for leaving  <span style="color:red;">*</span></label>
										<form:input type="text" path="reasonLeaving"  onkeypress="return onlyAlphabets(event,this);" class="form-control" id="reason" placeholder="" />
									   <font id="reasonerror" style="color: red;"></font>
									</div>

									<div align="center">
										<button type="submit" onclick="return validate2()" class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
							<!-- Modal -->
			<div id="custom-modal6" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">ADD EMPLOYEE ROLE</h4>
				<div class="custom-modal-text text-left">
                                     <form action="candidateSalSlab" name="form6" >
                                      <input type="hidden" name="candidateId" value="${candidateDetails.candidateId}">
                                <div class="col-md-12">
                                <div class="col-sm-12">
									<p class="text-muted font-13">
									<label>Designation & Department <span style="color:red;">*</span></label> 
                                       <input list="suggestionList"  id="answerInput" class="form-control" required="required">
								<datalist id="suggestionList">
								<c:forEach items="${allRoles}" var="role" varStatus="status">
    											<option data-value="${role.roleId}">${role.designation}</option>
    											 </c:forEach>
								</datalist>
						<input type="hidden" name="roleId" id="answerInput-hidden">
						
						<script type="text/javascript">
						document.querySelector('input[list]').addEventListener('input', function(e) {
						    var input = e.target,
						        list = input.getAttribute('list'),
						        options = document.querySelectorAll('#' + list + ' option'),
						        hiddenInput = document.getElementById(input.id + '-hidden'),
						        inputValue = input.value;

						    hiddenInput.value = inputValue;

						    for(var i = 0; i < options.length; i++) {
						        var option = options[i];

						        if(option.innerText === inputValue) {
						            hiddenInput.value = option.getAttribute('data-value');
						            break;
						        }
						    }
						});
						</script>
								    </p>
                                 </div>
										   <div class="form-group">
                                                <!-- <div class="col-sm-6">
                                                	<p class="text-muted font-13">
                                                   <div class="input-daterange input-group" id="date-range">
                                                   <strong>Join Date <span style="color:red;">*</span></strong> 
                                                        <input	name="joinDate" type="text" class="form-control"  id="datepickerautoclose3" placeholder="dd/mm/yyyy " />
                                                   </p>
                                                   </div>
                                                </div> -->
                                                
                                                 <div class="col-sm-6">
				                           	<p class="text-muted font-13">
													<strong>Join Date <span style="color:red;">*</span></strong> <span class="m-l-15">
													 <input	name="joinDate" type="text" class="form-control"  id="datepickers" placeholder="dd/mm/yyyy " />
													 <script src="resources/datepicker/jquery-ui.js"></script>
								<script type="text/javascript">
								$(document).ready(function(){
								  $( function() {
								    $("#datepickers").datepicker({
								        minDate: +0, 
								        maxDate: "+1M",
								        dateFormat: 'dd/mm/yy',
								        beforeShowDay: noSunday,
								        
								    });
								    function noSunday(date){ 
								         return [date.getDay() != 0, ''];
								      }; 
								
								    } );
								});
								</script>
													</span>
													  <font id="datepickerautoclose3error" style="color: red;"></font> 
												</p>
										   </div>
                                                
                                                <div class="col-sm-6">
				                           	<p class="text-muted font-13">
													<strong>Salary Slab <span style="color:red;">*</span></strong> <span class="m-l-15">
													<select class="form-control" name="SalSlab" title="Select" id="report">
                                         <option value="" label="Select Salary slab" ></option>
                                       <c:forEach items="${allSalSlab}" var="sal" varStatus="status">
											<option name="SalSlab" value="${sal.slabId}" >${sal.slabName}</option>		
                                      </c:forEach>
                                       </select> 
													</span>
													  <font id="reporterror" style="color: red;"></font>
												</p>
										   </div>
                                            </div>
										   
										    
						</div> 
					<div align="center">
						<button type="submit" onclick="return validate6()"
							class="btn btn-info waves-effect waves-light">Submit</button>
					</div>
				</form>

			</div>
	</div>
       <!--end model  --> 
					
                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
        
 	
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

        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>
	 
      <!-- Datatables-->
        <script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/jszip.min.js"></script>
        <script src="resources/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>
        
	<!-- Plugins Js -->
	<script src="resources/plugins/switchery/switchery.min.js"></script>
	<script src="resources/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
	<script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
	<script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
	<script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
	<script src="resources/plugins/moment/moment.js"></script>
	<!-- <script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->
	<script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

	<!-- Datatable init js -->
	<script src="resources/pages/datatables.init.js"></script>

	
	<!-- App js -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>

	<script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

	<script>
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
            jQuery('#datepickerautoclose').datepicker({
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
        </script>
</body>
</html>
        