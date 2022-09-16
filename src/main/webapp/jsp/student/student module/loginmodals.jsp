<%@page import="com.zomant.util.AppConstants"%>

<div class="modal fade" id="centralModalLg" tabindex="1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >

        <!-- Change class .modal-sm to change the size of the modal -->
        <div class="modal-dialog modal-lg" role="document">
    
    
          <div class="modal-content"  style="box-shadow: 0 0 55px rgba(0, 0, 0, 0.315); border-radius:20px; position: absolute;top: -100px;transform: scale(0.84,0.75)!important;">
            <div class="container mainBoxPop">
                <div class="row">
                <!-- left section -->
                <div id="leftsec" class="col-lg-6">
                    <div class="logo">
                    
                        <img src="<%=request.getContextPath()%>/assets/landing/img/Registerlogo1.svg" alt="logo">
                          </div>
                    <div class="heading">
                        <p>WELCOME!</p>
                        <p style="color: white;">to the <b>TOPPER</b> of the year</p>
                        <img src="<%=request.getContextPath()%>/assets/landing/img/loginimg.svg" width="80%" style="margin-top: 50px;">
                    </div>
  
                </div>
                <!-- left section ends -->
                <!-- right section -->
                <div id="rightsec" class="col-lg-6">
                    <div class="headTitle">
                        <p class="signup">Register</p>
                        <form action="">
                            <div class="md-form">
                                <i class="active fa fa-user prefix"></i>
                                <input type="text" id="namem" class="form-control">
                                <label class="plalor" for="name">Name</label>
                            </div>
                          <!--   <div class="md-form">
                                <i class="active fa fa-envelope prefix"></i>
                                <input type="email" id="emailm" class="form-control">
                                <label class="plalor" for="email">E-Mail</label>
                            </div> -->
                            <div class="md-form">
                                <i class="active fa fa-mobile prefix"></i>
                                <input type="text" id="mobilenumber" class="form-control" minlength="10" maxlength="10">
                                <label  class="plalor" for="mobilenumber">Mobile</label>
                            </div>
                          <!--   <div class="md-form">
                                <i class="active fa fa-lock prefix"></i>
                                <input type="password" id="password" class="form-control">
                                <label  class="plalor"for="password">Password</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-lock prefix"></i>
                                <input type="password" id="confpsd" class="form-control">
                                <label class="plalor" for="confpsd">Confirm Password</label>
                            </div> -->
                            <div class="md-form">
                                <i class="active fa fa-lock prefix"></i>
                                <input type="text" id="referalcode" class="form-control">
                                <label class="plalor" for="confpsd">Use Referral Code & Earn Rs.10</label>
                            </div>
                            
                           
                            <div><p class="priText" style="font-weight: bold;">Welcome Bonus Rs 500</p></div>
                            <div><p class="priText">By submitting this form, you agree to the <a href="<%=request.getContextPath()%>/jsp/student/student module/tc.jsp">Terms</a> and <a href="<%=request.getContextPath()%>/jsp/student/student module/privacy.jsp">Privacy Policy</a>.</p></div>
                            <div class="logAec">
                                <a class="btn subMitBtn text-white" id="register" onclick="registerstudent()">Register</a><br>
                                <a id="signBtn" class="signBtn" >
                                    LOG IN ?
                                </a>
                         </div>   
                        </form> 
                    </div>
                </div>
                </div>
                    <!-- left section ends -->
                </div>
            </div>
        </div>
    </div>
      <!-- Central Modal Small -->
<!-- Central Modal Small -->
<div>





    <div class="modal fade" id="signinmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top: -70px;transform: scale(0.7,0.75)!important;">
           <div id="backSignIn">
               <div id="leftsec1" class="col-sm-12">
               
                   
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p>WELCOME!</p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/landing/img/loginimg.svg" style="margin-left: 27px;margin-top: 65px;opacity: 0.9;width: 80%;">
                       
                       
                   </div>
                   
              
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/landing/img/login&forglogo.png" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Log In</p>
                           <form id="loginForm" method="POST">
                               <div class="md-form md-form1">
                               <i class="active fa fa-user prefix"></i>
                                   <input type="text" id="lmobilenumber" name="mobilenumber" class="form-control" required>
                                   <label class="plalor" for="lmobilenumber">Enter Mobile Number</label>
                               </div>
                              <!--  <div class="md-form md-form1">
                                <i class="active fa fa-lock prefix"></i>
                                   <input type="password" id="lpassword" name="password" class="form-control" required>
                                   <label class="plalor" for="lpassword">Enter Password</label>
                                   <span toggle="#lpassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                               </div> -->
                                <br> 
                                <div class="logAec1">
                                   <input  class="btn subMitBtn" id="loginBtn" type="submit" value="LOG IN"><br>
                                   <a href="#" class="signBtn" id="signUpBtn" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Dont Have Account? Register</a><br>
                                  <!--  <a href="#" id="forgpass" data-toggle="modal" data-target="#forgotpassw" data-backdrop="true"  class="signBtn1">Forgot Password?</a> -->
                               </div>  
                                
                           </form> 
                       </div>
                   </div>
               </div>
           </div>
               </div>
           </div>
        </div>
           
         </div>
       </div>
       
       
        <div class="modal fade" id="parentsigninmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top: -70px;transform: scale(0.7,0.75)!important;">
           <div id="backSignIn">
               <div id="leftsec1" class="col-sm-12">
               
                   
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p>WELCOME!</p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/landing/img/loginimg.svg" style="margin-left: 27px;margin-top: 65px;opacity: 0.9;width: 80%;">
                       
                       
                   </div>
                   
              
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/landing/img/login&forglogo.png" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Parent Log In</p>
                           <form id="parentloginForm" method="POST">
                               <div class="md-form md-form1">
                               <i class="active fa fa-user prefix"></i>
                                   <input type="text" id="pmobilenumber" name="mobilenumber" class="form-control" required>
                                   <label class="plalor" for="pmobilenumber">Enter Username</label>
                               </div>
                               <div class="md-form md-form1">
                                <i class="active fa fa-lock prefix"></i>
                                   <input type="password" id="ppassword" name="password" class="form-control" required>
                                   <label class="plalor" for="ppassword">Enter Password</label>
                               </div>
                                <br> 
                                <div class="logAec1">
                                   <input  class="btn subMitBtn" id="loginBtn" type="submit" value="LOG IN"><br>
                                  <!--  <a href="#" class="signBtn" id="signUpBtn" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Dont Have Account? Register</a><br> -->
                                   <a href="#" id="parentforgpass" data-toggle="modal" data-target="#forgotpassw" data-backdrop="true"  class="signBtn1">Forgot Password?</a>
                               </div>  
                                
                           </form> 
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
  <!-- Central Modal Small -->
  
  <!-- Forgot password -->
        <div class="modal fade" id="forgotpassw" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top: -70px;transform: scale(0.7,0.75)!important;">
           <div id="backSignIn">
               <div id="leftsec1" class="col-sm-12">
               
                   
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p><img src="<%=request.getContextPath()%>/assets/landing/img/Registerlogo1.svg" width="220px"  alt="logo"></p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/landing/img/loginimg.svg" style="margin-top: 50px;opacity: 0.9;border-radius: 15px;">
                       
                   </div>
                   
              
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/landing/img/login&forglogo.png" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Forgot Password</p>
                           <form action="">
                               <div class="md-form md-form1">
                                   <input type="text" id="emai_mob" class="form-control">
                                   <label for="emai_mob">Enter Mobile Number or Email ID:</label>
                               </div>
                                <br> 
                                <div class="logAec1">
                                   <a class="btn subMitBtn" data-backdrop="true" onclick="sendforotp()">Submit for Otp</a><br>
                               </div>  
                                
                           </form> 
                       </div>
                   </div>
               </div>
           </div>
            </div>
           </div>
        </div>
         </div>
       </div>
  <!-- Forgot password -->
  
   <!-- otp --> 
  
<div class="modal fade" id="otpfunct" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top: -70px;transform: scale(0.7,0.75)!important;">
           <div id="backSignIn">
               <div id="leftsec1" class="col-sm-12">
               
                   
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p>OTP VERIFICATION!</p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/landing/img/card.jpg" style="margin-top: 50px;opacity: 0.9;border-radius: 15px;">
                       
                   </div>
                   
              
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/landing/img/login&forglogo.png" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Otp Verification</p>
                           <form action="">
                               <div class="md-form md-form1">
                                   <input type="text" id="otpnumber" class="form-control">
                                   <label for="lmobilenumber">Enter otp:</label>
                               </div>
                                <br> 
                                <div class="logAec1">
                                   <a  class="btn subMitBtn" data-backdrop="true" onclick="otpverification()" >Submit Otp</a><br>
                                    <a  class="btn subMitBtn"  onclick="sendforotp()" >Resend</a>
                               </div>  
                                
                           </form> 
                       </div>
                   </div>
               </div>
           </div>
               </div>
           </div>
        </div>
           
         </div>
    </div>
        
         <!-- otp -->
         
     <!-- change password -->
      
       <div class="modal fade" id="passwchange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top: -70px;transform: scale(0.7,0.75)!important;">
           <div id="backSignIn">
               <div id="leftsec1" class="col-sm-12">
               
                   
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p>CHANGE PASSWORD!</p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/landing/img/card.jpg" style="margin-top: 50px;opacity: 0.9;border-radius: 15px;">
                       
                   </div>
                   
              
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/landing/img/login&forglogo.png" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Change Password</p>
                           <form action="">
                               <div class="md-form md-form1">
                                   <input type="password" id="newpassword" class="form-control">
                                   <label for="lpassword">Enter New Password</label>
                               </div>
                                 <div class="md-form md-form1">
                                   <input type="password" id="conpassword" class="form-control">
                                   <label for="lpassword">Confirm New Password</label>
                               </div>
                                <br> 
                                <div class="logAec1">
                                   <a  class="btn subMitBtn" onclick="changepassword()">Submit</a><br>
                               </div>  
                                
                           </form> 
                       </div>
                   </div>
               </div>
           </div>
               </div>
           </div>
        </div>
           
         </div>
    </div> 

    <!-- change password -->
    <div id="overlayOTP"></div>
	<div id="overlaybody">
		<div>
			<div>
			<i class="fa fa-times close" aria-hidden="true"></i>
				<p id="resent">OTP sent successfully! Please check your mobile number</p>
				<input type="text" class="form-control" maxlength="6" id="genrat" placeholder="Mobile-OTP">
				<!-- <input type="hidden" class="form-control"  id="motpsend" value=""> -->
				
			</div><br>
			<div class="otpbtns">
				<a href="#" onclick="regenerateotp(this);" data-mobile="" data-email="" id="reoptbtn" style="cursor:pointer; display:block">Resend OTP</a>
				<input type="submit" id="otpbtn" type="submit" class="btn btn-danger btn-lg btn-rounded" value="Verify OTP" data-mobile="" data-email="" onclick ="otpvalidate(this)"/>
			<br>
			
		</div>
	</div>
	</div>
	<div id="overlayemotp"></div>
	<div id="overlayembody">
		<div>
			<div>
			<i class="fa fa-times close" aria-hidden="true"></i>
				<p id="resent">OTP sent successfully! Please check your emailID and your mobile number</p>
				<input type="text" class="form-control" maxlength="6" id="genrat" placeholder="Mobile-OTP">
				<input type="text" class="form-control" maxlength="6" id="genratemail" placeholder="Email-OTP">
				<!-- <input type="hidden" class="form-control"  id="eotpsend" value="">
				<input type="hidden" class="form-control"  id="motpsend" value=""> -->
			</div><br>
			<div class="otpbtns">
				<a href="#" onclick="regenerateotp(this);" data-mobile="" data-email="" id="reoptbtn" style="cursor:pointer; display:block">Resend OTP</a>
				<input type="submit" id="otpbtn" type="submit" class="btn btn-danger btn-lg btn-rounded" value="Verify OTP" data-mobile="" data-email="" onclick ="otpvalidate(this)"/>
			
			<br>
			
		</div>
	</div>
	</div>
	<div id="overlayeOTP"></div>
	<div id="overlayebody">
		<div>
			<div>
			<i class="fa fa-times close" aria-hidden="true"></i>
				<p id="resent">OTP sent successfully! Please check your emailID</p>
				
				<input type="text" class="form-control" maxlength="6" id="genratemail" placeholder="Email-OTP">
				<!-- <input type="hidden" class="form-control"  id="eotpsend" value=""> -->
			</div><br>
			<div class="otpbtns">
				<a href="#" onclick="regenerateotp(this);" data-mobile="" data-email="" id="reoptbtn" style="cursor:pointer; display:block">Resend OTP</a>
				<input type="submit" id="otpbtn" type="submit" class="btn btn-danger btn-lg btn-rounded" value="Verify OTP" data-mobile="" data-email="" onclick ="otpvalidate(this)"/>
			<br>
			
		</div>
	</div>
    </div>
    
    
   

