<aside id="side-menu" class="transition">
          <ul class="nav navbar-nav menu-list">
           <li id="mchangezip" style="display:none">
                        <a href="#" data-toggle="popover13"   title="" data-placement="bottom" html="true" id="mobmyzipcode"> </a>
			            <div id="popover-content13" class="hide" >
										         <div class="form-group">
					         <div class="col-sm-12">
					            <div class="col-sm-7">
					               <input type="text" class="form-control" id="mzipcodeentered" placeholder="Zip Code" style="margin-bottom:9px;" maxlength="5" onkeypress="javascript:return isNumberKey(event);">
					            </div>
					            <div class="col-sm-5">
					               <button type="submit" class="btn btn-warning" onclick="getzipcodeentered();">Change Zip </button>
					            </div>
					         </div>
      </div>
			  			  </div>
						</li>
     		<li class="userName log-out" style="display:none;"><a><p style="cursor: default;">Welcome <span id="uname"></span></p></a></li>
           <li><a href="about-us.jsp" class="transition" >About Us</a></li>
                      
                      <li><a href="freefood.jsp" class="transition" >Privacy policy </a></li>
              		<li><a href="Giftcard.jsp" class="transition" >Terms and Conditions </a></li>
              		<li><a href="Giftcard.jsp" class="transition" >Contact Us </a></li>
            <!-- <li><a href="ch_index.jsp" class="transition tg-hdr-lnk" >Christmas 2017 </a></li> -->
              
            <li class="see-menu" style="display:none;"><a href="" id="redeem_sm_sc" class="transition"  >See Menu</a></li>
            <li class="log-in"><a href="landingpage.jsp" class="transition" >Sign In</a></li>
            <li class="see-order log-in"><a href="landingpage.jsp" class="transition" > Sign Up </a></li>

			<li class="dropdown log-out" style="display:none;">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="about-us.jsp" class="">About Us</a></li>
					<li><a href="contactus.jsp" class="" >Contact Us</a></li>
					<li><a href="terms.jsp">Terms & Conditions</a></li>
					<li><a href="privacypolicy.jsp">Privacy policy</a></li>
					<li><a onclick="return fnLogout();" >Logout</a></li>
					
					<!-- <li><a href="privilege.jsp" class="">Rewards, Vouchers and Gift Cards</a></li> -->
<!-- 					<li><a href="privilege.jsp" class="">Your Referral Rewards</a></li>
 -->					<!-- <li><a href="cashbackofferhistory.jsp">Cash Back Offer</a></li> -->
					 <!-- <li><a href="cashbackamounthistory.jsp">Cash Back History</a></li> -->
					<!-- <li><a href="index.jsp" class="clrxip chg-zip" id="chg-zip" >Change ZIP Code</a></li> -->
				</ul>
			</li>
			<!-- <li class="cart-icon"><a class="cartcountis" href="#" >0</a></li>
			<li class="see-order"><a href="#" class="transition btn-green" data-toggle="modal" data-target="#popup">Order Now</a></li> -->
          </ul>
</aside>
 <div class="side-menu-overlay"></div>         
          		<input type="hidden" id="serverdateandtime" value=""> 
				<input type="hidden" id="menudatecookie" value="">
				<input type="hidden" id="user-agent" value="" />
				<input type="hidden" id="serverdatime" value="">
				<input type="hidden" id="stime" value="">
				<input type="hidden" id="user-ip" value="">
				<input type="hidden" id="newofrtype" value="">
          <header class="header">
          		<div class="row">
					<!--<div class="alert alert-info notifyMe">
						<button type="button" class="close" data-dismiss="alert">×</button>
					</div>-->
				</div>
            <div class="container-fluid">
            <div class="container">
              <div class="main-wrap">
                <div class="wrap">
                  <div class="item logo">
                    <a class="clrxip" href="landingpage.jsp"><img src="<%=request.getContextPath()%>/assets/images/students/landing/Skyget.png" alt="logo"></a>
                  </div>
                  <div class="item left">
                  <!--   <ul class="list-menu">
                      <li><a href="about-us.jsp" class="transition" >About Us</a></li>
                      
                      <li><a href="privacypolicy.jsp" class="transition" >Privacy policy </a></li>
              		<li><a href="terms.jsp" class="transition" >Terms and Conditions </a></li>
              		<li><a href="contactus.jsp" class="transition" >Contact Us </a></li>
              		<li><a href="ch_index.jsp" class="transition tg-hdr-lnk" >Christmas 2017</a></li>
              		
                      <li style="display:none;"  class="see-menu"><a href="" class="transition" id="redeem_sm" >See Menu</a></li>
                    </ul> -->
                  </div>
                  <div class="item right">
                    <ul class="list-menu">
                     <li id="changezip" style="display:none">
                      <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <a href="#" data-toggle="popover12" title="" data-placement="bottom" html="true" id="myzipcode"> </a>
			            <div id="popover-content" class="hide" style="min-height: 116%;">
										         <div class="form-group">
					         <div class="col-sm-12" style="
					            padding-top: 4px;">
					            <div class="col-sm-7" style="
					               padding-left: 0px;
					               ">
					               <input type="text" class="form-control" id="zipcodeentered" placeholder="Zip Code" style="padding: 6px 24px !important;" maxlength="5" onkeypress="javascript:return isNumberKey(event);">
					            </div>
					            <div class="col-sm-5">
					               <button type="submit" class="btn btn-warning" onclick="getzipcodeentered();" style="
					                  margin-left: -26px;
					                  ">Change Zip </button>
					            </div>
					         </div>
      </div>
			  			  </div>
						</li>
                 
               <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.3s"><a href="#" class="loginBtn0 grow"> Product Features</a></div></li>
			   <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.6s"><a href="landingpage.jsp" class="loginBtn2 grow" data-toggle="modal" data-target="#centralModalLg" data-backdrop="true">Sign Up <i class="fas fa-user-plus"></i></a></div></li>
               <li><div class="wow fadeIn rightnav" data-wow-duration="1s" data-wow-delay="0.9s"><a href="landingpage.jsp" class="loginBtn1 grow"  data-toggle="modal" data-target="#signinmodal" >Sign In <i class="fas fa-sign-in-alt"></i></a></div></li>
               
                   
                      <!--Drop Down for change Zipcode  -->
                     
                  
                      <!-- <li id="changezip" class="dropdown log-out" style="display:none">
                      		<i class="fa fa-map-marker" aria-hidden="true"></i>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="myzipcode"><span class="caret"></span></a>
								<ul class="dropdown-menu">
								<li> You have not specified a delivery address </li>
								<li class="divider"></li>
								<li>
								<a href="#">
								<div class="form-group">
								   <div class="col-sm-10">
								      <div class="col-sm-5">
								         <input type="text" class="form-control"  id="zip" placeholder="Zip Code"/>
								      </div>
								      <div class="col-sm-5">
								         <button type="submit" class="btn btn-warning">Change Zip</button>
								      </div>
								   </div>
								</div>
								
								</a>
								</li>
								</ul>
							</li>
								 -->
				
		                   		   <!--end of Drop Down for change Zipcode  -->

			
                      <li class="userName log-out" style="display:none;"><a><p class="usrNmepara" style="cursor: default;">Welcome <span id="uname"></span></p></a></li>
                      
                     <!-- <li class="see-order"><a href="#" class="btn-green transition" data-toggle="modal" data-target="#popup">Order Now</a></li> -->

							<li class="dropdown log-out" style="display: none;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Account <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="accounts.jsp" class="">Account Details</a></li>
									<li><a href="order-history.jsp" class="" >Order History</a></li>
								    <li><a href="preferences.jsp">Communication Preferences</a></li>
								   <li><a onclick="return fnLogout();" >Logout</a></li>
									
									<!-- <li><a href="privilege.jsp" class="">Rewards, Vouchers and Gift Cards</a></li> -->
									<!-- <li><a href="privilege.jsp" class="">Your Referral Rewards</a></li>
									<li><a href="cashbackofferhistory.jsp">Cash Back Offer</a></li>
									<li><a href="cashbackamounthistory.jsp">Cash Back History</a></li> -->
									<!-- <li><a href="index.jsp" class="clrxip chg-zip" id="chg-zip" >Change ZIP Code</a></li> -->
							</ul></li>
							<!-- <li class="cart-icon right_litem"><a class="cartcountis" href="view-cart.jsp" onclick="return fnViewCart();" >0</a></li> -->
                      
						</ul>
                  </div>
                  <div class="item mobile-nav">
                  	<span class="cart-icon"><a class="cartcountis" href="view-cart.jsp" onclick="return fnViewCart();" >0</a></span>
                    <span id="mobile-trigger" class="glyphicon glyphicon-menu-hamburger cst-glyp-hambgr"></span>
                  </div>
                </div>
               <!--  <aside class="ribbon">
                  <span class="top"><strong>Entrees</strong></span>
                  <span class="middle">Starting</span>
                  <span class="bottom"><strong>$8.95</strong></span>
                </aside> -->
                </div>
              </div>
            </div>
          </header>