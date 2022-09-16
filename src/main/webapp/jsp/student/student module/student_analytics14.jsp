
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  /><%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
.prple{
position: relative;
   /*  bottom: 10px; */
    color: #A349A4;
    padding-left: 20px;
}
.prples{
position: relative;
   /*  bottom: 10px; */
    color: #999;
    /* padding-left: 20px; */
    vertical-align:middle;
    padding-left: 20px;
}
.imgstyle{
height:30px;
widht:30px;
 vertical-align:middle;
}

.imgstyle-2{
height:50px;
widht:30px;
 vertical-align:middle;
}
.pple{
position: relative;
   /*  bottom: 10px; */
    color: #fff;
    /* padding-left: 20px; */
    vertical-align:middle;
    padding-left: 20px;
}
.score{
padding-top:30px;
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
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
							<div class="row mb-0">
								<div class="col-sm-3  col-sm-offset-9">
									<span class="sky_blue1 font-12">Test Name :</span><br/>
									<span class="sky_blue1 font-12">Test type :</span><br/>
									<span class="sky_blue1 font-12">Date :</span>
								</div>
							</div>
							<div class="row mb-20">
								<div class="col-sm-12 center">
									<div class="btn-group mt-15 mr-10">
										<a href="#" class="btn btn-students_analytics active btn-outline">Summary</a>
										<a href="#" class="btn btn-students_analytics btn-outline">Deep Analytics</a>
										<a href="#" class="btn btn-students_analytics btn-outline">Toppers</a>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="row mt-20">
									<div class="col-sm-2 col-sm-offset-2">
										<div class="center">
											<span class="students_analytics_summery_green bm-10 mt-10">AIR</span>
											<div class="students_analytics_summery_air_div">
												N/A
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-sm-offset-1">
										<div class="center">
											<span class="students_analytics_summery_state_rank bm-10 mt-10">State Rank</span>
											<div class="students_analytics_summery_state_rank_div">
												N/A
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-sm-offset-1">
										<div class="center">
											<span class="students_analytics_summery_city_rank bm-10 mt-10">City Rank</span>
											<div class="students_analytics_summery_city_rank_div">
												N/A
											</div>
										</div>
									</div>
								</div>
								<div class="row mt-40 mb-30">
									<div class="col-sm-8 col-sm-offset-2">
										<div  class="panel-body">
											<span class="font-12 head-font txt-dark bold">Cutoff : <span class="text_time_taken font-16" id="cutoff"></span> <span class="pull-right bold">Your Marks: <span class=" sky_blue1 font-16"><span id="omarks"></span>/<span id="totalm"></span></span></span></span>
											<div class="progress progress-lg mt-10">
												<div class="progress-bar progress-bar-success" style="width: 75%;" role="progressbar" id="pgbar"></div>
											</div>
											<span class="font-12 head-font txt-dark bold">No.of Students Qualified: <span class="text_negative_score font-16">N/A</span><span class="pull-right bold font-16 text-success">N/A</span></span>
										</div>
									</div>
								</div>
								<br />
								<div class="row mt-20 mb-30">
									<div class="col-sm-4 col-sm-offset-2">
										<div class="panel panel-success card_view_performance">
											<div class="card_view_performance_heading">
												<div class="center">
													<%-- <h6 class="panel-title txt-light"><!-- <i class="fa fa-bar-chart rounded_icon_white"></i> --> <img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-analyzing-skill-50.png" alt="logo" width: "40px"; height: "32px;"> Performance</h6> --%>
													<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-analyzing-skill-50.png" alt="logo" class="imgstyle-2"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="pple">Performance </span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 score">
														<div  class="col-sm-6">
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prple"> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!--  <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>-->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-minus-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> -Ve marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-target-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Accuracy </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-percentage-50.png" alt="logo"class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-racism-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-running-rabbit-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Speed </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4 col-sm-offset-1">
										<div class="panel panel-success card_view_view">
											<div class="card_view_view_heading">
												<div class="center">
													<h6 class="panel-title txt-light"><i class="fa fa-bar-chart rounded_icon_white"></i> View</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 mt-30">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Attempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="attempted_border" href="#" id="attempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Correct </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="correct_border" href="#" id="correct" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Wrong </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="wrong_border" href="#" id="wrong" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Unattempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="unattempted_border" href="#" id="unAttempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-40">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Over Time Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="time_taken_border" href="#" id="overtime" target="_blank"></a></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br />
								<div class="row mt-40">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="panel panel-success card_view_seventy_corner">
											<div class="card_view_seventy_corner_heading">
												<div class="center">
													<h6 class="panel-title txt-light"><i class="fa fa-bar-chart rounded_icon_white"></i> 70% Corner</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 mt-30">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> No.of Students scored more than 70% Marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="attempted_border">N/A</span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> 70%(290) students correctly answered Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="correct_border">N/A</span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> 70%(290) students not correctly answered Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="wrong_border">N/A</span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> 70%(N/A) students Unattempted Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="unattempted_border">N/A</span></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br />
								<!-- <div class="row mt-60">
									<div class="col-sm-9 col-sm-offset-2">
										<div class="row difficulty_wise_graph_div">
											<div class="col-sm-5 col-sm-offset-3 ">
												<div class="center"><span class="sky_blue1 bold font-14">Difficulty-wise Accuracy %</span></div>
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
														<div id="morris_bar_chart" class="morris-chart"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
								
								<div class="row mt-60">
									<div class="col-sm-10 col-sm-offset-1">
										<div class="table-wrap">
											<div class="table-responsive">
												<table id="" class="table display pb-30" >
													<thead class="th_background">
														<tr>
															<th>Subject Name</th>
															<th>Score</th>
															<th>-Ve Marks<br> (Wrong Qns.)</th>
															<th>Unattempted <br>(Qns.)</th>
															<th>Over Time <br>(Qns.)</th>
															<th>Percentage %</th>
															<th>Accuracy %</th>
															<th>Speed (Qns./Hr.)</th>
															
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Physics</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Chemistry</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Maths</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Total</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-60">
									<div class="col-sm-10 col-sm-offset-1">
										<div class="row difficulty_wise_graph_div1">
											<div class="col-sm-12">
												<div class="center"><span class="time_spent_each_subject">Time Spent on each Subject</span></div>
													<div class="row mt-20">
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Chemistry <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Maths <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
													</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-60">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="row difficulty_wise_graph_div1">
											<div class="col-sm-12">
												<div class="center"><span class="avg_of_all_students">Average of all Students</span></div>
													<div class="row mt-20">
														<div class="col-sm-2 col-sm-offset-1">
															<div class="">
																N/A <br>
																Score <br>
																<i class="fa fa-chart-line fa-1x rounded_icon_hash"></i>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="">
																N/A <br>
																-Ve Marks <br>
																<i class="fa fa-chart-line fa-1x rounded_icon_hash"></i>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="">
																N/A <br>
																Accuracy %<br>
																<i class="fa fa-chart-line fa-1x rounded_icon_hash"></i>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="">
																N/A <br>
																Percentage % <br>
																<i class="fa fa-chart-line fa-1x rounded_icon_hash"></i>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="">
																N/A <br>
																Speed(Qns/hr) <br>
																<i class="fa fa-chart-line fa-1x rounded_icon_hash"></i>
															</div>
														</div>
													</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-60">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="panel panel-success card_view_overall_feedback">
											<div class="card_view_overall_feedback_heading">
												<div class="center">
													<h6 class="panel-title txt-light">Overall Feedback</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 mt-30">
														<div class="col-sm-8 col-sm-offset-2">
															<ul class="">
															<li>- N/A</li>
																<!-- <li>- Good in Accuracy & Speed</li>
																<li>- Need to improve score to get qualified</li>
																<li>- Improve score & -Ve marks in Chemistry</li>
																<li>- Improve Accuracy in Hard level</li> -->
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
					</div>	
				</div>
			</div>
			
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	
	<script>
		$(document).ready(function(){
			getStudentAnalyticsSummary();
		});
	</script>