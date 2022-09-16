<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/solid.css" integrity="sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css" integrity="sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6" crossorigin="anonymous">
	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
					
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12" id="profile">
						<div class="panel panel-default card-view">
							<div class="panel-heading mb-20">
								<div class="col-sm-5 pull-left">
									<!-- <h6 class="panel-title txt-dark"><span class="dashboard_heading">Profile</span></h6> -->
									<img src="<%=request.getContextPath()%>/assets/images/students/profile/profile.png" class=" img-responsive" style="max-width:40%;">
								</div>
								<!-- <div class="col-sm-4" id="head">
									<h6 class="panel-title txt-dark"><span class="profile_category_heading" id="cate"></span></h6>
								</div> -->
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								
								
								<div class="row mt-10">
									<div class="col-sm-6 col-sm-offset-2">
										<div class="row">
											<div class="col-sm-12">
												<form>
													<div class="row" id="profile">
														 <div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-user prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Name</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdname">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="fa fa-id-badge" aria-hidden="true"> -->
															<i class="active fa fa-id-card-o prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Account ID</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="accountid">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															  <i class="active fa fa-mobile prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Phone</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="phonenum">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															 <i class="active fa fa-envelope prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Email ID</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdemail">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															  <i class="active 	fa fa-map-pin prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">State</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdstate">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															 <i class="active fa fa-map-marker prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">City</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdcty">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-venus-mars prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Gender</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="gender">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-pie-chart prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Category</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="catprofile">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-edit prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Examtype</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="examtypeprofile">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-mortar-board prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Standard</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="standardprofile">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="fa fa-book prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Branch</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="branchprofile">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="fa fa-location-arrow prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Caste</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="casteprofile">
																
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-mortar-board prefix" style="color:red;"></i>
																<label class="control-label mb-5 bold">Present class</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="presentclass">
																
															</div>
														</div> 
													<!-- 	<div class="col-md-12 form-group">
															<div class="col-md-4">
																<label class="control-label mb-5 bold">School/College Name</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="collegename">
																
															</div>
														</div> -->
														
														<!-- <div class="col-md-12 form-group">
															<div class="col-md-4">
																<label class="control-label mb-5 bold">Subscribed</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="subscribed">
																
															</div>
														</div>  -->
														
													</div>
													<div class="row mb-20">
														<div class="col-md-8 col-md-offset-3">
														<div class="button-list mt-25">
															<!-- <a href="catselect.jsp?ref=prof" class="btn  btn-warning">Update Category Selection</a> -->
															<a href="#" data-toggle="modal" data-target="#changpass" class="btn  btn-danger">Change Password</a>
															<a href="profile_update.jsp" class="btn  btn-primary">Update Profile</a>
														</div>
													</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<div class='col-md-12 form-group'>
														<div class='col-md-4'>
															<label class='control-label mb-5 bold'>Photo</label>
														</div>
														<div class='col-md-1'>:</div>
														<div class='col-md-7'><img id='img' height='150' src="" class='student_profile_img'></div>
													</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			<!-- /Row -->
	</div>
	<div class="modal fade" id="changpass" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-body">

							<!-- Row -->
							<div class="row">
								<div class="col-sm-12">
									<div class="panel panel-default card-view">
										<div class="panel-heading mb-20">
											<div class="col-sm-5 pull-left">
												<h6 class="panel-title txt-dark">
													<span class="dashboard_heading">Change Password</span>
												</h6>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="panel-body">


											<div class="row mt-10">
												<div class="col-sm-10 col-sm-offset-2">
													<div class="row">
														<div class="col-sm-12">
															<form>
																<div class="row">
																	<div class="col-md-12 form-group">
																		<div class="col-md-4">
																			<label class="control-label mb-5 bold">Current
																				Password</label>
																		</div>
																		<div class="col-md-1">:</div>
																		<div class="col-md-6">
																			<input type="password" id="curntpass"
																				name="example-email" class="form-control"
																				placeholder="Enter Current Password" value="">
																		</div>
																	</div>
																	<div class="col-md-12 form-group">
																		<div class="col-md-4">
																			<label class="control-label mb-5 bold">New
																				Password</label>
																		</div>
																		<div class="col-md-1">:</div>
																		<div class="col-md-6">
																			<input type="password" id="newpass"
																				name="example-email" class="form-control"
																				placeholder="Enter New Password" value="">
																		</div>
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>

											<div class="row mb-20">
												<div class="col-md-7 col-md-offset-5">
													<div class="button-list mt-25">
														<a class="btn  btn-danger" onclick='changepass()'>Change
															Password</a>
													</div>
												</div>
											</div>


										</div>

									</div>
								</div>
							</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>
		  		$(document).ready(function(){
		  			getStudentsDetails();
		  		});
		  </script> 
 