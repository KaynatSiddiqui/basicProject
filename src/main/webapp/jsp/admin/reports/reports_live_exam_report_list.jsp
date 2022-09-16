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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Reports</span><span class="main_heading_theme_color"> (Admin)</span></h6>
							</div>
							<div class="clearfix"></div>
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
										<table id="live-exam-table" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr><th>S.No</th>
													<th>Student name</th>
													<th>State</th>
													<th>City</th>
													<th>Marks</th>
													<th>-Ve Marks</th>
													<th>Accuracy</th>
													<th>RANK</th>
												</tr>
											</thead>
											<tbody id="live-exam-body">
											<!-- <tr>
												<td>Hari</td>
												<td>Telalngana</td>
												<td>Hyderabad</td>
												<td>90</td>
												<td>-5</td>
												<td>90</td>
												<td>1</td>
											</tr> -->
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a onclick="fnExcelReport('live-exam-table')" class="btn btn-warning">Download in Excel</a>
								</div>
								<div class="row">
									<div class="col-md-6 col-md-offset-5">
										<div class="button-list mt-25" style="float:left">
											<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_live_exam_report.jsp" class="btn  btn-info">Back</a>
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
		$("#livexm").addClass('active-page');
		getLiveExamReportList();
	})
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>