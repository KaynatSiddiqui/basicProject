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
						<div class="panel panel-default card-view" style='color:#2f2b2b'>
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
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="questionId-div" >
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Last Modified Date </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="modified" >
											
										</div>
									</div>	
								</div>
								<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
								</div> -->
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Comments</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="commentsp" >
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Present in Exam Type</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="presentexamtype" >
											  
										</div>
									</div>	
								</div>
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
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="categorypreview" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Exam Type </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="examtype" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="standard" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subject</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="subject" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Unit</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="unit" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="chapter" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Question Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="questionType" >
														
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
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="instructions" >
														
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email" id="questionLabel">Question</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="question" >
															
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
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="question1" >
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="options-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Options</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="options" >
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
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option1" >
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option2-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 2</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option2" >
															
													</div>
												</div>	
											</div> 
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option3-div"> 
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 3</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option3" >
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 noptions" id="option4-div">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Option 4</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="option4" >
															
													</div>
												</div>	
											</div>
											
										
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email" id="answer_label">Answer</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" >
														<span class="bold green" id="answer"></span>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Hint / Solution / Explanation</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="hint" >
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-2 col-md-2 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Concept</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="concept" >
															
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
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">The above Question belong to the Topic </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="belongsTo" >
														
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Difficulty Level </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="difficulty" >
														
													</div>
												</div>	
											</div>
											
												<div id="parameters_wrap">
											
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
											 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous year MAINS Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="previousyear1" >
													
													</div>
												</div>	
											</div> 
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous Year Questions from other Competitive Exams </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" >
														<span id="examcategory"></span> 
														
														<span id="previousyear2"></span>
													 
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Very Important Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="veryimpquestion" >
														
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
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				
				<!-- /Row -->
				<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>
    </div>
	<%@include file="/jsp/master/footer.jsp" %>
  	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
  	<script>
  	$("#manualselect").addClass('active-page');
  	$(document).ready(function() {
  		$("#qsepa").hide();
  		$("#question1-div").hide();
  		$("#options-div").hide();
  		var layouthdpv = getParameterByName("layout");
  		$("#layouthd").val(layouthdpv);
  		
		//categories default get service in table  in admin

		function getCharcterstics(qestId, callback){
		var chappenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  cache:false,
			  contentType: 'application/json', 
			  url: base_url+'rest/question/v1/getcharacteristics/'+qestId,
			 
			  success: function(data){
				  $("#loading").hide();
				  
				  // parameters
				  var parameters = data[0].parameters;
				  if(parameters !== "" && parameters !== null){
					  parameters = parameters.split(',');
					  
					  var paramData = ""; 
					  var nospaceid;
					  for(var p = 0; p < parameters.length;p++){
						  nospaceid = parameters[p].replace(/\s/g,'');
						  paramData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-4 col-md-4 col-sm-4 col-xs-10"><label class="control-label" for="'+nospaceid+'">'+parameters[p]+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"  id="'+nospaceid+'"> NO </div>	</div>	</div>';
							
					  }
					  
					  $("#parameters_wrap").empty("");
					  $("#parameters_wrap").append(paramData);
					  callback();
				  } else {
					 
					  
				  }
				 
				  
				  
				  
			  },
			  error: function(data) {		
				 
				

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
			} else{
				$("#preview_back").html("Back");
			}
			
			
			
			getCharcterstics(questionId, function(){
				
				// questionId is not null 
				
				
				getQuestionDataById(questionId,function(wholeQuestionData){
					
					$("#modified").html(wholeQuestionData[0].modifieddate);
				
					
					$("#commentsp").html(wholeQuestionData[0].comments);
					$("#presentexamtype").html(wholeQuestionData[0].examtype);
					$("#categorypreview").html(wholeQuestionData[0].category);
					
					
					
					$("#examtype").html(wholeQuestionData[0].examtype);
					$("#standard").html(wholeQuestionData[0].standard);
					$("#subject").html(wholeQuestionData[0].subject);
					$("#unit").html(wholeQuestionData[0].unit);
					$("#chapter").html(wholeQuestionData[0].chapter);
					$("#questionType").html(wholeQuestionData[0].questiontype);
					$("#instructions").html(wholeQuestionData[0].instructions);
					
					
					
					$("#question").html(wholeQuestionData[0].question);
					$("#answer").html(wholeQuestionData[0].answer);
					$("#hint").html(wholeQuestionData[0].solution);
					
					$("#concept").html(wholeQuestionData[0].concept);
					 $("#belongsTo").html(wholeQuestionData[0].belong_topic);
					 
				    $("#difficulty").html(wholeQuestionData[0].difficulty_level);
					
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
						
						var qdata = wholeQuestionData[0].questiondetails;
						
						$("#question1").html(qdata[0].question["value"]);
						$("#option1").html(qdata[0].option1["value"]);
						$("#option2").html(qdata[0].option2["value"]);
						$("#option3").html(qdata[0].option3["value"]);
						$("#option4").html(qdata[0].option4["value"]);
						
						$("#answer").html(qdata[0].answer["value"]);
						$("#hint").html(qdata[0].solution["value"]);
						$("#concept").html(qdata[0].concept["value"]);
						
						var appenddata = '';
						
						for(var pq=1;pq<qdata.length;pq++){
							var vanswer = qdata[pq].answer["value"];
							appenddata = '';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Question '+(pq+1)+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  id="question'+(pq+1)+'">'+ qdata[pq].question["value"]	+'</div></div></div>';
							for(var opt=1;opt<=4;opt++){
								appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="option'+opt+'-div"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Option '+opt+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  id="option'+opt+'">'+qdata[pq]["option"+opt].value+'</div></div></div>';
							}
							
							appenddata += '<div c\lass="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Answer</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><span class="bold green" id="answer'+(pq+1)+'">'+vanswer+'</span></div></div></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Hint / Solution / Explanation</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  id="hint'+(pq+1)+'">'+qdata[pq].solution["value"]+'</div></div></div>';
							appenddata += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-2 col-md-2 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Concept</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="concept'+(pq+1)+'">'+qdata[pq].concept["value"]+'</div></div></div>';
							
							
							$("#extraquestions").append(appenddata);
						}
					}
					
					rendereelemntforkatext();
					
					
					
					
				 
				 var parameters=wholeQuestionData[0].selectedparameters;
				 
				 if(parameters !== "" && parameters !== null){
					  parameters = parameters.split(',');
						
						 
						 for(var p = 0; p < parameters.length;p++)
						 {
								
								if( $("label:contains("+parameters[p]+")") )
								{
									var nospaceid = parameters[p].replace(/\s/g,'');
								    $("#"+nospaceid).html("YES");
								
								}else{
									$("#"+nospaceid).html("NO")
								}
						 } 
				 } else {
					 
					
				 }

				 
				 
				  if(wholeQuestionData[0].veryimpquestion){
						$("#veryimpquestion").html("YES");
					} else {
						$("#veryimpquestion").html("NO");
					}
					
				 
				/*	$("label:contains(graph)").css("background-color", "red"); */
				var prevvyearId=[];
                   var prevyear1preview = wholeQuestionData[0].previouyear_mainquestionsId;
					
					for(var prev1 = 0; prev1 < prevyear1preview.length;prev1++){
						
						prevvyearId.push(prevyear1preview[prev1].name);
						}
					var PrevvOtheryearId =[];
					var prevyaer2othercompet = wholeQuestionData[0].other_competitiveexams_yearId;
for(var prev2 = 0; prev2 < prevyaer2othercompet.length;prev2++){
						
						PrevvOtheryearId.push(prevyaer2othercompet[prev2].name);
						}
				    $("#previousyear1").html(prevvyearId.join());
					$("#examcategory").html(wholeQuestionData[0].other_competitiveexams);
					$("#previousyear2").html(PrevvOtheryearId.join());
					

				});
				
			
			
		});
			
  	} else {
  		sessionStorage.setItem("tpeditmode", false);

  	}

  	
	});
  	
  
  	</script>
	
</div>
<!-- </form> -->
<!--Main Content--->
