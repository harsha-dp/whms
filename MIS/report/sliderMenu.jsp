<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
         

<!DOCTYPE html>
<html>
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
<head>
<!-- <title>WElEZO</title> -->
<meta name="viewport" content="width=device-width, initial-scale=.5, maximum-scale=12.0, minimum-scale=.25, user-scalable=yes"/>
<!-- <style>
#left-menu .sub-left-menu a {
    line-height: 15px;
</style> -->
</head>
<body>
	
	 <%
	 String userID = null;
	 String id = null;
	 String roleType = null;
	 Object reportTitle = null;
	 Object empImge = null;
				   String userIDKey = new String("userID");
					 String s = new String("id");
					
				   userID = new String((String)session.getAttribute("USERNAME"));
				 id =(String)session.getAttribute("USERID").toString();
				  roleType = new String((String)session.getAttribute("ROLETYPE"));
				  reportTitle = request.getAttribute("reportTitle");
					
				 String role = new String("roleType");
				   if (session.isNew()){
				      session.setAttribute(userIDKey, userID);
				      session.setAttribute(s, id);
				      session.setAttribute(role, roleType);
				      session.setAttribute("obj", reportTitle);
				   } 
						 %>
						  <%@ page errorPage="/check" %> 
						 <c:set var="role" scope="session" value="<%=reportTitle %>"/>		
						 	 <c:set var="role" scope="session" value="<%=empImge %>"/>	
      <div id="left-menu">
              <div class="sub-left-menu scroll" style="overflow:scroll;">
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    <li class="time">
                      <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">Sat,October 1st 2029</p>
                    </li>
                   </ul>
                   <ul>
                          <c:forEach items="${reportTitle}" var="list">
                          
                          <li><a href="${list.reportLink}">  ${list.reportTitle} </a></li>
                          
                          </c:forEach>
                     
                  
                  </ul>
                </div>
            </div>
</body>
</html>