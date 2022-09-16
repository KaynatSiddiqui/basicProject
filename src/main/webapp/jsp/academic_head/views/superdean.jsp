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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Users </span><span class="main_heading_theme_color">View</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-0">
							<div class="row">
								<div class="col-sm-12 mb-20">
									<?php echo $sub_menu;?>
								</div>
							</div>
						</div>
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table table-bordered display pb-30" >
												<thead class="th_background">
													<tr>
														<th>Photo</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Mobile Number</th>
														<th>Email</th>
														<th>Gender</th>
														<th>Pin Number</th>
														<th>Qualification</th>
														<th>Change Password</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><img src="<%= AppConstants.BASE_URL %>assets/images/dean/default.png" class="sky_blue_border" width="60"></td>
														<td>AAA</td>
														<td>BBB</td>
														<td>1111111111</td>
														<td>TEST@gmail.com</td>
														<td>Male</td>
														<td>1234</td>
														<td>Test...</td>
														<td>
															<a class="btn btn-danger" data-toggle="tooltip" data-original-title="Change Password">Change Password</a>
														</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="width-150">
																<a class="btn btn-preview btn-icon-anim btn-circle mr-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="<%= AppConstants.BASE_URL %>academic_head/edit_users_list/<?php echo $sub_active;?>/1" class="btn btn-edit btn-icon-anim btn-circle mr-5" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td><img src="<%= AppConstants.BASE_URL %>assets/images/dean/default.png" class="sky_blue_border" width="60"></td>
														<td>AAA</td>
														<td>BBB</td>
														<td>1111111111</td>
														<td>TEST@gmail.com</td>
														<td>Male</td>
														<td>1234</td>
														<td>Test...</td>
														<td>
															<a class="btn btn-danger" data-toggle="tooltip" data-original-title="Change Password">Change Password</a>
														</td>
														<td>
															<a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="width-150">
																<a class="btn btn-preview btn-icon-anim btn-circle mr-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="<%= AppConstants.BASE_URL %>academic_head/edit_users_list/<?php echo $sub_active;?>/1" class="btn btn-edit btn-icon-anim btn-circle mr-5" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
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
				<!-- /Row -->
				</div>
				<!--<?php echo $footer;?>-->
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->