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
						<div class="panel panel-default card-view test_history_finished_bg">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<span class="btn btn-test_history_finished_heading">Finished Test's</span>
								</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									 <div  class="tab-struct custom-tab-1 mt-40">
										<ul role="tablist" class="nav nav-tabs wasted_tests" id="myTabs_7">
											<!-- <li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">Zee - Mains</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Zee - Advanced</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">BITSAT</a></li> -->
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="tab-content" id="myTabContent_7">
										<!-- <div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
											<div class="row mt-20">
												<div class="col-sm-10 col-sm-offset-1 test_history_finished_bg_white">
													<form>
														<div class="row">
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1">Zone Type</label>
																	<select class="selectpicker" data-style="form-control btn-default btn-outline">
																		<option>--- Select ---</option>
																		<option>All</option>
																		<option>Practice Zone</option>
																		<option>Test Zone</option>
																		<option>Live Zone</option>
																		<option>Challenge Zone</option>
																	</select>
																</div>	
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">From</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">To</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<a class="btn btn-primary btn-rounded mt-25">Go</a>
															</div>
														</div>
													</form>
												</div>
											</div>
											<div class="row mt-10 mb-10">
												<div class="col-sm-10 col-sm-offset-1">
													<span class="bold black  pull-right">No.of Test taken: 50</span>
												</div>
											</div>
											<div class="row mt-30">
												<div class="col-sm-10 col-sm-offset-1">
													<form>
														<div class="row">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div  id="Tab_2" class="tab-pane fade" role="tabpanel">
											<div class="row mt-20">
												<div class="col-sm-10 col-sm-offset-1 test_history_finished_bg_white">
													<form>
														<div class="row">
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1">Zone Type</label>
																	<select class="selectpicker" data-style="form-control btn-default btn-outline">
																		<option>--- Select ---</option>
																		<option>All</option>
																		<option>Practice Zone</option>
																		<option>Test Zone</option>
																		<option>Live Zone</option>
																		<option>Challenge Zone</option>
																	</select>
																</div>	
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">From</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">To</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<a class="btn btn-primary btn-rounded mt-25">Go</a>
															</div>
														</div>
													</form>
												</div>
											</div>
											<div class="row mt-10 mb-10">
												<div class="col-sm-10 col-sm-offset-1">
													<span class="bold black  pull-right">No.of Test taken: 50</span>
												</div>
											</div>
											<div class="row mt-30">
												<div class="col-sm-10 col-sm-offset-1">
													<form>
														<div class="row">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>

										</div>
										<div  id="Tab_3" class="tab-pane fade" role="tabpanel">
											<div class="row mt-20">
												<div class="col-sm-10 col-sm-offset-1 test_history_finished_bg_white">
													<form>
														<div class="row">
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1">Zone Type</label>
																	<select class="selectpicker" data-style="form-control btn-default btn-outline">
																		<option>--- Select ---</option>
																		<option>All</option>
																		<option>Practice Zone</option>
																		<option>Test Zone</option>
																		<option>Live Zone</option>
																		<option>Challenge Zone</option>
																	</select>
																</div>	
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">From</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="control-label mb-5 bold sky_blue1" for="exampleInputuname_2">To</label>
																	<div class="input-group">
																		<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
																		<span class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="col-md-3">
																<a class="btn btn-primary btn-rounded mt-25">Go</a>
															</div>
														</div>
													</form>
												</div>
											</div>
											<div class="row mt-10 mb-10">
												<div class="col-sm-10 col-sm-offset-1">
													<span class="bold black  pull-right">No.of Test taken: 50</span>
												</div>
											</div>
											<div class="row mt-30">
												<div class="col-sm-10 col-sm-offset-1">
													<form>
														<div class="row">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
															
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="row test_history_finished_bg_sub">
																	<div class="row">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
																			<span class="black bold">Thermodynamics - 1</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">Chapter wise test</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-test_history_repeat btn-rounded btn-xss ">Repeat</a>
																		</div>
																	</div>
																	<div class="row mt-10">
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 center">
																			<span class="text-success bold">30/90 <br> (10Q/90Q)</span>
																		</div>
																		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
																			<span class="sky_blue1">10th May 2018</span>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
																			<a class="btn btn btn-sky_blue btn-circle btn-xss"><i class="fa fa-bar-chart mt-10"></i></a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>

										</div> -->
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
	
	<script>
	
	$(document).ready(function(){	
		getexamstabs();

	})
	

	
	
	</script>