<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
	tbody, tfoot, thead, tr, th, td{
		border: 1px solid #777;
	}
	</style>

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
						<div class="panel panel-default card-view" style="color:#2f2b2b">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left mb-10 mt-10">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Preview</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row m-10">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="row form-group">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
			<label class="control-label" for="example-email">Question ID </label>
		</div>
		<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="questionId-div" style="color:black">
			
		</div>
	</div>	
</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Last Modified Date </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="modified">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">SME ID</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="smeid">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Dean ID</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="dean">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Super Dean ID</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="superdean">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Comments</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="commentsp">
											
										</div>
									</div>	
								</div>
								<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Present in Exam Type</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="presentexamtype">
											  
										</div>
									</div>	
								</div> -->
							</div>
							
		
		
							<hr class="hr_sky_blue_1px mb-10">
							<div class="row mb-30">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="pull-left mt-10 mb-20">
													<span class="preview_steps">Step 1</span>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Category  </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="categorypreview">
														
													</div>
												</div>	
											</div>
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Exam Type </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="examtype">
														
													</div>
												</div>	
											</div> -->
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="standard">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subject</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="subject">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Unit</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="unit">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="chapter">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Topics</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="topic">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Question Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="questionType">
														
													</div>
												</div>	
											</div>
										</div>
									</form>
								</div>
							</div>
							<hr class="hr_sky_blue_1px mb-10">
							<div class="row mb-30">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="pull-left mt-10 mb-20">
													<span class="preview_steps">Step 2</span>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Instructions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="instructions">
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email" id="questionLabel">Question</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="question">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="qsepa"><hr class="light-grey-hr mt-10 mb-10"></div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="question1-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Question 1</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="question1">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="options-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Options</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="options">
															A) P,Q,R,S,T <br> B) P,Q,R,S,T <br> C) P,Q,R,S,T <br> D) P,Q,R,S,T
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option1-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 1</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option1">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option2-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 2</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option2">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option3-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 3</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option3">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option4-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 4</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option4">
															
													</div>
												</div>	
											</div>
											
										
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="answer-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email" id="answer_label">Answer</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<span class="bold green" id="answer"></span>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  id="hint-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Hint / Solution / Explanation</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="hint">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="concept-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Concept</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="concept">
															
													</div>
												</div>	
											</div>
											
											<div id="extraquestions">
												
											</div>
										</div>
									</form>
								</div>
							</div>
							<input type="hidden" value="" id="layouthd" >
							<hr class="hr_sky_blue_1px mb-10">
							<div class="row ">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="pull-left mt-10 mb-20">
													<span class="preview_steps">Step 3</span>
												</div>
											</div>
											
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">The above Question belong to the Topic </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="belongsTo">
														
													</div>
												</div>	
											</div> -->
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Difficulty Level </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="difficulty">
														
													</div>
												</div>	
											</div> -->
											
											<div id="parameters_wrap">
											
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter wise parametrs selected</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="chapterwiseparam"></span> 

													</div>
												</div>	
											</div>
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Numerical Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="numerical">
													
													</div>
												</div>	
											</div> -->
										<!-- 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Graph/Figure based Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="graph">
														
													</div>
												</div>	
											</div> -->
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Valuation Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="valuation">
														
													</div>
												</div>	
											</div> -->
											
											<input type="hidden" value="" id="questionId">
											
										    <!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous year MAINS Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="previousyear1">
													
													</div>
												</div>	
											</div> --> 
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous Year Questions from other Competitive Exams </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="examcategory"></span> 

													</div>
												</div>	
											</div>
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous Year Questions  </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="prevquespreview"></span> 

													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Difficulty level</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="difflevel_level"></span> 

													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Very Important Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="veryimpquestion">
														
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Module (SubModule) </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="moduleSpan"></span> 
													 
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Examtype (Level) </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<span id="examLevelSpan"></span>
													 
													</div>
												</div>	
											</div>
											
										</div>
									</form>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-md-offset-5">
									<div class="button-list mt-10 mb-10">
										<a id="preview_back" class="btn btn-back" >Back</a>
										<a id="saveBtn4" class="btn btn-save_next" onclick="addQuestionStep4();">Save & Finish</a>
										<a id="saveBtn4close" href="<%=request.getContextPath()%>/jsp/dean/questionstatus/status.jsp" class="btn btn-save_next" style="display:none;">Close</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				
				<!-- /Row -->
    </div>
	<%@include file="/jsp/master/footer.jsp" %>
  	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/dean.js"></script>
  	<script>
  	$(document).ready(function() {
  		$("#qsepa").hide();
  		$("#question1-div").hide();
  		$("#options-div").hide();
  		var layouthdpv = getParameterByName("layout");
  		$("#layouthd").val(layouthdpv);


		function getParameters(callback){
			
			$.ajax({
				type: "GET",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url + 'rest/admin/sqb/getparameters',
				  success: function(data){
					  
					  if(data.length !== 0){
	
						  var paramData = ""; 
						  var nospaceid;
						  for(var p = 0; p < data.length;p++){
							  var parameterName = data[p].paramName;
							  nospaceid = parameterName.replace(/\s/g,'');
							  paramData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-4 col-md-4 col-sm-4 col-xs-10"><label class="control-label" for="'+nospaceid+'">'+parameterName+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="'+nospaceid+'"> NO </div>	</div>	</div>';
								
						  }
						  
						  $("#parameters_wrap").empty("");
						  $("#parameters_wrap").append(paramData);
						  
						  callback();
						 
					  } else {
						  alert("Parameters List are empty!!");
						 
					  }
	 
				  },
				  error: function(data) {		
					 alert("Parameters not found!");
				  }

			});
			
		}
		
		
		
  		var questionId = getParameterByName('id');
		//alert(questionId);
		$("#questionId-div").html(questionId);
		if(questionId!=='' && questionId !== null) {
			
			$("#questionId").val(questionId);
			
			var referrer = document.referrer;
			if(referrer.indexOf("status.jsp") !== -1){
				$("#preview_back").html("Edit");
				$("#saveBtn4").css({"display":"none"});
				$("#saveBtn4close").css({"display":"inline", "display" : "inline-block"});
				
			}else if(referrer.indexOf("database_qc.jsp") !== -1){
				$("#preview_back").html("Back");
				var newurl = base_url+"jsp/dean/databaseqc/database_qc.jsp"
				$("#preview_back").attr("href", newurl);
				$("#preview_back").css({"background":"#00BA85","border":"1px solid #00BA85"});
				$("#saveBtn4").css({"display":"none"});
				$("#saveBtn4close").css({"display":"none"});
				
			}else{
				$("#preview_back").html("Back");
			}
			
			
			
			getParameters(function(){
				
				// questionId is not null 
				
				
				getSQBQuestionDataById(questionId,function(wholeQuestionData){
					
					
					
					$("#modified").html(wholeQuestionData[0].modifieddate);
					
					
					$("#smeid").html(wholeQuestionData[0].smeid);
					$("#dean").html(wholeQuestionData[0].deanstrid);
					$("#superdean").html(wholeQuestionData[0].superdeanid);
					
					$("#commentsp").html(wholeQuestionData[0].comments);
					$("#presentexamtype").html(wholeQuestionData[0].examtype);
					$("#categorypreview").html(wholeQuestionData[0].category);

					$("#standard").html(wholeQuestionData[0].standard);
					$("#subject").html(wholeQuestionData[0].subject);
					$("#unit").html(wholeQuestionData[0].unit);
					$("#chapter").html(wholeQuestionData[0].chapter);
					$("#topic").html(wholeQuestionData[0].belong_topic);
					$("#questionType").html(wholeQuestionData[0].questiontype);
					$("#instructions").html(wholeQuestionData[0].instructions);
				
					$("#question").html(wholeQuestionData[0].question);
					$("#answer").html(wholeQuestionData[0].answer);
					$("#hint").html(wholeQuestionData[0].solution);
					
					$("#concept").html(wholeQuestionData[0].concept);

				    
					var comprh = /(_8_|_9_|_10_)/;
		  		    var intiRegex  = /_7_I/;
		  		    var multiComprh = /_11_/;
		  		  	var matrix = /_12_X/;
		  		  	
					var layoutRes = wholeQuestionData[0].questiontype;
					
					if(intiRegex.test(layoutRes)){
						
						$("#option1-div").hide();
						$("#option2-div").hide();
						$("#option3-div").hide();
						$("#option4-div").hide();
						
					} else if(matrix.test(layoutRes)){
						
						$(".noptions").hide();
						$("#options-div").show();
						
						$("#answer_label").html('Key');
						
						
						var labels = ["A","B","C","D"];
						var appendata= "";
						var acan = wholeQuestionData[0].answer;
						var arr_acan = acan.split('|');
						
						for(var lb = 0;lb<labels.length;lb++){
							appendata += labels[lb] + ") " + arr_acan[lb] + "<br>";
						}
						
						$("#answer").html(appendata);
						
					} else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
						
						$("#option1").html(wholeQuestionData[0].option1);
						$("#option2").html(wholeQuestionData[0].option2);
						$("#option3").html(wholeQuestionData[0].option3);
						$("#option4").html(wholeQuestionData[0].option4);
						
					} else {
						$("#questionLabel").html("Passage");
						
						/* $("#answer-div").hide();
						$("#hint-div").hide();
						$("#concept-div").hide(); */
						
						$("#qsepa").show();
						$("#question1-div").show();
						
						var qdata = wholeQuestionData[0].sqbQuestionDetails;
						
						$("#question1").html(qdata[0].question["value"]);
						$("#option1").html(qdata[0].option1["value"]);
						$("#option2").html(qdata[0].option2["value"]);
						$("#option3").html(qdata[0].option3["value"]);
						$("#option4").html(qdata[0].option4["value"]);
						
						$("#answer").html(qdata[0].answer);
						$("#hint").html(qdata[0].solution["value"]);
						$("#concept").html(qdata[0].concept["value"]);
						
						var appenddata = '';
						
						for(var pq=1;pq<qdata.length;pq++){
							var vanswer = qdata[pq].answer;
							//appenddata = '';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Question '+(pq+1)+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="question'+(pq+1)+'">'+ qdata[pq].question["value"]	+'</div></div></div>';
							for(var opt=1;opt<=4;opt++){
								appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="option'+opt+'-div"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Option '+opt+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option'+opt+'">'+qdata[pq]["option"+opt].value+'</div></div></div>';
							}
							
							appenddata += '<div c\lass="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Answer</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><span class="bold green" id="answer'+(pq+1)+'">'+vanswer+'</span></div></div></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Hint / Solution / Explanation</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="hint'+(pq+1)+'">'+qdata[pq].solution["value"]+'</div></div></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Concept</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="concept'+(pq+1)+'">'+qdata[pq].concept["value"]+'</div></div></div>';
							
					
						}
					}
					
					$("#extraquestions").append(appenddata);
					rendereelemntforkatext();

				 
				 var parameters = wholeQuestionData[0].sqbQuestionParameters;
				 
				 if(parameters !== "" && parameters !== null){
						
					 for(var p = 0; p < parameters.length;p++)
					 {
						var parameter = parameters[p].parameter;
						var nospaceid = parameter.replace(/\s/g,'');
						if( $("label:contains("+parameter+")") )
						{
						    $("#"+nospaceid).html("YES");
						}else{
							$("#"+nospaceid).html("NO")
						}
					 } 
				 }

				  var sqbQuestionChapterWiseParameters = wholeQuestionData[0].sqbQuestionChapterWiseParameters;
				 if(sqbQuestionChapterWiseParameters !=="" && sqbQuestionChapterWiseParameters !== null){
					  for(var chap = 0; chap < sqbQuestionChapterWiseParameters.length;chap++)
					 {
						  /*var cparameter = sqbQuestionChapterWiseParameters[chap].parameter;
							var cnospaceid = cparameter.replace(/\s/g,'');*/
							$("#chapterwiseparam").append(sqbQuestionChapterWiseParameters[chap].parameter+', ');
					 } 
				 }
				 if(wholeQuestionData[0].difficulty_level != ""){
					 $("#difflevel_level").html(wholeQuestionData[0].difficulty_level);
				 }else{
					  $("#difflevel_level").html('level did not selected');
				 }
				 
				    if(wholeQuestionData[0].veryimpquestion){
						$("#veryimpquestion").html("YES");
					} else {
						$("#veryimpquestion").html("NO");
					}
					
					//display previous examtypes and years
					var compitativeData = wholeQuestionData[0].sqbOtherCompetativeExamsLists;
					
					for(var compi = 0; compi < compitativeData.length; compi++){
						
						var competativeExamtype = compitativeData[compi].competativeExamtype;
						var other_competitiveexams_yearId = compitativeData[compi].other_competitiveexams_yearId;
						var joinDataYear = other_competitiveexams_yearId.join(',');
						
						if(compi !== compitativeData.length-1){
							$("#examcategory").append(competativeExamtype+'('+joinDataYear+') , ');
						} else{
							$("#examcategory").append(competativeExamtype+'('+joinDataYear+')');
						}
						
						
						
					}
					 var sqbPreviousExamType = wholeQuestionData[0].sqbPreviousExamTypeLists;
					 for(var sqbPrevious = 0; sqbPrevious < sqbPreviousExamType.length; sqbPrevious++){
					 var sqbpreexamtype = sqbPreviousExamType[sqbPrevious].competativeExamtype;
						var sqbprevyear = sqbPreviousExamType[sqbPrevious].other_competitiveexams_yearId;
						var  sqbdatayear= sqbprevyear.join(' ,');
						
						if(sqbPrevious !== sqbPreviousExamType.length-1){
							$("#prevquespreview").append(sqbpreexamtype+'('+sqbdatayear+') , ');
						} else{
							$("#prevquespreview").append(sqbpreexamtype+'('+sqbdatayear+')');
						}
					 }
					
					//display modules
					var moduleData = wholeQuestionData[0].sqbModulePojos;
					
					for(var mod = 0;mod < moduleData.length; mod++){
						
						var moduleName = moduleData[mod].moduleName;
						var subModuleName = moduleData[mod].subModuleName;
						
						if(mod !== moduleData.length-1){
							$("#moduleSpan").append(moduleName+'('+subModuleName+') , ');
						} else{
							$("#moduleSpan").append(moduleName+'('+subModuleName+')');
						}
						
						
						
					}
					
					//display examtypes and level
					var examtypeLevel = wholeQuestionData[0].sqlQuestionExamtypePojos;
					
					for(var lvl = 0;lvl < examtypeLevel.length; lvl++){
						
						var examtypeName = examtypeLevel[lvl].examtype;
						var level = examtypeLevel[lvl].level;
						
						if(lvl !== examtypeLevel.length-1){
							$("#examLevelSpan").append(examtypeName+'('+level+') ,');
						} else{
							$("#examLevelSpan").append(examtypeName+'('+level+')');
						}
						
						
					}
					

				});
				
			
			
		});
			
  	} else {
  		sessionStorage.setItem("editmode", false);
		window.location = base_url + "jsp/dean/addquestions/upload.jsp";
  	}

  	
	});
  	
  
  	</script>
	
</div>
<!-- </form> -->
<!--Main Content--->
