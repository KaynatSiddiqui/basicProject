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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Exam</span><span class="main_heading_theme_color"> Info</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<?php echo base_url();?>admin/exam_info" class="btn btn-danger btn-outline fancy-button btn-0">All Posts</a>
										<a href="<?php echo base_url();?>admin/exam_info/create_result" class=" btn btn-danger btn-outline fancy-button btn-0">Create Result</a>
										<a href="<?php echo base_url();?>admin/exam_info/post_new" class=" btn btn-danger">Post New</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-3 col-md-offset-1">
												<div class="form-group">
													<label class="control-label mb-5 bold">Category</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option selected="selected">Category-1</option>
														<option>Category-2</option>
													</select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
															<option>--- Select ---</option>
															<option selected="selected">Mains</option>
															<option>Advanced</option>
														</select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label mb-5 bold">Result</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option selected="selected">Result-1</option>
														<option>Result-2</option>
														<option>Result-3</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<textarea class="ckeditor" id="example-email" name="example-email" class="form-control mt-30 mb-30" placeholder="Enter Topic Name">Your Text Here</textarea>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-5">
												<div class="button-list mt-25">
													<a href="<?php echo base_url();?>admin/exam_info" class="btn  btn-primary">Submit</a>
													<a href="<?php echo base_url();?>admin/exam_info" class="btn  btn-danger">cancel</a>
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
		<?php echo $footer;?>
	</div>
	<!-- /Main Content -->