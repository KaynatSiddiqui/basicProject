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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> (Status Till</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list center">
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_count_list.jsp" class="btn btn-report_inactive">Students Count</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_usage.jsp" class=" btn btn-report_inactive">Students Usage</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_live_exam_report_list.jsp" class=" btn btn-report_inactive">Live Exam Report</a>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_sing_up.jsp" class=" btn btn-report_inactive">Sign Up</a>
									<%-- <a href="<%= AppConstants.BASE_URL %>admin/reports/expiry" class=" btn btn-report_inactive">Expiry</a> --%>
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_status_still.jsp" class=" btn btn-report_active">Status Till</a>
								</div>
							</div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
						<div class="row">
							<div class="col-md-offset-3 col-sm-6">
								<form>
									<div class="row">
									    <div class="col-md-6">
											<div class="form-group">
												<label class="control-label mb-5 bold">State</label>
												<select class="selectpicker" multiple data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
											         <option>All</option>
													<option>Andhra pradesh</option>
												</select>
											</div>	
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label mb-5 bold">City</label>
												<select class="selectpicker" multiple data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>All</option>
													<option>Hyderabad</option>
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
									    <div class="col-md-4">
											<div class="form-group">
												<button class="btn btn-default btn-outline ">124561</button>
												<label class="control-label mt-10 bold">No. of Students</label>
											</div>
                                           </div>											
								          <div class="col-md-4">
											 <button class="btn btn-default btn-outline">12156</button>
												 <label class="control-label mt-10 bold">No. of Practice Test</label>
										</div>	
										<div class="col-md-4">
											<button class="btn btn-default btn-outline">12162</button>
											  <label class="control-label mt-10 bold">No.of Tests in Zone</label>
								       </div>	
									</div>
									<div class="row">
									    <div class="col-md-6">
											<button class="btn btn-default btn-outline ">124561</button>
												<br><label class="control-label mt-10 bold">No. of Tests in Live Zone</label>
										     </div>											
								          <div class="col-md-6 text-center">
											 <button class="btn btn-default btn-outline">121567161</button><br>
												 <label class="control-label mt-10 bold">Question attempted</label>
											 </div>	
										 </div>
										 <div class="row">
									    <div class="col-md-10 text-center">
											<button class="btn btn-default btn-outline ">12160</button>
												<br><label class="control-label mt-10 bold">No. of Challenges</label>
										     </div>											
								          </div>
								  </form>
							</div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
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
	$("#statstill").addClass('active-page');
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>