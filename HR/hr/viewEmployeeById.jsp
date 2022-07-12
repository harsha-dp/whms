<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured  CMS, etc.">
        <meta name="author" content="Coderthemes">
        <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
 <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">
        <title>WELEZO </title>
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
<script src="resources/HR/js/modernizr.min.js"></script>
<script src="resources/js/modernizr.min.js"></script>

<!-- Plugins css-->
        <link href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/HR/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
    
    
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
	    var error=document.getElementById("custnameerror");
	  	var custname=form["custname"].value;

	      error.innerHTML="";
	   
	      if( custname==null || custname==""){
	          error.innerHTML="Enter interviewer qualification ";
	          return false;
	      }

	      if(custname.length<2){
	          error.innerHTML="qualification name should be minimum 2 character";
	          return false;
	      } 
	      if(custname.length>50){
	          error.innerHTML="qualification name should be in between 2 to 50 character";
	          return false;
	      }

	      if(/^[a-zA-Z,.() ,]*$/.test(custname) == false){
			   	error.innerHTML="Please enter valid qualification name ";
			   	return false;
			   }
          

	      /*end */
	        var error=document.getElementById("instituteerror");
		  	var institute=form["institute"].value;

		      error.innerHTML="";
		   
		      if( institute==null || institute==""){
		          error.innerHTML="Enter institute name ";
		          return false;
		      }

		      if(institute.length<2){
		          error.innerHTML="institute name should be minimum 2 character";
		          return false;
		      } 
		      if(institute.length>100){
		          error.innerHTML="institute name should be in between 2 to 100 character";
		          return false;
		      }/*end */

		        var error=document.getElementById("boarderror");
			  	var board=form["board"].value;

			      error.innerHTML="";
			   
			      if( board==null || board==""){
			          error.innerHTML="Enter board or university name ";
			          return false;
			      }

			      if(board.length<2){
			          error.innerHTML=" Board or university name should be minimum 2 character";
			          return false;
			      } 
			      if(board.length>100){
			          error.innerHTML=" Board or university name should be in between 2 to 100 character";
			          return false;
			      }/*end */

			        var error=document.getElementById("yearerror");
				  	var year=form["year"].value;

				      error.innerHTML="";
				   
				      if( year==null || year==""){
				          error.innerHTML="Enter year of passout ";
				          return false;
				      }

				      if(year.length<4){
				          error.innerHTML=" Year of passout should be minimum 4 digit";
				          return false;
				      } 
				      if(year.length>4){
				          error.innerHTML="  Year of passout should be maximum 4 digit";
				          return false;
				      }/*end */

				      if(/^[0-9 ,]*$/.test(year) == false){
						   	error.innerHTML="Please enter valid passout year ";
						   	return false;
						   }


						   var error=document.getElementById("percentageerror");
						  	var percentage=form["percentage"].value;

						      error.innerHTML="";
						   
						      if( percentage==null || percentage==""){
						          error.innerHTML="Enter percentage ";
						          return false;
						      }

						      if(percentage.length<2){
						          error.innerHTML=" percentage should be minimum 2 digit";
						          return false;
						      } 
						      if(percentage.length>6){
						          error.innerHTML="  percentage should be maximum 6 digit";
						          return false;
						      }/*end */

						      if(/^[0-9. ,]*$/.test(percentage) == false){
								   	error.innerHTML="Please enter numbers only ";
								   	return false;
								   }
}
</script>
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
	      if(company.length>50){
	          error.innerHTML="Expreience name should be in between 2 to 50 character";
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
		      if(designation.length>30){
		          error.innerHTML="Designation name should be in between 2 to 30 character";
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
				  	var date1=form2["datepickerautoclose1"].value;

				      error.innerHTML="";
				   
				      if( date1==null || date1==""){
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

			       if(ctc.length<2){
			          error.innerHTML="ctc should be minimum 2 digit";
			          return false;
			      } 
			      if(ctc.length>6){
			          error.innerHTML="ctc should be in between 2 to 6 digit";
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
function validate3(from)
{
	    var error=document.getElementById("companyerror");
	  	var company=form3["company"].value;

	      error.innerHTML="";
	   
	      if( company==null || company==""){
	          error.innerHTML="please select department ";
	          return false;
	      }

	      var error=document.getElementById("typeerror");
		  	var type=form3["type"].value;

		      error.innerHTML="";
		   
		      if( type==null || type==""){
		          error.innerHTML="please select employee type ";
		          return false;
		      }
		      var error=document.getElementById("reporterror");
			  	var report=form3["report"].value;

			      error.innerHTML="";
			   
			      if( report==null || report==""){
			          error.innerHTML="please select report to ";
			          return false;
			      }
}

</script>
<script type="text/javascript">
function validate5(from)
{
	    var error=document.getElementById("employeeerror");
	  	var employee=form5["employee"].value;

	      error.innerHTML="";
	   
	      if( employee==null || employee==""){
	          error.innerHTML="Enter employee id ";
	          return false;
	      }

	       if(employee.length<7){
	          error.innerHTML="Employee id should be minimum 7 character";
	          return false;
	      } 
	      if(employee.length>10){
	          error.innerHTML="Employee id  should be in between 7 to 10 character";
	          return false;
	      }  
		  var error=document.getElementById("nameerror");
	  	var name=form5["name"].value;

	      error.innerHTML="";
	   
	      if( name==null || name==""){
	          error.innerHTML="Enter employee name ";
	          return false;
	      }

	       if(name.length<3){
	          error.innerHTML="employee name should be minimum 3 character";
	          return false;
	      } 
	      if(name.length>80){
	          error.innerHTML="employee name  should be in between 3 to 80 character";
	          return false;
	      } 

         var error=document.getElementById("iderror");
	  	var id=form5["id"].value;

	      error.innerHTML="";
	   
	      if( id==null || id==""){
	          error.innerHTML="Enter employee biometric Id ";
	          return false;
	      }

	       if(id.length<1){
	          error.innerHTML="BiometricId should be minimum 1 digit";
	          return false;
	      } 
	      if(id.length>4){
	          error.innerHTML="BiometricId should should be in between 1 to 4 digit";
	          return false;
	      } 

          var error=document.getElementById("doberror");
	  	var datepickerautoclose2=form5["datepickerautoclose2"].value;

	      error.innerHTML="";
	   
	      if( datepickerautoclose2==null || datepickerautoclose2==""){
	          error.innerHTML="Please select date of birth date";
	          return false;
	      }
		  
		  
         var error=document.getElementById("gendererror");
	  	var gender=form5["gender"].value;

	      error.innerHTML="";
	   
	      if( gender==null || gender==""){
	          error.innerHTML="Please select gender ";
	          return false;
	      }
		  
		   var error=document.getElementById("statuserror");
	  	var status=form5["status"].value;

	      error.innerHTML="";
	   
	      if( status==null || status==""){
	          error.innerHTML="Please select marital status ";
	          return false;
	      } 
		   
		   
		    var error=document.getElementById("emailerror");
	  	var email=form5["email"].value;

	      error.innerHTML="";
	   
	      if( email==null || email==""){
	          error.innerHTML="Please enter corporateEmail id ";
	          return false;
	      }
          if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false){
		   	error.innerHTML="Please enter valid email id ";
		   	return false;
		   }
		   
		   var error=document.getElementById("fathererror");
	  	var father=form5["father"].value;

	      error.innerHTML="";
	   
	      if( father==null || father==""){
	          error.innerHTML="Please enter father/husband Name ";
	          return false;
	      }

	       if(father.length<3){
	          error.innerHTML="father/husband name should be minimum 3 character";
	          return false;
	      } 
	      if(father.length>80){
	          error.innerHTML="father/husband name should be in between 3 to 80 character";
	          return false;
	      } 
		  
		  var error=document.getElementById("relationerror");
	  	var relation=form5["relation"].value;

	      error.innerHTML="";
	   
	      if( relation==null || relation==""){
	          error.innerHTML="Please enter relationship name ";
	          return false;
	      }

	       if(relation.length<3){
	          error.innerHTML="Relationship name should be minimum 3 character";
	          return false;
	      } 
	      if(relation.length>80){
	          error.innerHTML="Relationship name should be in between 3 to 80 character";
	          return false;
	      } 
		  
		  
	        var error=document.getElementById("contacterror");
	    	var contact=form5["contact"].value;

	        error.innerHTML="";
	     
	        if( contact==null || contact==""){
	            error.innerHTML="Enter Contact Number";
	            return false;
	        }

	        else if(isNaN(contact)){
	            error.innerHTML="Mobile Number Can Not be alphabate";
	            return false;
	        }

	        if(contact.length<10){
	            error.innerHTML="Contact has to be minmum 10 digits"
	            return false;
	        } 
	        if(contact.length>10){
	            error.innerHTML="Invalid mobile number you entered more than 10 digits"
	            return false;
	        }/*end */
			
			var error=document.getElementById("contact1error");
	    	var contact1=form5["contact1"].value;

	        error.innerHTML="";
	     
	        if( contact1==null || contact1==""){
	            error.innerHTML="Enter Contact Number";
	            return false;
	        }

	        else if(isNaN(contact1)){
	            error.innerHTML="Mobile Number Can Not be alphabate";
	            return false;
	        }

	        if(contact1.length<10){
	            error.innerHTML="Contact has to be minmum 10 digits"
	            return false;
	        } 
	        if(contact1.length>10){
	            error.innerHTML="Invalid mobile number you entered more than 10 digits"
	            return false;
	        }/*end */


            var error=document.getElementById("email1error");
	  	var email1=form5["email1"].value;

	      error.innerHTML="";
	   
	      if( email1==null || email1==""){
	          error.innerHTML="Please enter corporateEmail id ";
	          return false;
	      }
          if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email1) == false){
		   	error.innerHTML="Please enter valid email id ";
		   	return false;
		   }	


       var error=document.getElementById("grouperror");
	  	var group=form5["group"].value;

	      error.innerHTML="";
	   
	      if( group==null || group==""){
	          error.innerHTML="Please select bloodGroup";
	          return false;
	      }
		  
		  var error=document.getElementById("addresserror");
		   var address=form5["address"].value;
		   error.innerHTML="";
		   if(address==null||address=="")
			   {
                  error.innerHTML="Please enter Permanent address";
                  return false;
			   }
		   if(address.length<3)
            {
                error.innerHTML="Permanent address should be minimum 3 character";
                return false;
	            }


          if(address.length>500)
         {
     error.innerHTML="You entered more then 200 character please enter less then 500 character";
     return false;
     }
	 
	  var error=document.getElementById("address1error");
		   var address1=form5["address1"].value;
		   error.innerHTML="";
		   if(address1==null||address1=="")
			   {
                  error.innerHTML="Please enter communication address";
                  return false;
			   }
		   if(address1.length<3)
            {
                error.innerHTML="Communication address should be minimum 3 character";
                return false;
	            }

          if(address1.length>500)
         {
     error.innerHTML="You entered more then 200 character please enter less then 500 character";
     return false;
     }
}

</script>

<script type="text/javascript">

function validate6(from)
{
	    var error=document.getElementById("selecterror");
	  	var select=form6["select"].value;

	      error.innerHTML="";
	   
	      if( select==null || select==""){
	          error.innerHTML="Please select department ";
	          return false;
	      }

	      var error=document.getElementById("typeerror");
		  	var type=form6["type"].value;

		      error.innerHTML="";
		   
		      if( type==null || type==""){
		          error.innerHTML="Please select employee type ";
		          return false;
		      }
		      var error=document.getElementById("reporterror");
			  	var report=form6["report"].value;

			      error.innerHTML="";
			   
			      if( report==null || report==""){
			          error.innerHTML="Please select report to name";
			          return false;
			      }
}
</script>
<script type="text/javascript">

function validate7(from)
{
           var error=document.getElementById("browseerror");
              var browse=form7["browse"].value;

             error.innerHTML="";
          
             if( browse==null || browse==""){
                 error.innerHTML="Please select file & upload ";
                 return false;
             }
}

</script>

<script type="text/javascript">

function validate8(from)
{
           var error=document.getElementById("browseerror1");
              var browse1=form8["browse1"].value;

             error.innerHTML="";
          
             if( browse1==null || browse1==""){
                 error.innerHTML="Please select file & upload ";
                 return false;
             }
}

</script>

<script type="text/javascript">

function validate9(from)
{
           var error=document.getElementById("datepickerautoclose6error");
              var datepickerautoclose6=form9["datepickerautoclose6"].value;

             error.innerHTML="";
          
             if( datepickerautoclose6==null || datepickerautoclose6==""){
                 error.innerHTML="Please select releving date ";
                 return false;
             }
}

</script>
	
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="resources/HR/tabs/jquery.easyResponsiveTabs.js"></script>
		  <script type="text/javascript">
			$(document).ready(function () {

				$('#parentHorizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
					closed: 'accordion', // Start closed if in accordion view
					tabidentify: 'hor_1', // The tab groups identifier
					activate: function (event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#nested-tabInfo');
						var $name = $('span', $info);

						$name.text($tab.text());

						$info.show();
					}
				});

				$('#ChildVerticalTab_1').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true,
					tabidentify: 'ver_1', // The tab groups identifier
					activetab_bg: '#fff', // background color for active tabs in this group
					inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
					active_border_color: '#c1c1c1', // border color for active tabs heads in this group
					active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
				});

			});
		</script>
	
	
<link href="resources/HR/tabs/easy-responsive-tabs.css" rel="stylesheet" type="text/css">

    </head>
    <body>
			<!-- Start menu -->
            <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->


        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                           <!--   <h4 class="page-title">EMPLOYEE PROFILE</h4> -->
                            <div class="row m-t-40">
                    <div class="col-md-3">
                        <div class="text-center card-box">
                            <div class="dropdown pull-right">
                                <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                   <li><a href="#custom-modal4"	
																	data-animation="fadein" data-plugin="custommodal"
																	data-overlaySpeed="200" data-overlayColor="#35b8e0">Edit</a></li>
																	<%--  <li><a href="block?empId=<c:out value="${employeeById.empId}" />">Block</a></li> --%>
                                     <li><a href="#custom-modal6"	data-animation="fadein" data-plugin="custommodal"
																	data-overlaySpeed="200" data-overlayColor="#B0C4DE">Add Role</a></li>
																	
                                    <li><a href="#custom-modal9"  data-animation="slide" data-plugin="custommodal"
                                                    	data-overlaySpeed="200" data-overlayColor="#36404a">Block</a></li>
                                                    	
                                     <li><a href="#custom-modal"  data-animation="fadein" data-plugin="custommodal"
                                                data-overlaySpeed="200" data-overlayColor="#36404a"><i class="md md-add"></i> Upload Image</a></li>
                                     <li><a href="#custom-modal31"  data-animation="fadein" data-plugin="custommodal"
                                                data-overlaySpeed="200" data-overlayColor="#36404a"><i class="md md-add"></i>Account Details</a></li>
                                      <li><a href="generateQrCode?empId=<c:out value="${employeeById.empId}"/>&empName=<c:out value="${employeeById.empName}"/>" ><i class="md md-add"></i>Generate QR Code</a></li>
                                </ul>
                            </div>
                            <div>
                                <img src="data:image/png;base64,${empImge}" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image">
                            <%--   <img class="img-responsive" src="${employeeImage.path}" width="230px" height="80px" /> --%>
                               <!--  <img src="D:/emp_photos/" class="img-circle thumb-xl img-thumbnail m-b-10" alt="profile-image"> -->
                                
                               <%--  <img src="FileServet?path=${employeeImage.path}" class="img-circle thumb-xl img-thumbnail m-b-10" alt=""> --%>
                                
                                <div class="text-left">
                                	<p class="text-muted font-13"><strong>Emp ID :</strong> <span class="m-l-15">${employeeById.employeeId}</span></p>
                                	 <p class="text-muted font-13"><strong>Full Name :</strong> <span class="m-l-15">${employeeById.empName}</span></p>
                                    <p class="text-muted font-13"><strong>DOB :</strong> <span class="m-l-15">${employeeById.dob}</span></p>
                                    <p class="text-muted font-13"><strong>Mobile :</strong><span class="m-l-15">${employeeById.emergencyContact}</span></p>
                                    <p class="text-muted font-13"><strong>Gender :</strong> <span class="m-l-15">${employeeById.gender}</span></p>
                                    <p class="text-muted font-13"><strong>E-Mail :</strong> <span class="m-l-15">${employeeById.corporateEmail}</span></p>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end col -->
                    <div class="col-lg-9">
                        <div id="parentHorizontalTab">
								<ul class="resp-tabs-list hor_1">
									<li>${employeeById.empName}</li>
									<li>BANK DETAILS</li>
									<li>PERFORMANCE</li>
									<li>ATTENDANCE</li>
									<li>DOCUMENT LIST</li>
									<li>PAY SLIP</li>
								</ul>
							<div class="resp-tabs-container hor_1">
								<div>
									<p>
										<!--vertical Tabs-->
									<div id="ChildVerticalTab_1">
										<ul class="resp-tabs-list ver_1">
											<li style="padding-right: 2px;padding-right: 2px;"><a href="#" data-toggle="tab" aria-expanded="false">PERSONAL DETAILS</a></li>
											<li><a href="#" data-toggle="tab" aria-expanded="false">QUALIFICATION</a></li>
											<li><a href="#" data-toggle="tab" aria-expanded="false">WORK EXPERIENCE</a></li>
											<li><a href="#" data-toggle="tab" aria-expanded="false">ROLE</a></li>
											<!-- <li><a href="#" data-toggle="tab" aria-expanded="false"> DOCUMENTS</a></li> -->
										</ul>
										<div class="resp-tabs-container ver_1">
											
											<div>
												<div class="text-left">
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Emp ID :</strong> <span class="m-l-15">${employeeById.employeeId}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>EMP Name:</strong><span class="m-l-15">${employeeById.empName}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Father Name :</strong> <span class="m-l-15">${employeeById.FHName}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Relationship :</strong> <span class="m-l-15">${employeeById.relationship}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>D O B :</strong> <span class="m-l-15">${employeeById.dob}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Gender :</strong><span class="m-l-15">${employeeById.gender}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Marital status:</strong> <span class="m-l-15">${employeeById.maritalStatus}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Emergency Contact :</strong> <span
																			class="m-l-15">${employeeById.emergencyContact}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Personal contact :</strong> <span
																			class="m-l-15">${employeeById.personalContact}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Personal Email :</strong> <span class="m-l-15">${employeeById.personalEmail}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Blood group :</strong><span class="m-l-15">${employeeById.bloodGroup}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Permanent address</strong> <span
																			class="m-l-15">${employeeById.permanentAddress}</span>
																	</p>
																</div>
																<br/>
																<br>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Communication Address :</strong> <span
																			class="m-l-15">${employeeById.communicationAddresss}</span>
																	</p>
																</div>
																<div class="col-md-6">
																	<p class="text-muted font-13">
																		<strong>Remarks :</strong> <span
																			class="m-l-15">${employeeById.remarks}</span>
																	</p>
																</div>
															</div>
												
											</div>
											<div>
											   <div>
                                                                         <div align="right">
																			<a href="#custom-modal2"
																				class="btn btn-info btn-md waves-effect waves-light"
																				data-animation="fadein" data-plugin="custommodal"
																				data-overlaySpeed="200" data-overlayColor="#36404a">
																				<i class="zmdi zmdi-plus"></i> Add Qualification
																			</a>
																		</div>

					                                <div class="text-left">
					                                   <div class="well well-sm">
											<!-- 	<div class="panel-body"> -->
											<div class="table table-responsive">
													<table class="table" id="t01">
        									<thead>
	                    					<tr class="info">
											<th>Institute</th>
											<th>University</th>
											<th>Qualification</th>
											<th>Specialization</th>
											<th>Year</th>
											<th>Percentage</th>
											<th>Action</th>
											
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${empQualifiaction}" var="qualifiaction">
                      <tr class="success">
                        	<td><c:out value="${qualifiaction.institute}"/></td>
                        	 <td><c:out value="${qualifiaction.university}" /></td>
                        	 <td><c:out value="${qualifiaction.qualification}" /></td>
						      <td><c:out value="${qualifiaction.specialization}" /></td>
                        	 <td><c:out value="${qualifiaction.qualifiedYear}"/></td>
                        	 <td><c:out value="${qualifiaction.percentage}"/></td>
                        	<td><a href="editQunfn?empQufnId=<c:out value="${qualifiaction.empQufnId}"/>"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
																	</div>
																</div>
					                               <!--  </div> -->
					
					                            </div>
												
											</div>
											
											<div>
                                               <div align="right">
																			<a href="#custom-modal1"
																				class="btn btn-info btn-md waves-effect waves-light"
																				data-animation="fadein" data-plugin="custommodal"
																				data-overlaySpeed="200" data-overlayColor="#36404a">
																				<i class="zmdi zmdi-plus"></i> Add Work Experience
																			</a>
																		</div>

				                              <div class="table table-responsive">
													<table class="table" id="t01">
        																	<thead>
	                    														<tr class="info">
																				<th>Company</th>
																				<th>Designation</th>
																				<th>From</th>
																				<th>To</th>
																				<th>Salary</th>
																			<th>Action</th>
											
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${empExperience}" var="experience">
                      <tr class="danger">
                        	<td><c:out value="${experience.companyName}" /></td>
                        	 <td><c:out value="${experience.designation}" /></td>
                        	 <td><c:out value="${experience.fromDate}" /></td>
                        	 <td><c:out value="${experience.toDate}" /></td>
                        	 <td><c:out value="${experience.ctcAnnum}" /></td>
                         	<td><a href="editExp?expId=<c:out value="${experience.expId}"/>"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
				                               
											</div>
											<div>
											<div class="text-left">
												<div class="panel-body">
												<div class="table table-responsive">
													<table class="table" id="t01">
        									<thead>
	                    					<tr class="info">
											<th>Join Date</th>
											<th>Till Date</th>
											<th>Designation</th>
											<th>Report To</th>
											<th>Emp Type</th>
											<th>Salary Slab</th>
											<th>Action</th>
											
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${empRoleDesignation}" var="role">
                      <tr class="success">
                        	
                        	 <td><c:out value="${role.fromDate}" /></td>
                        	 <td><c:out value="${role.toDate}"/></td>
                        	 <td><c:out value="${role.designation}"/></td>
                        	  <td><c:out value="${role.companyName}"/></td>
                        	  <td><c:out value="${role.level}"/></td>
                        	  <td><c:out value="${role.specialization}"/></td>
                        	  <td><a href="editEmpRole?roleId=<c:out value="${role.expId}"/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
																	</div>
																</div>
					                                </div>
											
										</div>
									</div>
									<p style="color:white;">Welezo health card pvt.ltd </p>
								</div>
								<div>
								<div class="table table-responsive">
									 <table class="table" id="t01">
        									<thead>
	                    					<tr class="info">
											<th>Name</th>
											<th>Details</th>
											</tr></thead>
											 <tbody>
                                            <c:forEach items="${employeeACCDetails}" var="accounts">
                      <tr class="success">
                        	<td><c:out value="${accounts.question}"/></td>
                        	 <td><c:out value="${accounts.answer}" /></td>
                        </tr>
                        </c:forEach>
                     </tbody>
                    </table>
                    </div>
								</div>
								<div>
									<p>Default Tab Content 3</p>
								</div>
								<div>
								<h3><b>Click below link to view monthly attendance :</b></h3>
									<h4><u><a href="attendance11?empId=<c:out value='${employeeById.empId}'/>">View Attendance</a></u></h4>
								</div>
								<div>
                                                      <p><h4><b><ul>EMPLOYEE DOCUMENT LIST :</ul></b></h4></p>
                                                     <c:forEach items="${documentList}" var="doc">
                                                      <%-- <h4><u><a href="${doc.path}" download>${doc.docName}</a></u></h4> --%>
                                                     <h4><u><a href="download?fileName=<c:out value='${doc.path}'/>" >${doc.docName}</a></u></h4>
                                                      </c:forEach>
                                                      <h4><b><ul>UPLOAD EMPLOYEE DOCUMENTS BELOW:</ul></b></h4>
							<div class="custom-modal-text text-left">
							<form method="post" name="form7" onsubmit="retuen validate7()" action="empDocument" enctype="multipart/form-data">
							<input type="hidden" name="empId" value="${employeeById.empId}">
							<input type="hidden" name="name" value="${employeeById.empName}" readonly="readonly" />
            <table>
                 <tr>
                    <td><br></td>
                    <td><input type="file" name="file" id="browse" />
                    <font id="browseerror" style="color: red;"></font>
                    </td>
                </tr>
               <tr><td><br/></td>
               </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-sm" onclick="return validate7()" value="Submit" /></td>
                </tr>
            </table>
        </form>
											</div>
                                                </div>

								<div>
									<form action="montlyPaySlip" >
									<p><h3><b>MONTHLY SALARY PAY SLIP</b></h3></p>
									<input type="hidden" name="empId" value="${employeeById.empId}">
									<%-- <select name="empId"  >
							<option value="${employeeById.empId}">${employeeById.empName}</option>
							</select> --%>
							<div class="col-sm-4">
							<select name="month" class="form-control">
											<option value="2017/01/31" >Select Salary Month </option>
											<c:forEach items="${monthList}" var="list" >
											<option value="${list.payforMonth}" >${list.months}</option>
											</c:forEach>
											
											</select>
							</div>
							<input type="submit" class="btn btn-primary btn-sm" value="VIEW">
									</form>
									<br/>
									<br/>
								</div>
							</div>
						</div>
                        </div>
                    </div><!-- end col -->
                            </div><!-- end row -->
                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->
                
                <!-- Modal -->
						<div id="custom-modal2" class="modal-demo">
							<button type="button" class="close" onclick="Custombox.close();">
								<span>&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="custom-modal-title">ADD QUALIFICATION</h4>
							<div class="custom-modal-text text-left">
								<form:form role="form" action="saveEmpQulaiificationDetails" name="form" onsubmit="return validate()"  modelAttribute="employeeDetails">
								<form:hidden path="empId" value="${employeeById.empId}"/>
								<form:hidden path="status" value="Employee"/>
								<div class="form-group">
										<label for="name">Qualification  </label> 
										<form:input type="text" path="qualification" class="form-control"  placeholder="" />
									     <font id="custnameerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="name">Specialization</label> 
										<form:input type="text" path="specialization" class="form-control" id="name" placeholder="" />
									</div>
									<div class="form-group">
										<label for="name">Institute  <span style="color:red;">*</span></label> 
										<form:input type="text" path="institute" onkeypress="return onlyAlphabets(event,this);" class="form-control" id="institute" placeholder="" />
									     <font id="instituteerror" style="color: red;"></font>
									    <span id="error" style="color: red; display: none">* Enter
							                                    digits (0 - 9)</span>
									</div>
									<div class="form-group">
										<label for="position">Board / University / Institute  </label> 
										<form:input type="text" path="university" class="form-control" onkeypress="return onlyAlphabets(event,this);"  placeholder="" />
									     <font id="boarderror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="company">Year  <span style="color:red;">*</span></label> 
										<form:input type="text"	path="qualifiedYear" class="form-control" id="year" placeholder="" />
									    <font id="yearerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Percentage  </label>
										 <form:input type="text" path="percentage" class="form-control"  placeholder="" />
									  <font id="percentageerror" style="color: red;"></font>
									</div>
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
								<form:hidden path="status" value="Employee"/>
									<div class="form-group">
										<label for="name"> Company Name <span style="color:red;">*</span></label> 
										<form:input type="text" path="companyName" class="form-control" id="company" placeholder="" />
									      <font id="companyerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="position">Designation <span style="color:red;">*</span></label>
										 <form:input type="text" path="designation" class="form-control" id="designation" placeholder="" />
									     <font id="designationerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="company">Start Date <span style="color:red;">*</span></label>
										<div class="input-group">
										 <form:input type="text" path="qualification" class="form-control" id="datepickerautoclose" placeholder="" />
									     <font id="dateerror" style="color: red;"></font>
									      <span class="input-group-addon bg-primary b-0 text-white"><i class="fa fa-calendar"></i></span>
									</div>
									</div>
									
									<div class="form-group">
										<label for="company">End date <span style="color:red;">*</span></label> 
										<div class="input-group">
									<form:input type="text" path="specialization"	class="form-control" id="datepickerautoclose1" placeholder="" />
									  <font id="date1error" style="color: red;"></font>
									  <span class="input-group-addon bg-primary b-0 text-white"><i class="fa fa-calendar-o"></i></span>
									</div>
									</div>
									
									<div class="form-group">
										<label for="exampleInputEmail1">CTC/annum <span style="color:red;">*</span></label> 
										<form:input type="text" path="ctcAnnum" class="form-control" id="ctc" placeholder="" />
									      <font id="ctcerror" style="color: red;"></font>
									</div>

									<div class="form-group">
										<label for="exampleInputEmail1">Reason for leaving <span style="color:red;">*</span></label>
										<form:input type="text" path="reasonLeaving"  onkeypress="return onlyAlphabets(event,this);" class="form-control" id="reason" placeholder="" />
									      <font id="reasonerror" style="color: red;"></font>
									</div>

									<div align="center">
										<button type="submit" onclick="return validate2()" class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
								</form:form>
							</div>
						</div>
                
                	<!-- Modal -->
			<div id="custom-modal4" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">EMPLOYEE ADDITIONAL DETAILS</h4>
				
				<div class="custom-modal-text text-left">
                                     <form:form action="postEditEmployee" name="form5" onsubmit="retrun validate5()" modelAttribute="employeeDetails">
                                     <form:hidden path="empId" value="${employeeById.empId}"/>
                                     <div class="col-md-12">
                                           <div class="col-md-6">
					                           <p class="text-muted font-13">
													<strong>Employee ID <span style="color:red;">*</span></strong> <span class="m-l-15">
													<form:input type="text" class="form-control" path="employeeId" id="employee" value="${employeeById.employeeId}" /></span>
												<font id="employeeerror" style="color: red;"></font>
												</p>
					                         </div>
					                         
					                           <div class="col-md-6">
				                           	<p class="text-muted font-13">
													<strong> Name <span style="color:red;">*</span></strong> <span class="m-l-15">
													<form:input	type="text" class="form-control" id="name" path="empName" onkeypress="return onlyAlphabets(event,this);"
														value="${employeeById.empName}" /></span>
												   <font id="nameerror" style="color: red;"></font>
												</p>
												</div>
												</div>
												
												
												<div class="col-md-12">
												<div class="col-md-6">
				                           	<p class="text-muted font-13">
													<strong>Biometric Id <span style="color:red;">*</span></strong> <span class="m-l-15">
													<form:input
														type="text" class="form-control" id="id" path="biometricId"
														value="${employeeById.biometricId}" /></span>
												   <font id="iderror" style="color: red;"></font>
												</p>
												</div>
												
												
												 <div class="col-md-6">
												<p class="text-muted font-13">
													<strong>DOB <span style="color:red;">*</span></strong> 
													<div class="input-group">
													<form:input
														type="text" class="form-control" id="datepickerautoclose2" path="dob" 
														value="${employeeById.dob}" />
												   <font id="doberror" style="color: red;"></font>
												    <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
												</div>
												</div>
												</div>
												
												<div class="col-md-12">
												  <div class="col-md-6">
												<p class="text-muted font-13">
													<strong>Gender <span style="color:red;">*</span></strong> <span class="m-l-15"><form:input
														type="text" class="form-control" id="gender" path="gender" onkeypress="return onlyAlphabets(event,this);"
														value="${employeeById.gender}" /> 
														</span>
												   <font id="gendererror" style="color: red;"></font>
												</p>
												</div>
												
												 <div class="col-md-6">
												<p class="text-muted font-13">
													<strong>Marital Status <span style="color:red;">*</span></strong> 
													<span class="m-l-15">
													<%-- <form:input type="text" class="form-control" path="maritalStatus"
														value="${employeeById.maritalStatus}" /> --%>
											<select name="maritalStatus" class="form-control" id="status">
											<option value="${employeeById.maritalStatus}" label="${employeeById.maritalStatus}"></option>
											<option value="Single">Single</option>
											<option value="Married">Married</option>
										</select>
													</span>	
												   <font id="statuserror" style="color: red;"></font>
												</p>
												</div>
												</div>
												 
												 <div class="col-md-12">
												 <div class="col-md-6">
												<p class="text-muted font-13">
													<strong>Corporate E-Mail <span style="color:red;">*</span></strong> <span class="m-l-15"><form:input
														type="text" class="form-control" id="email" path="corporateEmail"
														value="${employeeById.corporateEmail}" /></span>
												   <font id="emailerror" style="color: red;"></font>
												</p>
												</div>
												                   <div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Father/Husband Name <span style="color:red;">*</span></strong> <span class="m-l-15"><form:input
																					type="text" path="FHName" class="form-control" id="father" onkeypress="return onlyAlphabets(event,this);"
																					value="${employeeById.FHName}" /></span>
                                                                            <font id="fathererror" style="color: red;"></font>
																		</p>
																	</div>
																	
																	</div>
																	
																	<div class="col-md-12">
																	<div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Relationship <span style="color:red;">*</span></strong> <span class="m-l-15"><form:input
																					type="text" path="relationship" id="relation" onkeypress="return onlyAlphabets(event,this);"
																					class="form-control"
																					value="${employeeById.relationship}" /></span>
																		   <font id="relationerror" style="color: red;"></font>
																		</p>
																	</div>
																	
																	<div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Emergency Contact <span style="color:red;">*</span></strong> <span
																				class="m-l-15"><form:input type="text"
																					path="emergencyContact" id="contact" class="form-control"
																					value="${employeeById.emergencyContact}" /></span>
																		   <font id="contacterror" style="color: red;"></font>
																		</p>
																	</div>
																	</div>
																	
																	<div class="col-md-12">
																	<div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Personal contact <span style="color:red;">*</span></strong> <span
																				class="m-l-15"><form:input type="text" id="contact1"
																					path="personalContact" class="form-control"
																					value="${employeeById.personalContact}" /></span>
																		   <font id="contact1error" style="color: red;"></font>
																		</p>
																	</div>
																	<div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Personal Email <span style="color:red;">*</span></strong> <span
																				class="m-l-15"><form:input type="text" id="email1"
																					path="personalEmail" class="form-control"
																					value="${employeeById.personalEmail}" /></span>
																		   <font id="email1error" style="color: red;"></font>
																		</p>
																	</div>
																	</div>
																	
																	<div class="col-md-12">
																	<div class="col-md-6">
																		<p class="text-muted font-13">
																			<strong>Blood group <span style="color:red;">*</span></strong><span class="m-l-15">
																			<%-- <form:input
																					type="text" path="bloodGroup" class="form-control"
																					value="${employeeById.bloodGroup}" /> --%>
												<select name="bloodGroup" class="form-control" id="group">
											<option value="${employeeById.bloodGroup}">${employeeById.bloodGroup}</option>
											<option value="A+" >A+</option>
											<option value="A-" >A-</option>
											<option value="B+" >B+</option>
											<option value="B-"> B-</option>
											<option value="O+" >O+</option>
											<option value="O-" >O-</option>
											<option value="AB+" >AB+</option>
											<option value="AB-" >AB-</option>
										</select>
																					
																					</span>
																		   <font id="grouperror" style="color: red;"></font>
																		</p>
																	</div>
																	</div>
																	
																	<div class="col-md-12">
																		<p class="text-muted font-13">
																			<strong>Permanent address <span style="color:red;">*</span></strong> <span
																				class="m-l-15"><form:input type="text"
																					path="permanentAddress" class="form-control"
																					value="${employeeById.permanentAddress}" id="address"/></span>
																		   <font id="addresserror" style="color: red;"></font>
																		</p>
																	</div>
																	<div class="col-md-12">
																		<p class="text-muted font-13">
																			<strong>Communication Address <span style="color:red;">*</span></strong> <span
																				class="m-l-15"><form:input type="text" id="address1"
																					path="communicationAddresss" class="form-control"
																					value="${employeeById.communicationAddresss}" /></span>
																		<font id="address1error" style="color: red;"></font>
																		</p>
																	</div>
																	</div>
					<p>&nbsp;</p>
					<div align="center">
						<button type="submit" onclick="return validate5()"
							class="btn btn-info waves-effect waves-light">Submit</button>
					</div>
				</form:form>
			</div>
				</div>

	<!-- Modal -->
						<div id="custom-modal" class="modal-demo">
							<button type="button" class="close" onclick="Custombox.close();">
								<span>&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="custom-modal-title">UPLOAD EMPLOYEE IMAGE</h4>
							<div class="custom-modal-text text-left">
							<form method="post" action="empImg" name="form8" onsubmit="retuen validate8()" enctype="multipart/form-data">
							<input type="hidden" name="empId" value="${employeeById.empId}" >
							<%-- <select name="empId"  >
							<option value="${employeeById.empId}">${employeeById.empName}</option>
							</select>
							<br> --%>
            <table>
                 <tr>
                    <td>Select Image:</td>
                    <td><input type="file" name="file" id="browse1" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" onclick="return validate8()" /></td>
                     <font id="browseerror1" style="color: red;"></font>
                </tr>
            </table>
        </form>
							</div>
						</div>   
							<!-- Modal -->
			<div id="custom-modal6" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">ADD EMPLOYEE ROLE</h4>
				<div class="custom-modal-text text-left">
                                     <form:form action="empRole" name="form6" onsubmit="return validate6()" modelAttribute="employeeDetails">
                                      <form:hidden path="empId" value="${employeeById.empId}"/>
                                       <form:hidden path="companyName" value="Role"/>
                                <div class="col-md-12">
                                <div class="col-sm-12">
									<p class="text-muted font-13">
									<label>Department <span style="color:red;">*</span></label> 
							                                        
                                             <input list="suggestionList"  id="answerInput" class="form-control" required="required">
								<datalist id="suggestionList">
								<c:forEach items="${allRoles}" var="role" varStatus="status">
    											<option data-value="${role.roleId}">${role.designation}</option>
    											 </c:forEach>
								</datalist>
                                         
                                         <form:hidden path="biometricId" id="answerInput-hidden" />
						
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
                                 
                                 
                                 
                                 <p>&nbsp;</p>
										   <div class="form-group">
                                               <div class="col-sm-12">
                                                    <div class="input-daterange input-group" id="daterange">
                                                        <form:input  path="status" type="text" class="form-control" id="datepickerautoclose4"  placeholder="dd/mm/yyyy " />
                                                        <span class="input-group-addon bg-primary b-0 text-white">to</span>
                                                        <form:input  path="FHName" type="text" class="form-control" id="datepickerautoclose5"  placeholder="dd/mm/yyyy " />
                                                    </div>
                                                </div>
                                            </div>
										    <div class="col-md-6">
				                           	<p class="text-muted font-13">
													<strong> Employee type <span style="color:red;">*</span></label> </strong> <span class="m-l-15">
													<form:select class="form-control" path="designation" title="Select" id="type">
                                         <form:option value="" label="Select Employee Type" />
											<form:option path="designation" value="Consultant" >Consultant</form:option>
											<form:option path="designation" value="Permanent" >Permanent</form:option>	
											<form:option path="designation" value="Internship" >Internship</form:option>
											<form:option  value="Probation" >Probation</form:option>
											<form:option  value="Contract" >Contract</form:option>
											<form:option path="designation" value="Other" >Other</form:option>	
                                       </form:select> 
                                       </span>
                                       <font id="typeerror" style="color: red;"></font>
												</p>
										   </div>
										    <div class="col-md-6">
				                           	<p class="text-muted font-13">
													<strong> Report To <span style="color:red;">*</span></strong> <span class="m-l-15">
													<form:select class="form-control" path="expId" title="Select" id="report">
                                         <form:option value="" label="Select Report To" />
                                       <c:forEach items="${allEmployees}" var="emp" varStatus="status">
											<form:option path="expId" value="${emp.empId}" >${emp.empName}</form:option>		
                                      </c:forEach>
                                       </form:select> 
													</span>
													 <font id="reporterror" style="color: red;"></font>
												</p>
										   </div>
						</div><!--div class col-md-12  -->
						
						 <div class="col-md-6">
				                           <strong>Salary Slab <span style="color:red;">*</span></strong> 
													<form:select class="form-control" path="empQufnId" title="Select">
                                         <form:option value="" label="Select Salary Slab" />
                                       <c:forEach items="${allSalSlab}" var="sal" varStatus="status">
											<form:option path="empQufnId" value="${sal.slabId}" >${sal.slabName}</form:option>		
                                      </c:forEach>
                                       </form:select> 
										   </div>
						<p>&nbsp;</p>
					<div align="center">
						<button type="submit"  onclick="return validate6()"
							class="btn btn-info waves-effect waves-light">Submit</button>
					</div>
				</form:form>
			</div>
	</div>
       <!--end model  -->  
       <!--  -->
               <div id="custom-modal9" class="modal-demo">
			    <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button>
			    <h4 class="custom-modal-title">Employee Block Confirmation</h4>
			    <div class="custom-modal-text text-left">
			     <form action="block" name="form9" onsubmit="return validate9()">
			      <input type="hidden" name="empId" value="${employeeById.empId}"/>
			      <div class="col-lg-12">
			      <h5>Employee Releaving status</h5>
			      <!-- <input type="text" name="" id="" class="form-control" placeholder="employee status"> --> 
			     <select name="status" class="form-control">
			     <option>Select Employee Status</option>
			      <option>Releaved</option>
			       <option>Joined</option>
			        <option>Terminated</option>
			     </select>
			      </div>
			      
			      <div class="col-lg-12">
			       <h5>Employee Releaving Date<span style="color:red">*</span></h5>
			       <div class="input-group">
			      <input type="text" name="releaveDate" id="datepickerautoclose6" class="form-control" placeholder="DD/MM/YYYY"> 
			      <span class="input-group-addon bg-primary b-0 text-white"><i
										class="fa fa-calendar"></i></span>
			      </div>
				<font id="datepickerautoclose6error" style="color:red"></font>
			      </div>
			      <div class="col-md-12">
                           <h5>Remarks</h5>
                           <textarea rows="" cols="2" name="remarks" class="form-control"></textarea> 
                           </div>
			      
			      <p>&nbsp;</p>
			      
			      <div align="center">
						<button type="submit" onclick="return validate9()" class="btn btn-info waves-effect waves-light">Submit</button>
					</div>
			    </form>
			     </div>
			    </div>
			</div>
         <!--  -->
       <!-- Modal -->
			<div id="custom-modal31" class="modal-demo">
				<button type="button" class="close" onclick="Custombox.close();">
					<span>&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="custom-modal-title">EMPLOYEE ACCCOUNTS DETAILS</h4>
                                     <form:form action="saveQuestionnaries" modelAttribute="employeeDetails">
                                      <form:hidden path="empId" value="${employeeById.empId}"/>
                                       <form:hidden path="attrType" value="Employee A/c Info"/>
				<div class="custom-modal-text text-left">
                                <div class="col-md-12">
                                <table  class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                            <th>Sl No</th>
                                          	 	<th style="background-color: lightblue;">Details</th>
                                          	 	<th style="background-color: lightblue;">Fill Data</th>
                                            </tr>
                                        </thead>
                           <tbody>
                          <c:forEach items="${questionBank}" var="qbank">
                        <tr>
                        	<td><form:hidden path="qnId" value="${qbank.qnId}"/><c:out value='${qbank.qnId}'/></td>
                        	<td><c:out value="${qbank.question}" /></td>
                        	<td><c:if test="${qbank.qnType == 'Text'}"><input type="text" name="answer" ></c:if>
                        	<c:if test="${qbank.qnType == 'TextArea'}"><textarea  name="answer" rows='3' cols="50"></textarea></c:if>
                        	<c:if test="${qbank.qnType == 'Option'}">
                        	<c:set var="option" value="${qbank.optionDetails}"/>
							<c:set var="splitvalues" value="${fn:split(option, ',')}" />
                       		<select  array="splitvalues" name="answer">
        					<c:forEach var="numbers" items="${splitvalues}">
           					<option value="${numbers}"><c:out value="${numbers}"/></option>
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
			</div>
				</form:form>
	</div>
       <!--end model  -->                 
                <!-- Footer -->
                 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
        </div>



	<script>
		var resizefunc = [];
	</script>
	
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/wow.min.js"></script>
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


	<script
		src="resources/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>

	<script src="resources/pages/jquery.bs-table.js"></script>


	<!-- Modal-Effect -->
	<script src="resources/HR/plugins/custombox/dist/custombox.min.js"></script>
	<script src="resources/HR/plugins/custombox/dist/legacy.min.js"></script>

	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/jquery.app.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#datatable').dataTable();
			$('#datatable-keytable').DataTable({
				keys : true
			});
			$('#datatable-responsive').DataTable();
			$('#datatable-scroller').DataTable({
				ajax : ".resources/plugins/welezo/json/scroller-demo.json",
				deferRender : true,
				scrollY : 380,
				scrollCollapse : true,
				scroller : true
			});
			var table = $('#datatable-fixed-header').DataTable({
				fixedHeader : true
			});
		});
		TableManageButtons.init();
	</script>

	<script>
		jQuery(document)
				.ready(
						function() {

							/* advance multiselect start */
							$('#my_multi_select3')
									.multiSelect(
											{
												selectableHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
												selectionHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
												afterInit : function(ms) {
													var that = this, $selectableSearch = that.$selectableUl
															.prev(), $selectionSearch = that.$selectionUl
															.prev(), selectableSearchString = '#'
															+ that.$container
																	.attr('id')
															+ ' .ms-elem-selectable:not(.ms-selected)', selectionSearchString = '#'
															+ that.$container
																	.attr('id')
															+ ' .ms-elem-selection.ms-selected';

													that.qs1 = $selectableSearch
															.quicksearch(
																	selectableSearchString)
															.on(
																	'keydown',
																	function(e) {
																		if (e.which === 40) {
																			that.$selectableUl
																					.focus();
																			return false;
																		}
																	});

													that.qs2 = $selectionSearch
															.quicksearch(
																	selectionSearchString)
															.on(
																	'keydown',
																	function(e) {
																		if (e.which == 40) {
																			that.$selectionUl
																					.focus();
																			return false;
																		}
																	});
												},
												afterSelect : function() {
													this.qs1.cache();
													this.qs2.cache();
												},
												afterDeselect : function() {
													this.qs1.cache();
													this.qs2.cache();
												}
											});

							/*  Select2 */
							$(".select2").select2();

							$(".select2-limiting").select2({
								maximumSelectionLength : 2
							});

						});

		/* Bootstrap-TouchSpin */
		$(".vertical-spin").TouchSpin({
			verticalbuttons : true,
			buttondown_class : "btn btn-primary",
			buttonup_class : "btn btn-primary",
			verticalupclass : 'ti-plus',
			verticaldownclass : 'ti-minus'
		});
		var vspinTrue = $(".vertical-spin").TouchSpin({
			verticalbuttons : true
		});
		if (vspinTrue) {
			$('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
		}

		// Time Picker

		/*       Date Picker */
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			todayHighlight : true
		});
		
		/*       Date Picker */
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose1').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			todayHighlight : true
		});
		
		jQuery("#datepickerautoclose1").datepicker();
		jQuery('.fa-calendar-o').click(function() {
			jQuery("#datepickerautoclose1").focus();
      	  });
		
		jQuery("#datepickerautoclose").datepicker();
		jQuery('.fa-calendar').click(function() {
			jQuery("#datepickerautoclose").focus();
      	  });


		/*       Date Picker */
		jQuery('#datepicker').datepicker();
		jQuery('#datepickerautoclose2').datepicker({
			format : 'dd/mm/yyyy',
			autoclose : true,
			todayHighlight : true
		});
		
		jQuery("#datepickerautoclose2").datepicker();
		jQuery('.fa-calendar').click(function() {
			jQuery("#datepickerautoclose2").focus();
      	  });

		jQuery('#datepicker').datepicker();
        jQuery('#datepickerautoclose4').datepicker({
               format : 'dd/mm/yyyy',
               autoclose : true,
               todayHighlight : true
        });

        jQuery('#datepicker').datepicker();
        jQuery('#datepickerautoclose5').datepicker({
               format : 'dd/mm/yyyy',
               autoclose : true,
               todayHighlight : true
        });

        jQuery('#datepicker').datepicker();
        jQuery('#datepickerautoclose6').datepicker({
               format : 'dd/mm/yyyy',
               autoclose : true,
               todayHighlight : true
        });
        
        jQuery("#datepickerautoclose6").datepicker();
		jQuery('.fa-calendar').click(function() {
			jQuery("#datepickerautoclose6").focus();
      	  });
        
	
		jQuery('#datepicker-inline').datepicker();
		jQuery('#datepicker-multiple-date').datepicker({
			format : "dd/mm/yyyy",
			clearBtn : true,
			multidate : true,
			multidateSeparator : ","
		});
		jQuery('#date-range').datepicker({
			toggleActive : true
		});
		
	</script>

    </body>
</html>
