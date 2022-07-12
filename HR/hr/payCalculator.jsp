<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully  CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
        <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo</title>

        <!-- Modal -->
        <link href="resources/HR/plugins/custombox/dist/custombox.min.css" rel="stylesheet">

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />

        <script src="resources/HR/js/modernizr.min.js"></script>
        
         <script type="text/javascript">
        
          function validate(from) {

              var error=document.getElementById("grosserror");
              var gross=form["gross"].value;
              error.innerHTML="";

              if(gross==null || gross=="")
                  {
                    error.innerHTML="Please enter gross salary per month";
                    return false;
                  }

              if(gross.length>8)
              {
                error.innerHTML="Please enter valid gross salary per month";
                return false;
              }
              
             /*  if(/^[-+]?[0-9]+$/.test(gross) == false){
      		   	error.innerHTML="Please enter positive numbers only";
      		   	return false;
      		   }
			 */
		}


        </script>
    </head>
    <body>
        <!-- Start menu -->
           <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->
        <div class="wrapper">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-offset-5">
                        <h4 class="page-title">PAY CALCULATOR</h4>
                    </div>
                </div>
                 <div class="row">
                        <div align="center">
 							<form action="payCalculator" name="form" onsubmit="return validate()" method="post">
							
								    <div class="form-group">
										<label for="name">Enter Gross Salary<span style="color:red;">*</span></label> 
									 <input type="number" name="gross">
									<!-- <div class="form-group">
										<label for="name">Remarks</label> 
									</div> -->
									
									(per Month) 
										<button type="submit" onclick="return validat()"
											class="btn btn-info btn-rounded waves-effect waves-light">Submit</button>
									</div>
											<font id="grosserror" style="color:red" ></font>
								
									</form>

										</div>
                                        <br>
                                          <div align="center">
                                        <table border="1" width="70%" height="150%">
                                               <style>
                                               td, th {padding: 4px; }
                                               </style>

                                                
                                                <tbody>
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
															
															<tr> <th bgcolor="#F0E68C" colspan="4" style="text-align:left;">  Employee's Contribution [ D ] </th> </tr>

															
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

        <!-- Modal-Effect -->
        <script src="resources/HR/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/HR/plugins/custombox/dist/legacy.min.js"></script>

        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>