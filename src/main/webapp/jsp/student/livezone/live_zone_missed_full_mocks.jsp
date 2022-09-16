<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/livezonemissed.css" rel="stylesheet">

	<!-- Main Content -->
	 <div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
			<input type="hidden" id="studenactive" value="livezonemissed"/>
				<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/sidebaractive/missed.png"/>
			<!-- Row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view">
						<div class="">
							<div class="panel-heading">
								
							</div>
							<div class="row marbottm">
								<div class="col-sm-3">
								<div class="" id="getspace">
								<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/missed.svg" class="img-responsive">
<!--                                <h6 class="panel-title txt-dark change_color"><span class="sky_blue1 font-16"><div class="ribbon"><span id="fntsez">Live zone</span></div></span><span class="font-15 gold">MISSED TESTS</span><span id="settfont"><i class="fa fa-times-circle fa-2x mr-20" aria-hidden="true"></i></span></h6>								
-->                             </div>
								</div>
								<div class="col-sm-5">
									<div class="button-list">
										<a href="#Tab_2" id="missub" data-toggle="tab" role="tab" class="btn active"><%= AppConstants.SUBJECTWISE_MOCK %></a>
										<a href="#Tab_1" id="missmock" data-toggle="tab" role="tab" class="btn"><%= AppConstants.MOCKTEST %></a>
										<a href="#Tab_3" id="missfulsylmock" data-toggle="tab" role="tab" class="btn"><%= AppConstants.FULLSYALLBUSMOCK %></a> </a>
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
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange="onChangeExamTypeMissed(this.value);">
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
					</div>
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							
							
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="tab-content" id="myTabContent_7">
									 <div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
									
										<div>
											<div class="" id = "totalMissedCount_1">
												<!-- <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Missed test: <span class="theme_color bold font-18" id="totalMissedCount_1"></span>
												</div> -->
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="table-wrap">
														<div class="table-responsive">
															<table id="misstable_1" class="table livezone_missed display pb-30" >
																<thead class="th_background">
																	<tr>
																		<th>S.no</th>
																		<th>Test Name</th>
																		<th>Exam Type</th>
																		<th>Standard</th>
																		<th>Subjects</th>
																		<th>Syllabus</th>
																		<th>Active Period</th>
                                                                        <th>Test Details</th>
																		<th>Top score</th>
																		<th>Subject-Wise Top Score</th>
																		<th>Actions</th>
																		<th>Delete</th>
																	</tr>
																</thead>
																<tbody id="missbody_1">
																	
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
											<div class="" id="totalMissedCount_2">
												<!-- <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Missed test: <span class="theme_color bold font-18" id="totalMissedCount_2"></span>
												</div> -->
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="table-wrap">
														<div class="table-responsive">
															<table  id="misstable_2" class="table livezone_missed display pb-30" >
																<thead class="th_background">
																	<tr>
																		<th>S.no</th>
																		<th>Test Name</th>
																		<th>Exam Type</th>
																		<th>Standard</th>
																		<th>Subjects</th>
																		<th>Syllabus</th>
																		<th>Active Period</th>
                                                                        <th>Test Details</th>
																		<th>Top score</th>
																		<th>Subject-Wise Top Score</th>
																		<th>Actions</th>
																		<th>Delete</th>
																	</tr>
																</thead>
																<tbody id="missbody_2">
																	
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
											<div class="" id="totalMissedCount_3">
												<!-- <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Missed test: <span class="theme_color bold font-18" id="totalMissedCount_3"></span>
												</div> -->
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="table-wrap">
														<div class="table-responsive">
															<table  id="misstable_3" class="table livezone_missed display pb-30" >
																<thead class="th_background">
																	<tr>
																		<th>S.no</th>
																		<th>Test Name</th>
																		<th>Exam Type</th>
																		<th>Standard</th>
																		<th>Subjects</th>
																		<th>Syllabus</th>
																		<th>Active Period</th>
                                                                        <th>Test Details</th>
																		<th>Top Score</th>
																		<th>Subject-Wise Top Score</th>
																		<th>Actions</th>
																		<th>Delete</th>
																	</tr>
																</thead>
																<tbody id="missbody_3">
																
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="modal fade" id="getactivesyllabus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											  <div class="modal-header">
														         <h4 class="fonkar">Hey,<span id="missname"></span></h4>
												   </div>
											<div class="modal-body">
													<div class="panel-body">
														<div class="panel-group accordion-struct" id="activesyllabus_tbody" role="tablist" aria-multiselectable="true">
															
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
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- /Row -->
		</div>
		 <input type="hidden" id="creationactive" value="liveside"/>
			<input type="hidden" id="ulactive" value="livezone"/>
		<%@include file="/jsp/master/footer.jsp" %>
		<%@include file="/jsp/student/student module/studenttraking.jsp" %>
</div>
<!-- /Main Content -->
    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<!-- /Main Content -->
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>
	<script type="text/javascript">
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('livemissed');
	   $("#missedtext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#livegreymissed").attr("src",icon); 
	</script>
	<script>
	$(document).ready(function(){
		showPopmsg("missed")
		selectExamtype(function(){
			var exam = $("#examtype").val();
			missedFullmocks("Subject-Wise Test",exam);
		});
		
		/* selectExamtype(); */
		
		
	});

    
	var LoginData = getLoginData();
    
  $("#missname").html(LoginData.name);
	
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
	
	</script>