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
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark livezone_heading_mrgn_btm"><span class="sky_blue1 font-18">Live Zone - </span><span class="font-18 purple1"> Active</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div  class="tab-struct vertical-tab custom-tab-1 mt-20">
										<ul role="tablist" class="nav nav-tabs livezone_tabs_right ver-nav-tab" id="myTabs_8">
											<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="Tab1_1" href="#Tab_1"><%= AppConstants.ALL %></a></li>
											<li role="presentation" class=""><a id="Tab2_2" data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false"><%= AppConstants.MOCKTEST %></a></li>
											<li role="presentation" class=""><a id="Tab3_3" data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false"><%= AppConstants.SUBJECTWISE_MOCK %></a></li>
											<li role="presentation" class=""><a id="Tab4_4" data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false"><%= AppConstants.FULLSYALLBUSMOCK %></a></li>
										</ul>
										<div class="tab-content" id="myTabContent_8">
											<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
												<div class="row">
													  <%-- <div class="col-sm-6">
														<div class="div_full_mocks">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	 <span class="font-18" id="testname">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right" id="fullmock">Full Mocks</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	 <div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email" id="examtype">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="category">
																			Mains
																		</div>
																	</div>	 
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="standard">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="subject">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="openingdate">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="closingdate">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="aspirants">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="topscore">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="topname">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="syllabus">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="moredetails">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>  
													</div>--%>
													<%--<div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_syllabus">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Syllabus</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_mocks">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Mocks</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_syllabus">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Syllabus</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>--%>
												</div> 
											</div>
											<div  id="Tab_2" class="tab-pane fade" role="tabpanel">
												<div class="row">
													<%-- <div class="col-sm-6">
														<div class="div_full_mocks">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Mocks</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div> --%>
													<%-- <div class="col-sm-6">
														<div class="div_full_mocks">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 2</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Mocks</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_mocks">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 1</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Mocks</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>--%>
												</div> 
											</div>
											<div  id="Tab_3" class="tab-pane fade " role="tabpanel">
												 <div class="row">
													<%-- <div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div> --%>
													<%--<div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_subjectwise">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Subjects wise</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div> --%>
												</div>
											</div>
											<div  id="Tab_4" class="tab-pane fade" role="tabpanel">
												 <div class="row">
													 <%-- <div class="col-sm-6">
														<div class="div_full_syllabus">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Syllabus</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_syllabus">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Syllabus</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="div_full_syllabus">
															<div class="row livezone_Exam_title">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">
																	<span class="font-18">Mock Test - 3</span>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
																	<span class="pull-right">Full Syllabus</span>
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Exam Type </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Mains
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Standard </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			12th
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Subjects </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Physics
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Opening Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Closing Date </label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			11-Oct-2018 (10:00 AM)
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Numbers of Aspirants(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			512
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOP Score(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			252/ 360
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">TOPPER Name(till now)</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			Ravi Reddy <br />
																			<img class="livezone_active_topper" src="<?php echo base_url();?>assets/images/students/default.png">
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">Syllabus</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="btn btn-livezone_view btn-xss">View</a>
																		</div>
																	</div>	
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
																	<div class="row form-group mb_2">
																		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-11">
																			<label class="" for="example-email">More Details</label>
																		</div>
																		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
																		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
																			<a href="#"  data-toggle="modal" data-target="#exampleModalShow" data-whatever="@mdo" class="btn btn-livezone_show btn-xss">Show</a>
																		</div>
																	</div>	
																</div>
															</div>
															<div class="row mt-10">
																<div class="col-sm-12">
																	<div class="center">
																		<a href="#" class="btn btn-livezone_take_exam btn btn-rounded btn-xs">Take Test</a>
																	</div>
																</div>
															</div>
														</div>
													</div> --%>
												</div> 
											</div>
										</div>
									</div>
								</div>
							</div>
						
						<div class="modal fade" id="getactivesyllabus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-body">
												<div class="table-wrap mt-40">
													<div class="table-responsive">
													  <table id="activesyllabus_tbl" class="table table-hover table-bordered mb-0">
														<thead class="th_background">
														  <tr>
															<th>Standard</th>
															<th>Subject</th>
															<th>Chapter</th>
															<th>Topic</th>
															<th>Comment</th>
														  </tr>
														</thead>
														<tbody id="activesyllabus_tbody">
															
															
														</tbody>
													  </table>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
							</div>
							
							
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
		var appenddata="";
		var id="";
		var brcolor="";
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
				var inputData = 
		          {
				  "testType":"All",
				  "studentId":sId
				  }
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url   :  base_url+'rest/student/getliveactivetest',
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				for(var i=0; i < data.length; i++){ 
					if(data[i].testType == "Subject-Wise Mock" ){
						appenddata +="<div class='col-sm-6'>"+
						"<div class='div_full_mocks'>"+
						"<div class='row livezone_Exam_title'>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
								" <span class='font-18'>"+data[i].testName+"</span>"+
							"</div>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
								"<span class='pull-right' >"+data[i].testType+"</span>"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								" <div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>examType</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								     +data[i].examType+
									"</div>"+
								"</div>	"+ 
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Standard </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
									+data[i].standard+
								"	</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Subjects </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
									+data[i].subjects+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Opening Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
									+data[i].openingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Closing Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
									+data[i].closingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
									+data[i].numberOfAspirants+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOP Score(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topscore'>"
									+data[i].topScore+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topname'>"
									+data[i].topperName+
										"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Syllabus</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='syllabus'>"+
										"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' onclick='getActivesyllabus(this)' data-whatever='@mdo' data-id='"+data[i].id+"' class='btn btn-livezone_view btn-xss'>view</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>More Details</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='moredetails'>"+
										"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-whatever='@mdo' onclick='ShowMore(this)'  data-id='"+data[i].id+"'  class='btn btn-livezone_show btn-xss'>Show</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-sm-12'>"+
								"<div class='center'>"+
									"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
								"</div>"+
							"</div>"+
						"</div>"+
					"</div>"+
					"</div>";
					}else if(data[i].testType == "Mock Test" ){
						appenddata +="<div class='col-sm-6'>"+
						"<div class='div_full_mocks'>"+
						"<div class='row livezone_Exam_title'>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
								" <span class='font-18'>"+data[i].testName+"</span>"+
							"</div>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
								"<span class='pull-right' >"+data[i].testType+"</span>"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								" <div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email' id='examtype'>examType</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='category'>"
								     +data[i].examType+
									"</div>"+
								"</div>	"+ 
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Standard </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='standard'>"
									+data[i].standard+
								"	</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Subjects </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='subject'>"
									+data[i].subjects+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Opening Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='openingdate'>"
									+data[i].openingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Closing Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='closingdate'>"
									+data[i].closingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='aspirants'>"
									+data[i].numberOfAspirants+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOP Score(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topscore'>"
									+data[i].topScore+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topname'>"+data[i].topperName+
										"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Syllabus</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='syllabus'>"+
										"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' data-id='"+data[i].id+"'  onclick='getActivesyllabus(this)' data-whatever='@mdo' class='btn btn-livezone_view btn-xss'>view</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>More Details</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='moredetails'>"+
										"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-id='"+data[i].id+"' data-whatever='@mdo' onclick='ShowMore(this)' class='btn btn-livezone_show btn-xss'>Show</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-sm-12'>"+
								"<div class='center'>"+
									"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
								"</div>"+
							"</div>"+
						"</div>"+
					"</div>"+
					"</div> ";
					}else{
						appenddata +="<div class='col-sm-6'>"+
						"<div class='div_full_mocks'>"+
						"<div class='row livezone_Exam_title'>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
								" <span class='font-18'>"+data[i].testName+"</span>"+
							"</div>"+
							"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
								"<span class='pull-right' >"+data[i].testType+"</span>"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								" <div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email' id='examtype'>examType</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='category'>"
								     +data[i].examType+
									"</div>"+
								"</div>	"+ 
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Standard </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='standard'>"
									+data[i].standard+
								"	</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Subjects </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='subject'>"
									+data[i].subjects+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"	<label class='' for='example-email'>Opening Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='openingdate'>"
									+data[i].openingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Closing Date </label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='closingdate'>"
									+data[i].closingDate+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='aspirants'>"
									+data[i].numberOfAspirants+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOP Score(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topscore'>"
									+data[i].topScore+
									"</div>"+
								"</div>"+	
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topname'>"
									+data[i].topperName+
										"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>Syllabus</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='syllabus'>"+
										"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' data-id='"+data[i].id+"'  onclick='getActivesyllabus(this)'  data-whatever='@mdo' class='btn btn-livezone_view btn-xss'>view</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
							"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
								"<div class='row form-group mb_2'>"+
									"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
										"<label class='' for='example-email'>More Details</label>"+
									"</div>"+
									"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
									"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='moredetails'>"+
										"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-id='"+data[i].id+"' onclick='ShowMore(this)' data-whatever='@mdo' class='btn btn-livezone_show btn-xss'>Show</a>"+
									"</div>"+
								"</div>	"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-sm-12'>"+
								"<div class='center'>"+
									"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
								"</div>"+
							"</div>"+
						"</div>"+
					"</div> "+
					"</div> ";
					}
					
					
					/* id = $(".col1").attr('data-id');
					brcolor = data[i].testType;
					switch(brcolor){
					case "Subject-Wise Mock": 
						$("#color"+id).removeClass();
						$("#color"+id).addClass("div_subjectwise_upacoming");
					case "Mock Test":
						$("#color"+id).removeClass();
						$("#color"+id).addClass("div_full_mocks_upacoming")
					default: 
						console.log("default")
					}
					 */
			
				}
				/* for(i=0;i<data.length;i++){
				id = $(".col1").attr('data-id');
				if(brcolor =="Subject-Wise Mock"){
					$("#color"+id).removeClass();
					$("#color"+id).addClass("div_subjectwise_upacoming")
				}
				else if(brcolor =="Mock Test"){
					$("#color"+id).removeClass();
					$("#color"+id).addClass("div_full_mocks_upacoming")
				}
				else{console.log('default')};
				}
			   			 */
				 $("#Tab_1 .row").empty();
					$("#Tab_1 .row").append(appenddata); 
				
},
			error:function(data){
				alert("data not found");
			}
		
				
			});
	});
	
	$("#Tab2_2").click(function(){
		var appenddata="";
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		
		var inputData = 
		          {
				  "testType":"Mock Test",
				  "studentId":sId
				  }
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url   :  base_url+'rest/student/getliveactivetest',
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				for(var i=0; i < data.length; i++){ 
					appenddata +="<div class='col-sm-6'>"+
					"<div class='div_full_mocks'>"+
					"<div class='row livezone_Exam_title'>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
							" <span class='font-18'>"+data[i].testName+"</span>"+
						"</div>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
							"<span class='pull-right' >"+data[i].testType+"</span>"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							" <div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email' id='examtype'>examType</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
							"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='category'>"
							     +data[i].examType+
								"</div>"+
							"</div>	"+ 
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Standard </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='standard'>"
								+data[i].standard+
							"	</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Subjects </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='subject'>"
								+data[i].subjects+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Opening Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='openingdate'>"
								+data[i].openingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Closing Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='closingdate'>"
								+data[i].closingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='aspirants'>"
								+data[i].numberOfAspirants+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOP Score(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topscore'>"
								+data[i].topScore+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='topname'>"
								+data[i].topperName+
									"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Syllabus</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='syllabus'>"+
									"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' data-id='"+data[i].id+"'  onclick='getActivesyllabus(this)' data-whatever='@mdo' class='btn btn-livezone_view btn-xss'>view</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>More Details</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='moredetails'>"+
									"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-id='"+data[i].id+"' onclick='ShowMore(this)' data-whatever='@mdo' class='btn btn-livezone_show btn-xss'>Show</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-sm-12'>"+
							"<div class='center'>"+
								"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
							"</div>"+
						"</div>"+
					"</div>"+
				"</div> "+
				"</div> ";
					
				}
			    $("#Tab_2 .row").empty();
				$("#Tab_2 .row").append(appenddata); 
			
			},
			error:function(data){
				alert("data not found");
			}
		
				
			});
	});
	$("#Tab3_3").click(function(){
		var appenddata="";
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		
		var inputData = 
		          {
				  "testType":"Subject-Wise Mock",
				  "studentId":sId
				  }
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url   :  base_url+'rest/student/getliveactivetest',
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				for(var i=0; i < data.length; i++){ 
					
					
					appenddata +="<div class='col-sm-6'>"+
					"<div class='div_full_mocks'>"+
					"<div class='row livezone_Exam_title'>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
							" <span class='font-18'>"+data[i].testName+"</span>"+
						"</div>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
							"<span class='pull-right' >"+data[i].testType+"</span>"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							" <div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>examtype</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
							"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
							     +data[i].examType+
								"</div>"+
							"</div>	"+ 
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Standard </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='standard'>"
								+data[i].standard+
							"	</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Subjects </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='subject'>"
								+data[i].subjects+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Opening Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='openingdate'>"
								+data[i].openingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Closing Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='closingdate'>"
								+data[i].closingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' id='aspirants'>"
								+data[i].numberOfAspirants+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOP Score(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].topScore+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].topperName+
									"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Syllabus</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"+
									"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' data-id='"+data[i].id+"'  onclick='getActivesyllabus(this)' data-whatever='@mdo' class='btn btn-livezone_view btn-xss'>view</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>More Details</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"+
									"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-id='"+data[i].id+"' onclick='ShowMore(this)' data-whatever='@mdo' class='btn btn-livezone_show btn-xss'>Show</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-sm-12'>"+
							"<div class='center'>"+
								"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
							"</div>"+
						"</div>"+
					"</div>"+
				"</div>"+
				"</div>";
					
				}
			    $("#Tab_3 .row").empty();
				$("#Tab_3 .row").append(appenddata); 
			
			},
			error:function(data){
				alert("data not found");
			}
		
				
			});
	});
	
	$("#Tab4_4").click(function(){
		var appenddata="";
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		
		var inputData = 
		          {
				  "testType":"Full-Syllabus Mock",
				  "studentId":sId
				  }
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url   :  base_url+'rest/student/getliveactivetest',
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				for(var i=0; i < data.length; i++){ 
					
					
					appenddata +="<div class='col-sm-6'>"+
					"<div class='div_full_mocks'>"+
					"<div class='row livezone_Exam_title'>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
							" <span class='font-18'>"+data[i].testName+"</span>"+
						"</div>"+
						"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
							"<span class='pull-right' >"+data[i].testType+"</span>"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							" <div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"<label class='' for='examtype' >Exam Type</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
							"	<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
							     +data[i].examType+
								"</div>"+
							"</div>	"+ 
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Standard </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].standard+
							"	</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Subjects </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].subjects+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
								"	<label class='' for='example-email'>Opening Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].openingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Closing Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"
								+data[i].closingDate+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Numbers of Aspirants(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
								+data[i].numberOfAspirants+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOP Score(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
								+data[i].topScore+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>TOPPER Name(till now)</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"
								+data[i].topperName+
									"<img class='livezone_active_topper' src='<?php echo base_url();?>assets/images/students/default.png'>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Syllabus</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>"+
									"<a href='#'  data-toggle='modal' data-target='#getactivesyllabus' data-id='"+data[i].id+"'  onclick='getActivesyllabus(this)' data-whatever='@mdo' class='btn btn-livezone_view btn-xss'>view</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5'>"+
							"<div class='row form-group mb_2'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>More Details</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12' >"+
									"<a href='#'  data-toggle='modal' data-target='#showmoredetails' data-id='"+data[i].id+"' onclick='ShowMore(this)' data-whatever='@mdo' class='btn btn-livezone_show btn-xss'>Show</a>"+
								"</div>"+
							"</div>	"+
						"</div>"+
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-sm-12'>"+
							"<div class='center'>"+
								"<a href='#' class='btn btn-livezone_take_exam btn btn-rounded btn-xs'>Take Test</a>"+
							"</div>"+
						"</div>"+
					"</div>"+
				"</div> ";

					
				}
			    $("#Tab_4 .row").empty();
				$("#Tab_4 .row").append(appenddata); 
			
			},
			error:function(data){
				alert("data not found");
			}
		
				
			});
	});
	
	
	</script>