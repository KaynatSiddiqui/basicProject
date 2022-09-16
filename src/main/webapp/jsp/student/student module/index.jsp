
<%@page import="com.zomant.util.AppConstants"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Skyget - Rank Guaranty Program - JEE Mains,NEET,JEE Advanced 2021">
     <meta name="keywords" content="JEE Mains 2021,JEE Advanced 2021,NEET 2021,NTA 2021">   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<%-- <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/favicon.ico"> --%>
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	 <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.core.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.default.css">
	<!-- <meta name="theme-color" content="#a64bf4"> -->
	<meta name="theme-color" content="#fd7e14 !important"> 
	
    <!-- Title -->
    <title>Skyget - Rank Guaranty Program - JEE Mains,NEET,JEE Advanced 2021</title>
     <!-- Global site tag (gtag.js) - Google Analytics -->
<!--<script async src="https://www.googletagmanager.com/gtag/js?id=UA-132319700-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-132319700-1');
</script>-->
<%-- <%

 String status = request.getParameter("status");


	
 if(status!=null && status.equals("2"))
 	out.println("<font color=\"red\"> <center>  <b>Session Expired. Please Login</b> </center></font><br>");
 %> --%>
 <style>
 
 
 </style>
 <%

 String status = request.getParameter("logout");


	
 if(status!=null && status.equals("st"))

	session.invalidate();
 %> 
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/owl.carousel.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/normalize.min.css">
   <link href="<%=request.getContextPath()%>/assets/landing/css/md.css" rel="stylesheet"> 
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/bootstrap.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/landing/css/animate.css">
    <!-- Core Stylesheet -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/style.css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="<%=request.getContextPath()%>/assets/landing/css/responsive.css" rel="stylesheet">
	<style>
	

/* 	#live{
   border-bottom-right-radius: 80px;
   border-top-left-radius: 80px;
   border-bottom-left-radius: 10px;
   border-top-right-radius: 10px;
}
 */.card{
cursor:pointer;
}

#live{
  background:#fd7e14;
  color:white;

border-radius:0px 50px 0px 50px
}

/* #live:hover{
  background:#fd7e14;
  color:white;
} */
	#insta {
  background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
  -webkit-background-clip: text;
          /* Also define standard property for compatibility */
          background-clip: text;
  -webkit-text-fill-color: transparent;
  
  font-size: 48px; /* change this to change the size*/
  cursor:pointer;
}

.hover-fx {
  font-size: 36px;
  display: inline-block;
  cursor: pointer;
  margin: 15px;
  width: 80px;
  height: 80px;
  line-height: 84px;
  border-radius: 50%;
  text-align: center;
  position: relative;
  color: #fff;
  background-color: rgba(255, 255, 255, 0.1);
  transition: 300ms;
}

.hover-fx:after {
  pointer-events: none;
  position: absolute;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  content: '';
  box-sizing: content-box;
  box-shadow: 0 0 0 3px #fff;
  top: 0;
  left: 0;
  opacity: 0;
  transition: 300ms;
}

.hover-fx:hover {
  background-color: #fff;
  color: #00989A;
}

.hover-fx:hover:after {
  opacity: 1;
  transform: scale(1.15);
}

/* #fb{

color:blue;
font-size: 48px; 
cursor:pointer;
}
#youtube{
font-size:48px;
color:red;
cursor:pointer;
}
 */


 .apps{
    outline:0px !important;
    -webkit-appearance:none;
    box-shadow: none !important;
} 

.top_images{

box-shadow: 0 2px 6px 1px rgba(0,0,0,0.04), 0 1px 2px 0 rgba(0,0,0,0.08);

}	

/* .teacher-video-player .homepage-overlay {
    background-color: rgba(0,0,0,0.6);
   /*  padding: 58px 0 27px; */
   /*  border-radius: 10px;
    height: 490px;
    position: absolute;
    top: 0;
    width: 1110px;
    }
    
    .teacher-image{
    	width:100%;
    	 border-radius: 10px;
    	 height:490px;
    	
    }  */
    
     /* .back-image{
    
    	
    	background-image: url(../../../assets/images/students/Sud.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	height:407px;
	background-size: contain;
	/* background-position: center; */
	 /* box-shadow: 0 10px 20px -6px #000;
 */   /*  }  */ 
    
    .mani_landingimage {
  position: relative;
  text-align: center;
  color: white;
  border-radius:8px;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}




.scrolling{


height: 450px;
width:400px;
overflow-y: scroll;


}


.scrolling::-webkit-scrollbar-track
{
-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
border-radius: 10px;
background-color: #F5F5F5;
}

.scrolling::-webkit-scrollbar
{
width:7px;
background-color: #F5F5F5;
}

 .scrolling::-webkit-scrollbar-thumb
{
border-radius: 10px;
-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
background-color: #fd7e14;
}
 
 
#live{
  background:#fd7e14;
  color:white;

border-radius:0px 50px 0px 50px
}

/* #live:hover{
  background:#fd7e14;
  color:white;
} */
#bgnav{
  position: relative;
}

.overlay {
  position: absolute; 
  /* bottom:-205px;  */
 	bottom: -220px;
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}

#bgnav .overlay {
  opacity: 1;
}
	#insta {
  background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
  -webkit-background-clip: text;
          /* Also define standard property for compatibility */
          background-clip: text;
  -webkit-text-fill-color: transparent;
  
  font-size: 48px; /* change this to change the size*/
  cursor:pointer;
}

#smallimg{

 width: 100%;
height: 93px;

}

/* 
#smallimg {
    width: 280px;
    height: 150px;
} */
#blgss:hover{
 text-decoration: underline;
 }
 
 .h-100 {
    height: 100vh !important;
}
 
    #myModal{ 
 background: rgba(0,0,0,0.5); 
 }
</style>
   
</head>

<body id="body-load">
    <!-- Preloader Start -->
<%@include file="/jsp/student/student module/header.jsp" %>

	<input type="hidden" value="<%= AppConstants.SUBJECTWISE_MOCK %>" id="subjectWiseConstant">
	<input type="hidden" value="<%= AppConstants.MOCKTEST %>" id="mockTestConstant">
	<input type="hidden" value="<%= AppConstants.FULLSYALLBUSMOCK %>" id="fullMockConstant">
	
    <!-- ***** Wellcome Area Start ***** -->
    <section class="wellcome_area clearfix" id="home">
        <div class="container">
            <div class="row h-100 align-items-center">
                <div class="col-12" id="captionBox">
                     <div class="wellcome-heading">
                     
                       <!--  <h4 style="color:#fff;margin-left:22px;font-size:30px"> Powered by Artificial Intelligence</h4> -->
                      <!--  <h4 style="margin-left:80px;color:#fff;margin-top:10px;font-size:30px"> - Driving Towards Target Rank</h4>
                       <h4 style="margin-left:22px;color:#fff;margin-top:40px;font-size:30px">Specialized in JEE Main</h4> -->
                       
                       
                       <h4 class="highly_text">Highly Personalized Rank Oriented Training</h4>
                       <div class="main_jeeneet">
                       		<div style="display:flex; justify-conte:space-around">
                      			<div class="jee">
                       					<h1 class="jee_text">JEE Main</h1>
                       					<h4 class="rank_promise">1-10k Rank Promising</h4>
                       			</div>
                      			 <h3 class="neetandjee">&amp;</h3>
                       			<div class="neet">
                       					<h1 class="neet_text">NEET</h1>
                       					<h4 class="rank_promise">1-5k Rank Promising</h4>
                       			</div>
                      		 </div>
						</div>
                      
                      <h2 class="money_text"><strong>(100% Money Back-Promising On Bond Paper)</strong></h2>
                       
                        <a   href="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN" target="_blank"><img class="play_store"  src="<%=request.getContextPath()%>/assets/images/students/Playstore_icon.svg" alt="Google Play Store button" border="0"></a>
                   
                         </div>
                       
                   </div> 
                    
                    
                    
                </div>
            </div>
            <div class="row">
                <div>
                    <a href="#about" class="scroll"></a>
                </div>
            </div>
            <div class="wow slideInLeft" data-wow-duration="1s" id="freeaccess_div" style="visibility: visible; animation-duration: 1s; animation-name: slideInLeft;">
            <a href="#" class="wobble-horizontal" id="freeaccess_btn" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Free Access Now</a>
        </div>
        </div>
        
        
        
        
        
        <!-- Welcome thumb -->
        <div class="welcome-thumb wow fadeInDown" style="display:flex" data-wow-delay="0.5s">
            <%-- <img src="<%=request.getContextPath()%>/assets/landing/img/sec1.svg" alt=""> --%>
           <%--   <img src="<%=request.getContextPath()%>/assets/landing/img/Landingpage.svg" alt=""> --%>
             <%-- <video class="videotag" id="video" controls muted>
				<!-- <source src="https://www.radiantmediaplayer.com/media/bbb-360p.mp4" type="video/mp4"> -->
				<source src="<%=request.getContextPath()%>/assets/landing/img/skyget_promo.mp4" type="video/mp4">
				
			 </video> --%>
			 
			 
		 <!-- <img src="https://image.freepik.com/free-vector/tiny-people-testing-quality-assurance-software-isolated-flat-vector-illustration-cartoon-character-fixing-bugs-hardware-device-application-test-it-service-concept_74855-10172.jpg" alt="" style="border-radius:30px;">
		 -->	 
	<%--  <img src="<%=request.getContextPath()%>/assets/landing/img/Home_Pages.png"  alt="" style="width:620px;height:427px">  --%>
		
		<%-- <div>
		<img src="<%=request.getContextPath()%>/assets/images/students/Web_Images.png" alt="">
		</div> --%>
			<!--  <div style="margin-top:20px">
			 <div class="hover-fx"><a href="#" class="icon-button facebook"><i class="fa fa-facebook" id="fb"></i></a></div>
			 
             <div class="hover-fx" style="margin-top:30px"><a href="#" class="icon-button youtube"><i class="fa fa-youtube-play" id="youtube"></i></a></div>
               <div class="hover-fx" style="margin-top:30px"><a href="#" class="icon-button youtube"> <i class="fa fa-instagram" id="insta" aria-hidden="true"></i></a></div>
               
               
               </div> -->
           </div>    
               
  <div id="fixed-social" style="background:#fd7e14">
 	
   <div>
   <!--  <a href="#" ><i class="fa fa-tumblr"></i> <span>Tumblr</span></a> -->
    <a href="https://www.youtube.com/channel/UCVGzlLjc1eHlpLZ707WB3sA?sub_confirmation=1" class="fixed-tumblr" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/Youtube.svg"><span>Youtube</span></a>
  </div>
  <div>
    <a href="https://www.facebook.com/Skyget-JEE-Mains-102206378469953" class="fixed-facebook" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/FaceBook.svg"> <span>Facebook</span></a>
  </div>
	<div>
    <a href="https://www.instagram.com/skygetjeemains/?hl=en" class="fixed-instagrem" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/Instagram.svg"> <span>Instagram</span></a>
  </div>
 
  <div>
  <a href="https://in.pinterest.com/skyget3947/_saved/" class="fixed-twitter" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/Printrest.svg"><span>Pinterest</span></a>
  </div>
  <div>
    <a href="https://play.google.com/store/apps/details?id=com.skyget" class="fixed-googleplay" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/Playstore.svg"> <span>Play Store</span></a>
  </div>
  <div>
    <a href="mailto:support@skyget.ai?subject=&body=" class="fixed-linkedin" target="_blank"><img src="<%=request.getContextPath()%>/assets/images/students/social_meicons/mail.svg"> <span>MAIL</span></a>
  </div>
</div>
               
               
               
               
               
               
    </section>
    <!-- ***** Wellcome Area End ***** -->

    <!-- ***** Special Area Start ***** -->
    <section class="special-area bg-white section_padding_70" id="about">
        <div class="container">
        
        
     		<div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px">Rank Guarantee - 2021</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>

            <div class="row" id="examtypedetails" style="display:flex;justify-content:center">
            </div>
         </div> 
         
         
         
         
       <!--   add -->
          <div class="special_description_area mt-100">
            <div class="container">
                <div class="">
                	<div class="col-12">
                	<img src="<%=request.getContextPath()%>/assets/images/students/Web_site_Add.jpg" style="cursor: pointer;width:100%" id="regbtn" data-toggle="modal" data-target="#centralModalLg">
                	</div>
                </div>
             </div>
          </div>
         
         
         
         
       <!--  text message  block  -->
       
       <div class="special_description_area mt-100">
            <div class="container">
                <div class="row sepsec">
                
               <!--  col-xs-12 col-lg-6 -->
                
                    <div class="col-md-6" style="display:flex; justify-content:center; align-items:center">
                        <div class="special_description_content">
                      <div class="card" style=" background-image: linear-gradient(45deg, #FC4A1A, #F7B733);color: white !important;border-radius: 10px 50px 0px 10px;">
                       		<div class="card-header">
                       		 <p class="text-center card-tittle p-4" style="color:white;font-weight:bold;font-size:30px;"><strong>Only 1000 seats<br> for Rank guarantee  program <br>hurry up now..!!</strong><p>
                       		</div>
                       </div> 
                        </div>
                    </div>
                    <div class="col-md-6" style=" margin-top:25px;display:flex; justify-content:center; align-items:center">
                        <div class="special_description_img">
                            <p><strong>GET LINK IN SMS TO DOWNLOAD THE APP</strong></p>
             			<div class="card mt-3 p-2" style="height:70px !important;box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%) !important;">
             			
             			<form>
<!-- <input type="text" name="mobile" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" placeholder="Mobile number" required>
<button>
Save
</button> -->

             			<div class="d-flex align-items-center ">
             					<span class="ml-2">+</span>
             					<input type="tel" value="91" class="border-0 form-control apps" style="width:40px;font-family: cursive;">
             					<div style="border-left:1px solid red"></div>
                         		<!-- <input type="text" pattern="^[0-9]{6,14}$" maxlength="16" minlength="8" placeholder="Enter mobile number" class="border-0 form-control apps" style="font-family: cursive;"> -->
                           		<input type="text" name="mobile" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" placeholder="Enter mobile number" class="border-0 form-control apps" style="font-family: cursive;" required>
                           		<button class="border-0 btn w-75" style="background-image: linear-gradient(45deg, #FC4A1A, #F7B733);color:white">GET LINK</button>
                        </div>
                        </form>
                        
                        </div>
                        <div style="color:#fd7e14;font-family: cursive;">SMS has been sent to +91 9542352478</div>
                        <div class="mt-3">
                       <div class="d-flex justify-content-around align-items-center">
                        <h6>Download App NOW.</h6>
                        <div style="-webkit-text-size-adjust: none; border-collapse: collapse; font-family: Helvetica, Verdana, Arial; font-size: 12px; color: #7f7f7f;"><a style="color: #499d68;" href="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN" target="_blank"><img style="border: 0px;" src="https://gallery.mailchimp.com/b88b3ba75f26335343bfecdc0/images/5e301e76-08a9-459e-ad1a-b9eab2f28c0c.png" alt="Google Play Store button" border="0"></a></div>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                    
            
      
   	<!-- landing Video -->
   	
   	<div class="special_description_area mt-100">
            
                	<video src="<%=request.getContextPath()%>/assets/images/students/Get_yourvideo.mp4" style="width:100%" muted autoplay loop playsinline></video>
                	
        </div> 
        
         <div class="special_description_area mt-100">
         
            <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px;text-shadow: 0 2px 4px rgba(0,0,0,0.16);">Our Services</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
                <div class="row sepsec">
                
              <!--   col-xs-12 col-lg-8 -->
                
                   <div class="col-md-8">
                        <div class="special_description_img">
                            <img src="<%=request.getContextPath()%>/assets/images/students/sud_tree.svg" alt="">
                        </div>
                    </div>
                    <div class="col-md-4" style="display:flex; justify-content:center; align-items:center">
                        <div class="special_description_img mt-5">
                            <img src="<%=request.getContextPath()%>/assets/images/students/Sudeerbabu.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
      <div class="special_description_area mt-100">
         
         <div class="container">
    		<div class="row">
        <div class="col-6">
            <h3 class="mb-3">Latest Videos </h3>
        </div>
        <div class="col-6 text-right">
            <a class="btn  mb-3 mr-1" style="background-image: linear-gradient(45deg, #FC4A1A, #F7B733);" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                <i class="fa fa-arrow-left"></i>
            </a>
            <a class="btn  mb-3 " style="background-image: linear-gradient(45deg, #FC4A1A, #F7B733);" href="#carouselExampleIndicators2" role="button" data-slide="next">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="col-12">
            <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">

                            <div class="col-md-4 mb-3">
                            
                          <!--   video - 1 -->
							
							<div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/BnJfq-boyZ4" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_3image.png">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/aOy1rsnOtaw" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_4image.jpg">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>
                            <div class="col-md-4 mb-3">
                               <div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/urnDR7t8fJk" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_1image.png">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">

                            <div class="col-md-4 mb-3">
                               <div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/watch?v=UHNizOpFVLg" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_2image.png">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>
                            <div class="col-md-4 mb-3">
                               <div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/aOy1rsnOtaw" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_4image.jpg">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>
                            <div class="col-md-4 mb-3">
                               <div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/urnDR7t8fJk" data-target="#myModal">
					
					 <img class="img-fluid" alt="100%x280" src="<%=request.getContextPath()%>/assets/landing/img/landingpage/video_1image.png">
						<svg x="0" y="0" width="48px" height="48px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
					</div>
                            </div>

                        </div>
                    </div>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>
		</div>
         
     
      
      <!-- slider -->
  
   		<%--  <div class="special_description_area mt-50">
         
         	<div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px;text-shadow: 0 2px 4px rgba(0,0,0,0.16);">Our Services</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
            
             <div class="special_description_img"> 
              
         <img src="<%=request.getContextPath()%>/assets/images/students/newsmall_tree.svg" style="width:100%">
         </div>
 			
       </div> --%>
      
      <div class="special_description_area mt-100" style="padding: 43px;background: beige;">
            <div class="container">
                <div class="row">
      <div class="col-md-3 d-flex justify-content-center align-items-center"  style="border-right: 2px solid #fd7e14;">
          
            <div class="section-heading info_count text-center">
                       
            		<!-- <h1><strong><span class="wordciunt" style="font-family: Raleway;font-size:63px;">1036</span></strong></h1>  -->
            		
            		
            		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  							<div class="carousel-inner">
   					 <div class="carousel-item info active">
     <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;" >1036</span></strong></h1>
    </div>
    <div class="carousel-item info">
    <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;">1546</span></strong></h1>
    </div>
    <div class="carousel-item info">
     <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;" >1309</span></strong></h1>
    </div>
    <div class="carousel-item info">
    <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;">1176</span></strong></h1>
    </div>
    <div class="carousel-item info">
     <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;">1108</span></strong></h1>
    </div>
    <div class="carousel-item info">
    <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;" >1586</span></strong></h1>
    </div>
    <div class="carousel-item info">
     <h1><strong><span  style="font-family: Raleway;font-size:63px;color:#fd7e14;">1009</span></strong></h1>
    </div>
  </div>
 <!--  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> -->
</div>
            	<h4 style="margin-top:15px;">Ranks</h4>
             </div>
            </div>
             <div class="col-md-3 d-flex justify-content-center align-items-center" style="border-right: 2px solid #fd7e14;">
            	 <div class="section-heading info_count text-center">
                      
            		<h1><strong><span class="wordciunt" style="font-family: Raleway;font-size:63px;">59</span><span style="position:relative;top:-33px;">+</span><span style="font-size:30px">min</span></strong></h1>
            		 <h4 style="margin-top:15px;">Average watch time</h4>
             </div>
            </div> 
             <div class="col-md-3 d-flex justify-content-center align-items-center" style="border-right: 2px solid #fd7e14;">
            
             <div class="section-heading info_count text-center">
            		<h1><strong><span class="wordciunt" style="font-family: Raleway;font-size:63px;">40</span><span style="position:relative;top:-33px;">+</span></strong></h1>
            		<h4 style="margin-top:15px;">Previous year question paper</h4>
            		
             </div>
            </div>
             <div class="col-md-3 d-flex justify-content-center align-items-center">
            <div class="section-heading info_count text-center">
                      <a href="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN" target="_blank" style="box-shadow: 0 2px 6px 0 rgba(0,0,0,0.25);"><img src="<%=request.getContextPath()%>/assets/images/students/Playstore_icon.svg"></a>
            		<h1 style="margin-top:15px;"><strong class="d-flex justify-content-around"><p><i class="fa fa-star" aria-hidden="true"></i></p><p><i class="fa fa-star" aria-hidden="true"></i></p><p><i class="fa fa-star" aria-hidden="true"></i></p><p><i class="fa fa-star" aria-hidden="true"></i></p><p><i class="fa fa-star" aria-hidden="true"></i></p></strong></h1>
            		 <h4>Top By Rating</h4>
             </div>
            </div>
            </div>
            </div>
            </div>
            
            
        
   	  
  
  		   <div class="special_description_area mt-50 mb-100">
		 <div class="container">
		 <div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px;text-shadow: 0 2px 4px rgba(0,0,0,0.16);">Why learn on Skyget</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
		 
		 
            <div class="row">
                <div class="col-12">
					<%-- 	<div class="parent_div">
    		 <div class="back-image" id="" onclick="demoVideo()" >
            <img src="<%=request.getContextPath()%>/assets/images/students/img_th.jpg" alt="main-homepage-image" class="teacher-image">
            <div class="" style="display:flex;justify-content:center ;align-items:center" data-toggle="modal" data-target=".bd-example-modal-lg">
           <!--   -->
                <div class="play-button play-button-anim" style="margin-top:170px" >
                    <div class="" id="demo-video" >
                        <svg x="0" y="0" width="78px" height="78px" viewBox="0 0 200 200" class="play play--ripple" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
                    </div>
                </div>
               
           	 </div>
            	<!-- <div class="scroll-helper"></div> -->
       		 </div>
       		 </div> --%>
  			 	
  			 	
  			 	<div class="mani_landingimage card video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/t2fW61mxmc8" data-target="#myModal">
  					<img src="<%=request.getContextPath()%>/assets/images/students/Sud.jpg" alt="sudeer" style="width:100%;box-shadow: 0 10px 20px -6px #000;">
  
 
 					 <svg x="0" y="0" width="58px" height="58px" viewBox="0 0 200 200" class="play play--ripple centered" style="filter: invert(70%) sepia(43%) saturate(4356%) hue-rotate(1deg) brightness(107%) contrast(103%);">
                            <circle fill="transparent" stroke="#FFFFFF" stroke-width="8" cx="100" cy="100" r="96"></circle>
                            <circle clip-path="url(#clipper)" fill="url(#ripple)" cx="100" cy="100" r="130"></circle>
                            <polygon fill="#FFFFFF" points="70.993,60.347 153.398,102.384 70.993,144.42   "></polygon>
                        </svg>
                        <svg x="0" y="0" width="0" height="0">
                            <defs>
                                <clipPath id="clipper">
                                    <circle cx="100" cy="100" r="93"></circle>
                                </clipPath>
                                <radialGradient id="ripple">
                                    <stop offset="0.681994" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0;0.70" begin="0.2s" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.0986606" stop-color="#888" stop-opacity="0.35">
                                        <animate attributeName="offset" values="0.05;0.75" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                    <stop offset="0.162564" stop-color="#000" stop-opacity="0.25">
                                        <animate attributeName="offset" values="0.10;1" begin="0" dur="2.1s" repeatCount="indefinite"></animate>
                                    </stop>
                                </radialGradient>
                            </defs>
                        </svg>
				</div>
  			 	
  			 	
  			 	</div>
   			</div>
			</div>
  			 </div>
  
  		<div id="demoViseo"></div>
  		
  		
  
     </section>
     
     

		<!--Video Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog video_dlboxxx" role="document">
    <div class="modal-content">

      
      <div class="modal-body letestvideo">

       <button type="button" class="close video_closeeeee" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>        
        <!-- 16:9 aspect ratio -->
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item " src="" id="video" allow="fullscreen"  allowscriptaccess="always" allow="autoplay" poster="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190710102234/download3.png"></iframe>
</div>
        
        
      </div>

    </div>
  </div>
	</div> 
    <!-- ***** Special Area End ***** -->

    
    <div class="" id="gallery" style="background: whitesmoke;">
    <svg style="filter: invert(99%) sepia(6%) saturate(223%) hue-rotate(321deg) brightness(115%) contrast(100%); -webkit-transform: scaleY(-1);" class="bottom_img" viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M1000,0c0,0 -420.987,98 -650,98c-229.013,0 -350,-98 -350,-98l0,100l1000,0l0,-100Z"></path></svg>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading-c text-center">
                        <h2 style="font-size:35px">&#x2605; Livezone - Top ten Toppers &#x2605;</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="section-heading text-center relat">
                        <h3 class="ribbonh">FULL SYLLABUS MOCK</h3>
                    </div>
                    <div class="place">
                         <p>
	                         <span class="setfont" id="fullMockName"></span>&nbsp;&nbsp;
	                         <span class="setfont" id="fullMockExamType"></span>&nbsp;&nbsp;
	                         <span class="setdate" id="fullMockExamDate"></span>
                         </p>
                    </div>
                  
                    <div class="img-gallery owl-carousel owl-theme" id="fullMockToppersWrap">

                       
				
                    </div>


                    <div class="section-heading text-center relat">
                        <h3 class="ribbonmock">MOCK</h3>
                    </div>
                    <div class="place">
                        <p><span class="setfont" id="mockName"></span>&nbsp;&nbsp;<span class="setfont" id="mockExamType"></span>&nbsp;&nbsp;&nbsp;<span class="setdate" id="mockExamDate"></span></p>
                    </div>

                    <div class="img-gallery owl-carousel owl-theme" id="mockToppersWrap">

                  
                    </div>

                   <div class="section-heading text-center relat">
                        <h3 class="ribbonfullsub">SUBJECTWISE</h3>
                    </div>
                    <div class="place">
                        <p><span class="setfont" id="subjectWiseName"></span>&nbsp;&nbsp;<span class="setfont" id="subjectWiseExamType"></span>&nbsp;&nbsp;&nbsp;<span class="setdate" id="subjectWiseExamDate"></span></p>
                    </div>

                    <div class="img-gallery owl-carousel owl-theme" id="subjectWiseToppersWrap">

                  
                    </div>


                </div>
            </div>

        </div>
         <svg style="filter: invert(100%) sepia(91%) saturate(0%) hue-rotate(17deg) brightness(106%) contrast(100%);" viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M1000,0c0,0 -420.987,98 -650,98c-229.013,0 -350,-98 -350,-98l0,100l1000,0l0,-100Z"></path></svg>
     
    </div>
    
    <section class="special-area section_padding_70" id="blogs">
    <div class="container">
            <!-- <div class="row">
                <div class="col-12">
                    Section Heading Area
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px">Latest Blog</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div> -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px">Blog</h2>
                        <div class="line-shape"></div>
					</div>
           <!--  <div class="" id="blogdetails"> -->
           <!--  <h4 style="display:flex;justify-content:flex-end;margin-right:10%;">latest updates</h4> -->
          <!--  <div class="line-shape" style="display:flex;justify-content:flex-end;margin-right:10%;"></div> -->
            <div class="row">
			<div class="col-md-8 col-sm-6 mt-3" id="blogleft">
			</div>
			<div class="col-md-4 col-sm-3 mt-3" id="blogright">
			</div>
			</div>
         	<!-- </div> -->
         	</div>
         	</section>
         <!-- 	    
           <section class="special-area section_padding_70" id=""> -->
         <!--  <div class="d-flex justify-content-center">
				<div class="container_log">
		<div class="card logo_team"></div>
		<div class="support">
		<div>
		 <h3 style="font-size: 43px;">Talk to our support Team</h3>
		 <strong style="font-size: 50px;position: relative;right: 24px;">Call<a href="tel:+919398300720">+91 9398300720</a></strong>  
		</div>
		</div>
			</div>
		</div> -->
          

        <!-- </section> -->
        <section class="special-area section_padding_70" id="" >
          
		<div class="container">
		<!-- <div class="row">
                
                col-xs-12 col-lg-8
               <div class="col-md-7">
                         <div class="special_description_content">
                           <h1 style="letter-spacing: 2.2px;color:#fd7e14;font-size: 54px;">Talk to our support Team</h1>
                       
                           <p style="font-size: 48px;line-height: 80px;">Call<a href="tel:+919398300720" class="ml-4" style="color:#726a84">+91 9398300720</a></p>
                        </div>
                    </div>
                    <div class="col-md-5" style="display:flex; justify-content:center; align-items:center">
                        <div class="special_description_img ">
                            <img src="/assets/images/students/customer-serviceworker.jpg" alt="" style="width:100%" class="rounded">
                        </div>
                    </div>
                </div>  -->
                
                <div class=" card" style="    background-image: linear-gradient(45deg , #FC4A1A, #F7B733) !important;border-radius:20px 20px 20px 0px">
                <div class="card-body row">
                <div class="col-md-7 d-flex align-items-center justify-content-center">
    					<div class="text-white">
                <h1><strong class="text-center" style="color:#fff;">Talk to our support Team</strong></h1>
                
                <div>
        			</div>         
                <!-- <button class="btn btn-lg bg-success text-white waves-effect waves-light"> -->
             <!--    <strong><a href="tel:+917093414055" class="text-success">+91 7093414055</a></strong> -->
              <h1><strong class="text-white text-center">Call<a href="tel:+919398300720" class="text-white ml-4">+91 9398300720</a></strong></h1>  
                <!-- </button> -->
                
                </div>
                </div>
                <div class="col-md-5 d-flex align-items-center justify-content-center">
                
              <!--   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSexjdFWWOJ2tggJsiKzANlk_SWTs_Yj-8zlQ&amp;usqp=CAU" style="border-radius:200px;"> -->
                 <img src="/assets/images/students/customer-serviceworker.jpg" alt="" style="width:100%;box-shadow: 0 10px 20px -6px #000;" class="rounded">
                </div>
             </div>
          	</div>
     </div>   

        </section>
        
         <!-- scholarship Large modal -->

	<div class="modal fade bd-example-modal-lg" id="scholarshipmodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    <button type="button" class="close video_closeeeee" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> 
     <img src="<%=request.getContextPath()%>/assets/images/students/Web_Register_Now.jpg" style="cursor: pointer;width:100%" id="" onclick="showreg()">
    
    
    </div>
  </div>
	</div>
	
	<div id=""></div>
	
	
        
       
	 <svg style="filter: invert(0%) sepia(35%) saturate(1447%) hue-rotate(353deg) brightness(112%) contrast(87%);"xmlns="http://www.w3.org/2000/svg" class="cls-2" viewBox="0 0 1920 60"><path id="Path_52" data-name="Path 52" class="cls-1" d="M1920,70H0V0S417,70,960,70,1920,0,1920,0Z"></path></svg>
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
   <%--  <script src="<%=request.getContextPath()%>/assets/landing/js/footer-reveal.min.js"></script> --%>
    <!-- Active JS -->
    <script src="<%=request.getContextPath()%>/assets/landing/js/active.js"></script>
    <script src="<%=request.getContextPath()%>/assets/landing/js/owl.carousel.min.js"></script>
   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
   
	 <script src="<%=request.getContextPath()%>/assets/landing/js/main.js"></script>
	
	<script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/alertify.min.js"></script>
	
	<%-- <script src='<%=request.getContextPath()%>/assets/landing/js/multislider.js'></script>
<script src='<%=request.getContextPath()%>/assets/landing/js/multislider.min.js'></script>
	 --%>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	 
	 <script>
	 
	 
 function showreg(){
		 
		 $('.modal-backdrop').hide();
		 
		 $('#scholarshipmodal').hide();
		 
		 $('#centralModalLg').modal();
		 
	 }
	 
	 
$(document).ready(function(){
	
	/*  var temp= window.location.href;
    if(temp.includes("https://www."))
    {
  //  alert("The URL of this page is: " );
    }else
    {
   //   alert("The URL of : ");
       location.replace("https://www.skyget.ai");
    
    }   */
	
	var anotherlogin=sessionStorage.getItem('isOtherLogin');
		
	if(anotherlogin =="true"){
		$('#scholarshipmodal').hide();
$('#signinmodal').modal("show");
	
	}
	else{
	 $('#scholarshipmodal').modal('show');
	}
	 
	/* 	function checkURLredirect() { */
	     //   alert("The URL of this page is: " + window.location.href);
	  /*      var temp= window.location.href;
	      if(temp.includes("https://www."))
	      {
	    //  alert("The URL of this page is: " );
	      }else
	      {
	     //   alert("The URL of : ");
	         location.replace("https://www.skyget.ai");
	      
	      }  */
	  /*   }  */
		  
		
		 	Gettingexamtypes();
			 gettingnewsexamtypes(); 
	
			
		/* $("#centralModalLg").modal("show");  */
		/* 	var vid = document.getElementById("video");
			     vid.pause(); */
			     
			     
			     
			     
			     
			/*  video modal js     */
			     
			     
			 var $videoSrc;  
			 $('.video-btn').click(function() {
			     $videoSrc = $(this).data( "src" );
			 });
			 console.log($videoSrc);

			   
			   
			 // when the modal is opened autoplay it  
			 $('#myModal').on('shown.bs.modal', function (e) {
			     
			 // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
			 $("#video").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" ); 
			 })
			   


			 // stop playing the youtube video when I close the modal
			 $('#myModal').on('hide.bs.modal', function (e) {
			     // a poor man's stop video
			     $("#video").attr('src',$videoSrc); 
			 }) 
			     		     
	
			     
		});
	</script>
   
   
    <script>
    
   /*  $("#centralModalLg").click(function(){
	    vid = document.getElementById("video");
		    vid.play();
    }) */
    
       $(".mainBoxPop").click(function(){
    	    return false;
	})
   <%--  function onHover()
    {
        $("#jeemainsimg img").attr('src', '<%=request.getContextPath()%>/assets/landing/img/jeeMainsafter.svg');
    }

    function offHover()
    {
        $("#jeemainsimg img").attr('src', '<%=request.getContextPath()%>/assets/landing/img/jeeMainsnormal.svg');
    }
    
   --%>
   $("#register").click(function(){
       
       if(modelfalse){
      	 
      	 $('#centralModalLg').modal('hide');
  	 }
  	 else{
  		 return false;
  	 }
   })
   
   
   $(".toggle-password").click(function() {

  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});
		/* $("#signBtn").click(function(){
             $('#centralModalLg').modal('hide');
         })
       
         $("#signUpBtn").click(function(){
        		 $('#signinmodal').modal('hide');	 
         });
             
         
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
            }) */
		
			
			
		
         $("#getstart").on("click",function(){
        	 
        	 var mobile = $("#getnumber").val();
        	 
        	 $("#mobilenumber").val(mobile); 
         })   
         
    $("#forgpass").on("click",function(){
    	$('#forgotpassw').show();
    	$('#signinmodal').hide();
       $('.modal-backdrop').hide();
	  });
         
         $("#parentforgpass").on("click",function(){
        	 $('#forgotpassw').show();
        	 $('#parentsigninmodal').hide();
        	 $('.modal-backdrop').hide();
         });
/*   
         $("#parentloginbtn").on("click",function(){
         	//$('#forgotpassw').show();
         	$('#signinmodal').hide();
         	$('.modal-backdrop').hide();
     	  }); */
     	/*  $('#basicSlider').multislider({
 			continuous: true,
 			duration: 9000
 		});
 		$('#mixedSlider').multislider({
 			duration: 900,
 			interval: 9000
 		}); */
    	
/*  	 setTimeout(function() {
 		    $('#centralModalLg').modal("show");
 		}, 30000); 
 	
 */ 		  
 		
 	$(".testimonials-carousel").owlCarousel({
 	    autoplay: true,
 	    dots: true,
 	    loop: true,
 	    items: 1
 	  });
 	
 	
 	
 	$('.wordciunt').each(function () {
 	    $(this).prop('Counter',0).animate({
 	        Counter: $(this).text()
 	    }, {
 	        duration: 4000,
 	        easing: 'swing',
 	        step: function (now) {
 	            $(this).text(Math.ceil(now));
 	        }
 	    });
 	});
 		 
    </script>
   

</body>

</html>
 <%

 String logoutstatus = request.getParameter("status");


	
 if(logoutstatus!=null && logoutstatus.equals("403"))
 {
	 %>
     <script>
    
     logoutStudent();   
     </script>
 <%
 }

 %> 
 
  
 