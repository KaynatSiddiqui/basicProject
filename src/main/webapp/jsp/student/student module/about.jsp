<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Skyget - Engineering & Medical - Entrance Exam Expert">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/favicon.ico">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/landing/favicons/180x180.png">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/landing/favicons/180x180.png">
	<meta name="theme-color" content="#a64bf4">
    <!-- Title -->
    <title>About &centerdot; Skyget &centerdot; Engineering & Medical - Entrance Exam Expert</title>

   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/owl.carousel.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/normalize.min.css">
   <link href="<%=request.getContextPath()%>/assets/landing/css/md.css" rel="stylesheet"> 
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/bootstrap.min.css">
  
    <!-- Core Stylesheet -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/style.css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/responsive.css" rel="stylesheet">
   
   <style>
       .sing-up-button > a {
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
}
    .header_area.sticky .nav-link-sep{
        color: #fff !important;
    }

    .header_area.sticky .navbar-nav .active>.nav-link-sep{
        color: #fb397d !important;
    }

    .header_area.sticky .sing-up-button > a{
        color: #fff !important;
    }
    
.fa-home:before{
    color:black !important;
    }
    
   </style>
</head>

<body>
    <!-- Preloader Start -->
    <!-- <div id="preloader">
        <div class="colorlib-load"></div>
    </div> -->
   <%@include file="/jsp/student/student module/header.jsp" %>


    <section class="special-area bg-white section_padding_70" id="about">
        <div class="special_description_area mt-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5 ml-xl-auto">
                        <div class="special_description_content">
                            <h2>About Us</h2>
                            <!-- <p>At Skyget We provide the management of examination and assessment, using an advanced hassle-free transactional interface. The streamlined process flow help with the easy creation of tests, circulation of products, calculation of scores, etc. It provides development of an improved communication link in-between the assessor and the assessee.  </p>
                            <p> Multiple tests can be clubbed together to form a product that can be purchased by the candidate and would contribute to the revenue generation. Secured flow of information, multiple payment gateway options, synchronized android and iOS interface will take you to the next level of examination. The panel is self- operational that requires simple online subscription that is extremely easy to use and learn.</p>
                            <p> Now, perform exams meeting your requirements to restrict and liberate the movement, depute timelines, transparency of the text, shuffle and randomize, define guidelines, use tags assuring smoother search, allocate penalty on incorrect attempts, and more wherever and whenever you want to.</p> -->
                            <p>We are Zomant Solutions Pvt Ltd,  focused on creating new age technology solutions for the online examination platform.</p>
                            <p>Our product Skyget, it is a live examination platform for Engineering and Medical aspirants to achieve their goals.</p>
                            <p>Our mission is to simplify the student's path to achieve their goals.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="special_description_img side-img">
                            <img src="<%=request.getContextPath()%>/assets/landing/img/Aboutus.svg" class="img-height" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



  <%@include file="/jsp/student/student module/footer.jsp" %>
  
    <!-- ***** Footer Area Start ***** -->
	
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
	<script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script>
	
    <script>
		/* $("#signBtn").click(function(){
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
			 getstatesall();
		 }); */
    </script>

</body>

</html>
