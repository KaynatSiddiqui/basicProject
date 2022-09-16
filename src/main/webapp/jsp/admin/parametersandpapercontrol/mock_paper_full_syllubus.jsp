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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Mock Paper</span><span class="main_heading_theme_color"> Full Syllubus</span></h6>
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
                                            <label class="control-label mb-5 bold">Catergory</label>
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
												<option>Advanced</option>
											</select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="col-md-12">
												<div class="center"><a class="btn btn-primary">Submit</a></div>
											</div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10">
                </div>
                <div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-1 col-xs-6 pull-right right">
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
											<table id="datable_1" class="table display pb-30">
												<thead class="th_background">
													<tr>
														<th>Category</th>
														<th>Exam Type</th>
														<th colspan="2">Subject-1 Name</th>
														<th colspan="2">Subject-2 Name</th>
														<th colspan="2">---------</th>
														<th colspan="2">Subject-n Name</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Engineering</td>
														<td>MAINS</td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
													 </tr>
													<tr>
														<td>Engineering</td>
														<td>MAINS</td>
													   <td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_add"><span class="btn btn-info status_btn">Add</span></a></td>
														<td><a href="<?php echo base_url();?>admin/controlling/mock_full_syllubus_view"><span class="btn btn-primary status_btn">View</span></a></td>
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
                
            </div>
        </div>
        <!-- /Row -->
			</div>
			<?php echo $footer;?>
		</div>
        <!-- /Main Content -->