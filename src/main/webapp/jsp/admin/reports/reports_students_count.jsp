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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Reports</span><span class="main_heading_theme_color"> Students Count</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list center">
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_count_list.jsp" class="btn btn-report_active">Students Count</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_usage.jsp" class=" btn btn-report_inactive">Students Usage</a>
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
												<input class="form-control date-picker"
													name="interview_date" id="datepicker1" type="text" value=""
													placeholder="dd-mm-yyyy" /> <span class="input-group-addon">
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
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" id="category" onchange = "getExamTypeByName(this.value)" data-style="form-control btn-default btn-outline">
												<!-- 	<option>--- Select ---</option>
													<option>Category1</option>
													<option>Category2</option> -->
												</select>
											</div>	
										</div>
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
												<select class="selectpicker" id="state" onchange="getallSelectedcities(this, event);" data-style="form-control btn-default btn-outline">
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
													<option>Bangalore</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Application Usage Type</label>
												<select class="selectpicker" id="application" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>all</option>
													<option>web</option>
													<option>android</option>
													<!-- <option>IOS</option>
													<option>Web & App</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold"> Parents Link</label>
												<select class="selectpicker" id="parentlink" data-style="form-control btn-default btn-outline">
												    <option>---Select---</option>
													<option>true</option>
													<option>false</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary mt-25" onclick="studentcountfilter()">Submit</a>
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
										<table id="studentcount-table" class="table display pb-30" >
											<thead class="th_background">
												<tr>
													<th>State</th>
													<th>City name</th>
													<th>Student Count</th>
													<th>Download Students List</th>
													</tr>
											</thead>
											<tbody id="studentcount-body">
											
											
											
											
											
											
												
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a onclick="fnExcelReport('studentcount-table')" class="btn btn-warning">Download in Excel</a>
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
        <!-- /Main Content -->
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script> 
	 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/report.js"></script>
	 
	<script type="text/javascript">
	$("#stcount").addClass('active-page');
	$(document).ready(function(){
		getstatesall();
		getCategoriesByName();
		getStudentCount();
	})
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>