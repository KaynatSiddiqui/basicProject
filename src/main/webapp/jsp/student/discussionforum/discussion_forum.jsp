	
	<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
<style>
.discussionbg{
	background: #fff;
	border: 2px solid #fff;
}
li > * {
    display: inline;
   
}
</style>
	<!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view discussionbg">
						<div class="panel-heading">
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Discussion </span><span class="main_heading_theme_color"> Forum</span></h6>
							</div>
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="row mb-20">
							<div class="col-sm-12">
								<div class="button-list">
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum.jsp" class="btn btn-danger">All</a>
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum_saved.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Saved Threads</a>
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum_post_new.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Post Your Question </a>
								</div>
							</div>
						</div>
						<div class="panel-body pa-0">
							<div class="chat-cmplt-wrap chat-for-widgets-1">
								<div class="chat-box-wrap">
									<div>
										<div class="chatapp-nicescroll-bar">
											<ul class="chat-list-wrap">
												<li class="chat-list">
													<div class="chat-body">
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Giri. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Lohitha. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Haritha. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Ram. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Venkat. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">giri. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Hari. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Gopi. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Ram. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
														<a  href="javascript:void(0)">
															<div class="chat-data">
																<div class="pull-left mr-20">Ravi. </div>
																<div class="user-data">
																	<span class="name block capitalize-font">How to write exam in Zomant?</span>
																	<span class="time block truncate txt-grey">On: 01-Apr-2018, 2:20 PM</span>
																</div>
																<div class="clearfix"></div>
															</div>
														</a>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="recent-chat-box-wrap">
									<div class="recent-chat-wrap">
										<div class="panel-wrapper collapse in">
											<div class="panel-body pa-0">
												<div class="chat-content">
													<ul class="chatapp-chat-nicescroll-bar pt-20">
														<li class="friend">
															<div class="friend-msg-wrap">
																<div class="pull-left mr-20">Giri</div>
																<div class="msg pull-left">
																	<p>Hello Jason, how are you, it's been a long time since we last met?</p>
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">01-Apr-2048, 2:30 PM</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="self mb-10">
															<div class="self-msg-wrap">
																<div class="pull-right ml-20">Lohitha</div>
																<div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">2:31 pm</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="self mb-10">
															<div class="self-msg-wrap">
																<div class="pull-right ml-20">Haritha</div>
																<div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">2:31 pm</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="friend">
															<div class="friend-msg-wrap">
																<div class="pull-left mr-20">Giri</div>
																<div class="msg pull-left">
																	<p>Hello Jason, how are you, it's been a long time since we last met?</p>
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">01-Apr-2048, 2:30 PM</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="self mb-10">
															<div class="self-msg-wrap">
																<div class="pull-right ml-20">Venkat</div>
																<div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">2:31 pm</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="friend">
															<div class="friend-msg-wrap">
																<div class="pull-left mr-20">Giri</div>
																<div class="msg pull-left">
																	<p>Hello Jason, how are you, it's been a long time since we last met?</p>
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">01-Apr-2048, 2:30 PM</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
														<li class="self mb-10">
															<div class="self-msg-wrap">
																<div class="pull-right ml-20">Ram</div>
																<div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
																	<div class="msg-per-detail text-right">
																		<span class="msg-time txt-grey">2:31 pm</span>
																	</div>
																</div>
																<div class="clearfix"></div>
															</div>	
														</li>
													</ul>
												</div>
												<hr class="light-grey-hr mb-10">
												<div class="input-group">
													<div class="col-sm-10">
														<input type="text" id="input_msg_send_chatapp" name="send-msg" class="input-msg-send form-control" placeholder="Type something">
													</div>
													<div class="col-sm-2">
														<a class="btn btn-success">Submit</a>
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
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>