<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.zomant.util.AppConstants"%>

<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="format-detection" content="telephone=no">
<title>Contact Us </title>
	      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/bootstrap.min.css">
	      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/solid.css" integrity="sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z" crossorigin="anonymous">
	      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css" integrity="sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6" crossorigin="anonymous">
	      <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/student/css/animate.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/font-awesome.min.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/style.css" type="text/css">
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/termcss/bootstyle.css" type="text/css">
		  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
		  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	
	<style>
	
	#bodycontact {
    /* font-family: "Droid Sans", Arial, sans-serif; */
    font-family: Roboto;
    font-weight: 400;
    font-size: 19px;
    line-height: 1.7;
    /* color: #777; */
    color: #272727;
    background: #efefef;
}
	.gtco-heading h2 {
    font-size: 28px;
    font-family: Roboto;
    margin-bottom: 20px;
    line-height: 1.5;
    font-weight: bold;
    color: #000;
    text-transform: uppercase;
    position: relative;
    padding-bottom: 10px;
	    padding-top: 40px;
}

.gtco-heading p {
    font-size: 20px;
    line-height: 1.5;
    color: #1a1a1a;
}
	h1, h2, h3, h4, h5, h6, figure {
    color: #000;
    font-family: "Droid Sans", Arial, sans-serif;
    font-weight: 400;
    margin: 0 0 20px 0;
}
	.btn-primary {
    background: #17B794;
    color: #fff;
    border: 2px solid #17B794 !important;}
	
	.form-control {
    box-shadow: none;
    background: transparent;
    border: 2px solid rgba(0, 0, 0, 0.1);
    height: 54px;
    font-size: 18px;
    font-weight: 300;
}
.gtco-contact-info ul li {
    padding: 0 0 0 50px;
    margin: 0 0 30px 0;
    list-style: none;
    position: relative;
	
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.emaillink a:hover, .emailflink a:hover {
    color: #17B794;
    text-decoration: none;
}
.emaillink {
color:black;
}
.form-control {
    box-shadow: none;
    background: transparent;
    border: 2px solid rgba(0, 0, 0, 0.1);
    height: 54px;
    font-size: 18px;
    font-weight: 300;
}
/* .contact-section {
    background: #efefef;
} */
.hrr{
text-align:center;
background:#17B794;
font-weight:bold;
height:2px;
width:50px;
    position: relative;
    left: 340px;
   
    bottom: 18px;

}
.secondhdng{
padding-bottom: 50px;
}
.cnt{
    text-align: center;
    margin-left: -66px;

}
.side{
 padding-left:20px;
 color:#000;

}
.side2{
 padding-left:30px;
 color:#000;

}
.sideinfo{
 padding-left:20px;
 color:#000;
}
.sideinfo:hover{
color: #17B794;
}
.btn-primary:hover{
background:#17B794;
}
	</style>
</head>
<body id="bodycontact">

<%@include file="/jsp/master/header-landing.jsp" %>
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
								<div class="container">
<div id="contact" class="gtco-section contact-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Contact Us</h2>
			<p class="hrr"><strong></strong></p>
					<p class="secondhdng"> Reach out for any queries or just say hello</p>
				</div>
			</div>
			<div class="row row-pb-md">
				<div class="col-md-6 animate-box">
					<h3>Get In Touch</h3>
					<form action="contact.php" method="post">
						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="name">Name</label>
								<input type="text" id="name" class="form-control" name="name" maxlength="50" placeholder="Full Name" required/>
							</div>
							
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="email">Email</label>
								<input type="email" id="email" class="form-control" name="email" maxlength="110" placeholder="Email Address" required/>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="subject">Subject</label>
								<input type="text" id="subject" class="form-control" name="subject" maxlength="220" placeholder="Subject" required/>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="message">Message</label>
								<textarea name="message" id="message" cols="30" rows="10" name="message" maxlength="1000" class="form-control" placeholder="Write us something" required></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary btn-lg">
						</div>

					</form>		
				</div>
				<div class="col-md-5  animate-box">
					
					<div class="gtco-contact-info">
						<h3 class="cnt">Contact Information</h3>
						<ul>
							<li class="address align-baseline"><i class="fa fa-map-marker" aria-hidden="true" style="font-size:25px;color:#17B794;" ></i><span class="side">F-504, Riviera Apartment, 6-3-347/9,</span><span class="side2"> Dwarakapuri, Punjagutta,</span><span class="side2"> Hyderabad,Telangana 500082</span></li>
							<li class="phone"><i class="fa fa-phone" aria-hidden="true" style="font-size:25px;color:#17B794;"></i><span class="side">040-4851 9371</span></li>
							<li class="email emaillink"><i class="fa fa-envelope" aria-hidden="true" style="font-size:25px;color:#17B794;"></i><a href="#"><span class="sideinfo"> info@Skyget.com</span></a></li>
						</ul>
					</div>


				</div>
			</div>
			</div>
			
		</div>
		</div>
							</div>
						</div>
					</div>
				</section>
		</main> 



		<%@include file="/jsp/master/footer-landing.jsp" %>
	       <script src="https://use.fontawesome.com/ca0bd5c46f.js"></script>
	       <script src="<%=request.getContextPath()%>/assets/js/termsjs/common1.js"></script>
           <script src="<%=request.getContextPath()%>/assets/js/base.js"></script>
</body>
</html>