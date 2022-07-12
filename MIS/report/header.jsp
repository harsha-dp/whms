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
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {border-radius: 50%;}
</style>
</head>
<body>
	
				
<nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-open">
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <a href="welezouser_dashboard" class="navbar-brand"> 
                 <b>WELEZO-MIS</b>
                </a>

             
              <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span>${USERNAME}</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="data:image/png;base64,${empImge1}" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown">
                     <li><a href="userProfile?userId=<c:out value="${USERID}" />"><span class="fa fa-user"></span> My Profiles</a></li>
                     <li><a href="#"><span class="fa fa-calendar"></span> My Calendars</a></li>
                     <li role="separator" class="divider"></li>
                     <li class="more">
                      <ul>
                        <li><a href=""><span class="fa fa-cogs"></span></a></li>
                        <li><a href="Lockscreen"><span class="fa fa-lock"></span></a></li>
                        <li><a href="logout?userId=<c:out value="${USERID}" />"><span class="fa fa-power-off "></span></a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li>
              <button type="button" class="button button5" value=" Go Back !" 
									onclick="history.back(-1)">
									<i class="fa fa-undo" aria-hidden="true"> </i>
								</button>
             </li>
               <!--  <li ><a href="#" class="opener-right-menu"><span class="fa fa-coffee"></span></a></li> -->
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->
      
</body>
</html>