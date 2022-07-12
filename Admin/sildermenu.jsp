<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
         <%@ page errorPage="/check" %>  

<!DOCTYPE html>
<html>
 <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
 <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
 <meta name="viewport" content="width=device-width, initial-scale=.5, maximum-scale=12.0, minimum-scale=.25, user-scalable=yes"/>


<head>
<style>
 #im{
      color: black;
     /*  background-image: url("resources/images/footer4.jpg"); */
      background-color: #ddd;
     
    } 
    #sidebar-menu > ul > li > a {
    color: black;
    border-top: 1px solid black;
    border-right: 1px solid #71b6f9;
        
    }
    
    .side-menu {
  top: 70px;
  width: 207px;
  z-index: 2;
  background: #ffffff;
  bottom: 50px;
  height: 100%;
  margin-bottom: -70px;
  margin-top: 0px;
  padding-bottom: 70px;
  position: fixed;
   margin-left: -2px;
  box-shadow: 0 0px 24px 0 rgba(0, 0, 0, 0.06), 0 1px 0px 0 rgba(0, 0, 0, 0.02);
}

    .carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img {
    display: block;
    max-width: 100%;
    height: 72px;
    background-color: #ddd;
   
}

.fa-home:before {
    content: "\f015";
    color: #2c84ab;
}

.footer {
   
    bottom: 0px;
    color: #435966;
    text-align: center !important;
    padding: 26px 34px 11px;
    position: absolute;
    right: 0px;
    left: 208px;
   /*  background-image: url(resources/images/footer4.jpg); */
    border-top: 1px solid #6798ca;
    border-bottom: 3px solid #71b6f9;
    background-color: #ddd;
}
.navbar-default {
 background-color: #ddd;
   /*  background-image: url("resources/images/footer4.jpg"); */
    border-radius: 0px;
    border: none;
    color: black;
    border-top: 3px solid #71b6f9;
    border-bottom: 1px solid #6798ca;
}
   
</style>

<!-- <style type="text/css">
.scrollbar
{
	
	width: 207px;
	background: #fff;
	overflow-y: scroll;
	
}
</style> -->
<!-- <style>
.input-sm {
    height: 30px;
    padding: 5px 10px;
    font-size: 12px;
    line-height: 1.5;
    border-radius: 28px;
}
</style> -->
<!-- <script type="text/javascript">
  $(function(){
    $('#input').change(function(){
        var city=($("#browsers option[value='" + $('#input').val() + "']").attr('id'));

        window.location.href = city;

    });
});
</script> -->



   


<script type="text/javascript" src="resources/js/jquery-1.12.4.js"></script>
    <script>
   var jq = $.noConflict();
   //alert(jq().jquery);version to know the script
  jq( function() {
   jq( "#datepicker" ).datepicker();
   jq( "#datepicker1" ).datepicker();
   jq( "#datepicker2" ).datepicker();
   jq( "#datepicker3" ).datepicker();
   jq( "#datepicker3" ).datepicker();
  
   jQuery('#datepicker').datepicker();
   jQuery('#datepicker-autoclose').datepicker({
   	format: 'dd/mm/yyyy',
       autoclose: true,
       todayHighlight: true
   });
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
   jQuery('#datepicker-autoclose1').datepicker({
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
   jQuery('#datepicker').datepicker();
   jQuery('#datepickerautoclose4').datepicker({
   	format: 'dd/mm/yyyy',
       autoclose: true,
       todayHighlight: true,
       changeMonth: true,
       changeYear: true
   });
  } );
  </script>




</head>
<body>
 
	 <%
	 String userID = null;
	 String id = null;
	 String roleType = null;
	 Object userAccessModule = null;
	 Object empImge = null;
	 Object roleAccess = null;
				   String userIDKey = new String("userID");
					 String s = new String("id");
					
				   userID = new String((String)session.getAttribute("USERNAME"));
				 id =(String)session.getAttribute("USERID").toString();
				  roleType = new String((String)session.getAttribute("ROLETYPE"));
				  userAccessModule = request.getAttribute("userAccessModule");
				  roleAccess = request.getAttribute("roleAccess");
					
				 String role = new String("roleType");
				   if (session.isNew()){
				      session.setAttribute(userIDKey, userID);
				      session.setAttribute(s, id);
				      session.setAttribute(role, roleType);
				      session.setAttribute("obj", userAccessModule);
				      session.setAttribute("roles", roleAccess);
				   } 
						 %>
						  <c:set var="role" scope="session" value="<%=empImge %>"/>	
						
						 <%@ page errorPage="/check" %> 
            <!-- ========== Left Sidebar Start ========== -->
       <div class="left side-menu" id="im">
            
           
            
            <div>
				     <input type="text"  list="browsers" id="input" class="form-control input-sm" placeholder="search.." style="border-radius: 19px; margin-top: 10px;background-color: #eaeaea;">
          <script language="JavaScript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
     
              <script type="text/javascript">
var jq = $.noConflict();
jq(function(){
       jq('#input').change(function(){
        var city=(jq("#browsers option[value='" + jq('#input').val() + "']").attr('id'));

        window.location.href = city;

    });
});
  
</script>

                    <datalist id="browsers">
<c:forEach items="${userAccessModule}" var="module">
  <option id="${module.moduleLink}" value="${module.moduleName}"></option>
  </c:forEach>
</datalist>
</div>
           
                <div class="sidebar-inner" style="overflow: auto;">

                    <!-- User -->
                   <%--  <div class="user-box">
                        <div class="user-img">
                    x        <img src="data:image/png;base64,${empImge1}" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                            <div class="user-status offline"></div>
                        </div>
                        <h6><a href="#">${USERNAME} </a> </h6>
                        <ul class="list-inline">
                            <li>
                                <a href="#" >
                                    <i class="zmdi zmdi-settings"></i>
                                </a>
                            </li>
                        </ul>
                    </div> --%>
                    <!-- End User -->
                    

                    <!--- Sidemenu -->
                    
                    <div id="sidebar-menu" >
                        <ul>
                        	
                            <li>
                                <a href="moduleAccess?userId=<c:out value="${USERID}" />"><i class="fa fa-unlock"></i><span>Module Access</span><span class="menu-arrow"></span></a>
                           </li>      

 <c:set var="role" scope="session" value="<%=userAccessModule %>"/>
                     
                      <c:forEach items="${userAccessModule}" var="module">
                          
                            <li>
                          <c:if test="${module.moduleName ne 'Additional' && module.moduleName ne 'Tracker' && module.moduleName ne 'Corporate'}">
                              <a href="${module.moduleLink}" ><i class="${module.icon}"></i><span> ${module.moduleName}</span><span class="menu-arrow"></span></a> 
                            </c:if> 
                            </li>
                            
                            <c:if test="${module.moduleName == 'Tracker'}">
                             <li>
			                 <a href="viewDetails3?userId=<c:out value="${USERID}" />"><i class="fa fa-binoculars"></i> <span>Tracker</span> <span class="menu-arrow"></span></a>
                            </li>
                            </c:if>  
                            
                           
                             
                             <c:if test="${module.moduleName == 'Additional'}">
                         <li>
                                <a href="javascript:void(0);" class="waves-effect"><u><i class="fa fa-plus-square"></i> <span>${module.moduleName}</span></u> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                     <li><a href="performanceMgr?userId=<c:out value="${USERID}" />"><b>Employee Evaluation</b></a></li>
                                     <li><a href="viewGoals?userId=<c:out value="${USERID}" />"><b>View Goal</b></a></li>
                                    <li><a href="viewLeaveslist?userId=<c:out value="${USERID}" /> "><b>View Leaves</b><span class="badge">${leavesCountByreportId.leaveCount}</span></a></li>
                                     <li><a href="viewMeeting?userId=<c:out value="${USERID}" />">Meeting</a></li>
                                </ul>
                            </li>
                         
                        </c:if>   
                      
                       <c:if test="${module.moduleName == 'Corporate'}">
                      <li>
			          <a href="corporateDashBoard?userId=<c:out value="${USERID}" />"><i class="fa fa-briefcase" ></i> <span>Corporate</span> <span class="menu-arrow"></span></a>
                      </li>
                      </c:if>  
                         </c:forEach>  
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                 
                    <!-- Sidebar -->
                    <div class="clearfix"></div>
                </div>
            </div>
            
 <!--  <script type="text/javascript" src="resources/js/jquery-1.12.4.js"></script>
   <script language="JavaScript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script> -->
 
</body>
</html>