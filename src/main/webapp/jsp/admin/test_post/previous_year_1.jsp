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
								<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Previous Year</span></h6>
							  </div>
							  <div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row mt-40">
								<div class="col-md-12">
									<div class="panel-wrapper collapse in">
										<div class="panel-body">
											<div class="table-wrap">
												<div class="table-responsive">
													<table id="datable_1" class="table display pb-30">
														<thead class="th_background">
															<tr>
																<th>Qn.</th>
																<th>Subject</th>
																<th>Chapter Name</th>
																<th>Type of <br>Question</th>
																<th>Difficulty Level</th>
																<th>Paramater</th>
																<th>Exam Type</th>
																<th>Previous Year</th>
																<th>Other <br>Competitive CET's</th>
																<th>Previous Year</th>
																<th>Preview</th>
																<th>Replace <br>Q's (Within Chapter)</th>
																<th>Replace <br>Q's (within subject)</th>
															</tr>
														</thead>
														<tbody>
															
															<tr>
																<td>1</td>
																<td>Physics</td>
																<td>ChapterChapter name here comes</td>
																<td>Single Correct</td>
																<td>Easy</td>
																<td>Graphical</td>
																<td>Mains</td>
																<td>2016</td>
																<td>EMCET</td>
																<td>2015</td>
																<td>
																	<a href="#" class="btn btn-primary btn-xs">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-danger btn-xs">Replace</a>
																</td>
																<td>
																	<a href="#" class="btn btn-warning btn-xs">Replace</a>
																</td>
															</tr>
															<tr>
																<td>2</td>
																<td>Physics</td>
																<td>ChapterChapterChapter name here comes</td>
																<td>Single Correct</td>
																<td>Easy</td>
																<td>Graphical</td>
																<td>Mains</td>
																<td>2016</td>
																<td>EMCET</td>
																<td>2015</td>
																<td>
																	<a href="#" class="btn btn-primary btn-xs">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-danger btn-xs">Replace</a>
																</td>
																<td>
																	<a href="#" class="btn btn-warning btn-xs">Replace</a>
																</td>
															</tr>
															<tr>
																<td>3</td>
																<td>Physics</td>
																<td>Chapter name here comes</td>
																<td>Single Correct</td>
																<td>Easy</td>
																<td>Graphical</td>
																<td>Mains</td>
																<td>2016</td>
																<td>EMCET</td>
																<td>2015</td>
																<td>
																	<a href="#" class="btn btn-primary btn-xs">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-danger btn-xs">Replace</a>
																</td>
																<td>
																	<a href="#" class="btn btn-warning btn-xs">Replace</a>
																</td>
															</tr>
															<tr>
																<td>4</td>
																<td>Physics</td>
																<td>Chapter name here comes</td>
																<td>Single Correct</td>
																<td>Easy</td>
																<td>Graphical</td>
																<td>Mains</td>
																<td>2016</td>
																<td>EMCET</td>
																<td>2015</td>
																<td>
																	<a href="#" class="btn btn-primary btn-xs">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-danger btn-xs">Replace</a>
																</td>
																<td>
																	<a href="#" class="btn btn-warning btn-xs">Replace</a>
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
								
							<div class="row mb-30">
								<div class="col-md-7 col-md-offset-4">
									<div class="button-list mt-25">
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year.jsp" class="btn  btn-warning">Back</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year_2.jsp" class="btn  btn-primary">Show Paper</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year.jsp" class="btn  btn-danger">Cancel</a>
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