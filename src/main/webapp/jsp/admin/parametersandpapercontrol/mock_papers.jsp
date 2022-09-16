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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Mock</span><span class="main_heading_theme_color"> Papers</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Mains</option>
													<option>NEET</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Practice Zone</label>
												<select multiple class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Simple Practice</option>
													<option>Design Revision Test</option>
													<option>Design Mock Test</option>
													<option>Previous Year Questions</option>
													<option>Wrong & Time Taken Questions</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Test Zone</label>
												<select multiple class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Chapterwise Test</option>
													<option>Subjectwise Test</option>
													<option>Mock Test's</option>
													<option>Previous year Paper's</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Live Zone</label>
												<select multiple class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Full Mock's</option>
													<option>Subjectwise</option>
													<option>Full Syllubus</option>
													<option>Special Group</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Challenge Zone</label>
												<select multiple class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Challenge Test</option>
													<option>Practice Zone</option>
													<option>Test Zone</option>
													<option>Experts Post</option>
													<option>Played List</option>
													<option>Online Students</option>
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a href="<?php echo base_url();?>admin/controlling/mock_papers_view" class="btn btn-primary">Submit</a></div>
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