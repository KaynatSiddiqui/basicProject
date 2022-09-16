<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
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
						<div class="col-sm-4  col-sm-offset-5">
							<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading2">Design Test - Summary</span></h6>
						</div>
						<div class="col-sm-4 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15">
								<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">
							<div class="row mt-30">
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													Exam Name
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-black bold">Exam Name here</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													Subject
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-black bold">Physics</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													Score
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-success bold">10</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													Percentage%
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-black bold">80%</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													&nbsp;
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">&nbsp;</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													&nbsp;
												</div>
											</div>
											
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													No.of Questions
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="sky_blue1 bold">100</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													-Ve Marks
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-danger bold">-15</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11">
													Accuracy %
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<span class="text-black bold">80</span>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="table-wrap">
												<div class="table-responsive">
													<table id="" class="table challenge_test display pb-30" >
														<thead class="th_background">
															<tr>
																<th class="sky_blue_bgr">Total Qns.</th>
																<th class="sky_blue_bgr">Attempted</th>
																<th class="sky_blue_bgr">Correct</th>
																<th class="sky_blue_bgr">Wrong</th>
																<th class="sky_blue_bgr">Unattempted</th>
																<th class="sky_blue_bgr">Over Time Qns.</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>50</td>
																<td>30</td>
																<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_score">20</a></td>
																<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_negative_score">-20 <br>(10Q)</a></td>
																<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_unattempted">20</a></td>
																<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_time_taken">20</a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-11">
									<canvas id="chart_6" height="200"></canvas>
								</div>
							</div>
							<div class="row mt-30 mb-30">
								<div class="col-sm-4">
									<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading1">Difficulty - wise</span></h6>
								</div>
							</div>
							<div class="row mt-30 mb-30">
								 <div class="col-md-10 col-sm-offset-1">
									 <div class="table-wrap">
										<div class="table-responsive">
											<table id="" class="table table-bordered display pb-30" >
												<thead class="th_background">
													<tr>
														<th></th>
														<th>Marks (Qns.)</th>
														<th>-Ve Marks (Wrong Qns.)</th>
														<th>Unattempted</th>
														<th>Over Time Qns.</th>
														<th>Accuracy %</th>
														<th>Percentage%</th>
														<th>Qns./Hr</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><span class="bold font-14 easy_text">Easy</span></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td><span class="bold font-14 medium_text">Medium</span></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td><span class="bold font-14 hard_text">Hard</span></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td><span class="bold font-14">All</span></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-30 mb-30">
								 <div class="col-sm-4">
									<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading3">Chapter - wise</span></h6>
								</div>
							</div>
							<div class="row mt-30 mb-30">
								<div class="table-wrap">
									<div class="table-responsive">
										<table id="" class="table  display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Subject</th>
													<th>Chapter Name</th>
													<th>No. of Qns.</th>
													<th>Correctly</br>Answered Qns.</th>
													<th>Wrongly</br>Answered Qns.</th>
													<th>Unattempted</br>Qns.</th>
													<th>Over Time</br>Qns.</th>
													<th>View</br>Qns.</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Physics</td>
													<td>Chapter - 1</td>
													<td>10</td>
													<td>3</td>
													<td>3</td>
													<td>2</td>
													<td>2</td>
													<td>
														<a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="view_questions ">View</a>
													</td>
												</tr>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="row mt-20 mb-20">
								<a class="btn btn-primary pull-right" href="<?php echo base_url();?>student/practice_zone/view_full_paper">View Full Paper</a>
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
<script type="text/javascript">
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true,
	}) 
</script>