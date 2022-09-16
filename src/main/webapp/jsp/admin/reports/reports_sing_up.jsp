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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> Sign Up</span></h6>
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
									<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_sing_up.jsp" class=" btn btn-report_active">Sign Up</a>
									<%-- <a href="<?php echo base_url();?>admin/reports/expiry" class=" btn btn-report_inactive">Expiry</a> --%>
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
												<label class="control-label mb-5 bold">Signup Type</label>
												<select class="selectpicker" id="signuptype" data-style="form-control btn-default btn-outline">
													 <option>--- Select ---</option>
													 <option>web</option>
													 <option>android</option>
													 <option>All</option>
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary mt-25" onclick="reportSingUpFilter();">Submit</a>
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
										<table id="report-sing-up-table" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr> 
												    <th>S.NO</th>
													<th>Student ID</th>
													<th>Student Name</th>
													<th>Gender</th>
													<th>State</th>
													<th>City</th>
													<th>Mail ID</th>
													<th>Phone Number</th>
													<th>Signup Type</th>
													</tr>
											 </thead>
											 <tbody id="report-sing-up-body">
											
											
											
											
											
											
											
											
											</tbody>
										</table>
										
									</div>
									<div class="pull-right mt-30">
										<a onclick="fnExcelReport('report-sing-up-table')" class="btn btn-warning">Download Report in Excel</a>
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
<!-- /Main Content -->
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	 
	 <script src="<%=request.getContextPath()%>/assets/js/report.js"></script>

	<script type="text/javascript">

	$(document).ready(function(){
		$("#siggnup").addClass('active-page');
		signUpGet();
	})
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>