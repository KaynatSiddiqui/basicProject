<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>


<style>
.getstached {
	margin: 8px 10px;
	padding-top: 22px;
	padding-bottom: 0px;
	background: #fff !important;
}

.orange {
	color: orange;
}

.lightblue {
	color: lightblue;
}

.getposi {
	position: relative;
	top: 5px;
	left: -23px;
	color: #fff;
	border: 2px solid #c4c4ff;
	border-radius: 15px;
	padding: 10px;
}

.setbg {
	background: #fff;
	padding-bottom: 80px;
}

.heit {
	line-height: 30px;
	color: #fff;
}

.nav-tabs>li.active>a>p {
	color: black;
}

.setbtn {
	padding: 6px 18px;
	margin-top: 0px;
}

#chaptertab>li {
	width: 120px;
	!
	important;
}

#chaptertab>li.active>a>img {
	border: 3px solid deepskyblue;
}

#chaptertab>li>a {
	color: black;
}
</style>
<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view setbg">
					<div class="panel-heading mb-10 getstached"
						style="margin: 4px; background: grey !important;">
						<div class="col-sm-4 pull-left">
							<h6 class="panel-title txt-dark">
								<span class="getposi font-21">Chapters Target</span>
							</h6>
						</div>
						<div class="col-sm-4 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15"> <i
								class="zmdi zmdi-fullscreen text-white font-24"></i>
							</a>
						</div>
						<div class="row">
							<div class="col-md-12 col-md-offset-4">
								<ul class="nav nav-tabs" id="chaptertab" role="tablist"
									style="margin-bottom: 30px">
									<li class="col-md-2 active"><a href="#physics" role="tab"
										data-toggle="tab"><img
											src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/physics.png"
											width="50px" height="50px">
											<p class="heit">Physics</p></a></li>
									<li class="col-md-2"><a href="#chemistry" role="tab"
										data-toggle="tab"><img
											src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/chemistry.png"
											width="50px" height="50px">
											<p class="heit">Chemistry</p></a></li>
									<li class="col-md-2"><a href="#maths" role="tab"
										data-toggle="tab"><img
											src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/maths.png"
											width="50px" height="50px">
											<p class="heit">Maths</p></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">

							<div class="row mt-30">

								<div class="col-sm-10 text-right">
									<p>
										<img src="/assets/landing/img/bar-chart.svg" width="50px"
											height="50px">
									</p>
									<p>Graphical icon</p>
								</div>

								<div class="col-sm-8 col-sm-offset-2">
									<form>
										<div class="row testzone_chapterwise_tests"
											style="border: 1px solid black !important;color:black">
											<div class="row">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<span><img
														src="<%=request.getContextPath()%>/assets/landing/img/icon.png"
														width="40px" height="40px" style="border-radius: 25px"></span>&nbsp;&nbsp;
													<span class="test_name_previous_years"
														style="vertical-align: top; color: black">Thermodynamic</span>
												</div>

												<span class="col-sm-8 col-md-8" style="margin-left: 30px">

													<span class="col-sm-3"> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span>
														<p>Beginner</p>
												</span> <span class="col-sm-3"> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span>
														<p>Learner</p>
												</span> <span class="col-sm-2"> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span> <span
														class="fa fa-star checked"></span>
														<p>Master</p>
												</span>

												</span>

											</div>
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

													<div class="col-md-8 col-md-offset-3">
														<p>
															Are you? &nbsp;&nbsp;&nbsp;&nbsp; <span><button
																	class="btn btn-default"
																	style="background: transparent; border-radius: 14px; border: 1px solid black; padding: 6px 24px; font-weight: 600; color: yellow !important;">beginner
																</button>
																<button class="btn btn-default"
																	style="background: transparent; border-radius: 14px; border: 1px solid black; padding: 6px 24px; font-weight: 600; color: lightblue !important">Learner</button>
																<button class="btn btn-default"
																	style="background: transparent; border-radius: 14px; border: 1px solid black; padding: 6px 24px; font-weight: 600; color: green !important;">Master</button></span>
														</p>
													</div>

												</div>
											</div>
										</div>

										<div class="row testzone_chapterwise_tests mt-10"
											style="border: 1px solid black !important;color:black">
											<div class="row">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<span><img src="/assets/landing/img/icon.png"
														width="40px" height="40px" style="border-radius: 25px"></span>&nbsp;&nbsp;
													<span class="test_name_previous_years"
														style="vertical-align: top; color: black">Thermodynamic</span>
												</div>
												<span class="col-sm-8 col-md-8" style="margin-left: 30px">

													<span class="col-sm-3"> <span
														class="fa fa-star orange"></span> <span
														class="fa fa-star orange"></span> <span
														class="fa fa-star orange"></span>
														<p>Beginner</p>
												</span> <span class="col-sm-3"> <span
														class="fa fa-star lightblue"></span> <span
														class="fa fa-star lightblue"></span> <span
														class="fa fa-star "></span>
														<p>Learner</p>
												</span> <span class="col-sm-2"> <span
														class="fa fa-star "></span> <span
														class="fa fa-star "></span> <span
														class="fa fa-star "></span>
														<p>Master</p>
												</span>

												</span>

											</div>
											<hr style="border: 1px solid black !important">
											<div class="row">
												<div class="col-md-12 text-center">

													<div class="col-md-4 ">
														<p>No of practise still:8</p>
														<p>Last Practise on 24/11/2018</p>
													</div>

													<div class="col-md-4"
														style="position: relative; top: -22px;">
														<p>
															<span>Learner Test</span>&nbsp;&nbsp;<span><button
																	class="btn btn-default" style="padding: 7px 14px;">start</button></span>
														</p>

													</div>

													<div class="col-md-4">
														<p>Last pratice test</p>
														<span>Percentage% - 50% &nbsp;&nbsp; accuracy - 60%</span>


													</div>

												</div>
											</div>
										</div>
										<div class="row testzone_chapterwise_tests mt-10"
											style="border: 1px solid black !important;color:black">
											<div class="row">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<span><img
														src="<%=request.getContextPath()%>/assets/landing/img/icon.png"
														width="40px" height="40px" style="border-radius: 25px"></span>&nbsp;&nbsp;
													<span class="test_name_previous_years"
														style="vertical-align: top; color: black">Thermodynamic</span>
												</div>
												<div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
													<span class="text-right">last practised on:
														24/09/2018</span>
												</div>

											</div>
											<hr style="border: 1px solid black !important">
											<div class="row">
												<div class="col-md-12 text-center">

													<div class="col-md-4">
														<p>Total Qns(unattempted)</p>
														<p>
															<span>15</span>&nbsp;&nbsp;&nbsp;&nbsp;<span><button
																	class="btn btn-success" style="padding: 5px 14px">start</button></span>
														</p>
													</div>

													<div class="col-md-4">
														<p>Correct Qns</p>
														<p>
															<span>5</span>&nbsp;&nbsp;&nbsp;&nbsp;<span><button
																	class="btn btn-active btn-rounded"
																	style="padding: 5px 14px">view</button></span>
														</p>
													</div>

													<div class="col-md-4">
														<p>Wrong Qns</p>
														<p>
															<span>10</span>&nbsp;&nbsp;&nbsp;&nbsp;<span><button
																	class="btn btn-success" style="padding: 5px 14px">start</button></span>
														</p>
													</div>

												</div>
											</div>
										</div>
										<div class="row testzone_chapterwise_tests mt-10"
											style="border: 1px solid black !important;color:black">
											<div class="row">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<span><img src="/assets/landing/img/icon.png"
														width="40px" height="40px" style="border-radius: 25px"></span>&nbsp;&nbsp;
													<span class="test_name_previous_years"
														style="vertical-align: top; color: black">Thermodynamic</span>
												</div>
												<span class="col-sm-8 col-md-8" style="margin-left: 30px">

													<span class="col-sm-3"> <span
														class="fa fa-star orange"></span> <span
														class="fa fa-star orange"></span> <span
														class="fa fa-star orange"></span>
														<p>Beginner</p>
												</span> <span class="col-sm-3"> <span
														class="fa fa-star lightblue"></span> <span
														class="fa fa-star lightblue"></span> <span
														class="fa fa-star "></span>
														<p>Learner</p>
												</span> <span class="col-sm-2"> <span
														class="fa fa-star "></span> <span
														class="fa fa-star "></span> <span
														class="fa fa-star "></span>
														<p>Master</p>
												</span>

												</span>

											</div>
											<hr style="border: 1px solid black !important">
											<div class="row">
												<div class="col-md-12 text-center">

													<div class="col-md-4 ">
														<p>No of practise still:8</p>
														<p>Last Practise on 24/11/2018</p>
													</div>

													<div class="col-md-4"
														style="position: relative; top: -22px;">
														<p>
															<span>Learner Test</span>&nbsp;&nbsp;<span><button
																	class="btn btn-default" style="padding: 7px 14px;">start</button></span>
														</p>

													</div>

													<div class="col-md-4">
														<p>Last pratice test</p>
														<span>Percentage% - 50% &nbsp;&nbsp; accuracy - 60%</span>


													</div>

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
