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
					<div class="panel-heading mb-20">
						<div class="col-sm-3" id="getspace">
						 <img src="<%=request.getContextPath()%>/assets/images/students/Attempted.svg" class="img-responsive">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="row">
					
						
						<div class="col-sm-10 col-sm-offset-1 ">
							<form>
								<div class="row design_revision_test">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Exam Name:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<input type="email" id="example-email" name="example-email" class="form-control green_br" placeholder="Enter Exam Name">
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">No. of Questions:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>100</option>
													<option>200</option>
													<option>300</option>
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<div class="design_revision_tes_parameters">Parameters</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Difficulty Level: </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="row">
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<span class="easy_text">Easy</span>
																</div>	
															</div>	
															<div class="col-md-8">
																<select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>100</option>
																	<option>200</option>
																	<option>300</option>
																</select>
															</div>	
														</div>
													</div>
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<span class="medium_text">Medium</span>
																</div>	
															</div>	
															<div class="col-md-8">
																<select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>100</option>
																	<option>200</option>
																	<option>300</option>
																</select>
															</div>	
														</div>
													</div>
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<span class="hard_text">Hard</span>
																</div>	
															</div>	
															<div class="col-md-8">
																<select class="selectpicker" data-style="form-control btn-default btn-outline">
																	<option>--- Select ---</option>
																	<option>100</option>
																	<option>200</option>
																	<option>300</option>
																</select>
															</div>	
														</div>
													</div>
												</div>
											</div>	
											
									   </div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Conceptual Questions:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio ">
													<div class="radio-info col-sm-4">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="radio-no col-sm-4">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Valuation Questions:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio ">
													<div class="radio-info col-sm-4">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="radio-no col-sm-4">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Numerical Questions:</br>(applicable for only Physics & Chemistry)</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio">
													<div class="col-sm-4 radio-info">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="col-sm-4 radio-no">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Graph/ Figure Based Questions:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio">
													<div class="col-sm-4 radio-info">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="col-sm-4 radio-no">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">1995 - 2017 IITJEE/ Advanced Qns.</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio">
													<div class="col-sm-4 radio-info">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="col-sm-4  radio-no">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">1995 - 2017 Other CET’s Qns.:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="row radio">
													<div class="col-sm-4 radio-info">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														Yes
														</label>
													</div>
													<div class="col-sm-4 radio-no">
														<input type="radio" name="radio3" id="radio1" value="option1" checked="">
														<label for="radio1">
														No
														</label>
													</div>
												</div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Types of Questions:</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="checkbox checkbox-success">
													<div class="col-sm-12">
														<input type="checkbox" name="radio" id="checkbox3" value="Yes" checked="">
														<label for="checkbox3">
														Multi correct type
														</label>
													</div>
													<div class="col-sm-12">
														<input type="checkbox" name="radio" id="checkbox3" value="No">
														<label for="checkbox3">
														Integer type
														</label>
													</div>
													<div class="col-sm-12">
														<input type="checkbox" name="radio" id="checkbox3" value="No">
														<label for="checkbox3">
														Single correct type
														</label>
													</div>
													<div class="col-sm-12">
														<input type="checkbox" name="radio" id="checkbox3" value="No">
														<label for="checkbox3">
														Comprehensive/ Passage type
														</label>
													</div>
													<div class="col-sm-12">
														<input type="checkbox" name="radio" id="checkbox3" value="No">
														<label for="checkbox3">
														Matching type
														</label>
													</div>
													<div class="col-sm-12 mt-20">
														<span class="red">* Atleast 3 types of Questions must be selected.</span>
													</div>
												</div>
											</div>
										</div>	
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25 mb-30">
											<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_1.jsp" class="btn  btn-warning">Back</a>
											<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_chapters_questions_view.jsp" class="btn  btn-primary">Next</a>
											<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test.jsp" class="btn  btn-info">Cancel</a>
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
	</div>
	<%@include file="/jsp/master/footer.jsp" %>
</div>
<!-- /Main Content -->

<script type="text/javascript">
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true,
	}) 
</script>