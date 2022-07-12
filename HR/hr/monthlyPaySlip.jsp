<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
         <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo</title>

        <!-- Plugins css-->
        <link href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />

        <script src="resources/HR/js/modernizr.min.js"></script>
    </head>
    <body>
       <!-- Start menu -->
            <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->
        <div class="wrapper">
            <div class="container">
                <!-- Page-Title -->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box task-detail">
                        <h4 class="page-title">EMPLOYEE MONTHLY SALARY PAY SLIP</h4>
                        <div class="table table-responsive">
                            <table class="table table-bordered m-0">
                                                
												<thead>
                                                <tr>
												<th><image style="width:200px; height:80px;" src="resources\images\newlogo.png"></th>
                                                 
                                                  <th colspan="4"> <h4> Welezo Health Care Private Limited </h4> 
														No.13, Sanjaynagar Main Road, Amarjyothi Layout, Nagashettihalli,Bangalore-94
												   </th>
                                                    
                                                </tr>
												</thead>
                                                
												<tbody>
												
												<tr>
                                                   <!-- <td></td> -->
												   <td colspan="4"> <strong> PAY SLIP FOR THE MONTH OF : ${empSalSlip.payforMonth}</strong></td>
                                                </tr>
													
													<tr>
                                                        <td> <strong> NAME </strong> </td>
                                                        <td> ${empSalSlip.empName}</td>
                                                        <td> <strong> Paid Days </strong> </td>
                                                        <td>${empSalSlip.paidDays}</td>
														<%-- <td> <strong> No Of Actual Days</strong> </td>
                                                        <td>${empSalSlip.totalDays}</td> --%>
                                                        
                                                    </tr>
                                         
                                                    <tr>
                                                        <td> <strong> EMPLOYEE CODE </strong> </td>
                                                        <td>${employeeById.employeeId}</td>
														<td> <strong> PF NO </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'PF Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                        
                                                    </tr>
                                                    
                                                   <%--  <tr>
                                                        <td> <strong> DOJ </strong> </td>
                                                        <td>01-09-2016</td>
														<td> <strong> PF NO </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'PF Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                    </tr> --%>
                                                     <tr>
                                                        <td> <strong> Designation </strong> </td>
                                                        <td>${designation.designation}</td>
														<td> <strong> ESI NO </strong> </td>
                                                        <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'ESI Number' }">
                                                        ${accounts.answer}
                                                        </c:if></c:forEach></td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Department </strong> </td>
                                                        <td>${designation.department}</td>
														<td> <strong> Payment </strong> </td>
                                                        <td>Bank Transfer</td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Location </strong> </td>
                                                        <td>Bangalore</td>
                                                        <td> <strong>Account No </strong> </td>
                                                        <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'Corporate Account No' }">
                                                        ${accounts.answer}
                                                        </c:if>
                                                        </c:forEach></td>
                                                    </tr>
													 <tr>
                                                        <td> </td>
                                                        <td></td>
                                                        <td> <strong>Bank Name </strong> </td>
                                                       <td> <c:forEach items="${employeeACCDetails}" var="accounts" >
                                                         <c:if test="${accounts.question == 'Corporate Account Bank' }">
                                                        ${accounts.answer}
                                                        </c:if>
                                                        </c:forEach></td>
                                                    </tr>
                                                    <tr>
                                                    <td colspan="4"></td>
                                                    </tr>
													<tr class="solid">  
													    <td style="color:green"> <strong> Earnings </strong>  </td>
                                                        <td style="color:green"> <strong> Amount </strong></td>
														<td style="color:green"> <strong> Deductions </strong> </td>
                                                        <td style="color:green"> <strong> Amount </strong> </td>
                                                    </tr>
													<tr>
                                                        <td> <strong> Basic & DA </strong>  </td>
                                                        <td>${empSalSlip.basicEarned}</td>
														<td> <strong> Provident Fund (PF) </strong>  </td>
                                                        <td>${empSalSlip.epf}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong> House Rent Allowance  </strong> </td>
                                                        <td>${empSalSlip.hraEarned}</td>
														<td> <strong> ESI </strong>  </td>
                                                        <td>${empSalSlip.esi}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong>Other Allowances </strong>  </td>
                                                        <td>${empSalSlip.others}</td>
                                                        <td> <strong>PT </strong>  </td>
                                                        <td>${empSalSlip.pt}</td>
                                                    </tr>
													<tr>
                                                        <td> <strong>Travelling Allowances </strong>  </td>
                                                        <td></td>
                                                        <td > <strong> Others </strong>  </td>
                                                        <td>${empSalSlip.latePenalty}</td>
                                                    </tr>
                                                    <tr>
                                                        <td> <strong>Gross Pay </strong>  </td>
                                                        <td>${empSalSlip.grossEarned}</td>
                                                        <td > <strong> Total Deductions </strong>  </td>
                                                        <td>${empSalSlip.epf + empSalSlip.esi + empSalSlip.pt + empSalSlip.latePenalty}</td>
                                                    </tr>
                                                  
                                                    <tr>
                                                    <td colspan="4">Nett Pay: Rs. ${empSalSlip.nettSalary}/-</td>
                                                   
                                                    </tr>
                                                    
													<tr>
													
													<td colspan="4">InWords : <h5><b id="demo"></b></h5>  </td>
                                                    </tr>
													
													<tr>
													
													<td colspan="4">NOTE: This is system generated Pay Slip, Hence Signature not required </td>
                                                    </tr>
													
                                                   </tbody>
                                                
                             </table>
</div>
                            <div class="attached-files m-t-30">
							
							
                           
							<div class="hidden-print">
                                <div class="pull-right">
                                <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                </div>
                             </div>
                               
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="text-right m-t-30">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- end col -->
					
                </div>
                <!-- end row -->
                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->
        </div>

 <script type="text/javascript">
      var a = ['','One ','Two ','Three ','Four ', 'Five ','Six ','Seven ','Eight ','Nine ','Ten ','Eleven ','Twelve ','Thirteen ','Fourteen ','Fifteen ','Sixteen ','Seventeen ','Eighteen ','Nineteen '];
      var b = ['', '', 'Twenty','Thirty','Forty','Fifty', 'Sixty','Seventy','Eighty','Ninety'];

      function inWords (num) {
          if ((num = num.toString()).length > 9) return 'overflow';
          n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
          if (!n) return; var str = '';
          str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'Crore ' : '';
          str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'Lakh ' : '';
          str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'Thousand ' : '';
          str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'Hundred ' : '';
          str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'Only/- ' : '';
          return str;
      }

      </script>
      <script type="text/javascript">
     var sal =  ${empSalSlip.nettSalary};
		var words = inWords(sal);
		document.getElementById("demo").innerHTML = words;
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

        <!-- Bootstrap tagsinput -->
        <script src="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>