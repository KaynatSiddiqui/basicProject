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
						
							<div class="row mb-20">
							<div class="col-sm-12">
							<div class="button-list" id="deantopbuttons">
							<a href="<%= AppConstants.BASE_URL %>dean/questionstatus/status.jsp" id="deanqstatus" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Question Status</a>
							<a href="<%= AppConstants.BASE_URL %>dean/questioncount/question_count.jsp" id="deanqc" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Question Count</a>
							<a href="<%= AppConstants.BASE_URL %>dean/databaseqc/database_qc.jsp" id="deandbqc" class="btn btn-dean_tabs">Database QC</a>
						<%-- 	<a href="<%= AppConstants.BASE_URL %>dean/copytootherexamtype/move_to_board.jsp" id="deancopytoexam" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a> --%>
							<a href="<%= AppConstants.BASE_URL %>dean/manualpostquestions/manual_post_qns.jsp" id="" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Manual Post Questions</a>
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
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getSelectedStandardsByDeanId(this.value);" id="category">
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div> -->
											
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getSelectedSubjectByDeanId(this.value);" id="standard" disabled>
														<!-- <option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option> -->
													</select>
												</div>	
											</div>
											
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getSelectedSubjectByDeanId(this.value);" id="examtype" disabled>
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div> -->
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedUnitByDeanId(this.value);" id="subject" disabled>
														<!-- <option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Unit <span class="red">*</span></label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getSelectedChapterByDeanId(this.value);" id="unit" disabled>
														<!-- <option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getSelectedSQBTopics(this.value);" id="chapter" disabled>
														<!-- <option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Topic</label>
													<!-- <select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getAllLayouts()" id="topic" disabled> -->
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="getAllSQBLayouts()" id="topic" disabled> 
														<!-- <option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Type of Qns</label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="gellAllSqbParamaters(this.value);" id="questionType" disabled>
														<!-- <option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Parameters</label>
													<select class="selectpicker"  data-style="form-control btn-default btn-outline"  id="parameter" disabled>
														<!-- <option>--- Select ---</option>
														<option>Parameter 1</option>
														<option>Parameter 2</option>
														<option>Parameter 3</option> -->
													</select>
												</div>	
											</div>
										<!-- 	<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Previous Year</label>
													<select class="selectpicker" id="prevyear" data-style="form-control btn-default btn-outline">
														<option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option>
													</select>
												</div>	
											</div> -->
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="Deandatabaseqc()">Submit</a>	
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
											<table id="dean-Qc-table" class="table dean_border  display pb-30" >
												<thead class="th_background">
													<tr>
													<th>S.no</th>
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
												<tbody id="dean-Qc-tbody">
											
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
				<input type="hidden" id="creationactive" value="ddbqc"/>
		</div>
		
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
	  
	    <script src="<%=request.getContextPath()%>/assets/js/dean.js"></script>
	      
	      
        <!-- /Main Content -->
        <script>
	$(document).ready(function(){
		//Getdeanquescount();	
		var deanId = getDeanId();
		getSelectedStandardsByDeanId(deanId);
        	/* getCategoriesByDeanId(deanId); */
		getDeanDatabaseQc();
		


	})
	</script>
