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
						<div class="livezone_attempted_brd">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark livezone_heading_mrgn_btm"><span class="sky_blue1 font-18">Live Zone - </span><span class="font-18 purple1"> Attempted</span></h6>
								</div>
								<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-sm-8">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_attempted_full_mocks.jsp" id="mock" class="btn btn-livezone_attempted_btn btn-outline fancy-button btn-0"><%= AppConstants.MOCKTEST %></a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_attempted_subject_wise_mocks.jsp" id="sub" class="btn btn-livezone_attempted_btn"><%= AppConstants.SUBJECTWISE_MOCK %> </a>
										<a href="<%= AppConstants.BASE_URL %>student/student module/live_zone_attempted_full_syllabus.jsp" id="full" class="btn btn-livezone_attempted_btn btn-outline fancy-button btn-0"><%= AppConstants.FULLSYALLBUSMOCK %> </a>
									</div>
								</div>
								<div class="col-sm-4">
									<div  class="tab-struct custom-tab-1 mt-20">
										<!-- <ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="myTabs_7">
											<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">Jee-Mains</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Jee-Advanced</a></li>
											<li role="presentation" class=""><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">BITSAT</a></li>
										</ul> -->
										  <div class="form-group">
                                            <label class="control-label mb-5 bold">Exam Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  id="examtype">
                                               <!--  <option>--- Select ---</option>
                                                <option>Mains</option>
                                                <option>NEET</option> -->
                                            </select>
                                        </div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="tab-content" id="myTabContent_7">
								<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
									<div>
										<div class="row">
											<div class="col-sm-12">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="attempetedtable" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
																	<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Unattempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody id="attempetedbody">
																<%-- <tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr> --%>
																<%-- <tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr> --%>
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div  id="Tab_2" class="tab-pane fade" role="tabpanel">
									<%-- <div>
										<div class="row">
											<div class="col-sm-12">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
																	<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Unattempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr>
																<tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr>
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div> --%>
								</div>
								<div  id="Tab_3" class="tab-pane fade" role="tabpanel">
									<%-- <div>
										<div class="row">
											<div class="col-sm-12">
												<div class="table-wrap">
													<div class="table-responsive">
														<table id="" class="table livezone_attempted display pb-30" >
															<thead class="th_background">
																<tr>
																	<th>Test Taken Date</th>
																	<th>Test Name</th>
																	<th>Exam Type</th>
																	<th>Standard</th>
																	<th>AIR</th>
																	<th>Score</th>
																	<th>-Ve Marks</th>
																	<th>Unattempted <br>Qns.</th>
																	<th>Over Time <br>Qns.</th>
																	<th>Accuracy %</th>
																	<th>Percentage %</th>
																	<th>Percentile</th>
																	<th>Speed (Qns./Hr.)</th>
																	<th>Top Score</th>
																	<th>Actions</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr>
																<tr>
																	<td>10/11/17</td>
																	<td>Mains</td>
																	<td>Online</td>
																	<td>12th</td>
																	<td>10th</td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_score">20 / 60 <br /> (10Q/30Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_negative_score">-20 <br>(10Q)</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_unattempted">7</span></a></td>
																	<td><a class="" href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"><span class="text_time_taken">2</span></a></td>
																	<td>50%</td>
																	<td>33%</td>
																	<td>33%</td>
																	<td>10</td>
																	<td>60/90 <br> (20Q/30Q)</td>
																	<td>
																		<a href="#" class="btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>
																		<a href="<?php echo base_url();?>student/live_zone/attempted_view" data-toggle="tooltip" data-original-title="View Paper" class="btn btn-view_paper btn-icon-anim btn-circle"><i class="fa fa-file-pdf font-18 mt-10"></i></a>
																		<a href="#" class="btn btn-test_details btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Test Details"data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="fa fa-th-large font-18 mt-10"></i></a>
																	</td>
																</tr>
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div> --%>
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
	<script>
	$(document).ready(function(){
		attempeted();
		getSelectedExamTypeById(val){
	});
	</script>
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>
	
<script>
	function getExamTypeByName(){
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		var appenddata="";
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/student/getAttemptedExamTypes/'+sId,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  for(var i=0; i < data.length; i++){
						var examType = data[i].examType;
						
						appenddata += '<option value="'+examType+'">'
								+examType+'</option>';
					  
				 
				  
				     jQuery("#examtype").empty("");
					jQuery("#examtype").append('<option value="--- Select ---">--- Select ---</option>');
					jQuery("#examtype").append(appenddata);
				  }
				  $('.selectpicker').selectpicker('refresh');
				  /* if(callback){
		  				callback();
		  			} */
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("ExamTypes not found!");

			  }, 
			  
		});
	}

	</script> 