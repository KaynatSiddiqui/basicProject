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
										<a href="<%= AppConstants.BASE_URL %>academic_head/question_count.jsp" class="btn btn-academic_head_tabs">Questions Count</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_qc.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Database Qc</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Database Count</a>
										<%-- <a href="<%= AppConstants.BASE_URL %>academic_head/move_to_board.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a>
										 --%><a href="<%= AppConstants.BASE_URL %>academic_head/sme_permormance.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Performance</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-0">
							<hr class="light-grey-hr mt-10 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
										<div class="col-md-2">
												<!-- <div class="form-group">
													<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value);" id="category" >
														
													</select>
												</div> -->	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getsubjectssqb(this.value);" id="standard" disabled>
														
													</select>
												</div>	
											</div>
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSubjects(this.value);" id="examtype" disabled>
														
													</select>
												</div>	
											</div>
 -->											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" disabled>
														
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="AcadHdgetbyFilter()">Submit</a>	
											</div>
										</div>
									</form>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-10">
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
											<table id="acadhd_tbl" class="table ahead_border display pb-30" >
												<thead class="th_background">
													<tr>
														<th>SNo.</th>
														<!-- <th>Exam Type</th> -->
														<th>Standard</th>
														<th>Subject</th>
														<th>Chapter</th>
														<th>Topic</th>
														<th>Pending Qns</th>
														<th>Rejected Qns</th>
														<th>Approved Qns</th>
													</tr>
												</thead>
												<tbody id="acadhd_tbody">
													
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
			<input type="hidden" id="creationactive" value="countactive"/>
		
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		  <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
	    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
		<script>
		
		$(document).ready(function(){
			/* getCategoriesByName(); */
			 sqbgetallstandard();
			 AcademicHdquesCount(); 
		})
		
		</script>
        <!-- /Main Content -->