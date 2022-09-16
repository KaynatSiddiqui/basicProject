
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  /><%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
.prple{
position: relative;
   /*  bottom: 20px; */
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
.prpless{
position: relative;
   /*  bottom: 10px; */
    color: #999;
    /* padding-left: 20px; */
    vertical-align:middle;
     padding-left: 30px; 
}
.imgstyle{
height:30px;
widht:30px;
 vertical-align:middle;
}
.imgstyle-4{
height:33px;
widht:33px;
 vertical-align:middle;
}
.imgstyle-3{
height:25px;
widht:25px;
 vertical-align:middle;
}
.imgstyle-2{
height:40px;
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
	<div class="page-wrapper" style="background-color:#fff">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row" >
				<div class="col-sm-12">
					<div class="panel panel-default card-view" style="background-color:#fff!important">
						<div class="panel-heading">
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
							<div class="row mb-20">
								<div class="col-sm-12 center">
									<div class="mt-15 mr-10">
										<!-- <h3 style="color:white">Individual Analytics</h3> -->
										<img src="<%=request.getContextPath()%>/assets/images/students/summary/Button style edit.png" alt="logo" >
										
									</div>
								</div>
							</div>
							<div class="row mb-0">
								<div class="col-sm-3">
									<span style="color:grey" class="font-12">Test Name :</span><br/>
									<span style="color:grey" class="font-12">Test type :</span><br/>
									<span style="color:grey" class="font-12">Date :</span>
								</div>
							</div>
							
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								
								<div class="row mt-40 mb-30" style="background-color: white;">
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
								<!-- <div class="row mt-20 mb-30">
									<div class="col-sm-4 col-sm-offset-2">
										<div class="panel panel-success card_view_performance">
											<div class="card_view_performance_heading">
												<div class="center">
													<h6 class="panel-title txt-light"><i class="fa fa-bar-chart rounded_icon_white"></i> Performance</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class="purple"><i class="fa fa-bar-chart rounded_icon_purple"></i> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
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
								</div> -->
								
								
								<div class="row mt-60" style="color:white; background-color: white;">
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
								<div class="row mt-20 mb-30">
									<div class="col-sm-4 col-sm-offset-2">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height:418px;"
																   >
											<div class="">
												<div class="center">
													<!-- <i id="idbefaft" >Performance</i> -->
													<span id="idbefaft"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-analyzing-skill-50.png" alt="logo" class="imgstyle-2">  Performance</span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<!-- <div  class="row mb-20">
														<div  class="col-sm-6">
															<span class="purple"><i class="fa fa-bar-chart rounded_icon_purple"></i> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div>
													</div> -->
													
													
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
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-target-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Accuracy % </span>
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
									<div class="col-sm-4">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height: 418px;">
											<div class="">
												<div class="center">
												<span id="idbefaft1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-analyzing-skill-50.png" alt="logo" class="imgstyle-2">  View</span>
													
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
												
												
													<!-- <div  class="row mb-20 mt-30">
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
													</div> -->
													
													<div  class="row mb-20 score">
														<div  class="col-sm-6">
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/(26-26)_Red_(Circle)-svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Attempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span><span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!--  <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>-->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Yeld_ICON_(Square)-290318_1_svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Correct </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Red_ICON_(Square_reverse)-290318_2_svg.svg" alt="logo" class="imgstyle-3"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Wrong </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Yeld_ICON_(Square)-290318_2_svg.svg" alt="logo"class="imgstyle-4"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Unattempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Red_ICON_(Square)-290318_1_svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Over Time Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div>
													
													
													
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-20">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left: 45px;
																    margin-right: -9px;
																     width:250px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					    /*  padding-bottom: 60px;  */
																					    border-top: 25px solid #dc4638;
																					    border-radius: 25px;
																					    border-left: 25px solid #dc4638;">
												<p>No. of Students scored more than 70% Marks</p>
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#dc4638;"> 62 </p></a>
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    width:250px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style=" padding-top: 20px;
                                                                                  /* padding-bottom: 60px; */
                                                                             border-top: 25px solid #ffa026;
                                                                                      border-radius: 25px;
                                                                         border-right: 25px solid #ffa026;">
												<p>70%(290) students correctly answered Qns.</p>
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#ffa026;"> 62 </p></a>
													
												</div>
											</div>
										</div>
										
									</div>
								</div>
								<div class="row mb-30">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 0 15px 15px;
																    margin-left: 45px;
																    margin-right: -9px;
																     width:250px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					   /*  padding-bottom: 40px; */
																					    border-bottom: 25px solid #433f4e;
																					    border-radius: 25px;
																					    border-left: 25px solid #433f4e;">
												
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#433f4e;"> 62 </p></a>
													<p>70%(290) students not correctly answered Qns.</p>
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 0 15px 15px;
																    margin-left: -9px;
																    margin-right: -9px;
																    width:250px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					   /*  padding-bottom: 40px; */
																					    border-bottom: 25px solid #4babb9;
																					    border-radius: 25px;
																					    border-right: 25px solid #4babb9;">
												
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#4babb9;"> 62 </p></a>
													<p>70%(290) students Unattempted Questions.</p>
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
			
			
			
			 <div class="modal fade" id="showmoredetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										
										<div class="modal-body">
											<form class="livezone_show_model">
												<div class="row mt-30">
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Number of Questions</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="noofquestions"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Test Time</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="testtime"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Unique Features of The Test</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="uniquefeau"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Paper Designed By</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="paperdesi"></p>
														</div>
													</div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
											</div>
									</div>
								</div>
							</div> 
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