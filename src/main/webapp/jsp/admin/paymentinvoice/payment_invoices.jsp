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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Payment</span><span class="main_heading_theme_color"> Invoices</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10">
                    <div class="row">
                        <div class="col-sm-12">
                            <form>
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">From Date :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">To Date :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Category :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Category 1</option>
													<option>Category 2</option>
												</select>
                                            </div>
                                        </div>
                                    </div>
									<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Exam Type :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Exam Type 1</option>
													<option>Exam Type 2</option>
												</select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">State :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Delhi</option>
													<option>Telangana</option>
												</select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">City :</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>New Delhi</option>
													<option>Hyderabad</option>
												</select>
                                            </div>
                                        </div>
                                    </div>
									<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <a class="btn btn-primary">Submit</a>
                                    </div>
                                </div>
                            </form>
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
                                    <table id="datable_1" class="table table-bordered display pb-30">
                                        <thead class="th_background">
                                            <tr>
                                                <th>Product Type</th>
                                                <th>Student ID</th>
                                                <th>Student Name</th>
                                                <th>State</th>
                                                <th>City</th>
                                                <th>Category</th>
                                                <th>Exam Type</th>
                                                <th>Class</th>
                                                <th>Product Name</th>
                                                <th>Subscribed Period</th>
                                                <th>Amount</th>
                                                <th>Product Details</th>
                                                <th>Invoice Download</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Product Type</td>
                                                <td>Student ID</td>
                                                <td>Student Name</td>
                                                <td>State</td>
                                                <td>City</td>
                                                <td>Category</td>
                                                <td>Exam Type</td>
                                                <td>Class</td>
                                                <td>Product Name</td>
                                                <td>Subscribed Period</td>
                                                <td>Amount</td>
                                                <td>Product Details</td>
                                                <td>Invoice Download</td>
                                            </tr>
                                            <tr>
                                                <td>Product Type</td>
                                                <td>Student ID</td>
                                                <td>Student Name</td>
                                                <td>State</td>
                                                <td>City</td>
                                                <td>Category</td>
                                                <td>Exam Type</td>
                                                <td>Class</td>
                                                <td>Product Name</td>
                                                <td>Subscribed Period</td>
                                                <td>Amount</td>
                                                <td>Product Details</td>
                                                <td>Invoice Download</td>
                                            </tr>
                                            <tr>
                                                <td>Product Type</td>
                                                <td>Student ID</td>
                                                <td>Student Name</td>
                                                <td>State</td>
                                                <td>City</td>
                                                <td>Category</td>
                                                <td>Exam Type</td>
                                                <td>Class</td>
                                                <td>Product Name</td>
                                                <td>Subscribed Period</td>
                                                <td>Amount</td>
                                                <td>Product Details</td>
                                                <td>Invoice Download</td>
                                            </tr>
                                            <tr>
                                                <td>Product Type</td>
                                                <td>Student ID</td>
                                                <td>Student Name</td>
                                                <td>State</td>
                                                <td>City</td>
                                                <td>Category</td>
                                                <td>Exam Type</td>
                                                <td>Class</td>
                                                <td>Product Name</td>
                                                <td>Subscribed Period</td>
                                                <td>Amount</td>
                                                <td>Product Details</td>
                                                <td>Invoice Download</td>
                                            </tr>
                                            <tr>
                                                <td>Product Type</td>
                                                <td>Student ID</td>
                                                <td>Student Name</td>
                                                <td>State</td>
                                                <td>City</td>
                                                <td>Category</td>
                                                <td>Exam Type</td>
                                                <td>Class</td>
                                                <td>Product Name</td>
                                                <td>Subscribed Period</td>
                                                <td>Amount</td>
                                                <td>Product Details</td>
                                                <td>Invoice Download</td>
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