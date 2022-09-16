<style>

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #fff;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}




</style>
   <div class='preloader'><div class='loaded'>&nbsp;</div></div> 
    <!-- <div class="portfolio-loader">
	    <div class="sun"></div>
	    <div class="orbit orbit1"><div class="planetX planet1"></div></div>
	    <div class="orbit orbit2"><div class="planetX planet2"></div></div>
	    <div class="orbit orbit3"><div class="planetX planet3"></div></div>
	</div> -->
	<%@page import="com.zomant.util.AppConstants"%>
    <!-- ***** Header Area Start ***** -->
    <header class="header_area animated">
        <div class="container-fluid">
            <div class="row align-items-center">
                <!-- Menu Area Start -->
                <div class="col-12 col-lg-12">
                    <div class="menu_area">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <!-- Logo -->
                            <a class="navbar-brand" href="<%= AppConstants.MASTER_URL %>"><img class="headlogo" src="<%=request.getContextPath()%>/assets/landing/img/logo2_1.svg" ></a>


                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ca-navbar" aria-controls="ca-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                            <!-- Menu Area -->
                            <div class="collapse navbar-collapse" id="ca-navbar">
                                <ul class="navbar-nav ml-auto group sitenav" id="nav" >
                                    <li class="nav-item"><a  class="nav-link" href="<%= AppConstants.MASTER_URL %>"><i class="fa fa-home fa-2x" aria-hidden="true"></i></a></li>
                                    <!-- <li class="nav-item"><a class="nav-link" rel="#C6AA01" href="about.jsp" >About</a></li>
                                    <li class="nav-item"><a class="nav-link" rel="#900"  href="index.jsp" >Product Features</a></li>
                                    <li class="nav-item"><a class="nav-link" rel="#8DC91E" href="contact.jsp">Contact us</a></li> -->
                                      
                    				 <li class="nav-item dropdown">
                                    	<div class="nav-form-btn sing-up-button d-none d-lg-inblock dropbtn" id="blogmenu">
                        					<a href="<%= AppConstants.BASE_URL %>student/student module/examtypes.jsp?id=1"><strong>JEE Main</strong></a>
                    					</div>
                    					
             <!--        					<div class="dropdown-content ml-2">
                                           <a href="#">JEE Mains</a>
                                           <a href="#">NEET</a>
  
                                        </div> -->
                    				</li>
                    				<li class="nav-item dropdown">
                                    	<div class="nav-form-btn sing-up-button d-none d-lg-inblock dropbtn" id="blogmenu">
                        					<a href="<%= AppConstants.BASE_URL %>student/student module/examtypes.jsp?id=3" ><strong>NEET</strong></a>
                    					</div>
                    					
            
                    				</li>
                    				
                                    <li class="nav-item">
                                    	<div class="nav-form-btn sing-up-button d-none d-lg-inblock">
                        					<a href="#" id="regbtn" data-toggle="modal" data-target="#centralModalLg"><strong>Register</strong></a>
                    					</div>
                    				</li>
                    				<li class="nav-item">
                    					<div class="nav-form-btn sing-up-button d-none d-lg-inblock">
                        				<a href="#"  id="logbtn" data-toggle="modal"  data-target="#signinmodal"><strong>Login</strong></a>
                    					</div>
                    				</li>
                    				<li class="nav-item">
                    					<div class="nav-form-btn sing-up-button d-none d-lg-inblock">
                        				<a href="#"  id="parentloginbtn" data-toggle="modal"  data-target="#parentsigninmodal"><strong>Parent Login</strong></a>
                    					</div>
                    				</li>
                    				<li class="nav-item">
                                    	<div class="nav-form-btn sing-up-button d-none d-lg-inblock" id="blogmenu">
                        					<a href="<%= AppConstants.BASE_URL %>student/student module/blogdetails.jsp" id="blogbtn" ><strong>Blogs</strong></a>
                    					</div>
                    				</li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                 
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->