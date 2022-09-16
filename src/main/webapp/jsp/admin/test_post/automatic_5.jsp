<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
	<style>
	.qtn-colon{
	padding-left:10px;
	}
	.colors{
	color:#878787;
	}
	tbody, tfoot, thead, tr, th, td{
	border: 1px solid #777;
}

#subjts a.active { background:rgba(177, 0, 88, 0.85) !important ; color:#fff !important; }

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
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Automatic</span></h6>
							  </div>
							  <div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<div class="button-list text-center" id="subjts">
												
											</div>
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="mainsection" >
										
												</div>
												<div id ="section1"></div>
												
												
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div  id="sec2"></div>
													<!-- <span class="theme_color bold">Section 2: <span class="">(Type of Question Name here)</span></span>
													<hr class="light-grey-hr mb-5"> -->
												</div>
												<div id ="section2"></div>
										
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="sec3">
													<!-- <span class="theme_color bold">Section 3: <span class="">(Type of Question Name here)</span></span>
													<hr class="light-grey-hr mb-5"> -->
												</div>
												<div id ="section3"></div>
												
												
											</div>
										</div>
									</div>
								</div>
							</div>
								
							<div class="row mb-30">
								<div class="col-md-7 col-md-offset-4">
									<div class="button-list mt-25">
										<a href="" id="automatic_5_backBtn" class="btn  btn-warning">Back</a>
										<a id="manual_view" class="btn  btn-primary">Next</a>
										<!--  <a href="" class="btn  btn-danger">Cancel</a>-->
									</div>
								</div>
							</div>
								
						</div>	
						
					</div>
				</div>
			<!-- /Row -->
			<input type="hidden" value="" id="firstSubject">
 				<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>
			</div>
		</div>
        <!-- /Main Content -->
         <%@include file="/jsp/master/footer.jsp" %>
  	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	
	

<script>

	$("#manualselect").addClass('active-page');
$(document).ready(function(){
	 $(document).on('click' ,'#subjts a', function() {
	        $(this).closest('#subjts').find('a.active').removeClass('active');
	        $(this).addClass('active');
	      });
	    
	
	var checkOrigin = document.referrer;
	var automatic_5_backBtn = $("#automatic_5_backBtn");
	
	if(checkOrigin.indexOf('manual_view.jsp') != -1){
		//came from manual_view.jsp
		
		var id = getParameterByName('id');
		automatic_5_backBtn.attr('href',base_url+'jsp/admin/test_post/manual_view.jsp?id='+id);
		
	}else if(checkOrigin.indexOf('test_post_history_all_posts_dailyscoope.jsp') != -1 ){
		automatic_5_backBtn.attr('href',base_url+'jsp/admin/test_post/test_post_history_all_posts_dailyscoope.jsp');
	} else{
		//came from test_post_history_all_posts.jsp	
     $("#manual_view").hide();
		automatic_5_backBtn.attr('href',base_url+'jsp/admin/test_post/test_post_history_all_posts.jsp');

	}
	
	$("#manual_view").attr('href',base_url+'jsp/admin/test_post/manual_preview.jsp?id='+getParameterByName('id'));
	
	var comprh = /(_8_|_9_|_10_)/;
    var intiRegex  = /_7_I/;
    var multiComprh = /_11_/;
  	var matrix = /_12_X/;
  	
	var subject ="";
	var issubjectclk = false; 

	var previewdata ="";
	var previewdataques ="";
	var inputData =""; 
	var inputdata =""; 
	
	 var Id=getParameterByName('id'); 
	
	 
	 if(!issubjectclk){
		 subject = $("#firstSubject").val();
	 }
	getSubjects(function(dsub){
		
		var inputData = 
		{
			
			  "testPostId":  Id,
			  "subjectId":dsub.id
		
		}
		
 

	var inputdata = JSON.stringify(inputData);

		$.ajax({
			url   :  base_url+'rest/testpost/v1/getsectionwisequestions',
			async:false,
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				var testQuestionData = data.testPostQuestionDetails;
	
				   for(var i=0; i < testQuestionData.length; i++){ 
					  var layoutRes = testQuestionData[i].questionType;

				            previewdata = "<div id='sec1"+(i+1)+"' style='color:#2f2b2b'><span class='bold'>"+testQuestionData[i].section+"<span class=''>( "+testQuestionData[i].questionType+" )</span><div id='sect"+(i+1)+"'> </div></span><hr class='light-grey-hr mb-5'></div>";
			   				var questionData = testQuestionData[i].questions;
			   				
			   				previewdataques = "";
			   				
			   			 $("#mainsection").append(previewdata);
				              for(var j=0; j < questionData.length; j++){ 
				            	 
				            	  	 if(intiRegex.test(layoutRes)){
				 						// integer layout
				            	  		previewdataques = "<br>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										"<span class=''>Q. ("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-10 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key <span class='qtn-colon'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].answer+"</span></div></div></div>"; 
										previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-2 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution <span class='qtn-colon'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
										
				 					  } else if(matrix.test(layoutRes)){
				 						
				 						var labels = ["A","B","C","D"];
				 						var appendata= "";
				 						var acan = questionData[j].answer;
				 						var arr_acan = acan.split('|');
				 						
				 						for(var lb = 0;lb<labels.length;lb++){
				 							appendata += labels[lb] + ") " + arr_acan[lb] + "<br>";
				 						}
				 						
				 						previewdataques = "<br>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										"<span class=''>Q. ("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+appendata+"</span></div></div></div>"; 
										previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
				 						
				 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
				 						// single correct and multi correct
				 						   previewdataques = "<br>";
					            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										   "<span class=''>Q. ("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options1<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option1['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options2<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option2['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options3<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option3['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options4<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option4['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].answer+"</span></div></div></div>"; 
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
				 						
				 					  } else {
				 						// Comprehension and multi Comprehension
				 						 previewdataques = "<br>";
				            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
									     "<span class=''>Passage Q.("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
				 						 var pquestion = questionData[j].questionDetails;
				 						 for(var pq = 0;pq<pquestion.length;pq++){
				 							previewdataques += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
				 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										     "<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options1<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option1['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options2<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option2['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options3<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class='''>"+pquestion[pq].option3['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options4<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option4['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
				 						 }
				 						
				 					  }
				            	 	     
									  
							             
							           $("#sect"+(i+1)).append(previewdataques);
							           rendereelemntforkatext();
				              }
				              previewdata = "";
			
				             
				              
				              }
				             
			

		},
		error:function(data){
			alert("no questions");
		}
	
	});

	});	
	

	 
	
	
}); 
 function getsubjectwise(subje){
	 
     var comprh = /(_8_|_9_|_10_)/;
	 var intiRegex  = /_7_I/;
	 var multiComprh = /_11_/;
	 var matrix = /_12_X/;
	 var previewdata ="";
	 var previewdataques ="";
	 var inputData =""; 
	 var inputdata =""; 
	 var subject = $(subje).data('id');
	 var Id=getParameterByName('id'); 
	 
	 var inputData = 
		{
			  "testPostId":  Id,
			  "subjectId":subject
	
		}
		
var inputdata = JSON.stringify(inputData);

	 $.ajax({
			url   :  base_url+'rest/testpost/v1/getsectionwisequestions',
			async:false,
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				var testQuestionData = data.testPostQuestionDetails;
				 $("#mainsection").empty();
				 
				              for(var i=0; i < testQuestionData.length; i++){ 
					  var layoutRes = testQuestionData[i].questionType;

				            	  previewdata = "<div id='sec1"+(i+1)+"' style='color:#2f2b2b'><span class='bold'>"+testQuestionData[i].section+"<span class=''>( "+testQuestionData[i].questionType+" )</span><div id='sect"+(i+1)+"'> </div></span><hr class='light-grey-hr mb-5'></div>";
			   				var questionData = testQuestionData[i].questions;
			   				
			   				previewdataques = "";
			   				
			   			 $("#mainsection").append(previewdata);
			   			$("#sect"+(i+1)).empty();
				              for(var j=0; j < questionData.length; j++){ 
				            	
				            	  	 if(intiRegex.test(layoutRes)){
				 						// integer layout
				            	  		previewdataques = "<br>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										"<span class=''>Q. ("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
					            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].answer+"</span></div></div></div>"; 
										previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
				 						
				 					  } else if(matrix.test(layoutRes)){
				 						
				 						 var labels = ["A","B","C","D"];
					 						var appendata= "";
					 						var acan = questionData[j].answer;
					 						var arr_acan = acan.split('|');
					 						
					 						for(var lb = 0;lb<labels.length;lb++){
					 							appendata += labels[lb] + ") " + arr_acan[lb] + "<br>";
					 						}
					 						
					 						previewdataques = "<br>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
											"<span class=''>Q. ("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md- col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+appendata+"</span></div></div></div>"; 
											previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
				 						
				 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
				 						// single correct and multi correct
				 						  previewdataques = "<br>";
					            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										   "<span class=''>Q.("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options1<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option1['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options2<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option2['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options3<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option3['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options4<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].option4['value']+"</span></div></div></div>";
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+questionData[j].answer+"</span></div></div></div>"; 
										   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
				 						
				 					  } else {
				 						// Comprehension and multi Comprehension
				 						 previewdataques = "<br>";
				            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
									     "<span class=''>Passage Q.("+questionData[j].id+")<span class='qtn-colon' style='color:#2f2b2b'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
				 						 var pquestion = questionData[j].questionDetails;
				 						 for(var pq = 0;pq<pquestion.length;pq++){
				 							previewdataques += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
				 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' style='color:#2f2b2b' for='example-email'>"+
										     "<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")<span class='qtn-colon'>:</span></span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options1<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option1['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options2<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option2['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options3<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option3['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> options4<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].option4['value']+"</span></div></div></div>";
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> key<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'><span class=''>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
										    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-1 col-md-1 col-sm-3 col-xs-11'><label class='control-label colors' for='example-email' style='color:#2f2b2b'> solution<span class='qtn-colon' style='color:#2f2b2b'>:</span></label></div><div class='col-lg-11 col-md-11 col-sm-9 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
				 						 }
				 						
				 					  }
							              $("#sect"+(i+1)).append(previewdataques);
							              rendereelemntforkatext();
									  
				              }
				              previewdata = "";

				              
				              }


			},
			error:function(data){
				alert("no questions");
			}
		
		});
}
 
</script>