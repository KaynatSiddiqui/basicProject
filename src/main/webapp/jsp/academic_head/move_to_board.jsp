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
										<a href="<%= AppConstants.BASE_URL %>academic_head/move_to_board.jsp" class="btn btn-academic_head_tabs">Copy to other Exam Type</a>
										<a href="<%= AppConstants.BASE_URL %>academic_head/sme_permormance.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Performance</a>
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
													<label class="control-label mb-5 bold">Categories <span class="red">*</span></label>
													 <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getstandardsbtcat(this.value)" id="category">
														
													</select> 
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													 <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedexams(this.value);" id="standard" disabled>
														
													</select> 
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedSubjects(this.value);" id="examtype">
														
													</select> 
												</div>	
											</div>
											
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													 <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedUnit(this.value);" id="subject" disabled>
														
													</select> 
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Unit <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedChapter(this.value);" id="unit" disabled>
													
													</select> 
												</div>	
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedTopic(this.value);" id="chapter" disabled>
													
													</select> 
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Topic</label>
													 <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getAllLayouts()" id="topic" disabled>
														
													</select>
												</div>	
											</div>
										
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Type Of Questions</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id ="questionType" disabled>
														
													</select>
												</div>	
											</div>
											
											
											<div class="col-md-2">
												<div class="form-group">
													<a class="btn btn-primary mt-25" onclick="copytootherexampost()">Submit</a>
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
											<table id="acacopyexamdatable_1" class="table ahead_border display pb-30" >
												<thead class="th_background">
													<tr>
														<th>Q ID</th>
														<th>Exam Type</th>
														<th>Standard</th>
														<th>Subject</th>
														<th>Chapter</th>
														<th>Topic</th>
														<th>Type Of Question</th>
														<th>Difficulty Level</th>
														<th>Present in Exam Types</th>
														<th>Modified Date</th>
														<th>Actions</th>
														<th>Copy to Exam Type</th>
													</tr>
												</thead>
												<tbody id="acacopyexam-body">
												
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
				<input type="hidden" id="creationactive" value="copyactive"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	   
	      <script>
	$(document).ready(function(){
		getCopytoOtherExamAH();	
		getCategoriesByName();
	})
	</script>
