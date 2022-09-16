<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
	<!-- <!-- Preloader -->
	<!-- <div class="preloader-it" style="display: none;">
		<div class="la-anim-1 la-animate"></div>
	</div>
	/Preloader
	<div class="wrapper theme-1-active pimary-color-red">
		Top Menu Items
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="http://123rankers.com/admin"> <img class="brand-img"
							src="http://123rankers.com/assets/images/logo/logo.png"> <span
							class="brand-text"> <span class="font-14">ADMIN</span>
						</span>
						</a>
					</div>
				</div>
				<a id="toggle_nav_btn"
					class="toggle-left-nav-btn inline-block ml-20 pull-left"
					href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a> <a
					id="toggle_mobile_search" data-toggle="collapse"
					data-target="#search_form" class="mobile-only-view"
					href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a> <a
					id="toggle_mobile_nav" class="mobile-only-view"
					href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>

			</div>

			<div id="mobile_only_nav" class="mobile-only-nav pull-right">
				<ul class="nav navbar-right top-nav pull-right">
					<li><a href="#"><i class="fa fa-desktop fa-lg"></i></a></li>
					<li class="dropdown app-drp"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="zmdi zmdi-apps top-nav-icon"></i></a>
						<ul class="dropdown-menu app-dropdown"
							data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
							<li>
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 162px;">
									<div class="app-nicescroll-bar"
										style="overflow: hidden; width: auto; height: 162px;">
										<ul class="app-icon-wrap pa-10">
											<li><a href="vector-map.html" class="connection-item">
													<i class="zmdi zmdi-map txt-danger"></i> <span
													class="block">Change Category</span>
											</a></li>
											<li><a href="inbox.html" class="connection-item"> <i
													class="zmdi zmdi-email-open txt-success"></i> <span
													class="block">e-mail</span>
											</a></li>
											<li><a href="calendar.html" class="connection-item">
													<i class="zmdi zmdi-calendar-check txt-primary"></i> <span
													class="block">calendar</span>
											</a></li>
											<li><a href="vector-map.html" class="connection-item">
													<i class="zmdi zmdi-map txt-danger"></i> <span
													class="block">map</span>
											</a></li>
											<li><a href="chats.html" class="connection-item"> <i
													class="zmdi zmdi-comment-outline txt-warning"></i> <span
													class="block">chat</span>
											</a></li>
											<li><a href="contact-card.html" class="connection-item">
													<i class="zmdi zmdi-assignment-account"></i> <span
													class="block">contact</span>
											</a></li>
										</ul>
									</div>
									<div class="slimScrollBar"
										style="background: rgb(135, 135, 135); width: 4px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
									<div class="slimScrollRail"
										style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</li>
							<li>
								<div class="app-box-bottom-wrap">
									<hr class="light-grey-hr ma-0">
									<a class="block text-center read-all" href="javascript:void(0)">
										more </a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown auth-drp"><a href="#"
						class="dropdown-toggle pr-0" data-toggle="dropdown"><i
							class="fa fa-user-secret fa-2x"></i><i class="fa fa-caret-down"></i></a>
						<ul class="dropdown-menu user-auth-dropdown"
							data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
							<li>
									<a href="http://123rankers.com/admin/profile"><i class="fa fa-user"></i><span>Profile</span></a>
								</li>
							<li><a href="http://123rankers.com/admin/change_pin"><i
									class="fa fa-lock"></i><span>Change Pin Number</span></a></li>
							<li><a href="http://123rankers.com/admin/change_password"><i
									class="fa fa-key"></i><span>Change Password</span></a></li>
							<li class="divider"></li>
							<li><a href="http://123rankers.com/master/logout"><i
									class="fa fa-power-off"></i><span>Log Out</span></a></li>
						</ul></li>
				</ul>
			</div>
		</nav> -->
		<!-- /Top Menu Items -->

		<!-- Left Sidebar Menu -->
		<!-- <div class="fixed-sidebar-left">
			<div class="slimScrollDiv"
				style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<ul class="nav navbar-nav side-nav nicescroll-bar"
					style="overflow: hidden; width: auto; height: 100%;">

					<li class="navigation-header"><span>Admin</span> <i
						class="zmdi zmdi-more"></i></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#creation_dr"><div
								class="pull-left">
								<i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Creation</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="creation_dr" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/creation/categories">Categories</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/creation/exam_types">Exam
									Types</a></li>
							<li><a href="http://123rankers.com/admin/creation/standards">Standards</a>
							</li>
							<li><a href="http://123rankers.com/admin/creation/subjects">Subjects</a>
							</li>
							<li><a href="http://123rankers.com/admin/creation/units">Units</a>
							</li>
							<li><a href="http://123rankers.com/admin/creation/chapters">Chapters</a>
							</li>
							<li><a href="http://123rankers.com/admin/creation/topics">Topics</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/creation/type_of_questions">Type
									of Questions</a></li>
							<li><a href="http://123rankers.com/admin/creation/years">Years</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/creation/characteristics">Characteristics</a>
							</li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#dashboard_dr"><div
								class="pull-left">
								<i class="fa fa-database mr-20"></i><span class="right-nav-text">Database</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="dashboard_dr" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/database/database_count">Database
									Count</a></li>
							<li><a
								href="http://123rankers.com/admin/database/by_parameters">By
									Parameters</a></li>
							<li><a href="http://123rankers.com/admin/database/by_date">By
									Date</a></li>
							<li><a
								href="http://123rankers.com/admin/database/by_previous_year">By
									Previous year</a></li>
							<li><a
								href="http://123rankers.com/admin/database/difficulty_level">Difficulty
									Level</a></li>
							<li><a
								href="http://123rankers.com/admin/database/deleted_questions">Deleted
									Questions</a></li>
						</ul></li> -->
					<!---<li>
						<a class="" href="javascript:void(0);" data-toggle="collapse" data-target="#layouts_dr"><div class="pull-left"><i class="fa fa-columns mr-20"></i><span class="right-nav-text">Layouts</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="layouts_dr" class="collapse collapse-level-1">
							<li>
								<a class="active-page" href="http://123rankers.com/admin/layouts/layout_1">Layout 1</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_2">Layout 2</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_3">Layout 3</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_4">Layout 4</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_5">Layout 5</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_6">Layout 6</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_7">Layout 7</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_8">Layout 8</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_9">Layout 9</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_10">Layout 10</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_11">Layout 11</a>
							</li>
							<li>
								<a href="http://123rankers.com/admin/layouts/layout_11">Layout 12</a>
							</li>
							
						</ul>
					</li>-->
					<!-- <li><a href="http://123rankers.com/admin/notifications"><div
								class="pull-left">
								<i class="fa fa-bullhorn mr-20"></i><span class="right-nav-text">Notifications</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a href="http://123rankers.com/admin/discussion_forum"><div
								class="pull-left">
								<i class="fa fa-comments mr-20"></i><span class="right-nav-text">Discussion
									Forum</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a href="http://123rankers.com/admin/exam_info"><div
								class="pull-left">
								<i class="fa fa-file-text-o mr-20"></i><span
									class="right-nav-text">Exam Info</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a href="http://123rankers.com/admin/feedbacks"><div
								class="pull-left">
								<i class="fa fa-comments mr-20"></i><span class="right-nav-text">Feedbacks</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#livezone_dr"><div
								class="pull-left">
								<i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Live
									Zone</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="livezone_dr" class="collapse collapse-level-1">
							<li><a href="http://123rankers.com/admin/live_zone/upcoming">Upcoming</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/live_zone/special_group">Special
									Group</a></li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#test_post_dr"><div
								class="pull-left">
								<i class="fa fa-sitemap mr-20"></i><span class="right-nav-text">Test
									Post</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="test_post_dr" class="collapse collapse-level-1">
							<li><a
								href="http://123rankers.com/admin/test_post/automatic">Test
									Post</a></li>
							<li><a
								href="http://123rankers.com/admin/test_post/history_all_posts">Test
									post History</a></li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#controlling_dr"><div
								class="pull-left">
								<i class="fa fa-anchor mr-20"></i><span class="right-nav-text">Parameters
									&amp; Papers Controlling</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="controlling_dr" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/controlling/mock_papers">Mock
									Papers</a></li>
							<li><a
								href="http://123rankers.com/admin/controlling/other_papers">Other
									Papers</a></li>
							<li><a
								href="http://123rankers.com/admin/controlling/mock_paper_full_syllubus">Mock
									Full Syllubus</a></li>
						</ul></li>
					<li><a href="http://123rankers.com/admin/payment_invoices"><div
								class="pull-left">
								<i class="fa fa-shopping-cart mr-20"></i><span
									class="right-nav-text">Payment Invoices</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#post_doubt_dr"><div
								class="pull-left">
								<i class="fa fa-question mr-20"></i><span class="right-nav-text">Post
									Doubt</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="post_doubt_dr" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/post_doubt/admin">Post
									Doubt - Admin</a></li>
							<li><a
								href="http://123rankers.com/admin/post_doubt/experts_logins">Post
									Doubt - Experts Logins</a></li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#post_doubt_expert_dr"><div
								class="pull-left">
								<i class="fa fa-question mr-20"></i><span class="right-nav-text">Post
									Doubt Expert</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="post_doubt_expert_dr" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/post_doubt_expert/fresh">Fresh</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/post_doubt_expert/on_going">On
									Going </a></li>
							<li><a
								href="http://123rankers.com/admin/post_doubt_expert/closed">Closed</a>
							</li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#products"><div
								class="pull-left">
								<i class="fa fa-th-large mr-20"></i><span class="right-nav-text">Products</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="products" class="collapse collapse-level-1">
							<li><a class="active-page"
								href="http://123rankers.com/admin/products/available">Available
									product licenses</a></li>
							<li><a href="http://123rankers.com/admin/products/create">Create
									product licenses </a></li>
							<li><a
								href="http://123rankers.com/admin/products/promotion_code">Promotion
									Code</a></li>
						</ul></li>
					<li><a class="" href="javascript:void(0);"
						data-toggle="collapse" data-target="#products_lock_unlock"><div
								class="pull-left">
								<i class="fa fa-lock mr-20"></i><span class="right-nav-text">Products
									Lick-Unlock</span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="products_lock_unlock" class="collapse collapse-level-1">
							<li><a
								href="http://123rankers.com/admin/products_lock_unlock/practice_zone">Practice
									Zone </a></li>
							<li><a
								href="http://123rankers.com/admin/products_lock_unlock/test_zone">Test
									Zone </a></li>
							<li><a
								href="http://123rankers.com/admin/products_lock_unlock/live_zone">Live
									Mocks </a></li>
							<li><a
								href="http://123rankers.com/admin/products_lock_unlock/challenge_zone">Challenge
									Zone </a></li>
							<li><a
								href="http://123rankers.com/admin/products_lock_unlock/learn_concepts">Learn
									Concepts</a></li>
						</ul></li>
					<li><a
						href="http://123rankers.com/admin/student_login_control"><div
								class="pull-left">
								<i class="fa fa-hand-pointer-o mr-20"></i><span
									class="right-nav-text">Student Login Control</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a href="http://123rankers.com/admin/refer_and_earn"><div
								class="pull-left">
								<i class="fa fa-hand-pointer-o mr-20"></i><span
									class="right-nav-text">Refer &amp; Earn</span>
							</div>
							<div class="clearfix"></div></a></li>
					<li><a href="javascript:void(0);" data-toggle="collapse"
						data-target="#reports"><div class="pull-left">
								<i class="fa fa-line-chart mr-20"></i><span
									class="right-nav-text">Reports </span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="reports" class="collapse collapse-level-1">
							<li><a
								href="http://123rankers.com/admin/reports/students_count">Students
									Count </a></li>
							<li><a
								href="http://123rankers.com/admin/reports/students_usage">Students
									Usage </a></li>
							<li><a
								href="http://123rankers.com/admin/reports/live_exam_report">
									Live Exam Report </a></li>
							<li><a href="http://123rankers.com/admin/reports/sing_up">Sign
									Up </a></li>
							<li><a href="http://123rankers.com/admin/reports/expiry">Expiry</a>
							</li>
							<li><a
								href="http://123rankers.com/admin/reports/status_till">Status
									Till</a></li>
							<li><a
								href="http://123rankers.com/admin/reports/customer_search">Customer
									Search</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" data-toggle="collapse"
						data-target="#study_zone_dr"><div class="pull-left">
								<i class="fa fa-book mr-20"></i><span class="right-nav-text">Study
									Zone </span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="study_zone_dr" class="collapse collapse-level-1">
							<li><a
								href="http://123rankers.com/admin/study_zone/input_videos">Input
									Videos </a></li>
							<li><a href="javascript:void(0);" data-toggle="collapse"
								data-target="#input_concept_dr">Input Concept
									<div class="pull-right">
										<i class="zmdi zmdi-caret-down"></i>
									</div>
									<div class="clearfix"></div>
							</a>
								<ul id="input_concept_dr" class="collapse collapse-level-2">
									<li><a
										href="http://123rankers.com/admin/study_zone/upload_file">Upload
											File </a></li>
									<li><a
										href="http://123rankers.com/admin/study_zone/using_editor">Using
											Editor </a></li>
								</ul></li>
							<li><a
								href="http://123rankers.com/admin/study_zone/created_topics">Created
									Topics </a></li>
							<li><a
								href="http://123rankers.com/admin/study_zone/create_topic">Create
									Topic </a></li>
						</ul></li>
					<li><a href="javascript:void(0);" data-toggle="collapse"
						data-target="#support_dr"><div class="pull-left">
								<i class="fa fa-headphones mr-20"></i><span
									class="right-nav-text">Support </span>
							</div>
							<div class="pull-right">
								<i class="zmdi zmdi-caret-down"></i>
							</div>
							<div class="clearfix"></div></a>
						<ul id="support_dr" class="collapse collapse-level-1">
							<li><a href="javascript:void(0);" data-toggle="collapse"
								data-target="#customer_support_dr">Customer Support
									<div class="pull-right">
										<i class="zmdi zmdi-caret-down"></i>
									</div>
									<div class="clearfix"></div>
							</a>
								<ul id="customer_support_dr" class="collapse collapse-level-2">
									<li><a
										href="http://123rankers.com/admin/support/customer_support_pending">Pending
									</a></li>
									<li><a
										href="http://123rankers.com/admin/support/customer_support_resolved">Resolved
									</a></li>
									<li><a
										href="http://123rankers.com/admin/support/customer_support_customer_details">Customer
											Details </a></li>
								</ul></li>
							<li><a href="javascript:void(0);" data-toggle="collapse"
								data-target="#user_manual_dr">User Manual
									<div class="pull-right">
										<i class="zmdi zmdi-caret-down"></i>
									</div>
									<div class="clearfix"></div>
							</a>
								<ul id="user_manual_dr" class="collapse collapse-level-2">
									<li><a
										href="http://123rankers.com/admin/support/user_manual_published">Published
									</a></li>
									<li><a
										href="http://123rankers.com/admin/support/user_manual_publish_new">Publish
											New </a></li>
								</ul></li>
							<li><a href="javascript:void(0);" data-toggle="collapse"
								data-target="#help_faqs_dr">Help &amp; FAQ's
									<div class="pull-right">
										<i class="zmdi zmdi-caret-down"></i>
									</div>
									<div class="clearfix"></div>
							</a>
								<ul id="help_faqs_dr" class="collapse collapse-level-2">
									<li><a
										href="http://123rankers.com/admin/support/help_faqs_published">Published
									</a></li>
									<li><a
										href="http://123rankers.com/admin/support/help_faqs_publish_new">Publish
											New </a></li>
								</ul></li>
							<li><a href="javascript:void(0);" data-toggle="collapse"
								data-target="#contact_us_dr">Contact Us
									<div class="pull-right">
										<i class="zmdi zmdi-caret-down"></i>
									</div>
									<div class="clearfix"></div>
							</a>
								<ul id="contact_us_dr" class="collapse collapse-level-2">
									<li><a
										href="http://123rankers.com/admin/support/contact_us_open_ticket">Open
											Ticket </a></li>
									<li><a
										href="http://123rankers.com/admin/support/contact_us_closed_ticket">Closed
											Ticket </a></li>
								</ul></li>
						</ul></li> -->
					<!-- <li>
						<a href="http://123rankers.com/admin/test_post"><div class="pull-left"><i class="fa fa-pencil mr-20"></i><span class="right-nav-text">Test Post</span></div><div class="clearfix"></div></a>
					</li> 
					<li>
						<a class="" href="javascript:void(0);" data-toggle="collapse" data-target="#admin_settings_dr"><div class="pull-left"><i class="fa fa-cogs mr-20"></i><span class="right-nav-text">Settings</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
						<ul id="admin_settings_dr" class="collapse collapse-level-1">
							<li>
								<a class="active-page" href="http://123rankers.com/admin/admin_settings/change_username">Change Username</a>
							</li>
							<li>
								<a  href="http://123rankers.com/admin/admin_settings/change_password">Change Password</a>
							</li>
							<li>
								<a  href="http://123rankers.com/admin/admin_settings/forgot_password">Forgot Password</a>
							</li>
						</ul>
					</li> 
				</ul>-->
				<div class="slimScrollBar"
					style="background: rgb(135, 135, 135); width: 4px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px; height: 447.184px;"></div>
				<div class="slimScrollRail"
					style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>
		</div>
		<!-- /Left Sidebar Menu -->
		<!-- Main Content -->
		<div class="page-wrapper" style="min-height: 290px;">
			<div class="container-fluid">

				<!-- Title -->
				<div class="row heading-bg"></div>
				<!-- /Title -->

				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark">
										<span class="main_heading_blue">Test Post</span><span
											class="main_heading_theme_color"> Manual</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
						<%-- 	<div class="row">
								<div class="col-sm-12 text-center mb-30">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp"
											class="btn btn-danger btn-outline fancy-button btn-0">Automatic</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/manual.jsp"
											class="btn btn-danger">Manual</a> <a
											href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year"
											class="btn btn-danger btn-outline fancy-button btn-0">Previous
											Year</a>
									</div>
								</div>
							</div> --%>
							<div class="row">
								<div class="col-sm-9 col-sm-offset-2">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group center">
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<span class="sky_blue1 bold font-21" id="categoryspan"></span> <i
															class="fa fa-arrow-right green"></i>
													</div>
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<span class="sky_blue1 bold font-21" id="examtype"></span> <i
															class="fa fa-arrow-right green"></i>
													</div>
												 	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
												 		<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98"  id="standard">
																
																</select>
													<!-- 	<span class="sky_blue1 bold font-21" id="standard-div">
															 </span> <i class="fa fa-arrow-right green"></i> -->
													</div> 
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<div class="btn-group bootstrap-select show-tick">
															<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id="zoneType">
																<option>--- Select Zone---</option>
																<option><%= AppConstants.TESTZONE %></option>
																<option><%= AppConstants.PRACTICEZONE %></option>
																<option><%= AppConstants.LIVEZONE %></option>
																<option><%= AppConstants.CHALLENGE %></option>
																
															</select>
														</div>
													</div>
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<div class="btn-group bootstrap-select show-tick">
															<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id="testType">
																<option>--- Select ---</option>
																<option><%= AppConstants.FULLSYALLBUSMOCK %></option>
																<option><%= AppConstants.SUBJECTWISE_MOCK %></option>
																<option><%= AppConstants.MOCKTEST %></option>
															</select>
														</div>
													</div>
													<!-- <div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<div class="btn-group bootstrap-select show-tick">
															<select multiple="" class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98">
																<option>--- Select ---</option>
																<option>Section/Special Group</option>
															</select>
														</div>
													</div> -->
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Test
															Name</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"
															 id = "testnames" placeholder ="Test Name here">
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">No. Of Questions 
															 </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="noofques">
														<input type="hidden" class="form-control"  id="catinp" value="">
														<input type="hidden" class="form-control"  id="examinp" value="">
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Total
															Marks</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="totalmarks">
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Time
														</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="time" placeholder="Enter Test Time">
													</div>
												</div>
											</div>
									<!-- 		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="table-wrap mt-10 mb-20">
													<div class="table-responsive">
														<table id="manualprev_tbl" class="table table-hover table-bordered mb-0">
															<thead>
																<tr>
																    <th>Standard</th>
																	<th>Subject</th>
																	<th>Questions type</th>
																	<th>No.of Questions</th>
																	<th>Marks/Questions</th>
																	<th>-Ve marks/Questions</th>
																</tr>
															</thead>
															<tbody id="manualprev_tbody">
																<tr>
																	<td>Physics</td>
																	<td>Single correct</td>
																	<td>5</td>
																	<td>4</td>
																	<td>-2</td>
																</tr>
																<tr>
																	<td>Physics</td>
																	<td>Multi correct</td>
																	<td>5</td>
																	<td>4</td>
																	<td>-2</td>
																</tr>
																<tr>
																	<td>Physics</td>
																	<td>Passage</td>
																	<td>5</td>
																	<td>4</td>
																	<td>-2</td>
																</tr>
																<tr>
																	<td>Chemistry</td>
																	<td>Section - 2</td>
																	<td>5</td>
																	<td>4</td>
																	<td>-2</td>
																</tr>
																<tr>
																	<td>Maths</td>
																	<td>Section - 3</td>
																	<td>5</td>
																	<td>4</td>
																	<td>-2</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div> -->
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
                                                      <div class="row form-group">                                            
                                                      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
                                                       <label class="control-label" for="example-email">Unique features of the test </label>                                           
                                                        </div>                                            
                                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                         
                                                           <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
                                                            <input type="text" class="form-control" id="uniquefeatures"> </div>                                       
                                                             </div>                                  
                                                               </div>                                   
                                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                      
                                                                  <div class="row form-group">                                           
                                                                   <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
                                                                     <label class="control-label" for="example-email">Paper Designed by</label>                                          
                                                                       </div>                                            
                                                                       <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                           
                                                                        <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                              
                                                       <input type="text" class="form-control" id="paperdesigned"> </div>                                     
                                                       </div>                                   
                                                                        </div>                                   
                                                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                    
                                           <div class="row form-group">                                         
                                   <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
                                  <label class="control-label" for="example-email">Paper Designed by -Photo</label>                                          
                                              </div>                                            
                                           <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                          
                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                             
                            <div class="form-group mb-5">                                                    
                                  <div class="fileinput fileinput-new input-group" data-provides="fileinput">                                                       
                                          <div class="form-control" data-trigger="fileinput"> 
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>                                                        <input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a>
                                               </div>                                               
                                                        </div>                                         
                                                           </div>                                       
                                                            </div>                                    
                                                                      </div>                                   
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                       
                               <div class="row form-group">                                           
                             <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
                                 <label class="control-label" for="example-email">Cut of Marks</label>                                          
                                               </div>                                          
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                          
       <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
        <input type="text" class="form-control" id="cutoff"> </div>                                       
         </div>                                    
         </div>                                    
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
         <!--  <div class="row form-group">                                            
         <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
          <label class="control-label" for="example-email">*Subject Name</label>                                            
          </div>                                            
          <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                           
           <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
            <input type="text" class="form-control" value="Mathematics"> 
            </div>                                       
             </div> -->  
             
             
             
               <div class="row form-group">                                            
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
         <label class="control-label" for="example-email">Level</label>                                            
         </div>                                            
         <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                           
          <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
           <input type="text" class="form-control" id="level"> 
           </div>                                       
            </div> 
             

											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Active
															Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker" name="example-email" class="form-control"/>
															<!-- <select class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id ="datepicker">
																<option>--- Select ---</option>
																<option>10-4-2017</option>
																<option>11-4-2017</option>
															</select> -->
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Active Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="z-index:1;">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker1" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Expiry
															Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker1" name="example-email" class="form-control"/>
															<!-- <select class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id="datepicker1">
																<option>--- Select ---</option>
																<option>Online</option>
																<option>offline</option>
															</select> -->
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Expiry Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="z-index:1;">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker2" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
										</div>
										
			  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                       
                       	  <div class="row form-group">    
                       	  
                        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
      	                    <label class="control-label" for="example-email">Lock this Test</label>                                          
      	                      </div>                                          
      	                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                          
      	                          <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                             
      	                             <div class="row radio radio-info">                                                   
      	                              <div class="col-sm-2">                                                      
      	                                <input type="radio" name="radio1" id="radio1" value="true" >                           
      	                                                             <label for="radio1"> Yes </label>                                    
      	                                                                             </div>                                             
      	                                              <div class="col-sm-2">                     
      	                                                                                                                      
      	                               <input type="radio" name="radio1" id="radio1" value="false">                                                       
      	                                <label for="radio1"> No </label>                                                  
      	                                  </div>                                               
      	                                   </div>                                          
      	                                     </div>                                       
      	                                      </div>                                  
      	                                        </div>         
                       																	                                                         	                                        							
										                                      
									<!--  <div class="row">
											<div class="col-sm-12 mt-20">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<div class="main_heading_blue">Syllabus:</div>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="main_heading_blue"><span class="sky_blue1 bold font-21"  id="standards"></span></div>
												<div class="panel panel-default card-view">
													<div class="panel-wrapper collapse in">
														<div class="panel-body">
															<div class="panel-group accordion-struct" role="tablist"
																aria-multiselectable="true" id="accord-main">
																 <div class="panel panel-default">
																	<div class="panel-heading activestate" role="tab"
																		id="heading_5">
																		<a role="button" data-toggle="collapse"
																			href="#collapse_5" aria-expanded="true"><i
																			class="fa fa-plus-circle fa-lg"></i> Physics</a>
																	</div>
																	<div id="collapse_5" class="panel-collapse collapse in"
																		role="tabpanel">
																		<div class="panel-body pa-15">
																			<div class="row">
																				<div class="col-sm-12 col-xs-12">Chapter - 1</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 2</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 3</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="panel panel-default">
																	<div class="panel-heading" role="tab" id="heading_6">
																		<a class="collapsed" role="button"
																			data-toggle="collapse" href="#collapse_6"
																			aria-expanded="false"><i
																			class="fa fa-plus-circle fa-lg"></i> Chemistry </a>
																	</div>
																	<div id="collapse_6" class="panel-collapse collapse"
																		role="tabpanel">
																		<div class="panel-body pa-15">
																			<div class="row">
																				<div class="col-sm-12 col-xs-12">Chapter - 1</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 2</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 3</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="panel panel-default">
																	<div class="panel-heading" role="tab" id="heading_7">
																		<a class="collapsed" role="button"
																			data-toggle="collapse" href="#collapse_7"
																			aria-expanded="false"><i
																			class="fa fa-plus-circle fa-lg"></i> Maths</a>
																	</div>
																	<div id="collapse_7" class="panel-collapse collapse"
																		role="tabpanel">
																		<div class="panel-body pa-15">
																			<div class="row">
																				<div class="col-sm-12 col-xs-12">Chapter - 1</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 2</div>
																				<div class="col-sm-12 col-xs-12">Chapter - 3</div>
																			</div>
																		</div>
																	</div>
																</div> 
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>-->
										
										
										
										<div class="row mb-30">
											<div class="col-md-7 col-md-offset-3">
												<div class="button-list mt-25">
													<a id="manual_preview_back" class="btn  btn-warning">Back</a> 
											<a id="preview_automatic" class="btn  btn-primary" onclick="testPostStpThree();" >Preview</a>  
														<!-- <a class="btn  btn-primary" onclick="testPostStpThree();" >Preview</a>  -->
													
												<!--  <a class="btn  btn-danger" onclick="testPostStpThreelater();" >Post Later</a>  -->
														
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /Row -->

				<!-- Footer -->
				<!-- <footer class="footer container-fluid pl-30 pr-30">
					<div class="row">
						<div class="col-sm-6">
							<p>2018 © Zomant, All rights reserved.</p>
						</div>
						<div class="col-sm-6"></div>
					</div>
				</footer> -->
				<!-- /Footer -->

			</div>
		</div>
			   <%@include file="/jsp/master/footer.jsp" %>
		<!-- /Main Content -->
	</div>
	
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
           <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	       <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>

	   <!-- <script>
	    $(document).ready(function() {  		
		$("#datepicker, #datepicker1" ).datepicker({dateFormat:'dd-mm-yy'});
		$("#timepicker, #timepicker1" ).timepicker();
	    });
	    </script> -->
	     <script type="text/javascript">
          $('#timepicker1').timepicker();
          $('#timepicker2').timepicker();
        </script>
	    
	    <script>
	   
	    
	    $(document).ready(function(){
	    
	    	 	    	$("#datepicker, #datepicker1" ).datepicker({dateFormat:'dd-mm-yy'});
			//$("#timepicker, #timepicker1" ).timepicker();
	
			 var testpostid=getParameterByName('id');
	    	var inputData ={
	    			"testPostId":testpostid
	    	};
	    	inputData = JSON.stringify(inputData);
	    	var appenddata;
	    	var accorddata="";
	    	
	    	$.ajax({
	    		url:  base_url+'rest/testpost/getTestPost',
	    		type:"POST",
	    		 dataType: "json",
	    		  contentType: 'application/json',
	    		  data:inputData,
	    		  success: function(data){
	    			  
	    			  $("#loading").hide();
	    			  var questions = data.testPostDetails;
	    			  $("#categoryspan").html(data.category);
	    			  $("#catinp").val(data.category);
	    			  $("#examinp").val(data.examtype);
	    			  getStandards();
			    	   $("#examtype").html(data.examtype);
			    	   //$("#standard").val();
			    	   $("#noofques").val(data.numberOfQuestions);
			    	   $("#totalmarks").val(data.totalMarks);
			    	 //  $("#standard").html(questions[0].standard);
			    	  var standArray=[];
			    	  
			    	 /* for(i=0;i<questions.length; i++){
			    	  if(!standArray.includes(questions[i].standard))
	    		    				 {
	    		    				
		    		    			 standArray.push(questions[i].standard );

	    		    				 }else{
	    		    					 console.log("Standard already exists "+questions[i].standard)
	    		    					 
	    		    				 }
			    	  }
			    	  var stda = standArray.join(" ");
			    	  $("#standard").val(stda);*/
			    	 
	    				   /* for(var i=0; i < data.numberOfQuestions.length; i++){ */
	    					   
	    					 /*   var questions = data.testPostDetails;
	    					   $("#categoryname").html(data.category);
	    			    	   $("#examtypename").html(data.examtype);
	    		    			 var standArray=[];
	    		    			  $("#noofques").val(data.numberOfQuestions);
	    		    		  for (var j = 0; j < questions.length; j++){
	    		    			 
	    		    			  appenddata += "<tr><td>"+questions[j].standard+"</td>";
	    		    			  appenddata += "<td>"+questions[j].subject+"</td>";
	    		    			  appenddata += "<td>"+questions[j].typeOfQuestion+"</td>";
	    		    			  appenddata += "<td>"+questions[j].numberOfQuestions+"</td>";
	    		    		
	    		    			  appenddata += "<td>"+questions[j].marks+"</td>";
	    		    			  appenddata += "<td>"+questions[j].negativeMarks+"</td></tr>";
	    		    			  
	    		    			
	    		    			  $("#totalmarks").val(questions[j].marks);
	    		    			  
	    		    			 if(!standArray.includes(questions[j].standard))
	    		    				 {
	    		    				 if(j >= 1 ){
	    		    					 standArray.push("&");
	    		    					 }
	    		    				 
		    		    			 standArray.push(questions[j].standard );

	    		    				 }else{
	    		    					 console.log("Standard already exists "+questions[j].standard)
	    		    					 
	    		    				 }
	    		    			 
	    		    			  
	    			    	//	appenddata += "<td>CH  "+j+"</td>";
								if(j == 0){
									accorddata += '<div class="panel panel-default"><div class="panel-heading activestate" role="tab" id="heading_5"><a role="button" data-toggle="collapse" href="#collapse_5" aria-expanded="true"><iclass="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_5" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row">';
								}else{
									accorddata += '<div class="panel panel-default"><div class="panel-heading" role="tab" id="heading_5"><a role="button" data-toggle="collapse" href="#collapse_5" aria-expanded="true"><iclass="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_5" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row">';
								}
	    		    			 
	    		    			 
	    		    			var testchapters = questions[j].chapters
	    		    			for(var k = 0; k < testchapters.length; k++){
	    		    				
	    		    				accorddata += '<div class="col-sm-12 col-xs-12">'+testchapters[k]+'</div>';
	    		    			}
	    		    			 
	    		    			 accorddata += "</div></div></div></div>";
	    		    			   */
	    		    			 /*  appenddata += "<td>TYPE OF QUESTIONS "+j+"</td>";
	    		    			  appenddata += "<td>ID "+j+"</td>";
	    		    			 */
	    		    		  
	    				//  }	
	    		    	   
	    	    		  
	    			  /* } */	
	    			  
	    			  	 /*  $("#standards").html(standArray);

	    				   $("#manualprev_tbody").empty();
	    				   $("#manualprev_tbody").append(appenddata);
	    				   $("#manualprev_tbl").DataTable();
	    				   
	    				   $("#accord-main").empty();
	    				   $("#accord-main").append(accorddata);
	    				    */
	    			 /*   $("#manual_post_body").empty();
	    			  $("#manual_post_body").append(appenddata);
	    			  $("#manual_post_Table").DataTable(); */
	    		  },
	    			 error: function(data){
	    				 alert(data.responseJSON.errorMessage);
	    			 }
	    		 	
	    		 });

	    	
	    	
	    	
	    });
	    
	    </script>