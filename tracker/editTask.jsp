<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A fully CRM, CMS, etc.">
		<meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
		<link rel="shortcut icon" href="assets/images/favicon_1.ico">

		<title>WELEZO</title>
        
        <!-- Plugins css-->
        <link href="resources/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/plugins/switchery/css/switchery.min.css" rel="stylesheet" />
        <link href="resources/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" />
        <link href="resources/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
          
        <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
        
        
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/modernizr.min.js"></script>
       
<!--edit task  validation  -->
<script src="resources/validation/tracker/editTask.js"></script>
<!--  -->
        
    </head>
    <body class="fixed-left">

		<!-- Begin page -->
			<div id="wrapper">
            <div class="topbar">
				<div class="col-md-10">
                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="welezouser_dashboard"><img class="img-responsive" src="resources\images\newlogo.png" width="180px" height="50px" /></a>
                </div>
                </div>
                <div class="col-md-2">
               <div><h4><i class="fa fa-user"></i> ${userById.userName}</h4></div>
               </div>
</div>
			
			<!-- ============================================================== -->
			<!-- Start right Content here -->
			<!-- ============================================================== -->
			<div class="content-page">
				<!-- Start content -->
				<div class="content">
					<div class="container">
                                
						<!-- Page-Title -->
						<div class="row">
							<div class="col-sm-12">
							
								<ol class="breadcrumb">
								<li><a href="welezouser_dashboard">Home</a></li>
								  <li><a href="viewTaskById?userId=<c:out value="${userById.userId}" />">${userById.userName}</a></li>
									 <li><a href="viewDetails3?userId=<c:out value="${userById.userId}" />">View Task</a></li>
									 <li><a href="AddTask?userId=<c:out value="${userById.userId}" />">Add Task</a></li>
									<li class="active">
										Edit Task
									</li>
								</ol>
							</div>
						</div>
						<form:form action="saveEditTask" name="form" onsubmit="return validate()" modelAttribute="task">
						<%--  <jsp:include file="/WEB-INF/jsp/sildermenu.jsp" /> --%>
						<form:hidden path="taskId" value="${taskById.taskId}" />
						<form:hidden path="userId" value="${userById.userId}" class="form-control"  />
						
						<form:hidden path="taskDescription" value="${taskById.taskDescription}"/>
					<%-- 	<form:hidden path="createdOn" value="${taskById.createdOn}" /> --%>
						<!-- Bootstrap-select -->
						<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>EDIT TASK</b></h4>
									<div class="row">
										<div class="col-md-4">
											<div class="p-20">
											<h5><b>Project Name :</b></h5>
												<form:select path="projectId"  class="form-control show-tick" data-style="btn-white" >
												<form:option value="${taskById.projectId}">${taskById.projectName}</form:option>
												
											</form:select>
											
										    <h5><b>Author :</b></h5>
											<form:select path="author"  class="form-control  show-tick" data-style="btn-white" >
											<form:option value="${taskById.author}">${taskById.Authors}</form:option>
											</form:select>
											
									        <h5><b>Assigned To :</b></h5>
											<form:select path="assignedTo"  class="form-control  show-tick" data-style="btn-white" >
											<form:option value="${taskById.assignedTo}">${taskById.Assignee}</form:option>
													<form:options items="${user}" itemValue="userId" itemLabel="userName"  />
										    </form:select>
												
											<h5><b>Task Type</b></h5>
											<form:select path="taskType"  class="form-control  show-tick" data-style="btn-white" >
											<form:option value="${taskById.taskType}">${taskById.taskType}</form:option>
											</form:select>

										    <h5><b>Task Activity</b></h5>
											<form:select path="taskActivity"  class="form-control  show-tick" data-style="btn-white" >
											<form:option value="${taskById.taskActivity}">${taskById.taskActivity}</form:option>
											</form:select>
												
											<h5><b>Task Priority</b></h5>
											<form:select path="priority"  class="form-control  show-tick" data-style="btn-white" >
											<form:option value="${taskById.priority}">${taskById.priority}</form:option>
													<%-- <c:forEach var="constant" varStatus="status" items="${constant}">
												<c:if test="${constant.constType=='task_priority'}">
													<form:option path="priority" value="${constant.CValue}" >${constant.CDisplay}</form:option>
												</c:if>
											</c:forEach> --%>
												</form:select>
												<h5><b>Module</b></h5>
											<form:input path="module" value="${taskById.module}" class="form-control"  data-style="btn-white" placeholder="Module"/>
											

										</div>
										</div>
										<div class="col-md-8">
											
											  
											    <div class="p-20">
												<h5><b>Task Title</b></h5>
												<form:input type="text" path="taskTitle" value="${taskById.taskTitle}" class="form-control" maxlength="250"  id="alloptions" />
												
												<div class="m-t-20">
													<h5><b>Task Description</b></h5>
													<form:textarea id="textarea" path=""  class="form-control" maxlength="400" rows="2" placeholder="${taskById.taskDescription}" readonly="true" />
												</div>
												
												<div class="row">
												<div class="col-md-4">
												<h5><b>Task Status</b></h5>
												<form:select path="taskStatus" id="taskstatuss" class="form-control  show-tick" data-style="btn-white" >
												<form:option value="${taskById.taskStatus}" >${taskById.taskStatus}</form:option>
											<c:forEach var="constant" varStatus="status" items="${allWorkFlow}">
												<c:if test="${constant.WType=='task_status'}">
												<c:if test="${constant.WFrom== taskById.taskStatus}">
													<form:option path="taskStatus" value="${constant.WTo}" >${constant.WTo}</form:option>
												</c:if></c:if>
											</c:forEach>
											</form:select>
											<font id="taskstatuserror" style="color:red"></font>
											</div>
											
											<div class="col-md-4">
												<h5><b>Time Spent <span style="color:red">*</span></b></h5>
												<form:select path="timeSpent" id="timespented"  class="form-control"  >
												<form:option value="" label="select time spent" />
												<form:option value="0" >0</form:option>
												<form:option value="1" >1</form:option>
												<form:option value="2" >2</form:option>
												<form:option value="3" >3</form:option>
												<form:option value="4" >4</form:option>
												<form:option value="5" >5</form:option>
												<form:option value="6" >6</form:option>
												<form:option value="7" >7</form:option>
												<form:option value="8" >8</form:option>
												<form:option value="9" >9</form:option>
												<form:option value="10" >10</form:option>
												<form:option value="11" >11</form:option>
												<form:option value="12" >12</form:option>
												<form:option value="13" >13</form:option>
												<form:option value="14" >14</form:option>
												<form:option value="15" >15</form:option>
												 </form:select>
												 <font id="timespentederror" style="color:red"></font>
												</div>
												
												<div class="col-md-4">
												<h5><b>Percentage Completed <span style="color:red">*</span></b></h5>
													<%-- <form:input type="text" path="percentComplete"  class="form-control"  /> --%>
												<form:select path="percentComplete" id="percentage"  class="form-control  show-tick"  >
												<form:option value="" label="select" />
												<form:option value="10" >10%</form:option>
												<form:option value="20" >20%</form:option>
												<form:option value="30" >30%</form:option>
												<form:option value="40" >40%</form:option>
												<form:option value="50" >50%</form:option>
												<form:option value="60" >60%</form:option>
												<form:option value="70" >70%</form:option>
												<form:option value="80" >80%</form:option>
												<form:option value="90" >90%</form:option>
												<form:option value="100" >100%</form:option>
												
												</form:select>
												<font id="percentageerror" style="color:red"></font>
												</div>
												
												</div>
												
												<div class="m-t-20">
													<h5><b>User Notes <span style="color:red">*</span></b></h5>
													<form:textarea id="user" path="userNotes" class="form-control" maxlength="400" rows="1" placeholder="Enter user Remarks. here"></form:textarea>
												    <font id="usernoteserror" style="color:red"></font>
												</div>
												
											<div class="row">
											<div class="col-md-3">
												
												<div class="m-t-20">
													<h5><b>Date Spent <span style="color:red">*</span></b></h5>
													<form:input type="text" path="dateSpentOn"  id="datepickerautoclose"  class="form-control"/>
									                <font id="daterangeerror" style="color:red"></font>
												</div>
												</div>
												
												<div class="col-md-3">
												<div class="m-t-20">
													<h5><b>Expected Date <span style="color:red">*</span></b></h5>
													<form:input type="text" path="dueDate" id="datepickerautoclose1" class="form-control"  />
													<font id="daterange1error" style="color:red"></font>
												</div>
												</div>
												
												<div class="col-md-3">
												<div class="m-t-20">
												<h5><b>Estimated Time</b></h5>
											<form:input path="estimatedTime" value="${taskById.estimatedTime}" class="form-control"   readonly="true"/>
											
								   </div>
								   </div>
								   <div class="col-md-3">
								   <div class="m-t-20">
											<h5><b>Released Version</b></h5>
											<form:select path="releaseId"  class="form-control" data-style="btn-white" >
											<form:option value="${releaseById.releaseId}" label="${taskById.releaseName}" />
													<%-- <c:forEach var="release" varStatus="status" items="${release}">
													<form:option path="releaseId" value="${release.releaseId}" >${release.releaseName}</form:option>
										     </c:forEach> --%>
											</form:select>
												</div>
												</div>
											</div>
										</div>
										<br/>
										                                                                 <div class="col-md-offset-4">
                                                                        <button type="submit" onclick="return validate()"
                                                                              class="btn btn-primary waves-effect waves-light"
                                                                              value="submit">Submit</button> &nbsp;&nbsp;&nbsp;
                                                                        <button type="reset"
                                                                              class="btn btn-danger waves-effect waves-light m-l-  10">Clear</button>
                                                                  </div> 
										
									</div>		
										</div>
									</div>
								</div>
						</div>
                      </form:form>         
            		</div> <!-- container -->
                </div> <!-- content -->

                 <%@ include file="/WEB-INF/jsp/Admin/tracker/footer.jsp" %>

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

        <script src="resources/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>
        <script src="resources/plugins/switchery/js/switchery.min.js"></script>
        <script type="text/javascript" src="resources/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/plugins/select2/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

   <!-- Plugins Js -->
        <script src="resources/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/plugins/moment/moment.js"></script>
     	<script src="resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
     	<script src="resources/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>


        <script type="text/javascript" src="resources/plugins/autocomplete/jquery.mockjax.js"></script>
        <script type="text/javascript" src="resources/plugins/autocomplete/jquery.autocomplete.min.js"></script>
        <script type="text/javascript" src="resources/plugins/autocomplete/countries.js"></script>
        <script type="text/javascript" src="resources/pages/autocomplete.js"></script>

        <script type="text/javascript" src="resources/pages/jquery.form-advanced.init.js"></script>

        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
	
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
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose1').datepicker({
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