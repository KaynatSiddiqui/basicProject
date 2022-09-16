<%@page import="com.zomant.util.AppConstants"%>
<style>

/*--------------------------------------------------------------
# Footer
--------------------------------------------------------------*/
.footer {
  background: #000;
  padding: 0 0 30px 0;
  color: #eee;
  font-size: 14px;
  z-index: -101; 
  
   bottom: 0px; 
 /*   width: 1349px; */
 
}

.footer .footer-top {
  background: #111;
  padding: 60px 0 30px 0;
}

.footer .footer-top .footer-info {
  margin-bottom: 30px;
}

.footer .footer-top .footer-info h3 {
  font-size: 34px;
  margin: 0 0 20px 0;
  padding: 2px 0 2px 10px;
  line-height: 1;
  font-family: "Montserrat", sans-serif;
  font-weight: 700;
  letter-spacing: 3px;
  border-left: 4px solid #fd7e14;
}

.footer .footer-top .footer-info p {
  font-size: 14px;
  line-height: 24px;
  margin-bottom: 0;
  font-family: "Montserrat", sans-serif;
  color: #eee;
}

/* .footer .footer-top .social-links a { */
  /* font-size: 18px;
  display: inline-block;
  background: #333;
  color: #eee;
  line-height: 1;
  padding: 8px 0;
  margin-right: 4px;
  border-radius: 50%;
  text-align: center;
  width: 36px;
  height: 36px;
  transition: 0.3s; */
  
    /*  font-size: 38px;
    display: inline-block;
    background: #333;
    color: #eee !important;
    line-height: 1;
    padding: 10px 0;
    margin: 10px;
    margin-right: 4px;
    border-radius: 50%;
    text-align: center;
    width: 60px;
    height: 60px;
    transition: 0.3s;
}

 */
.footer .footer-top .social-links a {
    font-size: 25px;
    display: inline-block;
    background: #333;
    color: #eee !important;
    line-height: 1;
    padding: 7px 0;
    margin: 7px;
    margin-right: 4px;
    border-radius: 50%;
    text-align: center;
    width: 40px;
    height: 40px;
    transition: 0.3s;
}

.footer .footer-top .social-links a:hover {
  background: #fd7e14;
  color: #fff;
}

.footer .footer-top h4 {
  font-size: 14px;
  font-weight: bold;
  color: #fff;
  text-transform: uppercase;
  position: relative;
  padding-bottom: 12px;
}

.footer .footer-top h4::before, .footer .footer-top h4::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 2px;
}

.footer .footer-top h4::before {
  right: 0;
  
}

.footer .footer-top h4::after {
  background: #fd7e14;
  width: 60px;
}

.footer .footer-top .footer-links {
  margin-bottom: 30px;
}

.footer .footer-top .footer-links ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer .footer-top .footer-links ul i {
  padding-right: 8px;
  color: #ddd;
}

.footer .footer-top .footer-links ul li {
  border-bottom: 1px solid #333;
  padding: 10px 0;
}

.footer .footer-top .footer-links ul li:first-child {
  padding-top: 0;
}

.footer .footer-top .footer-links ul a {
  color: #eee;
}

.footer .footer-top .footer-links ul a:hover {
  color: #fd7e14;
}

.footer .footer-top .footer-contact {
  margin-bottom: 30px;
}

.footer .footer-top .footer-contact p {
  line-height: 26px;
}

.footer .footer-top .footer-newsletter {
  margin-bottom: 30px;
}

.footer .footer-top .footer-newsletter input[type="email"] {
  border: 0;
  padding: 6px 8px;
  width: 65%;
}

.footer .footer-top .footer-newsletter input[type="submit"] {
  background: #fd7e14;
  border: 0;
  width: 35%;
  padding: 6px 0;
  text-align: center;
  color: #fff;
  transition: 0.3s;
  cursor: pointer;
}

.footer .footer-top .footer-newsletter input[type="submit"]:hover {
  background: #13a456;
}

.footer .copyright {
  text-align: center;
  padding-top: 30px;
}

.footer .credits {
  text-align: center;
  font-size: 13px;
  color: #ddd;
}


.form #sendmessage {
  color: #18fd14;
  border: 1px solid #18fd14;
  display: none;
  text-align: center;
  padding: 15px;
  font-weight: 600;
  margin-bottom: 15px;
}

.form #errormessage {
  color: red;
  display: none;
  border: 1px solid red;
  text-align: center;
  padding: 15px;
  font-weight: 600;
  margin-bottom: 15px;
}

 .form #sendmessage.show, #contact .form #errormessage.show, #contact .form .show {
  display: block;
}

.form .validation {
  color: red;
  display: none;
  margin: 0 0 20px;
  font-weight: 400;
  font-size: 13px;
}
 .form input, #contact .form textarea {
  padding: 10px 14px;
  border-radius: 0;
  box-shadow: none;
  font-size: 15px;
}

.form button[type="submit"] {
  background: #fd7e14;
  border: 0;
  padding: 10px 30px;
  color: #fff;
  transition: 0.4s;
  cursor: pointer;
}
/* .form button[type="submit"]:hover {
  background: #13a456;
} */

</style>

    <%-- <!-- ***** Footer Area Start ***** -->
    <footer class="footer-social-icon text-center section_padding_50e clearfix">
        <!-- footer logo -->
        <div class="footer-text">
            <img class="footlogo" src="<%=request.getContextPath()%>/assets/landing/img/Registerlogo.svg" >
        </div>
        <!-- social icon-->
     <!--    <div class="footer-social-icon">
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#"><i class="active fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#"> <i class="fa fa-instagram" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
        </div> -->
        <div class="footer-menu">
            <nav>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/jsp/student/student module/about.jsp">About</a></li>
                    <li><a href="<%=request.getContextPath()%>/jsp/student/student module/tc.jsp">Terms of Services</a></li>
                    <li><a href="<%=request.getContextPath()%>/jsp/student/student module/privacy.jsp">Privacy Policy</a></li>
                    <li><a href="<%=request.getContextPath()%>/jsp/student/student module/contact.jsp">Contact</a></li>
                </ul>
            </nav>
        </div>
        <!-- Foooter Text-->
        <div class="copyright-text">
           
            <p>Copyright &copy; 2020 Zomant Solutions Private Limited,  All rights reserved.</p>
        </div>
    </footer>
    <!-- ***** Footer Area Start ***** --> --%>
    
    
    
    <!--==========================
    Footer
  ============================-->
  <section class="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">
			 <!-- <div class="col-lg-3 col-md-6 footer-links"> -->
            <!-- <h4>Useful Links</h4> -->
            <!-- <ul> -->
              <!-- <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li> -->
              <!-- <li><i class="ion-ios-arrow-right"></i> <a href="#">About us</a></li> -->
              <!-- <li><i class="ion-ios-arrow-right"></i> <a href="#">Services</a></li> -->
              <!-- <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of service</a></li> -->
              <!-- <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy policy</a></li> -->
            <!-- </ul> -->
          <!-- </div> -->
  
         <div class="col-lg-5 col-md-6 footer-info" style="display:flex; justify-content:center">
         <div>
         <h4>Feedback</h4>
             <div class="form">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" class="contactForm needs-validation" novalidate>
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="name" required class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <!-- <div class="validation"></div> -->
                 <div class="invalid-feedback">
        			Please Enter name.
     			 </div>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" required name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
               <!--  <div class="validation"></div> -->
                <div class="invalid-feedback">
        			 Please Enter email.
      			</div>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" required name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <!-- <div class="validation"></div> -->
               <div class="invalid-feedback">
       			  Please Write your subject.
     			 </div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" required rows="5" data-rule="required" id="feedback" data-msg="Please write something for us" placeholder="Message"></textarea>
             <!--  <div class="validation"></div> -->
              <div class="invalid-feedback">
       			 Please Write your feedback.
      		</div>
            </div>
            <div class="text-center" ><button class="btn text-white" style="background-image: linear-gradient(45deg, #FC4A1A, #F7B733);border-radius:15px" id="sendmessage" onclick="sendFeedback()">Send Message</button></div>
          </form>
        </div>
          </div>
          </div>
          <div class="col-lg-3 col-md-6 footer-contact" style="display:flex; justify-content:center">
          <div>
            <h4>Contact Us</h4>
            <p class="text-white">
              4th floor, Plot No.50,<br>
Silicon Valley, Image Garden Road<br>
Hyderabad,Telangana 500081 <br>
              <strong>Phone:</strong><a href="tel:+917093414055" class="text-white">+91 9398300720</a><br>
              <strong>Email:</strong> support@skyget.ai<br>
            </p>

           </div>

          </div>
          
        

          <div class="col-lg-2 col-md-6 footer-newsletter" style="display:flex; justify-content:center">
          <div>
		   <h4>Follow Us On</h4>
           <div class="social-links">
             <!--  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> -->
              <a href="https://www.facebook.com/Skyget-JEE-Mains-102206378469953" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="https://www.instagram.com/skygetjeemains/?hl=en" target="_blank" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="https://www.youtube.com/channel/UCVGzlLjc1eHlpLZ707WB3sA?sub_confirmation=1" target="_blank" class="google-plus"><i class="fa fa-youtube-play"></i></a><br>
              <a href="https://in.pinterest.com/skyget3947/_saved/" target="_blank" class="linkedin"><i class="fa fa-pinterest"></i></a>
              <a href="https://play.google.com/store/apps/details?id=com.skyget" target="_blank" class="twitter"><i class="fa fa-play-circle"></i></a>
           	 <a href="https://play.google.com/store/apps/details?id=com.skyget" target="_blank" class="twitter" style="color:#eee !important"><i class="fa fa-linkedin"></i></a>
            </div>
          </div>
          </div>
          
         <div class="col-lg-2 col-md-6" style="display:flex; justify-content:center">
         <div>
         <h4>Links</h4>
            
          	<ul>
          		<li><a class="text" href="<%=AppConstants.BASE_URL%>student/student module/privacy.jsp" style="color: #fff;"><p class="text-white">Privacy and Policy</p></a></li>
          		<li><a class="text" href="<%=AppConstants.BASE_URL%>student/student module/tc.jsp" style="color: #fff;"><p class="text-white">Terms and Conditions</p></a></li>
          	</ul>
          </div>
 		</div>
        </div>
     
     
    <!-- <h6 style="border-top:1px solid white"></h6> -->
    <%--  <div class="footer-menu">
            <nav style="padding:0px 20px">
                <ul>
                    <li><a class="text-white" href="<%=request.getContextPath()%>/jsp/student/student module/about.jsp">About</a></li>
                    <li><a class="text-white" href="<%=request.getContextPath()%>/jsp/student/student module/tc.jsp">Terms of Services</a></li>
                    <li><a class="text-white" href="<%=request.getContextPath()%>/jsp/student/student module/privacy.jsp">Privacy Policy</a></li>
                    <li><a class="text-white" href="<%=request.getContextPath()%>/jsp/student/student module/contact.jsp">Contact</a></li>
                </ul>
            </nav>
        </div> --%>
      </div>
    </div>
    
   

    <div class="container">
      <div class="copyright">
        <strong>Copyright © 2021 Zomant Solutions Private Limited, All rights reserved.</strong>
      </div>
     
    </div>
  </section><!-- .footer -->
  
  
  <script>
  
//Example starter JavaScript for disabling form submissions if there are invalid fields
  (function() {
    'use strict';
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();
  
  	function sendFeedback(){
  		
  		var name= $("#name").val();
  		var email=$("#email").val();
  	/* 	var standardId=parseInt(standardId1) */
  		var subject= $("#subject").val();
  		var feedback= $("#feedback").val();
  		
  		var input ={
  				
  				 
  					"name":name,
  					"email":email,
  					"source":"skyget",
  					"subject":subject,
  					"feedback":feedback
  				
  				}
  				
  				var output =JSON.stringify(input);
  				console.log(output);
  				 $.ajax({
  						  url : base_url+"rest/student/feedbackEmail",
  						  type:"POST",
  						  dataType:"json",
  						  contentType:'application/json',
  						  data: output,
  						  success:function(data){
  							  $("#sendmessage").html("");
  							  
    							$("#sendmessage").html("Thanks For Your Feedback...");
    							
    							 window.setTimeout(function(){
    							 window.location.reload();
    							  }, 4000);	
  						},
  					  error:function(data){
  						  alert(data.responseJSON.errorMessage);
  					  }
  					  
  				});
  	}
  
  </script>