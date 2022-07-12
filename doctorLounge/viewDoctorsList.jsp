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
        <title>WELEZO</title>
      
        <!-- App CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />
        
        <!-- DataTables -->
        <link href="resources/plugins/welezo/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/welezo/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Modal-Effect -->
        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>
        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet"/>
      <!--   <link href="resources/css/Fullpage.css" rel="stylesheet" type="text/css"/> -->
      <link href="resources/css/responsiv.css" rel="stylesheet" type="text/css"/>
      
        <script src="resources/js/modernizr.min.js"></script>
         <!-- Table -->
      
        <script src="resources/table/table-jquery-1.11.3.min.js"></script>

	    <link href="resources/table/table-jquery.dataTables.css" rel="stylesheet" type="text/css" />
	    <script src="resources/table/table-jquery.dataTables.js"></script>
	    <link rel="stylesheet" type="text/css" href="resources/table/table-buttons.dataTables.min.css"/>
	    <script src="resources/table/table-dataTables.buttons.min.js"></script>
	    <script src="resources/table/table-buttons.colVis.min.js"></script>
	       
         <script src="resources/extraDatatable/jquery-1.12.4.js"></script>
         <script src="resources/extraDatatable/jquery.dataTables.min.js"></script>
         <script src="resources/extraDatatable/dataTables.buttons.min.js"></script>
         <script src="resources/extraDatatable/buttons.print.min.js"></script>
         
         <script src="resources/extraDatatable/jszip.min.js"></script>
         <script src="resources/extraDatatable/pdfmake.min.js"></script>
         <script src="resources/extraDatatable/vfs_fonts.js"></script>
         <script src="resources/extraDatatable/buttons.colVis.min.js"></script>
         <script src="resources/extraDatatable/buttons.html5.min.js"></script>
         
          <script src="resources/excel/excel-bootstrap-table-filter-bundle.js"></script>
          
        <link href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<link href="resources/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
	    <link href="resources/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	         
        
           
          <link href="resources/excel/Filter.css" rel="stylesheet" type="text/css"/>
          <script src="resources/excel/headerOptions.js"></script>
		  <link href="resources/css/tableHeight.css" rel="stylesheet" type="text/css"/>	
		  

				<style>
tfoot {
    display: table-header-group;
}

</style>
<style>
.mygrid-wrapper-div {
    border: solid 1px;
    overflow: scroll;
    height: 425px;
}
.table, td, th {
	border: 1px solid #ddd;
}
   
</style>
  <style>
.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url('resources/images/pageLoader2.gif') 50% 50% no-repeat rgb(249,249,249);
    opacity: .8;
    
}

</style>
<style>

#n{
    border-style: solid;
    border-width: thin;
}
</style>
    </head>
    <body class="fixed-left">
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- LOGO -->
                <div class="topbar-left">
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
                             <a href="welezouser_dashboard"> <i class="fa fa-home fa-2x" > </i>  </a>
                            </li>
                            <li>
                                <font class="page-title">DOCTOR LOUNGE
                                   </font>
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

<!-- ========== Left Sidebar Start ========== -->
            <%@ include file="/WEB-INF/jsp/Admin/sildermenu.jsp" %>
            <!-- Left Sidebar End -->
           <div class="content-page">
			<!-- Start content -->
			<div class="content">
                    <div class="container">
                    <div class="loader"></div>
                   	<div id="myDIV">
                     <div class="panel panel-default">
                        		
                        		<div id="myDIV">
								<div class="panel-body">
	                    <div class="row">
                            <div class="col-sm-12">
                            
                                    <div>
										 <button class="btn btn-default waves-effect waves-light" data-toggle="modal" data-target="#full-width-modal"><i class="fa fa-plus"></i> NEW DOCTOR REGISTRATION</button>
                                      </div>
                                         <br />
                                     <div class="scrollit">
 						<table id="example" class="grid display nowrap" style="width: 100%">
                                      <thead>
											  <tr>
											<th><b>ID</b></th>
											<th><b>DOCTOR NAME</b></th>
											<th><b>SPECIALIZATION</b></th>
											<th><b>CLINIC NAME</b></th>
											<th><b>CITY</b></th>
											<th><b>LOCATION</b></th>
											<th><b>CONTACT NO.</b></th>
											<th><b>TIMING</b></th>
	                    					</tr>
	                						</thead>
									      
											<tbody>
											<c:forEach items="${doctorsList}" var="doctor" varStatus="counter">
                        <tr>
							
                        	 <td><c:out value="${counter.index + 1}"/></td> 
                        	 <td><c:out value="${doctor.doctorName}"/></td>
                        	 <td><c:out value="${doctor.specializations}"/></td>
                        	 <td><c:out value="${doctor.clinic}"/></td>
                        	 <td><c:out value="${doctor.city}"/></td>
                        	 <td><c:out value="${doctor.location}"/></td>
                        	 <td><c:out value="${doctor.doctorNumber}"/></td>
                        	 <td><c:out value="${doctor.timing}"/></td>
                        	 
                        	
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
	                           </div>
                        	</div><!-- end col -->
                        	<!--  -->
                        	  <!--  Modal content for the above example -->
                                     <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="full-width-modalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-full">
                                            <div class="modal-content">
                                            <div class="n" id="n">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title title-text text-center" id="myLargeModalLabel"><i class="fa fa-user-md"> </i>   NEW DOCTOR LOUNGE</h4>
                                                </div>
                                                <div class="modal-body">
                                                <form action="#" method="post" >
                                                <div class="row">
                                                 <div class="col-sm-12">
                                                  
                                                  <div class="form-group col-md-3">
                                                  <div class="panel panel-default">
                     <div class="panel-heading">
                                                  <div class="p-50">	
                                                <label>Contact Name :</label>
                                                <input type="text" name="pharmacyName" class="form-control input-sm" placeholder="">
                                                
                                                 <label>Contact Number :</label>
                                                <input type="text" name="pharmacyName" class="form-control input-sm" placeholder="">
                                                
                                                <label>Clinic Name :</label>
                                                <input type="text" name="regnNo" class="form-control input-sm">
                                                
                                                 <label>Clinic Number :</label>
                                                <input type="text" name="regnNo" class="form-control input-sm">
                                                
                                                 <label>Availability:</label>
                                                <input type="text" name="city" id="datepicker-autoclose1" class="form-control input-sm">
                                                
                                                <label>Address :</label>
                                                  <textarea name="address" class="form-control" rows="2" id="comment"></textarea>
                                               </div>
                                               </div>
                                               </div>
                                               </div>
                                               
                                               <div class="form-group col-md-2">
                                                  <div class="panel panel-default">
                     <div class="panel-heading">
                                                  <div class="p-50">
                                                <label>Location :</label>
                                                <input type="text" name="location" class="form-control input-sm" >
                                                
                                                 <label>Pincode :</label>
                                                <input type="text" name="location" class="form-control input-sm" >
                                                
                                                <label>Registration No :</label>
                                                <input type="text" name="location" class="form-control input-sm" >
                                                
                                                <label>Joined Date :</label>
                                                <input type="text" name="location" class="form-control input-sm" id="datepickerautoclose3">
                                                
                                                 <label>Expire Date :</label>
                                                <input type="text" name="location" class="form-control input-sm" id="datepickerautoclose2">
                                                </div>
                                                  </div>
                                                  </div>
                                                  </div>
                                                 
                                                  <div class="mygrid-wrapper-div">
                                                    <ul id="myUL">
                                                  <div class="form-group col-md-4">
                                                 
                                                  <div class="p-100">
                                                <label>Specialization :</label><br/>
                                               Search : <input type="text" class="form-control input-sm" id="myInput" onkeyup="myFunction()" placeholder="search">

                                 
                                                <p><kbd>A</kbd></p>
                                                <li><a><input type="checkbox" name="Abdominal Radiology"> Abdominal Radiology</a></li> 
                                                <li><a><input type="checkbox" name="Addiction Psychiatry"> Addiction Psychiatry </a></li>
                                                <li><a><input type="checkbox" name="Adolescent Medicine"> Adolescent Medicine </a></li>
                                                <li><a><input type="checkbox" name="Adult Cardiothoracic Anesthesiology"> Adult Cardiothoracic Anesthesiology </a></li>
                                                <li><a><input type="checkbox" name="Adult Reconstructive Orthopaedics"> Adult Reconstructive Orthopaedics</a></li>
                                                <li><a><input type="checkbox" name="Advanced Heart Failure & Transplant Cardiology"> Advanced Heart Failure & Transplant Cardiology </a></li>
                                                <li><a> <input type="checkbox" name="Allergy & Immunology"> Allergy & Immunology</a></li>
                                                 <li><a> <input type="checkbox" name="Anesthesiology"> Anesthesiology</a></li>
                                                  <p><kbd>B</kbd></p>
                                                  <li><a> <input type="checkbox" name="Biochemical Genetics"> Biochemical Genetics</a></li> 
                                                   <li><a> <input type="checkbox" name="Blood Banking - Transfusion Medicine"> Blood Banking - Transfusion Medicine</a></li>
                                                 
                                                    <p><kbd>C</kbd></p>
                                                      <li><a><input type="checkbox" name="Cardiothoracic Radiology"> Cardiothoracic Radiology</a></li> 
                                                       <li><a><input type="checkbox" name="Cardiovascular Disease"> Cardiovascular Disease </a></li> 
                                                        <li><a><input type="checkbox" name="Chemical Pathology"> Chemical Pathology</a></li> 
                                                  <li><a><input type="checkbox" name="Child & Adolescent Psychiatry"> Child & Adolescent Psychiatry</a></li> 
                                                   <li><a><input type="checkbox" name="Child Abuse Pediatrics" > Child Abuse Pediatrics</a></li> 
                                                    <li><a><input type="checkbox" name="Child Neurology"> Child Neurology </a></li> 
                                                    <li><a> <input type="checkbox" name="Clinical & Laboratory Immunology"> Clinical & Laboratory Immunology</a></li> 
                                                 <li><a> <input type="checkbox" name="Clinical Cardiac Electrophysiology">  Clinical Cardiac Electrophysiology </a></li> 
                                                  <li><a> <input type="checkbox" name="Clinical Neurophysiology"> Clinical Neurophysiology </a></li> 
                                                   <li><a><input type="checkbox" name="Colon & Rectal Surgery"> Colon & Rectal Surgery</a></li> 
                                                   <li><a> <input type="checkbox" name="Craniofacial Surgery">Craniofacial Surgery </a></li> 
                                                    <li><a> <input type="checkbox" name="Critical Care Medicine"> Critical Care Medicine  </a></li> 
                                                     <li><a> <input type="checkbox" name="Critical Care Medicine"> Critical Care Medicine </a></li> 
                                                     <li><a>  <input type="checkbox" name="Cytopathology"> Cytopathology  </a></li> 
                                                       <p><kbd>D</kbd></p>
                                                       
                                                       <li><a> <input type="checkbox" name="Dermatology"> Dermatology </a></li> 
                                                        <li><a> <input type="checkbox" name="Dermatopathology"> Dermatopathology  </a></li> 
                                                         <li><a> <input type="checkbox" name="Developmental-Behavioral Pediatrics"> Developmental-Behavioral Pediatrics  </a></li> 
                                                         
                                                           <p><kbd>E</kbd></p>
                                                          <li><a> <input type="checkbox" name="Emergency Medicine"> Emergency Medicine</a></li> 
                                                           <li><a> <input type="checkbox" name="Endocrinology, Diabetes & Metabolism "> Endocrinology, Diabetes & Metabolism  </a></li> 
                                                            <li><a> <input type="checkbox" name="Endovascular Surgical Neuroradiology"> Endovascular Surgical Neuroradiology </a></li> 
                                                             
                                                               <p><kbd>F</kbd></p>
                                                              <li><a> <input type="checkbox" name="Family Medicine "> Family Medicine </a></li> 
                                                              <li><a> <input type="checkbox" name="Female Pelvic Medicine & Reconstructive Surgery"> Female Pelvic Medicine & Reconstructive Surgery </a></li> 
                                                              <li><a> <input type="checkbox" name="Family Practice"> Family Practice </a></li> 
                                                              <li><a> <input type="checkbox" name="Foot & Ankle Orthopaedics"> Foot & Ankle Orthopaedics </a></li> 
                                                              <li><a> <input type="checkbox" name="Forensic Pathology"> Forensic Pathology </a></li> 
                                                               <li><a><input type="checkbox" name="Forensic Psychiatry"> Forensic Psychiatry </a></li> 
                                                         </div>
                                                         </div>
                                                         
                                                          <div class="form-group col-md-4">
                                                          <!--   <div class="p-100"> -->
                                                               <p><kbd>G</kbd></p>
                                                              <li><a> <input type="checkbox" name="Gastroenterology"> Gastroenterology  </a></li> 
                                                               <li><a><input type="checkbox" name="Geriatric Medicine "> Geriatric Medicine</a></li> 
                                                               <li><a><input type="checkbox" name="Geriatric Psychiatry"> Geriatric Psychiatry </a></li> 
                                                         
                                                        
                                                              
                                                              <p><kbd>H</kbd></p>
                                                              <li><a> <input type="checkbox" name="Hand Surgery"> Hand Surgery </a></li> 
                                                              <li><a> <input type="checkbox" name="Hematology"> Hematology </a></li> 
                                                              <li><a> <input type="checkbox" name="Hematology & Oncology"> Hematology & Oncology </a></li> 
                                                              <p><kbd>I</kbd></p>
                                                              <li><a> <input type="checkbox" name="Infectious Disease"> Infectious Disease  </a></li> 
                                                               <li><a><input type="checkbox" name="Internal Medicine"> Internal Medicine </a></li> 
                                                               <li><a><input type="checkbox" name="Interventional Cardiology"> Interventional Cardiology </a></li> 
                                                               <p><kbd>M</kbd></p>
                                                               <li><a> <input type="checkbox" name="Medical Genetics "> Medical Genetics </a></li> 
                                                                 <li><a><input type="checkbox" name="Medical Microbiology"> Medical Microbiology </a></li> 
                                                                  <li><a><input type="checkbox" name="Medical Toxicology "> Medical Toxicology  </a></li> 
                                                                   <li><a> <input type="checkbox" name="Molecular Genetic Pathology"> Molecular Genetic Pathology </a></li> 
                                                                    <li><a> <input type="checkbox" name="Muscoskeletal Radiology "> Muscoskeletal Radiology  </a></li> 
                                                                     <li><a> <input type="checkbox" name="Musculoskeletal Oncology"> Musculoskeletal Oncology </a></li> 
                                                                      <p><kbd>N</kbd></p>
                                                                      <li><a> <input type="checkbox" name="Neonatal-Perinatal Medicine"> Neonatal-Perinatal Medicine  </a></li> 
                                                                       <li><a> <input type="checkbox" name="Nephrology"> Nephrology  </a></li> 
                                                                        <li><a> <input type="checkbox" name="Neurological Surgery"> Neurological Surgery </a></li> 
                                                                         <li><a> <input type="checkbox" name="Neuropathology"> Neuropathology  </a></li> 
                                                                         <li><a> <input type="checkbox" name="Neuromuscular Medicine"> Neuromuscular Medicine </a></li> 
                                                                       <li><a> <input type="checkbox" name="Nuclear Medicine"> Nuclear Medicine  </a></li> 
                                                                       <li><a>  <input type="checkbox" name="Nuclear Radiology Surgery"> Nuclear Radiology Surgery </a></li> 
                                                                      
                                                                             <p><kbd>O</kbd></p> 
                                                                         <li><a> <input type="checkbox" name="Obstetric Anesthesiology"> Obstetric Anesthesiology </a></li> 
                                                                          <li><a> <input type="checkbox" name="Obstetrics & Gynecology"> Obstetrics & Gynecology </a></li> 
                                                                           <li><a> <input type="checkbox" name="Oncology"> Oncology  </a></li> 
                                                                            <li><a> <input type="checkbox" name="Ophthalmic Plastic & Reconstructive Surgery"> Ophthalmic Plastic & Reconstructive Surgery  </a></li> 
                                                                             <li><a> <input type="checkbox" name="Ophthalmology"> Ophthalmology </a></li> 
                                                                              <li><a> <input type="checkbox" name="Orthopaedic Sports Medicine "> Orthopaedic Sports Medicine  </a></li> 
                                                                               <li><a> <input type="checkbox" name="Orthopaedic Surgery"> Orthopaedic Surgery </a></li> 
                                                                                <li><a> <input type="checkbox" name="Orthopaedic Surgery of the Spine"> Orthopaedic Surgery of the Spine </a></li> 
                                                                                 <li><a> <input type="checkbox" name="Orthopaedic Trauma"> Orthopaedic Trauma  </a></li> 
                                                                                  <li><a> <input type="checkbox" name="Otolaryngology"> Otolaryngology </a></li> 
                                                                                   <li><a> <input type="checkbox" name="Otology - Neurotology"> Otology - Neurotology </a></li> 
                                                                                   
                                                                   <!--   </div> -->
                                                                     </div>
                                                       <div class="form-group col-md-4">
                                                          <!--   <div class="p-50"> -->
                                                                     
                                                                                   
                                                                                   <p><kbd>P</kbd></p> 
                                                                                   
                                                                                     <li><a><input type="checkbox" name="Pain Medicine"> Pain Medicine </a></li> 
                                                                                      <li><a><input type="checkbox" name="Pathology-Anatomic & Clinical"> Pathology-Anatomic & Clinical </a></li> 
                                                                                      <li><a> <input type="checkbox" name="Pediatric Anesthesiology"> Pediatric Anesthesiology  </a></li> 
                                                                                       <li><a> <input type="checkbox" name="Pediatric Cardiology"> Pediatric Cardiology </a></li> 
                                                                                        <li><a> <input type="checkbox" name="Pediatric Critical Care Medicine"> Pediatric Critical Care Medicine </a></li> 
                                                                                        <li><a>  <input type="checkbox" name="Pediatric Emergency Medicine"> Pediatric Emergency Medicine </a></li> 
                                                                                         <li><a>  <input type="checkbox" name="Pediatric Endocrinology "> Pediatric Endocrinology </a></li> 
                                                                                           <li><a> <input type="checkbox" name="Pediatric Gastroenterology "> Pediatric Gastroenterology  </a></li> 
                                                                                            <li><a> <input type="checkbox" name="Pediatric Hematology-Oncology"> Pediatric Hematology-Oncology </a></li> 
                                                                                             <li><a> <input type="checkbox" name="Pediatric Infectious Diseases"> Pediatric Infectious Diseases  </a></li> 
                                                                                              <li><a> <input type="checkbox" name="Pediatric Nephrology"> Pediatric Nephrology </a></li> 
                                                                                               <li><a> <input type="checkbox" name="Pediatric Orthopaedics"> Pediatric Orthopaedics </a></li> 
                                                                                                <li><a> <input type="checkbox" name="Pediatric Otolaryngology"> Pediatric Otolaryngology </a></li> 
                                                                                                <li><a><input type="checkbox" name="Pediatric Pathology "> Pediatric Pathology </a></li> 
                                                                                                <li><a><input type="checkbox" name="Pediatric Pulmonology"> Pediatric Pulmonology  </a></li> 
                                                                                                 <li><a><input type="checkbox" name="Pediatric Radiology "> Pediatric Radiology  </a></li> 
                                                                                         <li><a><input type="checkbox" name="Pediatric Rheumatology "> Pediatric Rheumatology </a></li> 
                                                                                           <li><a><input type="checkbox" name="Pediatric Sports Medicine "> Pediatric Sports Medicine  </a></li> 
                                                                                           <li><a><input type="checkbox" name="Pediatric Surgery "> Pediatric Surgery  </a></li> 
                                                                                               <li><a><input type="checkbox" name="Pediatric Transplant Hepatology"> Pediatric Transplant Hepatology  </a></li> 
                                                                                              <li><a> <input type="checkbox" name="Pediatric Urology"> Pediatric Urology  </a></li> 
                                                                                               <li><a> <input type="checkbox" name="Pediatrics"> Pediatrics </a></li> 
                                                                                                 <li><a><input type="checkbox" name="Physical Medicine & Rehabilitation"> Physical Medicine & Rehabilitation </a></li> 
                                                                                                  <li><a><input type="checkbox" name="Plastic Surgery"> Plastic Surgery </a></li> 
                                                                                                  <li><a> <input type="checkbox" name="Preventive Medicine"> Preventive Medicine</a></li> 
                                                                                                   <li><a> <input type="checkbox" name="Procedural Dermatology "> Procedural Dermatology  </a></li> 
                                                                                                     <li><a><input type="checkbox" name="Psychiatry"> Psychiatry </a></li> 
                                                                                                      <li><a><input type="checkbox" name="Pulmonary Disease"> Pulmonary Disease </a></li> 
                                                                                                      <li><a> <input type="checkbox" name="Pulmonary Disease & Critical Care Medicine"> Pulmonary Disease & Critical Care Medicine  </a></li> 
                                                                                                      
                                                                                                        <p><kbd>R</kbd></p> 
                                                                                                       <li><a> <input type="checkbox" name="Radiation Oncology"> Radiation Oncology </a></li> 
                                                                                                        <li><a> <input type="checkbox" name="Radiology-Diagnostic"> Radiology-Diagnostic </a></li> 
                                                                                                         <li><a> <input type="checkbox" name="Rheumatology"> Rheumatology </a></li> 
                                                                                                         
                                                                                                           <p><kbd>S</kbd></p> 
                                                                                                           
                                                                                                          <li><a> <input type="checkbox" name="Sleep Medicine"> Sleep Medicine </a></li> 
                                                                                                           <li><a> <input type="checkbox" name="Spinal Cord Injury Medicine"> Spinal Cord Injury Medicine </a></li> 
                                                                                                            <li><a> <input type="checkbox" name="Surgery-General"> Surgery-General </a></li> 
                                                                                                            <li><a>  <input type="checkbox" name="Surgical Critical Care"> Surgical Critical Care  </a></li> 
                                                                                                             
                                                                                                              <p><kbd>T</kbd></p> 
                                                                                                              <li><a> <input type="checkbox" name="Thoracic Surgery"> Thoracic Surgery </a></li> 
                                                                                                               <li><a> <input type="checkbox" name="Thoracic Surgery-Integrated "> Thoracic Surgery-Integrated  </a></li> 
                                                                                                               <li><a> <input type="checkbox" name="Transplant Hepatology "> Transplant Hepatology  </a></li> 
                                                                                                               
                                                                                                                 <p><kbd>U</kbd></p> 
                                                                                                               <li><a> <input type="checkbox" name="Urology"> Urology </a></li> 
                                                                                                               
                                                                                                                 <p><kbd>V</kbd></p> 
                                                                                                               <li><a> <input type="checkbox" name="Vascular & Interventional Radiology "> Vascular & Interventional Radiology </a></li> 
                                                                                                               <li><a> <input type="checkbox" name="Vascular Surgery "> Vascular Surgery </a></li> 
                                                                                                               <li><a> <input type="checkbox" name="Neurology"> Neurology </a></li> 
                                                                                           
                                                                                            </div>      
                                                                                             </ul>
                                                                         
                                                              
                                                              
                                                
                                                

   
                                                 <!--  </div> -->
                                                  </div>
                                                  </div>
                                                           <div align="center">
												<button type="submit" onclick="return validate()"
													class="btn btn-primary waves-effect waves-light"
													value="submit">Save</button>
											</div>
											
                                                  </div>
                                                  </form>
                                                 </div> 
                                                 </div>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
	</div>
                        	
        
			
			         	
                <%@ include file="/WEB-INF/jsp/Admin/footer.jsp" %>
            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
        </div>
        <!-- END wrapper -->
     
    <script>
            var resizefunc = [];
        </script>
        
<script>
    $(function () {
      $('#example').excelTableFilter();
    });
  </script>
  <script type="text/javascript">
$(window).load(function() {
    $(".loader").fadeOut("slow");
});
</script>
  <script>
function myFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";

        }
    }
}
</script>
	<!-- jQuery  -->
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>

	<!-- Datatables-->
		<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="resources/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="resources/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/jszip.min.js"></script>
		
        <script src="resources/plugins/datatables/pdfmake.min.js"></script>
		
        <script src="resources/plugins/datatables/vfs_fonts.js"></script>
        <script src="resources/plugins/datatables/buttons.html5.min.js"></script>
        <script src="resources/plugins/datatables/buttons.print.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="resources/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="resources/pages/datatables.init.js"></script>

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

            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose2').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });


            jQuery('#datepicker').datepicker();
            jQuery('#datepickerautoclose3').datepicker({
            	format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
            
            jQuery('#datepicker-inline').datepicker();
            jQuery('#datepicker-multiple-date').datepicker({
                format: "yyyy-mm-dd",
                clearBtn: true,
                multidate: true,
                multidateSeparator: ","
            });
            jQuery('#date-range').datepicker({
            	format: "dd/mm/yyyy",
                toggleActive: true,
                autoclose:true,
            });

            //Date range picker
            $('.input-daterange-datepicker').daterangepicker({
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-default',
                cancelClass: 'btn-primary'
            });
            $('.input-daterange-timepicker').daterangepicker({
                timePicker: true,
                format: 'dd/mm/yy h:mm A',
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