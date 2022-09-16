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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Post doubt</span><span class="main_heading_theme_color"> Experts logins (Admin)</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list">
									<a href="<?php echo base_url();?>admin/post_doubt/experts_logins" class="btn btn-danger">Assigned</a>
                                    <a href="<?php echo base_url();?>admin/post_doubt/assign" class="btn btn-danger btn-outline fancy-button btn-0"> Assign</a>
								</div>
							</div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
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
											    <th>Experts ID’s</th>
											    <th>Class</th>
												<th>Subject</th>
												<th>Status</th>
												<th>Change Password</th>
												<th>Deactive</th>
											</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td>													
														<a href="#"><span class="btn btn-primary btn-rounded status_btn text-center">Active</span></a>
													</td>
													<td>													
														<a href="<?php echo base_url();?>admin/post_doubt/change_password" class="btn btn-primary">Change Password</a>
													</td>
													<td>													
														<a href="#" class="btn btn-danger">Delete</a>
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
			<?php echo $footer;?>
		</div>
        <!-- /Main Content -->