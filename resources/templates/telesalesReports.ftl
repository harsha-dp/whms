<!DOCTYPE html>
<html>
<head>
  <title>WHMS REPORT</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #B7CAC9;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: #97A08B;
    color: white;
}
</style>
</head>
<body>

<div class="container">
</div>


<div class="container">
<#if sizeOfTodayAppt gt 1>
 <p><u> Today Total Appointment(${ToDate}): </u></p>
 <table id="t01" >
 <th>Employee Name</th>
 <th>Total Appointment</th>
<th>Fresh</th>
<th>Follow Up</th>
<th>Meeting</th>
<th>Collection</th>
<th>Not Interested</th>
<th>Rescheduled</th>
<th>New Appointment</th>


<#list apptList as key>
 <tr>
          <td> ${key.CSR} </td>
        <td>${key.TotalAppts}</td>
        <td> ${key.Fresh} </td>
        <td> ${key.FollowUp} </td>
          <td> ${key.Meetings} </td>
           <td> ${key.Collections} </td>
            <td> ${key.NotInterested} </td>
             <td> ${key.Rescheduled} </td>
              <td> ${key.New} </td>
        </tr>
</#list>
   </table>
</#if>
  
</div>
<br/>
<div class="container">
<#if sizeOfTomorriwAppt gt 1>
 <p><u>Tomorrow Total Appointment(${TomorrowDate}): </u></p>
 <table id="t01">
 <th>Employee Name</th>
 <th>Total Appointment</th>
<th>Fresh</th>
<th>Follow Up</th>
<th>Meeting</th>
<th>Collection</th>
<th>Not Interested</th>
<th>Rescheduled</th>
<th>New Appointment</th>


<#list tomorrowAppt as key>
 <tr>
          <td> ${key.CSR} </td>
        <td>${key.TotalAppts}</td>
        <td> ${key.Fresh} </td>
        <td> ${key.FollowUp} </td>
          <td> ${key.Meetings} </td>
           <td> ${key.Collections} </td>
            <td> ${key.NotInterested} </td>
             <td> ${key.Rescheduled} </td>
              <td> ${key.New} </td>
        </tr>
</#list>
   </table>
</#if>
  
</div>
<br/>
<div class="container">

 <p><u>Today Total Calls Report(${ToDate}): </u></p>
 <br/>
 <table id="t01">
 <th>Employee Name</th>
 <th>Total calls</th>
<th>Total Duration</th>
<th>calls< 30Sec</th>
<th>Calls< 3Min</th>
<th>Callsn3 To 5Min</th>
<th>Calls 5 To 7Min</th>
<th>Calls > 7Min</th>


<#if sizeOfTodayHealthAppt gt 1>
<#list callsReport as key>
 <tr>
          <td> ${key.CSRName} </td>
        <td>${key.TotalCalls}</td>
        <td> ${key.TotalDuration} </td>
        <td> ${key.Calls30Sec} </td>
          <td> ${key.Calls3Min} </td>
           <td> ${key.Calls3To5Min} </td>
            <td> ${key.Calls5To7Min} </td>
             <td> ${key.Calls7Min} </td>
        </tr>
</#list>
</#if>
   </table>
  
</div>
<br/>
<div class="container">
<#if sizeOfTodayHealthAppt gt 1>
 <p><u>TODAY HEALTH APPOINTMENT SUMMARY(${ToDate})</u></p>

 <table id="t01">
 <th>Appointment Date</th>
 <th>Total Appointments</th>
<th>Dentistry</th>
<th>Consultation</th>
<th>MHC</th>
<th>EHC</th>
<th>TWC</th>
<th>WWHC</th>
<th>SCHC</th>
<th>PHC-Women</th>
<th>PHC-Men</th>
<th>WBC</th>
<th>WEC</th>
<th>WMC</th>


<#list todayHealthApptList as appt>
 <tr>
          <td> ${appt.AppointmentDate} </td>
        <td>${appt.TotalAppointments}</td>
        <td>${appt.Dentistry} </td>
        <td>${appt.Consultation} </td>
          <td> ${appt.MHC} </td>
           <td> ${appt.EHC} </td>
            <td> ${appt.TWC} </td>
             <td> ${appt.WWHC} </td>
             <td> ${appt.SCHC} </td>
             <td> ${appt.PHCWomen} </td>
             <td> ${appt.PHCMen} </td>
             <td> ${appt.WBC} </td>
             <td> ${appt.WEC} </td>
             <td> ${appt.WMC} </td>
        </tr>
</#list>
   </table>
</#if>
  
</div>
<div class="container">
<#if sizeOfTomorrowHealthAppt gt 1>
 <p><u>TOMORROW HEALTH APPOINTMENT SUMMARY(${TomorrowDate})</u></p>

 <table id="t01">
 <th>Appointment Date</th>
 <th>Total Appointments</th>
<th>Dentistry</th>
<th>Consultation</th>
<th>MHC</th>
<th>EHC</th>
<th>TWC</th>
<th>WWHC</th>
<th>SCHC</th>
<th>PHC-Women</th>
<th>PHC-Men</th>
<th>WBC</th>
<th>WEC</th>
<th>WMC</th>


<#list tomorowHealthApptList as appt>
 <tr>
          <td> ${appt.AppointmentDate} </td>
        <td>${appt.TotalAppointments}</td>
        <td>${appt.Dentistry} </td>
        <td>${appt.Consultation} </td>
          <td> ${appt.MHC} </td>
           <td> ${appt.EHC} </td>
            <td> ${appt.TWC} </td>
             <td> ${appt.WWHC} </td>
             <td> ${appt.SCHC} </td>
             <td> ${appt.PHCWomen} </td>
             <td> ${appt.PHCMen} </td>
             <td> ${appt.WBC} </td>
             <td> ${appt.WEC} </td>
             <td> ${appt.WMC} </td>
        </tr>
</#list>
   </table>
</#if>
  
</div>
<div class="container">
 <p><u>Sales Report(${firstDate}-${ToDate}):</u> </p>
 <table id="t01">
 
 <th>Employee Name</th>
<th>Total Revenue</th>
<th>Total Sales</th>
<th>Ticket Size</th>

<#if salesReport??>
<#list salesReport as key>
 <tr>
         
        <td>${key.csrName}</td>
        <td> ${key.Revenue} </td>
        <td> ${key.Sales} </td>
          <td> ${key.TicketSize} </td>
        </tr>
</#list>
</#if>
   </table>
  
</div>
<br/>
<div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br />
<table style="border-top: 1px solid #D3D4DE;">
	<tr>
        <td style="width: 55px; padding-top: 13px;"><a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank"><img src="https://ipmcdn.avast.com/images/icons/icon-envelope-tick-round-orange-animated-no-repeat-v1.gif" alt="" width="46" height="29" style="width: 46px; height: 29px;" /></a></td>
		<td style="width: 470px; padding-top: 12px; color: #41424e; font-size: 13px; font-family: Arial, Helvetica, sans-serif; line-height: 18px;">Virus-free. <a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank" style="color: #4453ea;">www.avast.com</a>
		</td>
	</tr>
</table><a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1" height="1"> </a></div></body>
</html>

