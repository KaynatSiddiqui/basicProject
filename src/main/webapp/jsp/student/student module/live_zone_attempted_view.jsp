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
							<div class="panel-heading mb-10">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">View </span><span class="main_heading_theme_color"> Paper</span></h6>
								</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_active_full_mocks.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Active</a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_attempted_full_mocks.jsp" class="btn btn-danger">Attempted </a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_missed_full_mocks.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Missed </a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_upcoming_full_mocks.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Upcoming </a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_live_zone_toppers.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Live Zone Toppers</a>
									</div>
								</div>
							</div>
							<div class="row mb-20">
								<div class="col-sm-12">
									<div class="button-list" id="subjts">
										<!-- <a href="#" class="btn btn-danger">Physics</a>
										<a href="#" class="btn btn-danger btn-outline fancy-button btn-0">Chemistry</a>
										<a href="#" class="btn btn-danger btn-outline fancy-button btn-0">Maths</a> -->
									</div>
								</div>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<form>
											<div class="row" id="mainsection">
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">Q. 1</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															A family consists of two grandparents, two parents and three grandchildren. The average age of the grandparents is 67 years, that of the parents is 35 years and that of the grandchildren is 6 years. What is the average age of the family?
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">A. </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															28 4/7Years
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">B. </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															31 5/7Years
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">C. </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															32 1/7Years
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">D. </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															None of these
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">Key </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															(B)
														</div>
													</div>	
												</div> -->
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row form-group">
														<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
															<label class="control-label" for="example-email">Hint Solution</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															Required average =  (67X2+35X2+6X32+2+3) /(2+2+3)

																			  = (134+70+187)/7

																			  = 22/7

																			  = 31 5/7Years
														</div>
													</div>	
												</div> -->
											</div>
											
										</form>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<!-- /Row -->
			</div>
				<%@include file="/jsp/master/footer.jsp" %>
</div>
<!-- /Main Content -->
    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script> 

	
	
	<script>
	
	$(document).ready(function(){
		getSubjectsAttempt();	
			
		
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
			 subject = $("#subjts a:first-child").text();
		 }
		var inputData = 
				{
					  "testPostId":  Id,
					  "subject":subject
				}
				
		 

		var inputdata = JSON.stringify(inputData);

			$.ajax({
				url   :  base_url+'rest/testpost/getsectionwisequestions',
				async:false,
				type  : "POST",
				dataType: "json",
				contentType:'application/json',
				data: inputdata,
				success: function(data){
					var testQuestionData = data.testPostQuestionDetails;
		
					   for(var i=0; i < testQuestionData.length; i++){ 
						 
					            previewdata = "<div id='sec1"+(i+1)+"'><span class='theme_color bold'>"+testQuestionData[i].section+"<span class=''>( "+testQuestionData[i].questionType+" )</span><div id='sect"+(i+1)+"'> </div></span><hr class='light-grey-hr mb-5'></div>";
				   				var questionData = testQuestionData[i].questions;
				   				
				   				previewdataques = "";
				   				
				   			 $("#mainsection").append(previewdata);
					              for(var j=0; j < questionData.length; j++){ 
					            	  
					            	  	 var layoutRes = questionData[j].questiontype;
					            	  	 if(intiRegex.test(layoutRes)){
					 						// integer layout
					            	  		previewdataques = "<br>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											"<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
											
					 					  } else if(matrix.test(layoutRes)){
					 						
					 						
					 						
					 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
					 						// single correct and multi correct
					 						   previewdataques = "<br>";
						            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											   "<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option1['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option2['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option3['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option4['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else {
					 						// Comprehension and multi Comprehension
					 						 previewdataques = "<br>";
					            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
										     "<span class=''>Passage Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
					 						 var pquestion = questionData[j].questionDetails;
					 						 for(var pq = 0;pq<pquestion.length;pq++){
					 							previewdataques += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											     "<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option1['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option2['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option3['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option4['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
					 						 }
					 						
					 					  }
					            	 	     
										  
								             
								           $("#sect"+(i+1)).append(previewdataques);
										  
					              }
					              previewdata = "";
					              //$("#sect"+(i+1)).empty();
					             
					              
					              }
					 
				},
				error:function(data){
					alert("no questions");
				}
			
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
		var subject = $(subje).text();
		 var Id=getParameterByName('id'); 
		 
		 var inputData = 
			{
				
				  "testPostId":  Id,
				  "subject":subject
			
			}
			
	var inputdata = JSON.stringify(inputData);

		 $.ajax({
				url   :  base_url+'rest/testpost/getsectionwisequestions',
				async:false,
				type  : "POST",
				dataType: "json",
				contentType:'application/json',
				data: inputdata,
				success: function(data){
					var testQuestionData = data.testPostQuestionDetails;
					 $("#mainsection").empty();
					 
					              for(var i=0; i < testQuestionData.length; i++){ 
						 
					            	  previewdata = "<div id='sec1"+(i+1)+"'><span class='theme_color bold'>"+testQuestionData[i].section+"<span class=''>( "+testQuestionData[i].questionType+" )</span><div id='sect"+(i+1)+"'> </div></span><hr class='light-grey-hr mb-5'></div>";
				   				var questionData = testQuestionData[i].questions;
				   				
				   				previewdataques = "";
				   				
				   			 $("#mainsection").append(previewdata);
				   			$("#sect"+(i+1)).empty();
					              for(var j=0; j < questionData.length; j++){ 
					            	  var layoutRes = questionData[j].questiontype;
					            	  	 if(intiRegex.test(layoutRes)){
					 						// integer layout
					            	  		previewdataques = "<br>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											"<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else if(matrix.test(layoutRes)){
					 						
					 						
					 						
					 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
					 						// single correct and multi correct
					 						  previewdataques = "<br>";
						            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											   "<span class=''>Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option1['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option2['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option3['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option4['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else {
					 						// Comprehension and multi Comprehension
					 						 previewdataques = "<br>";
					            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
										     "<span class=''>Passage Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
					 						 var pquestion = questionData[j].questionDetails;
					 						 for(var pq = 0;pq<pquestion.length;pq++){
					 							previewdataques += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											     "<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option1['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option2['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option3['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option4['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row form-group'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
					 						 }
					 						
					 					  }
								              $("#sect"+(i+1)).append(previewdataques);
										  
					              }
					              previewdata = "";
					              //$("#sect"+(i+1)).empty();
					    
					              }
				
				},
				error:function(data){
					alert("no questions");
				}
			
			});
	}
	 
	</script>
	

	