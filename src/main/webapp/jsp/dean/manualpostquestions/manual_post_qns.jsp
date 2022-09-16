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
						
						<div class="button-list" id="deantopbuttons">
								<a href="<%= AppConstants.BASE_URL %>dean/questionstatus/status.jsp" id="deanqstatus" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Question Status</a>
								<a href="<%= AppConstants.BASE_URL %>dean/questioncount/question_count.jsp" id="deanqc" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Question Count</a>
								<a href="<%= AppConstants.BASE_URL %>dean/databaseqc/database_qc.jsp" id="deandbqc" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Database QC</a>
							<%--<a href="<%= AppConstants.BASE_URL %>dean/copytootherexamtype/move_to_board.jsp" id="deancopytoexam" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a> --%>
								<a href="<%= AppConstants.BASE_URL %>dean/manualpostquestions/manual_post_qns.jsp" id="" class="btn btn-dean_tabs">Manual Post Questions</a>
							</div>
							
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
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value)" id="category">
												
											</select>
										</div>	
									</div> 
									
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedexams();" id="standard" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedSubjects(this.value);getSelectedByExamSec(this.value);" id="examtype" disabled>
											
											</select>
										</div>	
									</div> 
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedUnit(this.value);" id="subject" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Unit <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedChapter(this.value);" id="unit" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedTopic(this.value)" id="chapter" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Topic</label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "deanfilterlayout()" id="topic" disabled>
											
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Type Of Questions</label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline"  id="questionType"  onchange="getYearSqb();" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Previous Year</label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" id="previousyear" disabled>
												
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<a class="btn btn-primary mt-25" onclick="manualPostQns()">Submit</a>
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
									<table id="getmanualpostq_tbl" class="table superdean_border  display pb-30" >
										<thead class="th_background">
											<tr>
											    <th>S.No</th>
												<th>Q ID</th>
												<!-- <th>Exam Type</th> -->
												<th>Standard</th>
												<th>Subject</th>
												<th>Chapter</th>
												<th>Topic</th>
												<th>Type Of Question</th>
												<th>Difficulty Level</th>
												<th>Modified Date</th>
												<th>Comment</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody id="getmanualpostq">
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
		<input type="hidden" id="creationactive" value="dmanualcop"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
			
	</div>
     <!-- /Main Content -->
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/dean.js"></script>
 <script>
	 
 $(document).ready(function() {  	
		 
	var deanId = getDeanId();
	/* getCategoriesByDeanId(deanId); */
	 getCategoriesByName();
/* 	sqbgetallstandard(deanId); */
	
	getmanualpostquest();
	 
 });
 
  </script>