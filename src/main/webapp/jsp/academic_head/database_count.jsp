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
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>academic_head/status.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Question Status</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/question_count.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Questions Count</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_qc.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Database Qc</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp" class="btn btn-academic_head_tabs">Database Count</a>
										<%-- <a href="<%= AppConstants.BASE_URL %>academic_head/move_to_board.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a>
										 --%><a href="<%= AppConstants.BASE_URL %>academic_head/sme_permormance.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Performance</a>
								</div>
							</div>
						</div>
						<hr class="light-grey-hr mt-10 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category" onchange="getstandardsbtcat(this.value)">
													
												</select>
											</div>	
										</div> -->
											<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getAllDifficultyWisesqb(this.value);" disabled>
													
												</select>
											</div>	
										</div>
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange="getSelectedDifficultLevels(this.value)" disabled>
												
												</select>
											</div>	
										</div> -->
									
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Difficulty</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="difficultlevel" disabled>
																									</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<div class="col-md-12 mt-25">
													<a class="btn btn-primary" onclick="acdatabasecount()">Submit</a>
												</div>
											</div>	
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
										<table id="acdatabcou_tbl" class="table ahead_border  display pb-30" >
											<thead class="th_background">
												<tr>
												<th>S. No</th>
													<th>Subject</th>
													<th>Total Count</th>
													<th>Parameterwise Count</th>
													<th>Chapterwise Count</th>
												</tr>
											</thead>
											<tbody id="acdatabcou_tbody">
												
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
		<input type="hidden" id="creationactive" value="dbcountactive"/>
				<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	
	<script>
	$(document).ready(function(){
		/* getCategoriesByName(); */
		sqbgetallstandard();
		databasecount_academic();
	});
	</script>
