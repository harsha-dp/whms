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
        <!-- App title -->
        <title>WElEZO</title>

        <!-- DataTables -->
        <link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Modal-Effect -->
        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>
        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet">

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
            <!--Date picker start -->
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
	<!-- <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/>	 -->	
	 <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
<script>
  $(function() {
      $('#myVariable').datepicker({dateFormat: 'dd/mm/yy'});
});
</script>
			
			<!--Date picker End  -->

        <script src="resources/js/modernizr.min.js"></script>
        
             
<!--  // interger validation script -->
<!--add file validation  -->
<script src="resources/validation/payments/reCollectPayment.js"></script>
<!--  -->        

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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" aria-hidden="true"></i></a>
                            </li>
                            <li class="hidden-xs hidden-sm"	>
                             <font face="verdana" class="page-title">SUBMIT PAYMENT(RE-COLLECTED) </font>
                               <!--  <h4 class="page-title">Submit Payment</h4> -->
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
              
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

            </div>
            <!-- Modal -->
			<!-- <div id="custom-modal" class="modal-demo"> -->
			<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container"></div>
				<!-- end row -->

				<!-- popup window -->

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">

						<!-- Modal Add Category -->
						<!--  <div class="modal fade none-border" id="add-category"> -->
						<div class="modal-dialog  modal-lg">
							<div class="modal-content">
								<div class="modal-header">
			    <!-- <button type="button" class="close" onclick="Custombox.close();">
			        <span>&times;</span><span class="sr-only">Close</span>
			    </button> -->
			   <!--  <h4 class="custom-modal-title">Re-Submit Payment</h4> -->
			    <div class="custom-modal-text text-left">
			    
	<!-- =============	form:form start from here ==============    -->	    
			        <form:form action="resubmitpayments" name="form" onsubmit="return validate()" modelAttribute="collectionDTO">
			        
			        <form:hidden path="transactionId" value="${txById.transactionId}"/>
			         <form:hidden path="collectionId" value="${paymentById.paymentId}"/>
			        <form:hidden path="createdBy"  value="<%=id%>" class="form-control" id="inputEmail3"  />
			        
			      <div class="col-sm-12">	
									<div class="form-group col-md-4">
									<div class="p-20">	  
			        
											<form:label path="" for="name">Customer Name</form:label>
											<form:input type="text"
												onkeypress="return onlyAlphabets(event,this);"
												path="" value="${presalesById.customerName}"
												class="form-control" id="name" placeholder=""	readonly="true" />
			        
                           <form:label path="productnumber" for="Sdate">Product Bought</form:label> <br>
                        <form:select path="productnumber" title="Product Name" class="form-control" id="assign" readonly="true">
						<form:option value="${getproductById.productId}" label="${getproductById.productName}"  > </form:option>
					   </form:select>
					
                           <form:label path="price" for="Sdate">Product Price</form:label> <br>
                        <form:select path="price" title="Product Name" class="form-control" id="assign"  readonly="true">
						<form:option value="${getproductById.productPrice}"> ${getproductById.productPrice} </form:option>
					  </form:select>
					
	                                    
                           <form:label path="applicationNo" for="Sdate">Application No:</form:label> <br>
                           <form:input path="applicationNo" value="${txById.applicationNo}"  class="form-control" id="inputEmail3" readonly="true"/>
					</div>
					</div>
					 
					<div class="form-group col-md-8">
					<div class="p-20">	  
                           <form:label path="paymentMode" for="Sdate">Payment Mode  <span style="color:red;">*</span></form:label> <br>
                        <form:select path="paymentMode" title="---Payment Mode----" class="form-control" id="payment" >
						<form:option path="paymentMode" value="" label="select mode of payment" ></form:option>
						<form:option path="paymentMode" value="Cheque">Cheque</form:option>
						<form:option path="paymentMode" value="Cash">Cash</form:option>
						<form:option path="paymentMode" value="Credit/debit">Credit/debit</form:option>
						<form:option path="paymentMode" value="Online">Online</form:option>
						<form:option path="paymentMode" value="Complimentary">Complimentary</form:option>
						 <form:option path="paymentMode" value="NEFT">NEFT</form:option>
					</form:select>
					<!-- disbale   code -->     
				<script>	
			     	var select = document.getElementById("payment");
					select.onchange = function()
					{
    				var selectedString = select.options[select.selectedIndex].value;
						if(selectedString =="Online")
								{
							disable_Online();
							}	
						else if(selectedString =="Cash")
						{
							disable_Cash();
						}	
						else if(selectedString =="Credit/debit")
						{
							disable_Credit_debit();
						}	
						
						else if(selectedString =="Cheque")
						{
							enable_Cheque();
						}	

						else if(selectedString =="Complimentary")
						{
							disable_Complimentary();
						}
						else if(selectedString =="NEFT")
                        {
                                        disable_NEFT();
                        }

				}
			</script>
			<font id="paymenterror" style="color: red;"></font>
					
					                  <div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
                                  <form:label path="chequeAuthCode">cheque No./Authrization Code <span style="color:red;">*</span></form:label>
                                    <div class="input-group">
									<form:input type="text" path="chequeAuthCode" onkeypress="return IsNumeric(event);" minlength="6" maxlength="11" class="form-control" placeholder="enter cheque no./Auth.." id="datepicker1" required="required" />
									<span id="error" style="color: red; display: none">*
																Enter digits only</span>
									</div>
                              </div>
                              </div>
                              
                              <div class="col-md-6">
													<div class="m-t-20">
                                   <form:label path="bank">Bank  <span style="color:red;">*</span></form:label>
                                    <form:select path="bank" title="----Select bank Name----"
											class="form-control" id="datepicker2" required="required">
											<form:option value=""></form:option>
											<c:forEach items="${bankList}" var="list">
															<c:if test="${list.constType == 'Bank Name'}">
															<form:option value="${list.CValue}" >${list.CDisplay}</form:option>
															</c:if>
															</c:forEach>
											
								</form:select>
                                    <font id="bankerror" style="color: red;"></font>
                                    </div>
                                    </div>     
                                    </div>                                                                
                                                <div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
                                   <form:label path="chequeDate">Cheque Date  <span style="color:red;">*</span></form:label>
                                   <div class="input-group">
                                    <form:input type="text" id="datepicker-autoclose" path="chequeDate"  class="form-control"  placeholder="mm/dd/yyyy" required="required" />
                               <span class="input-group-addon bg-primary b-0 text-white"><i class="fa fa-calendar"></i></span>
                               <span id="error" style="color: red; display: none">*
																Enter digits only</span>
                                </div>
                               </div>
                               </div>
                                   
                                   <div class="col-md-6">
								<div class="m-t-20">
                                   <form:label path="terminalNumber">Terminal No:</form:label>
                                     <form:select path="terminalNumber" title="----Terminal Name----"
											class="form-control" id="terminal" required="required">
											<form:option value=""></form:option>
											<form:option value="" label="Select terminal Number" ></form:option>
											<form:option value="RA005377">RA005377</form:option>
											<form:option value="RA005378">RA005378</form:option>
											<form:option value="RA005379">RA005379</form:option>
											<form:option value="RA005375">RA005375</form:option>
											<form:option value="RA005376">RA005376</form:option>
								</form:select>
								<font id="terminalerror" style="color: red;"></font>
                                  </div>
                                  </div>
                                  </div>  
	        
                       
                       
                                       <div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
										  <form:label path="csr" for="assign">CSR <span style="color:red;">*</span></form:label>
										<form:select path="csr" title="----Csr Name----"
											class="form-control" id="assigns" >
											<form:option value="${txById.csr}" label="${csr}" />
											<c:forEach var="employee" varStatus="status"
												items="${csrList}">
													<form:option path="csr" value="${employee.empId}">${employee.empName}</form:option>
											</c:forEach>
										</form:select>
								<font id="csrerror" style="color: red;"></font>
                             </div>
                             </div>
                         
                          
													<div class="col-md-6">
													<div class="m-t-20">
										<form:label path="team" for="priority">Team Name </form:label>
										<form:select path="team" title="----Team Leader----"
											class="form-control" id="assign" >
											<form:option value="${teamName.teamId}" label="${teamName.teamName}" />
											<c:forEach var="team" varStatus="status"
												items="${allTeamName}">
													<form:option path="team" value="${team.teamId}">${team.teamName}</form:option>
											</c:forEach>
										</form:select>
                               </div>
                               </div>
                               </div>
                               
                                               <div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
						
                                     <form:label path="channel" for="Sdate">Channel  <span style="color:red;">*</span></form:label>
                                     <form:select path="channel" title="channels Name" class="form-control" id="teamer" >
                                     <form:option value=""></form:option>
						<form:option value="${channelName.channelId}"> ${channelName.channelsName} </form:option>
						
						<form:options items="${allChannels}" itemValue="channelId"
							itemLabel="channelsName" />
					</form:select>
					<font id="teamerror" style="color: red;"></font>
					</div>
					</div>
                        
                      
													<div class="col-md-6">
													<div class="m-t-20">
                                  <form:label path="colectedDate">Collected Date  <span style="color:red;">*</span></form:label>
                                    <div class="input-group">
									<form:input type="text" path="colectedDate" value="${collectionById.colectedDate}" class="form-control" placeholder="dd/mm/yyyy" id="datepickerautoclose1"/>
									<span class="input-group-addon bg-primary b-0 text-white"><i class="fa fa-calendar-o"></i></span>
									
									</div><!-- input-group -->
									<font id="collectederror" style="color: red;"></font>
                           </div>
                           </div>
                           </div>
                           
                                         <div class="row">
													<div class="col-md-6">
													<div class="m-t-20">
										<form:label path="executive">Collected By  <span style="color:red;">*</span></form:label>
										<form:select path="executive" title="----Executive----"	class="form-control" id="collectedbyy">
										<form:option value="${txById.executive}" label="${executive}" />
											<c:forEach var="employee1" varStatus="status" items="${executiveList}">
													<form:option path="executive" value="${employee1.empId}">${employee1.empName}</form:option>
											</c:forEach>
										</form:select>
                                <font id="collectedbyerror" style="color: red;"></font>
                                </div>
                                </div>
                                
                        
													<div class="col-md-6">
													<div class="m-t-20">    
					<form:label path="remarks">Remarks  <span style="color:red;">*</span></form:label>
				<form:input type="text" path="remarks"  class="form-control"  placeholder="" id="remarkse" />
				<font id="remarkserror" style="color: red;"></font>
				</div>
				</div>
				</div>
				<br />
                                    <div class="col-md-offset-4">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
												<button type="reset"
													class="btn btn-danger waves-effect waves-light m-l-10">Clear</button>
											</div>
                 </div>
				</div>
                 </form:form>
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
            
            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose1').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            
            jQuery("#datepicker-autoclose1").datepicker();
     		jQuery('.fa-calendar-o').click(function() {
     			jQuery("#datepickerautoclose1").focus();
           	  });
     		
     		jQuery("#datepicker-autoclose").datepicker();
     		jQuery('.fa-calendar').click(function() {
     			jQuery("#datepicker-autoclose").focus();
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