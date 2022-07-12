<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

	<script src="resources/table/table-jquery-1.11.3.min.js"></script>

    <link href="resources/table/table-jquery.dataTables.css" rel="stylesheet" type="text/css" />
    <script src="resources/table/table-jquery.dataTables.js"></script>

    <link rel="stylesheet" type="text/css" href="resources/table/table-buttons.dataTables.min.css"/>
    
    <script src="resources/table/table-dataTables.buttons.min.js"></script>
    <script src="resources/table/table-buttons.colVis.min.js"></script>
    
<script>
$(document).ready( function () { 
    // Setup - add a text input to each footer cell
    $('#example tfoot th').each( function () {
        var title = $('#example thead th').eq( $(this).index() ).text();
        $(this).html( '<input type="text"  style="font-size : 12px; width: 90%; height: 25px;" placeholder="'+title+'" />' );
    } ); 
  
    var table = $('#example').DataTable({
        dom: 'Bfrtip',
        buttons: [
           {  
              extend: 'colvis',
              text: 'Change Layout',
              collectionLayout: 'fixed three-column'
           }                     
        ]
    });
  

    // Apply the search

    table.columns().every(function () {
        $('input', this.footer()).on('keyup change', function () {
            table.column($(this).parent().index() + ':visible')
                .search(this.value)
                .draw();

        });
    });
});
</script>
</head>

<body>

<div class="container">
      										<table id="example" class="display nowrap" width="100%">
        									<thead>
	                    					<tr>
											<th> Customer Name</th>
											<th>Product Interested</th>
											<th>Channel</th>
											<th>CSR</th>
											<th>Appnt Date</th>
											<th>Appnt Time</th>
											<th>Appnt Type</th>
											<th>Executive</th>
											<th>Status</th>
	                    					</tr>
	                						</thead>
									        <tfoot>
									          <tr>
											<th> Customer Name</th>
											<th>Product Interested</th>
											<th>Channel</th>
											<th>CSR</th>
											<th>Appt Date</th>
											<th>Appt Time</th>
											<th>Appnt Type</th>
											<th>Executive</th>
											<th>Status</th>
	                    					</tr>
									        </tfoot>
											<tbody>
											<c:forEach items="${presalesDetail}" var="presales">
							                	<tr style="display: table-row;">
							                       <%--  <td class="account-id"><a class="sort-value" href="user/1" target="_blank"><c:out value="${presales.leadsId}" /></a></td> --%>
							                        <td><a href="presalesview?leadsId=<c:out value='${presales.leadsId}'/>" ><c:out value="${presales.customerName}" /></a></td>
							                        <%--  <td class="account-name1 sort-value"><c:out value="${presales.address.primaryMob}" /></td> --%>
							                          <td><c:out value="${presales.productIntrested}" /></td>
							                           <td><c:out value="${presales.remark}" /></td>
							                           <td><c:out value="${presales.csr}" /></td>
							                           <td><c:out value="${presales.dateAppointment}" /></td>
							                            <td><c:out value="${presales.timeAppointment}" /></td>
							                             <td><c:out value="${presales.appointmentType}" /></td>
							                           <td><c:out value="${presales.executive}" /></td>
							                           <td><c:out value="${presales.status}" /></td>
							                    </tr>
							            		</c:forEach>  
	                						</tbody>
      										</table>
      										</div>
</body>
</html>
