<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  />
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
					
				</div>
				<!-- /Title -->
				<div>
				<p>You name : <span id="nme"></span> student</p>
				<p>You city : <span id="cty"></span> </p>
				<p>You state: <span id="sts"></span> </p>
				<p>student id: <span id="stdid"></span> </p>
				</div>
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading mb-20">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="dashboard_heading">Dashboard</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-3">
										<div class="student_dashboard">
											<span class="student_dashboard_text">Online <br/>Students</span>
											<span class="student_dashboard_text_big">2099</span>
										</div>
									</div>
									<div class="col-sm-8">										
										<div class="row mb-5">
											<div class="row student_dashboard_latest_exams_results_div">
												<div class="col-sm-2">
													<div class="student_dashboard_latest_exams_results">
														Latest Exam <br/> Results
													</div>
												</div>
												<div class="col-sm-2">
													<span class="dashboard_rank_text">RANK</span><span class="text-danger bold">: 15/500</span>
												</div>
												<div class="col-sm-2">
													<span class="dashboard_rank_text">Score</span><span class="text-danger bold">: 252/360</span>
												</div>
												<div class="col-sm-2">
													<span class="dashboard_rank_text">-Ve Marks</span><span class="text-danger bold">: -30</span>
												</div>
												<div class="col-sm-2">
													<span class="dashboard_rank_text">Accuracy</span><span class="text-danger bold">: 75%</span>
												</div>
												<div class="col-sm-2">
													<span class="dashboard_rank_text">Qns/Hr</span><span class="text-danger bold">: 50</span>
												</div>
											</div>
										</div>
										
										<div class="row mb-5">
											<div class="row student_dashboard_latest_exams_results_div">
												<div class="col-sm-2">
													<div class="student_dashboard_latest_exams_upcoming">
														Upcoming <br/> Live Exams
													</div>
												</div>
												<div class="col-sm-4">
													<span class="dashboard_rank_text">Exam Name</span><span class="text-danger bold" id="liveExamName">: </span>
												</div>
												<div class="col-sm-3">
													<div><span class="dashboard_rank_text">Date</span><span class="text-danger bold" id="liveExamDate">: </span></div>
													<div><span class="dashboard_rank_text">Time</span><span class="text-danger bold" id="liveExamTime">: </span></div>
												</div>
												<div class="col-sm-3">
													<div><span class="dashboard_rank_text">Expiry Date</span><span class="text-danger bold" id="liveExamExpiry">: </span></div>
													<div><span class="dashboard_rank_text">Time</span><span class="text-danger bold" id="liveExamExpiryTime">: </span></div>
												</div>
											</div>
										</div>
										
										<div class="row mb-5">
											<div class="row student_dashboard_latest_exams_results_div">
												<div class="col-sm-2">
													<div class="student_dashboard_latest_exams_notifications">
														Latest <br/> Notification
													</div>
												</div>
												<div class="col-sm-10">
													<marquee behavior="scroll" direction="up" scrollamount="2" >
														<ul id="ntfScroll">
															<!-- <li><a href="#">Notification title 1 here</a><li>
															<li><a href="#">Notification title 2 here</a><li> -->
														</ul>
													</marquee>
												</div>
											</div>
										</div>
										
										<div class="row mb-5">
											<div class="row student_dashboard_latest_exams_results_div">
												<div class="col-sm-2">
													<div class="student_dashboard_latest_exams_posted">
														Latest Test's <br/> Posted
													</div>
												</div>
												<div class="col-sm-10">
													<marquee behavior="scroll" direction="up" scrollamount="2">
														<ul>
															<li><a href="#">Test title 1 here</a><li>
															<li><a href="#">Test title 2 here</a><li>
														</ul>
													</marquee>
												</div>
											</div>
										</div>
										
									</div>
								</div>
								
								<div class="row mt-10 obliviate">
									<div class="col-sm-3 col-sm-offset-3">
										<span class="bold font-16">No.of own Test in Practice Zone:<span class="text-danger">50</span></span>
									</div>
									<div class="col-sm-3">
										<span class="bold font-16">No.of Test Taken in Test Zone:<span class="text-danger">150</span></span>
									</div>
									<div class="col-sm-3">
										<span class="bold font-16">No.of Live Test taken:<span class="text-danger">40</span></span>
									</div>
								</div>
								
								<div class="row mt-10 obliviate">
									<div class="col-sm-3 col-sm-offset-3">
										<a href="#" class="btn btn-danger btn-rounded">MAINS </a>
									</div>
									<div class="col-sm-3">
										<a href="#" class="btn btn-danger btn-rounded">Advanced </a>
									</div>
									<div class="col-sm-3">
										<a href="#" class="btn btn-danger btn-rounded">BITSAT </a>
									</div>
								</div>
								
								<div class="row mt-10 obliviate">
									<div class="col-sm-3">
										<span class="purple bold font-18">Status</span>
									</div>
								</div>
								
								<div class="row mt-10 obliviate">
									<div class="col-sm-3">
										<div class="row">
											<div class="col-sm-4 center">
												<div class="total_viewed_qns">
													<span class="bold font-12">Total <br/>Viewed Qns.</span><br/>
													<span class="bold font-16">2099</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="attempted_qns">
													<span class="bold font-12">Attempted</span><br/>
													<span class="bold font-20">3000</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="correct_qns">
													<span class="bold font-12">Correct</span><br/>
													<span class="bold font-16">1500</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 ">
										<div class="row">
											<div class="col-sm-4 center">
												<div class="dashboard_percentage">
													<span class="bold font-12">Percentage</span><br/>
													<span class="bold font-16">65%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_accuracy">
													<span class="bold font-12">Accuracy</span><br/>
													<span class="bold font-20">40%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_speed">
													<span class="bold font-12">Speed</span><br/>
													<span class="bold font-16">55</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 ">
										<div class="row">
											<div class="col-sm-4 center">
												<div class="dashboard_percentage">
													<span class="bold font-12">Percentage</span><br/>
													<span class="bold font-16">65%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_accuracy">
													<span class="bold font-12">Accuracy</span><br/>
													<span class="bold font-20">40%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_speed">
													<span class="bold font-12">Speed</span><br/>
													<span class="bold font-16">55</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 ">
										<div class="row">
											<div class="col-sm-4 center">
												<div class="dashboard_percentage">
													<span class="bold font-12">Percentage</span><br/>
													<span class="bold font-16">65%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_accuracy">
													<span class="bold font-12">Accuracy</span><br/>
													<span class="bold font-20">40%</span>
												</div>
											</div>
											<div class="col-sm-4 center">
												<div class="dashboard_speed">
													<span class="bold font-12">Speed</span><br/>
													<span class="bold font-16">55</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-40 obliviate">
									<div class="col-sm-3">
										<div class="live_zone_performance">Live Zone: Performance</div>
									</div>
								</div>
								
								<div class="row mt-5 obliviate">
									<div class="col-sm-12">
										<div  class="tab-struct custom-tab-1">
											<ul role="tablist" class="nav nav-tabs center_float3 sky_blue_tabs" id="myTabs_7">
												<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">MAINS</a></li>
												<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Advanced</a></li>
												<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">BITSAT</a></li>
											</ul>
											<div class="tab-content" id="myTabContent_7">
												<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
													<div>
														<div class="row student_dashboard_tabs_content mb-40">
															<div class="row mb-30">
																<div class="col-sm-12">
																	<div id="morris_line_chart" class="morris-chart"></div>
																</div>
															</div>
															<div class="row mt-20">
																<div class="col-sm-6">
																	<div class="row mt-20">
																		<div class="col-sm-4 col-sm-offset-2 mb-15 text-center">
																			<span class="btn btn-success btn-outline btn-rounded">Best Rank <br />(Full syllabus) <br /> <span class="bold font-24">32</span></span>
																		</div>
																		<div class="col-sm-4 mb-15 text-center">
																			<span class="btn btn-danger btn-outline btn-rounded">Best Rank <br />(Full MOCK) <br /> <span class="bold font-24">15</span></span>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																			<span class="btn btn-info btn-outline btn-rounded">Qualified <br />Test <br /> <span class="bold font-24">11</span></span>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6">
																	<div class="row mt-20">
																		<div class="col-sm-4 mb-15 text-center">
																			<span id="pie_chart_1" class="easypiechart" data-percent="86">
																				<span class="percent head-font">86</span>
																			</span>
																			<div class="bold text-success">Easy</div>
																		</div>
																		<div class="col-sm-4 mb-15 text-center">
																			<span id="pie_chart_4" class="easypiechart" data-percent="90">
																				<span class="percent head-font">90</span>
																			</span>
																			<div class="bold text-danger">Over All</div>
																		</div>
																		<div class="col-sm-4 mb-15 text-center">
																			<span id="pie_chart_3" class="easypiechart" data-percent="90">
																				<span class="percent head-font">90</span>
																			</span>
																			<div class="bold text-primary">Hard</div>
																		</div>
																		<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																			<span id="pie_chart_2" class="easypiechart" data-percent="46">
																				<span class="percent head-font">46</span>
																			</span>
																			<div class="bold text-warning">Medium</div>
																		</div>
																		
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div  id="Tab_2" class="tab-pane fade" role="tabpanel">
													<div>
														<div class="row einstein_analytics_summery_livezone_div mb-40">
															<div class="col-sm-6">
																<div class="row mt-20">
																	<div class="col-sm-4 col-sm-offset-2 mb-15 text-center">
																		<span class="btn btn-success btn-outline btn-rounded">Best Rank <br />(Full syllabus) <br /> <span class="bold font-24">32</span></span>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span class="btn btn-danger btn-outline btn-rounded">Best Rank <br />(Full MOCK) <br /> <span class="bold font-24">15</span></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																		<span class="btn btn-info btn-outline btn-rounded">Qualified <br />Test <br /> <span class="bold font-24">11</span></span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6">
																<div class="row mt-20">
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_1" class="easypiechart" data-percent="86">
																			<span class="percent head-font">86</span>
																		</span>
																		<div class="bold text-success">Easy</div>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_4" class="easypiechart" data-percent="90">
																			<span class="percent head-font">90</span>
																		</span>
																		<div class="bold text-danger">Over All</div>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_3" class="easypiechart" data-percent="90">
																			<span class="percent head-font">90</span>
																		</span>
																		<div class="bold text-primary">Hard</div>
																	</div>
																	<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																		<span id="pie_chart_2" class="easypiechart" data-percent="46">
																			<span class="percent head-font">46</span>
																		</span>
																		<div class="bold text-warning">Medium</div>
																	</div>
																	
																</div>
															</div>
														</div>
													</div>
												</div>
												<div  id="Tab_3" class="tab-pane fade" role="tabpanel">
													<div>
														<div class="row einstein_analytics_summery_livezone_div mb-40">
															<div class="col-sm-6">
																<div class="row mt-20">
																	<div class="col-sm-4 col-sm-offset-2 mb-15 text-center">
																		<span class="btn btn-success btn-outline btn-rounded">Best Rank <br />(Full syllabus) <br /> <span class="bold font-24">32</span></span>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span class="btn btn-danger btn-outline btn-rounded">Best Rank <br />(Full MOCK) <br /> <span class="bold font-24">15</span></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																		<span class="btn btn-info btn-outline btn-rounded">Qualified <br />Test <br /> <span class="bold font-24">11</span></span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6">
																<div class="row mt-20">
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_1" class="easypiechart" data-percent="86">
																			<span class="percent head-font">86</span>
																		</span>
																		<div class="bold text-success">Easy</div>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_4" class="easypiechart" data-percent="90">
																			<span class="percent head-font">90</span>
																		</span>
																		<div class="bold text-danger">Over All</div>
																	</div>
																	<div class="col-sm-4 mb-15 text-center">
																		<span id="pie_chart_3" class="easypiechart" data-percent="90">
																			<span class="percent head-font">90</span>
																		</span>
																		<div class="bold text-primary">Hard</div>
																	</div>
																	<div class="col-sm-4 col-sm-offset-4 mb-15 text-center">
																		<span id="pie_chart_2" class="easypiechart" data-percent="46">
																			<span class="percent head-font">46</span>
																		</span>
																		<div class="bold text-warning">Medium</div>
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
								<div class="row mt-40 obliviate">
									<div class="col-sm-3">
										<div class="test_and_live_zone">Test & Live Zone</div>
									</div>
								</div>
								
								<div class="row mt-10 obliviate">
									<div class="col-sm-12">
										<div class="table-wrap">
											<div class="table-responsive">
												<table id="" class="table table-bordered display pb-30" >
													<thead class="th_background">
														<tr>
															<th class="center">Subject</th>
															<th class="center">Average Percentage %</th>
															<th class="center">Average Accuracy %</th>
															<th class="center">Average Speed (Qns/hr)</th>
														</tr>
													</thead>
													<tbody>
														<tr class="center">
															<td>Physics</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														<tr class="center">
															<td>Chemistry</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														<tr class="center">
															<td>Maths</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														<tr class="center">
															<td class="bold font-14">Overall</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-40 obliviate">
									<div class="col-sm-3">
										<div class="monthwise_test">Monthwise Test & Live Zone</div>
									</div>
								</div>
								 
								<div class="row mt-10 obliviate">
									<div class="col-sm-12">
										<div class="table-wrap">
											<div class="table-responsive">
												<table id="" class="table table-bordered display pb-30" >
													<thead class="th_background">
														<tr>
															<th class="center">Month</th>
															<th class="center">Percentage</th>
															<th class="center">Accuracy</th>
															<th class="center">Speed</th>
														</tr>
													</thead>
													<tbody>
														<tr class="center">
															<td>Jan-2018</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														<tr class="center">
															<td>Feb-2018</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
														<tr class="center">
															<td>Mar-2018</td>
															<td>20%</td>
															<td>33%</td>
															<td>55</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				
				
			<!-- /Row -->
			   <div class="modal fade" id="categoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="top:60px;">
				
				<div class="modal-body">
					<form>
						<div class="row mt-30">
							<div class="col-md-12 form-group">
								<div class="col-md-2">
									<label class="control-label mb-5 bold">Category</label>
								</div>
								<div class="col-md-1">:</div>
								<div class="col-md-9">
									<select class="selectpicker" id="category" data-style="form-control btn-default btn-outline">
										<!-- <option>--- Select Category---</option>
										<option>Category 1</option>
										<option>Category 2</option> -->
									</select>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="" type="button" class="btn btn-primary" onclick="changecategory()" data-dismiss="modal">Change</a>
					<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
					</div>
			</div>
		</div>
	</div>
			</div>
			 <%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	
	<!-- <script>
	if (typeof (Storage) !== "undefined") {
		// Retrieve
		var loggedInCheck = sessionStorage.getItem("loggedIn");
		var loggedId = sessionStorage.getItem("stdid");
		var loggedname = sessionStorage.getItem("stdname");
		var loggedcity = sessionStorage.getItem("stdcity");
		var loggedstate = sessionStorage.getItem("stdstate");
		
		
	
		if (loggedId) {
			//window.location = base_url + 'jsp/student/student module/dashboard.jsp';}
		} else {
		document.getElementsByClassName("errormsg").innerHTML = "Sorry, your browser does not support Web Storage... Please upgrade your browser";
		}
	}

	</script> -->
	<script>
	 $(document).ready(function(){
		 var loginData = getLoginData();
		 $("#nme").html(loginData.name);
		 $("#cty").html(loginData.city);
		 $("#sts").html(loginData.state);
		 $("#stdid").html(loginData.studentid);
		 getUpcomingLiveExams();
		 getNotificationsAtDashboard();
		 getCatid();
	 });
</script>