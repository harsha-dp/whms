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

        <!-- App Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App title -->
        <title>WELEZO</title>

        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />

        

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
        

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <!-- <a href="index.html" class="logo"><span>WELEZO<span>ADMIN</span></span><i class="zmdi zmdi-layers"></i></a> -->
                    <img src="resources\images\newlogo.png" width="230px" height="80px" />
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                             <a href="welezouser_dashboard"/> <i class="fa fa-home fa-2x" aria-hidden="true"> </i>  </a>
                            </li>
                            <li>
                                <h4 class="page-title">ADD STUDENT</h4>
                            </li>
                        </ul>

                        

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            
            <!-- ========== Left Sidebar Start ========== -->
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card-box">

                                   
                        			<h4 class="header-title m-t-0 m-b-30">DETAILS TO BE FILLED BY THE STUDENT</h4>

                        			<div class="row">
                        				<div class="col-lg-12">
                        					<form class="form-horizontal" role="form">
	                                            <div class="form-group">
	                                                <label class="col-md-2 control-label">Name Of the School</label>
	                                                <div class="col-md-10">
	                                                    <input type="text" onkeypress="return onlyAlphabets(event,this);" class="form-control" placeholder="Name Of the School" >
	                                                </div>
	                                            </div>
	                                            <div class="form-group">
	                                                <label class="col-md-1 control-label" for="name">Name</label>
	                                                <div class="col-md-3">
	                                                    <input type="email" onkeypress="return onlyAlphabets(event,this);" id="example-email" name="name" class="form-control" placeholder="Name">
	                                                </div>
	                                                <label class="col-md-1 control-label" for="rollno">Roll No:</label>
	                                                <div class="col-md-3">
	                                                    <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="example-email" name="rollno" class="form-control" placeholder="Roll No">
	                                                 <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
	                                                </div>
	                                                <label class="col-md-1 control-label" for="class">Class</label>
	                                                <div class="col-md-3">
	                                                    <select class="form-control">
	                                                        <option>1</option>
	                                                        <option>2</option>
	                                                        <option>3</option>
	                                                        <option>4</option>
	                                                        <option>5</option>
	                                                        <option>6</option>
	                                                        <option>7</option>
	                                                        <option>8</option>
	                                                        <option>9</option>
	                                                        <option>10</option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            
												
	                                            <div class="form-group">
	                                                <label class="col-md-1 control-label">Age</label>
	                                                <div class="col-md-1">
	                                                    <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" class="form-control"  placeholder="Age">
	                                                <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
	                                                </div>
	                                                <label class="col-md-2 control-label">Date of Birth</label>
	                                                <div class="col-md-2">
	                                                    <input type="date" class="form-control" placeholder="dd/mm/yyyy" id="datepicker-autoclose">
	                                                    <span class="input-group-addon bg-primary b-0 text-white"><i class="ti-calendar"></i></span>
	                                                </div>
	                                                <label class="col-md-1 control-label">Gender</label>
	                                                <div class="col-md-2">
	                                                   <select class="form-control">
	                                                        <option>Male</option>
	                                                        <option>Female</option>
	                                                   </select>
	                                                </div>
	                                                <label class="col-md-1 control-label">Section</label>
	                                                <div class="col-md-2">
	                                                    <input type="text" class="form-control"  placeholder="Section">
	                                                </div>
	                                            </div>
	                                            
	                                            
	                                            <div class="form-group">
	                                                <label class="col-md-1 control-label" for="name">Father's Name</label>
	                                                <div class="col-md-3">
	                                                    <input type="email" onkeypress="return onlyAlphabets(event,this);" id="example-email" name="name" class="form-control" placeholder="Father's Name">
	                                                </div>
	                                                <label class="col-md-1 control-label" for="rollno">Cell:</label>
	                                                <div class="col-md-3">
	                                                    <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="example-email" name="rollno" class="form-control" placeholder="Cell number">
	                                                <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
	                                                </div>
	                                                <label class="col-md-1 control-label" for="class">Email</label>
	                                                <div class="col-md-3">
	                                                    <input type="text" id="example-email" name="rollno" class="form-control" placeholder="Email">
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="form-group">
	                                                <label class="col-md-1 control-label" for="name">Mother's Name</label>
	                                                <div class="col-md-3">
	                                                    <input type="email" onkeypress="return onlyAlphabets(event,this);" id="example-email" name="name" class="form-control" placeholder="Mother's Name">
	                                                </div>
	                                                <label class="col-md-1 control-label" for="rollno">Cell:</label>
	                                                <div class="col-md-3">
	                                                    <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="example-email" name="rollno" class="form-control" placeholder="Cell number">
	                                                 <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
	                                                </div>
	                                                <label class="col-md-1 control-label" for="class">Email</label>
	                                                <div class="col-md-3">
	                                                    <input type="text" id="example-email" name="rollno" class="form-control" placeholder="Email">
	                                                </div>
	                                            </div>
	                                            
	                                            
	                                        </form>
                        				</div><!-- end col -->



                        			</div><!-- end row -->
                        		</div>
                        	</div><!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                        	<div class="col-lg-12">
                        		<div class="card-box">

                                    

                        			<h4 class="header-title m-t-0 m-b-30">Biometrics</h4>

                                    <form class="form-horizontal" role="form">
                                        <div class="form-group has-success">
                                            <label class="col-md-1 control-label" for="state-success">Height</label>
                                            <div class="col-md-2">
                                                <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="state-success" name="state-success" class="form-control" placeholder="Height">
                                            <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
                                            </div>
                                            <label class="col-md-1 control-label" for="state-success">cms, Weight</label>
                                            <div class="col-md-2">
                                                <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="state-success" name="state-success" class="form-control" placeholder="Weight">
                                             <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
                                            </div>
                                            <label class="col-md-1 control-label" for="state-success">Kgs, Waist</label>
                                            <div class="col-md-1">
                                                <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="state-success" name="state-success" class="form-control" placeholder="Waist">
                                             <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
                                            </div>
                                            <label class="col-md-1 control-label" for="state-success">Cms,     Hips</label>
                                            <div class="col-md-1">
                                                <input type="text" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" id="state-success" name="state-success" class="form-control" placeholder="Hips">
                                             <span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
                                            </div>
                                                                                        
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="col-md-1 control-label" for="state-warning">Chest: Insp</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-warning" name="state-warning" class="form-control" placeholder="...">
                                            </div>
                                            <label class="col-md-1 control-label" for="state-warning">cms, Expn</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-warning" name="state-warning" class="form-control" placeholder="...">
                                            </div>
                                            <label class="col-md-3 control-label" for="state-warning">cms, Body Mass index(BMI)</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-warning" name="state-warning" class="form-control" placeholder="...">
                                            </div>
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="col-md-2 control-label" for="state-danger">Waist to Height Ratio(WHtR)</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-danger" name="state-danger" class="form-control" placeholder="...">
                                            </div>
                                            <label class="col-md-2 control-label" for="state-danger">Waist- Hips Ratio(WHR)</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-danger" name="state-danger" class="form-control" placeholder="...">
                                            </div>
                                            <label class="col-md-2 control-label" for="state-danger">Body Fat %</label>
                                            <div class="col-md-2">
                                                <input type="text" id="state-danger" name="state-danger" class="form-control" placeholder="...">
                                            </div>
                                        </div>
                                        
                                    </form>
                        		</div>
                        	</div><!-- end col -->

                            <div class="col-lg-12">
                        		<div class="card-box">

                        			<h4 class="header-title m-t-0 m-b-30">General Health Check</h4>

                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Identification Marks: 1</label>
                                            <div class="col-sm-4">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Identification Marks">
                                            </div>
                                            <label class="col-sm-1 control-label" for="example-input-small">2.</label>
                                            <div class="col-sm-4">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Identification Marks">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Vertebral Column</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Vertebral Column">
                                            </div>
                                            <label class="col-sm-1 control-label" for="example-input-small">Joints</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Joints">
                                            </div>
                                            <label class="col-sm-1 control-label" for="example-input-small">Flat Feet:</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Flat Feet">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Pulse oximetry</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Vertebral Column">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">(SpO2), Spirometry</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Joints">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">(PFT) Pulse Rate:</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Flat Feet">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Cyanosis</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Vertebral Column">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Icterus</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Joints">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Edema:</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Flat Feet">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Lymphadenopathy</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Vertebral Column">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Clubbing:</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Joints">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Pallor:</label>
                                            <div class="col-sm-2">
                                                <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Flat Feet">
                                            </div>
                                        </div>
                                    </form>

                        		</div>
                        	</div><!-- end col -->

                        </div>
                        <!-- End row -->


                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card-box">

                                   <h4 class="header-title m-t-0 m-b-30">ENT Assessment</h4>

                        			<div class="row">
                        				<div class="col-md-12">
                        					<form role="form">
	                                     <div class="form-group">
                                            <label class="col-sm-3 control-label" for="example-input-small">Hearing Sensitivity:    Right</label>
                                            <div class="col-sm-4">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Hearing Sensitivity:">
                                            </div>
                                            <label class="col-sm-1 control-label" for="example-input-small">Left</label>
                                            <div class="col-sm-4">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Left">
                                            </div>
                                        </div> <br> <br>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="example-input-small">General Check of the Ears :  Right</label>
                                            <div class="col-sm-3">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="General Check of the Ears">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Left</label>
                                            <div class="col-sm-4">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Left">
                                            </div>
                                        </div>
                                        <br><br>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="example-input-small">General Check of the Nose</label>
                                            <div class="col-sm-9">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="General Check of the Nose">
                                            </div> <br> <br>
                                            <label class="col-sm-3 control-label" for="example-input-small">General Check of the Throat</label>
                                            <div class="col-sm-9">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="General Check of the Throat">
                                            </div>
                                        </div>
                                        <br> <br>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="example-input-small">General ENT Hygiene:</label>
                                            <div class="col-sm-7">
                                                <input type="radio" > GOOD
                                                <input type="radio" > FAIR
                                                <input type="radio" > POOR
                                            </div> <br> <br>
                                            
                                        </div>
								
	                                        </form>
                        				</div><!-- end col -->

                        			</div><!-- end row -->
                        		</div>
                        	</div><!-- end col -->
                        </div>
                        <!-- end row -->
                        
                        
                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card-box">

                                   <h4 class="header-title m-t-0 m-b-30">ENT Assessment</h4>

                        			<div class="row">
                        				<div class="col-md-12">
                        					<form role="form">
	                                     <div class="form-group">
                                            <label class="col-sm-2 control-label" for="example-input-small">Heart Murmur</label>
                                            <div class="col-sm-2">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Heart Murmur">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Heart Sound</label>
                                            <div class="col-sm-2">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Heart Sound">
                                            </div>
                                            <label class="col-sm-2 control-label" for="example-input-small">Pulse rate</label>
                                            <div class="col-sm-2">
                                                <input type="text" onkeypress="return onlyAlphabets(event,this);" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="Pulse rate">
                                            </div>
                                        </div> 
                                        <br> <br>
                                        <div class="form-group">
                                        	<div class="col-md-12">
                                            <textarea rows="4" cols="50" placeholder="General observation & Advice" > </textarea>
                                            </div>
                                        </div> 
                                       
                                        <br>
                                        <br>
                                        
								<button type="submit" class="btn btn-success waves-effect waves-light m-l-10 btn-md">Sign in</button>
	                                        </form>
                        				</div><!-- end col -->

                        			</div><!-- end row -->
                        		</div>
                        	</div><!-- end col -->
                        </div>
                        <!-- end row -->
                        


                       

                    </div> <!-- container -->

                </div> <!-- content -->

                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">T`H`E`M`E`L`O`C`K`.`C`O`M`</h4>
                <div class="notification-list nicescroll">
                    <ul class="list-group list-no-border user-list">
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-2.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">Michael Zenaty</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-info">
                                    <i class="zmdi zmdi-account"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Signup</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">5 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Message received</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-3.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">James Anderson</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 days ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-warning">
                                    <i class="zmdi zmdi-settings"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">Settings</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

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

        <!-- Form wizard -->
        <script src="resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
        <script src="resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

        <!-- App js -->
        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#basicwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#progressbarwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    var $percent = ($current/$total) * 100;
                    $('#progressbarwizard').find('.bar').css({width:$percent+'%'});
                },
                'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted'});

                $('#btnwizard').bootstrapWizard({'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted','nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});

                var $validator = $("#commentForm").validate({
                    rules: {
                        emailfield: {
                            required: true,
                            email: true,
                            minlength: 3
                        },
                        namefield: {
                            required: true,
                            minlength: 3
                        },
                        urlfield: {
                            required: true,
                            minlength: 3,
                            url: true
                        }
                    }
                });

                $('#rootwizard').bootstrapWizard({
                    'tabClass': 'nav nav-tabs navtab-wizard nav-justified bg-muted',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#commentForm").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        }
                    }
                });
            });

        </script>


    </body>
</html>