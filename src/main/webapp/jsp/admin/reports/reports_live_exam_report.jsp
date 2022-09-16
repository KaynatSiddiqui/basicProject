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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> Live Exam Report</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list center">
									<a href="<%= AppConstants.BASE_URL %>admin/reports/students_count" class="btn btn-report_inactive">Students Count</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/students_usage" class=" btn btn-report_inactive">Students Usage</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/live_exam_report" class=" btn btn-report_active">Live Exam Report</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_sing_up.jsp" class=" btn btn-report_inactive">Sign Up</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/expiry" class=" btn btn-report_inactive">Expiry</a>
									<%-- <a href="<%= AppConstants.BASE_URL %>admin/reports/status_till" class=" btn btn-report_inactive">Status Till</a> --%>
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
												<label class="control-label mb-5 bold" for="exampleInputuname_2">From Date</label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="datepicker1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
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
													<input class="form-control date-picker" name="interview_date" id="datepicker2" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
										      <label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" id="category" onchange="getExamTypeByName(this.value)" data-style="form-control btn-default btn-outline">
													<!-- <option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" id="examtype" data-style="form-control btn-default btn-outline">
													<!-- <option>--- Select ---</option>
													<option>MAIN</option>
													<option>NEET</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Test type</label>
												<select class="selectpicker" id="testtype" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option><%= AppConstants.MOCKTEST %></option>
													<option><%= AppConstants.SUBJECTWISE_MOCK %></option>
													<option><%= AppConstants.FULLSYALLBUSMOCK %></option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary mt-25" onclick="liveExamReportsFilter();">Submit</a>
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
										<table id="reports_table" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr><th>S.No</th>
													<th>Test name</th>
													<th>Live Test Type</th>
													<th>Active Date</th>
													<th>Expiry Date</th>
													<th>No.of Students appeared</th>
													<th>Count in Excel</th>
													<th>All Students Lists</th>
												</tr>
											</thead>
											<tbody id="reports_body">
											  <%-- <tr>
												  <td>Live-1</td>
												  <td>Full Mock</td>
												  <td>10/12/2017</td>
												  <td>10/12/2017</td>
												  <td>5000</td>
												  <td>												
													<a href="<%= AppConstants.BASE_URL %>admin/reports/live_exam_report_count_in_excel" class="btn btn-info">Download</a>
                                                  </td>
												  <td>												
													<a href="<%= AppConstants.BASE_URL %>admin/reports/live_exam_report_list" class="btn btn-primary">Students List</a>
												</td>
												</tr> --%>
												
											</tbody>
										</table>
									</div>
									<div class="pull-right mt-30">
										<a onclick="fnExcelReport('reports_table')" class="btn btn-warning">Download in Excel</a>
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
		 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
		 <script src="<%=request.getContextPath()%>/assets/js/report.js"></script>
	 
	<script type="text/javascript">
	$(document).ready(function(){
		liveExamReports();
		getCategoriesByName();
	})
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>