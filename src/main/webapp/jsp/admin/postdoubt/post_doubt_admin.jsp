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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Post </span><span class="main_heading_theme_color">doubt(Admin)</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Exam Type 1</option>
													<option>Exam Type 2</option>
													<option>Exam Type 3</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group text-center">
											<label class="control-label mb-5 bold">From</label>
												<input type="password" class="form-control" id="pwd" placeholder="" name="pwd">
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group text-center">
												<label class="control-label mb-5 bold ">To</label>
												<input type="password" class="form-control" id="pwd" placeholder="" name="pwd">
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Class</label>
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
												<label class="control-label mb-5 bold">Subject</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Maths</option>
													<option>Physics</option>
													<option>Chemistry</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Expert name</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Chapter 1</option>
													<option>Chapter 2</option>
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
							<hr class="light-grey-hr mt-5 mb-5">
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
													<th></th>	
													<th>Student name </th>
													<th>Student ID</th>
													<th>City</th>
													<th>Expert name</th>
													<th>Subject</th>
													<th>Posted on</th>
													<th>Doubt conversation</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="checkbox checkbox-success">
															<input id="checkbox3" type="checkbox">
															<label for="checkbox3"></label>
														</div>
													</td>
													<td>Hari</td>
													<td>123456 <a href="" class="btn btn-danger btn-xs">Details</a></td>
													<td>Vijayawada</td>
													<td>Vijay</td>
													<td>Mathematics</td>
													<td>7-Apr-2018, 10:10 AM</td>
													<td>						 
														<a href="<?php echo base_url();?>admin/post_doubt/preview" class="btn btn-success">View</a>
													</td>
												</tr>
												<tr>
													<td>
														<div class="checkbox checkbox-success">
															<input id="checkbox3" type="checkbox">
															<label for="checkbox3"></label>
														</div>
													</td>
													<td>Hari</td>
													<td>123456 <a href="" class="btn btn-danger btn-xs">Details</a></td>
													<td>Vijayawada</td>
													<td>Vijay</td>
													<td>Mathematics</td>
													<td>7-Apr-2018, 10:10 AM</td>
													<td>						 
														<a href="<?php echo base_url();?>admin/post_doubt/preview" class="btn btn-success">View</a>
													</td>
												  </tr>
													
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
						<div class="pull-right">
							<a href="#" class="btn btn-danger">Delete</a>
							<a href="#" class="btn btn-warning">Download</a>
						</div>
                        </div>
					</div>
			<!-- /Row -->
		</div>
		<?php echo $footer;?>
	</div>
	<!-- /Main Content -->