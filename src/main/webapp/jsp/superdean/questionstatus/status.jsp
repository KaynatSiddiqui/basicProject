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
							<div class="row">
								<div class="col-sm-12">
									<?php echo $menu;?>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option>
													</select>
												</div>	
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Status</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">SME ID</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>SME ID</option>
														<option>SME ID</option>
														<option>SME ID</option>
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
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table superdean_border  display pb-30" >
												<thead class="th_background">
													<tr>
														<th>SME ID</th>
														<th>Q ID</th>
														<th>Exam Type</th>
														<th>Standard</th>
														<th>Subject</th>
														<th>Chapter</th>
														<th>Topic</th>
														<th>Comment</th>
														<th>Approval</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>SME01</td>
														<td>2</td>
														<td>Live Exam</td>
														<td>10th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction Introduction</td>
														<td>Pending</td>
														<td>
															<a href="" class="btn btn-primary btn-rounded status_btn" data-toggle="tooltip" data-original-title="Approve">Approve</a>
														</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>SME03</td>
														<td>5</td>
														<td>Mock</td>
														<td>10th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction</td>
														<td>Pending</td>
														<td>
															<a href="" class="btn btn-danger btn-rounded status_btn" data-toggle="tooltip" data-original-title="Reject">Reject</a>
														</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
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
				<?php echo $footer;?>
		</div>
        <!-- /Main Content -->