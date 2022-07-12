<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>

         <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo </title>
        <!-- Plugins css-->
        <link href="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="resources/HR/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/select2/dist/css/select2.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/select2/dist/css/select2-bootstrap.css" rel="stylesheet" type="text/css">
        <link href="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="resources/HR/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- DataTables -->
       <!--  <link href="resources/HR/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" /> -->


		<!-- <link href="resources/HR/plugins/x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"> -->

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />
        <script src="resources/HR/js/modernizr.min.js"></script>
        
		<script src="resources/HR/js/jquery-2.1.3.js"></script>
	<!-- 	<link href="resources/HR/js/bootstrap.css" rel="stylesheet" type="text/css"/> -->
		<script src="resources/HR/js/tableHeadFixer.js"></script>
        
		<!-- <script src="resources/js/table/dataTables.fixedColumns.min.js"></script>
		<script src="resources/js/table/jquery-1.12.4.js"></script>
		<script src="resources/js/table/jquery.dataTables.min.js"></script>
		<link href="resources/js/table/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
		<link href="resources/js/table/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/> -->
        <style type="text/css">
			#parent {
				height: 466px;
			}
			
			#fixTable {
				width: 1000px !important;
			}
		</style>

		<script>
			$(document).ready(function() {
				$("#fixTable").tableHeadFixer({"left" : 5});
			});
		</script>
     
    </head>
    <body>
		<!-- Start menu -->
            <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->
        <div class="wrapper">
            <div class="container">
				<div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
                        
                            <!-- <h4 class="header-title m-t-0 m-b-30">EMPLOYEE ATTENDENCE</h4> -->
                            
                            <div class="row">
                                 			<div class="col-md-12" >
                                 			<div class="form-group">
                            <form action="attendance1" method="post">
                                                      <div class="col-md-3">
                                                     <h6><b>EMPLOYEE ATTENDENCE</b></h6> 
                                                      </div>
                                                      
			                                			<div class="col-md-4">
			                                				<div class="input-daterange input-group" id="date-range">
			                                					<span class="input-group-addon bg-primary b-0 text-white">From</span>
																<input type="text" name="fromDate" value="${fromDate}" class="form-control input-sm"  />
																<span class="input-group-addon bg-primary b-0 text-white">To</span>
																<input type="text" name="toDate" value="${toDate}" id="date-range" class="form-control input-sm"  />
																</div>
															</div>
																<div class="col-md-1">
			                                					<div class="input-daterange input-group" id="date-range">
															<button type="submit" class="btn btn-success waves-effect waves-light" value="Go">Go</button>
			                                			</div>
			                                		</div>
			                                		 <p class="label label-success"> P</p> Present
			                         <p class="label label-danger"> A </p> Absent
			                         <p class="label label-warning"> L </p> Late
			                          <p class="label label-info"> H </p> Half Day
			                          <div class="col-md-2">
							<input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Search for names.." title="Type in a name">
							</div>
			                                		</form>
			                                		
			                                		</div>
                                 			</div>
                                 		</div>
                                 	<br/>
                                 		
                              
                                 <script type="text/javascript">function myFunction() {
                                	    var popup = document.getElementById("myPopup");
                                	    popup.classList.toggle("show");
                                	}
                             	</script> 		
                                 		
                                 		<style>
                                 		.popuptext {
									    visibility: hidden;
									    opacity: 0;
									    transition: visibility 0s 1s, opacity 1s linear;
									}
									.show {
									    visibility: visible;
									    opacity: 1;
									    transition: opacity 1s linear;
									}
									</style>
                               		
                            
                            	<div id="parent">
                            	<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("fixTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script> 

                            
                       <table id="fixTable"  class="table table-striped table-bordered">
							<thead>
								    <tr>
                                             <c:forEach var="name" items="${columnName}"> 
                                            <th class="filtername">${name.columnName}</th>
									          </c:forEach>
                                   </tr>
							</thead>
							
							<tbody>
 								 <c:forEach var="row" items="${stkList}"> 
                                <tr>
                                   <c:if test="${columnName.size() >= 1}"><td>${row.attr1}</td></c:if>
                                   <c:if test="${columnName.size() >= 2}"><td>${row.attr2}</td></c:if>
                                   <c:if test="${columnName.size() >= 3}"><td>${row.attr3}</td></c:if>
                                   <c:if test="${columnName.size() >= 4}"><td>${row.attr4}</td></c:if>
                                   <c:if test="${columnName.size() >= 5}"><td>${row.attr5}</td></c:if>
                                    
                                     <c:if test="${columnName.size() >= 6}"><td>
                                   <c:if test="${row.attr6 == 'P'}"><p class="label label-success">${row.attr6}</p> </c:if>
                                    <c:if test="${row.attr6 == 'A'}"><p class="label label-danger">${row.attr6}</p></c:if>
                                     <c:if test="${row.attr6 == 'Lt'}"><p class="label label-warning">${row.attr6}</p></c:if>
                                     <c:if test="${row.attr6 == 'HD'}"><p class="label label-info">${row.attr6}</p></c:if>
                                      <c:if test="${row.attr6 == 'WO'}"><p class="label label-default">${row.attr6}</p></c:if>
                                      <c:if test="${row.attr6 == 'L'}"><p class="label label-primary">${row.attr6}</p></c:if>
                                    </td></c:if>
                                    <c:if test="${columnName.size() >= 7}"><td>
                                   
                                   <c:if test="${row.attr7 == 'P'}"><p class="label label-success">${row.attr7}</p> </c:if>
                                    <c:if test="${row.attr7 == 'A'}"><p class="label label-danger">${row.attr7}</p></c:if>
                                     <c:if test="${row.attr7 == 'Lt'}"><p class="label label-warning">${row.attr7}</p></c:if>
                                     <c:if test="${row.attr7 == 'HD'}"><p class="label label-info">${row.attr7}</p></c:if>
                                      <c:if test="${row.attr7 == 'WO'}"><p class="label label-default">${row.attr7}</p></c:if>
                                       <c:if test="${row.attr7 == 'L'}"><p class="label label-primary">${row.attr7}</p></c:if>
                                    </td></c:if>
                                    <c:if test="${columnName.size() >= 8}"><td>
                                     <c:if test="${row.attr8 == 'P'}"><p class="label label-success">${row.attr8}</p></c:if>
                                    <c:if test="${row.attr8 == 'A'}"><p class="label label-danger">${row.attr8}</p></c:if>
                                     <c:if test="${row.attr8 == 'Lt'}"><p class="label label-warning">${row.attr8}</p></c:if>
                                     <c:if test="${row.attr8 == 'HD'}"><p class="label label-info">${row.attr8}</p></c:if>
                                     <c:if test="${row.attr8 == 'WO'}"><p class="label label-default">${row.attr8}</p></c:if>
                                      <c:if test="${row.attr8 == 'L'}"><p class="label label-primary">${row.attr8}</p></c:if>
                                    </td></c:if>
                                     <c:if test="${columnName.size() >= 9}"><td>
                                      <c:if test="${row.attr9 == 'P'}"><p class="label label-success">${row.attr9}</p></c:if>
                                    <c:if test="${row.attr9 == 'A'}"><p class="label label-danger">${row.attr9}</p></c:if>
                                     <c:if test="${row.attr9 == 'Lt'}"><p class="label label-warning">${row.attr9}</p></c:if>
                                     <c:if test="${row.attr9 == 'HD'}"><p class="label label-info">${row.attr9}</p></c:if>
                                     <c:if test="${row.attr9 == 'WO'}"><p class="label label-default">${row.attr9}</p></c:if>
                                      <c:if test="${row.attr9 == 'L'}"><p class="label label-primary">${row.attr9}</p></c:if>
                                     </td></c:if>
                                   <c:if test="${columnName.size() >= 10}"><td>
                                   <c:if test="${row.attr10 == 'P'}"><p class="label label-success">${row.attr10}</p></c:if>
                                    <c:if test="${row.attr10 == 'A'}"><p class="label label-danger">${row.attr10}</p></c:if>
                                     <c:if test="${row.attr10 == 'Lt'}"><p class="label label-warning">${row.attr10}</p></c:if>
                                     <c:if test="${row.attr10 == 'HD'}"><p class="label label-info">${row.attr10}</p></c:if>
                                     <c:if test="${row.attr10 == 'WO'}"><p class="label label-default">${row.attr10}</p></c:if>
                                      <c:if test="${row.attr10 == 'L'}"><p class="label label-primary">${row.attr10}</p></c:if>
                                   </td></c:if>
                                    <c:if test="${columnName.size() >= 11}"><td>
                                    <c:if test="${row.attr11 == 'P'}"><p class="label label-success">${row.attr11}</p></c:if>
                                    <c:if test="${row.attr11 == 'A'}"><p class="label label-danger">${row.attr11}</p></c:if>
                                     <c:if test="${row.attr11 == 'Lt'}"><p class="label label-warning">${row.attr11}</p></c:if>
                                     <c:if test="${row.attr11 == 'HD'}"><p class="label label-info">${row.attr11}</p></c:if>
                                     <c:if test="${row.attr11 == 'WO'}"><p class="label label-default">${row.attr11}</p></c:if>
                                      <c:if test="${row.attr11 == 'L'}"><p class="label label-primary">${row.attr11}</p></c:if>
                                    </td></c:if>
                                     <c:if test="${columnName.size() >= 12}"><td>
                                     <c:if test="${row.attr12 == 'P'}"><p class="label label-success">${row.attr12}</p></c:if>
                                    <c:if test="${row.attr12 == 'A'}"><p class="label label-danger">${row.attr12}</p></c:if>
                                     <c:if test="${row.attr12 == 'Lt'}"><p class="label label-warning">${row.attr12}</p></c:if>
                                     <c:if test="${row.attr12 == 'HD'}"><p class="label label-info">${row.attr12}</p></c:if>
                                     <c:if test="${row.attr12 == 'WO'}"><p class="label label-default">${row.attr12}</p></c:if>
                                      <c:if test="${row.attr12 == 'L'}"><p class="label label-primary">${row.attr12}</p></c:if>
                                     </td></c:if>
                                     <c:if test="${columnName.size() >= 13}"><td>
                                    <c:if test="${row.attr13 == 'P'}"><p class="label label-success">${row.attr13}</p></c:if>
                                    <c:if test="${row.attr13 == 'A'}"><p class="label label-danger">${row.attr13}</p></c:if>
                                     <c:if test="${row.attr13 == 'Lt'}"><p class="label label-warning">${row.attr13}</p></c:if>
                                     <c:if test="${row.attr13 == 'HD'}"><p class="label label-info">${row.attr13}</p></c:if>
                                     <c:if test="${row.attr13 == 'WO'}"><p class="label label-default">${row.attr13}</p></c:if>
                                      <c:if test="${row.attr13 == 'L'}"><p class="label label-primary">${row.attr13}</p></c:if>
                                     </td></c:if>
                                      <c:if test="${columnName.size() >= 14}"><td>
                                      <c:if test="${row.attr14 == 'P'}"><p class="label label-success">${row.attr14}</p></c:if>
                                    <c:if test="${row.attr14 == 'A'}"><p class="label label-danger">${row.attr14}</p></c:if>
                                     <c:if test="${row.attr14 == 'Lt'}"><p class="label label-warning">${row.attr14}</p></c:if>
                                     <c:if test="${row.attr14 == 'HD'}"><p class="label label-info">${row.attr14}</p></c:if>
                                     <c:if test="${row.attr14 == 'WO'}"><p class="label label-default">${row.attr14}</p></c:if>
                                      <c:if test="${row.attr14 == 'L'}"><p class="label label-primary">${row.attr14}</p></c:if>
                                      </td></c:if>
                                       <c:if test="${columnName.size() >= 15}"><td>
                                        <c:if test="${row.attr15 == 'P'}"><p class="label label-success">${row.attr15}</p></c:if>
                                    <c:if test="${row.attr15 == 'A'}"><p class="label label-danger">${row.attr15}</p></c:if>
                                     <c:if test="${row.attr15 == 'Lt'}"><p class="label label-warning">${row.attr15}</p></c:if>
                                     <c:if test="${row.attr15 == 'HD'}"><p class="label label-info">${row.attr15}</p></c:if>
                                     <c:if test="${row.attr15 == 'WO'}"><p class="label label-default">${row.attr15}</p></c:if>
                                      <c:if test="${row.attr15 == 'L'}"><p class="label label-primary">${row.attr15}</p></c:if>
                                       </td></c:if>
                                         <c:if test="${columnName.size() >= 16}"><td>
                                          <c:if test="${row.attr16 == 'P'}"><p class="label label-success">${row.attr16}</p></c:if>
                                    <c:if test="${row.attr16 == 'A'}"><p class="label label-danger">${row.attr16}</p></c:if>
                                     <c:if test="${row.attr16 == 'Lt'}"><p class="label label-warning">${row.attr16}</p></c:if>
                                     <c:if test="${row.attr16 == 'HD'}"><p class="label label-info">${row.attr16}</p></c:if>
                                     <c:if test="${row.attr16 == 'WO'}"><p class="label label-default">${row.attr16}</p></c:if>
                                      <c:if test="${row.attr16 == 'L'}"><p class="label label-primary">${row.attr16}</p></c:if>
                                         </td></c:if>
                                          <c:if test="${columnName.size() >= 17}"><td>
                                          <c:if test="${row.attr17 == 'P'}"><p class="label label-success">${row.attr17}</p></c:if>
                                    <c:if test="${row.attr17 == 'A'}"><p class="label label-danger">${row.attr17}</p></c:if>
                                     <c:if test="${row.attr17 == 'Lt'}"><p class="label label-warning">${row.attr17}</p></c:if>
                                     <c:if test="${row.attr17 == 'HD'}"><p class="label label-info">${row.attr17}</p></c:if>
                                     <c:if test="${row.attr17 == 'WO'}"><p class="label label-default">${row.attr17}</p></c:if>
                                      <c:if test="${row.attr17 == 'L'}"><p class="label label-primary">${row.attr17}</p></c:if>
                                          </td></c:if>
                                          <c:if test="${columnName.size() >= 18}"><td>
                                          <c:if test="${row.attr18 == 'P'}"><p class="label label-success">${row.attr18}</p></c:if>
                                    <c:if test="${row.attr18 == 'A'}"><p class="label label-danger">${row.attr18}</p></c:if>
                                     <c:if test="${row.attr18 == 'Lt'}"><p class="label label-warning">${row.attr18}</p></c:if>
                                     <c:if test="${row.attr18 == 'HD'}"><p class="label label-info">${row.attr18}</p></c:if>
                                     <c:if test="${row.attr18 == 'WO'}"><p class="label label-default">${row.attr18}</p></c:if>
                                      <c:if test="${row.attr18 == 'L'}"><p class="label label-primary">${row.attr18}</p></c:if>
                                          </td></c:if>
                                          <c:if test="${columnName.size() >= 19}"><td>
                                           <c:if test="${row.attr19 == 'P'}"><p class="label label-success">${row.attr19}</p></c:if>
                                    <c:if test="${row.attr19 == 'A'}"><p class="label label-danger">${row.attr19}</p></c:if>
                                     <c:if test="${row.attr19 == 'Lt'}"><p class="label label-warning">${row.attr19}</p></c:if>
                                     <c:if test="${row.attr19 == 'HD'}"><p class="label label-info">${row.attr19}</p></c:if>
                                     <c:if test="${row.attr19 == 'WO'}"><p class="label label-default">${row.attr19}</p></c:if>
                                      <c:if test="${row.attr19 == 'L'}"><p class="label label-primary">${row.attr19}</p></c:if>
                                          </td></c:if>
                                          <c:if test="${columnName.size() >= 20}"><td>
                                          <c:if test="${row.attr20 == 'P'}"><p class="label label-success">${row.attr20}</p></c:if>
                                    <c:if test="${row.attr20 == 'A'}"><p class="label label-danger">${row.attr20}</p></c:if>
                                     <c:if test="${row.attr20 == 'Lt'}"><p class="label label-warning">${row.attr20}</p></c:if>
                                     <c:if test="${row.attr20 == 'HD'}"><p class="label label-info">${row.attr20}</p></c:if>
                                     <c:if test="${row.attr20 == 'WO'}"><p class="label label-default">${row.attr20}</p></c:if>
                                      <c:if test="${row.attr20 == 'L'}"><p class="label label-primary">${row.attr20}</p></c:if>
                                          </td></c:if>
                                          <c:if test="${columnName.size() >= 21}"><td>
                                          <c:if test="${row.attr21 == 'P'}"><p class="label label-success">${row.attr21}</p></c:if>
                                    <c:if test="${row.attr21 == 'A'}"><p class="label label-danger">${row.attr21}</p></c:if>
                                     <c:if test="${row.attr21 == 'Lt'}"><p class="label label-warning">${row.attr21}</p></c:if>
                                     <c:if test="${row.attr21 == 'HD'}"><p class="label label-info">${row.attr21}</p></c:if>
                                     <c:if test="${row.attr21 == 'WO'}"><p class="label label-default">${row.attr21}</p></c:if>
                                      <c:if test="${row.attr21 == 'L'}"><p class="label label-primary">${row.attr21}</p></c:if>
                                          </td></c:if>
                                           <c:if test="${columnName.size() >= 22}"><td>
                                           <c:if test="${row.attr22 == 'P'}"><p class="label label-success">${row.attr22}</p></c:if>
                                    <c:if test="${row.attr22 == 'A'}"><p class="label label-danger">${row.attr22}</p></c:if>
                                     <c:if test="${row.attr22 == 'Lt'}"><p class="label label-warning">${row.attr22}</p></c:if>
                                     <c:if test="${row.attr22 == 'HD'}"><p class="label label-info">${row.attr22}</p></c:if>
                                     <c:if test="${row.attr22 == 'WO'}"><p class="label label-default">${row.attr22}</p></c:if>
                                      <c:if test="${row.attr22 == 'L'}"><p class="label label-primary">${row.attr22}</p></c:if>
                                           </td></c:if>
                                            <c:if test="${columnName.size() >= 23}"><td>
                                            <c:if test="${row.attr23 == 'P'}"><p class="label label-success">${row.attr23}</p></c:if>
                                    <c:if test="${row.attr23== 'A'}"><p class="label label-danger">${row.attr23}</p></c:if>
                                     <c:if test="${row.attr23== 'Lt'}"><p class="label label-warning">${row.attr23}</p></c:if>
                                     <c:if test="${row.attr23 == 'HD'}"><p class="label label-info">${row.attr23}</p></c:if>
                                     <c:if test="${row.attr23 == 'WO'}"><p class="label label-default">${row.attr23}</p></c:if>
                                      <c:if test="${row.attr23 == 'L'}"><p class="label label-primary">${row.attr23}</p></c:if>
                                            </td></c:if>
                                             <c:if test="${columnName.size() >= 24}"><td>
                                            <c:if test="${row.attr24 == 'P'}"><p class="label label-success">${row.attr24}</p></c:if>
                                    <c:if test="${row.attr24 == 'A'}"><p class="label label-danger">${row.attr24}</p></c:if>
                                     <c:if test="${row.attr24 == 'Lt'}"><p class="label label-warning">${row.attr24}</p></c:if>
                                     <c:if test="${row.attr24 == 'HD'}"><p class="label label-info">${row.attr24}</p></c:if>
                                     <c:if test="${row.attr24 == 'WO'}"><p class="label label-default">${row.attr24}</p></c:if>
                                      <c:if test="${row.attr24 == 'L'}"><p class="label label-primary">${row.attr24}</p></c:if>
                                             </td></c:if>
                                              <c:if test="${columnName.size() >= 25}"><td>
                                              <c:if test="${row.attr25 == 'P'}"><p class="label label-success">${row.attr25}</p></c:if>
                                    <c:if test="${row.attr25 == 'A'}"><p class="label label-danger">${row.attr25}</p></c:if>
                                     <c:if test="${row.attr25 == 'Lt'}"><p class="label label-warning">${row.attr25}</p></c:if>
                                     <c:if test="${row.attr25 == 'HD'}"><p class="label label-info">${row.attr25}</p></c:if>
                                     <c:if test="${row.attr25 == 'WO'}"><p class="label label-default">${row.attr25}</p></c:if>
                                      <c:if test="${row.attr25 == 'L'}"><p class="label label-primary">${row.attr25}</p></c:if>
                                              </td></c:if>
                                               <c:if test="${columnName.size() >= 26}"><td>
                                              <c:if test="${row.attr26 == 'P'}"><p class="label label-success">${row.attr25}</p></c:if>
                                    <c:if test="${row.attr26 == 'A'}"><p class="label label-danger">${row.attr26}</p></c:if>
                                     <c:if test="${row.attr26 == 'Lt'}"><p class="label label-warning">${row.attr26}</p></c:if>
                                     <c:if test="${row.attr26 == 'HD'}"><p class="label label-info">${row.attr26}</p></c:if>
                                     <c:if test="${row.attr26 == 'WO'}"><p class="label label-default">${row.attr26}</p></c:if>
                                      <c:if test="${row.attr26 == 'L'}"><p class="label label-primary">${row.attr26}</p></c:if>
                                               </td></c:if>
                                                <c:if test="${columnName.size() >= 27}"><td>
                                                <c:if test="${row.attr27 == 'P'}"><p class="label label-success">${row.attr27}</p></c:if>
                                    <c:if test="${row.attr27 == 'A'}"><p class="label label-danger">${row.attr27}</p></c:if>
                                     <c:if test="${row.attr27 == 'Lt'}"><p class="label label-warning">${row.attr27}</p></c:if>
                                     <c:if test="${row.attr27 == 'HD'}"><p class="label label-info">${row.attr27}</p></c:if>
                                     <c:if test="${row.attr27 == 'WO'}"><p class="label label-default">${row.attr27}</p></c:if>
                                      <c:if test="${row.attr27 == 'L'}"><p class="label label-primary">${row.attr27}</p></c:if>
                                                </td></c:if>
                                                 <c:if test="${columnName.size() >= 28}"><td>
                                                 <c:if test="${row.attr28 == 'P'}"><p class="label label-success">${row.attr28}</p></c:if>
                                    <c:if test="${row.attr28 == 'A'}"><p class="label label-danger">${row.attr28}</p></c:if>
                                     <c:if test="${row.attr28 == 'Lt'}"><p class="label label-warning">${row.attr28}</p></c:if>
                                     <c:if test="${row.attr28 == 'HD'}"><p class="label label-info">${row.attr28}</p></c:if>
                                     <c:if test="${row.attr28 == 'WO'}"><p class="label label-default">${row.attr28}</p></c:if>
                                      <c:if test="${row.attr28 == 'L'}"><p class="label label-primary">${row.attr28}</p></c:if>
                                                 </td></c:if>
                                                  <c:if test="${columnName.size() >= 29}"><td>
                                                 <c:if test="${row.attr29 == 'P'}"><p class="label label-success">${row.attr29}</p></c:if>
                                    <c:if test="${row.attr29 == 'A'}"><p class="label label-danger">${row.attr29}</p></c:if>
                                     <c:if test="${row.attr29 == 'Lt'}"><p class="label label-warning">${row.attr29}</p></c:if>
                                     <c:if test="${row.attr29 == 'HD'}"><p class="label label-info">${row.attr29}</p></c:if>
                                     <c:if test="${row.attr29 == 'WO'}"><p class="label label-default">${row.attr29}</p></c:if>
                                      <c:if test="${row.attr29 == 'L'}"><p class="label label-primary">${row.attr29}</p></c:if>
                                                  </td></c:if>
                                                   <c:if test="${columnName.size() >= 30}"><td>
                                                   <c:if test="${row.attr30 == 'P'}"><p class="label label-success">${row.attr30}</p></c:if>
                                    <c:if test="${row.attr30 == 'A'}"><p class="label label-danger">${row.attr30}</p></c:if>
                                     <c:if test="${row.attr30 == 'Lt'}"><p class="label label-warning">${row.attr30}</p></c:if>
                                     <c:if test="${row.attr30 == 'HD'}"><p class="label label-info">${row.attr30}</p></c:if>
                                     <c:if test="${row.attr30 == 'WO'}"><p class="label label-default">${row.attr30}</p></c:if>
                                      <c:if test="${row.attr30 == 'L'}"><p class="label label-primary">${row.attr30}</p></c:if>
                                                   </td></c:if>
                                                     <c:if test="${columnName.size() >= 31}"><td>
                                  <c:if test="${row.attr31 == 'P'}"><p class="label label-success">${row.attr31}</p></c:if>
                                    <c:if test="${row.attr31 == 'A'}"><p class="label label-danger">${row.attr31}</p></c:if>
                                     <c:if test="${row.attr31 == 'Lt'}"><p class="label label-warning">${row.attr31}</p></c:if>
                                     <c:if test="${row.attr31 == 'HD'}"><p class="label label-info">${row.attr31}</p></c:if>
                                     <c:if test="${row.attr31 == 'WO'}"><p class="label label-default">${row.attr31}</p></c:if>
                                      <c:if test="${row.attr31 == 'L'}"><p class="label label-primary">${row.attr31}</p></c:if>
                                   </td></c:if>
                                   <c:if test="${columnName.size() >= 32}"><td>
                                   <c:if test="${row.attr32 == 'P'}"><p class="label label-success">${row.attr32}</p></c:if>
                                    <c:if test="${row.attr32 == 'A'}"><p class="label label-danger">${row.attr32}</p></c:if>
                                     <c:if test="${row.attr32 == 'Lt'}"><p class="label label-warning">${row.attr32}</p></c:if>
                                     <c:if test="${row.attr32 == 'HD'}"><p class="label label-info">${row.attr32}</p></c:if>
                                     <c:if test="${row.attr32 == 'WO'}"><p class="label label-default">${row.attr32}</p></c:if>
                                      <c:if test="${row.attr32 == 'L'}"><p class="label label-primary">${row.attr32}</p></c:if>
                                   </td></c:if>
                                   <c:if test="${columnName.size() >= 33}"><td>
                                 	<c:if test="${row.attr33 == 'P'}"><p class="label label-success">${row.attr33}</p></c:if>
                                    <c:if test="${row.attr33 == 'A'}"><p class="label label-danger">${row.attr33}</p></c:if>
                                     <c:if test="${row.attr33 == 'Lt'}"><p class="label label-warning">${row.attr33}</p></c:if>
                                     <c:if test="${row.attr33 == 'HD'}"><p class="label label-info">${row.attr33}</p></c:if>
                                     <c:if test="${row.attr33 == 'WO'}"><p class="label label-default">${row.attr33}</p></c:if>
                                      <c:if test="${row.attr33 == 'L'}"><p class="label label-primary">${row.attr33}</p></c:if>
                                   </td></c:if>
                                   <c:if test="${columnName.size() >= 34}"><td>
                                    <c:if test="${row.attr34 == 'P'}"><p class="label label-success">${row.attr34}</p></c:if>
                                    <c:if test="${row.attr34 == 'A'}"><p class="label label-danger">${row.attr34}</p></c:if>
                                     <c:if test="${row.attr34 == 'Lt'}"><p class="label label-warning">${row.attr34}</p></c:if>
                                     <c:if test="${row.attr34 == 'HD'}"><p class="label label-info">${row.attr34}</p></c:if>
                                     <c:if test="${row.attr34 == 'WO'}"><p class="label label-default">${row.attr34}</p></c:if>
                                      <c:if test="${row.attr34 == 'L'}"><p class="label label-primary">${row.attr34}</p></c:if>
                                   </td></c:if>
                                    <c:if test="${columnName.size() >= 35}"><td>
                                    <c:if test="${row.attr35 == 'P'}"><p class="label label-success">${row.attr35}</p></c:if>
                                    <c:if test="${row.attr35 == 'A'}"><p class="label label-danger">${row.attr35}</p></c:if>
                                     <c:if test="${row.attr35 == 'Lt'}"><p class="label label-warning">${row.attr35}</p></c:if>
                                     <c:if test="${row.attr35 == 'HD'}"><p class="label label-info">${row.attr35}</p></c:if>
                                     <c:if test="${row.attr35 == 'WO'}"><p class="label label-default">${row.attr35}</p></c:if>
                                      <c:if test="${row.attr35 == 'L'}"><p class="label label-primary">${row.attr35}</p></c:if>
                                   </td></c:if>
                                    <c:if test="${columnName.size() >= 36}"><td>
                                    <c:if test="${row.attr36 == 'P'}"><p class="label label-success">${row.attr36}</p></c:if>
                                    <c:if test="${row.attr36 == 'A'}"><p class="label label-danger">${row.attr36}</p></c:if>
                                     <c:if test="${row.attr36 == 'Lt'}"><p class="label label-warning">${row.attr36}</p></c:if>
                                     <c:if test="${row.attr36 == 'HD'}"><p class="label label-info">${row.attr36}</p></c:if>
                                     <c:if test="${row.attr36 == 'WO'}"><p class="label label-default">${row.attr36}</p></c:if>
                                      <c:if test="${row.attr36 == 'L'}"><p class="label label-primary">${row.attr36}</p></c:if>
                                    </td></c:if>
                                   <%-- <c:if test="${columnName.size() >= 36}"><td>${row.attr36}</td></c:if> --%>
                                    <%-- <c:if test="${columnName.size() >= 37}"><td>${row.attr37}</td></c:if>
                                     <c:if test="${columnName.size() >= 38}"><td>${row.attr38}</td></c:if> --%>
            </tr></c:forEach>
                                        </tbody>
							</table> 
							<button id="donwload">Download</button>
							
							<script src="resources/HR/additionalexcel/jquery.table2excel.js"></script>
							<script>
      	// button click
      	$('#donwload').on('click',function(){
      		// get the table id
      		$("#fixTable").table2excel();
      	});
      </script>
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
        
        
	<!-- jQuery  -->
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	
        <!-- Datatable init js -->
        <script src="resources/HR/pages/datatables.init.js"></script>

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
        
        
         <script src="resources/HR/plugins/moment/moment.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/x-editable/dist/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
        <script type="text/javascript" src="resources/HR/pages/jquery.xeditable.js"></script>
        
        
        <!-- Plugins Js -->
        <script src="resources/HR/plugins/switchery/switchery.min.js"></script>
        <script src="resources/HR/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="resources/HR/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="resources/HR/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script src="resources/HR/plugins/moment/moment.js"></script>
     	<script src="resources/HR/plugins/timepicker/bootstrap-timepicker.min.js"></script>
     	<script src="resources/HR/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
     	<script src="resources/HR/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="resources/HR/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
        
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
            jQuery('#datepicker-autoclose').datepicker({
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
            	autoclose:true,
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