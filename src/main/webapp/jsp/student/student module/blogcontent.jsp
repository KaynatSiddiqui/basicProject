<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Skyget - Engineering & Medical - Entrance Exam Expert">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<meta name="theme-color" content="#fd7e14 !important">
    <!-- Title -->
    <title>Blog &centerdot; Skyget &centerdot; Engineering & Medical - Entrance Exam Expert</title>

   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/owl.carousel.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/normalize.min.css">
   <link href="<%=request.getContextPath()%>/assets/landing/css/md.css" rel="stylesheet"> 
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/bootstrap.min.css">
  
    <!-- Core Stylesheet -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/style.css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/responsive.css" rel="stylesheet">
   
   <style>
       /* .sing-up-button > a {
    color: black;
    font-size: 14px;
    font-weight: 500;
    display: inline-block;
    border: 2px solid #a883e9;
    height: 40px;
    min-width: 100px;
    line-height: 35px;
    text-align: center;
    border-radius: 24px 24px 24px 0px;
} */
.scrolling-wrapper {
	
	overflow-y: hidden;
	white-space: nowrap;
	
	}
	
.small, small {
    font-size: 100% !important;
    font-weight: 400;
}
.header_area {
	background-color: #fd7e14;
	-webkit-box-shadow: 0 4px 20px rgb(0 0 0/ 10%);
	box-shadow: 0 4px 20px rgb(0 0 0/ 10%);
	left: 0;
	position: absolute;
	width: 100%;
	z-index: 99;
	top: 0;
	height: 75px;
}

.headlogo {
    width: auto;
    height: 140px !important;
}
.sing-up-button>a {
	color: white;
	font-size: 20px;
	font-weight: 500;
	display: inline-block;
	/*   border: 2px solid #a883e9; */
	/* height: 70px; */
	min-width: 100px;
	line-height: 50px;
	text-align: center;
	/*   border-radius: 24px 24px 24px 0px; */
}



    .header_area.sticky .nav-link-sep{
        color: #fff !important;
    }

    .header_area.sticky .navbar-nav .active>.nav-link-sep{
        color: #32B9E6 !important;
    }

    .header_area.sticky .sing-up-button > a{
        color: #fff !important;
    }
    p{
    color:black;
    }
    
    
   </style>
  
</head>

<body>
    <%@include file="/jsp/student/student module/header.jsp" %>
  
<section class="special-area bg-white section-padding-80" id="fullblogcontent" style="background:whitesmoke;margin-top:90px;box-shadow: rgba(0, 0, 0, 0.3) 0px 20px 30px -20px; margin-bottom: 290px;">
  
  
 
  
  
  </section>


 <%@include file="/jsp/student/student module/footer.jsp" %>
	
<%@include file="/jsp/student/student module/loginmodals.jsp" %>

	<script src="<%=request.getContextPath()%>/assets/landing/js/jquery-2.2.4.min.js"></script> 
    <!-- Popper js -->
    <script src="<%=request.getContextPath()%>/assets/landing/js/popper.min.js"></script>
 
    <!-- All Plugins JS -->
    <script src="<%=request.getContextPath()%>/assets/landing/js/plugins.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/landing/js/mdb.min.js"></script> 
    <script src="<%=request.getContextPath()%>/assets/landing/js/bootstrap.min.js"></script>
 
    <!-- Slick Slider Js-->
    <script src="<%=request.getContextPath()%>/assets/landing/js/slick.min.js"></script>
    <!-- Footer Reveal JS -->
    <script src="<%=request.getContextPath()%>/assets/landing/js/footer-reveal.min.js"></script>
    <!-- Active JS -->
    <script src="<%=request.getContextPath()%>/assets/landing/js/active.js"></script>
    <script src="<%=request.getContextPath()%>/assets/landing/js/owl.carousel.min.js"></script>
   
	 <script src="<%=request.getContextPath()%>/assets/landing/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script>
	
    <script>
		$("#signBtn").click(function(){
             $('#centralModalLg').modal('hide');
         })
         $("#signUpBtn").click(function(){
             $('#signinmodal').modal('hide');
         })
             
         
         function testAnim(x) {
                $('.modal .modal-dialog').attr('class', 'modal-dialog  ' + x + '  animated modal-lg');
            };
            $('#centralModalLg, #signinmodal').on('show.bs.modal', function (e) {
              var anim = "slideInLeft"
                  testAnim(anim);
            })
            $('#centralModalLg, #signinmodal').on('hide.bs.modal', function (e) {
              var anim = "slideOutRight"
                  testAnim(anim);
            })
		$(document).ready(function(){
			 getcatstudent();
			/*  getstates(); */
			getblogfullcontentbyid();
		 });
            
            $(".fasak").each(function(){
                $(this).hide();
               if($(this).attr('id') == 'aiims') {
                   $(this).show();
               }
           });


           $('.anchor').on( "click", function(e) {
               e.preventDefault();
               var id = $(this).attr('data-related'); 
               $(".fasak").each(function(){
                   $(this).hide();
                   if($(this).attr('id') == id) {
                       $(this).show();
                   }
               });
           });     
           
           
           $('#myTabs li').click(function(){
     		    $('li').removeClass("active");
     		    $(this).addClass("active");
     		});
    </script>

</body>

</html>