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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Product Features</span><span class="main_heading_theme_color"> Lock/Unlock</span></h6>
                        </div>
						<div class="col-sm-4 pull-right right">
                            <a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-wrapper collapse in">
                        <div class="panel-body">
							<div class="row mb-10 mt-20">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="<?php echo base_url();?>admin/products_lock_unlock/practice_zone" class="btn btn-product_lock_unlock_inactive">Practice Zone</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/design_zone" class=" btn btn-product_lock_unlock_inactive">Design Zone</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/test_zone" class=" btn btn-product_lock_unlock_inactive">Test Zone</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/live_zone" class=" btn btn-product_lock_unlock_active">Live Zone</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/special_group" class=" btn btn-product_lock_unlock_inactive">Special Group</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/challenge_zone" class=" btn btn-product_lock_unlock_inactive">Chalenge Zone</a>
										<a href="<?php echo base_url();?>admin/products_lock_unlock/learn_concepts" class=" btn btn-product_lock_unlock_inactive">learn Concepts</a>
									</div>
								</div>
							</div>
							<div class="row mt-40 mb-10">
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
													<label class="control-label mb-5 bold">Standard</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>11th</option>
														<option>12th</option>
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Status</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Active</option>
														<option>Expired</option>
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
							<div class="row mt-20 mb-30">
								<div class="col-sm-12">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table table-bordered display pb-30">
												<thead class="th_background">
													<tr>
														<th>Test Name</th>
														<th>Test Type</th>
														<th>Posted Date</th>
														<th>Lock/ Unlock</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Mock Test - 1</td>
														<td>Chapter-wise Test</td>
														<td>17-04-2018</td>
														<td>
															<a href="#"><span class="btn btn-danger status_btn">Unlock</span></a>
														</td>
													</tr>
													<tr>
														<td>Mock Test - 2</td>
														<td>Chapter-wise Test</td>
														 <td>17-03-2018</td>
														<td>
															 <a href="#"><span class="btn btn-primary status_btn">Lock</span></a>
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
            </div>
        </div>
        <!-- /Row -->
			</div>
			<?php echo $footer;?>
		</div>
        <!-- /Main Content -->