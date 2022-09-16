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
									<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Automatic</span><span class="test_post_title_third"> - Print Paper</span></h6>
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
													<table id="" class="table table-bordered display pb-30">
														<thead class="th_background">
															<tr>
																<th>Test Details</th>
																<th>Question</th>
																<th>Key</th>
																<th>Solution</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>
																	<a href="#" class="btn btn-primary">PDF</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">PDF</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">PDF</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">PDF</a>
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
							<div class="row">
								<div class="col-md-6 col-md-offset-4">
									<div class="button-list mt-25">
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn  btn-info">You can take print here / in history</a>
									</div>
								</div>
							</div>	
							<div class="row mb-30">
								<div class="col-md-4 col-md-offset-5">
									<div class="button-list mt-25">
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger">Close</a>
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