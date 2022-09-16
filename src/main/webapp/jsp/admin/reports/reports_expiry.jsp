<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> Expiry</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list center">
									<a href="<?php echo base_url();?>admin/reports/students_count" class="btn btn-report_inactive">Students Count</a>
									<a href="<?php echo base_url();?>admin/reports/students_usage" class=" btn btn-report_inactive">Students Usage</a>
									<a href="<?php echo base_url();?>admin/reports/live_exam_report" class=" btn btn-report_inactive">Live Exam Report</a>
									<a href="<?php echo base_url();?>admin/reports/sing_up" class=" btn btn-report_inactive">Sign Up</a>
									<a href="<?php echo base_url();?>admin/reports/expiry" class=" btn btn-report_active">Expiry</a>
									<a href="<?php echo base_url();?>admin/reports/status_till" class=" btn btn-report_inactive">Status Till</a>
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
												<label class="control-label mb-5 bold">Expiry Period</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													
													<option>15 days</option>
													<option>30 days</option>
													<option>60 days</option>
													<option>120 days</option>
													<option>180 days</option>
													<option>240 days</option>
													<option>360 days</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">From Date</label>
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
												<label class="control-label mb-5 bold" for="exampleInputuname_2">To Date</label>
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
												<label class="control-label mb-5 bold">Category</label>
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
													<option>Engineering</option>
													<option>Medical</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">State</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
												  <option>Telangana</option>
													<option>Andhra pradesh</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">City</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
												    <option>Hyderabad</option>
													<option>Vijayawada</option>
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
													<th>Student ID</th>
													<th>Student Name</th>
													<th>Application Usage Type </th>
													<th>State</th>
													<th>City</th>
													<th>Phone </th>
													<th>Mail ID</th>
													<th>Parent Name</th>
													<th>Parent Phone</th>
													<th>Parent Mail ID</th>
													<th>Subscribed Product</th>
													<th>Product Duration</th>
													<th>Expiry On</th>
													<th>Send Message(Both Student & Parent)</th>
													<th>Send mail(Both Student)</th>
													</tr>
											 </thead>
											 <tbody>
											  <tr>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												</tr>
												
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
													</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
													</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
													</tr>
											</tbody>
										</table>
										
									</div>
									<div class="pull-right mt-30">
										<a href="#" class="btn btn-warning">Download Report in Excel</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			  </div>
			<!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="creationside"/>
			<input type="hidden" id="ulactive" value="creation_dr"/>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>