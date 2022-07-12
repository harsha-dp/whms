<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
 
 <p>EMPLOYEE ATTENDANCE LIST: </p>
 <table border='1'>
 <th>Employee Name</th>
<th>Attendance Mark</th>
<#if employeeAbsenties??>
<#list employeeAbsenties as key>
 <tr>
  <td>${key.empName}</td>
          <td> <#if key.attMark == "Lt">Late
          <#elseif key.attMark =="HD">Half Day
          <#elseif key.attMark=="A">Absent
          <#elseif key.attMark=="L">Leave
          </#if>
          </td>
        </tr>
</#list>
</#if>
   </table>
</div>
<div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br />
<table style="border-top: 1px solid #D3D4DE;">
	<tr>
        <td style="width: 55px; padding-top: 13px;"><a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank"><img src="https://ipmcdn.avast.com/images/icons/icon-envelope-tick-round-orange-animated-no-repeat-v1.gif" alt="" width="46" height="29" style="width: 46px; height: 29px;" /></a></td>
		<td style="width: 470px; padding-top: 12px; color: #41424e; font-size: 13px; font-family: Arial, Helvetica, sans-serif; line-height: 18px;">Virus-free. <a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank" style="color: #4453ea;">www.avast.com</a>
		</td>
	</tr>
</table><a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1" height="1"> </a></div></body>
</html>

