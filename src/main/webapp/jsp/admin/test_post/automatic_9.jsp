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
								<div class="col-md-3">
									<h5>Divide paper into two columns </h5>
								</div>
								<div class="col-md-3">
									<div class="row radio radio-info">
										<div class="col-sm-6">
											<input type="radio" name="radio1" id="radio1" value="option1" checked="">
											<label for="radio1">
											Yes
											</label>
										</div>
										<div class="col-sm-6">
											<input type="radio" name="radio1" id="radio1" value="option1" checked="">
											<label for="radio1">
											No
											</label>
										</div>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-md-12">
									<div class="panel-wrapper collapse in">
										<div class="panel-body">
											<div class="table-wrap">
												<div class="table-responsive">
													<table id="" class="table table-bordered display pb-30">
														<thead class="th_background">
															<tr>
																<th>Test Details</th>
																<th>Question Paper</th>
																<th>Key</th>
																<th>Solution</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>
																	<a href="#" class="btn btn-primary">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">Preview</a>
																</td>
																<td>
																	<a href="#" class="btn btn-primary">Preview</a>
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
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_8.jsp" class="btn  btn-warning">Back</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_10.jsp" class="btn  btn-primary">Do you want take print</a>
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