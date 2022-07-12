<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="description" content="Miminium Admin Template v.1">
  <meta name="author" content="Isna Nur Azis">
  <meta name="keyword" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WELEZO</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/animate.min.css"/>
  <link href="resources/reportMIS/asset/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="resources/reportMIS/asset/css/plugins/spinkit.css"/>
  <!-- end: Css -->

      <link rel="shortcut icon" href="resources/images/favicon.ico">
</head>

<body id="mimin" class="dashboard">
      <!-- start: Header -->
     <%@ include file="header.jsp" %>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
      <%@ include file="sliderMenu.jsp" %>       
          <!-- end: Left Menu -->

          <!-- start: Content -->
          <div id="content">
            <div class="notifications-wrapper text-center">

              

              <div class="col-md-12 padding-0">

                <div class="col-md-12">
               <!--  <div class="col-md-2">
                        <div class="sk-double-bounce">
                          <div class="sk-child sk-double-bounce1"></div>
                          <div class="sk-child double-bounce2">
                          </div>
                        </div>
                      </div> -->
                  <div class="col-md-12">
                    <div class="panel">
                      <div class="panel-heading panel-heading-white">
                        <h2>Today's Updates</h2>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-12">
                  <div class="col-md-12">
                    <div class="panel">
                      <div class="panel-heading panel-heading-white"></div>
                      <div class="panel-body">
                        <div class="col-md-6">
                          <div class="alert col-md-12 col-sm-12 alert-icon alert-danger alert-dismissible fade in" role="alert">
                            <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                              <span class="fa-2x">${customerCount.customerName} </span></div>
                              <div class="col-md-10 col-sm-10">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <p><strong>Total Customer </strong> .</p>
                              </div>
                            </div>
                          </div>

                          <div class="col-md-6">
                            <div class="alert alert-warning col-md-12 col-sm-12 alert-icon alert-dismissible fade in" role="alert">
                             <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                              <span class="fa-2x">${transactionCount.transactionId}</span></div>
                              <div class="col-md-10 col-sm-10">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <p><strong>Total Transaction</strong> .</p>
                              </div>
                            </div>
                          </div>

                          <div class="col-md-6">
                            <div class="alert alert-primary col-md-12 col-sm-12  alert-icon alert-dismissible fade in" role="alert">
                              <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                                <span class="fa-2x">${totalHealthAppt.totalAppt}</span></div>
                                <div class="col-md-10 col-sm-10">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                  <p><strong>Toal Health Appointment</strong> .</p>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-6">
                              <div class="alert alert-success col-md-12 col-sm-12  alert-icon alert-dismissible fade in" role="alert">
                                <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                                  <span class="fa-2x">10</span></div>
                                  <div class="col-md-10 col-sm-10">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <p><strong>Total Presales</strong> Names: 1)Amala 2)Ankita.</p>
                                  </div>
                                </div>
                              </div>

                              <div class="col-md-6">
                                <div class="alert alert-info col-md-12 col-sm-12  alert-icon alert-dismissible fade in" role="alert">
                                 <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                                  <span class="fa-2x">20 lc</span></div>
                                  <div class="col-md-10 col-sm-10">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <p><strong>Total Collection</strong> ,Today Collection is 10,000.</p>
                                  </div>
                                </div>
                              </div>

                              <div class="col-md-6">
                                <div class="alert alert-outline alert-default col-md-12 col-sm-12 alert-icon alert-dismissible fade in" role="alert">
                                 <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                                  <span class="fa-2x">${hospitalCount.nameHcc}</span></div>
                                  <div class="col-md-10 col-sm-10">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <p><strong>Total Hospitals!</strong>.</p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        
              <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class='col-md-12 padding-0'>
                      <div>
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                          <!-- Bottom Carousel Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#quote-carousel" data-slide-to="1"></li>
                            <li data-target="#quote-carousel" data-slide-to="2"></li>
                          </ol>

                          <!-- Carousel Slides / Quotes -->
                          <div class="carousel-inner">

                            <!-- Quote 1 -->
                            <div class="item active">
                              <blockquote>
                                <div class="col-md-12">
                                  <div class="col-sm-3 text-center">
                                    <img class="img-circle" src="resources/reportMIS/asset/img/avatar.jpg" style="width: 100px;height:100px;">
                                  </div>
                                  <div class="col-sm-9">
                                    <p>Total Customer Registered Today : 18 </p>
                                    <small>Presale Data</small>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                            <!-- Quote 2 -->
                            <div class="item">
                              <blockquote>
                                <div class="col-md-12">
                                  <div class="col-sm-3 text-center">
                                    <img class="img-circle" src="resources/reportMIS/asset/img/avatar.jpg" style="width: 100px;height:100px;">
                                  </div>
                                  <div class="col-sm-9">
                                    <p>Number of customer has availed the service today :10</p>
                                    <small>Customer care Data</small>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                            <!-- Quote 3 -->
                            <div class="item">
                              <blockquote>
                                <div class="row">
                                  <div class="col-sm-3 text-center">
                                    <img class="img-circle" src="resources/reportMIS/asset/img/avatar.jpg" style="width: 100px;height:100px;">
                                  </div>
                                  <div class="col-sm-9">
                                    <p>Actvity : BTL Activity coducting in Mariyapp Park</p>
                                    <small>Someone famous</small>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                          </div>

                          <!-- Carousel Buttons Next/Prev -->
                          <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                          <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                        </div>                          
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            
             <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                      <!--  -->
                      
                  <div class="col-md-12 tabs-area">

                    <ul id="tabs-demo6" class="nav nav-tabs nav-tabs-v6" role="tablist">
                      <li role="presentation" class="active">
                        <a href="#tabs-demo7-area1" id="tabs-demo6-1" role="tab" data-toggle="tab" aria-expanded="true">Employee Atendance</a>
                      </li>
                      <li role="presentation" class="">
                        <a href="#tabs-demo7-area2" role="tab" id="tabs-demo6-2" data-toggle="tab" aria-expanded="false">RegisteredCustomer</a>
                      </li>
                      <li role="presentation">
                        <a href="#tabs-demo7-area3" id="tabs-demo6-3" role="tab" data-toggle="tab" aria-expanded="false">CSR Summary</a>
                      </li>
                      <li role="presentation" class="">
                        <a href="#tabs-demo7-area4" role="tab" id="tabs-demo6-4" data-toggle="tab" aria-expanded="false">Calls Summary</a>
                      </li>
                    </ul>
                    <div id="tabsDemo6Content" class="tab-content tab-content-v6 col-md-12">
                      <div role="tabpanel" class="tab-pane fade active in" id="tabs-demo7-area1" aria-labelledby="tabs-demo7-area1">
                      
                        <h3>Absenties and Half day Employees List</h3>
                        <table class="table table-bordered" border="2">
                        <thead>
                        <tr>
                        <th>Sl No.</th>
                         <th>Employee Name</th>
                          <th>Attendance Mark</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${employeeAbsenties}" var="absenties" varStatus="counter">
                        <tr>
                         <td>${counter.index +1}</td>
                        <td>${absenties.empName}</td>
                        <td><c:if test="${absenties.attMark == 'A'}">Absent</c:if>
                        <c:if test="${absenties.attMark == 'L'}">Late</c:if>
                        <c:if test="${absenties.attMark == 'H'}">Half Day</c:if> </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                        </table>
                    
                      </div>
                      <div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area2" aria-labelledby="tabs-demo7-area2">
                        <p>Raw denim you probably haven't heard of tqui.</p>
                      </div>
                      <div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area3" aria-labelledby="tabs-demo7-area3">
 				<table class="table table-bordered" border="1">
                        <thead>
                        <tr>
                        <th>Sl No.</th>
                         <th>Employee Name</th>
                          <th>Total Sales</th>
                          <th>Total Revenue</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${csrSummary}" var="list" varStatus="counter">
                        <tr>
                         <td>${counter.index +1}</td>
                        <td>${list.empName}</td>
                        <td>${list.Sales}</td>
                        <td>${list.Revenue}</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                        </table>                     

                      </div>
                      <div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area4" aria-labelledby="tabs-demo7-area4">
                        <p>Raw denim you probably h
                    </div>

                  </div>
                      <!--  -->
                  </div>
                </div>
              </div>
            </div>
             
                  
        
                        <div class="col-md-12">
                          <div class="panel">
                            <div class="panel-heading panel-heading-white"></div>
                            <div class="panel-body">
                              <div class="col-md-6">
                                <div class="alert alert-danger alert-border alert-dismissible fade in" role="alert">
                                  <a href="sales&marketing"><h3>SALES & Marketing
                                    <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                  </h3></a>
                                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                              </div>

                              <div class="col-md-6">
                                <div class="alert alert-warning alert-border alert-dismissible fade in" role="alert">
                                <a href="sales&marketing">  <h3>ACCOUNTS
                                  <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                </h3></a>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                              </div>
                            </div>

                            <div class="col-md-6">
                              <div class="alert alert-primary alert-border alert-dismissible fade in" role="alert">
                               <a href="sales&marketing"> <h3>Operations
                                <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                              </h3></a>
                              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                          </div>

                          <div class="col-md-6">
                            <div class="alert alert-success alert-border alert-dismissible fade in" role="alert">
                             <a href="sales&marketing">  <h3>CUSTOMER CARE
                                <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                              </h3></a>
                              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                          </div>

                          <div class="col-md-6">
                            <div class="alert alert-info alert-border alert-dismissible fade in" role="alert">
                              <a href="sales&marketing"> <h3>IT
                                <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                              </h3></a>
                              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                          </div>

                          <div class="col-md-6">
                            <div class="alert alert-default alert-border alert-dismissible fade in" role="alert">
                             <a href="sales&marketing">  <h3>HR
                                <button type="button" class="close pull-right" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                              </h3></a>
                              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>
                    

                    <div class="col-md-6">
                      <div class="panel">
                        <div class="panel-heading panel-heading-white"></div>
                        <div class="panel-body">
                          <div class="col-md-12">
                           <h4>Customer Search</h4>
                        <p>  Please Enter customer registered details in below filed</p>
                           <input type="text" class="form-control input-sm" placeholder="Card/Moblie/DOB/Appln No/DOB : YYYY-MM-DD ">
                        </div>
                      </div>
</div>
</div>
                    <div class="col-md-6">
                     <div class="panel">
                      <div class="panel-heading panel-heading-white"></div>
                      <div class="panel-body">
                        <div class="col-md-12">
                          <h4>Appoinment Search</h4>
                           <input type="text" class="form-control input-sm" placeholder="Phone Number">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          <!-- end: Content -->
    
          <!-- start: right menu -->
            <div id="right-menu">
              <ul class="nav nav-tabs">
                <li class="active">
                 <a data-toggle="tab" href="#right-menu-user">
                  <span class="fa fa-comment-o fa-2x"></span>
                 </a>
                </li>
                <li>
                 <a data-toggle="tab" href="#right-menu-notif">
                  <span class="fa fa-bell-o fa-2x"></span>
                 </a>
                </li>
                <li>
                  <a data-toggle="tab" href="#right-menu-config">
                   <span class="fa fa-cog fa-2x"></span>
                  </a>
                 </li>
              </ul>

              <div class="tab-content">
                <div id="right-menu-user" class="tab-pane fade in active">
                  <div class="search col-md-12">
                    <input type="text" placeholder="search.."/>
                  </div>
                  <div class="user col-md-12">
                   <ul class="nav nav-list">
                    <li class="online">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-mobile-phone fa-2x"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="away">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-desktop"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="offline">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="offline">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="online">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-mobile-phone fa-2x"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="offline">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="online">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-mobile-phone fa-2x"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="offline">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="offline">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="online">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-mobile-phone fa-2x"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>
                    <li class="online">
                      <img src="asset/img/avatar.jpg" alt="user name">
                      <div class="name">
                        <h5><b>Bill Gates</b></h5>
                        <p>Hi there.?</p>
                      </div>
                      <div class="gadget">
                        <span class="fa  fa-mobile-phone fa-2x"></span> 
                      </div>
                      <div class="dot"></div>
                    </li>

                  </ul>
                </div>
                <!-- Chatbox -->
                <div class="col-md-12 chatbox">
                  <div class="col-md-12">
                    <a href="#" class="close-chat">X</a><h4>Akihiko Avaron</h4>
                  </div>
                  <div class="chat-area">
                    <div class="chat-area-content">
                      <div class="msg_container_base">
                        <div class="row msg_container send">
                          <div class="col-md-9 col-xs-9 bubble">
                            <div class="messages msg_sent">
                              <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy  51 min</time>
                              </div>
                            </div>
                            <div class="col-md-3 col-xs-3 avatar">
                              <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                            </div>
                          </div>

                          <div class="row msg_container receive">
                            <div class="col-md-3 col-xs-3 avatar">
                              <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                            </div>
                            <div class="col-md-9 col-xs-9 bubble">
                              <div class="messages msg_receive">
                                <p>that mongodb thing looks good, huh?
                                  tiny master db, and huge document store</p>
                                  <time datetime="2009-11-13T20:00">Timothy  51 min</time>
                                </div>
                              </div>
                            </div>

                            <div class="row msg_container send">
                              <div class="col-md-9 col-xs-9 bubble">
                                <div class="messages msg_sent">
                                  <p>that mongodb thing looks good, huh?
                                    tiny master db, and huge document store</p>
                                    <time datetime="2009-11-13T20:00">Timothy  51 min</time>
                                  </div>
                                </div>
                                <div class="col-md-3 col-xs-3 avatar">
                                  <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                                </div>
                              </div>

                              <div class="row msg_container receive">
                                <div class="col-md-3 col-xs-3 avatar">
                                  <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                                </div>
                                <div class="col-md-9 col-xs-9 bubble">
                                  <div class="messages msg_receive">
                                    <p>that mongodb thing looks good, huh?
                                      tiny master db, and huge document store</p>
                                      <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                                    </div>
                                  </div>
                                </div>

                                <div class="row msg_container send">
                                  <div class="col-md-9 col-xs-9 bubble">
                                    <div class="messages msg_sent">
                                      <p>that mongodb thing looks good, huh?
                                        tiny master db, and huge document store</p>
                                        <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                                      </div>
                                    </div>
                                    <div class="col-md-3 col-xs-3 avatar">
                                      <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                                    </div>
                                  </div>

                                  <div class="row msg_container receive">
                                    <div class="col-md-3 col-xs-3 avatar">
                                      <img src="asset/img/avatar.jpg" class=" img-responsive " alt="user name">
                                    </div>
                                    <div class="col-md-9 col-xs-9 bubble">
                                      <div class="messages msg_receive">
                                        <p>that mongodb thing looks good, huh?
                                          tiny master db, and huge document store</p>
                                          <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="chat-input">
                                <textarea placeholder="type your message here.."></textarea>
                              </div>
                              <div class="user-list">
                                <ul>
                                  <li class="online">
                                    <a href=""  data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <div class="user-avatar"><img src="asset/img/avatar.jpg" alt="user name"></div>
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="offline">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="away">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="online">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="offline">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="away">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="offline">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="offline">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="away">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="online">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="away">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                  <li class="away">
                                    <a href="" data-toggle="tooltip" data-placement="left" title="Akihiko avaron">
                                      <img src="asset/img/avatar.jpg" alt="user name">
                                      <div class="dot"></div>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <div id="right-menu-notif" class="tab-pane fade">

                            <ul class="mini-timeline">
                              <li class="mini-timeline-highlight">
                               <div class="mini-timeline-panel">
                                <h5 class="time">07:00</h5>
                                <p>Coding!!</p>
                              </div>
                            </li>

                            <li class="mini-timeline-highlight">
                             <div class="mini-timeline-panel">
                              <h5 class="time">09:00</h5>
                              <p>Playing The Games</p>
                            </div>
                          </li>
                          <li class="mini-timeline-highlight">
                           <div class="mini-timeline-panel">
                            <h5 class="time">12:00</h5>
                            <p>Meeting with <a href="#">Clients</a></p>
                          </div>
                        </li>
                        <li class="mini-timeline-highlight mini-timeline-warning">
                         <div class="mini-timeline-panel">
                          <h5 class="time">15:00</h5>
                          <p>Breakdown the Personal PC</p>
                        </div>
                      </li>
                      <li class="mini-timeline-highlight mini-timeline-info">
                       <div class="mini-timeline-panel">
                        <h5 class="time">15:00</h5>
                        <p>Checking Server!</p>
                      </div>
                    </li>
                    <li class="mini-timeline-highlight mini-timeline-success">
                      <div class="mini-timeline-panel">
                        <h5 class="time">16:01</h5>
                        <p>Hacking The public wifi</p>
                      </div>
                    </li>
                    <li class="mini-timeline-highlight mini-timeline-danger">
                      <div class="mini-timeline-panel">
                        <h5 class="time">21:00</h5>
                        <p>Sleep!</p>
                      </div>
                    </li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>

                </div>
                <div id="right-menu-config" class="tab-pane fade">
                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Notification</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-info">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch1" checked>
                        <label class="onoffswitch-label" for="myonoffswitch1"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Custom Designer</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch2" checked>
                        <label class="onoffswitch-label" for="myonoffswitch2"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Autologin</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
                        <label class="onoffswitch-label" for="myonoffswitch3"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto Hacking</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch4" checked>
                        <label class="onoffswitch-label" for="myonoffswitch4"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto locking</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch5" checked>
                        <label class="onoffswitch-label" for="myonoffswitch5"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>FireWall</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch6" checked>
                        <label class="onoffswitch-label" for="myonoffswitch6"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>CSRF Max</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch7" checked>
                        <label class="onoffswitch-label" for="myonoffswitch7"></label>
                      </div>
                    </div>
                  </div>


                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Man In The Middle</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch8" checked>
                        <label class="onoffswitch-label" for="myonoffswitch8"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto Repair</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch9" checked>
                        <label class="onoffswitch-label" for="myonoffswitch9"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <input type="button" value="More.." class="btnmore">
                  </div>

                </div>
              </div>
            </div>  
          <!-- end: right menu -->
          
      </div>

      <!-- start: Mobile -->
      <div id="mimin-mobile" class="reverse">
        <div class="mimin-mobile-menu-list">
            <div class="col-md-12 sub-mimin-mobile-menu-list animated fadeInLeft">
                <ul class="nav nav-list">
                    <li class="active ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-home fa"></span>Dashboard 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="dashboard-v1.html">Dashboard v.1</a></li>
                          <li><a href="dashboard-v2.html">Dashboard v.2</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-diamond fa"></span>Layout
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="topnav.html">Top Navigation</a></li>
                        <li><a href="boxed.html">Boxed</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>Charts
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html">ChartJs</a></li>
                        <li><a href="morris.html">Morris</a></li>
                        <li><a href="flot.html">Flot</a></li>
                        <li><a href="sparkline.html">SparkLine</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-pencil-square"></span>Ui Elements
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="color.html">Color</a></li>
                        <li><a href="weather.html">Weather</a></li>
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="buttons.html">Buttons</a></li>
                        <li><a href="media.html">Media</a></li>
                        <li><a href="panels.html">Panels & Tabs</a></li>
                        <li><a href="notifications.html">Notifications & Tooltip</a></li>
                        <li><a href="badges.html">Badges & Label</a></li>
                        <li><a href="progress.html">Progress</a></li>
                        <li><a href="sliders.html">Sliders</a></li>
                        <li><a href="timeline.html">Timeline</a></li>
                        <li><a href="modal.html">Modals</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                       <span class="fa fa-check-square-o"></span>Forms
                       <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="formelement.html">Form Element</a></li>
                        <li><a href="#">Wizard</a></li>
                        <li><a href="#">File Upload</a></li>
                        <li><a href="#">Text Editor</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-table"></span>Tables
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="datatables.html">Data Tables</a></li>
                        <li><a href="handsontable.html">handsontable</a></li>
                        <li><a href="tablestatic.html">Static</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a href="calendar.html">
                         <span class="fa fa-calendar-o"></span>Calendar
                      </a>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-envelope-o"></span>Mail
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="mail-box.html">Inbox</a></li>
                        <li><a href="compose-mail.html">Compose Mail</a></li>
                        <li><a href="view-mail.html">View Mail</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-file-code-o"></span>Pages
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="forgotpass.html">Forgot Password</a></li>
                        <li><a href="login.html">SignIn</a></li>
                        <li><a href="reg.html">SignUp</a></li>
                        <li><a href="article-v1.html">Article v1</a></li>
                        <li><a href="search-v1.html">Search Result v1</a></li>
                        <li><a href="productgrid.html">Product Grid</a></li>
                        <li><a href="profile-v1.html">Profile v1</a></li>
                        <li><a href="invoice-v1.html">Invoice v1</a></li>
                      </ul>
                    </li>
                     <li class="ripple"><a class="tree-toggle nav-header"><span class="fa "></span> MultiLevel  <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a href="view-mail.html">Level 1</a></li>
                        <li><a href="view-mail.html">Level 1</a></li>
                        <li class="ripple">
                          <a class="sub-tree-toggle nav-header">
                            <span class="fa fa-envelope-o"></span> Level 1
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                          </a>
                          <ul class="nav nav-list sub-tree">
                            <li><a href="mail-box.html">Level 2</a></li>
                            <li><a href="compose-mail.html">Level 2</a></li>
                            <li><a href="view-mail.html">Level 2</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a href="credits.html">Credits</a></li>
                  </ul>
            </div>
        </div>       
      </div>
      <button id="mimin-mobile-menu-opener" class="animated rubberBand btn btn-circle btn-danger">
        <span class="fa fa-bars"></span>
      </button>
       <!-- end: Mobile -->

<!-- start: Javascript -->
<script src="resources/reportMIS/asset/js/jquery.min.js"></script>
<script src="resources/reportMIS/asset/js/jquery.ui.min.js"></script>
<script src="resources/reportMIS/asset/js/bootstrap.min.js"></script>


  <!-- plugins -->
  <script src="resources/reportMIS/asset/js/plugins/moment.min.js"></script>
  <script src="resources/reportMIS/asset/js/plugins/jquery.nicescroll.js"></script>


  <!-- custom -->
  <script src="resources/reportMIS/asset/js/main.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){

    });
  </script>
  <!-- end: Javascript -->
</body>
</html>