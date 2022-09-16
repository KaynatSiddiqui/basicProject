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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">User </span><span class="main_heading_theme_color">Creation</span></h6>
							</div>
							<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
							<div class="col-sm-12">
								<?php echo $sub_menu;?>
							</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form method="post" action="<%= AppConstants.BASE_URL %>academic_head/add_new_users.jsp/<?php echo $sub_active;?>">
										<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Photo </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<div class="form-group mb-0">
														<div class="fileinput fileinput-new input-group" data-provides="fileinput">
															<div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
															<span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>
															<input type="file" name="" id="photo">
															</span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a> 
														</div>
													</div>
													<small class="red font-12">.jpg/.png only Accepted & Image size should be less than 100KB</small>
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">First Name </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="firstName" name="" class="form-control" placeholder="Enter First Name">
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
													<input type="email" id="lastName" name="example-email" class="form-control" placeholder="Enter Last Name">
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
													<input type="email" id="mobile" name="example-email" class="form-control" placeholder="Enter Mobile Number">
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
													<input type="email" id="email" name="example-email" class="form-control" placeholder="Enter Email Id">
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
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="gender">
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
													<input type="email" id="desgination" name="example-email" class="form-control" placeholder="Enter Designation">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Qualification</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="qualification" name="example-email" class="form-control" placeholder="Enter Qualification">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Others</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<textarea id="others" name="others" class="form-control"></textarea>
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
													<input type="email" id="pin" name="pin" class="form-control" placeholder="Enter Pin Number">
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
													<input type="email" id="repin" name="repin" class="form-control" placeholder="Enter Re Pin Number">
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
													<input type="email" id="pwd" name="pwd" class="form-control" placeholder="Enter Password">
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
													<input type="email" id="confirmpwd" name="example-email" class="form-control" placeholder="Enter Re-password">
												</div>
											</div>	
										</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<input type="submit" class="btn  btn-primary" value="Add" onclick="registerUsers();">
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
				<!--<?php echo $footer;?>-->
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->