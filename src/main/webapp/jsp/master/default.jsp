


<%@include file="/jsp/master/defaultheader.jsp" %> 
<% 
   String AdminType=request.getParameter("type");
   request.setAttribute("AdminType", AdminType);
%>
 <c:set var="AdminType" value="${AdminType }" scope="session"  />
   
        <c:out value="." ></c:out>
      <!-- /Preloader -->
      <div id="mainwrap" class="wrapper theme-1-active pimary-color-red">
         <!-- Top Menu Items -->
         <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="mobile-only-brand pull-left">
               <div class="nav-header pull-left">
                  <div class="logo-wrap">
                  <c:set var="sessionScope.AdminType" value="<%=AdminType %>"/>
                           <c:choose>
                              <c:when test="${sessionScope.AdminType == 'superadmin'}">
                                  <a href="<%=request.getContextPath()%>/jsp/student/livezone/live_zone_active_full_mocks.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                              <c:when test="${sessionScope.AdminType == 'admin'}">
                                <a href="<%=request.getContextPath()%>/jsp/admin/creation/categories.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                              <c:when test="${sessionScope.AdminType == 'academichead'}">
                                 <a href="<%=request.getContextPath()%>/jsp/academic_head/status.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                              <c:when test="${sessionScope.AdminType == 'superdean'}">
                                 <a href="<%=request.getContextPath()%>/jsp/student/livezone/live_zone_active_full_mocks.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                              <c:when test="${sessionScope.AdminType == 'dean'}">
                                <a href="<%=request.getContextPath()%>/jsp/dean/questionstatus/status.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                              <c:when test="${sessionScope.AdminType == 'sme'}">
                                <a href="<%=request.getContextPath()%>/jsp/sme/questionstatus/status.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when>
                            <c:when test="${sessionScope.AdminType == 'student'}">
                                 <a href="<%=request.getContextPath()%>/jsp/student/livezone/live_zone_active_full_mocks.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when> 
                              
                               <c:when test="${sessionScope.AdminType == 'parent'}">
                                 <a href="<%=request.getContextPath()%>/jsp/parent/dash.jsp">
                        <img class="brand-img" src="<%=request.getContextPath()%>/assets/images/students/Skyget_logo.svg" />
                        <span class="brand-text">
                           
                        </span>
                     </a>
                              </c:when> 
                           </c:choose>
                    
                  </div>
               </div>
               <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);" onclick="skygetLogo();"><i class="zmdi zmdi-menu"></i></a>
               <a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a>
               <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>
            </div>
            
            <c:choose>
            
           
            
            
            <c:when test="${sessionScope.AdminType == 'sme'}">
				              <div id="mobile_only_nav" class="mobile-only-nav pull-right">
				               <ul class="nav navbar-right top-nav pull-right">
				                  <li class="dropdown app-drp">
				                     <span class="menu_name" id="nameHeader">Loading...</span><br />
				                     <span class="menu_designation" id="desigHead">Loading...</span>
				                  </li>
				                  <li class="dropdown auth-drp">
				                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown">
				                   		<img src="" id="profileimage" class="menu"><i class="fa fa-caret-down"></i>
				                     </a>
				                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
				                        <li>
				                           <a href="#" onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
				                        </li>
				                     </ul>
				                  </li>
				               </ul>
				            </div>
            
					   </c:when>
					   
					   
					    <c:when test="${sessionScope.AdminType == 'superadmin'}">
							 		<div id="mobile_only_nav" class="mobile-only-nav pull-right">
			               <ul class="nav navbar-right top-nav pull-right">
			                  <li>
			                     <a href="#"><i class="fa fa-desktop fa-lg"></i></a>
			                  </li>
			                  <li class="dropdown app-drp">
			                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
			                     <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
			                        <li>
			                           <div class="app-box-bottom-wrap">
			                              <hr class="light-grey-hr ma-0"/>
			                              <a class="block text-center read-all" href="javascript:void(0)"> more </a>
			                           </div>
			                        </li>
			                     </ul>
			                  </li>
			                  <li class="dropdown auth-drp">
			                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
			                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
			                        <li>
			                           <a href="superadmin/change_pin"><i class="fa fa-lock"></i><span>Change Pin</span></a>
			                        </li>
			                        <li class="divider"></li>
			                        <li>
			                           <a href="superadmin/change_password"><i class="fa fa-key"></i><span>Change Password</span></a>
			                        </li>
			                        <li class="divider"></li>
			                        <li>
			                           <a href="<%=AppConstants.MASTER_URL %>"><i class="fa fa-power-off"></i><span>Log Out</span></a>
			                        </li>
			                     </ul>
			                  </li>
			               </ul>
			            </div>
				 </c:when>
				 
				 
				    <c:when test="${sessionScope.AdminType == 'dean'}">
					     <div id="mobile_only_nav" class="mobile-only-nav pull-right">
				               <ul class="nav navbar-right top-nav pull-right">
				                  <li class="dropdown app-drp">
				                     <span class="menu_name" id="nameHeader">Loading...</span><br />
				                     <span class="menu_designation" id="desigHead">Loading...</span>
				                  </li>
				                  <li class="dropdown auth-drp">
				                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown">
				                   		 <img src="" id="profileimage" class="menu"><i class="fa fa-caret-down"></i>
				                     </a>
				                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
				                        <li>
				                           <a href="<%= AppConstants.MASTER_URL %>"><i class="fa fa-lock"></i><span>Change Pin Number</span></a>
				                        </li>
				                        <li>
				                           <a href="<%= AppConstants.MASTER_URL %>"><i class="fa fa-key"></i><span>Change Password</span></a>
				                        </li>
				                        <li class="divider"></li>
				                        <li>
				                           <a href="#"  onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
				                        </li>
				                     </ul>
				                  </li>
				               </ul>
				            </div>
					   
					 </c:when>
					  <c:when test="${sessionScope.AdminType == 'superdean'}">
													  <div id="mobile_only_nav" class="mobile-only-nav pull-right">
								               <ul class="nav navbar-right top-nav pull-right">
								                  <li class="dropdown app-drp">
								                     <span class="menu_name"><?php echo $result['first_name']?> <?php echo $result['last_name']?>  </span><br />
								                     <span class="menu_designation"><?php echo $result['designation']?></span>
								                  </li>
								                  <li class="dropdown auth-drp">
								                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown">
								                     <?php if(!empty($result['profile'])){?>		
								                     <img src="<%=request.getContextPath()%>/assets/images/users_profiles/<?php echo $result['profile'];?>" class="menu"><i class="fa fa-caret-down"></i>
								                     <?php }else{?>					
								                     <img src="<%=request.getContextPath()%>/assets/images/users_profiles/default.png" class="menu"><i class="fa fa-caret-down"></i>
								                     <?php }?> 
								                     </a>
								                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
								                        <li>
								                           <a href="superdean/change_pin"><i class="fa fa-lock"></i><span>Change Pin Number</span></a>
								                        </li>
								                        <li>
								                           <a href="superdean/change_password"><i class="fa fa-key"></i><span>Change Password</span></a>
								                        </li>
								                        <li class="divider"></li>
								                        <li>
								                           <a href="<%= AppConstants.MASTER_URL %>"><i class="fa fa-power-off"></i><span>Log Out</span></a>
								                        </li>
								                     </ul>
								                  </li>
								               </ul>
								            </div>
					  					  </c:when>
					   
					   <c:when test="${sessionScope.AdminType == 'academichead'}">
								<div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
                  <li>
                     <a href="#"><i class="fa fa-desktop fa-lg"></i></a>
                  </li>
                  <li class="dropdown app-drp">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
                     <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
                        <li>
                           <div class="app-nicescroll-bar">
                              <ul class="app-icon-wrap pa-10">
                                 <li>
                                    <a href="vector-map.html" class="connection-item">
                                    <i class="zmdi zmdi-map txt-danger"></i>
                                    <span class="block">Change Category</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="inbox.html" class="connection-item">
                                    <i class="zmdi zmdi-email-open txt-success"></i>
                                    <span class="block">e-mail</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="calendar.html" class="connection-item">
                                    <i class="zmdi zmdi-calendar-check txt-primary"></i>
                                    <span class="block">calendar</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="vector-map.html" class="connection-item">
                                    <i class="zmdi zmdi-map txt-danger"></i>
                                    <span class="block">map</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="chats.html" class="connection-item">
                                    <i class="zmdi zmdi-comment-outline txt-warning"></i>
                                    <span class="block">chat</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="contact-card.html" class="connection-item">
                                    <i class="zmdi zmdi-assignment-account"></i>
                                    <span class="block">contact</span>
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </li>
                        <li>
                           <div class="app-box-bottom-wrap">
                              <hr class="light-grey-hr ma-0"/>
                              <a class="block text-center read-all" href="javascript:void(0)"> more </a>
                           </div>
                        </li>
                     </ul>
                  </li>
                  <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        <!-- <li>
                           <a href="academic_head/profile"><i class="fa fa-user"></i><span>Profile</span></a>
                           </li> -->
                        <li>
                           <a href="academic_head/change_pin"><i class="fa fa-lock"></i><span>Change Pin Number</span></a>
                        </li>
                        <li>
                           <a href="academic_head/change_password"><i class="fa fa-key"></i><span>Change Password</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                           <a href="#" onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
					 </c:when>
      
            <c:when test="${sessionScope.AdminType == 'admin'}">
				  <div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
                  <li>
                     <a href="#"><i class="fa fa-desktop fa-lg"></i></a>
                  </li>
                  <!--<li class="dropdown app-drp">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
                     <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
                        <li>
                           <div class="app-nicescroll-bar">
                              <ul class="app-icon-wrap pa-10">
                                 <li>
                                    <a href="vector-map.html" class="connection-item">
                                    <i class="zmdi zmdi-map txt-danger"></i>
                                    <span class="block">Change Category</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="inbox.html" class="connection-item">
                                    <i class="zmdi zmdi-email-open txt-success"></i>
                                    <span class="block">e-mail</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="calendar.html" class="connection-item">
                                    <i class="zmdi zmdi-calendar-check txt-primary"></i>
                                    <span class="block">calendar</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="vector-map.html" class="connection-item">
                                    <i class="zmdi zmdi-map txt-danger"></i>
                                    <span class="block">map</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="chats.html" class="connection-item">
                                    <i class="zmdi zmdi-comment-outline txt-warning"></i>
                                    <span class="block">chat</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="contact-card.html" class="connection-item">
                                    <i class="zmdi zmdi-assignment-account"></i>
                                    <span class="block">contact</span>
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </li>
                        <li>
                           <div class="app-box-bottom-wrap">
                              <hr class="light-grey-hr ma-0"/>
                              <a class="block text-center read-all" href="javascript:void(0)"> more </a>
                           </div>
                        </li>
                     </ul>
                  </li>-->
                  <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                        <li>
                           <a href="admin/change_pin"><i class="fa fa-lock"></i><span>Change Pin Number</span></a>
                        </li>
                        <li>
                           <a href="admin/change_password"><i class="fa fa-key"></i><span>Change Password</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                           <a href="#" onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
				   </c:when>
				   <c:when test="${sessionScope.AdminType == 'admintp'}">
				    <div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
			   <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                       
                        
                        
                        <li>
                           <a href="#" onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
                        </li>
                     </ul>
                  </li>
			    </ul>
            </div>
				    </c:when>
					  <c:when test="${sessionScope.AdminType == 'adminzs'}">
				    <div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
			   <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                       
                        
                        
                        <li>
                           <a href="#" onclick="logoutadmin();"><i class="fa fa-power-off"></i><span>Log Out</span></a>
                        </li>
                     </ul>
                  </li>
			    </ul>
            </div>
				    </c:when>
				   
				               <c:when test="${sessionScope.AdminType == 'student'}">
				  <div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
               
               <li>
              <a href="<%= AppConstants.BASE_URL %>student/student module/studenthome.jsp"><!-- <button class="btn buycolor">Buy</button> --> <img style="position: absolute;top: 2px;left: -105px;width:40px;filter: invert(68%) sepia(59%) saturate(3627%) hue-rotate(225deg) brightness(99%) contrast(105%);" src="https://cdn3.iconfinder.com/data/icons/flaticons-1/24/flaticon_house-512.png"></a>
              </li>
               		
                <li>
               			<a href="<%= AppConstants.BASE_URL %>student/student module/referandearn.jsp"><!-- <button class="btn buycolor">Buy</button> --> <img style="position: absolute;top: 0px;left: -70px;width:25px;" src="<%=request.getContextPath()%>/assets/images/students/BonusWallet.svg"></a>
               		</li>
                    <li>
               			<a href="<%= AppConstants.BASE_URL %>student/student module/subscriptionpay1.jsp"><!-- <button class="btn buycolor">Buy</button> --> <img style="position: absolute;top: 0px;left: -35px;width: 44px;" src="<%=request.getContextPath() %>/assets/images/students/studentsidebar/Buysecond.svg"></a>
               		</li>
               		<li>
               			<a href="<%= AppConstants.BASE_URL %>student/notifications/notifications.jsp"><img src="<%=request.getContextPath() %>/assets/images/students/studentsidebar/Notification.svg" style="padding-top:5px" width="40px"><sup id="notifcount"></sup></a>
               		</li>
               		<li>
               			<a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks.jsp"><img src="<%=request.getContextPath() %>/assets/images/students/studentsidebar/Feedback.svg" style="padding-top:5px" width="30px"></a>
               		</li>
                  <li>
                 <p id="fontset" style="line-height:35px">Hello, <span id="nme"></span> </p>
                  </li>
                  <li class="dropdown app-drp">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon" style="line-height:35px"></i></a>
                     <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
                        <li>
                           <div class="app-nicescroll-bar">
                              <ul class="app-icon-wrap pa-10">
                                 
                                
                                 <li>
                                    <a href="<%= AppConstants.BASE_URL %>student/notifications/notifications.jsp" class="connection-item">
                                   <!--  <i class="zmdi zmdi-map txt-danger"></i> -->
                                   <img  src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Notification.svg" style="position:relative;bottom:10px;" width="36px" height="30px">
                                    <span class="block">Notifications</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks.jsp" class="connection-item">
                                    <!-- <i class="zmdi zmdi-comment-outline txt-warning"></i> -->
                                    <img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Feedback.svg" style="position:relative;bottom:3px;" width="26px">
                                     <span class="block">Feedback</span> 
                                    </a>
                                 </li>
                                  <li>
                                    <a  id="contactus" data-toggle="modal" data-target=".studentcontactmodal"  class="connection-item">
                                    <img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/contactus.svg" style="position:relative;bottom:3px;" width="26px">
                                    <span class="block">Contact Us</span>                                    </a>
                                 </li>
                           <%-- <li>
                                    <a href="<%= AppConstants.BASE_URL %>student/student module/subscriptiondetails.jsp" class="connection-item">
                                   <!--  <i class="zmdi zmdi-map txt-danger"></i> -->
                                   <img  src="<%=request.getContextPath()%>/assets/images/students/notifications/Notification.svg" style="position:relative;bottom:10px;" width="36px" height="30px">
                                    <span class="block">Subscription Details</span>
                                    </a>
                                 </li> --%>
                              </ul>
                           </div>
                        </li>
                       
                     </ul>
                  </li>
                  <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img id="profileimg" height="20" src="" class=""><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                        <li>
                           <a href="<%= AppConstants.BASE_URL %>student/student module/profile.jsp"><i class="fa fa-user"></i><span>Profile</span></a>
                        </li>
                         <li>
                           <a href="<%= AppConstants.BASE_URL %>student/student module/subscriptiondetails.jsp" style="display: flex;align-items: center;"><img alt="" width="21px" style="margin-right: 7px;" src="<%=request.getContextPath() %>/assets/images/students/studentsidebar/MySubscription.svg"><span>Subscription</span></a>
                         </li>
                          <li id="emiStatus"></li>
                        <li class="divider"></li>
                        <li>
                           <a  href="#" onclick="logoutStudent();"><i class="fa fa-power-off"></i><span id="logoutbtn" >Log Out</span></a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
				   </c:when>
				   
				   
				       <c:when test="${sessionScope.AdminType == 'parent'}"> 
				  <div id="mobile_only_nav" class="mobile-only-nav pull-right">
               <ul class="nav navbar-right top-nav pull-right">
               		<li>
               			<a href="<%= AppConstants.BASE_URL %>parent/parentsnotifications.jsp"><img src="<%=request.getContextPath() %>/assets/images/students/notifications/Notification.svg" style="padding-top:5px" width="25px"><sup id="notifcount"></sup></a>
               		</li>
               		<li>
               			<a href="<%= AppConstants.BASE_URL %>parent/parentsfeedback.jsp"><img src="<%=request.getContextPath() %>/assets/images/students/feedback/Feedback.svg" style="padding-top:5px" width="18px"></a>
               		</li>
                  <li>
                 <p id="fontset">Hello, <span id="parentname"></span> </p>
                  </li>
                  <li class="dropdown app-drp">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
                     <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
                        <li>
                           <div class="app-nicescroll-bar">
                              <ul class="app-icon-wrap pa-10">
                                 <li>
                                    <a href="<%= AppConstants.BASE_URL %>parent/parentsnotifications.jsp" class="connection-item">
                                   <!--  <i class="zmdi zmdi-map txt-danger"></i> -->
                                   <img  src="<%=request.getContextPath()%>/assets/images/students/notifications/Notification.svg" style="position:relative;bottom:10px;" width="36px" height="30px">
                                    <span class="block">Notifications</span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="<%= AppConstants.BASE_URL %>parent/parentsfeedback.jsp" class="connection-item">
                                    <!-- <i class="zmdi zmdi-comment-outline txt-warning"></i> -->
                                    <img src="<%=request.getContextPath()%>/assets/images/students/feedback/Feedback.svg" style="position:relative;bottom:3px;" width="26px">
                                     <span class="block">Feedback</span> 
                                    </a>
                                 </li>
                                  <li>
                                    <a href="#" id="contactus" data-toggle="modal" data-target=".parentcontactmodal"  class="connection-item">
                                    <img src="<%=request.getContextPath()%>/assets/images/students/profile/contactus.svg" style="position:relative;bottom:3px;" width="26px">
                                    <span class="block">Contact Us</span>
                                    </a>
                                 </li>
                           
                              </ul>
                           </div>
                        </li>
                       
                     </ul>
                  </li> 
                  <li class="dropdown auth-drp">
                     <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img id="parentprofileimg" height="20" src="" class=""><i class="fa fa-caret-down"></i></a>
                     <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        
                        <li>
                           <a href="<%= AppConstants.BASE_URL %>parent/parentprofile.jsp"><i class="fa fa-user"></i><span>Profile</span></a>
                        </li>
                        
                        <li class="divider"></li>
                        <li>
                           <a  href="#" onclick="logoutStudent();"><i class="fa fa-power-off"></i><span id="logoutbtn" >Log Out</span></a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
				  </c:when> 
				   
				   
           </c:choose>
            
            
         </nav>
         <!-- /Top Menu Items -->
         <!-- Left Sidebar Menu -->
         <div class="fixed-sidebar-left">
            <ul class="nav navbar-nav side-nav nicescroll-bar">
                <c:choose>
              	 <c:when test="${sessionScope.AdminType == 'superadmin'}">
              	 	<li>
						<a class="" href="<%= AppConstants.BASE_URL %>superadmin/create_users.jsp"><div class="pull-left"><i class="fa fa-pencil mr-20"></i><span class="right-nav-text">Users Creation</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="javascript:void(0);" data-toggle="collapse" data-target="#users_dr"><div class="pull-left"><i class="fa fa-users mr-20"></i><span class="right-nav-text">Users List</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="users_dr" class="collapse collapse-level-1">
							<li>
								<a class="" href="<%= AppConstants.BASE_URL %>superadmin/users_list/admin_users_list.jsp">Admins</a>
							</li>
							
							<li>
								<a href="<%= AppConstants.BASE_URL %>superadmin/users_list/academichead_users_list.jsp">Academic Heads</a>
							</li>
						</ul>
					</li>
             
              	 </c:when>
				  <c:when test="${sessionScope.AdminType == 'admintp'}">
				   <li class="navigation-header">
						<span>Sub Admin Testpost</span> 
						<i class="zmdi zmdi-more"></i>
					</li>
					<li>
						<a class="" id="testpostside" href="javascript:void(0);" data-toggle="collapse" data-target="#test_post_dr"><div class="pull-left"><i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Test Post </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="test_post_dr" class="collapse collapse-level-1">
							<li>
								<a class="" id="testpostchild" href="javascript:void(0);" data-toggle="collapse" data-target="#test_post_child_dr">Test Post<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
								<ul id="test_post_child_dr" class="collapse collapse-level-2">
									<li>
										<a class="" id="automatic" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/automatic.jsp">Automatic </a>
									</li>
									<li>
										<a class="" id="manualselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/manual.jsp">Manual</a>
									</li>
									<li>
										<a class="" id="testprev" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/previous_year.jsp">Previous Year </a>
									</li>
								</ul>
							</li>
							<li>
								<a class="" id="testposthis" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/test_post_history_all_posts.jsp">Test post History </a>
							</li>
							<li>
								<a class="" id="testposthisdailyscoope" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/test_post_history_all_posts_dailyscoope.jsp">Test post History Daily Scoope</a>
							</li>
						</ul>
					</li>
				  </c:when>
				  <c:when test="${sessionScope.AdminType == 'adminzs'}">
				   <li class="navigation-header">
						<span>Sub Admin StudyZone</span> 
						<i class="zmdi zmdi-more"></i>
					</li>
					<li>
						<a class="" id="study_zone" data-toggle="collapse" data-target="#study_zone_dr"><div class="pull-left"><i class="fa fa-book mr-20"></i><span class="right-nav-text">Study Zone </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="study_zone_dr" class="collapse collapse-level-1">
							<li>
								<a class =""  id="chapterbasicselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/chapterbasic.jsp">Chapter Basic </a>
							</li>
							<li>
								<a  class ="" id="chapterformulaeselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/chapterformulae.jsp">Chapter Formulae </a>
							</li>
							<li>
								<a  class ="" id="conceptsselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/concept.jsp">Concepts</a>
							</li>
							<li>
								<a  class ="" id="ncertselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/Ncert.jsp">Ncert</a>
							</li>
							<li>
								<a  class ="" id="sbvideos" href="<%= AppConstants.BASE_URL %>admin/studyzone/addvideos.jsp">Add Videos</a>
							</li>
							
						</ul>
					</li>
				  </c:when>
               <c:when test="${sessionScope.AdminType == 'admin'}">
                  <li class="navigation-header">
						<span>Admin</span> 
						<i class="zmdi zmdi-more"></i>
					</li>
					<li>
						<a class="" href="javascript:void(0);" id="subjectwiseside" data-toggle="collapse" data-target="#subjectwisebank_dr"><div class="pull-left"><i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Subject Question Bank</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="subjectwisebank_dr" class="collapse collapse-level-1">
							
							<li>
								<a class="" id="sbstandard" href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/standards.jsp">Standards</a>
							</li>			
							<li>
								<a class="" id="sbsubject"  href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/subjects.jsp">Subjects</a>
							</li>
							
							<li>
								<a class="" id="parama" href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/parameters.jsp">Parameters</a>
							</li>
							<li>
								<a class="" id="sbunit" href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/units.jsp">Units</a>
							</li>
							<li>
								<a class="" id="sbchapter" href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/chapters.jsp">Chapters</a>
							</li>
							<li>
								<a class="" id="sbtopic" href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/topics.jsp">Topics</a>
							</li>
							
						</ul>
					</li>
					<li>
						<a class="" href="javascript:void(0);" id="creationside" data-toggle="collapse" data-target="#creation_dr"><div class="pull-left"><i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Creation</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="creation_dr" class="collapse collapse-level-1">
							<li>
								<a class="" id="catselect" href="<%= AppConstants.BASE_URL %>admin/creation/categories.jsp">Categories</a>
							</li>
							<li>
								<a class="" id="secselect" href="<%= AppConstants.BASE_URL %>admin/creation/sectionsall.jsp">Sections</a>
							</li>
							<li>
								<a class="" id="standsselect" href="<%= AppConstants.BASE_URL %>admin/creation/standards.jsp">Standards</a>
							</li>
							<li>
								<a class="" id="examelect" href="<%= AppConstants.BASE_URL %>admin/creation/exam_types.jsp">Exam Types</a>
							</li>
							
							<li>
								<a class="" id="subselect"  href="<%= AppConstants.BASE_URL %>admin/creation/subjects.jsp">Subjects</a>
							</li>
							<li>
								<a class="" id="unitselect" href="<%= AppConstants.BASE_URL %>admin/creation/units.jsp">Units</a>
							</li>
							<li>
								<a class="" id="chapterselect" href="<%= AppConstants.BASE_URL %>admin/creation/chapters.jsp">Chapters</a>
							</li>
							<li>
								<a class="" id="topiselect" href="<%= AppConstants.BASE_URL %>admin/creation/topics.jsp">Topics</a>
							</li>
							<li>
								<a class="" id="typqselect" href="<%= AppConstants.BASE_URL %>admin/creation/type_of_questions.jsp">Type of Questions</a>
							</li>
							<li>
								<a class="" id="yeaselect" href="<%= AppConstants.BASE_URL %>admin/creation/years.jsp">Years</a>
							</li>
							<li>
								<a class="" id="charcselect" href="<%= AppConstants.BASE_URL %>admin/creation/characteristics.jsp">Characteristics</a>
							</li>
							<li>
								<a class="" id="layoselect" href="<%= AppConstants.BASE_URL %>admin/creation/layouts.jsp">Layouts</a>
							</li>
							
						</ul>
					</li>
					
					<li>
						<a class="" href="javascript:void(0);" id="admindatabase" data-toggle="collapse" data-target="#admindatabase_dr"><div class="pull-left"><i class="fa fa-database mr-20"></i><span class="right-nav-text">Database</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="admindatabase_dr" class="collapse collapse-level-1">
							<li>
								<a id="adbcount" class="" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/database_count.jsp">Database Count</a>
							</li>
							<li>
								<a id="adbypara" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/by_parameters.jsp">By Parameters</a>
							</li>
							<li>
								<a id="adbydate" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/by_date.jsp">By Date</a>
							</li>
							<li>
								<a id="adbypre" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/by_previous_year.jsp">By Previous year</a>
							</li>
							<li>
								<a id="adifflev" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/difficulty_level.jsp">Difficulty Level</a>
							</li>
							<li>
								<a id="addeletque" href="<%= AppConstants.MASTER_URL %>jsp/admin/database/deleted_questions.jsp">Deleted Questions</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="" href="javascript:void(0);" data-toggle="collapse" data-target="#layouts_dr"><div class="pull-left"><i class="fa fa-columns mr-20"></i><span class="right-nav-text">Layouts</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="layouts_dr" class="collapse collapse-level-1">
							<li>
								<a class="active-page" href="<%= AppConstants.BASE_URL %>admin/layouts/layout_1.jsp">Layout 1</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_2.jsp">Layout 2</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_3.jsp">Layout 3</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_4.jsp">Layout 4</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_5.jsp">Layout 5</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_6.jsp">Layout 6</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_7.jsp">Layout 7</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_8.jsp">Layout 8</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_9.jsp">Layout 9</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_10.jsp">Layout 10</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_11.jsp">Layout 11</a>
							</li>
							<li>
								<a href="<%= AppConstants.BASE_URL %>admin/layouts/layout_12.jsp">Layout 12</a>
							</li>
							
						</ul>
					</li>
					<li>
					<a class="" href="javascript:void(0);" id="adminexamcre" data-toggle="collapse" data-target="#adminexamcre_dr"><div class="pull-left"><i class="fa fa-file-text mr-20" aria-hidden="true"></i><span class="right-nav-text">Examtype Creation</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="adminexamcre_dr" class="collapse collapse-level-1">
						 <li>
						<a class="" id="examtypecreation" href="<%= AppConstants.BASE_URL %>admin/examtypescreation/examtypescreation.jsp"><div class="pull-left"><span class="right-nav-text">Examtype Create</span></div><div class="clearfix"></div></a>
					   </li>
				    	<li>
						<a class="" id="examtypeinfo" href="<%= AppConstants.BASE_URL %>admin/examtypescreation/creatingexaminfo.jsp"><div class="pull-left"><span class="right-nav-text">Examtype InfoCreation</span></div><div class="clearfix"></div></a>
				    	</li>
					   </ul>
					</li>
					<li>
						<a class="" id="newsactive" href="<%= AppConstants.BASE_URL %>admin/news/news_list.jsp"><div class="pull-left"><i class="fa fa-bullhorn mr-20"></i><span class="right-nav-text">News</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="javascript:void(0);" id="adminsubscription" data-toggle="collapse" data-target="#subscription_dr"><div class="pull-left"><i class="fa fa-th-large mr-20" aria-hidden="true"></i><span class="right-nav-text">Subscription Package</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="subscription_dr" class="collapse collapse-level-1">
							<li>
								<a class="" id="subscriptionselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/subscriptionpackage/academicyear.jsp">AcademicYear Add</a>
							</li>
							
							<li>
								<a class="" id="subscriptionselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/subscriptionpackage/subscription.jsp">Subscription Add</a>
							</li>
							
						</ul>
					</li>
					
					<li>
						<a class="" id="notifications" href="<%= AppConstants.BASE_URL %>admin/notifications/notifications.jsp"><div class="pull-left"><i class="fa fa-bullhorn mr-20"></i><span class="right-nav-text">Notifications</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a class="" id="promocode" href="<%= AppConstants.BASE_URL %>admin/promocode/promocode.jsp"><div class="pull-left"><i class="fa fa-bullhorn mr-20"></i><span class="right-nav-text">Promocode</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a class="" id="feedback" href="<%= AppConstants.BASE_URL %>admin/feedbacks/feedbacks.jsp"><div class="pull-left"><i class="fa fa-comments mr-20"></i><span class="right-nav-text">Feedbacks</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="parentfeedback" href="<%= AppConstants.BASE_URL %>admin/parentfeedbacks/feedbacks.jsp"><div class="pull-left"><i class="fa fa-comments mr-20"></i><span class="right-nav-text">Parent Feedbacks</span></div><div class="clearfix"></div></a>
					</li>
					<!--  <li>
						<a href="<%= AppConstants.BASE_URL %>admin/live_zone/special_group"><div class="pull-left"><i class="fa fa-comments mr-20"></i><span class="right-nav-text">Special Groups</span></div><div class="clearfix"></div></a>
					</li>-->
					<li>
						<a class="" id="livezoneside" href="javascript:void(0);" data-toggle="collapse" data-target="#livezone_dr"><div class="pull-left"><i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Live Zone</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="livezone_dr" class="collapse collapse-level-1">
						<li>
								<a class="" id="activeselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/live_zone/activelive.jsp">Active</a>
							</li>
							
							<li>
								<a class="" id="upcomingselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/live_zone/upcoming.jsp">Upcoming</a>
							</li>
							<li>
								<a class="" id="compselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/live_zone/calculatecomparitive.jsp">Calculate Comparitive</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="" id="testpostside" href="javascript:void(0);" data-toggle="collapse" data-target="#test_post_dr"><div class="pull-left"><i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Test Post </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="test_post_dr" class="collapse collapse-level-1">
							<li>
								<a class="" id="testpostchild" href="javascript:void(0);" data-toggle="collapse" data-target="#test_post_child_dr">Test Post<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
								<ul id="test_post_child_dr" class="collapse collapse-level-2">
									<li>
										<a class="" id="automatic" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/automatic.jsp">Automatic </a>
									</li>
									<li>
										<a class="" id="manualselect" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/manual.jsp">Manual</a>
									</li>
									<li>
										<a class="" id="testprev" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/previous_year.jsp">Previous Year </a>
									</li>
								</ul>
							</li>
							<li>
								<a class="" id="testposthis" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/test_post_history_all_posts.jsp">Test post History </a>
							</li>
							<li>
								<a class="" id="testposthisdailyscoope" href="<%= AppConstants.MASTER_URL %>jsp/admin/test_post/test_post_history_all_posts_dailyscoope.jsp">Test post History Daily Scoope</a>
							</li>
						</ul>
					</li>
					
					<li>
						<a  id="stdlogin" href="<%= AppConstants.BASE_URL %>admin/studentlogincontrol/student_login_control.jsp"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Student Login Control</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a  id="stdlogin" href="<%= AppConstants.BASE_URL %>admin/studentlogincontrol/tweekingcontrol.jsp"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Tweaking Student Data</span></div><div class="clearfix"></div></a>
					</li>
					<!--  <li>
						<a href="<%= AppConstants.BASE_URL %>admin/refer_and_earn"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Refer & Earn</span></div><div class="clearfix"></div></a>
					</li>-->
					<li>
						<a  id="parampercent" href="<%= AppConstants.BASE_URL %>admin/CategoryPercentages/paramspercentage.jsp"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Parameter Percentage </span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a  id="chapterpercent" href="<%= AppConstants.BASE_URL %>admin/CategoryPercentages/chapterpercentage.jsp"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Chapter Expertise Percentage </span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a href="javascript:void(0);" id="adminreports" data-toggle="collapse" data-target="#reports_dr"><div class="pull-left"><i class="fa fa-line-chart mr-20"></i><span class="right-nav-text">Reports </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="reports_dr" class="collapse collapse-level-1">
							<li>
								<a id="stcount" href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_count.jsp">Students Count </a>
							</li>
							<li>
								<a id="stusag"  href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_usage.jsp">Students Usage </a>
							</li>
							<li>
								<a id="livexm" href="<%= AppConstants.BASE_URL %>admin/reports/reports_live_exam_report.jsp"> Live Exam Report </a>
							</li>
							<li>
								<a id="siggnup" href="<%= AppConstants.BASE_URL %>admin/reports/reports_sing_up.jsp">Sign Up </a>
							</li>
							
							<li>
								<a id="statstill" href="<%= AppConstants.BASE_URL %>admin/reports/reports_status_still.jsp">Status Still</a>
							</li>
							
						</ul>
					</li>
					
					<li>
						<a id="spefeedback" href="<%= AppConstants.BASE_URL %>admin/specialfeedbackback/specialfeedbackback.jsp"><div class="pull-left"><i class="fa fa-hand-pointer-o mr-20"></i><span class="right-nav-text">Special Feedback</span></div><div class="clearfix"></div></a>
					</li>
				
					<li>
						<a class="" id="study_zone" data-toggle="collapse" data-target="#study_zone_dr"><div class="pull-left"><i class="fa fa-book mr-20"></i><span class="right-nav-text">Study Zone </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="study_zone_dr" class="collapse collapse-level-1">
							<li>
								<a class =""  id="chapterbasicselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/chapterbasic.jsp">Chapter Basic </a>
							</li>
							<li>
								<a  class ="" id="chapterformulaeselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/chapterformulae.jsp">Chapter Formulae </a>
							</li>
							<li>
								<a  class ="" id="conceptsselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/concept.jsp">Concepts</a>
							</li>
							<li>
								<a  class ="" id="ncertselect"  href="<%= AppConstants.BASE_URL %>/admin/studyzone/Ncert.jsp">Ncert</a>
							</li>
							<li>
								<a  class ="" id="sbvideos" href="<%= AppConstants.BASE_URL %>admin/studyzone/addvideos.jsp">Add Videos</a>
							</li>
							
						</ul>
					</li>
			
					
					
					<li>
						<a href="<%= AppConstants.BASE_URL %>admin/contactus/contact.jsp"><div class="pull-left"><i class="fa fa-hand-o-right mr-20" aria-hidden="true"></i><span class="right-nav-text">Contact Us</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a href="<%= AppConstants.BASE_URL %>admin/tweaking.jsp"><div class="pull-left"><i class="fa fa-hand-o-right mr-20" aria-hidden="true"></i><span class="right-nav-text">Run Tweak for test</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a href="<%= AppConstants.BASE_URL %>admin/livevideo/zomantlivevideotable.jsp"><div class="pull-left"><i class="fa fa-hand-o-right mr-20" aria-hidden="true"></i><span class="right-nav-text">Live video</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a href="<%= AppConstants.BASE_URL %>admin/payment/paymenttable.jsp"><div class="pull-left"><i class="fa fa-money mr-20" aria-hidden="true"></i><span class="right-nav-text">Payment</span></div><div class="clearfix"></div></a>
					</li>
					
					<li>
						<a href="<%= AppConstants.BASE_URL %>admin/scholarship/scholarship.jsp"><div class="pull-left"><i class="fa fa-money mr-20" aria-hidden="true"></i><span class="right-nav-text">Scholarship</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<%-- <a href="<%= AppConstants.BASE_URL %>admin/salesMan/salesman.jsp"><div class="pull-left"><i class="fa fa-user-secret mr-20" aria-hidden="true"></i><span class="right-nav-text">Sales Man</span></div><div class="clearfix"></div></a>
					 --%>
					<a class="" id="Sales_zone" data-toggle="collapse" data-target="#sales"><div class="pull-left"><i class="fa fa-user-secret mr-20"></i><span class="right-nav-text">Sales Person</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="sales" class="collapse collapse-level-1">
							<li>
								<a class =""  id="salescreate"  href="<%= AppConstants.BASE_URL %>admin/salesMan/salesman.jsp">Create Sales Person</a>
							</li>
							<li>
								<a  class ="" id="salespayment"  href="<%= AppConstants.BASE_URL %>admin/salesMan/salesPayment.jsp">Sales Payment </a>
							</li>
							<li>
								<a  class ="" id="salesmanstudent"  href="<%= AppConstants.BASE_URL %>admin/salesMan/salesmanstudent.jsp">Unassigned Students</a>
							</li>
							<li>
								<a  href="<%= AppConstants.BASE_URL %>admin/salesMan/assigned_students.jsp" id="Assigned" >Assigned Students</a>
							</li>
							
							<%-- <li>
								<a  href="<%= AppConstants.BASE_URL %>admin/salesman_linking.jsp" id="SalesmanLinking" >Salesman Linking</a>
							</li>
							
							<li>
								<a  href="<%= AppConstants.BASE_URL %>admin/salesMan/linking_report.jsp" id="LinkingReport" >Linking Report</a>
							</li> --%>
							
							<li>
								<a  href="<%= AppConstants.BASE_URL %>admin/salesMan/settlementtable.jsp" id="settement" >Settlement</a>
							</li>
					</ul>
					
					</li>
					
					
					<li>
						
					<a class="" id="faculty_zone" data-toggle="collapse" data-target="#faculty"><div class="pull-left"><i class="fa fa-user-secret mr-20"></i><span class="right-nav-text">Faculty</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="faculty" class="collapse collapse-level-1">
							<li>
								<a class =""  id="facultycreate"  href="<%= AppConstants.BASE_URL %>admin/faculty/faculty.jsp">Create Faculty</a>
							</li>
							
							<li>
								<a class =""  id="studentdoubts"  href="<%= AppConstants.BASE_URL %>admin/faculty/studentdoubts.jsp">Student Doubts</a>
							</li>
							<li>
								<a class =""  id="facultypayment"  href="<%= AppConstants.BASE_URL %>admin/faculty/facultypayment.jsp">Faculty Payment</a>
							</li>
							<li>
								<a class =""  id="studentperformance"  href="<%= AppConstants.BASE_URL %>admin/faculty/studentperformance.jsp">Student Performance</a>
							</li>
							<li>
								<a class =""  id="notTakenDoubts"  href="<%= AppConstants.BASE_URL %>admin/faculty/notTakenDoubts.jsp">Not Taken Doubts</a>
							</li>
							
							<li>
								<a class =""  id="facultysettement"  href="<%= AppConstants.BASE_URL %>admin/faculty/facultysettlementTable.jsp">Settlement</a>
							</li>
					</ul>
					
					</li>
					
					<!-- robo lerning -->
					<li>
						<a id="robolearning" href="<%= AppConstants.BASE_URL %>admin/robo/robolearningtable.jsp"><div class="pull-left"><i class="fa fa-android mr-20"></i><span class="right-nav-text">Robo Learning</span></div><div class="clearfix"></div></a>
					</li>
					<%-- <li>
						
					<a class="" id="robolearning" data-toggle="collapse" data-target="#robolearning"><div class="pull-left"><i class="fa fa-android mr-20"></i><span class="right-nav-text">Robo Learning</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="faculty" class="collapse collapse-level-1">
							<li>
								<a class =""  id="robolearning"  href="<%= AppConstants.BASE_URL %>admin/robo/robolearning.jsp">Robo learning</a>
							</li>
							
							<li>
								<a class =""  id="studentdoubts"  href="<%= AppConstants.BASE_URL %>admin/faculty/studentdoubts.jsp">Student Doubts</a>
							</li>
						</ul>
					</li> --%>
					
					
					
					
					
					
					
					<%-- <li>
						<a href="<%= AppConstants.BASE_URL %>admin/salesman_linking.jsp"><div class="pull-left"><i class="fa fa-link mr-20" aria-hidden="true"></i><span class="right-nav-text">Linking</span></div><div class="clearfix"></div></a>
					</li> --%>
					
					<%-- <li>
						<a href="<%= AppConstants.BASE_URL %>admin/faculty/faculty.jsp"><div class="pull-left"><i class="fa fa-user-secret mr-20" aria-hidden="true"></i><span class="right-nav-text">Faculty</span></div><div class="clearfix"></div></a>
					</li>
					 --%>
					
					
					
					
               </c:when>
               <c:when test="${sessionScope.AdminType == 'academichead'}">
                <li>
						<a class="" id="adduseractive" href="javascript:void(0);" data-toggle="collapse" data-target="#users_dr"><div class="pull-left"><i class="fa fa-pencil mr-20"></i><span class="right-nav-text">Create New Users</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="users_dr" class="collapse collapse-level-1">
							<!--  <li>
								<a class="" id="superdeanactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/create_users/superdean.jsp">Super Dean</a>
							</li>-->
							<li>
								<a class="" id="deanactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/create_users/dean.jsp">Dean</a>
							</li>
							<li>
								<a class="" id="smeactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/create_users/sme.jsp">SME</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="" id="viewuseractive" href="javascript:void(0);" data-toggle="collapse" data-target="#users"><div class="pull-left"><i class="fa fa-users mr-20"></i><span class="right-nav-text">View Users List</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="users" class="collapse collapse-level-1">
						
							<li>
								<a class="" id="deanlistactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/views/dean.jsp">Dean</a>
							</li>
							<li>
								<a class="" id="smelistactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/views/sme.jsp">SME</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="" id=loginlinkactive data-toggle="collapse" data-target="#loginlink"><div class="pull-left"><i class="fa fa-users mr-20"></i><span class="right-nav-text">Login Link</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="loginlink" class="collapse collapse-level-1">
							<!-- <li>
								<a class="" id="superlinkactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/user_login_link/login_link_superdean.jsp">Super Dean</a>
							</li>-->
							<li>
								<a class="" id="deanlinkactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/user_login_link/login_link_dean.jsp">Dean</a>
							</li>
							<li>
								<a class="" id="smelinkactive" href="<%= AppConstants.MASTER_URL %>jsp/academic_head/user_login_link/login_link_sme.jsp">SME</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="" id="statusactive" href="<%= AppConstants.BASE_URL %>academic_head/status.jsp"><div class="pull-left"><i class="fa fa-question mr-20"></i><span class="right-nav-text">Questions Status</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="countactive" href="<%= AppConstants.BASE_URL %>academic_head/question_count.jsp"><div class="pull-left"><i class="glyphicon glyphicon-plus mr-20"></i><span class="right-nav-text">Questions Count</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="dbqcsactive" href="<%= AppConstants.BASE_URL %>academic_head/database_qc.jsp"><div class="pull-left"><i class="fa fa-database mr-20"></i><span class="right-nav-text">Database QC</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="dbcountactive" href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp"><div class="pull-left"><i class="glyphicon glyphicon-export mr-20"></i><span class="right-nav-text">Database Count</span></div><div class="clearfix"></div></a>
					</li>
					<!-- <li>
						<a class="" id="copyactive" href="<%= AppConstants.BASE_URL %>academic_head/move_to_board.jsp"><div class="pull-left"><i class="glyphicon glyphicon-duplicate mr-20"></i><span class="right-nav-text">Copy to other Exam Type</span></div><div class="clearfix"></div></a>
					</li> -->
					<li>
						<a class="" id="peractive" href="<%= AppConstants.BASE_URL %>academic_head/sme_permormance.jsp"><div class="pull-left"><i class="glyphicon glyphicon-check mr-20"></i><span class="right-nav-text">Performance</span></div><div class="clearfix"></div></a>
					</li>
               </c:when>
               <c:when test="${sessionScope.AdminType == 'superdean'}">
                  <li>
						<a class="" href="<%= AppConstants.BASE_URL %>superdean/status"><div class="pull-left"><i class="fa fa-question mr-20"></i><span class="right-nav-text">Questions Status</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="<%= AppConstants.BASE_URL %>superdean/question_count"><div class="pull-left"><i class="glyphicon glyphicon-plus mr-20"></i><span class="right-nav-text">Questions Count</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="<%= AppConstants.BASE_URL %>superdean/database_qc"><div class="pull-left"><i class="fa fa-database mr-20"></i><span class="right-nav-text">Database QC</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="<%= AppConstants.BASE_URL %>superdean/move_to_board"><div class="pull-left"><i class="glyphicon glyphicon-duplicate mr-20"></i><span class="right-nav-text">Copy to other Exam Type</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" href="<%= AppConstants.BASE_URL %>superdean/manual_post_qns"><div class="pull-left"><i class="fa fa-user mr-20"></i><span class="right-nav-text">Manual Post Questions</span></div><div class="clearfix"></div></a>
					</li>
               </c:when>
               <c:when test="${sessionScope.AdminType == 'dean'}">
                 <li>
						<a class="" id="dstatus" href="<%= AppConstants.BASE_URL %>dean/questionstatus/status.jsp"><div class="pull-left"><i class="fa fa-question mr-20"></i><span class="right-nav-text">Questions Status</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="dcount" href="<%= AppConstants.BASE_URL %>dean/questioncount/question_count.jsp"><div class="pull-left"><i class="glyphicon glyphicon-plus mr-20"></i><span class="right-nav-text">Questions Count</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="ddbqc" href="<%= AppConstants.BASE_URL %>dean/databaseqc/database_qc.jsp"><div class="pull-left"><i class="fa fa-database mr-20"></i><span class="right-nav-text">Database QC</span></div><div class="clearfix"></div></a>
					</li>
					<!-- <li>
						<a class="" id="dcopyac" href="<%= AppConstants.BASE_URL %>dean/copytootherexamtype/move_to_board.jsp"><div class="pull-left"><i class="glyphicon glyphicon-duplicate mr-20"></i><span class="right-nav-text">Copy to other Exam Type</span></div><div class="clearfix"></div></a>
					</li> -->
					<li>
						<a class="" id="dmanualcop" href="<%= AppConstants.BASE_URL %>dean/manualpostquestions/manual_post_qns.jsp"><div class="pull-left"><i class="fa fa-user mr-20"></i><span class="right-nav-text">Manual Post Questions</span></div><div class="clearfix"></div></a>
					</li>
               </c:when>
               <c:when test="${sessionScope.AdminType == 'sme'}">
                  	<li>
						<a class=""  id="addq" href="<%= AppConstants.BASE_URL %>sme/addquestions/upload.jsp" onclick="setSession('notedit');"><div class="pull-left"><i class="glyphicon glyphicon-copy mr-20"></i><span class="right-nav-text">Add Question</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="smeques" href="<%= AppConstants.BASE_URL %>sme/questionstatus/status.jsp" onclick="setSession('edit');"><div class="pull-left"><i class="fa fa-question mr-20"></i><span class="right-nav-text">Questions Status</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a class="" id="smeqcou" href="<%= AppConstants.BASE_URL %>sme/questioncount/question_count.jsp"><div class="pull-left"><i class="glyphicon glyphicon-plus mr-20"></i><span class="right-nav-text">Questions Count</span></div><div class="clearfix"></div></a>
					</li>
               </c:when>
               <c:when test="${sessionScope.AdminType == 'student'}">
					
					<li class="navigation-header">
					
					<a id="cat" href="<%= AppConstants.BASE_URL %>student/student module/catselect.jsp?ref=std"><span id="categoryname"> </span><span>&nbsp;&nbsp;</span><span><i class="fa fa-pencil-square-o" class="connection-item" aria-hidden="true"  style="color: #5e57ea;"></i></span></a>
					<i class="zmdi zmdi-more"></i>
					</li>
	 				
	 				<li class="" id="rankgauranty">
							<a href="<%= AppConstants.BASE_URL %>student/student module/ranksheetexamtypes.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/rank.jpg" style="position:relative;width:26px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Rank Guarantee Program</span></div><div class="clearfix"></div></a>
					 </li>
					
					 <li class="" id="einsteinanalytics">
							<a href="<%= AppConstants.BASE_URL %>student/livezone/dash.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Dash_Board.svg" style="position:relative;width:26px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Dashboard</span></div><div class="clearfix"></div></a>
					 </li>
					<li>
						<a class="" id="liveside" href="javascript:void(0);" data-toggle="collapse"  data-target="#livezone"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/All_India_Live.svg" style="position:relative;left:-6px;" width="26px" ><span class="right-nav-text" style="position: relative;margin-left: 5px;top:-8px;white-space: nowrap;">All India Live Tests</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="livezone" class="collapse collapse-level-1">
				          	<li class="" id="livezoneactive">
							<a href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_active_full_mocks.jsp"><div class="pull-left"><img id="livegreyactive" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/livezone.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="activetext" style="position: relative;top:-8px;margin-left: 8px">Live Tests</span></div><div class="clearfix"></div></a>
								</li>
							<li class="" id="livezoneattempeted">
								<a href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_attempted_full_mocks.jsp" ><div class="pull-left"><img id="livegreyattempted" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Attemptelived.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="attemptedtext" style="position: relative;margin-left: 8px;top:-8px">Attempted</span></div><div class="clearfix"></div></a>
								</li>
							<li class="" id="livezonemissed">
							<a href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_missed_full_mocks.jsp" ><div class="pull-left"><img id="livegreymissed" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/liveMIssed.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="missedtext" style="position: relative;margin-left: 8px;top:-8px">Missed</span></div><div class="clearfix"></div></a>
								</li>
							<li class="" id="livezoneupcoming">
							<a  href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_upcoming_full_mocks.jsp" ><div class="pull-left"><img  id="livegreyupcoming" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/liveupcoming.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text"  id="upcomingtext" style="position: relative;margin-left: 8px;top:-8px">Upcoming</span></div><div class="clearfix"></div></a>
								</li>
								<li class="" id="">
						      <a id="topperslive" class="" href="<%= AppConstants.BASE_URL %>student/student module/live_zone_toppers.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Toppers_Icon.svg" style="position:relative;left:-6px;" width="35px" height="30px"><span class="right-nav-text"  id="upcomingtext" style="position: relative;margin-left: 5px;top:-17px;white-space: nowrap;">Toppers</span></div><div class="clearfix"></div></a>
							
							</li></ul></li>
						
						<li>
						<a class="" id="reportside" href="javascript:void(0);" data-toggle="collapse"  data-target="#rank"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Rank_accelerators.svg" style="position:relative;left:-6px;" width="26px" ><span class="right-nav-text" style="position: relative;margin-left: 5px;top:-8px;white-space: nowrap;">Rank Accelerators</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="rank" class="collapse collapse-level-1">	 
								<li class="" id="">
						      <a  href="<%= AppConstants.BASE_URL %>student/livezone/wrong&overtime.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Wrong32x32.svg" style="position:relative;left:-6px;" width="26px" ><span class="right-nav-text"  id="upcomingtext" style="position: relative;margin-left: 5px;top:-8px;white-space: nowrap;">Wrong &Over-time </span></div><div class="clearfix"></div></a>
							</li>
								
								<li class="" id="livezone70percentcorner">
							<a  href="<%= AppConstants.BASE_URL %>student/seventycorner/seventypercentexamtypes.jsp" ><div class="pull-left"><img  id="liveseventypercent"  src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/70cornerside.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text"  id="upcomingtext" style="position: relative;margin-left: 8px;top:-8px">70% Corner</span></div><div class="clearfix"></div></a>
								</li>
									
								</ul></li>
					
					<li>
						<a class="" id="previousside" href="javascript:void(0);" data-toggle="collapse"  data-target="#previous"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Previous_Year_Icon.svg" style="position:relative;left:-6px;" width="26px" ><span class="right-nav-text" style="position: relative;margin-left: 5px;top:-8px;white-space: nowrap;">Previous year's</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="previous" class="collapse collapse-level-1">	
				          	<li class="" id="prevpaper">
							<a href="<%= AppConstants.BASE_URL %>student/PreviousyearsPapers/paperwise/paper-wise.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/PreviousYearIconTickMark.svg" style="position:relative;left:-6px;" width="35px"  height="30px"><span class="right-nav-text" id="" style="position: relative;bottom: 4px;top:-8px;margin-left: 8px">Papers</span></div><div class="clearfix"></div></a>
								</li>
								
								<li class="" id="chapterwise">
							<a href="<%= AppConstants.BASE_URL %>student/PreviousyearsPapers/chapterwise/chapter-wise.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/PreviousYearIcon.svg"  style="position:relative;left:-6px;" width="35px" height="30px"><span class="right-nav-text" id="" style="position: relative;bottom: 4px;top:-8px;margin-left: 8px">40 year's Qns.</span></div><div class="clearfix"></div></a>
								</li>
								</ul></li>	
						 <li class="" id="einsteinanalytics">
							<a href="<%= AppConstants.BASE_URL %>student/einsteinanalaytics/einsteinsummary.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Einsten_Icon.svg" style="position:relative;left:-6px;font-size:35px;width:35px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Einstein Analytics</span></div><div class="clearfix"></div></a>
					 </li>				
							 <li class="" id="chaptertarget">
					
						  <a  href="<%= AppConstants.BASE_URL %>student/Ainteractive/interactive.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Intractive_Practice.svg" style="position:relative;width:26px;height:30px"><span class="right-nav-text"  id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Interactive Practice-AI</span></div><div class="clearfix"></div></a>
				     </li>	
					 <li>
						<a href="<%= AppConstants.BASE_URL %>student/dailyscoope/dailyscoope-examtype.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Daily_Scoop.svg" style="position:relative;width:26px;height:30px"><span class="right-nav-text" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Daily Scoope</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a href="<%= AppConstants.BASE_URL %>student/collegeprediction/collegepre1.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/college_predictor.svg" style="position:relative;width:26px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">College Predictor</span></div><div class="clearfix"></div></a>
					</li>
							<li>
						<a href="<%= AppConstants.BASE_URL %>student/parentlogins/parent_logins.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Parent_Login.svg" style="position:relative;width:26px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Parent Login</span></div><div class="clearfix"></div></a>
					</li>
					      <li>
						<a  href="<%= AppConstants.BASE_URL %>student/student module/feedbacks.jsp"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Feedback.svg" style="position:relative;left:-6px;" width="26px"  height="30px"><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Feedback</span></div><div class="clearfix"></div></a>
					</li>
					      <li>
						<a  href="<%= AppConstants.BASE_URL %>student/student module/doubts.jsp"><div class="pull-left"><img  src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Doubts.png" style="position:relative;left:-6px;" width="26px"  height="30px"><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Doubts</span></div><div class="clearfix"></div></a>
					</li>
					<li>
						<a href="<%= AppConstants.BASE_URL %>student/student module/examinfo.jsp"><div class="pull-left"><img id="" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Live zone_Exam.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Exam Info</span></div><div class="clearfix"></div></a>
					</li>
					
					<!-- emi details -->
					
					<li id="sideemioption"></li>
								
							
				   <!-- <li>
						<a class="" href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum.jsp"><div class="pull-left"><i class="fa fa-comments mr-20"></i><span class="right-nav-text">Discussion Forum</span></div><div class="clearfix"></div></a>
					</li>
						<li>
						<a class="" href="<%= AppConstants.BASE_URL %>student/postdoubt/post_doubt.jsp"><div class="pull-left"><i class="fa fa-question mr-20"></i><span class="right-nav-text">Post Doubt</span></div><div class="clearfix"></div></a>
					</li>
					<li class="" id="designownmock">
						   <a  href="<%= AppConstants.BASE_URL %>student/designownmock/designown.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/test.svg" style="position:relative;left:-6px;" width="35px"  height="30px"><span class="right-nav-text"  id="designownmenu" style="position: relative;margin-left: 37px;top:-29px;white-space: nowrap;">Design Own Mock Test</span></div><div class="clearfix"></div></a>
				    </li>
				
				   <li class="" id="simplepractise">
						  <a  href="<%= AppConstants.BASE_URL %>/student/simplepractisetest/simpletestfirst.jsp" ><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/test.svg" style="position:relative;left:-6px;" width="35px"  height="30px"><span class="right-nav-text"  id="simplemenu" style="position: relative;margin-left: 37px;top:-29px;white-space: nowrap;">Simple Practise Test</span></div><div class="clearfix"></div></a>
				    </li>-->
				
				  
				
					
			<li>
						<a class="" id="usefulside" href="javascript:void(0);" data-toggle="collapse" data-target="#useful"><div class="pull-left"><img id="" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Useful_Links.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" style="position: relative;margin-left: 8px;top:-8px">Useful Links</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="useful" class="collapse collapse-level-1">
						
					
					
					<li class="" id="studentnotify" style="margin-top:5px">
						<a class="" href="<%= AppConstants.BASE_URL %>student/notifications/notifications.jsp"><div class="pull-left"><img  id="notificationgrey" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/Notification.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="notificationtext" style="position: relative;margin-left: 8px;top:-3px">Notifications</span></div><div class="clearfix"></div></a>
					</li>
					
					<li class="" id="" style="margin-top:5px">
						<a class="#" data-toggle="modal" data-target=".studentcontactmodal"><div class="pull-left"><img  id="" src="<%=request.getContextPath()%>/assets/images/students/studentsidebar/contactus.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="notificationtext" style="position: relative;margin-left: 8px;top:-8px">Contact Us</span></div><div class="clearfix"></div></a>
					</li>
					<li class="" id="">
						<a class="" style="color:#878787" onclick="logoutStudent();"><div class="pull-left"><i class="fa fa-power-off" style="color: aqua;"></i><span class="right-nav-text" id="logouttext" style="position: relative;margin-left: 8px;top:-8px">Logout</span></div><div class="clearfix"></div></a>
					</li><ul>
					</li>
               </c:when>
<c:when test="${sessionScope.AdminType == 'parent'}"> 
                 
                  	<li>
						<a class=""  id="parentstddashboard" href="<%= AppConstants.BASE_URL %>parent/dash.jsp"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Dash_Board.svg" style="position:relative;width:26px;height:30px" ><span class="right-nav-text" id="" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Dashboard</span></div><div class="clearfix"></div></a>
					</li>
				
					<li class="navigation-header ">
						<span class="bluecol" style="color: #5e57ea !important">Live zone</span>
						<i class="zmdi zmdi-more"></i>
					</li>
					
							<li class="" id="livezoneattempeted">
								<a href="<%= AppConstants.BASE_URL %>parent/parentslivezoneattempted.jsp" ><div class="pull-left"><img id="livegreyattempted" src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Attemptelived.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="attemptedtext" style="position: relative;margin-left: 8px;top:-8px">Attempted</span></div><div class="clearfix"></div></a>
								</li>
							<li class="navigation-header ">
						<span class="attri" style="color: #5e57ea !important">Einstein Analytics</span>
						<i class="zmdi zmdi-more"></i>
					</li>
					
					 <li class="" id="einsteinanalytics">
							<a href="<%= AppConstants.BASE_URL %>parent/einsteinanalaytics/einsteinsummary.jsp" height="40px"><div class="pull-left"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Einsten_Icon.svg" style="position:relative;left:-6px;font-size:35px;width:35px;height:30px" ><span class="right-nav-text" id="activetext" style="position: absolute;bottom: 4px;top:13px;margin-left: 8px">Einstein Analytics</span></div><div class="clearfix"></div></a>
					 </li>
					<li class="navigation-header ">
						<span class="attri" style="color: #5e57ea !important">Useful Links</span>
						<i class="zmdi zmdi-more"></i>
					</li>
					
					<li class="" id="studentnotify" style="margin-top:5px">
						<a class="" href="<%=  AppConstants.BASE_URL %>parent/parentsnotifications.jsp"><div class="pull-left"><img  id="notificationgrey" src="<%=request.getContextPath()%>/assets/images/students/notifications/Notification.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="notificationtext" style="position: relative;margin-left: 8px;top:-8px">Notifications</span></div><div class="clearfix"></div></a>
					</li>
					<li class="" id="studentfeedback">
						<a class="" href="<%= AppConstants.BASE_URL %>parent/parentsfeedback.jsp"><div class="pull-left"><img  id="feedbackgrey" src="<%=request.getContextPath()%>/assets/images/students/feedback/Feedback.svg" style="position:relative;left:-6px;" width="26px"  height="30px">
						<span class="right-nav-text" id="feedbacktext" style="position: relative;margin-left: 8px;top:-8px">Feedback</span></div><div class="clearfix"></div></a>
					</li>
					<li class="" id="contactus" style="margin-top:5px">
						<a class="#" data-toggle="modal" data-target=".parentcontactmodal"><div class="pull-left"><img  id="" src="<%=request.getContextPath()%>/assets/images/students/profile/contactus.svg" style="position:relative;left:-6px;" width="26px"><span class="right-nav-text" id="notificationtext" style="position: relative;margin-left: 8px;top:-8px">Contact Us</span></div><div class="clearfix"></div></a>
					</li>
                </c:when>
               
               </c:choose>
            </ul>
         

       

         </div>
         
         
         
                
           <div class="modal fade parentcontactmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top:0%;transform: scale(0.7,0.75)!important;">
         <div class="modal-header">
				<h4 class="fonkar">Hey,<span id="contactname"></span></h4>
		</div>
           <section class="special-area bg-white section-padding-80" id="contact">
        <div class="special_description_area mt-100">
            <div class="container">
                <div class="row">
                <div class="col-12">
				    <button type="button" class="close" data-dismiss="modal" style="margin-right:25px;font-size:38px">&times;</button>
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2>Get in touch with us!</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
                <div class="row" style="margin-bottom:45px;">
                <!-- Single Special Area -->
                <div class="col-12 col-md-6">
                    
                    
<div class="gtco-contact-info">
    <h4 class="family">Contact Information</h4>
    <ul style="margin-top: 30px;">

        <li class="address">3rd floor, 8-2-608/1/5/B, <br> Road No. 10,Banjara Hills<br> Hyderabad,Telangana 500034</li>
        <li class="phone">+91 8297668888</li>
        <li class="email emaillink"><a href="mailto:info@Skyget.com?Subject=Contact%20Form"> info@Skygets.com</a></li>
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
                                            <input type="text" class="form-control focu" name="contname" id="parentfullname" placeholder="Your Name" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="email" class="form-control focu" name="contemail" id="parentemail" placeholder="Your E-mail" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea name="contmessage" class="form-control focu" id="parentmessage" cols="30" rows="4" placeholder="Your Message *" required></textarea>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <button type="submit" class="btn set submit-btn waves-effect" onclick="parentcontactdata()">Send Now</button>
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
        
        
        </div>
           
         </div>
       </div>
       
       
       
           <div class="modal fade studentcontactmodal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   
       <!-- Change class .modal-sm to change the size of the modal -->
       <div class="modal-dialog modal-lg" role="document">
   
   
         <div class="modal-content m1"  style="box-shadow:none; position: absolute; top:0%;transform: scale(0.7,0.75)!important;">
         <div class="modal-header">
				<h4 class="fonkar">Hey,<span id="contactname"></span></h4>
		</div>
           <section class="special-area bg-white section-padding-80" id="contact">
        <div class="special_description_area mt-100">
            <div class="container">
                <div class="row">
                <div class="col-12">
				    <button type="button" class="close" data-dismiss="modal" style="margin-right:25px;font-size:38px">&times;</button>
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2>Get in touch with us!</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>
                <div class="row" style="margin-bottom:45px;">
                <!-- Single Special Area -->
                <div class="col-12 col-md-6">
                    
                    
<!-- <div class="gtco-contact-info">
    <h4 class="family">Contact Information</h4>
    <ul style="margin-top: 30px;">

        <li class="address">3rd floor, 8-2-608/1/5/B, <br> Road No. 10,Banjara Hills<br> Hyderabad,Telangana 500034</li>
        <li class="phone">+91 8297668888</li>
        <li class="email emaillink"><a href="mailto:info@Skyget.com?Subject=Contact%20Form"> info@Skygets.com</a></li>
    </ul>
</div> -->
   <div class="gtco-contact-info">
    <h4 class="family">Contact Information</h4>
    <ul style="margin-top: 30px;">

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
                                            <input type="text" class="form-control focu" name="contname" id="contname" placeholder="Your Name" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="email" class="form-control focu" name="contemail" id="contemail" placeholder="Your E-mail" required>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea name="contmessage" class="form-control focu" id="contmessage" cols="30" rows="4" placeholder="Your Message *" required></textarea>
                                        </div>
                                    </div>
                                    <!-- Single Input Area Start -->
                                    <div class="col-12">
                                        <button type="submit" class="btn set submit-btn waves-effect" onclick="sendcontactdata()">Send Now</button>
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
        
        
        </div>
           
         </div>
       </div>
         <!-- /Left Sidebar Menu -->

       <%@include file="/jsp/master/defaultfooter.jsp" %>