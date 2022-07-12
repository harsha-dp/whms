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
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
 <!-- App Favicon -->
  <link rel="shortcut icon" href="resources/images/favicon.ico">

<title>WELEZO</title>

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


<script src="resources/HR/js/modernizr.min.js"></script>


<script src="resources/js/modernizr.min.js"></script>
<script>
    $(function(){           
        if (!Modernizr.inputtypes.date) {
            $('input[type=date]').datepicker({
                  dateFormat : 'yy-mm-dd'
                }
             );
        }
    });
</script>

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
	    var error=document.getElementById("custnameerror");
	  	var custname=form["custname"].value;

	      error.innerHTML="";
	   
	      if( custname==null || custname==""){
	          error.innerHTML="Enter interviewer name";
	          return false;
	      }

	      if(custname.length<3){
	          error.innerHTML="Interviewer name should be minimum 3 character";
	          return false;
	      } 
	      if(custname.length>80){
	          error.innerHTML="Interviewer name should be in between 3 to 80 character";
	          return false;
	      }/*end */
	      
	      var error=document.getElementById("producterror");
			var productt=form["productt"].value;

		   error.innerHTML="";

		   if( productt==null || productt==""){
		       error.innerHTML="Please select gender ";
		       return false;
		   }  



	        var error=document.getElementById("contactError");
	    	var contactnumber=form["contactnumber"].value;

	        error.innerHTML="";
	     
	        if( contactnumber==null || contactnumber==""){
	            error.innerHTML="Enter Contact Number";
	            return false;
	        }

	        else if(isNaN(contactnumber)){
	            error.innerHTML="Mobile Number Can Not be alphabate";
	            return false;
	        }

	        if(contactnumber.length<10){
	            error.innerHTML="Contact has to be minmum 10 digits"
	            return false;
	        } 
	        if(contactnumber.length>10){
	            error.innerHTML="Invalid mobile number you entered more than 10 digits"
	            return false;
	        }/*end */


	        
		   var error=document.getElementById("emailerror");
			var email=form["email"].value;

		   error.innerHTML="";

		   if( email==null || email==""){
		       error.innerHTML="Please enter emailId ";
		       return false;
		   } 

		   if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false){
		   	error.innerHTML="Please enter valid email id ";
		   	return false;
		   }
		   

	        var error=document.getElementById("positionError");
	    	var position=form["position"].value;

	        error.innerHTML="";
	     
	        if( position==null || position==""){
	            error.innerHTML="Select Position!";
	            return false;
	        }consultancy


		   var error=document.getElementById("addresserror");
		   var addresss=form["addresss"].value;
		   error.innerHTML="";
		   if(addresss==null||addresss=="")
			   {
                  error.innerHTML="Please enter Interviewer address";
                  return false;
			   }
		   if(addresss.length<3)
            {
                error.innerHTML="Interviewer address should be minimum 3 character";
                return false;
	            }


          if(addresss.length>500)
         {
     error.innerHTML="You entered more then 200 character please enter less then 500 character";
     return false;
     }
          
          
        /*  var error=document.getElementById("consultancyerror");
	    	var consultancy=form["consultancy"].value;

	        error.innerHTML="";
	     
	        if( consultancy==null || consultancy==""){
	            error.innerHTML="Select consultancy or company!";
	            return false;
	        }  */
	        
          var error=document.getElementById("consultancyerror");
			var consultancy=form["consultancy"].value;

		   error.innerHTML="";

		   if( consultancy==null || consultancy==""){
		       error.innerHTML="Select consultancy or company! ";
		       return false;
		   }  

	        
	        var error=document.getElementById("exprienceerror");
	    	var exprience=form["exprience"].value;

	        error.innerHTML="";
	     
	        if( exprience==null || exprience==""){
	            error.innerHTML="Enter Exprience!";
	            return false;
	        }
	        else if(isNaN(exprience)){
	            error.innerHTML="Exprience Can Not be alphabate";
	            return false;
	        }

	        if(exprience.length<1){
	            error.innerHTML="Enter candidate Exprience"
	            return false;
	        } 
	        if(exprience.length>2){
	            error.innerHTML="Enter Valid Candidate Exprience"
	            return false;
	        }/*end */
	        
	        
	        var error=document.getElementById("Qualificationerror");
	    	var Qualification=form["Qualification"].value;

	        error.innerHTML="";
	     
	        if( Qualification==null || Qualification==""){
	            error.innerHTML="Enter Qualification!";
	            return false;
	        }
	        else if(!isNaN(Qualification)){
	            error.innerHTML="Qualification Can Not be Number";
	            return false;
	        }

	        if(Qualification.length<2){
	            error.innerHTML="Enter Minimum  2 character"
	            return false;
	        } 
	        if(Qualification.length>100){
	            error.innerHTML="Enter Maximum 100 character"
	            return false;
	        }/*end */

		     

}

</script>

</head>


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
                        <h6 class="page-title text-center">CANDIDATE'S INFORMATION FORM</h6>
                    </div>
                </div>
                
                <div class="row">
						<!-- Right Sidebar -->
						<div class="col-lg-12 col-md-8">
							<div class="row">
								<!--Custom Toolbar-->
								<!--===================================================-->
										<div class="card-box">
								<div class="row">
									<form:form  action="savepersonal" name="form" onsubmit="return validate()" modelAttribute="empDetails" method="post">
									<form:hidden path="createdBy" value="${USERID}"/>
										          <div class="col-sm-12">
													
													<div class="from-group col-md-6">
														<label>Candidate's Name <span style="color:red;">*</span></label> 
														<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
														<form:input type="text" path="name" id="custname" onkeypress="return onlyAlphabets(event,this);"
														class="form-control" placeholder="Name" />
													</div>
														<font id="custnameerror" style="color: red;"></font>
													</div>
													
													<div class="col-md-3">
														<label>Date Of Birth</label>
														<div class="input-group"> 
														<form:input type="date"	path="dob"	class="form-control" placeholder="DD/MM/YYYY" />
													<span class="input-group-addon bg-default b-0 text-black"><i class="ti-calendar"></i></span>
													</div>
													</div>
													
													<div class="col-md-3">
														<label>Gender <span style="color:red;">*</span></label> 
														<br>
                                                            <form:radiobutton path="gender" value="Male" id="productt"/> Male
															<form:radiobutton path="gender" value="Female" id="productt" /> Female
															<form:radiobutton path="gender" value="Other" id="productt" /> Other
															 <font id="producterror" style="color: red;"></font>
													</div>
													
													</div>
													<p>&nbsp;</p>
													 <div class="col-md-12">	
													<div class="from-group col-md-4">
														<label>Mobile No. <span style="color:red;">*</span></label> 
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-mobile" aria-hidden="true"></i></span>
														<form:input type="text"	path="contactNumber"	 id="contactnumber" class="form-control" placeholder="" />
														<span id="error" style="color: red; display: none">* Enter
							                                    digits (0 - 9)</span>
													</div>
							                                <font id="contactError" style="color: red;"></font>
													</div>
													
													<div class="from-group col-md-4">
														<label>Personal E-Mail <span style="color:red;">*</span></label> 
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
														<form:input type="text" path="email" class="form-control" id="email" placeholder="" />
													</div>
														<font id="emailerror" style="color: red;"></font>
													</div>
													
													<div class="col-md-4">
														<label>Select Interview Position <span style="color:red;">*</span></label> 
															<div class="input-group">
															<span class="input-group-addon"><i class="fa fa-user-secret" aria-hidden="true"></i></span>
														<form:select class="form-control" path="roleId" title="Select" id="position">
                                      	  	 <form:option value="" label="select Candidate Job position." />
                                       		<c:forEach items="${allJobOpenings}" var="jobDetails" varStatus="status">
												<form:option path="roleId" value="${jobDetails.roleId}" >${jobDetails.Department}</form:option>		
                                     				 </c:forEach>
                                      			 </form:select> 
                                      			 </div>
                                      			 <font id="positionError" style="color: red;"></font>
													</div>
													
													</div>
													
													<p>&nbsp;</p>
													<div class="col-md-12">
													<div class="col-md-6">
													
														<label>Address<span style="color:red;">*</span></label>
														<form:textarea  path="address"  id="addresss" placeholder="Enter candidate permanent/ residence address" class="form-control" style="min-width: 100%"></form:textarea>
													    <font id="addresserror" style="color: red;"></font>
													</div>
													
													<div class="col-md-3">
														<label>Consultancy / Company / Others Details <span style="color:red;">*</span></label> 
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-home" aria-hidden="true"></i></span>
														<form:select class="form-control" path="refferedBy" title="Select" id="consultancy">
                                      	  	 <form:option value="" label="select Candidate referred by " /><!-- null -->
                                       		<c:forEach items="${allHireCompany}" var="consultency" varStatus="status">
												<form:option path="refferedBy" value="${consultency.companyId}" >${consultency.companyName}</form:option>		
                                     				 </c:forEach>
                                      			 </form:select> 
                                      			 </div>
                                      			 <font id="consultancyerror" style="color: red;"></font>
													</div>
													
													<div class="col-md-3">
														<label>Candidate Referred Person Details</label>
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
														<form:input  path="refference" class="form-control" placeholder="Enter candidate Referred person"></form:input>
													</div>
													</div>
													</div>
													<p>&nbsp;</p>
													<div class="col-md-12">
													
													<div class="col-md-4">
														<label>Total Years of Experience<span style="color:red;">*</span></label>
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-bar-chart" aria-hidden="true"></i></span>
														<form:input  path="totalExp" class="form-control" placeholder="Enter Total experience" id="exprience"></form:input>
													</div>
													    <font id="exprienceerror" style="color: red;"></font>
													</div>
													
													<div class="col-md-4">
														<label>Highest Qualification<span style="color:red;">*</span></label>
														<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-graduation-cap" aria-hidden="true"></i></span>
														<%-- <form:input  path="higestQualification" class="form-control" placeholder="Enter Qualification" id="Qualification"></form:input> --%>
													<form:select path = "higestQualification" class="form-control" id="Qualification">
<form:option value = "" label="--Select Highest Qualification--"> </form:option>
<form:option value = "Illiterate"> Illiterate </form:option>
<form:option value = "Matriculate">Matriculate </form:option>
<form:option value = "Graduate">Graduate </form:option>
<form:option value = "Postgraduate">Postgraduate </form:option>
<form:option value = "Doctorate">Doctorate </form:option>
</form:select>
													</div>
													    <font id="Qualificationerror" style="color: red;"></font>
													</div>
													
													<div class="col-md-4">
														<label>Remarks</label>
														<form:input  path="remarks" class="form-control" placeholder=""></form:input>
													    <font id="addresserror" style="color: red;"></font>
													</div>
													</div>
													
												<p>&nbsp;</p>
												<div align="center">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Submit</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
										</div>
									</form:form>
										<!-- End row -->
									</div>
									<!-- end Col-9 -->
								</div>
								<!-- End row -->
							</div>
							<!-- container -->
						</div>
						<!-- content -->


                  <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
              

            </div>
            <!-- end container -->
        </div>
        
        
 	<script>
				var resizefunc = [];
			</script>
			<!-- jQuery  -->
	<script src="resources/HR/js/jquery.min.js"></script>
	<script src="resources/HR/js/bootstrap.min.js"></script>
	<script src="resources/HR/js/detect.js"></script>
	<script src="resources/HR/js/fastclick.js"></script>

	<script src="resources/HR/js/jquery.slimscroll.js"></script>
	<script src="resources/HR/js/jquery.blockUI.js"></script>
	<script src="resources/HR/js/waves.js"></script>
	<script src="resources/HR/js/wow.min.js"></script>
	<script src="resources/HR/js/jquery.nicescroll.js"></script>
	<script src="resources/HR/js/jquery.scrollTo.min.js"></script>

      <!-- Datatables-->
        <script src="resources/HR/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/HR/plugins/datatables/jszip.min.js"></script>
        <script src="resources/HR/plugins/datatables/pdfmake.min.js"></script>
        <script src="resources/HR/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/HR/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/HR/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/HR/plugins/datatables/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="resources/HR/pages/datatables.init.js"></script>

       
	<script src="resources/HR/plugins/jquery-knob/jquery.knob.js"></script>

	<!--Morris Chart-->
	<script src="resources/HR/plugins/morris/morris.min.js"></script>
	<script src="resources/HR/plugins/raphael/raphael-min.js"></script>

	<!-- Dashboard init -->
	<script src="resources/HR/pages/jquery.dashboard.js"></script>

	<!-- App js -->
	<script src="resources/HR/js/jquery.core.js"></script>
	<script src="resources/HR/js/jquery.app.js"></script>
	 <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: "resources/HR/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
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
                minuteStep : 15
            });

            //colorpicker start

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

            // Date Picker
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose').datepicker({
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
            	format: "dd/mm/yyyy",
            	autoclose : true,
            	toggleActive:true,
            	todayHighlight: true,
            });
            
            jQuery("#target").datepicker();
    		jQuery('.fa-calendar-o').click(function() {
    			jQuery("#target").focus();
          	  });
    		
    		jQuery("#daterange").datepicker();
    		jQuery('.fa-calendar').click(function() {
    			jQuery("#daterange").focus();
          	  });


            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'MM/DD/YYYY h:mm A',
                timePickerIncrement: 30,
                timePicker12Hour: true,
                timePickerSeconds: false,
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-limit-datepicker').daterangepicker({
                format: 'MM/DD/YYYY',
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
                format: 'MM/DD/YYYY',
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