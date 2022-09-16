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
										<a href="<%= AppConstants.BASE_URL %>dean/copytootherexamtype/move_to_board.jsp" id="deancopytoexam" class="btn btn-dean_tabs">Copy to other Exam Type</a>
										<a href="<%= AppConstants.BASE_URL %>dean/manualpostquestions/manual_post_qns.jsp" id="" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Manual Post Questions</a>
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
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedStandardsByDeanId(this.value);" id="category">
														<!--  <option>--- Select ---</option>
														<option>Category 1</option>
														<option>Category 2</option>-->
													</select>
												</div>	
											</div>
											
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedExamTypeByDeanId(this.value);" id="standard" disabled>
														<!-- <option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedSubjectByDeanId(this.value);" id="examtype" disabled>
														<!-- <option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedUnitByDeanId(this.value);" id="subject" disabled>
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
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedChapterByDeanId(this.value);" id="unit" disabled>
														<!-- <option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedTopic(this.value);" id="chapter" disabled>
														<!-- <option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Topic</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedLayouts()" id="topic" disabled>
														<!-- <option>--- Select ---</option>
														<option>10th</option>
														<option>11th</option>
														<option>12th</option> -->
													</select>
												</div>	
											</div>
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Parameters</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getAllLayouts()" id="parameters" disabled>
														<option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option>
													</select>
												</div>	
											</div> -->
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Type Of Questions</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline"  id="layoutnumber" disabled>
														<!-- <option>--- Select ---</option>
														<option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<a class="btn btn-primary mt-25" onclick="deancopytootherexampost()">Go</a>
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
											<table id="copyexamdatable_1" class="table dean_border  display pb-30" >
												<thead class="th_background">
													<tr>
													    <th>S.No</th>
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
												<tbody id="copyexam-body">
													<%-- <tr>
														<td>1</td>
														<td>JEE-MAINS</td>
														<td>10th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction</td>
														<td>Multiple Choice</td>
														<td>Tough</td>
														<td>JEE-MAINS, JEE-ADVANCED, NEET, AIIMS, Any Other</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<%= AppConstants.BASE_URL %>dean/go_to_board.jsp" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr>
													<tr>
														<td>10</td>
														<td>JEE-ADVANCED</td>
														<td>11th</td>
														<td>Physics</td>
														<td>Laws of Thermodynamics</td>
														<td>First law of Thermodynamics</td>
														<td>Multiple Choice</td>
														<td>Easy</td>
														<td>JEE-MAINS, JEE-ADVANCED, NEET, AIIMS</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<%= AppConstants.BASE_URL %>dean/go_to_board.jsp" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr>
													<tr>
														<td>100</td>
														<td>NEET</td>
														<td>12th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction</td>
														<td>Multiple Choice</td>
														<td>Easy</td>
														<td>JEE-MAINS</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<%= AppConstants.BASE_URL %>dean/go_to_board.jsp" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr>
													<tr>
														<td>1000</td>
														<td>AIIMS</td>
														<td>10th</td>
														<td>Physics</td>
														<td>Laws of Thermodynamics</td>
														<td>First law of Thermodynamics</td>
														<td>Multiple Choice</td>
														<td>Tough</td>
														<td>JEE-MAINS, JEE-ADVANCED</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<%= AppConstants.BASE_URL %>dean/go_to_board.jsp" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr>
													<tr>
														<td>10000</td>
														<td>AIIMS</td>
														<td>10th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction</td>
														<td>Multiple Choice</td>
														<td>Normal</td>
														<td>JEE-MAINS, JEE-ADVANCED, NEET</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<?php echo base_url();?>dean/go_to_board" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr>
													<tr>
														<td>100000</td>
														<td>JEE-ADVANCED</td>
														<td>10th</td>
														<td>Physics</td>
														<td>Laws of Thermodynamics</td>
														<td>First law of Thermodynamics</td>
														<td>Multiple Choice</td>
														<td>Easy</td>
														<td>JEE-MAINS, JEE-ADVANCED, NEET, AIIMS</td>
														<td>04-Apr-2018</td>
														<td>
															<div class="">
																<a class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
															</div>
														</td>
														<td>
															<a href="<%= AppConstants.BASE_URL %>dean/go_to_board.jsp" class="btn btn-primary btn-xs">Go</a>
														</td>
													</tr> --%>
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
				<input type="hidden" id="creationactive" value="dcopyac"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/dean.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	    
	    
	    <script>
	$(document).ready(function(){
		var deanId = getDeanId();
		getCategoriesByDeanId(deanId);
		GetAllDeancopytootherexam();	
	})
	</script>
