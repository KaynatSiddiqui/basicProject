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
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Characteristics</span><span class="main_heading_theme_color"> Add</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Category </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value)" id="category">
															<!-- <option>--- Select ---</option>
															<option>Category 1</option>
															<option>Category 2</option> -->
														</select>
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Standard
													Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<select class="selectpicker"
													data-style="form-control btn-default btn-outline"
													id="standard" onchange="getSelectedexams(this.value);" >
													<!-- <option>--- Select ---</option>
															<option>10th Class</option>
															<option>9th Class</option> -->
												</select>
											</div>
										</div>
									</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Exam Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="examtype"  data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Exam Type 1</option>
															<option>Exam Type 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Difficulty Level</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-3">
																<input type="email" id="difflev1" name="example-email" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
															<div class="col-sm-3">
																<input type="email" id="difflev2" name="example-email" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
															<div class="col-sm-3">
																<input type="email" id="difflev3" name="example-email" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 1</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param1" name="example-email" class="form-control" placeholder="Enter Parameter 1">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 2</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param2" name="example-email" class="form-control" placeholder="Enter Parameter 2">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 3</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param3" name="example-email" class="form-control" placeholder="Enter Parameter 3">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 4</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param4" name="example-email" class="form-control" placeholder="Enter Parameter 4">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 5</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param5" name="example-email" class="form-control" placeholder="Enter Parameter 5">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 6</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param6" name="example-email" class="form-control" placeholder="Enter Parameter 6">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 7</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param7" name="example-email" class="form-control" placeholder="Enter Parameter 7">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 8</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param8" name="example-email" class="form-control" placeholder="Enter Parameter 8">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 9</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param9" name="example-email" class="form-control" placeholder="Enter Parameter 9">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 10</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param10" name="example-email" class="form-control" placeholder="Enter Parameter 10">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 11</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param11" name="example-email" class="form-control" placeholder="Enter Parameter 11">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 12</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="param12" name="example-email" class="form-control" placeholder="Enter Parameter 12">
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Previous year Questions </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-6">
																<input type="email" id="prvyrsqns" name="example-email" class="form-control" placeholder="Enter ">
															</div>
															
															<div class="col-sm-5">
																<select id="sltdyer" class="selectpicker yearsdrp" multiple data-style="form-control btn-default btn-outline">
																	<!-- <option>--- Select ---</option>
																	<option>2020</option>
																	<option>2019</option>
																	<option>2018</option>
																	<option>2017</option>
																	<option>2016</option>
																	<option>2015</option>
																	<option>2014</option>
																	<option>2013</option>
																	<option>2012</option>
																	<option>2011</option>
																	<option>2010</option>
																	<option>2009</option>
																	<option>2008</option>
																	<option>2007</option>
																	<option>2006</option>
																	<option>2005</option>
																	<option>2004</option>
																	<option>2003</option>
																	<option>2002</option>
																	<option>2001</option> -->
																</select>
															</div>
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Previous Year other Competitive Exams </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-5">
																<input type="email" id="prvyrothexm" name="example-email" class="form-control" placeholder="Enter ">
															</div>
															
															<div class="col-sm-5">
																<select id="sltdyer1" class="selectpicker yearsdrp" multiple data-style="form-control btn-default btn-outline">
																	<!-- <option>--- Select ---</option>
																	<option>2020</option>
																	<option>2019</option>
																	<option>2018</option>
																	<option>2017</option>
																	<option>2016</option>
																	<option>2015</option>
																	<option>2014</option>
																	<option>2013</option>
																	<option>2012</option>
																	<option>2011</option>
																	<option>2010</option>
																	<option>2009</option>
																	<option>2008</option>
																	<option>2007</option>
																	<option>2006</option>
																	<option>2005</option>
																	<option>2004</option>
																	<option>2003</option>
																	<option>2002</option>
																	<option>2001</option>
																	<option>2009</option> -->
																</select>
															</div>
															
														</div>
													</div>
												</div>	
											</div>
											
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-5">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics.jsp" class="btn  btn-info">Back</a>
													<a onclick="createCharcteristics()" id="chatadd" class="btn  btn-primary">Add</a>
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
				<!-- /Row -->
		</div>
	<input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script>
	      $("#charcselect").addClass('active-page');
	      	$(document).ready(function(){
	      		 getCategoriesByName();
	      		$("#examtype").change(function(){
	      			var cat = $("#category").val();
	      			var standard = $("#standard").val();
	      			var exam = this.value;
	      			
	      			
	      			getAllYearsForDropDown(cat,exam,standard);
	      		});
	      		
	      	});
	      </script>
	</div>
	<!-- /Main Content -->