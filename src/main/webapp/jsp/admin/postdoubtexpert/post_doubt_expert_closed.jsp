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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Post Doubt(Expert)</span><span class="main_heading_theme_color"> Closed Doubts</span></h6>
							  </div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="<?php echo base_url();?>admin/post_doubt_expert/fresh" class="btn btn-post_doubt_expert_inactive">Fresh</a>
										<a href="<?php echo base_url();?>admin/post_doubt_expert/on_going" class=" btn btn-post_doubt_expert_inactive">Ongoing Doubts</a>
										<a href="<?php echo base_url();?>admin/post_doubt_expert/closed" class=" btn btn-post_doubt_expert_active">Closed Doubts</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mt-10 bold" for="exampleInputuname_2">Exam Type</label>
												<div class="input-group">
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Exam Type 1</option>
													<option>Exam Type 2</option>
												</select>	
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group text-center">
												<label class="control-label mb-5 bold">From</label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>	
										</div>
										<div class="col-md-2">
										    <div class="form-group text-center">
												<label class="control-label mb-5 bold">To</label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mt-10 bold">Class</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Mains</option>
													<option>NEET</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mt-10 bold" for="exampleInputuname_2">Subject</label>
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
								<div class="table-wrap">
									<div class="table-responsive">
										<table id="datable_1" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Student Name</th>
													<th>Student ID</th>
												    <th>City</th>
												    <th>Subject</th>
													<th>Posted on(Date & Time)</th>
													<th>Doubt conversation</th>
												</tr>
											 </thead>
											 <tbody>
												<tr>
													<td>Hari</td>
													<td>123456</td>
													<td>Vijayawada</td>
													<td>Mathematics</td>
													<td>01-Apr-2018, 11:42 AM</td>
													<td>													
														<a href="" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">View</a>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
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