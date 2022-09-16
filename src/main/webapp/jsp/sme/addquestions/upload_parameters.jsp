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
							<hr class=	"light-grey-hr mb-10">
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
											<div id="chapterparameters_wrap">
											
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Previous Year Questions</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_exam_0" data-style="form-control btn-default btn-outline" name="prevyears_exam">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_year_0" multiple data-style="form-control btn-default btn-outline" name="prevyears_year">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_exam_1" data-style="form-control btn-default btn-outline" name="prevyears_exam">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_year_1" multiple data-style="form-control btn-default btn-outline" name="prevyears_year">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_exam_2" data-style="form-control btn-default btn-outline" name="prevyears_exam">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_year_2" multiple data-style="form-control btn-default btn-outline" name="prevyears_year">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_exam_3" data-style="form-control btn-default btn-outline" name="prevyears_exam">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_year_3" multiple data-style="form-control btn-default btn-outline" name="prevyears_year">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_exam_4" data-style="form-control btn-default btn-outline" name="prevyears_exam">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="prevyears_year_4" multiple data-style="form-control btn-default btn-outline" name="prevyears_year">
																	
																</select>
															</div>
														</div>
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
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory_0" data-style="form-control btn-default btn-outline" name="examcategory">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2_0" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-sm-offset-2 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory_1" data-style="form-control btn-default btn-outline" name="examcategory">
																	
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2_1" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-sm-offset-2 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory_2" data-style="form-control btn-default btn-outline" name="examcategory">
																	
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2_2" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-sm-offset-2 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory_3" data-style="form-control btn-default btn-outline" name="examcategory">
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2_3" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	
																</select>
															</div>
														</div>
													</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 col-sm-offset-2 col-md-offset-5">
														<div class="row">
															<div class="col-sm-4">
																<select class="selectpicker" id="examcategory_4" data-style="form-control btn-default btn-outline" name="examcategory">
																
																</select>
															</div>
															<div class="col-sm-4">
																<select class="selectpicker" id="previousyear2_4" multiple data-style="form-control btn-default btn-outline" name="previousyear2">
																	
																</select>
															</div>
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
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Modules</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" id="moduleWrap">
															
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<p style="text-align: center;font-size: 20px;">Levels</p>
														<hr>
													</div>
													<div id="examLevelWrap">
														
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
    </div>
<%@include file="/jsp/master/footer.jsp" %>

  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/sme.js"></script>

<script>


$(document).ready(function() {
		

	
var questionId = getParameterByName('id');

var layouthdp = getParameterByName("layout");
$("#layouthd").val(layouthdp);

var levelData = []; 

function getLevelRadios(eid){
	
	var levelAppend = '<div class="col-sm-9 radio radio-primary">';
	
	for(var s = 0;s < levelData.length;s++){
		levelAppend += '<div class="col-sm-2 col-md-2" id="levelRadioDiv_'+s+'">';
		levelAppend += '<input type="radio" name="levelRadio_'+eid+'" id="levelRadio_'+eid+'_'+levelData[s].id+'" value="'+levelData[s].id+'">';
		levelAppend += '<label for="levelRadio_'+eid+'_'+levelData[s].id+'">'+levelData[s].levelName+'</label>';
		levelAppend += '</div>';
	}
	
	levelAppend += '</div>';
	
	return levelAppend;
}
function singlelevel(){
	var levelthree = '<div class="col-sm-9 radio radio-primary">';
	
	for(var sthr = 0;sthr < levelData.length;sthr++){
		levelthree += '<div class="col-sm-4 col-md-4">';
		levelthree += '<input type="radio" name="levelradio" id="diffiRadio'+sthr+'" value="diff_'+levelData[sthr].id+'">';
		levelthree += '<label for="'+levelData[sthr].id+'">'+levelData[sthr].levelName+'</label>';
		levelthree += '</div>';
	}
	
	levelthree += '</div>';
	
	return levelthree;
	
}


if(questionId !=='' && questionId !== null) {

		
	$("#questionId").val(questionId);
		
	//preview question service call
	getSQBQuestionDataById(questionId, function(wholeQuestionData){
  	  
	  var pd = wholeQuestionData[0];	
	  var topicappenddata;
		
		var standard =   pd.standardId;
	var subject =   pd.subjectId;
	var chapter=    pd.chapterId;
	var unit =  pd.unitId;
	var inputData = {
			"standardId":standard,
			"subjectId":subject,
			"unitId":unit,
			"chapterId":chapter
	}
	var output = JSON.stringify(inputData);
	
	
	
	$.ajax({
		type: "POST",
		dataType: "json",
		async: false,
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getAllTopicsbyStdSubUnitChap',
		data: output,
		success: function(data){
			for(var i=0; i < data.length; i++){
 topicappenddata += '<option value="'+data[i].topicId+'">'+data[i].topic+'</option>';
			}

			  	$("#belongs").empty("");
				$("#belongs").append('<option value="">--- Select ---</option>');
				$("#belongs").append(topicappenddata);
			
			
			
					
		// get params
		$.ajax({
			type: "GET",
			  dataType: "json",
			  async: false,
			  contentType: 'application/json', 
			  url: base_url + 'rest/admin/sqb/getparameters',
			  success: function(data){

		    	  // parameters
			  	  var paramData = ""; 
				  var nospaceid;
				  paramData += '<h6 style=" color: blue;">Main Parametres</h6>';
				  for(var p = 0; p < data.length;p++){
					  var paramName = data[p].paramName;
					  var paramId = data[p].id;
					  nospaceid = paramName.replace(/\s/g,'');
 
					  paramData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-4 col-md-4 col-sm-4 col-xs-10"><label class="control-label" for="'+nospaceid+'">'+paramName+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><div class="checkbox checkbox-success"><input id="'+nospaceid+'" value="'+paramName+'" data-id="'+paramId+'" data-rowid="0" type="checkbox" class="paramChecks"><label for="'+nospaceid+'"></label></div></div></div></div>';
					  
				  }
				  
				  $("#parameters_wrap").empty("");
				  $("#parameters_wrap").append(paramData);
				 
				  $.ajax({
						type: "GET",
						  dataType: "json",
						  contentType: 'application/json', 
						  url: base_url + 'rest/question/getChapterWiseParameters/'+questionId,
						  success: function(data){

					    	  // parameters
						  	  var chapterparamData = ""; 
							  var chapternospaceid;
							  chapterparamData += '<h6 style=" color: blue;">Chapter wise Parametres</h6>';
							  for(var p = 0; p < data.length;p++){
								  var chapterparamName = data[p].name;
								  var chapterparamId = data[p].id;
								  //chapternospaceid = chapterparamName.replace(/\s/g,'');
			 chapternospaceid = chapterparamId;
								  chapterparamData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row form-group"><div class="col-lg-4 col-md-4 col-sm-4 col-xs-10"><label class="control-label" for="'+chapternospaceid+'">'+chapterparamName+'</label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><div class="checkbox checkbox-success"><input id="'+chapternospaceid+'" value="'+chapterparamName+'" data-id="'+chapterparamId+'" data-rowid="0" type="checkbox" class="chapparamChecks"><label for="'+chapternospaceid+'"></label></div></div></div></div>';
								  
							  }
							  
							  $("#chapterparameters_wrap").empty("");
							  $("#chapterparameters_wrap").append(chapterparamData);
				  
				  
				  
				  
				  
				  //get comptitative exams and years dropdowns
				  $.ajax({
					  type: "GET",
					  dataType: "json",
					  cache:false,
					  async: false,
					  contentType: 'application/json', 
					  url: base_url + 'rest/admin/getcompetativeExamAndYears',
					  success: function(ComptiData){
						  
						  
						  if(ComptiData.length==0){
							  alert("competativeExamtypes/Years are empty!");
						  }else{
							 var competativeExamtypes = ComptiData.competativeExamtypes;
							 var years = ComptiData.years;

						  //previousyear2
						  var pyear2 = years;
						  if(pyear2!== "" && pyear2 !== null){
							  var py2Data = ""; 
							  for (var py2 =0; py2 < pyear2.length; py2 ++){
								  py2Data += '<option value="'+pyear2[py2].id+'">'+pyear2[py2].year+'</option>';
							  }
							  
							  //first dropdown
							  $("#previousyear2_0").empty("");
							  $("#previousyear2_0").append('<option value="">--- Select ---</option>');
							  $("#previousyear2_0").attr("data-rowid","0");
							  $("#previousyear2_0").append(py2Data);
							  
							  //second dropdown
							  $("#previousyear2_1").empty("");
							  $("#previousyear2_1").append('<option value="">--- Select ---</option>');
							  $("#previousyear2_1").attr("data-rowid","0");
							  $("#previousyear2_1").append(py2Data);
							  
							  //third dropdown
							  $("#previousyear2_2").empty("");
							  $("#previousyear2_2").append('<option value="">--- Select ---</option>');
							  $("#previousyear2_2").attr("data-rowid","0");
							  $("#previousyear2_2").append(py2Data);
							  
							  //fourth dropdown
							  $("#previousyear2_3").empty("");
							  $("#previousyear2_3").append('<option value="">--- Select ---</option>');
							  $("#previousyear2_3").attr("data-rowid","0");
							  $("#previousyear2_3").append(py2Data);
							  
							  //fifth dropdown
							  $("#previousyear2_4").empty("");
							  $("#previousyear2_4").append('<option value="">--- Select ---</option>');
							  $("#previousyear2_4").attr("data-rowid","0");
							  $("#previousyear2_4").append(py2Data);
							  
							  
							  //for previous years, year dropdown
							  $("#prevyears_year_0").empty("");
							  $("#prevyears_year_0").append('<option value="">--- Select ---</option>');
							  $("#prevyears_year_0").attr("data-rowid","0");
							  $("#prevyears_year_0").append(py2Data);
							 
							  $("#prevyears_year_1").empty("");
							  $("#prevyears_year_1").append('<option value="">--- Select ---</option>');
							  $("#prevyears_year_1").attr("data-rowid","0");
							  $("#prevyears_year_1").append(py2Data);
							  
							  $("#prevyears_year_2").empty("");
							  $("#prevyears_year_2").append('<option value="">--- Select ---</option>');
							  $("#prevyears_year_2").attr("data-rowid","0");
							  $("#prevyears_year_2").append(py2Data);
							  
							  $("#prevyears_year_3").empty("");
							  $("#prevyears_year_3").append('<option value="">--- Select ---</option>');
							  $("#prevyears_year_3").attr("data-rowid","0");
							  $("#prevyears_year_3").append(py2Data);
							  
							  $("#prevyears_year_4").empty("");
							  $("#prevyears_year_4").append('<option value="">--- Select ---</option>');
							  $("#prevyears_year_4").attr("data-rowid","0");
							  $("#prevyears_year_4").append(py2Data);
							  
						  }
						 
						  $('.selectpicker').selectpicker('refresh');
						  
						  //otherexamscompitative
						  var competativeExams = competativeExamtypes;
						  
						  if(competativeExams!== "" && competativeExams !== null){
							  
							  var py3Data = ""; 
							  for(var py3 = 0; py3 < competativeExams.length; py3++){
								  
								  py3Data += '<option value="'+competativeExams[py3].id+'">'+competativeExams[py3].examtype+'</option>';
								  
							  }
							  
							  //first dropdown
							  $("#examcategory_0").empty("");
							  $("#examcategory_0").append('<option value="">--- Select ---</option>');
							  $("#examcategory_0").attr("data-rowid","0");
							  $("#examcategory_0").append(py3Data);
							  
							  //second dropdown
							  $("#examcategory_1").empty("");
							  $("#examcategory_1").append('<option value="">--- Select ---</option>');
							  $("#examcategory_1").attr("data-rowid","0");
							  $("#examcategory_1").append(py3Data);
							  
							  //third dropdown
							  $("#examcategory_2").empty("");
							  $("#examcategory_2").append('<option value="">--- Select ---</option>');
							  $("#examcategory_2").attr("data-rowid","0");
							  $("#examcategory_2").append(py3Data);
							  
							  //fourth dropdown
							  $("#examcategory_3").empty("");
							  $("#examcategory_3").append('<option value="">--- Select ---</option>');
							  $("#examcategory_3").attr("data-rowid","0");
							  $("#examcategory_3").append(py3Data);
							  
							  //fifth dropdown
							  $("#examcategory_4").empty("");
							  $("#examcategory_4").append('<option value="">--- Select ---</option>');
							  $("#examcategory_4").attr("data-rowid","0");
							  $("#examcategory_4").append(py3Data);
							  
							  
							 /*  $("#prevyears_exam_0").empty("");
							  $("#prevyears_exam_0").append('<option value="">--- Select ---</option>');
							  $("#prevyears_exam_0").attr("data-rowid","0");
							  $("#prevyears_exam_0").append(py3Data);
							  
							  //second dropdown
							  $("#prevyears_exam_1").empty("");
							  $("#prevyears_exam_1").append('<option value="">--- Select ---</option>');
							  $("#prevyears_exam_1").attr("data-rowid","0");
							  $("#prevyears_exam_1").append(py3Data);
							  
							  //third dropdown
							  $("#prevyears_exam_2").empty("");
							  $("#prevyears_exam_2").append('<option value="">--- Select ---</option>');
							  $("#prevyears_exam_2").attr("data-rowid","0");
							  $("#prevyears_exam_2").append(py3Data);
							  
							  //fourth dropdown
							  $("#prevyears_exam_3").empty("");
							  $("#prevyears_exam_3").append('<option value="">--- Select ---</option>');
							  $("#prevyears_exam_3").attr("data-rowid","0");
							  $("#prevyears_exam_3").append(py3Data);
							  
							  //fifth dropdown
							  $("#prevyears_exam_4").empty("");
							  $("#prevyears_exam_4").append('<option value="">--- Select ---</option>');
							  $("#prevyears_exam_4").attr("data-rowid","0");
							  $("#prevyears_exam_4").append(py3Data);*/
							  
							  
						  }
						 
						 
						  $('.selectpicker').selectpicker('refresh');
						  
						  }
						  //getting modules
						  $.ajax({
								type: "GET",
								  dataType: "json",
								  cache:false,
								  contentType: 'application/json', 
								  url: base_url + 'rest/admin/sqb/getmodules',
								  success: function(moduleData){
									  
									  var moduleAppend = "";
									  if(moduleData.length>0){
										  for(var m = 0; m < moduleData.length; m++){
											  var moduleName = moduleData[m].moduleName;
											  var moduleDetails = moduleData[m].moduledetails;
											  var ModId = moduleData[m].id;
											  var submoduleId = moduleData[m].submoduleId;
											  var subModulePresent = 0;
											  
											  if(moduleDetails !== null && moduleDetails.length > 0){
												  subModulePresent = 1;
											  }
											  
											  moduleAppend += '<div class="col-sm-7 zeroMarPad" id="mainModuleDiv_'+m+'"><div class="col-md-12 zeroMarPad"><div class="checkbox checkbox-warning">';
											  moduleAppend += '<input type="checkbox" class="mainModule" id="module_'+ModId+'" data-subpresent="'+subModulePresent+'" data-id="'+ModId+'" data-rowid="0" value="'+ModId+'">&nbsp;&nbsp;<label for="module_'+ModId+'">'+moduleName+'</label></div></div>';
											  
											  if(subModulePresent>0){
												  moduleAppend += '<div class="col-sm-12">';
												  
												  for(var d = 0;d < moduleDetails.length;d++){
													  
													  var mdName = moduleDetails[d].moduleName;
													  var subModid = moduleDetails[d].id;
													  moduleAppend += '<div class="radio radio-primary" id="subModule_'+d+'">';
													  moduleAppend += '<input type="radio" name="subModRadio_'+ModId+'" class="subModRadio" id="subModRadio_'+subModid+'" data-id="'+subModid+'" value="'+subModid+'">';
													  moduleAppend += '<label for="subModRadio_'+subModid+'">'+mdName+'</label>';
													  moduleAppend += '</div>';
												  }
												  
												  moduleAppend += '</div>';
											  } else{
												  
												  moduleAppend += "</div></div>";
												  
											  }
											  
											  moduleAppend += '</div>';
											  
										  } 
										  
										  $("#moduleWrap").empty("");
										  $("#moduleWrap").append(moduleAppend);
									  } else{
										  alert("No modules available!");
									  }
									  
									  
									  //getting levels
									  $.ajax({
										  type: "GET",
										  dataType: "json",
										  cache:false,
										  contentType: 'application/json', 
										  url: base_url + 'rest/admin/sqb/getlevels',
										  success: function(levelRadioData){
											  
											  levelData = levelRadioData;
                         
						  $("#diffi_wrap").empty("");
								  $("#diffi_wrap").append( singlelevel());
											  
												  var categid = pd.categoryId;
												  var standardid = pd.standardId;
												  
												  var inputData = '{"categoryId":"'+categid+'", "standardId":"'+standardid+'"}';
												  
												  //getting examtypes
												  var examLevelAppend = '';
												  var examDropdowns = '';
												  $.ajax({
														type: "POST",
														dataType: "json",
														async: false,
														contentType: 'application/json', 
														url: base_url+'rest/question/v1/getexamtypes?source=step3',
														data: inputData,
													    success: function(examLeveldata){
													    	
													    	for(var el=0; el < examLeveldata.length; el++){
													    		examLevelAppend += '<div class="wraprow_'+el+' col-lg-12 col-md-12 col-sm-12 col-xs-12 col-md-offset-3">';
													    		examLevelAppend += '<div class="col-sm-3 col-md-3 checkbox checkbox-warning">';

													    		examLevelAppend += '<input type="checkbox" class="examLevelChecks" data-rowid="0" id="examLevel_'+examLeveldata[el].id+'" value="'+examLeveldata[el].id+'">&nbsp;&nbsp;<label for="examLevel_'+examLeveldata[el].id+'">'+examLeveldata[el].examtype+'</label>';
													    		examLevelAppend += '</div>';
													    		examLevelAppend += getLevelRadios(examLeveldata[el].id);
													    		examLevelAppend += '</div>';
													    		
													    		examDropdowns += '<option value="'+examLeveldata[el].id+'">'+examLeveldata[el].examtype+'</option>';
													    		
													    	}
													    	
													    	  
													    	
													    	$("#examLevelWrap").empty("");
													    	$("#examLevelWrap").append(examLevelAppend);
													    	
													    	 $("#prevyears_exam_0").empty("");
															  $("#prevyears_exam_0").append('<option value="">--- Select ---</option>');
															  $("#prevyears_exam_0").attr("data-rowid","0");
															  $("#prevyears_exam_0").append(examDropdowns);
															  
															  //second dropdown
															  $("#prevyears_exam_1").empty("");
															  $("#prevyears_exam_1").append('<option value="">--- Select ---</option>');
															  $("#prevyears_exam_1").attr("data-rowid","0");
															  $("#prevyears_exam_1").append(examDropdowns);
															  
															  //third dropdown
															  $("#prevyears_exam_2").empty("");
															  $("#prevyears_exam_2").append('<option value="">--- Select ---</option>');
															  $("#prevyears_exam_2").attr("data-rowid","0");
															  $("#prevyears_exam_2").append(examDropdowns);
															  
															  //fourth dropdown
															  $("#prevyears_exam_3").empty("");
															  $("#prevyears_exam_3").append('<option value="">--- Select ---</option>');
															  $("#prevyears_exam_3").attr("data-rowid","0");
															  $("#prevyears_exam_3").append(examDropdowns);
															  
															  //fifth dropdown
															  $("#prevyears_exam_4").empty("");
															  $("#prevyears_exam_4").append('<option value="">--- Select ---</option>');
															  $("#prevyears_exam_4").attr("data-rowid","0");
															  $("#prevyears_exam_4").append(examDropdowns);
													    	
													    	/*$("#prevyears_exam").empty("");
													    	$("#prevyears_exam").append('<option value="">--- Select ---</option>');
													    	$("#prevyears_exam").append(examDropdowns);*/
													    	
													    },
													    error: function(e){
													    	alert("Examtypes not found!!");
													    }
												  });
													    	
													    	
													    	$("#belongs").val(pd.topicId);
															$('input:radio[value="diff_'+pd.difficulty_levelId+'"]').prop("checked",true);
															  
															//$('.selectpicker .sky_blue_border').selectpicker('refresh');
													    	  //setting previous years exams and years
															  var PreviousExamTypeLists = pd.sqbPreviousExamTypeLists;
															  
																  
															  if(PreviousExamTypeLists.length !== 0){
																   for(var Pet = 0;Pet < PreviousExamTypeLists.length;Pet++){
																  var prevexamid_set = PreviousExamTypeLists[Pet].competativeExamtypeId;
																  var prevyearid_set = PreviousExamTypeLists[Pet].other_competitiveexams_year;
																  
																  $("#prevyears_exam_"+Pet).val(prevexamid_set);
																  $("#prevyears_exam_"+Pet).attr("data-rowid",PreviousExamTypeLists[Pet].id);
																  
																  $("#prevyears_year_"+Pet).val(prevyearid_set);
																  $("#prevyears_year_"+Pet).attr("data-rowid",PreviousExamTypeLists[Pet].id);
																   }  }
															  
															  
															
															  //setting parameters
															  var params = pd.sqbQuestionParameters;
															  if(params!== "" && params !== null){
																  
																  for(var pm = 0; pm < params.length;pm++){
																	  var boole = params[pm].parameter;
																	  var nospaceid = boole.replace(/\s/g,'');
																	  $("#"+nospaceid).prop("checked",true);
																	  $("#"+nospaceid).attr("data-rowid",params[pm].id);
																  }
																  
															  }
															  
															  //setting chapter parametres
															    if(pd.hasOwnProperty("sqbQuestionChapterWiseParameters")){
															    var chapterparams = pd.sqbQuestionChapterWiseParameters;
															  if(chapterparams!== "" && chapterparams !== null){
																  
																  for(var cpm = 0; cpm < chapterparams.length;cpm++){
																	  var cboole = chapterparams[cpm].parameter;
																	 // var cnospaceid = cboole.replace(/\s/g,'');
																	 var cnospaceid =    chapterparams[cpm].paramterId;
																	  $("#"+cnospaceid).prop("checked",true);
																	  $("#"+cnospaceid).attr("data-rowid",chapterparams[cpm].id);
																  }
																  
																}}
																  
															  //setting compitative exams and years
															  var competitiveexams = pd.sqbOtherCompetativeExamsLists;
															  for(var cet = 0;cet < competitiveexams.length;cet++){
																  
																  var competativeExamtype_set = competitiveexams[cet].competativeExamtypeId;
																  var other_competitiveexams_yearId_set = competitiveexams[cet].other_competitiveexams_year;
																  
																  $("#examcategory_"+cet).val(competativeExamtype_set);
																  $("#examcategory_"+cet).attr("data-rowid",competitiveexams[cet].id);
																  
																  $("#previousyear2_"+cet).val(other_competitiveexams_yearId_set);
																  $("#previousyear2_"+cet).attr("data-rowid",competitiveexams[cet].id);
															  }
															  

															  $("#impquestion").prop("checked",pd.veryimpquestion);
															  
															  $("#comments").val(pd.comments);
															  
															  
															  //setting modules
															  var moduleSets = pd.sqbModulePojos;
															  for(var mos = 0;mos < moduleSets.length; mos++){
																  var moduleId_set = moduleSets[mos].moduleId;
																  var submoduleId_set = moduleSets[mos].submoduleId;
																  
																  $("#module_"+moduleId_set).prop("checked",true);
																  
																  $("#module_"+moduleId_set).attr("data-rowid",moduleSets[mos].id);
																  
																  if(submoduleId_set !== null && submoduleId_set !== "" && submoduleId_set !== undefined){
																	  $("#subModRadio_"+submoduleId_set).prop("checked",true);
																	  $("#subModRadio_"+submoduleId_set).attr("data-rowid",moduleSets[mos].id);
																  }
																  
															  }
															  
															  //setting examtype levels
															  var sqlQuestionExamtypePojos = pd.sqlQuestionExamtypePojos;
															  for(var exl = 0;exl < sqlQuestionExamtypePojos.length; exl++){
																  var examtypeId_set = sqlQuestionExamtypePojos[exl].examtypeId;
																  var levelId_set = sqlQuestionExamtypePojos[exl].levelId;
																  
																  $("#examLevel_"+examtypeId_set).prop("checked",true);
																  $("#examLevel_"+examtypeId_set).attr("data-rowid",sqlQuestionExamtypePojos[exl].id);

																  $("#levelRadio_"+examtypeId_set+"_"+levelId_set).prop("checked",true);
																  $("#levelRadio_"+examtypeId_set+"_"+levelId_set).attr("data-rowid",sqlQuestionExamtypePojos[exl].id);
															  }
															  
															  
															  $('.selectpicker').selectpicker('refresh');
													 
											  
										 	 
								  		  },
								  		  error: function(e){
								  			  
								  		  }
									  });
									  
									  
								  },
								  error: function(e){
									  
								  }
						  });
				  
				  
					  }, //competetiv eyears
					error: function(e){
						alert("competativeExamtypes/Years not found!");
						
					}
				});
						  }, //Chapterwise param
							error: function(e){
								//alert("competativeExamtypes/Years not found!");
								
							}
						});
				  
			  },
			  error: function(data) {		
				  alert("Parameters not found!");
			  }
		      	
		});
		 },
			  error: function(data) {		
				  alert("Topics not found!");
			  }
		      	
		});
		
	});
		
	}  else {
		alert("No question Id, please enter question step 1");
		sessionStorage.setItem("editmode", false);
		window.location = base_url + "jsp/sme/addquestions/upload.jsp";
	}
	
	
	


});
	
	

	
  	</script>
  	
  	
  	
	
  	
</div>
<!-- /Main Content -->
