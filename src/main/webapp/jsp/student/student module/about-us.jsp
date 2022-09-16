<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.zomant.util.AppConstants"%>




    
    
   

<!doctype html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="">
  <![endif]-->
  <!--[if IE 7]>
  <html class="no-js lt-ie9 lt-ie8" lang="">
    <![endif]-->
    <!--[if IE 8]>
    <html class="no-js lt-ie9" lang="">
      <![endif]-->
      <!--[if gt IE 8]><!-->
      <html class="no-js" lang="en">
        <!--<![endif]-->
        <head>
          <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="format-detection" content="telephone=no">
<!-- <meta name="description" content="Meal Village local chef&#39;s prepare fresh, wholesome, made from scratch dinners that are cooked and delivered daily to our customers&#39; homes or offices. ">
<meta name="keywords" content="keyword1 keyword2">
<title>Terms & Conditions - Meal Village </title> -->
<title>About Us </title>


			          	<!-- Google Tag Manager -->
			
			<!-- End Google Tag Manager -->
          
          <!-- FAVICON -->
          <!-- <link rel="shortcut icon" href="favicon.ico" /> -->
          <!-- <link rel="apple-touch-icon" sizes="57x57" href="apple-touch-icon-57x57.png"> -->
          <!-- <link rel="apple-touch-icon" sizes="72x72" href="apple-touch-icon-72x72.png"> -->
          <!-- <link rel="apple-touch-icon" sizes="114x114" href="apple-touch-icon-114x114.png"> -->
          <!-- <link rel="apple-touch-icon" sizes="144x144" href="apple-touch-icon-144x144.png"> -->
          <!-- STYLESHEET -->
          
         
          
		<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <link rel="stylesheet" href="style.css">
		  <link rel="stylesheet" href="bootstyle.css"> -->
		  
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/bootstrap.min.css">
       <!--    <link rel="stylesheet" href="mvcss/font-awesome.css">
          <link rel="stylesheet" href="mvfonts/opensans/stylesheet.css">
          <link rel="stylesheet" href="mvfonts/pacifico/stylesheet.css">
          <link rel="stylesheet" href="mvcss/print.css">
          <link rel="stylesheet" href="mvcss/style.css">
		  <link rel="stylesheet" href="mvcss/bootstyle.css"> -->
		  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/solid.css" integrity="sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z" crossorigin="anonymous">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css" integrity="sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6" crossorigin="anonymous">
     <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/student/css/animate.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/font-awesome.min.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/style.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/bootstyle.css" type="text/css">
		  
		   
		  
		  <!-- <script> -->
		<!-- (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ -->
		<!-- (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), -->
		<!-- m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) -->
		<!-- })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); -->
		 <!-- ga('create', 'XXXXX', 'auto'); -->
		<!-- ga('send', 'pageview'); -->
		<!-- </script> -->
		  
          <script src="mvjs/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		     
		   
		         <!-- Facebook Pixel Code -->
				<script>
				!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
				n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
				n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
				t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
				document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '1550325641938253');
				fbq('track', "PageView");
				fbq('track', "Terms Web");
				</script>
				<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1550325641938253&ev=PageView&noscript=1"
/></noscript>
		        <!-- End Facebook Pixel Code -->
		</head>
<body class="home">
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TLSFRB5"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	<%-- <input type="hidden" id="baseURL"
		value="<%=AppConstants.WEB_SITE_URL%>" /> --%>
	<!-- Spinner div start-->
	<!-- <div class="loader"></div> -->
	<!-- Spinner div end-->
	<div id="dialogoverlay"></div>
	<div id="dialogbox">
		<div>
			<div id="dialogboxhead"></div>
			<div id="dialogboxbody"></div>
			<div id="dialogboxfoot"></div>
		</div>
	</div>

	<%@include file="/jsp/master/header-landing.jsp" %> 
		
		<!--  class to maintion equal margin to top-->
		<main class="main-content">	
				<section class="make-abtus">
					<div class="wrap bg-container">
						<div class="item cust-alpg-hed">
							<div class="container-fluid">
								<div class="container">
									<div class="row faq-row-tp">
										<div class="col-md-12">
											<p class="fq-log-txt">About Us</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="container-fluid con-1">
								<div class="container cstcont-abtus">
									<div class="row">
										<div class="col-md-7 cst-lftimght">
            									<img class="img-responsive hgtabtsimg" src="<%=request.getContextPath()%>/assets/images/students/landing/Online.jpg" alt="Meal Village">
										</div>
										<div class="col-md-5 cst-abtimg">
										<!-- <h3 class="voffset3" >About Us</h3> -->
											<p>At Skyget We provide the management of examination and assessment, using an advanced hassle-free transactional interface. The streamlined process flow help with the easy creation of tests, circulation of products,
											 calculation of scores, etc. It provides development of an improved communication link in-between the assessor and the assessee. Multiple tests can be clubbed together to form a product that can be purchased by the candidate
											  and would contribute to the revenue generation. Secured flow of information, multiple payment gateway options, synchronized android and iOS interface will take you to the next level of examination. The panel is self- operational
											   that requires simple online subscription that is extremely easy to use and learn..</p>
											<p>Now, perform exams meeting your requirements to restrict and liberate the movement, depute timelines, transparency of the text, shuffle and randomize, define guidelines, use tags assuring
											 smoother search, allocate penalty on incorrect attempts, and more wherever and whenever you want to.</p>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
		</main>

	


	 <%@include file="/jsp/master/footer-landing.jsp" %>

         
           <script src="<%=request.getContextPath()%>/assets/js/termsjs/common1.js"></script>
           <script src="<%=request.getContextPath()%>/assets/js/base.js"></script>
		  
		
                    
        </body>
      </html>