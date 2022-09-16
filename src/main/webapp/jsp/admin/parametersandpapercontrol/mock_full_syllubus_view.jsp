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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Mock Paper</span><span class="main_heading_theme_color"> Full Syllubus View</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="light-grey-hr mb-10">
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
                                    <table id="datable_1" class="table table-bordered display pb-30">
                                        <thead class="th_background">
                                            <tr>
                                                <th>Chapter Name</th>
                                                <th>Minimum Questions</th>
                                                <th>Maximum Questions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Chapter-1</td>
                                                <td><input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="3"></td>
                                                <td><input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="4"></td>
                                            </tr>
                                            <tr>
                                                 <td>Chapter-2</td>
                                                <td><input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="3"></td>
                                                <td><input type="text" id="example-email" name="example-email" class="form-control" placeholder="" value="4"></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
							<a href="<?php echo base_url();?>admin/controlling/mock_paper_full_syllubus"><span class="btn btn-primary pull-center">Edit</span></a>
							<a href="<?php echo base_url();?>admin/controlling/mock_paper_full_syllubus"><span class="btn btn-danger pull-center">Cancel</span></a>
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