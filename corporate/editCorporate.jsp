<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
<!-- App Favicon -->
<link rel="shortcut icon" href="resources/images/favicon.ico">

<!-- App title -->
<title>WELEZO</title>

<!-- Plugins css-->
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
<!-- 
<link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
<link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/modernizr.min.js"></script>

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

<script>
/**
 * 
 */

function validate(from) {

	
	/* start */
	var error = document.getElementById("errorcname");
	var cname = form["cname"].value;

	error.innerHTML = "";

	if (cname == null || cname == "") {
		error.innerHTML = "Enter contact person name";
		return false;
	}

	if (cname.length < 3) {
		error.innerHTML = "Name should be minimum 3 character";
		return false;
	}
	if (cname.length > 300) {
		error.innerHTML = "Name should be in between 3 to 300 character";
		return false;
	}/* end */

	
	
	var error = document.getElementById("errorcnumber");
	var cnumber = form["cnumber"].value;

	error.innerHTML = "";

	if (cnumber == null || cnumber == "") {
		error.innerHTML = "Please enter mobile number";
		return false;
	}
	
	if (!isNaN("cnumber")) {
		error.innerHTML = "Mobile number cannot be alphabet!!";
		return false;
	}

	if (cnumber.length < 10) {
		error.innerHTML = "Invalid mobile number";
		return false;
	}
	if (cnumber.length > 11) {
		error.innerHTML = "Please enter valid mobile number";
		return false;
	}
	
	

	var error = document.getElementById("errordatepickerautoclose");
	var datepickerautoclose = form["datepickerautoclose"].value;

	error.innerHTML = "";

	if (datepickerautoclose == null || datepickerautoclose == "") {
		error.innerHTML = "Select date of appointment";
		return false;
	}

	var error = document.getElementById("errortime");
	var time = form["time"].value;

	error.innerHTML = "";

	if (time == null || time == "") {
		error.innerHTML = "Select time of appointment";
		return false;
	}
	
	var error = document.getElementById("errorexe");
	var exe = form["exe"].value;

	error.innerHTML = "";

	if (exe == null || exe == "") {
		error.innerHTML = "Select executive name ";
		return false;
	}
	
	var error = document.getElementById("errorstatus");
	var chkYes = form["chkYes"].value;

	error.innerHTML = "";

	if (chkYes == null || chkYes == "") {
		error.innerHTML = "Select meeting status ";
		return false;
	}
	
	var error = document.getElementById("errorstatus");
	var status = form["status"].value;

	error.innerHTML = "";

	if (status == null || status == "") {
		error.innerHTML = "Select appointment status ";
		return false;
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
						<li>
                             <a href="corporateDashBoard"> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
						<li class="hidden-xs hidden-sm">
						<font face="verdana" class="page-title">EDIT CORPORATE APPOINTMENT</font>
							<!-- <h4 class="page-title">Edit Presales</h4> -->
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
			</div>
			<!-- end container -->
		</div>
		<!-- end navbar -->
	<!-- Top Bar End -->

	<!-- ========== Left Sidebar Start ========== -->
	 <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
	<!-- Left Sidebar End -->


	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->

		<%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

	<!-- Modal -->
	<!-- <div id="custom-modal" class="modal-demo"> -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="container"></div>
			<!-- end row -->

			<!-- popup window -->
<br>
			<div class="row">
				<div class="col-lg-12">

					<!-- Modal Add Category -->
					<!--  <div class="modal fade none-border" id="add-category"> -->
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
							<!-- 	<h4 class="custom-modal-title"> EDIT APPOINTMENT FORM</h4> -->
								<div class="custom-modal-text text-left">
									<!-- =============	form:form start from here ==============    -->
									
									<form:form action="posteditcorptAppointment" onsubmit="return validate()" name="form" modelAttribute="corporateDTO" >
										<form:hidden path="createdBy" value="<%=id %>" class="form-control"  />
									<form:hidden path="appointmentId" value="${corptAppointmentById.appointmentId}"/>
									<form:hidden path="contactId" value="${corptAppointmentById.contactId}"/>
									<form:hidden path="corporateId" value="${corptAppointmentById.corporateId}"/>
										
										<div class="col-md-12">
										<div class="col-md-6">
										<div class="form-group">
											<form:label path="" for="name">Corporate Name</form:label>
											<form:input type="text"	
												path="" value="${corptAppointmentById.corporateName}" class="form-control" id="name" placeholder="Enter corporate name"
												readonly="true" />
										</div>
										</div>
										
										<div class="col-md-6">
										<div class="form-group">
											<label  for="name"><span style="color: red">*</span> Contact Name</label>
											<form:input type="text" path="" id="cname" class="form-control" value="${corptAppointmentById.name}"
												 placeholder="contact name"  />
										</div>
										<font style="color:red" id="errorcname"></font>
										</div>
										</div>
										
											<div class="col-md-12">
											<div class="col-md-4">
										<div class="form-group">
											<label  for="name">Designation</label>
											<form:input type="text" path="" class="form-control" value="${corptAppointmentById.designation}"
												 placeholder="enter branch name" />
										</div>
										</div>
										
											<div class="col-md-4">
												<div class="form-group">
													<label  for="priority">Email</label>
													<form:input type="text"
														 path="email" class="form-control" value="${corptAppointmentById.email}" placeholder="email@mail.com" />
												</div>
											</div>
											
											<div class="col-md-4">
												<div class="form-group">
													<label  for="priority"><span style="color: red">*</span> Mobile Number</label>
													<form:input type="text"  onkeypress="return IsNumeric(event);" value="${corptAppointmentById.primaryMob}"
														ondrop="return false;" onpaste="return false;"
														path="primaryMob" 	class="form-control" id="cnumber" placeholder=""
														 />
												</div>
												<font style="color:red" id="errorcnumber"></font>
											</div>
											
											</div>
											
											
										<div class="col-md-12">
											
											<div class="col-md-4">
												<div class="form-group">
													<label for="priority"><span style="color: red">*</span> Date of Appointment</label>
													<div class="input-group">
													<form:input type="text" path="appointmentDate" class="form-control" value="${corptAppointmentById.appointmentDate}"
														placeholder="dd/mm/yyyy" id="datepickerautoclose"
														required="required" />
														<span class="input-group-addon bg-primary b-0 text-white"><i
										class="ti-calendar"></i></span>
														</div>
														<font style="color:red" id="errordatepickerautoclose"></font>
												</div>
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<label for="priority"><span style="color: red">*</span> Time of Appointment</label>
								<form:select path="timeAppointment" title="----TOA----"	class="form-control" id="time" >
									<form:option value="${corptAppointmentById.timeAppointment}">${corptAppointmentById.timeAppointment}</form:option>
									<form:option value="9:30 AM">  09:30 AM </form:option>
									<form:option value="10:30 AM"> 10:30 AM </form:option>
									<form:option value="11:30 AM"> 11:30 AM </form:option>
									<form:option value="12:30 PM"> 12:30 PM </form:option>
									<form:option value="1:30 PM "> 01:30 PM </form:option>
									<form:option value="2:30 PM "> 02:30 PM </form:option>
									<form:option value="3:30 PM "> 03:30 PM </form:option>
									<form:option value="4:30 PM "> 04:30 PM </form:option>
									<form:option value="5:30 PM "> 05:30 PM </form:option>
									<form:option value="6:30 PM "> 06:30 PM </form:option>
								</form:select>
												</div>
												<font style="color:red" id="errortime"></font>
											</div>
											
											<div class="col-md-4">
												<div class="form-group">
									<label for="priority"><span style="color: red">*</span> Executive</label>
										<form:select path="executive" title="----Select Executive----"	class="form-control" id="exe">
											<form:option value="${corptAppointmentById.landline}"  >${corptAppointmentById.executive}</form:option>
											<c:forEach var="employee" varStatus="status" items="${executive}">
										<form:option path="executive" value="${employee.empId}" >${employee.empName}</form:option>
											</c:forEach>
										</form:select>
												</div>
												<font style="color:red" id="errorexe"></font>
											</div>
											</div>
										
										<div class="col-md-12">
											
											<div class="col-md-6">
												<div class="form-group">
									<label for="priority"><span style="color: red">*</span> Meeting Status :  </label>
										<%-- <form:select path="status" title="----Select Executive----"	class="form-control" id="assign">
											<form:option value="${corptAppointmentById.status}"  >${corptAppointmentById.status}</form:option>
											<c:forEach var="constant" varStatus="status" items="${welezoConstant}">
												<c:if test="${constant.constType=='corp_status'}">
										<form:option path="status" value="${constant.CValue}" >${constant.CDisplay}</form:option>
												</c:if>
											</c:forEach>
										</form:select> --%>
										  <input type="radio" name="meetingStatus" value="Met" id="chkYes"  > Met
                                          <input type="radio" name="meetingStatus" value="Not Met" id="chkNo"  > Not Met<br>
												</div>
												<font style="color:red" id="errorstatus"></font>
											</div>
											</div>
											
											<div class="col-md-12">
											<div id="dvPassport" style="display: none">
											<div class="col-md-6">
											<label><span style="color: red">*</span> Appointment Status</label>
												<div class="form-group">
											<form:select path="status" title="----Select Executive----"	class="form-control" id="status">
											<form:option value="${corptAppointmentById.status}"  >${corptAppointmentById.status}</form:option>
											<c:forEach var="constant" varStatus="status" items="${welezoConstant}">
												<c:if test="${constant.constType=='corp_status'}">
										<form:option path="status" value="${constant.CValue}" >${constant.CDisplay}</form:option>
												</c:if>
											</c:forEach>
										</form:select>
											</div>
											<font style="color:red" id="errorstatus"></font>
											</div>
											<div class="col-md-6">
                                                              <label for="priority">Purpose<span style="color:red;">*</span></label>
                                                                <div class="form-group">
                                                     <form:select path="purpose" title="Select Executive"   class="form-control" id="statuss">
                                                    <c:forEach var="purpose" varStatus="status" items="${welezoConstant}">
                                                            <c:if test="${purpose.constType == 'Corporate_interaction_purpose'}">
                                                     <form:option path="purpose" value="${purpose.CValue}" >${purpose.CDisplay}</form:option>
                                                     </c:if>
                                                           </c:forEach>
                                                           
                                                           </form:select>
                                                           </div>
                                                           <font style="color:red" id="errorstatus"></font>
                                                           </div>
											
											</div>
											</div>
										
											
<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label  for="name">Remarks:</label>
										<form:textarea path="remarks" placeholder="${corptAppointmentById.remarks}" class="form-control" />
									</div>
									</div>
									</div>
									<div class="col-md-offset-5">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
						</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->
	</div>
	<!-- END wrapper -->

	<script>
            var resizefunc = [];
        </script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function () {
        $("input[name='meetingStatus']").click(function () {
            if ($("#chkYes").is(":checked")) {
                $("#dvPassport").show();
            }
           
            else{
                 $("#dvPassport").show();
                }

           
            
        });
       
    });
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

	<!-- Datatables-->
	<script src="resources/plugins/welezo/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.bootstrap.js"></script>
	<script src="resources/plugins/welezo/dataTables.buttons.min.js"></script>
	<script src="resources/plugins/welezo/buttons.bootstrap.min.js"></script>
	<script src="resources/plugins/welezo/jszip.min.js"></script>
	<script src="resources/plugins/welezo/pdfmake.min.js"></script>
	<script src="resources/plugins/welezo/vfs_fonts.js"></script>
	<script src="resources/plugins/welezo/buttons.html5.min.js"></script>
	<script src="resources/plugins/welezo/buttons.print.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.fixedHeader.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.keyTable.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.responsive.min.js"></script>
	<script src="resources/plugins/welezo/responsive.bootstrap.min.js"></script>
	<script src="resources/plugins/welezo/dataTables.scroller.min.js"></script>

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

           /*  colorpicker start */

            $('.colorpicker-default').colorpicker({
                format: 'hex'
            });
            $('.colorpicker-rgba').colorpicker();

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

           /*  Date range picker */
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'DD/MM/YYYY h:mm A',
                timePickerIncrement: 30,
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

         /*    Bootstrap-MaxLength */
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




