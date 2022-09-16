<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<style>
a[title]:hover:after {z-index:9999; content: attr(title); background:#94e2b1; font-size:20px;height:auto; position: absolute;text-align:center;width:200px;}
</style>
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
						<div class="panel panel-default card-view parents_logins_bg">
							<div class="panel-heading mt-10">
								<div class="col-sm-5 pull-left">
									<h6 class="panel-title txt-dark parents_loginsheading"><span class="purple font-24">Welcome to Parent's </span><span class="sky_blue1 font-24"> Login Link</span></h6>
								</div>
								<div class="col-sm-4 col-xs-6 right">
									<a href="<%= AppConstants.BASE_URL %>student/parentlogins/parent_logins_edit.jsp" class="btn btn-parents_logins_add btn-rounded btn-xs">Edit</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row mt-40">
										<div class="col-sm-6 col-sm-offset-3">
											<div class="parents_logins_div">
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="active fa fa-user prefix" style="color: #94e2b1;"></i><span style="padding-left:11px">Student ID(User ID)</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="studentfrmid">
														
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="active fa fa-user prefix" style="color: #94e2b1;"></i><span style="padding-left:11px">Parent name</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="parentlogname">
														
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="active fa fa-mobile prefix" style="color: #94e2b1;"></i><span style="padding-left:11px">Parent phone</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="pphone">
														
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
													<i class="active fa fa-envelope prefix" style="color: #94e2b1;"></i><span style="padding-left:11px">Email</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="pemail">
														
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="fa fa-tasks" aria-hidden="true" style="color: #94e2b1;"></i><span style="padding-left:11px">Occupation</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="occupation">
														
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="fa fa-file-image-o" aria-hidden="true" style="color: #94e2b1;"></i><span style="padding-left:11px">Photo</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5">
														<img id='img' height='150' src="" class='student_profile_img'>
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-6 col-md-6 col-lg-6">
														<i class="fa fa-link" aria-hidden="true" style="color: #94e2b1;"></i><span style="padding-left:11px">Link/De-Link</span>
													</div>
													<div class="col-sm-1" id="">
														<span>:</span>
													</div>
													<div class="col-sm-5" id="linked">
														
													</div>
												</div>
												
												<div class="row mb-20">
													<div class="col-sm-6">
													
														<a href="#" id="viewpwd"  title="" class="btn btn-primary btn-outline"> View Password</a>
													</div>
													<div class="col-sm-6">
														<a href="#" class="btn btn-primary btn-outline"  data-toggle='modal' data-target='#changepwd'> Change Password</a>
													</div>
												</div>
												<div class="row mb-20">
													<div class="col-sm-3 col-sm-offset-3">
														<a href="<%= AppConstants.BASE_URL %>student/parentlogins/parent_logins_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
													</div>
													<div class="col-sm-3">
														<a href="#" onclick="deleteparent(this);" data-id="" id="delete" class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-trash font-18"></i></a>
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
				<div class="modal fade" id="changepwd" tabindex="-1" role="dialog" aria-labelledby="fullexampleModalSuggest">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
										 <div class="modal-header">
														          <h4 class="modal-title">Change password here</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
										<div class="modal-body">
													<div class="panel-body">
														<div class="titleModal">
															<div class="row">
															
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">old Password</label>
							                                            <input type="text" data-style="form-control btn-default btn-outline" value="" id="oldpwd" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                          </div>
							                                    </div>
																 <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">new password</label>
							                                            <input type="password" data-style="form-control btn-default btn-outline" id="newpwd" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                          </div>
							                                    </div>
																 <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Confirm new password</label>
							                                            <input type="password" data-style="form-control btn-default btn-outline" id="cnfpwd" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                          </div>
							                                    </div>
															</div>
																														
                                   						</div>
														</div>
												   
													</div>
													
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success" data-dismiss="modal" data-id="full" onclick="changepwd(this);">Submit</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>
$(document).ready(function(){
	  
	  getparentlogindetails();
	 
})

</script>
