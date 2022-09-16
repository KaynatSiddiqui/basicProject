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
								<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Automatic</span></h6>
							  </div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-heading">
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-12">
											<div class="row checkbox checkbox-success ml-30">
												<input id="checkbox3" type="checkbox">
												<label for="checkbox3">
													Full Syllabus
												</label>
											</div>
										</div>
									</div>
									
									<div class="panel panel-default card-view">
										<div class="panel-wrapper collapse in">
											<div class="panel-body">
												<div class="panel-group accordion-struct"  role="tablist" aria-multiselectable="true">
													<div class="panel panel-default">
														<div class="panel-heading activestate" role="tab" id="heading_5">
															<a role="button" data-toggle="collapse" href="#collapse_5" aria-expanded="true" ><i class="fa fa-plus-circle fa-lg"></i> Physics</a> 
														</div>
														<div id="collapse_5" class="panel-collapse collapse in" role="tabpanel">
															<div class="panel-body pa-15">
																<div class="row">
																	<div class="table-wrap">
																		<div class="table-responsive">
																			<table id="" class="table table-bordered display pb-30" >
																				<thead class="th_background">
																					<tr>
																						<th>Chapter Name</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 1
																								</label>
																							</div>
																						</td>
																					</tr>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 2
																								</label>
																							</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="heading_6">
															<a class="collapsed" role="button" data-toggle="collapse" href="#collapse_6" aria-expanded="false" ><i class="fa fa-plus-circle fa-lg"></i> Chemistry </a>
														</div>
														<div id="collapse_6" class="panel-collapse collapse" role="tabpanel">
															<div class="panel-body pa-15">
																<div class="row">
																	<div class="table-wrap">
																		<div class="table-responsive">
																			<table id="" class="table table-bordered display pb-30" >
																				<thead class="th_background">
																					<tr>
																						<th>Chapter Name</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 1
																								</label>
																							</div>
																						</td>
																					</tr>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 2
																								</label>
																							</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="heading_7">
															<a class="collapsed" role="button" data-toggle="collapse"  href="#collapse_7" aria-expanded="false"><i class="fa fa-plus-circle fa-lg"></i> Maths</a>
														</div>
														<div id="collapse_7" class="panel-collapse collapse" role="tabpanel">
															<div class="panel-body pa-15">
																<div class="row">
																	<div class="table-wrap">
																		<div class="table-responsive">
																			<table id="" class="table table-bordered display pb-30" >
																				<thead class="th_background">
																					<tr>
																						<th>Chapter Name</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 1
																								</label>
																							</div>
																						</td>
																					</tr>
																					<tr>
																						<td class="">
																							<div class="checkbox checkbox-success">
																								<input id="checkbox3" type="checkbox">
																								<label for="checkbox3">
																									Chapter - 2
																								</label>
																							</div>
																						</td>
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
										</div>
									</div>
								</div>
							</div>
								
							<div class="row mb-30">
								<div class="col-md-5 col-md-offset-5">
									<div class="button-list mt-25">
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn  btn-warning">Back</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_2.jsp" class="btn  btn-primary">Next</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn  btn-danger">Cancel</a>
									</div>
								</div>
							</div>
								
						</div>	
						
					</div>
				</div>
			<!-- /Row -->
			
			<%@include file="/jsp/master/footer.jsp" %>
						</div>
		</div>
        <!-- /Main Content -->