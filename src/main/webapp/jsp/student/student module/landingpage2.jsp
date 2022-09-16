<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon/favicon-16x16.png">
	<link rel="manifest" href="<%=request.getContextPath()%>/favicon/site.webmanifest">
	<link rel="mask-icon" href="<%=request.getContextPath()%>/favicon/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="apple-mobile-web-app-title" content="Zomant">
	<meta name="application-name" content="Zomant">
	<meta name="msapplication-TileColor" content="#b91d47">
	<meta name="theme-color" content="#ffffff">
	<link href="https://fonts.googleapis.com/css?family=Trocchi" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/solid.css" integrity="sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css" integrity="sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/css/mdb.min.css" rel="stylesheet">
    
   <link href="<%=request.getContextPath()%>/assets/css/student/css/animate.css" rel="stylesheet" type="text/css">
   <link href="<%=request.getContextPath()%>/assets/css/student/css/owl.carousel.css" rel="stylesheet" type="text/css">
     <link href="<%=request.getContextPath()%>/assets/css/student/css/landing_page.css" rel="stylesheet" type="text/css">
     <link href="<%=request.getContextPath()%>/assets/css/student/css/signup.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/assets/css/student/css/style.css" rel="stylesheet" type="text/css">
    <title>Skyget</title>
</head>
<body>

<div id="preloader">
  <div class="loader"></div>
</div> 


<div class="modal fade" id="centralModalLg" tabindex="1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >

        <!-- Change class .modal-sm to change the size of the modal -->
        <div class="modal-dialog modal-lg" role="document">
    
    
          <div class="modal-content"  style="box-shadow: 0 0 55px rgba(0, 0, 0, 0.315); border-radius:20px; position: absolute;top: -100px;transform: scale(0.84,0.75)!important;">
            <div class="container mainBoxPop">
                <div class="row">
                <!-- left section -->
                <div id="leftsec" class="col-lg-6">
                    <div class="logo">
                    
                        <img src="<%=request.getContextPath()%>/assets/images/students/landing/Skyget1.svg" alt="logo">
                          </div>
                    <div class="heading">
                        <p>WELCOME!</p>
                        <p>to the <b>TOPPER</b> of the year</p>
                        <img src="<%=request.getContextPath()%>/assets/images/students/landing/card.jpg" width="80%" style="margin-top: 50px;box-shadow: 0 0 46px black;">
                    </div>
                    <!-- <div class="socialBox">
                        <a class="btn btn-fb"><i class="fa fa-facebook left"></i><span>Sign-in with Facebook</span></a>
                        
                        <a class="btn btn-tw"><i class="fa fa-twitter left    "></i><span> Sign-in with Twitter</span> </a>
                        
                        <a class="btn btn-gplus"><i class="fa fa-google-plus left"></i><span> Sign-in with Google +</span> </a>
                    </div>  <br><br>-->
                </div>
                <!-- left section ends -->
                <!-- right section -->
                <div id="rightsec" class="col-lg-6">
                    <div class="headTitle">
                        <p class="signup">Register</p>
                        <form action="">
                            <div class="md-form">
                                <i class="active fa fa-user prefix"></i>
                                <input type="text" id="name" class="form-control">
                                <label for="name">Name</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-envelope prefix"></i>
                                <input type="email" id="email" class="form-control">
                                <label for="email">E-Mail</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-mobile prefix"></i>
                                <input type="text" id="mobilenumber" class="form-control">
                                <label for="mobilenumber">Mobile</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-lock prefix"></i>
                                <input type="password" id="password" class="form-control">
                                <label for="password">Password</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-lock prefix"></i>
                                <input type="password" id="confpsd" class="form-control">
                                <label for="confpsd">Confirm Password</label>
                            </div>
                            <div class="md-form">
                                <i class="active fa fa-map-marker prefix"></i>
                                                                        
                            </div>
                            <select class="form-control selector"  onchange="getSelectedcities(this.value);" id ="state">
                                <!--<option>Choose states</option>
                                 <option>Maharashtra</option>
                                <option>Telangana</option>
                                <option>Karnataka</option> -->
                            </select>  
                            <div class="md-form">
                                <i class="active fa fa-map-marker prefix"></i>
                                                                        
                            </div>
                            <select class="form-control selector" id ="city">
                                <option>City</option>
                                <option>Pune</option>
                                <option>Hyderabad</option>
                                <option>Bangalore</option>
                            </select>     
                            <div class="md-form">
                                <i class="active fa fa-venus-mars prefix"></i>
                                                                        
                            </div>
                            <select class="form-control selector"  id ="gender">
                                <option>Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                                
                            </select>
                            <div class="md-form">
                               <i class=" active fa fa-book prefix" aria-hidden="true"></i>                                    
                            </div>
                            <select class="form-control selector" id ="studentcategory">
                              <!--   <option>Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option> -->
                                
                            </select>   <br> 
                            <div><p class="priText">By submitting this form, you agree to the <a href="#">Terms</a> and <a href="#">Privacy Policy</a>.</p></div>
                            <div class="logAec">
                                <a class="btn subMitBtn" id="register">Register</a><br>
                                <a id="signBtn" class="signBtn" data-toggle="modal" data-target="#signinmodal" data-backdrop="true">
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
               
                   <!-- <div class="logo">
                       <img src="images/logo/Skyget.svg" alt="logo">
                   </div> -->
                   
                   <div class="row" style="min-height: 610px">
                   <div class="col-lg-6">
                   <div class="heading">
                       <p>WELCOME!</p>
                       <p>_______________________</p>
                       <p>__________________</p>
                       <p>_____________</p>
                       <img src="<%=request.getContextPath()%>/assets/images/students/landing/card.jpg" style="margin-top: 50px;opacity: 0.9;border-radius: 15px;">
                       
                   </div>
                   
                   <!-- <div class="socialBox">
                       <a class="btn btn-fb"><i class="fa fa-facebook left"></i><span>Sign-in with Facebook</span></a>
                       
                       <a class="btn btn-tw"><i class="fa fa-twitter left"></i><span> Sign-in with Twitter</span> </a>
                       
                       <a class="btn btn-gplus"><i class="fa fa-google-plus left"></i><span> Sign-in with Google +</span> </a>
                   </div><br><br>-->
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox"></div>
               </div>
               <div class="col-lg-3">
                   <div id="idbackShadowBox1">
                       <div class="logo">
                           <img src="<%=request.getContextPath()%>/assets/images/students/landing/Skyget1.svg" alt="logo">
                       </div>
                       <div class="headTitle">
                           <p class="signIn">Log In</p>
                           <form action="">
                               <div class="md-form md-form1">
                                   <input type="text" id="lmobilenumber" class="form-control">
                                   <label for="lmobilenumber">Enter Username</label>
                               </div>
                               <div class="md-form md-form1">
                                   <input type="password" id="lpassword" class="form-control">
                                   <label for="lpassword">Enter Password</label>
                               </div>
                                <br> 
                                <div class="logAec1">
                                   <a  class="btn subMitBtn" onclick="studentLogin()">LOG IN</a><br>
                                   <a href="#" class="signBtn" id="signUpBtn" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Dont Have Account? Register</a><br>
                                   <a href="#" class="signBtn1">Forgot Password?</a>
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
  

    <!-- top portion, backgrounds -->
    <div id="topPortion">
        <!-- navbar -->
		
        <div id="navbar">
            <div class="wow fadeIn" data-wow-duration="2s"><a href="#" id="logo_link"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Skyget1.svg"></a></div>
           <ul id="nav_ul"> 
               <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.3s"><a href="#" class="loginBtn0 grow"> Product Features</a></div></li>
			   <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.6s"><a href="#" class="loginBtn2 grow" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Register <i class="fas fa-user-plus"></i></a></div></li>
               <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.9s"><a href="#" class="loginBtn1 grow"  data-toggle="modal" data-target="#signinmodal" >Log In <i class="fas fa-sign-in-alt"></i></a></div></li>
               
           </ul> 
        </div>
		<div class="wow slideInLeft" data-wow-duration="1s" id="freeaccess_div">
			<a href="#" class="wobble-horizontal" id="freeaccess_btn"  data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Free Access Now</a>
		</div>
        
		<div id="rightbulb" class="wow fadeIn" data-wow-duration="2s">
			<img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 63.png">
		</div>
        
        <div class="bg" ></div>
        <!-- navbar ends -->
    </div>
    <div id="topbg2">

    </div>
    <!-- top portion, backgrounds ends -->

    <div class="wow zoomIn" id="design_wrap" data-wow-duration="1.4s">
<!--         <img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 75.png" alt="">
        <img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 75.png" alt="">
 -->
           <a href="#" class="design">We want to be part of your Success</a>

    </div>

    <!-- offers -->
     <div id="offersTop">
        <div class="container-fluid">
        <h4 class="shead" align="center">Live Zone Features</h4><br>
            <div class="row">
           
            <div class="col-md-10">
                    <div class="imgbg">
                            <img src="<%=request.getContextPath()%>/assets/images/students/landing/elearn.png" alt="">
                            
                        </div>
            </div>
            <div class="col-md-2"> 
                    <ul>
                    	<li></li>    
                        <li><a href="#"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 67.png" alt=""></a></li>
                        <li><a href="#"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 68.png" alt=""></a></li>
                    </ul>
                </div>
        </div>
    </div>
    </div>

     <div id="offersBottom">
        <div class="container-fluid">
            <h4  class="shead"  align="center">Test Zone Features</h4><br>
            <div class="row">
            <div class="col-md-2"> 
                <ul>
                    <li></li>
                    <li><a href="#"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 67.png" alt=""></a></li>
                    <li><a href="#"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 68.png" alt=""></a></li>
                </ul>
            </div>
            <div class="col-md-10">
                    <div class="imgbg">
                            <img src="<%=request.getContextPath()%>/assets/images/students/landing/elearn2.jpg" alt="">
                      </div>
            </div>
        </div>
    </div>  
        
    </div>
    <!-- offers ends -->

   


    <!-- middle background image -->
    <div id="middleBack">
        <div class="container-fluid1">
        <h4  class="shead"  align="center">How Zomant will participate in your success</h4><br>
        <img src="<%=request.getContextPath()%>/assets/images/students/landing/Layer 73.png" alt="">
  
        <a href="#" class="wow fadeIn" data-wow-duration="0.8s"  data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Start Practice Now</a>
    </div>
    </div>
    <!-- middle background image ends -->

    <div class="stripbg1"><img src="<%=request.getContextPath()%>/assets/images/students/landing/BLUE Strip-2 copy 4.png" alt="" height="200"></div>
  

    <!-- zomant advertisement -->
    <div id="zomAdd">
        <div class="container-fluid" id="appsection">
            <div class="row">
                <div class="col-md-3 wow slideInLeft" data-wow-duration="1s">
                    <img id="mobimg" src="<%=request.getContextPath()%>/assets/images/students/landing/mobile (1).png">
                </div>
                <div class="col-md-8" id="mobiletxt">
                    <h2 class="wow fadeIn" data-wow-duration="0.5s" >Get into ZOMANT</h2>
                    <p class="wow slideInDown" data-wow-duration="0.7s">Now you can achieve your goals on the move. Discover our offerings, personalized recommendations, classroom experiences and so much more. Install Now</p>
					<div id="appbtn"> 
						<div class="wow slideInLeft" data-wow-duration="0.7s"><img class="ibtn" src="<%=request.getContextPath()%>/assets/images/students/landing/appbtn.png"></div>
						<div class="wow slideInLeft" data-wow-duration="0.9s"><img class="pbtn" src="<%=request.getContextPath()%>/assets/images/students/landing/playbtn.png"></div>
					</div>
                </div>

            </div>
        </div>
    </div>
    <!-- zomant advertisement ends -->




    <!-- customer responses -->
    <div id="response">
            <div class="h1ed">
			
			<h2 class="shead wow fadeInUp" data-wow-duration="1s">Our Amazing Community</h2>
			</div>
            
            <div id="demo" class="carousel slide" data-ride="carousel">
        
        <div class="carousel-inner wow fadeIn" data-wow-duration="1s">
          <div class="carousel-item active">                
              <p><i>Before Zomant, I was a high school math teacher with no CS background. Now I'm an Android Developer at Capital One, doing something I love whiel earning twice as much"</i></p>
    
    <div style="font-weight: bolder">-Ben, Graduate</div>


              
          </div>
          <div class="carousel-item">          
                <p><i>Before Zomant, I was a high school math teacher with no CS background. Now I'm an Android Developer at Capital One, doing something I love whiel earning twice as much"</i></p>
                <div style="font-weight: bolder">-Ben, Graduate</div>
              
          </div>
          <div class="carousel-item">
                <p><i>Before Zomant, I was a high school math teacher with no CS background. Now I'm an Android Developer at Capital One, doing something I love whiel earning twice as much"</i></p>
                <div style="font-weight: bolder">-Ben, Graduate</div>
            </div>   
         
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
      
      
    </div>
    <!-- customer responses ends -->
    <!-- <br><br>
    <div class="t1">
        <span class="rank">1st<br> Rank</span>
        <span id="sp1"></span>
        <img src="images/students/landing/default-user-image.png" width="100px" height="100px"><br>
        <p class="t2">Naman Oz</p>
        <p><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></p>
    </div> -->


    <!-- rankers (positions) -->

<div class="container-fluid" id="topperhead">
    <h3 class="shead wow fadeInUp" data-wow-duration="1s">Live Zone - Toppers</h3>
</div>

<div class="container-fluid container-fluid1 cf1">
    <div class="owl-container wow fadeInLeft" data-wow-duration="1s">
        <h1>FULL SYLLABUS MOCK</h1>
		
		<div id="fullsyexam" class="wow fadeIn" data-wow-duration="1s">
			<span class="elabel wow fadeInLeft" data-wow-duration="1s">Exam type : <span>EAMCET</span></span>
			<span class="elabel wow fadeInUp" data-wow-duration="1s">Exam Name : <span>Full Syllabus 1</span></span>
			<span class="elabel wow fadeInRight" data-wow-duration="1s">Exam Date : <span>20/07/2018</span></span>
		</div>

    </div>
        
        
        
    <div class="owl-carousel">
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.2s">
                    <span class="rank">1<span>st</span><br><span>RANK</span></span>
                    <span id="sp1"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/abhishek dogra.PNG">
					<div class="namesec">
						<p class="t2">Abhishek Dogra</p>
						<div class="namesec2">
							<span class="stateName">Telangana</span>
							<span class="cityName">Hyderabad</span>
						</div>
					</diV>
                </div>
            </div>
			
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.4s">
                        <span class="rank">2<span>nd</span><br><span>RANK</span></span>
                    <span id="sp2"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/archit gupta.PNG">
					<div class="namesec">
                    <p class="t2">Archit Gupta</p>
                    <div class="namesec2"><span class="stateName">Andhra Pradesh</span><span class="cityName">Guntur</span></div>
					</div>
                </div>
            </div>
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.6s">
                        
                     <span class="rank">3<span>rd</span><br><span>RANK</span></span>
                    <span id="sp3"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/h agarwal.PNG">
					<div class="namesec">
                    <p class="t2">Harsh Agarwal</p>
                    <div class="namesec2"><span class="stateName">Delhi</span><span class="cityName">New Delhi</span></div></div>
                </div>
            </div>
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.8s">
                        <span class="rank">4<span>th</span><br><span>RANK</span></span>
                    <span id="sp4"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/harshit anand.PNG">
					<div class="namesec">
                    <p class="t2">Harshit Anand</p>
                    <div class="namesec2"><span class="stateName">Jharkhand</span><span class="cityName">Ranchi</span></div></div>
                </div>
            </div>
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                    <span class="rank">5<span>th</span><br><span>RANK</span></span>
                    <span id="sp5"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/manish mul.PNG">
					<div class="namesec">
                    <p class="t2">Manish Mulchandani</p>
                    <div class="namesec2"><span class="stateName">Maharashtra</span><span class="cityName">Mumbai</span></div></div>
                </div>
            </div>
            <div>
                <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.2s">
                    <span class="rank">6<span>th</span><br><span>RANK</span></span>
                    <span class="sp6"></span>
                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nchandra.PNG">
					<div class="namesec">
                    <p class="t2">Nasman Chandra</p>
                    <div class="namesec2"><span class="stateName">Maharashtra</span><span class="cityName">Pune</span></div></div>
                </div>
            </div>
            <div>
                    <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.4s">
                    <span class="rank">7<span>th</span><br><span>RANK</span></span>

                        <span class="sp6"></span>
                        <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nishita purohit.PNG">
						<div class="namesec">
                        <p class="t2">Nishita Purohit</p>
                        <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                    </div>
                </div>

          </div>
        </div>

        <br><br>

        <div class="container-fluid container-fluid1  cf1">
                <div class="owl-container">
                    <h1>MOCK</h1>
					<div id="fullsyexam" class="wow fadeIn" data-wow-duration="1s">
			<span class="elabel wow fadeInLeft" data-wow-duration="1s">Exam type : <span>EAMCET</span></span>
			<span class="elabel wow fadeInUp" data-wow-duration="1s">Exam Name : <span>Full Syllabus 1</span></span>
			<span class="elabel wow fadeInRight" data-wow-duration="1s">Exam Date : <span>20/07/2018</span></span>
					</div>
                </div>
                    
                    
                    
                <div class="owl-carousel">
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.2s">
                                <span class="rank">1<span>st</span><br><span>RANK</span></span>
                                <span id="sp1"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nishita purohit.PNG">
								<div class="namesec">
								<p class="t2">Nishita Purohit</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.4s">
                                    <span class="rank">2<span>nd</span><br><span>RANK</span></span>
                                <span id="sp2"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nchandra.PNG">
								<div class="namesec">
								<p class="t2">Nasman Chandra</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.6s">
                                    
                                 <span class="rank">3<span>rd</span><br><span>RANK</span></span>
                                <span id="sp3"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/manish mul.PNG">
								<div class="namesec">
								<p class="t2">Manish Mulchandani</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.8s">
                                    <span class="rank">4<span>th</span><br><span>RANK</span></span>
                                <span id="sp4"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/harshit anand.PNG">
								<div class="namesec">
								<p class="t2">Harshit Anand</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="1s">
                                <span class="rank">5<span>th</span><br><span>RANK</span></span>
                                <span id="sp5"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/h agarwal.PNG">
								<div class="namesec">
								<p class="t2">Harsh Agarwal</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                            <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="1.2s">
                                <span class="rank">6<span>th</span><br><span>RANK</span></span>
                                <span class="sp6"></span>
                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/archit gupta.PNG">
								<div class="namesec">
								<p class="t2">Archit Gupta</p>
                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                            </div>
                        </div>
                        <div>
                                <div class="t1 wow fadeInRight" data-wow-duration="1s" data-wow-delay="1.4s">
                                <span class="rank">7<span>th</span><br><span>RANK</span></span>
            
                                    <span class="sp6"></span>
                                    <img src="<%=request.getContextPath()%>/assets/images/students/toppers/abhishek dogra.PNG">
									<div class="namesec">
									<p class="t2">Abhishek Dogra</p>
                                    <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                </div>
                            </div>
            
                      </div>
                    </div>
       
                    
                    <br><br>

                    <div class="container-fluid container-fluid1 cf1">
                            <div class="owl-container">
                                <h1>SUBJECTWISE</h1>
								<div id="fullsyexam"  class="wow fadeIn" data-wow-duration="1s">
			<span class="elabel wow fadeInLeft" data-wow-duration="1s">Exam type : <span>EAMCET</span></span>
			<span class="elabel wow fadeInUp" data-wow-duration="1s">Exam Name : <span>Full Syllabus 1</span></span>
			<span class="elabel wow fadeInRight" data-wow-duration="1s">Exam Date : <span>20/07/2018</span></span>
								</div>
                            </div>
                                
                                
                                
                            <div class="owl-carousel">
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.2s">
                                            <span class="rank">1<span>st</span><br><span>RANK</span></span>
                                            
                                            <span id="sp1"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/rinku sharma.PNG">
											<div class="namesec">
                                            <p class="t2">Rinku Sharma</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.4s">
                                                <span class="rank">2<span>nd</span><br><span>RANK</span></span>
                                            <span id="sp2"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/rishav raj.PNG">
											<div class="namesec">
                                            <p class="t2">Rishav Raj</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.6s">
                                                
                                                <span class="rank">3<span>rd</span><br><span>RANK</span></span>
                                            <span id="sp3"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/t ghosh.PNG">
											<div class="namesec">
                                            <p class="t2">Tapas Ghosh</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.8s">
                                                <span class="rank">4<span>th</span><br><span>RANK</span></span>
                                            <span id="sp4"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nishita purohit.PNG">
											<div class="namesec">
                                            <p class="t2">Nishita Purohit</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                                            <span class="rank">5<span>th</span><br><span>RANK</span></span>
                                            <span id="sp5"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/nchandra.PNG">
											<div class="namesec">
                                            <p class="t2">Naman Chandra</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.2s">
                                            <span class="rank">6<span>th</span><br><span>RANK</span></span>
                                            <span class="sp6"></span>
                                            <img src="<%=request.getContextPath()%>/assets/images/students/toppers/manish mul.PNG">
											<div class="namesec">
                                            <p class="t2">Manish Mule</p>
                                            <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                        </div>
                                    </div>
                                    <div>
                                            <div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.4s">
                                            <span class="rank">7<span>th</span><br><span>RANK</span></span>
                        
                                                <span class="sp6"></span>
                                                <img src="<%=request.getContextPath()%>/assets/images/students/toppers/harshit anand.PNG">
												<div class="namesec">
                                                <p class="t2">Harshith Anand</p>
                                                <div class="namesec2"><span class="stateName">Telangana</span><span class="cityName">Hyderabad</span></div></div>
                                            </div>
                                        </div>
                        
                                  </div>
                                </div>
    
    
                                <!-- rankers (positions)  ends-->
                               
       



    <!-- footer -->

    <div id="footer">
		<div id="leftfoot">
		<a href="about-us.jsp"  class="wow fadeIn"  data-wow-duration="1s" data-wow-delay="0.4s"><i class="fas fa-info"></i> About Us</a>
			<a href="contactus.jsp"  class="wow fadeIn"  data-wow-duration="1s" data-wow-delay="0.6s"><i class="fas fa-phone"></i> Contact Us</a>
			
		</div>
		<div id="centerfoot" class="wow fadeIn"  data-wow-duration="1s" data-wow-delay="0.6s">
			<p >&copy; Zomant Solutions - 2018</p>
		</div>
		<div id="rightfoot">
			<a href="terms.jsp" class="wow fadeIn"  data-wow-duration="1s" data-wow-delay="0.4s"><i class="fas fa-clipboard "></i> Terms & Conditions</a>
			<a href="privacypolicy.jsp" class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s"><i class="fas fa-user-secret wow fadeInRight" ></i> Privacy Policy</a>
		</div>
    </div>
    <!-- footer ends -->

    




    
    <!-- JQuery -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/js/mdb.min.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/assets/css/student/js/wow.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/student/js/owl.carousel.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/student/js/landing_page.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 
<%--      <script src="<%=request.getContextPath()%>/assets/css/student/js/student.js"></script> --%>
	 <script>
		new WOW().init();
	</script>
	
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
    	 getstates();
     });
     </script>
     
</body>
</html>
