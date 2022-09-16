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
								<div class="col-sm-6 col-xs-12 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Exam</span><span class="main_heading_theme_color"> Info</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<?php echo base_url();?>admin/exam_info" class="btn btn-danger">All Posts</a>
										<a href="<?php echo base_url();?>admin/exam_info/create_topic" class=" btn btn-danger btn-outline fancy-button btn-0">Create Topic</a>
										<a href="<?php echo base_url();?>admin/exam_info/post_new" class=" btn btn-danger btn-outline fancy-button btn-0">Post New</a>
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
													<label class="control-label mb-5 bold">Category</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Category-1</option>
														<option>Category-2</option>
													</select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label mb-5 bold">Topic</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
															<option>--- Select ---</option>
															<option>Topic 1</option>
															<option>Topic 2</option>
														</select>
												</div>
											</div>
											<div class="col-md-2">
												<a href="#" class="btn btn-primary mt-25">Submit</a>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No.</th>
														<th>Category</th>
														<th>Exam Type</th>
														<th>Topic</th>
														<th>Exam Info</th>
														<th>Date & Time</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Category-1</td>
														<td>Exam Type-1</td>
														<td>Topic 1</td>
														<td>The Ministry of Human Resource Development....</td>
														<td>5-Apr-2018</td>
														<td>
															<div class="">
																<a href="<?php echo base_url();?>admin/exam_info/edit" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-success font-24"></i></a>
																<a href="" class="mr-10" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-search-plus text-primary font-24"></i></a>
																<a href="" class="" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Category-1</td>
														<td>Exam Type-1</td>
														<td>Topic 2</td>
														<td>The Ministry of Human Resource Development....</td>
														<td>5-Apr-2018</td>
														<td>
															<div class="">
																<a href="<?php echo base_url();?>admin/exam_info/edit" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-success font-24"></i></a>
																<a href="" class="mr-10" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-search-plus text-primary font-24"></i></a>
																<a href="" class="" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Category-1</td>
														<td>Exam Type-1</td>
														<td>Topic 3</td>
														<td>The Ministry of Human Resource Development....</td>
														<td>5-Apr-2018</td>
														<td>
															<div class="">
																<a href="<?php echo base_url();?>admin/exam_info/edit" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-success font-24"></i></a>
																<a href="" class="mr-10" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-search-plus text-primary font-24"></i></a>
																<a href="" class="" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Category-1</td>
														<td>Exam Type-1</td>
														<td>Topic 1</td>
														<td>The Ministry of Human Resource Development....</td>
														<td>5-Apr-2018</td>
														<td>
															<div class="">
																<a href="<?php echo base_url();?>admin/exam_info/edit" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-success font-24"></i></a>
																<a href="" class="mr-10" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-search-plus text-primary font-24"></i></a>
																<a href="" class="" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Category-1</td>
														<td>Exam Type-1</td>
														<td>Topic 4</td>
														<td>The Ministry of Human Resource Development....</td>
														<td>5-Apr-2018</td>
														<td>
															<div class="">
																<a href="<?php echo base_url();?>admin/exam_info/edit" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-success font-24"></i></a>
																<a href="" class="mr-10" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-search-plus text-primary font-24"></i></a>
																<a href="" class="" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
															</div>
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
											<h5 class="modal-title center" id="exampleModalLabel1">Category - 1</h5>
										</div>
										<div class="modal-body">
											<form>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10 bold">Category :</label> Category - 1
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10 bold">Exam Type :</label> Exam Type-1
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10 bold">Topic :</label> Topic-1
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10 bold">Exam Info :</label>
													<p>
	The Ministry of Human Resource Development, Government of India has notified following two changes in the JEE pattern from 2017:

	1.     There shall be no weightage for the 12th class marks in calculating the ranks in the JEE (Main) examination,

	2.     For the candidates to qualify for the admission in the IITs/NITs/IIITs and such other CFTIs whose admissions are based on the JEE (Advanced)/JEE(Main) ranks, they should have secured at least 75% marks in the 12th class examination, or be in the top 20 percentile in the 12th class examination conducted by the respective Boards. For SC/ST students the qualifying marks would be 65% in the 12th class examination.

	The States of Madhya Pradesh, Haryana, Uttrakhand, Nagaland, Odisha & some other institutions have joined JEE (Main) system, however, their admission criteria will be notified by the concerned authorities. Therefore, the candidates seeking admission to the institutions in these states, which were earlier admitting based on their State level examination, are also advised to fill in the JEE (Main)–2018  application form online. The Paper-1 (B. E./B. Tech.) of JEE (Main) will also be an eligibility test for the JEE (Advanced), which the candidate has to take if he/she is aspiring for admission to the undergraduate programmes offered by the IITs.
													</p>
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10 bold">Date & Time :</label> 5-Apr-2018 4:24:25PM
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