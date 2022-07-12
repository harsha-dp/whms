   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
    <c:catch var ="catchtheException">  
      <%
	 String userID = null;
	 String id = null;
	 String roleType = null;
	 Object userAccessModule = null;
				   String userIDKey = new String("userID");
					 String s = new String("id");
					
				   userID = new String((String)session.getAttribute("USERNAME"));
				 id =(String)session.getAttribute("USERID").toString();
				  roleType = new String((String)session.getAttribute("ROLETYPE"));
				  userAccessModule = request.getAttribute("userAccessModule");
					
				 String role = new String("roleType");
				   if (session.isNew()){
				      session.setAttribute(userIDKey, userID);
				      session.setAttribute(s, id);
				      session.setAttribute(role, roleType);
				      session.setAttribute("obj", userAccessModule);
				   } 
						 %>
    
    </c:catch> 
   <head>
   <style>
   .logo {
    color: #f9f2f2 !important;
    font-size: 32px;
    margin-top: 0px
    }
    
div.scrollmenu {
    background-color: white;
    overflow: auto;
    white-space: nowrap;
}

div.scrollmenu a {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 17px;
    text-decoration: none;
}

 div.scrollmenu a:hover {
    background-color: #E6E6FA;
} 
</style>
<style>
.button {
    background-color: #f0ad4e; /* Green */
    border: none;
    color: white;
    padding: 12px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 15px 2px 2px;
    cursor: pointer;
}
.button5 {border-radius: 50%;}
</style>
   </head>
        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container">
                
              <!--   <div class="row">
                    <div class="col-lg-3 col-md-12">
                 -->
                    <!-- LOGO -->
                    <div class="topbar-left">
                      <a href="welezouser_dashboard" class="logo">   <img src="./resources/HR/images/newlogo.png" height="45px" width="100px" alt="user-img" ></a>
                     
                    
                     <!--  <a href="index.html" class="logo"><span>Welezo<span></span></span></a> -->
                     </div>
                    <!-- End Logo container-->

					<!-- </div> -->
					
					<!--  <div class="col-lg-9 col-md-12"> -->
                    <div class="menu-extras">

                        <ul class="nav navbar-nav navbar-right pull-right">
                           

                            <li class="dropdown user-box">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile " data-toggle="dropdown" aria-expanded="true">
                                	 <c:out value="${USERNAME}"></c:out>
                                    <img src="./resources/HR/images/admin.png" alt="user-img" class="img-circle user-img">
                                    <div class="user-status away"></div>
                                </a>

                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"><i class="ti-user m-r-5"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-settings m-r-5"></i> Settings</a></li>
                                    <li><a href="Lockscreen"><i class="ti-lock m-r-5"></i> Lock screen</a></li>
                                    <li><a href="logout?userId=<c:out value="1" />"><i class="ti-power-off m-r-5"></i> Logout</a></li>
                                </ul>
                            </li>
                            
                           <!--  <li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="fa fa-undo" aria-hidden="true"> </i>
								</button>
             </li> -->
                            
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right" style="font-size:1vw;">
								<li>
              <button type="button" class="button button5 btn-responsive btn-sm" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="glyphicon glyphicon-arrow-left" aria-hidden="true"> </i>
								</button>
             </li>
					</ul>
                        
                         <div class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </div>
                        
                    </div>
                    </div>
</div>
               
               
          <div class="navbar-custom">
                <div class="container">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                           <div class="scrollmenu">
                            <li class="active">
                                <a href="homeHr"><i class="fa fa-home" aria-hidden="true"></i></a>
                                
                                
                             <c:forEach items="${userAccessModule}" var="module">
                            
                            <c:if test="${module.category == 'HR'|| module.category == 'Recruitment'}">
                                <a href="${module.moduleLink}" > <span> ${module.moduleName}</span></a>
                          </c:if>
                    </c:forEach>
                            </li>
                    </div>
                           
                     
            <%--  <c:set var="role" scope="session" value="<%=userAccessModule %>"/> --%>
           <%--  <li>
             <div class="scrollmenu">
                      <c:forEach items="${userAccessModule}" var="module">
                            
                        <c:if test="${module.category == 'HR'|| module.category == 'Recruitment'}">
                                <a href="${module.moduleLink}" > <span> ${module.moduleName}</span></a>
                    </c:if>
                    </c:forEach>
                    </div>
                    </li> --%>
                     
                    
                            </ul>
                     
                    </div>
                </div>
            </div>
        </header>
        <!-- End Navigation Bar-->