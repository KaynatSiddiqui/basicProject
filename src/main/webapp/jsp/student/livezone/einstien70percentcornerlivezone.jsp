<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/70%corner.css" rel="stylesheet">

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
						<div class="panel panel-default card-view setbg">
							<div class="panel-heading mb-10 getstached" style="margin:3px">
								<div class="col-sm-4 pull-left">
                             
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/70cornertitle.svg"  width="300px">
						    </div>
												</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen text-white font-24"></i>
									</a>
								</div>
								<div class="row" style="margin-bottom:20px">
											<div class="col-md-12 col-md-offset-4">
										    <ul class="nav nav-tabs" id="settabs" role="tablist">
												<li class="col-md-2"><a href="#physics"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" width="50px" height="50px"><p class="heit1">Physics</p></a></li>
												<li class="col-md-2"><a href="#chemistry"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/chemistry.png" width="50px" height="50px"><p class="hei1">Chemistry</p></a></li>
												<li class="col-md-2"><a href="#maths"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/maths.png" width="50px" height="50px"><p class="heit1">Maths</p></a></li>
											</ul>
											</div>
									</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									
									<div class="row mt-30">
										<div class="col-sm-8 col-sm-offset-2">
											<form>
												<div class="row testzone_chapterwise_tests">
													<div class="row">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
														   <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="40px" height="40px" style="border-radius:25px"></span>&nbsp;&nbsp;
															<span class="test_name_previous_years" style="vertical-align:top">Thermodynamic</span>
														</div>
														<div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
															<span style="float:right" >No of tests attended by you:12</span>
														</div>
														<%-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
															<span class="">(300Qns, 30 Min, 180 M)</span>
														</div>
														<!-- <div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
															<a class="ml-10"><i class="fa fa-bar-chart"></i></a>
														</div> -->
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
															<a href="<%= AppConstants.BASE_URL %>student/Previous year's Papers/paperwise/simple_practice_get_questions.jsp" class="btn btn btn-primary setbtn">Take</a>
														</div> --%>
													</div>
													<div class="row">
														<div class="col-md-12 col-md-offset-1">
														
														<div class="col-md-3">
														<p>Wrong(with in time)</p>
														<p style="color:red"><span>40</span></p>
														</div>
														
														<div class="col-md-3">
														<p>Overtime(wrong)</p>
														<p style="color:pink"><span>25</span></p>
														</div>
														
														<div class="col-md-3">
											           <p>Overtime(correct)</p>
														<p style="color:blue"><span>15</span></p>
														</div>
														
														<div class="col-md-3">
														<p>Finished</p>
														<p style="color:green"><span>0</span></p>
														</div>
															<!-- <div class="">
																<div class="table-responsive">
																	<table id="" class="table test" >
																		<thead class="">
																			<tr>
																				<th>Score</th>
																				<th>-Ve Marks</th>
																				<th>Unattempted Qns.</th>
																				<th>Over Time Qns.</th>
																				<th>Accuracy %</th>
																				<th>Percentage %</th>
																				<th>Speed Qns/hr</th>
																				<th>Top Score</th>
																			</tr>
																		</thead>
																		
																	</table>
																</div>
															</div> -->
														</div>
													</div>
												</div>
												
												<div class="row testzone_chapterwise_tests mt-10">
													<div class="row">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													   <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="40px" height="40px" style="border-radius:25px"></span>&nbsp;&nbsp;
															<span class="test_name_previous_years" style="vertical-align:top">Thermodynamic</span>
														</div>
														<div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
															<span style="float:right">No of tests attended by you:12</span>
														</div>
														<%-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
															<span class="">(300Qns, 30 Min, 180 M)</span>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
															<a class="ml-10"><i class="fa fa-bar-chart"></i></a>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
															<a href="<%= AppConstants.BASE_URL %>student/Previous year's Papers/paperwise/simple_practice_get_questions.jsp" class="btn btn btn-danger setbtn ">Take Again</a>
														</div> --%>
													</div>
													<div class="row">
														<div class="col-md-12 col-md-offset-1">
														
														<div class="col-md-3">
														<p>Wrong(with in time)</p>
														<p style="color:red"><span>36</span></p>
														</div>
														
														<div class="col-md-3">
														<p>Overtime(wrong)</p>
														<p style="color:pink"><span>25</span></p>
														</div>
														
														<div class="col-md-3">
														<p>Overtime(correct)</p>
														<p style="color:blue"><span>15</span></p>
														</div>
														
														<div class="col-md-3">
														<p>Finished</p>
														<p style="color:green"><span>9</span></p>
														</div>
															<!-- <div class="">
																<div class="table-responsive">
																	<table id="" class="table test" >
																		<thead class="">
																			<tr>
																				<th>Score</th>
																				<th>-Ve Marks</th>
																				<th>Unattempted Qns.</th>
																				<th>Over Time Qns.</th>
																				<th>Accuracy %</th>
																				<th>Percentage %</th>
																				<th>Speed Qns/hr</th>
																				<th>Top Score</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td><span class="text-success">30/90 <br /> (10Q/30Q)</span></td>
																				<td><span class="text-warning">10 <br /> (13Q)</span></td>
																				<td><span class="sky_blue1">15Q</span></td>
																				<td>5Q</td>
																				<td>50%</td>
																				<td>50%</td>
																				<td>10</td>
																				<td>30/90 <br /> (10Q/30Q)</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div> -->
														</div>
													</div>
												</div>
												
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
			<!-- /Row -->
			</div>
		<%@include file="/jsp/master/footer.jsp"%>
	</div>
	<!-- /Main Content -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>