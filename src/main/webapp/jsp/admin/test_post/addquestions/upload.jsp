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
					<div class="col-sm-12 mt-15">
						<div class="btn-group pull-right">
							<button type="button" class="btn btn-preview">Step 1</button>
							<button type="button" class="btn btn-default btn-outline">Step 2</button>
							<button type="button" class="btn btn-default btn-outline">Step 3</button>
						</div>
					</div>
				</div>
				<hr class="light-grey-hr mt-10 mb-10">
				<div class="row">
					<div class="col-sm-12">
					<form id="question-sub" action="upload_layout.jsp" method="Post">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Category <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="category" onchange="getSelectedExamType(this.value);" data-style="form-control btn-default btn-outline" name="category">
										
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Exam Type  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="examtype" onchange="getSelectedStandards(this.value);" data-style="form-control btn-default btn-outline" name="examType" disabled>
										
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Standard  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="standard" onchange="getSelectedSubject(this.value);" data-style="form-control btn-default btn-outline" name="standard" disabled>
										
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Subject  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="subject" onchange="getSelectedUnit(this.value);" data-style="form-control btn-default btn-outline" name="subject" disabled >
										
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Unit  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="unit" onchange="getSelectedChapter(this.value);" data-style="form-control btn-default btn-outline" name="unit" disabled>
									
									</select>
								</div>
							</div>	
							<input type="hidden" value="" id="questionId">
			                 <input type="hidden" value="" id="subjectsel">
			                <input type="hidden" value="" id="questionNo">
			                 
			                 
							
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Chapter  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="chapter" onchange="" data-style="form-control btn-default btn-outline" name="chapter" disabled>
										<!-- <option>--- Select ---</option>
										<option>Chapter 1</option>
										<option>Chapter 2</option>
										<option>Chapter 3</option> -->
									</select>
								</div>
							</div>	
						</div>
					</div>
					<div class="row mt-30">
						<div class="col-md-6 col-md-offset-3 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Question Type  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
									<select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType" name="questionType" disabled>
										<!-- <option>--- Select ---</option>
										<option>Single Correct</option>
										<option>Multi Correct</option> -->
									</select>
								</div>
							</div>	
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-3 col-md-offset-5">
							<div class="button-list">
								<%-- <a href="<%= AppConstants.BASE_URL %>sme/addquestions/upload_layout.jsp" class="btn btn-save_next">Next</a> --%>
					             <a id="step1Btn" class="btn btn-save_next"  onclick="addQuestionStep1();" >Next</a>
								
								
								
							</div>
						</div>
					</div>
				</form>
					</div>
				</div>
				<hr class="light-grey-hr mt-30 mb-10">
				<input type="hidden" value="" id="questionTypeMain">
				<input type="hidden" value="" id="questionTypeid">
			</div>
		</div>
	</div>
	<!-- /Row -->
</div>
<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>
<%@include file="/jsp/master/footer.jsp" %>
</div>
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>

<script>
	$("#manualselect").addClass('active-page');
$(document).ready(function() {
	
	
	//var questionId = JSON.parse(atob(getCookie('questionId')));
	//questionId is used as test post id to get category,exam type etc ...
	var questionId = getParameterByName('tid');
	var qid = getParameterByName('id');
	
	var examTypeId = getParameterByName('etpId');
	var examType = getParameterByName('etp');
	var subject = getParameterByName('sub');
	var standard = getParameterByName('std');
	var subjectId = getParameterByName('subId');
	var standardId = getParameterByName('stdId');
	
	
	var questiontype = getParameterByName('layout');
	var questiontypename = getParameterByName('layoutname');
	
	var testPostDetailId = getParameterByName('testPostId');
	//qno used to save test history
	var qno = getParameterByName('qno');

    //alert("Hiiii");
	//alert(questionId);
	
	//var smeId = getSmeId();
	//getCategoriesBySmeId(smeId);
	//getCategoriesByName();
	
	
    var wqd;
    
    var ion = getParameterByName('ion');
    
	if(questionId!=='' && questionId !== null && ion === null ) {
		// questionId is not null 
		
		sessionStorage.setItem("testPostDetailId", testPostDetailId);
		sessionStorage.setItem("testPostId", questionId);
		sessionStorage.setItem("tpeditmode", false);
		
		$("#questionId").val(questionId);
		$("#subjectsel").val(subject);
		$("#questionNo").val(qno);
	
		
		
		getQuestionDataByTestPostId(questionId, function(wholeQuestionData){
			
			wqd = wholeQuestionData;
			if(questiontype == "" ||  questiontype == undefined || questiontype == null){
		questiontype = wqd.questiontype;
	}else{
		questiontype = questiontype;
	}
	$("#questionTypeMain").val(questiontype);
			var inputData = '{"categoryId":"'+wqd.categoryId+'","examtypeId":"'+examTypeId+'","standardId":"'+standardId+'","subjectId":"'+subjectId+'"}';

		    var appenddata;
		    $.ajax({
		        type: "POST",
		          dataType: "json",
		          contentType: 'application/json', 
		          url: base_url+'rest/question/v1/getunits',
		          data: inputData,
		          cache:false,
		          beforeSend: function() {
		            $("#loading").show();
		         },
		          success: function(data){
		              $("#loading").hide();
		              for(var i=0; i < data.length; i++){
		            	     var units = data[i].name;
		                    
		                    appenddata += '<option value="'+data[i].id+'">'
		                            +units+'</option>';
		                  
		              } 
		             
		            	  jQuery("#unit").empty("");
		                  jQuery("#unit").append('<option value="">--- Select ---</option>');
		                  jQuery("#unit").append(appenddata);
		                  
		                  $("#unit").prop("disabled", false);
		                  
		                    $("#examtype").append('<option value="">--- Select ---</option><option value="'+examTypeId+'">'+examType+'</option>');
	         			    $("#examtype").val(examTypeId);
	         			    
	         				$("#standard").append('<option value="">--- Select ---</option><option value="'+standardId+'">'+standard+'</option>');
	         				$("#standard").val(standardId);
	         				
	         				$("#subject").append('<option value="">--- Select ---</option><option value="'+subjectId+'">'+subject+'</option>');
	         				$("#subject").val(subjectId);
	         				
	         				
	         				$("#questionType").append('<option value="">--- Select ---</option><option value="'+questiontypename+'">'+questiontypename+'</option>');
	         				$("#questionType").val(questiontypename);
	         				
	         				$("#examtype").prop("disabled",true);
	         				$("#standard").prop("disabled",true);
	         				$("#subject").prop("disabled",true);
	         				$("#questionType").prop("disabled",true);
	         		
	         				$(document).ajaxComplete(function(){
	         					$("#category").append('<option value="">--- Select ---</option><option value="'+wqd.categoryId+'">'+wqd.category+'</option>');
	         					$("#category").val(wqd.categoryId);
	         					$("#category").prop("disabled",true);
	         					$('.selectpicker').selectpicker('refresh');
	         				});
	         		
		                  $('.selectpicker').selectpicker('refresh');
					
		          },
		          error: function(data) {        
		              $("#loading").hide();
		              alert("Units not found!");

		          }
		          
		    });
		
		});

	} else if(ion !== "" && ion !== null && qid !=='' && qid !== null ){
		//$("#questionTypeMain").val(questiontype);
		
		sessionStorage.setItem("tpeditmode", true);
		
		getQuestionDataById(qid, function(wholeQuestionData){
			
			wqd = wholeQuestionData[0];
			if(questiontype == "" ||  questiontype == undefined || questiontype == null){
		questiontype = wqd.questiontype;
	}else{
		questiontype = questiontype;
	}
	$("#questionTypeMain").val(questiontype);
			$("#questionTypeid").val(wqd.questiontypeId);
		
			
			$("#examtype").append('<option value="">--- Select ---</option><option value="'+wqd.examtypeId+'">'+wqd.examtype+'</option>');
		    $("#examtype").val(wqd.examtypeId);
		    
			$("#standard").append('<option value="">--- Select ---</option><option value="'+wqd.standardId+'">'+wqd.standard+'</option>');
			$("#standard").val(wqd.standardId);
			
			$("#subject").append('<option value="">--- Select ---</option><option value="'+wqd.subjectId+'">'+wqd.subject+'</option>');
			$("#subject").val(wqd.subjectId);
			
			$("#unit").append('<option value="">--- Select ---</option><option value="'+wqd.unitId+'">'+wqd.unit+'</option>');
			$("#unit").val(wqd.unitId);
			
			$("#chapter").append('<option value="">--- Select ---</option><option value="'+wqd.chapterId+'">'+wqd.chapter+'</option>');
			$("#chapter").val(wqd.chapterId);
			
			$("#questionType").append('<option value="">--- Select ---</option><option value="'+questiontypename+'">'+questiontypename+'</option>');
			$("#questionType").val(questiontypename);
			
			
			
			$("#examtype").prop("disabled",true);
			$("#standard").prop("disabled",true);
			$("#subject").prop("disabled",true);
			$("#unit").prop("disabled",true);
			$("#chapter").prop("disabled",true);
			$("#questionType").prop("disabled",true);
	
			$(document).ajaxComplete(function(){
				$("#category").append('<option value="">--- Select ---</option><option value="'+wqd.categoryId+'">'+wqd.category+'</option>');
				$("#category").val(wqd.categoryId);
				$("#category").prop("disabled",true);
				$('.selectpicker').selectpicker('refresh');
			});
		
			
			$('.selectpicker').selectpicker('refresh');
			
			
		});
		
	} else{
		sessionStorage.setItem("tpeditmode", false);
	}
	
	
	

	
});

</script> 
