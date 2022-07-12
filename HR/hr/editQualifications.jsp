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

<script type="text/javascript">
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
          error.innerHTML="Enter  qualification ";
          return false;
      }

      if(custname.length<2){
          error.innerHTML="Qualification name should be minimum 2 character";
          return false;
      } 
      if(custname.length>50){
          error.innerHTML="Qualification name should be in between 2 to 50 character";
          return false;
      }

      if(/^[a-zA-Z,.() ,]*$/.test(custname) == false){
		   	error.innerHTML="Please enter valid qualification name ";
		   	return false;
		   }
      


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

		      var error=document.getElementById("verifiedbyerror");
			  	var verifiedby=form["verifiedby"].value;

			      error.innerHTML="";
			   
			      if( verifiedby==null || verifiedby==""){
			          error.innerHTML="Enter verified by name  ";
			          return false;
			      }

			      if(verifiedby.length<3){
			          error.innerHTML="Name should be minimum 3 character";
			          return false;
			      } 
			      if(verifiedby.length>200){
			          error.innerHTML="Name should be in between  3 to 200 character";
			          return false;
			      }/*end */

			    

}

</script>


</head>
<body style="mergin: 0; background-color: gray">
	<!-- Start menu -->
	<%@ include file="/WEB-INF/jsp/HR/menu.jsp"%>
	<!-- Menu End -->


	<div class="wrapper">
		<div class="container">

			<!-- Page-Title -->



			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<div class="row">
                        <h1></h1>
						<h4 class="custom-modal-title" style="text-align: center">EDIT QUALIFICATION</h4>
						<div class="card-box">
							<div class="custom-modal-text text-left">

								<div class="custom-modal-text text-left">
								<form:form action="postEditQulfn" name="form" onclick="return validate()" modelAttribute="qualificationDTO">
								<form:hidden path="empQufnId" value="${qualificationById.empQufnId}" />
								<form:hidden path="qualificationId" value="${qualificationById.qualificationId}" />
								<form:hidden path="empId" value="${qualificationById.empId}" />
								<form:hidden path="status" value="Employee"/>
								<div class="form-group">
										<label for="name">Qualification  <span style="color:red;">*</span></label> 
										<form:input type="text" path="qualification"  value="${qualificationById.qualification}" class="form-control" id="custname" />
									     <font id="custnameerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="name">Specialization</label> 
										<form:input type="text" path="specialization" value="${qualificationById.specialization}" class="form-control"  />
									</div>
									<div class="form-group">
										<label for="name">Institute  <span style="color:red;">*</span></label> 
										<form:input type="text" path="institute" value="${qualificationById.institute}"  onkeypress="return onlyAlphabets(event,this);" class="form-control" id="institute" />
									     <font id="instituteerror" style="color: red;"></font>
									    <span id="error" style="color: red; display: none">* Enter
							                                    digits (0 - 9)</span>
									</div>
									<div class="form-group">
										<label for="position">Board / University / Institute  </label> 
										<form:input type="text" path="university" value="${qualificationById.university}"  class="form-control" onkeypress="return onlyAlphabets(event,this);"  />
									     <font id="boarderror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="company">Year  <span style="color:red;">*</span></label> 
										<form:input type="text"	path="qualifiedYear" value="${qualificationById.qualifiedYear}"  class="form-control" id="year"  />
									    <font id="yearerror" style="color: red;"></font>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Percentage  </label>
										<form:input type="text" path="percentage" value="${qualificationById.percentage}"  class="form-control"  />
									  <font id="percentageerror" style="color: red;"></font>
									</div>
									
									<%-- <div class="form-group">
										<label for="exampleInputEmail1">Verified By</label>
										<form:input type="text" path="verified" class="form-control"  />
									  <font id="verifiedbyerror" style="color: red;"></font>
									</div> --%>
									
									<div align="center">
										<button type="submit" onclick="return validate()"
											class="btn btn-info waves-effect waves-light">Submit</button>
									</div>
								</form:form>
							</div>
							</div>
							<!-- End row -->
						</div>
						<!-- end Col-9 -->


					</div>
					<!-- End row -->
				</div>
			</div>
			<!-- container -->
		</div>
		<!-- content -->



		<!-- Footer -->
		 <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
		<!-- End Footer -->

	</div>
	<!-- end container -->


	<script>
				var resizefunc = [];
			</script>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
	<script src="resources/js/jquery.min.js"></script>



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
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: ".resources/plugins/welezo/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

	<script>
            jQuery(document).ready(function() {

                /* advance multiselect start */
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

               /*  Select2 */
                $(".select2").select2();

                $(".select2-limiting").select2({
				  maximumSelectionLength: 2
				});

            });

            /* Bootstrap-TouchSpin */
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

            // Time Picker
           
      /*       Date Picker */
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

          
        </script>
</body>
</html>