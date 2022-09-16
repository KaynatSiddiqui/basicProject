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
    <title>Contact Us &centerdot; Skyget &centerdot; Engineering & Medical - Entrance Exam Expert</title>

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
        color: #32B9E6 !important;
    }

    .header_area.sticky .sing-up-button > a{
        color: #fff !important;
    }
    li {
    font-size : 20px;
    
}

li > *{
  display: inline-block;
  vertical-align: middle;
  }
  
  
#contname{
    font-size: 18px;
    padding: 15px 15px;
    border-radius: 25px 25px 25px 0;
}

#contemail{
    font-size: 18px;
    padding: 15px 15px;
    border-radius: 25px 25px 25px 0;
}

#contmessage{
    border-radius: 25px 25px 25px 0;
}

.fa-home:before{
    color:black !important;
    }

   </style>
</head>

<body>
    <!-- Preloader Start -->

<%@include file="/jsp/student/student module/header.jsp" %>

  <section class="special-area bg-white section-padding-80" id="contact">
        <div class="special_description_area mt-100">
            <div class="container">
                <div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2>Get in touch with us!</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
                <div class="row">
                <!-- Single Special Area -->
                <div class="col-12 col-md-6">
                    
                    
<div class="gtco-contact-info">
    <h4 >Contact Information</h4>
    <ul style="margin-top: 30px;">

        <!-- <li class="address"> Flat No-503,7-1-414/20-1, <br>Sanjeeva Reddy Nagar<br> Hyderabad, Telangana 500038</li>
        <li class="phone">7073414055</li>
        <li class="email emaillink"><a href="mailto:Support@skyget.ai?Subject=Contact%20Form">Support@skyget.ai</a></li> -->
        <li class="address">4th floor, Plot No.50, <br> Silicon Valley, Image Garden Road <br> Hyderabad,Telangana 500081</li>
        <li class="phone">+91 7093414055</li>
        <li class="email emaillink"><a href="mailto:info@Skyget.com?Subject=Contact%20Form"> support@skyget.ai</a></li>
    </ul>
</div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="contact_from">
                       
                            <!-- Message Input Area Start -->
                            <div class="contact_input_area">
                                <div class="row">
                                    <!-- Single Input Area Start -->
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="contname" id="contname" placeholder="Your Name" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="contemail" id="contemail" placeholder="Your E-mail" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea name="contmessage" class="form-control" id="contmessage" cols="30" rows="4" placeholder="Your Message *" required></textarea>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <button type="submit" class="btn submit-btn" onclick="sendcontactdata()">Send Now</button>
                                    </div>
                                </div>
                            </div>
                            <!-- Message Input Area End -->
                     
                    </div>
                </div>
            </div>
            </div>
        </div>
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
