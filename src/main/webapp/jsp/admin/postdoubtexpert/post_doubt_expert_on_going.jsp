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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Post Doubt(Expert)</span><span class="main_heading_theme_color"> Ongoing Doubts</span></h6>
							  </div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="<?php echo base_url();?>admin/post_doubt_expert/fresh" class="btn btn-post_doubt_expert_inactive">Fresh</a>
										<a href="<?php echo base_url();?>admin/post_doubt_expert/on_going" class=" btn btn-post_doubt_expert_active">Ongoing Doubts</a>
										<a href="<?php echo base_url();?>admin/post_doubt_expert/closed" class=" btn btn-post_doubt_expert_inactive">Closed Doubts</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Exam Type 1</option>
													<option>Exam Type 2</option>
												</select>
											</div>	
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Class</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Mains</option>
													<option>NEET</option>
												</select>
											</div>	
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">Subject</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Mains</option>
													<option>NEET</option>
												</select>
											</div>
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary mt-25">Submit</a>
										</div>
									</div>
								</form>
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
								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label mb-5 bold">Period</label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline">
												<option>--- Select Option ---</option>
												<option>Today</option>
												<option>PLast One Week</option>
												<option>All</option>
											</select>
										</div>	
									</div>
								</div>
								<div class="table-wrap">
									<div class="table-responsive">
										<table id="datable_1" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Student Name</th>
													<th>Student ID</th>
												    <th>City</th>
													<th>Standard</th>
													<th>Subject</th>
													<th>Last updated Date, Time</th>
													<th>Last updated by</th>
													<th>Clear Doubt</th>
													<th>Close doubt</th>
												</tr>
											 </thead>
											 <tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td>													
														<a href="" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">View</a>
													</td>
													<td>													
														<a href="#" class="btn btn-danger">Close</a>
													</td>
												 </tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											</div>
											<div class="modal-body">
												<form>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10 bold">Hari(Student) :</label>
														<p>
															how to use zomant?
														</p>
														<p>
															01-Apr-2018
														</p>
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10 bold">Vijay(Expert) :</label>
														<p>
															Expert anser here.....
														</p>
														<p>
															02-Apr-2018
														</p>
													</div>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												<a href="<?php echo base_url();?>admin/post_doubt_expert/reply" class="btn btn-primary" >Reply</a>
											</div>
										</div>
									</div>
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