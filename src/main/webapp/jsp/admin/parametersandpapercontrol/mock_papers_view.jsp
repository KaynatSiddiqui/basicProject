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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Mock</span><span class="main_heading_theme_color"> Papers</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="light-grey-hr mb-10">
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
                                                            <th>S.No</th>
                                                            <th>Category</th>
                                                            <th>Exam type</th>
                                                            <th>Zone Type</th>
                                                            <th>Test Type</th>
                                                            <th>Parameters</th>
                                                            <th>Mock Structure</th>
                                                            <th>Add Parameters</th>
                                                            <th>Add Mock Paper</br>Structure</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Engineering</td>
                                                            <td>MAINS</td>
                                                            <td>
                                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>Practice Zone</option>
																	<option>Test Zone</option>
																	<option>Live Zone</option>
																	<option>Challenge Zone</option>
																</select>
                                                            </td>
															 <td>
                                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>Mock Test</option>
																	<option>Chapterwise Test</option>
																	<option>Subjectwise Test</option>
																</select>
                                                            </td>
                                                            <td><a href="<?php echo base_url();?>admin/controlling/mock_papers_preview" class="btn btn-primary">View</a></td>
                                                            <td><a href="<?php echo base_url();?>admin/controlling/mock_papers_preview" class="btn btn-success">View</a></td>
                                                            <td><a href="<?php echo base_url();?>admin/controlling/mock_papers_add_params" class="btn btn-warning">Add Params</a></td>
                                                            <td><a href="<?php echo base_url();?>admin/controlling/mock_papers_structure_subject_wise" class="btn btn-info">Add Mock</a></td>
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
        </div>
        <!-- /Row -->
			</div>
			<?php echo $footer;?>
		</div>
        <!-- /Main Content -->