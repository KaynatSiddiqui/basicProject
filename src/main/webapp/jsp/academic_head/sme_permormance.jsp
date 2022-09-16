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
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>academic_head/status.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Question Status</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/question_count.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Questions Count</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_qc.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Database Qc</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Database Count</a>
										<%-- <a href="<%= AppConstants.BASE_URL %>academic_head/move_to_board.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a>
										 --%><a href="<%= AppConstants.BASE_URL %>academic_head/sme_permormance.jsp" class="btn btn-academic_head_tabs ">Performance</a>
								</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Designation</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="desg">
														<option>--- Select ---</option>
														<option>SME</option>
														<option>DEAN</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">From date</label>
													<input type="text" id="fromdate" name="example-email" class="form-control">
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To date</label>
									                 <input type="text" id="todate" name="example-email" class="form-control">
													
												</div>	
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="AcademicPerformancequesCountFilter();">Submit</a>
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
											<table id="smeperformance_tbl" class="table ahead_border  display pb-30" >
												<thead class="th_background">
													<tr>
													<th>S no</th>
														<th>User name</th>
														<th>Id Type</th>
														<th>Pending</th>
														<th>Rejected</th>
														<th>Approved</th>
													</tr>
												</thead>
												<tbody id="smeperformance_tbody">
													
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
				<input type="hidden" id="creationactive" value="peractive"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        
        	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	
	<script>
	$(document).ready(function(){
		$("#fromdate,#todate").datepicker({dateFormat:'dd-mm-yy'});
		 
	 
        AcademicPerformancequesCount();
	});
	</script>
        
        
        
        