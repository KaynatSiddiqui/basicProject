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
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<?php echo $menu;?>
								</div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Edit </span><span class="main_heading_theme_color">User</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form method="post" action="<?php echo base_url();?>superadmin/add_new_users">
										<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">First Name </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter First Name">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Last Name </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Last Name">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Mobile Number </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Mobile Number">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Email Id </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Email Id">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Gender</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline">
															<option value="0">MALE</option>
															<option value="1">FEMALE</option>
														</select>
													</div>
												</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Designation</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Designation">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Pin Number</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Pin Number">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Re-Pin Number </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Re Pin Number">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Password</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Password">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Re-password</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Re-password">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">User Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="type" Onchange="get_val();">
															<option value="0">SUB ADMIN</option>
															<option value="1">EXPERT</option>
															<option value="2">ACADAMIC HEAD</option>
														</select>
													</div>
												</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="features">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Sub Admin Features</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														Test 1<input type="checkbox" name="features[]"/>
														Test 2<input type="checkbox" name="features[]"/>
														Test 3<input type="checkbox" name="features[]"/>
														Test 4<input type="checkbox" name="features[]"/>
													</div>
												</div>	
										</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>superadmin/users_list/admin_users_list.jsp" class="btn  btn-info">Back</a>
													<input type="submit" class="btn  btn-primary" value="UPDATE"/>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				<!-- /Row -->
				</div>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
<script type="text/javascript">function get_val(){var val=$("#type").val();if(val!=0){$("#features").hide();}else{$("#features").show();}}</script>
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>