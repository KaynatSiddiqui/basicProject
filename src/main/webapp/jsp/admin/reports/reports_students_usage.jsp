
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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> Students Usage</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list center">
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_count.jsp" class="btn btn-report_inactive">Students Count</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_usage.jsp" class=" btn btn-report_active">Students Usage</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_live_exam_report_list.jsp" class=" btn btn-report_inactive">Live Exam Report</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_sing_up.jsp" class=" btn btn-report_inactive">Sign Up</a>
									<%-- <a href="<%= AppConstants.BASE_URL %>admin/reports/expiry" class=" btn btn-report_inactive">Expiry</a> --%>
									<%-- <a href="<%= AppConstants.BASE_URL %>admin/reports/reports_status_still.jsp" class=" btn btn-report_inactive">Status Till</a> --%>
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
													<label class="control-label mb-5 bold">From Date</label>
													<div class="input-group">
														<input class="form-control date-picker" name="interview_date" id="datepicker1" type="text" value="" placeholder="dd-mm-yyyy"/>
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date</label>
													<div class="input-group">
														<input class="form-control date-picker" name="interview_date" id="datepicker2" type="text" value="" placeholder="dd-mm-yyyy" />
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
										<!-- <div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">Standard</label>
												<select class="selectpicker" id="standard" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option>
												</select>
											</div>	
										</div> -->
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" id="examtype" data-style="form-control btn-default btn-outline">
													<!-- <option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">State</label>
												<select class="selectpicker" id="state" data-style="form-control btn-default btn-outline" onchange="getallSelectedcities(this, event);">
													<!-- <option>--- Select ---</option>
													<option>Telangana</option>
													<option>Andhra Pradesh</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">City</label>
												<select class="selectpicker" id="city" data-style="form-control btn-default btn-outline">
													<!-- <option>--- Select ---</option>
													<option>Hyderabad</option>
													<option>Vijayawada</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">Application Usage Type</label>
												<select class="selectpicker" id="application" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option value="-1">all</option>
													<option value="1">web</option>
													<option value="1">android</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">Parents Link</label>
												<select class="selectpicker" id="parentlink" data-style="form-control btn-default btn-outline">
												<option>--- Select ---</option>
													<option>true</option>
													<option>false</option> 
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary mt-25" onclick="studentUsageSubmit();">Submit</a>
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
										<table id="student-usage-table" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr><th>S.No</th>
													<th>Student ID</th>
													<th>Student Name</th>
													<th>State</th>
													<th>City</th>
													<th>SignUp Type</th>
												<!-- 	<th>In Android</th>
													<th>In IOS</th>
													<th>In Web</th> -->
													<th>Exam Type</th>
													<!-- <th>No.of Questions Practice Zone</th> -->
													<!-- <th>No. of Hours spent</th> -->
													<!-- <th>No. of Tests in Practice Zone</th> -->
													<!-- <th>No. ofTests in Test Zone</th> -->
													<th>No. of Tests taken in Live Zone</th>
													<!-- <th>No. of test in expert post(C.Zone)</th> -->
													</tr>
											</thead>
											<tbody id="student-usage-body">
									
											</tbody>
										</table>
										
									</div>
									<div class="pull-right mt-30">
										<a onclick="fnExcelReport('student-usage-table')" class="btn btn-warning">Download in Excel</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			  </div>
			<!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="adminreports"/>
			<input type="hidden" id="ulactive" value="reports_dr"/>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
		 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
		 <script src="<%=request.getContextPath()%>/assets/js/report.js"></script>
        <!-- /Main Content -->
	
	<script type="text/javascript">
	$(document).ready(function(){
		$("#stusag").addClass('active-page');
		getstatesall();
		getExamTypeByName();
		getAllUsage();
	});
	    $('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>