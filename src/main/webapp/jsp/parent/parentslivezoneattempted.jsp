<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <link href="<%=request.getContextPath()%>/assets/css/student/css/livezoneattempted.css" rel="stylesheet">

	<!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
				<input type="hidden" id="studenactive" value="livezoneattempeted"/>
				<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/sidebaractive/attempted.png"/>
				
			<!-- Row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view bg" style="padding-left: 0px;padding-right: 0px;">
						<div class="">
							<div class="panel-heading">
								
								
								
							</div>
							
							<div class="row">
								<div class="col-sm-2" id="getspace">
								 <img src="<%=request.getContextPath()%>/assets/images/students/Attempted.svg" class="img-responsive">
								</div>
								<div class="col-sm-5">
									<div class="button-list">
										<a href="#Tab_1" id="mock" data-toggle="tab" role="tab" class="btn active"><%= AppConstants.MOCKTEST %></a>
										<a href="#Tab_2" id="sub" data-toggle="tab" role="tab" class="btn"><%= AppConstants.SUBJECTWISE_MOCK %></a>
										<a href="#Tab_3" id="full"  data-toggle="tab" role="tab" class="btn"><%= AppConstants.FULLSYALLBUSMOCK %></a>
									</div>
								</div>
								<div class="col-sm-3">
									<!-- <div  class="tab-struct custom-tab-1 mt-20">
										<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="myTabs_7">
											<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">Jee-Mains</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Jee-Advanced</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">BITSAT</a></li>
										</ul>
									</div> -->
									  <div class="form-group">
                                            <label class="control-label mb-5 bold">Exam Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  id="examtype" onchange="onChangeExamTypeAttempted(this.value)">
                                               <!--  <option>--- Select ---</option>
                                                <option>Mains</option>
                                                <option>NEET</option> -->
                                            </select>
                                        </div>
                                      
								</div>
								<div class="col-sm-1">
								  <div class="pull-right right">
											<a href="#" class="right inline-block full-screen mr-15">
												<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
											</a>
										</div>
								</div>
								</div>
						</div>
						<div class="panel-body">
							<div class="tab-content" id="myTabContent_7">
								<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
									<div>
									<div class="" id = "totalAttemptCount_1">
												<!-- <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Missed test: <span class="theme_color bold font-18" id="totalMissedCount_1"></span>
												</div> -->
											</div>
										<div class="row">
											<div class="col-sm-12" style="padding-left: 4px;padding-right: 5px;">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="attempetedtable_1" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
                                                                     <th>S.no</th>    
																	<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Un attempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody id="attempetedbody_1">
															
															
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								 <div  id="Tab_2" class="tab-pane fade" role="tabpanel">
									 <div>
									 <div class="" id = "totalAttemptCount_2">
												
											</div>
										<div class="row">
											<div class="col-sm-12" style="padding-left: 4px;padding-right: 5px;">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="attempetedtable_2" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
                                                                  <th>S.no</th>
																	<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Un attempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody id="attempetedbody_2">
																
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div> 
								 </div> 
								<div  id="Tab_3" class="tab-pane fade" role="tabpanel">
									 <div>
									 <div class="" id = "totalAttemptCount_3">
												<!-- <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Missed test: <span class="theme_color bold font-18" id="totalMissedCount_1"></span>
												</div> -->
											</div>
										<div class="row">
											<div class="col-sm-12" style="padding-left: 4px;padding-right: 5px;">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="attempetedtable_3" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
																	<th>S.no</th>
<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Un attempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody id="attempetedbody_3">
																
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div> 
								 </div> 
							</div>
							
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											
											<div class="modal-body">
												<form>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Exam Name:</label>
														 Mains1
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Test Date:</label>
														10/11/17
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Test Time:</label>
														1 hour
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Board:</label>
														Mains
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Standard:</label>
														12th
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Subjects:</label>
														Physics
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label mb-10">Syllabus:</label>
														
													</div>
													
													
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
							
							<div class="modal fade" id="viewPaperModal" tabindex="-1" role="dialog" aria-labelledby="viewPaperModal">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="viewname"></span></h4>
											   </div>
											<div class="modal-body">
												
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
							
							
							<div class="modal fade"  id="wasteexam" tabindex="-1" role="dialog" aria-labelledby="wasteexam">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="wstviewname"></span></h4>
											   </div>
											<div class="modal-body" id="hvrmsg">
											 <p class="wstedtxtclr"> This is wasted test, you have spent less time....<span class="wstnum"><span id="sepntTime"></span>/<span id="totalTime" ></span></span></p>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
							
							<div class="modal fade" id="attemptedModal" tabindex="-1" role="dialog" aria-labelledby="attemptedModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="getname"></span></h4>
											   </div>
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="attemptedModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1">
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="subjectTabs">
																<li class="" role="presentation"></li>
																<li role="presentation" class="">Getting Subjects...</li>
																<li role="presentation" class=""></li>
															</ul>
															
															<div class="tab-content" id="questionsContent">
															
																
															
															</div>
															
														</div>
														
													</div>
														
												</div>
										   	</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							 </div>
						   </div>
						   <div class="modal fade" id="attemptedModal1" tabindex="-1" role="dialog" aria-labelledby="attemptedModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
									    <h4 class="fonkar">Hey,<span id="tesname"></span></h4>
										<h4 class="modal-title text-center"><span style="border-bottom:3px solid black">Test Details</span></h4>
									</div>
									<div class="modal-body">
										<!-- <div class="col-sm-12 text-center">
											<div class="button-list" id="subjts">
												<a href="#" class="btn btn-danger">Physics</a>
												<a href="#" class="btn btn-danger btn-outline fancy-button btn-0">Chemistry</a>
												<a href="#" class="btn btn-danger btn-outline fancy-button btn-0">Maths</a>
											</div>
										</div> -->
										<form>
											<div class="row">
											<div class="col-lg-10 col-md-offset-7">
													<div class="row ">
														<div class="col-lg-4 col-md-8 col-sm-3 col-xs-10">
															<label class="control-label bold theme_color noofstdattempt" for="example-email"> No. of Students attempted </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 bold theme_color" id="noofstdntsattempted">
															
														</div>
													</div>	
												</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row" style="margin-top: -20px;">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
															<label class="control-label" for="example-email"> Test Name</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id = "testname">
															
														</div>
													</div>	
												</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row ">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
															<label class="control-label" for="example-email">Active period</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12" style="width:235px">
														 <span id="startdate"></span>&nbsp;&nbsp;to&nbsp;&nbsp;<span id="expirydate"></span>
														</div>
														
													</div>	
												</div>
												
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row ">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
															<label class="control-label" for="example-email"> Total Marks </label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="totalmarks">
															
														</div>
													</div>	
												</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row ">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
															<label class="control-label" for="example-email"> No. of Questions</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"  id ="noofques">
															
														</div>
													</div>	
												</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row ">
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
															<label class="control-label" for="example-email">Test duration</label>
														</div>
														<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
														<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"  id="time">
															
														</div>
													</div>	
												</div>
												
												<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="row ">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
															<div class="table-wrap">
																<div class="table-responsive">
																	<table id="manualprev_tbl" class="table table-bordered display pb-30" >
																		<thead class="th_background">
																			<tr>
																				<th>Subject</th>
																				<th>Sections</th>
																			    <th>Type of questions</th>
																				<th>No. of Questions</th>
																				<th>Marks/Questions</th>
																				<th>-Ve Makrs/Questions</th>
																				<th>Partial Marks</th>
																			</tr>
																		</thead>
																		<tbody id="manualprev_tbody">
																			
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</div>
												 -->
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"style="margin-top:20px;">
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-10">
															<span class="bold theme_color">SYLLABUS</span>
														</div>
														
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
															<div class="panel-group accordion-struct"  role="tablist" aria-multiselectable="true" id="accord-main">
																</div>
														</div>
													</div>	
												</div>
											</div>
										</form>
										
											</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							 </div>
						   </div>
							
							<div class="modal fade" id="showmoreModal" tabindex="-1" role="dialog" aria-labelledby="showmoreModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
										<div class="modal-header">
														        <h4 class="fonkar">Hey, <span id="attemptshowpaper"></span></h4>    
														        </div>	  
														        
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="showmoreModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1" >
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs">
																<li class="" role="presentation"></li>
																<li role="presentation" class="">Getting Subjects...</li>
																<li role="presentation" class=""></li>
															</ul>
															
															<div class="tab-content" id="questionsContents">
															
																
															
															</div>
															
														</div>
														
													</div>
														
												</div>
										   	</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
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
	<script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
	<script type="text/javascript">
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('liveattempted'); 
	   $("#attemptedtext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#livegreyattempted").attr("src",icon); 
	   
	</script>
	<!-- /Main Content -->
	<script>
	 $(document).ready(function(){
		
		//attemptedshowpaperques();
		
    // $("#tabs").tabs();
   
    $('#action').click(function() {
        var selected = $("#tabs").tabs("option", "selected");
        $("#tabs").tabs("option", "selected", selected + 1);
    });

		
		examtypeget(function(){
			var exam = $("#examtype").val();
			if(getParameterByName('testtype') !="" || getParameterByName('testtype') != null){
				var currTabActive = getParameterByName('testtype');
					}else{
						var currTabActive ="";
					}
				  if(currTabActive !== null){
					  attempeted(currTabActive,exam);
					  if(currTabActive == "Mock Test"){
						  $("#mock").addClass("active");
						  $("#sub, #full").removeClass("active");
					  }else if(currTabActive == "Full-Syllabus Mock"){
						  $("#full").addClass("active");
						  $("#sub, #mock").removeClass("active");
					  }else if(currTabActive == "Subject-Wise Test"){
						  $("#sub").addClass("active");
						  $("#full, #mock").removeClass("active");
		
				  }
				}
				else{
					  attempeted("Mock Test",exam);
				 }
		});
		
	}); 
	</script>
	
	<script>
	
	function Show2ndModal(elem){
		var Id = $(elem).data("id");
		var sId = $(elem).data("studentID");
		var inputData ={
				"testPostId":Id,
		};
	       inputData = JSON.stringify(inputData);
	       var  appenddata="";
	       var   accorddata="";
	   	$.ajax({
	   		url:  base_url+'rest/testpost/v1/getTestDetails',
	   			type:"POST",
	   			 dataType: "json",
	   			  contentType: 'application/json',
	   			  data:inputData,
	   		 success: function(data){
	   			            $("#subjts").css({
	   			            	"font-weight":"700",
	   			            	"margin-bottom":"17px",
	   			            	"font-size":"17px",
	   			                "display": "inline-block"
	   			            });
	   			            $("#subjts").empty();
	   			            var subjs = data.testPostDetails;
	   			            for( var i = 0; i<subjs.length; i++){
	   			            	
	   			            	var option = "<a style = 'padding: 0 17px;text-decoration: underline;'>"+subjs[i].subject+"</a>"
	   			            	
	   			            	
	   			            	$("#subjts").append(option);
	   			            	
	   			            }
	   			            /* $("#subjts").html(data.testPostDetails[0].subject); */
	   					    $("#noofques").html(data.numberOfQuestions);
	   					    $("#startdate").html(data.activeDate);
	   					    $("#expirydate").html(data.expiryDate);
	   					    $("#noofstdntsattempted").html(data.noOfStudentsAttended);
							$("#testname").html(data.testName);
							$("#time").html(data.time);
							$("#totalmarks").html(data.totalMarks);
							
							
							if(data.hasOwnProperty("testPostDetails")){
								  var questions = data.testPostDetails;
								  
								  for (var j = 0;j<questions.length;j++){
			    		    			 
			    		    			//  appenddata += "<tr><td>"+questions[j].standard+"</td>";
			    		    			  appenddata += "<tr><td>"+questions[j].subject+"</td>";
			    		    			  appenddata += "<td>"+questions[j].section+"</td>";
			    		    			  appenddata += "<td>"+questions[j].typeOfQuestion+"</td>";
			    		    			  appenddata += "<td>"+questions[j].numberOfQuestions+"</td>";
			    		    			  appenddata += "<td>"+questions[j].marks+"</td>";
			    		    			  appenddata += "<td>"+questions[j].negativeMarks+"</td>";
			    		    			  appenddata += "<td>"+questions[j].partialMarks+"</td></tr>";
			    		    			  
			    		    			  
			    		    			  if(j == 0){
												accorddata += '<div class="panel panel-default"><div class="panel-heading" role="tab" ><a role="button" data-toggle="collapse" data-parent="#accord-main" href="#collapse_'+j+'" aria-expanded="true"><iclass="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_'+j+'" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row"><div class="col-sm-12 col-xs-12"><ul class="bullet">';
											}else{
												accorddata += '<div class="panel panel-default"><div class="panel-heading" role="tab" ><a role="button" data-toggle="collapse" data-parent="#accord-main" href="#collapse_'+j+'" aria-expanded="true"><iclass="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_'+j+'" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row"><div class="col-sm-12 col-xs-12"><ul class="bullet">';
											}
			    		    			  var testchapters = questions[j].chapters
				    		    			for(var k = 0; k < testchapters.length; k++){
				    		    				
				    		    				//accorddata += '<div class="col-sm-12 col-xs-12"><ul><li>'+testchapters[k]+'</li></ul></div>';
				    		    				accorddata += '<li>'+testchapters[k]+'</li>';
				    		    			}
				    		    			 
				    		    			 accorddata += "</ul></div></div></div></div></div>";
				    		    			 
								  }
								
			    				    
			    				    $("#accord-main").empty();
				    				   $("#accord-main").append(accorddata);
	   		 }
	   		 },
	   		error: function(data){
	   		 alert("preview data not found");
	   	 }
	   	});
	}
	function ShowModal(elem){
		var Id = $(elem).data("id");
		getSubjectsAttempt(Id);
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
				url   :  base_url+'rest/testpost/v1/getsectionwisequestions',
				async:false,
				type  : "POST",
				dataType: "json",
				contentType:'application/json',
				data: inputdata,
				success: function(data){
					$("#mainsection").empty();
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
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											"<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
											
					 					  } else if(matrix.test(layoutRes)){
					 						
					 						
					 						
					 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
					 						// single correct and multi correct
					 						   previewdataques = "<br>";
						            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row'><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											   "<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option1['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option2['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option3['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option4['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else {
					 						// Comprehension and multi Comprehension
					 						 previewdataques = "<br>";
					            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
										     "<span class=''>Passage Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
					 						 var pquestion = questionData[j].questionDetails;
					 						 for(var pq = 0;pq <= pquestion.length;pq++){
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><hr class='light-grey-hr mt-10 mb-10'></div>";
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											     +"<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option1['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option2['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option3['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option4['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
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
	
	function getSubjectsAttempt(id){
		
	var appenddata = "";
	$.ajax({
		type:"GET",
		url: base_url+'rest/testpost/v1/getsections/'+id,
		async:false,
		datatype:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++ ){
				appenddata += "<a onclick='getsubjectwise(this, "+id+");' class='btn btn-danger' id='subjectsin'>"+data[i]+"</a>";		
			}
			$("#subjts").empty();
			$("#subjts").append(appenddata);	
		},
		error:function(){
			alert("Subjects not found");
		}
	});
}

	 function getsubjectwise(subje, id){
			var comprh = /(_8_|_9_|_10_)/;
		    var intiRegex  = /_7_I/;
		    var multiComprh = /_11_/;
		  	var matrix = /_12_X/;
			var previewdata ="";
			var previewdataques ="";
			var inputData =""; 
			var inputdata =""; 
			var subject = $(subje).text();
			var subjectId = $(subje).data('id');
			var Id= id; 
		 
		 	var inputData = {
			  "testPostId":  Id,
			  "subjectId":subjectId
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
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											"<span class=''>Q. ("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>";
						            	    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else if(matrix.test(layoutRes)){
					 						
					 						
					 						
					 					  } else if(!comprh.test(layoutRes) && !multiComprh.test(layoutRes) && !intiRegex.test(layoutRes) && !matrix.test(layoutRes)){
					 						// single correct and multi correct
					 						  previewdataques = "<br>";
						            	       previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											   "<span class=''>Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option1['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option2['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option3['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].option4['value']+"</span></div></div></div>";
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+questionData[j].answer+"</span></div></div></div>"; 
											   previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].solution['value']+"</div></div></div>";
					 						
					 					  } else {
					 						// Comprehension and multi Comprehension
					 						 previewdataques = "<br>";
					            	         previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
										     "<span class=''>Passage Q.("+questionData[j].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+questionData[j].question['value']+"</div></div></div>"; 
					 						 var pquestion = questionData[j].questionDetails;
					 						 for(var pq = 0;pq<=pquestion.length;pq++){
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><hr class='light-grey-hr mt-10 mb-10'></div>";
					 							previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'>"+
											     +"<span class=''>Question "+(pq+1)+" ("+pquestion[pq].id+")</span></label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].question['value']+"</div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options1</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option1['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options2</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option2['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options3</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option3['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> options4</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].option4['value']+"</span></div></div></div>";
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> key</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'><span class='green'>"+pquestion[pq].answer['value']+"</span></div></div></div>"; 
											    previewdataques += "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='row '><div class='col-lg-2 col-md-2 col-sm-3 col-xs-11'><label class='control-label' for='example-email'> solution</label></div><div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'> :</div><div class='col-lg-9 col-md-9 col-sm-8 col-xs-12'>"+pquestion[pq].solution['value']+"</div></div></div>";
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
	 
	 
		var LoginData = getLoginData();
	     $("#tesname").html(LoginData.name);
		  $("#viewname").html(LoginData.name);
		  $("#wstviewname").html(LoginData.name);
		  $("#getname").html(LoginData.name);  
		  $("#attemptshowpaper").html(LoginData.name); 
	</script> 
	

	