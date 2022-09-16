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
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row mt-40">
										<div class="col-sm-12">
											<h6 class="panel-title txt-dark mb-5"><span class="main_heading_theme_color font-18"> Your Institution Header Here</span></h6>
											<div class="form-group">
												<textarea id="example-email" name="example-email" class="form-control ckeditor" placeholder="Enter Comments"></textarea>
											</div>
										</div>
										
										<div class="col-sm-12">
											<h6 class="panel-title txt-dark mb-5"><span class="main_heading_theme_color font-18"> Your Institution Footer Here</span></h6>
											<div class="form-group">
												<textarea id="example-email" name="example-email" class="form-control ckeditor" placeholder="Enter Comments"></textarea>
											</div>
										</div>
										
										<div class="col-sm-12">
											<h6 class="panel-title txt-dark mb-5"><span class="main_heading_theme_color font-18">General instructions you want to keep</span></h6>
											<div class="form-group">
												<textarea id="example-email" name="example-email" class="form-control ckeditor" placeholder="Enter Comments"></textarea>
											</div>
										</div>
									</div>
									<div class="row mb-30">
										<div class="col-md-7 col-md-offset-4">
											<div class="button-list mt-25">
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_5.jsp" class="btn  btn-warning">Back</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_9.jsp" class="btn  btn-primary">Get Papers</a>
												<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn  btn-danger">Cancel</a>
											</div>
										</div>
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