<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

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
							<!--<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Title </span><span class="main_heading_theme_color">here</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>-->
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<?php echo $menu;?>
								</div>
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
														<option>Mains</option>
														<option>NEET</option>
													</select>
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
													<label class="control-label mb-5 bold">Unit</label>
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
													<label class="control-label mb-5 bold">Chapter</label>
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
													<label class="control-label mb-5 bold">Topic</label>
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
													<label class="control-label mb-5 bold">Type Of Qns</label>
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
													<label class="control-label mb-5 bold">Previous Year</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option>
													</select>
												</div>	
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="center"><a class="btn btn-primary">Submit</a></div>
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
											<table id="datable_1" class="table table-bordered display pb-30" >
												<thead class="th_background">
													<tr>
														<th>Q Id</th>
														<th>Exam Type</th>
														<th>Class</th>
														<th>Subject</th>
														<th>Unit</th>
														<th>Chapter</th>
														<th>Topic</th>
														<th>Type of Qn</th>
														<th>Previous Year</th>
														<th>Other Compitive Previous Year</th>
														<th>Last Updated date</th>
														<th>Comment</th>
														<th>Previous</th>
														<th>Edit</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Live Exam</td>
														<td>10th Class</td>
														<td>Mathematics</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>Topic 1</td>
														<td>Multiple Choice</td>
														<td>Tough</td>
														<td>Tough</td>
														<td>Tough</td>
														<td>Tough</td>
														<td>Tough</td>
														<td>Tough</td>
														<td>Tough</td>
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
				<!--<?php echo $footer;?>-->
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->