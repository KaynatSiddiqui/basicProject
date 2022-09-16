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
    <title>JEE Mains &centerdot; Skyget &centerdot; Engineering & Medical - Entrance Exam Expert</title>

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
td, th {
    border: 1px solid #dddddd;
    text-align:center;
    padding: 8px;
}

.faja{
margin-bottom:15px;
}

.space {
	margin-bottom: 8px;
	color:black;
}

.color{
color:black;
}

#myTabs li.active > a{
color:#fff !important;
}

.fa-home:before{
    color:black !important;
    }
   </style>
</head>

<body>
    <!-- Preloader Start -->
 
  <%@include file="/jsp/student/student module/header.jsp" %>

	<section class="special-area bg-white section_padding_70" id="about">
		<div class="special_description_area mt-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-xl-5 ml-xl-auto">
						<div class="special_description_content">
							<h2>What is <span id="examname"></span>?</h2>
							<p id="examdefi"></p>
							<div class="get-start-area zigBtn">
								<a class="submit" href="#" data-toggle="modal"
									data-target="#centralModalLg">Start</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="special_description_img" >
						<p id="mainimage"></p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

        <section class="special-area bg-white" id="about">
        <div class="container">
         
			<div class="row">
				<!-- Single Special Area -->
				<div class="col-12 col-md-3">
					<div id='jeemainsmenu'>
					

				
					</div>
				</div>
				<!-- Single Special Area -->

				<div class="col-12 col-md-9" id="infodescrip">
						

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
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	
	<script>
 	function showOnlyOneTabDesc(firElem){
 	   $(".fasak").each(function(){
            $(this).hide();
           if($(this).attr('id') == firElem) {
               $(this).show();
           }
       });
    } 
 	

	</script>
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
			 examtypeinfoshowing();
			 getcatstudent();
			 getstatesall();
		 }); 

            	
            	



          
             
           
           
           
          
           
            $('#myTabs li').click(function(){
   		    $('li').removeClass("active");
   		    $(this).addClass("active");
   		});  
		
	</script>

</body>

</html>
