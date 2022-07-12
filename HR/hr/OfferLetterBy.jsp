<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A ">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
       
       <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo Health </title>

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
                        <h4 class="page-title">OFFER LETTER</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10">
                        <div class="panel panel-default">
                            <!-- <div class="panel-heading">
                                <h4>Invoice</h4>
                            </div> -->
                            <div class="panel-body">
                                <div class="clearfix">
                                   <div class="pull-left">
                                        <h3 class="logo invoice-logo"> <img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /></h3>
                                    </div>
                                    <!-- <div class="pull-right">
                                        <h4>Invoice # <br>
                                            <strong>2016-04-23654789</strong>
                                        </h4>
                                    </div> -->
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">

                                        <div class="pull-left m-t-30">
                                              <font size="4"> 
                                            	<strong> Date: ${todayDate} </strong> <br/><br/>
												<strong> Mr/Mrs. ${employeeById.Name}  </strong> <br>
												<p>${employeeById.address} <br>
													${employeeById.contactNumber} <br>
													${employeeById.email} <br> </p>
										
                                            	</font>
                                         </div>
                                    </div><!-- end col -->
                                </div>
                                <!-- end row -->
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="clearfix m-t-40">
                                                <font size="4">PAYMENT TERMS AND POLICIES</font>
<br/>
                                      <font size="4">
 With reference to your application and subsequent interview with us, we are glad to offer you employment in our organization as ${employeeById.designation}.
  Your CTC will be Rs. ${salaryDeatils.gross *12  + salaryDeatils.epf *12 + salaryDeatils.esi *12}/-  Per Annum. Detailed compensation and benefit package structure is 
  herewith enclosed for your reference.<br/><br/>
As confirmed in our previous communication, you are required to join your duties on or before ${employeeById.joiningDate}. Presently you will be posted at Bangalore.
 You will be under probation for a period of six months from the date of your joining. A detailed appointment order will be issued to you after joining.
At the time of joining you are required to produce the following documents for our records.<br/>
a) Id Proof, Address Proof, PAN card Copy, Aadhar Card Copy.<br/>
b) Proof Of Date Of Birth (SSLC/Transfer Certificate /Birth Certificate Corporation/Panchayat /Municipality etc).<br/>
c) Educational Certificate Copies.<br/>
d) 8 Passport Size Photographs and Family Photo for ESI Employees. <br/>
e) Salary Slip-3 Months-Previous Employer.<br/>
f) Relieving Certificate/Service Certificate /Experience Certificates-Past Employers.<br/>
g) Previous ESI, PF Number, UAN Number (If any).<br/><br/>
We shall appreciate your confirmation of acceptance of the above offer latest by ${minus3Days} failing which, this offer stands automatically withdrawn.<br/>
We look forward to a long and mutually beneficial relationship with you. We are confident that your contributions will lead us further in our journey of
 success. We assure you of our support for your professional development and growth.<br/><br/><br/>
                                     </font>
                                            <br/><br/>
                                        </div>
                                    </div>
                                    
                                </div>
                                <hr>
                                
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                        
                                        	<div class="clearfix">
                                   <div class="pull-left">
                                        <h3 class="logo invoice-logo"> <img class="img-responsive" src="resources\images\newlogo.png" width="230px" height="80px" /></h3>
                                    </div>
                                    <!-- <div class="pull-right">
                                        <h4>Invoice # <br>
                                            <strong>2016-04-23654789</strong>
                                        </h4>
                                    </div> -->
                                </div>
                                        
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                    <th bgcolor="#F0E68C">Name</th>
                                                    <th bgcolor="#F0E68C">${employeeById.Name}</th>
                                                    <th bgcolor="#F0E68C">Reporting  Date</th>
                                                    <th bgcolor="#F0E68C">${employeeById.joiningDate}</th>
                                                   
                                                </tr>
                                                </thead>
                                                
                                                <tbody>
                                                    <tr>
                                                        <th bgcolor="#F0E68C">Designation</th>
                                                        <th bgcolor="#F0E68C">${employeeById.designation}</th>
                                                        <th bgcolor="#F0E68C">Location</th>
                                                        <th bgcolor="#F0E68C">Bangalore</th>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2" bgcolor="#F0E68C">Salary Components</th>
                                                        <th bgcolor="#F0E68C">Monthly Amount (in Rs.)</th>
                                                        <th bgcolor="#F0E68C">Annual  Amount (in Rs.)</th>
                                                        
                                                        
                                                    </tr>
                                                   <%--  <tr>
                                                        <td colspan="2">Total Earning</td>
                                                        <td>${salaryDeatils.gross}</td>
                                                        <td>${salaryDeatils.gross * 12}</td>
                                                        
                                                        
                                                    </tr> --%>
                                                    <tr>
                                                        <td colspan="2">Basic</td>
                                                        <td>${salaryDeatils.basic}</td>
                                                        <td>${salaryDeatils.basic *12}</td>
                                                        
                                                        
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td colspan="2">HRA</td>
                                                        <td>${salaryDeatils.hra}</td>
                                                        <td>${salaryDeatils.hra * 12}</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">Other Allowances</td>
                                                        <td>${salaryDeatils.others}</td>
                                                        <td>${salaryDeatils.others * 12}</td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2" bgcolor="#F0E68C">Toatl Fixed Gross Salary- [ A ]</th>
                                                        <th bgcolor="#F0E68C">${salaryDeatils.gross}</th>
                                                        <th bgcolor="#F0E68C">${salaryDeatils.gross * 12}</th>
 
                                                    </tr>
                                                    
                                                     <tr> <th colspan="4" style="text-align:left;"> Employee Benefit Components - Employer's Contribution [B]  </th></tr>

													<tr> <td colspan="2" > Provident Fund </td> 
														<td> ${salaryDeatils.epf}</td>
														<td>${salaryDeatils.epf * 12}</td> 
													</tr>
														<tr> <td colspan="2" > E.S.I (Applicable only if gross salary is <=21000/-) </td> 
															<td>${salaryDeatils.esi} </td>
															<td>${salaryDeatils.esi * 12}</td> 
														</tr>
														<tr> <th colspan="2" bgcolor="#F0E68C" > Total Benefits -  [ B] </th> 
															<th bgcolor="#F0E68C">  ${salaryDeatils.epf + salaryDeatils.esi}  </th>
															<th bgcolor="#F0E68C"> ${salaryDeatils.epf *12 + salaryDeatils.esi * 12}</th> 
														</tr>
															<tr> <th colspan="2" bgcolor="#F0E68C" >  Total cost to company [C]  = [A+B] </th> 
																<th bgcolor="#F0E68C">${salaryDeatils.gross  + salaryDeatils.epf + salaryDeatils.esi} </th>
																<th bgcolor="#F0E68C">${salaryDeatils.gross *12  + salaryDeatils.epf *12 + salaryDeatils.esi *12} </th> 
															</tr>
															<tr> <th  colspan="4" style="text-align:left;" >  Take Home Calculation </th> </tr>
															<tr> <th bgcolor="gray" colspan="4" style="text-align:left;">  Employee's Contribution [ D ] </th> </tr>
															<tr> <th colspan="2" > Provident Fund  </th> 
																<th> ${salaryDeatils.epf} </th>
																<th>${salaryDeatils.epf * 12}</th> 
															</tr>
															<tr> <th colspan="2" > E.S.I (Applicable only if gross salary is <=21000/-)  </th> 
																<th> ${salaryDeatils.esi} </th>
																<th>${salaryDeatils.esi *12}</th> 
															</tr>
																<tr> <th colspan="2" > Professional Tax</th> 
																	<th> ${salaryDeatils.pt} </th>
																	<th>${salaryDeatils.pt *12}</th> 
																</tr>
																<tr> <th colspan="2" >Employee's Contribution [ D ]</th> 
																	<th> ${salaryDeatils.pt + salaryDeatils.epf + salaryDeatils.esi} </th>
																	<th>${salaryDeatils.pt *12 + salaryDeatils.epf *12+ salaryDeatils.esi *12}</th> 
																</tr>
																<tr> <th colspan="2" bgcolor="#F0E68C" >  Take Home a [ C- D ] </th> 
																	<th bgcolor="#F0E68C"> ${(salaryDeatils.nett)}</th>
																	<th bgcolor="#F0E68C"> ${salaryDeatils.nett * 12}</th> 
																</tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="hidden-print">
                                    <div class="pull-right">
                                        <a href="javascript:window.print()" class="btn btn-inverse waves-effect waves-light"><i class="fa fa-print"></i></a>
                                        <a href="mailto:${employeeById.email}?cc=hr@welezohealth.com&subject=Offer%20Letter%20from%20Welezo" class="btn btn-primary waves-effect waves-light">Submit</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- end row -->

                <!-- Footer -->
                <%@ include file="/WEB-INF/jsp/HR/footer.jsp" %>
                <!-- End Footer -->

            </div>
            <!-- end container -->



            

        </div>



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


        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>