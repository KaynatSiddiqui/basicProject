<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
		<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						
					</div>
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
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-12 col-sm-offset-4">
											<div class="button-list">
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger">Engineering</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Medical</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Foundation</a>
											</div>
										</div>
									</div>
									<div class="row mt-20">
										<div class="col-sm-12 col-sm-offset-4">
											<div class="button-list">
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Mains</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger">Advanced</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">BITSAT</a>
											</div>
										</div>
									</div>
									<div class="row mt-20">
										<div class="col-sm-12 col-sm-offset-4">
											<div class="button-list">
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger">11th & 12th</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">11th</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn btn-danger btn-outline fancy-button btn-0">12th</a>
											</div>
										</div>
									</div>
									
									<div class="row mt-40">
										<div class="col-sm-12 col-sm-offset-3">
											<form>
												<div class="row">
													<div class="col-md-2">
														<div class="form-group">
															<label class="control-label mb-5 bold">Zone Type</label>
															<select class="selectpicker" data-style="form-control btn-default btn-outline">
																<option>--- Select ---</option>
																<option>Test zone</option>
																<option>Live zone</option>
																<option>Challenge zone</option>
															</select>
														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group">
															<label class="control-label mb-5 bold">Test Type</label>
															<select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>Chapter-wise Test</option>
																	<option>Subject-wise Test</option>
																	<option>Mock Test</option>
																</select>
														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group">
															<label class="control-label mb-5 bold">Sepcial Group</label>
															<select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>Maths Group</option>
																	<option>Physics Group</option>
																	<option>Chemistry Group</option>
																</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="center"><a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_1.jsp" class="btn btn-primary">Next</a></div>
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
				<input type="hidden" id="creationactive" value="testpostside"/>
			    <input type="hidden" id="ulactive" value="test_post_dr"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        <script>
    	$("#automatic").addClass('active-page');
     		
     	</script>