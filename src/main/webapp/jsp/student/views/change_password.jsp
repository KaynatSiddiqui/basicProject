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
							<div class="panel-heading mb-20">
								<div class="col-sm-5 pull-left">
									<h6 class="panel-title txt-dark"><span class="dashboard_heading">Change Password</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								
								
								<div class="row mt-10">
									<div class="col-sm-6 col-sm-offset-2">
										<div class="row">
											<div class="col-sm-12">
												<form>
													<div class="row">
														<div class="col-md-12 form-group">
															<div class="col-md-4">
																<label class="control-label mb-5 bold">Current Password</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="password" id="curntpass" name="example-email" class="form-control" placeholder="Enter Current Password" value="">
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
																<label class="control-label mb-5 bold">New Password</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="password" id="newpass" name="example-email" class="form-control" placeholder="Enter New Password" value="">
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
																<label class="control-label mb-5 bold">Confirm New Password</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="password" id="conpass" name="example-email" class="form-control" placeholder="Enter Confirm New Password" value="">
															</div>
														</div>
														
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mb-20">
										<div class="col-md-5 col-md-offset-5">
											<div class="button-list mt-25">
												<a class="btn  btn-danger" onclick='changepass()'>Change Password</a>
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
	        