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
										<table id="student_count_list" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Student ID</th>
													<th>Student name</th>
													<th>Application Usage Type</th>
													<th>State</th>
													<th>City</th>
													<th>Category</th>
													<th>Exam Type(Subscribe)</th>
													<th>Phone</th>
													<th>Email ID</th>
													<th>Parent Name</th>
													<th>Parent Email ID</th>
													<th>Parent Phone No</th>
												</tr>
											</thead>
											<tbody id="student-count-list-body">
											<!-- <tr>
												<td>123456</td>
												<td>Hari</td>
												<td>Application</td>
												<td>Telalngana</td>
												<td>Hyderabad</td>
												<td>Category</td>
												<td>Exam Type</td>
												<td>8121115444</td>
												<td>hari@gmail.com</td>
												<td>Gopi</td>
												<td>gopi@gmail.com</td>
												<td>8121115444</td>
											</tr> -->
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a href="#" class="btn btn-warning">Download in Excel</a>
								</div>
								<div class="row">
									<div class="col-md-6 col-md-offset-5">
										<div class="button-list textcenter mt-25">
											<a href="<%= AppConstants.BASE_URL %>admin/reports/reports_students_count.jsp" class="btn  btn-info">Back</a>
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
        <!-- /Main Content -->
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
		 <script src="<%=request.getContextPath()%>/assets/js/report.js"></script>
	<script type="text/javascript">
	$("#stcount").addClass('active-page');
		$(document).ready(function(){
			getStudentCountList();
		})
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>