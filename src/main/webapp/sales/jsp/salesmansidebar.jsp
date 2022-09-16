<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
   <title>Skygets</title>
  	<link rel="shortcut icon" href="favicon.ico">
      <%-- <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo/favicon.ico" type="image/x-icon"> --%>
   
   <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	   
 
 <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<!-- <link rel="stylesheet" href="./style.css"> -->
<link href="<%=request.getContextPath()%>/sales/css/salesmansidebar.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.core.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.default.css">
 <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">    

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
	
</script>
</head>
<style>

.nav>li>a {
padding: 10px 5px;
    font-size: 20px;
}

.preloader {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #fefefe;
    z-index: 99999;
    height: 100%;
    width: 100%;
    overflow: hidden !important;
	display: flex;
    justify-content: center;
    align-items: center;
    align-content: center;
    align-self: center;
}

.loaded {
    width: 150px;
    height: 150px;
    /* background-image: url(../img/loading.gif); loading-spin*/
    background-image: url(../img/loading-spin.gif);
    background-repeat: no-repeat;
    background-position: center;
    -moz-background-size: cover;
    background-size: cover;
}

@-webkit-keyframes colorlib-load {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@keyframes colorlib-load {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}
.prefix{
	
	margin-right:5px;
}
</style>
<body>

<%@page import="com.zomant.util.AppConstants"%>
<div class="loader">
    <div class="loader" style="background: url(&quot;../../../assets/images/students/spinner2.gif&quot;) 50% 50% no-repeat; display: none;">
      
      </div>  
 </div>
<!-- partial:index.partial.html -->
<div id="wrapper" class="toggled">

  <aside id="sidebar-wrapper" >
    <div class="sidebar-brand">
      <h2 style="color:#FFA500"><img class="brand-img" src="/assets/images/students/Skyget_logo.svg" style="width:85px;"></h2>
    </div>
    <ul class="sidebar-nav" id="myDIV">
      <!-- <li class="">
        <a href="salesHome.jsp"><i class="fa fa-money"></i>Apply Student Discount</a>
      </li> -->
       <li class="" >
        <a href="salesHome.jsp"><img src="../images/price_tag.png"><span style="margin-left:20px;">Apply Student Discount</span></a>
        
      </li>
       <li class="" >
        <a href="salesmanDetail.jsp"><img src="../images/payment_method.png"><span style="margin-left:20px;">SalesMan History</span></a>
      </li>
     
       <li class="" >
        <a href="salesman_student.jsp"><img src="../images/rotation.png"><span style="margin-left:20px;">Assigned Students</span></a>
      </li>
     <!--   <li class="" >
        <a href="saleslink.jsp"><img src="../images/affiliate.png"><span style="margin-left:20px;">Linking Amount</span></a>
      </li> -->
       <li class="" >
        <a href="salesSettlement.jsp"><img src="../images/deal.png"><span style="margin-left:20px;">Settlement</span></a>
      </li>
       <li class="" >
        <a href="interestedstudents.jsp"><img src="../images/raise-hand.png"><span style="margin-left:20px;">Interested Students</span></a>
      </li>
        <li class="" >
        <a href="subscriptionDetail.jsp"><img src="../images/my_account.png"><span style="margin-left:20px;">My account</span></a>
      </li>
     
      <!-- <li>
        <a href="#"><i class="fa fa-user"></i>Users</a>
      </li> -->
    </ul>
  </aside>

  <div id="navbar-wrapper">
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="#" class="navbar-brand" id="sidebar-toggle"><i class="fa fa-bars"></i></a>
        
        </div>
         <ul class="nav navbar-nav navbar-right" style="margin-right:10px;">
      		<li style="display:flex"><div style="margin-top:9px;margin-right:15px;"><a href="#">Hello ,</a><a href="#" id="salesmanname">test</a></div></li>
      		 <!-- <li>
                     <a href="#"><i class="fa fa-desktop fa-lg"></i></a>
              </li> -->
              
              <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0 d-flex" data-toggle="dropdown" style="display:flex" aria-expanded="false"><img src="../images/profile_img.svg" style="width32px;height:32px;"><i class="fa fa-caret-down" style="margin-top:15px;"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                       <!--  <li>
                           <a href="admin/change_pin"><i class="fa fa-lock"></i><span>Change Pin Number</span></a>
                        </li>
                        <li>
                           <a href="admin/change_password"><i class="fa fa-key"></i><span>Change Password</span></a>
                        </li>
                        <li class="divider"></li> -->
                         <li>
                           <a href="#" data-toggle='modal' data-target='#showimg' onclick="showimages()"><img src="../images/profile.png" style="margin-right:5px;height:32px;width:32px;"><span>Profile</span></a>
                        </li>
                        <li>
                           <a href="#" onclick="logoutadmin();"><img src="../images/Logout.svg" style="margin-right:5px;height:32px;width:32px;"><span>Log Out</span></a>
                        </li>
                     </ul>
                  </li> 
              
          </ul>
      </div>
    </nav>
  </div>
  
  
   <div class="modal fade" id="showimg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fa fa-times-circle" aria-hidden="true"></i>
          </button>
          <h3 style="color:#FFA500" class=""><span>Hi,</span><span id="facultyName" style="margin-left:10px;"></span></h3>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="imags">
       
      </div>
    </div>
  </div>
 
 </div>

  <!-- <section id="content-wrapper">
      <div class="row">
        <div class="col-lg-12">
          <h2 class="content-title">Test</h2>
          <p>Lorem ipsum...</p>
        </div>
      </div>
  </section> -->

</div>
<!-- partial -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
 
  <script src="<%=request.getContextPath()%>/sales/js/salesmansidebar.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/alertify.min.js"></script>
		<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


 -->
 
</body>
</html>
