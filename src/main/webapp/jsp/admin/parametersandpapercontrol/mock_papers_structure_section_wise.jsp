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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Mock Papers</span><span class="main_heading_theme_color">  Structure Add</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">No.of Questions</label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter No.of Questions" value="90">
								</div>
							</div>	
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list">
									<a href="<?php echo base_url();?>admin/controlling/mock_papers_structure_subject_wise" class="btn btn-danger btn-outline fancy-button btn-0">Subject wise</a>
									<a href="<?php echo base_url();?>admin/controlling/mock_papers_structure_section_wise" class="btn btn-danger">Section wise</a>
								</div>
							</div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row form-group">
									<div class="table-wrap">
										<div class="table-responsive">
											<table class="table table-bordered display pb-30">
												<thead class="th_background">
													<tr>
														<th>Subject Name</th>
														<th>Section Name</th>
														<th>Section Name</br>((to Display in Test Taking Screen)</th>
														<th>Type of Question</br>(Assigned to Layout)</th>
														<th>No. of Questions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox" checked="checked">
														<label for="checkbox3">
															Physics
														</label>
													</div>
												</td>
												<td>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>section-1</option>
														<option>section-2</option>
														<option>section-3</option>
														<option>section-4</option>
													</select>
												</td>
												<td>
													<input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="3">
												</td>
												<td>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Layout-1</option>
														<option>Layout-2</option>
														<option>Layout-3</option>
														<option>Layout-4</option>
													</select>
												</td>
												 <td>
													<div class="col-md-4">
														<input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="3">
													</div>
													<div class="col-md-4">
														<a href="" class=""><i class="fa fa-plus-circle fa-3x green"></i></a>>
													</div>
												</td>
													</tr>
												   
												</tbody>
											</table>
										</div>
									</div>
									<a href="<?php echo base_url();?>admin/controlling/mock_papers_view" class="btn  btn-primary pull-center">Assign All Selected</a>	
								</div>	
						    </div>
						</div>
						
						
						
					</div>
					
				</div>
			</div>
			<!-- /Row -->
			</div>
			<?php echo $footer;?>
	</div>
	<!-- /Main Content -->
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>