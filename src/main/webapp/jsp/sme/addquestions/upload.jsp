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
									<select class="selectpicker" id="category" onchange="" data-style="form-control btn-default btn-outline" name="category">
										<!-- <option>--- Select ---</option>
										<option>Category 1</option>
										<option>Category 2</option> -->
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Standard<span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="standard" onchange="getSelectedSubjectBySmeId(this.value)" data-style="form-control btn-default btn-outline" name="standard">
										<!-- <option>--- Select ---</option>
										<option>Mains</option>
										<option>NEET</option> -->
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
									<select class="selectpicker" id="subject" onchange="getSelectedUnitBySmeId(this.value);" data-style="form-control btn-default btn-outline" name="subject" disabled >
										
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
									<select class="selectpicker" id="unit" onchange="getSelectedChapterBySmeId(this.value);" data-style="form-control btn-default btn-outline" name="unit" disabled>
										
									</select>
								</div>
							</div>	
							<input type="hidden" value="" id="questionId">
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Chapter  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="chapter" onchange="getAllSQBLayouts();" data-style="form-control btn-default btn-outline" name="chapter" disabled>
										
									</select>
								</div>
							</div>	
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<!-- <div class="row form-group">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Topics  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<select class="selectpicker" id="topic" onchange="getAllSQBLayouts();" data-style="form-control btn-default btn-outline" name="chapter" disabled>
										
									</select>
								</div>
							</div>	-->
							<div class="row form-group">
								<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Question Type  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
									<select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType" name="questionType" disabled>
										
									</select>
								</div>
							</div>	
						</div>
					</div>
					 <!--  <div class="row mt-30">
						<div class="col-md-6 col-md-offset-3 col-xs-12">
							<div class="row form-group">
								<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
									<label class="control-label" for="example-email">Question Type  <span class="red">*</span></label>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
								<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
									<select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType" name="questionType" disabled>
										
									</select>
								</div>
							</div>	
						</div>
						
					</div>-->
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
			</div>
		</div>
	</div>
	<input type="hidden" id="layoutformat" value="">
	<!-- /Row -->
</div>
<%@include file="/jsp/master/footer.jsp" %>
</div>
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/sme.js"></script>

<script>
$(document).ready(function() {
	
	
	//var questionId = JSON.parse(atob(getCookie('questionId')));
	var questionId = getParameterByName('id');
	//alert(questionId);
	
	var smeId = getSmeId();
	
	
    var wqd;
	if(questionId!=='' && questionId !== null) {
		// questionId is not null 
		
		sessionStorage.setItem("editmode", true);
		$("#questionId").val(questionId);
		getAllSQBLayouts();
		//call previewquestion
		getSQBQuestionDataById(questionId, function(wholeQuestionData){
			
			wqd = wholeQuestionData;

			/* $("#category").val(wqd[0].categoryId);
			$("#examtype").val(wqd[0].examtypeId);
			$("#standard").val(wqd[0].standardId);
			$("#subject").val(wqd[0].subjectId);
			$("#unit").val(wqd[0].unitId);
			$("#chapter").val(wqd[0].chapterId);
			$("#questionType").val(wqd[0].questiontypeId);
 */			
			$("#category").append('<option value="">--- Select ---</option><option value="'+wqd[0].categoryId+'">'+wqd[0].category+'</option>');
			$("#category").val(wqd[0].categoryId);
			$("#category").prop('disabled',true);

			$("#standard").append('<option value="">--- Select ---</option><option value="'+wqd[0].standardId+'">'+wqd[0].standard+'</option>');
			$("#standard").val(wqd[0].standardId);
			$("#standard").prop('disabled',true);

			/* $("#examtype").append('<option value="">--- Select ---</option><option value="'+wqd[0].examtypeId+'">'+wqd[0].examtype+'</option>');
			$("#examtype").val(wqd[0].examtypeId);
			$("#examtype").prop('disabled',true); */

			$("#subject").append('<option value="">--- Select ---</option><option value="'+wqd[0].subjectId+'">'+wqd[0].subject+'</option>');
			$("#subject").val(wqd[0].subjectId);
			$("#subject").prop('disabled',true);
			
			$("#unit").append('<option value="">--- Select ---</option><option value="'+wqd[0].unitId+'">'+wqd[0].unit+'</option>');
			$("#unit").val(wqd[0].unitId);
			$("#unit").prop('disabled',true);
			
			$("#chapter").append('<option value="">--- Select ---</option><option value="'+wqd[0].chapterId+'">'+wqd[0].chapter+'</option>');
			$("#chapter").val(wqd[0].chapterId);
			$("#chapter").prop('disabled',true);
			
			/*$("#topic").append('<option value="">--- Select ---</option><option value="'+wqd[0].topicId+'">'+wqd[0].belong_topic+'</option>');
			$("#topic").val(wqd[0].topicId);
			$("#topic").prop('disabled',true);*/
			
			//$("#questionType").append('<option value="">--- Select ---</option><option value="'+wqd[0].questiontype+'">'+wqd[0].questiontype+'</option>');
			$("#questionType").val(wqd[0].questiontype);
			$("#questionType").prop('disabled',true);
		
			$("#layoutformat").val(wqd[0].questiontype);
			$('.selectpicker').selectpicker('refresh');
		});

	} else {
		//getCategoriesBySmeId(smeId);
		getCategoriesByName();
		getSelectedStandardsBySmeId(smeId);
		sessionStorage.setItem("editmode", false);
	}
	
	
	

	
});

</script> 
