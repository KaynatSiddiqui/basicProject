
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
<style>
.discussionbg{
	background: #fff;
	border: 2px solid #fff;
}

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
					<div class="panel panel-default card-view discussionbg">
						<div class="panel-heading">
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Discussion Forum </span><span class="main_heading_theme_color">  Post Question</span></h6>
							</div>
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="row mb-20">
							<div class="col-sm-12">
								<div class="button-list">
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum.jsp" class="btn btn-danger btn-outline fancy-button btn-0">All</a>
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum_saved.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Saved Threads</a>
									<a href="<%= AppConstants.BASE_URL %>student/discussionforum/discussion_forum_post_new.jsp" class="btn btn-danger">Post Your Question </a>
								</div>
							</div>
						</div>
						<div class="panel-body pa-0">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-12 form-group">
												<div class="col-md-2">
													<label class="control-label mb-5 bold">Doubt</label>
												</div>
												<div class="col-md-1">:</div>
												<div class="col-md-9">
													<textarea class="ckeditor" id="example-email" name="example-email" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea>
												</div>
											</div>
											<div class="col-md-12 form-group">
												<div class="col-md-2">
													<label class="control-label mb-5 bold">Image</label>
												</div>
												<div class="col-md-1">:</div>
												<div class="col-md-9">
													<div class="form-group mb-30">
														<div class="fileinput fileinput-new input-group" data-provides="fileinput">
															<div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
															<span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>
															<input type="file" name="...">
															</span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a> 
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-12">
												
											</div>
										</div>
										<div class="row mb-20">
											<div class="col-md-6 col-md-offset-5">
												<div class="button-list mt-25">
													<a href="<?php echo base_url();?>student/discussion_forum" class="btn  btn-danger">Back</a>
													<a href="<?php echo base_url();?>student/discussion_forum" class="btn  btn-primary">Submit</a>
												</div>
											</div>
										</div>
									</form>
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
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>