<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>
.control-label{
text-transform: none;
}
</style>
	
	
<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
				</div>
				<!-- /Title -->
								<form id="saveandpreview" action="upload_preview.jsp" method="Post">
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="row">
								<div class="panel-heading">
									<div class="col-sm-4 pull-left">
										<h6 class="panel-title txt-dark"><span class="creations_heading">Parameters</span></h6>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="btn-group pull-right">
										<button type="button" class="btn btn-default btn-outline">Step 1</button>
										<button type="button" class="btn btn-default btn-outline">Step 2</button>
										<button type="button" class="btn btn-preview">Step 3</button>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row parameter_div">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">The above Question belong to the Topic </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker sky_blue_border" id="belongs" data-style="form-control btn-default btn-outline" name="topicbelongsto">
															<!-- <option value="">--- Select ---</option>
															<option value="Topic 1">Topic 1</option>
															<option value="Topic 2">Topic 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Difficulty Level </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="row radio radio-info" id="diffi_wrap">
														
															<!-- Difficulty level radio buttons should append here -->
															
														</div>
													</div>
												</div>	
											</div>
											
											<div id="parameters_wrap">
											
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="">Previous year MAINS Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="previousyear1" multiple data-style="form-control btn-default btn-outline" name="previousyear1" >
															<!-- <option value="">--- Select ---</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option> -->
														</select>
													</div>
												</div>	
											</div>
											<input type="hidden" value="" id="questionId">
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous Year Questions from other Competitive Exams </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<div class="row radio radio-info">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory" data-style="form-control btn-default btn-outline" name="examcategory">
																	<!-- <option value="">--- Select ---</option>
																	<option value="EAMCET">EAMCET</option>
																	<option value="KCET">KCET</option>
																	<option value="TNCET">TNCET</option> -->
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	<!-- <option value="">--- Select ---</option>
																	<option value="2017">2017</option>
																	<option value="2016">2016</option>
																	<option value="2015">2015</option>
																	<option value="2014">2014</option>
																	<option value="2013">2013</option> -->
																</select>
															</div>
															<!-- <div class="col-sm-2">
																<a href="#" class=""><i class="fa fa-plus-circle fa-3x green"></i></a>
															</div> -->
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="impquestion">Very Important Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="checkbox checkbox-success">
															<input id="impquestion" type="checkbox" name="impquestions">
															<label for="impquestion"></label>
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Comments</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<input type="email" id="comments" name="comments" class="form-control" placeholder="Enter Comments">
													</div>
												</div>	
											</div>
										</div>
										<input type="hidden" value="" id="originalparamters">
										<input type="hidden" value="" id="leveloriginalparameters">
										<input type="hidden" value="" id="layouthd">
										<div class="row">
											<div class="col-md-5 col-md-offset-5">
												<div class="button-list mt-10 mb-20">
													<a id="param_back" class="btn btn-back">Back</a>
													<a id="saveBtn3" class="btn btn-save_next" onclick="addQuestionStep3();">Save & Preview</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Row -->
				</form>
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
		

	
var questionId = getParameterByName('id');

var layouthdp = getParameterByName("layout");
$("#layouthd").val(layouthdp);

if(questionId !=='' && questionId !== null) {

		
		$("#questionId").val(questionId);
		
		// get topics
		var topicappenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  cache:false,
			  contentType: 'application/json', 
			  url: base_url + 'rest/question/v1/gettopics/'+questionId,
			  success: function(data){
			
			   
		       for(var i=0; i < data.length; i++){
		    	   
				 
				 topicappenddata += '<option value="'+data[i].id+'">'+data[i].topic+'</option>';
							
				}
		       
		       	$("#belongs").empty("");
				$("#belongs").append('<option value="">--- Select ---</option>');
				$("#belongs").append(topicappenddata);
					
				
				
				
				$.ajax({
					type: "GET",
					  dataType: "json",
					  cache:false,
					  contentType: 'application/json', 
					  url: base_url + 'rest/question/v1/getcharacteristics/'+questionId,
					  success: function(datas){
						  
						  
						  if(datas.length==0){
							  alert("Characteristic not found!");
						  }else{
							  var data = datas[0];

							  //difficulty
							  var difficulty = data.difficultyLevel;
							  $("#leveloriginalparameters").val(difficulty);
							  
							  if(difficulty!== "" && difficulty !== null){
								  difficulty = difficulty.split(',');
								  
								  var diffiData = ""; 
								  for(var d = 0;d<difficulty.length;d++){
									  
									  diffiData += '<div class="col-sm-4"><input type="radio" name="levelradio" id="diffiRadio'+d+'" value="'+difficulty[d]+'" ><label for="'+difficulty[d]+'">'+difficulty[d]+'</label></div>';
									  
								  }
								 
								  
								  $("#diffi_wrap").empty("");
								  $("#diffi_wrap").append(diffiData);
							  }
							
							  
							  
							  // parameters
							  var parameters = data.parameters;
							  
							  $("#originalparamters").val(parameters);
							  
							  if(parameters!== "" && parameters !== null){
								  parameters = parameters.split(',');
								  
								  
								  var paramData = ""; 
								  var nospaceid;
								  for(var p = 0; p < parameters.length;p++){
									  nospaceid = parameters[p].replace(/\s/g,'');
									  paramData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-4 col-md-4 col-sm-4 col-xs-10"><label class="control-label" for="'+nospaceid+'">'+parameters[p]+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><div class="checkbox checkbox-success"><input id="'+nospaceid+'" value="'+parameters[p]+'" type="checkbox" class="paramChecks"><label for="'+nospaceid+'"></label></div></div></div></div>';
									  
								  }
								  
								  $("#parameters_wrap").empty("");
								  $("#parameters_wrap").append(paramData);
								  
							  }
							 
						  
						  
						  
						  //previousyear1
						  var pyear1 = data.previousYearQuestionsId;
						  if(pyear1!== "" && pyear1 !== null ){
							
							  var py1Data = ""; 
							  for(var py1 = 0; py1 < pyear1.length; py1++){
								  
								  py1Data += '<option value="'+pyear1[py1].id+'">'+pyear1[py1].name+'</option>';
								  
							  }
							  $("#previousyear1").empty("");
							  $("#previousyear1").append('<option value="">--- Select ---</option>');
							  $("#previousyear1").append(py1Data);
						  }
						  
	  
						  
						  
						  
						  
						  //previousyear2
						
						  var pyear2 = data.previousYearOthersCompetitativeExamsId;
						 
						  if(pyear2!== "" && pyear2 !== null){
							  var py2Data = ""; 
							  for (var py2 =0; py2 < pyear2.length; py2 ++){
								  py2Data += '<option value="'+pyear2[py2].id+'">'+pyear2[py2].name+'</option>';
							  }
							  
							  $("#previousyear2").empty("");
							  $("#previousyear2").append('<option value="">--- Select ---</option>');
							  $("#previousyear2").append(py2Data);
						  }
						 
						 
						//otherexamscompitative
						  var competativeExams = data.competativeExams;
						  
						  if(competativeExams!== "" && competativeExams !== null){
							  competativeExams = competativeExams.split(',');
							  
							  var py3Data = ""; 
							  for(var py3 = 0; py3 < competativeExams.length; py3++){
								  
								  py3Data += '<option value="'+competativeExams[py3]+'">'+competativeExams[py3]+'</option>';
								  
							  }
							  
							  $("#examcategory").empty("");
							  $("#examcategory").append('<option value="">--- Select ---</option>');
							  $("#examcategory").append(py3Data);
						  }
						  
						  $('.selectpicker').selectpicker('refresh');
						  
						  
						  getQuestionDataById(questionId, function(wholeQuestionData){
							  
							  var pd = wholeQuestionData[0];
							  $("#belongs").val(pd.topicId);
							  $('input:radio[value="'+pd.difficulty_level+'"]').prop("checked",true);
							  
							  var params = pd.selectedparameters;
							  if(params!== "" && params !== null){
								  params = params.split(',');
								  
								  for(var pm = 0; pm < params.length;pm++){
									  var boole = params[pm];
									  var nospaceid = boole.replace(/\s/g,'');
									  $("#"+nospaceid).prop("checked",true);
									  
									  
									  
								  }
							  }
							  
							  
							  var ppyear1 = pd.previouyear_mainquestionsId;
							  var prevyearrvalue=[];
							  if(ppyear1!== "" && ppyear1 !== null){
								
									  //pyear3 = pyear3.split(',');
									  for (var l=0; l < ppyear1.length; l++){
										  var yearid =ppyear1[l].id;
										 prevyearrvalue.push(yearid);
									  }
									 }
								  
							 
							  $("#previousyear1").val(prevyearrvalue);
						
							  
							  
							  var othercompti = pd.other_competitiveexams;
							  
							  if(othercompti !== "" && othercompti !== null && othercompti !== undefined) {
								  othercompti = othercompti.split(',');
								  
								  $("#examcategory").val(othercompti);
							  }
							  
							  var ppyear2 = pd.other_competitiveexams_yearId;
							  var  prevotheryearrvalue=[]; 
							  if(ppyear2!== "" && ppyear2 !== null){
								  for (var k=0; k < ppyear2.length; k++){
										 prevotheryearrvalue.push(ppyear2[k].id);
									  }
								  
								
							  }
							  $("#previousyear2").val(prevotheryearrvalue);
							  
							  $("#impquestion").prop("checked",pd.veryimpquestion);
							  
							  $("#comments").val(pd.comments);
							  
							  $('.selectpicker').selectpicker('refresh');
							  
						  });
						  }
						  

					  },
					  error: function(data) {		
						  alert("Characteristics not found!");
					  }
				      	
				});
				
				

			  },
			  error: function(data) {		
				  alert("Topics not found!");
			  }
		      	
		});
		
		
	}  else {
		alert("No question Id, please enter question step 1");
		sessionStorage.setItem("tpeditmode", false);

	}

	});
	
	
	

	
  	</script>
  	
  	
  	
	
  	
</div>
<!-- /Main Content -->
