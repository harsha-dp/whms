<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured  CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
         <meta http-equiv="X-UA-Compatible" content="IE=6,IE=7,IE=8,IE=9,IE=10,IE=11 chrome=1"/>
        <meta http-equiv="X-UA-Compatible" content="chrome=1"/>

         <!-- App Favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

        <title>Welezo</title>

        <!-- Treeview css -->
        <link href="resources/HR/plugins/jstree/style.css" rel="stylesheet" type="text/css" />

        <link href="resources/HR/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/core.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/components.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="resources/HR/css/responsive.css" rel="stylesheet" type="text/css" />

       
        <script src="resources/HR/js/modernizr.min.js"></script>


    </head>


    <body>

       <!-- Start menu -->
           <%@ include file="/WEB-INF/jsp/HR/menu.jsp" %>
            <!-- Menu End -->
       


        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">
                            <u><h4 class="header-title m-t-0 m-b-30">WELEZO ORGANIZATIONAL STRUCTURE</h4></u>
                            <div id="checkTree">
                                <ul>
                                    <li>WElEZO
                                        <ul>
                                            <li data-jstree='{"opened":true}'>Admin
                                                <ul>
                                                    <li data-jstree='{"opened":false}'>IT
                                                     <ul>
                                                            <li data-jstree='{"opened":false}'>IT Manager
                                                            <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>D P Harsha</li>
                                                            </ul></li>
                                                            <li data-jstree='{"type":"file"}'>Team Members
                                                            <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>S Srinath</li>
                                                             <li data-jstree='{"type":"file"}'>Lohith V N</li>
                                                              <li data-jstree='{"type":"file"}'>Ankit Monani</li>
                                                               <li data-jstree='{"type":"file"}'>Manjunath</li>
                                                                <li data-jstree='{"type":"file"}'>Kallayya Hiremath</li>
                                                            </ul>
                                                            
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li data-jstree='{"opened":false}'>Accounts
                                                        <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>Accounts Manager</li>
                                                            <li data-jstree='{"type":"file"}'>Others</li>
                                                        </ul>
                                                    </li>
                                                     <li data-jstree='{"opened":false}'>Tele Sales
                                                        <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>Tele Sales Manager</li>
                                                            <li data-jstree='{"type":"file"}'>Team Members</li>
                                                        </ul>
                                                    </li>
                                                    <li data-jstree='{"opened":false}'>HR
                                                        <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>HR Manager</li>
                                                            <li data-jstree='{"type":"file"}'>Team Members</li>
                                                        </ul>
                                                    </li>
                                                    <li data-jstree='{"opened":false}'>Customer Care
                                                        <ul>
                                                            <li data-jstree='{"selected":false,"type":"file"}'>Manager</li>
                                                            <li data-jstree='{"type":"file"}'>Team Members</li>
                                                        </ul>
                                                    </li>
                                                     <li data-jstree='{"opened":true}'>Operation
                                                        <ul>
                                                            <li data-jstree='{"selected":true,"type":"file"}'>Operation Manager</li>
                                                            <li data-jstree='{"type":"file"}'>Team Members</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li data-jstree='{"opened":true}'>Partners
                                                <ul>
                                                    <li data-jstree='{"type":"file"}'>Hospitals</li>
                                                    <li data-jstree='{"type":"file"}'>Pharmacy</li>
                                                </ul>
                                            </li>
                                            <li data-jstree='{"icon":"zmdi zmdi-view-dashboard"}'>Projects
                                            <ul>
                                                    <li data-jstree='{"type":"file"}'>WHMS</li>
                                                    <li data-jstree='{"type":"file"}'>WELEZO APP</li>
                                                    <li data-jstree='{"type":"file"}'>WELEZO Website</li>
                                                </ul>
                                            </li>
                                            <li data-jstree='{"icon":"zmdi zmdi-format-underlined"}'>Applications</li>
                                            <li data-jstree='{"opened":true}'>User Interface
                                                <ul>
                                                    <li data-jstree='{"type":"file"}'>Buttons</li>
                                                    <li data-jstree='{"type":"file"}'>Welezo Cards</li>
                                                </ul>
                                            </li>
                                            <li data-jstree='{"icon":"zmdi zmdi-collection-text"}'>Forms</li>
                                            <li data-jstree='{"icon":"zmdi zmdi-view-list"}'>Tables</li>
                                        </ul>
                                    </li>
                                    <li data-jstree='{"type":"file"}'>Frontend</li>
                                </ul>
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



        <!-- jQuery  -->
        <script src="resources/HR/js/jquery.min.js"></script>
        <script src="resources/HR/js/bootstrap.min.js"></script>
        <script src="resources/HR/js/detect.js"></script>
        <script src="resources/HR/js/fastclick.js"></script>
        <script src="resources/HR/js/jquery.slimscroll.js"></script>
        <script src="resources/HR/js/jquery.blockUI.js"></script>
        <script src="resources/HR/js/waves.js"></script>
        <script src="resources/HR/js/wow.min.js"></script>
        <script src="resources/HR/js/jquery.nicescroll.js"></script>
        <script src="resources/HR/js/jquery.scrollTo.min.js"></script>

        <!-- Tree view js -->
        <script src="resources/HR/plugins/jstree/jstree.min.js"></script>
        <script src="resources/HR/pages/jquery.tree.js"></script>

        <!-- App js -->
        <script src="resources/HR/js/jquery.core.js"></script>
        <script src="resources/HR/js/jquery.app.js"></script>

    </body>
</html>