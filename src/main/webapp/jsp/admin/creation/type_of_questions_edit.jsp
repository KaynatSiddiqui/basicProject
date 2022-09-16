<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %><!-- Main Content -->
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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Types of Questions</span><span class="main_heading_theme_color"> Edit</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Category </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="category" onchange="getSelectedExamType(this.value);" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Exam Type </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="examtype" onchange="getSelectedStandards(this.value);" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Exam Type 1</option>
															<option>Exam Type 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="standard" onchange="getSelectedSubject(this.value);" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option>10th Class</option>
															<option>9th Class</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subject </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="subject" onchange="getAllLayouts()" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Layout Number </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="layoutnumber"  data-style="form-control btn-default btn-outline" disabled>
														<!-- 	<option>--- Select ---</option>
															<option selected>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Types of Questions Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="typeofquesname" name="typeofquesname" class="form-control" placeholder="Enter Types of Questions Name" >
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Full Marks </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="fullmarks" name="fullmarks" class="form-control" placeholder="Enter Full Marks" >
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Negative Marks </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="email" id="negative" name="negative" class="form-control" placeholder="Enter Negative Marks">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Partial Marks </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="partial" name="partial" class="form-control" placeholder="Enter Partial Marks" >
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Time Per Question</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="number" id="questiontime" name="questiontime" class="form-control" placeholder="Enter In Seconds">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Instructions </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															   <textarea name="c" class="form-control" id="editor1" class="reply" placeholder="Enter text ..." style="height:300px;width:600px;"></textarea>
																
															</div>
														</div>	
													</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/creation/type_of_questions.jsp" class="btn  btn-info">Back</a>
													<a href="<%= AppConstants.BASE_URL %>admin/creation/type_of_questions.jsp" id="typeofques_edit" class="btn  btn-primary">Save</a>
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
		</div>
        <!-- /Main Content -->
        <input type="hidden" id="createdby"  value="${AdminType }" />
       	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
       	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
        
        <script>
        $("#typqselect").addClass('active-page');
	        $(document).ready(function() {
	        	 $('#editor1').ckeditor();  
	  	           	getCategoriesByName(function(){
	        		getAllLayouts(function(){
	        			getTypeofquesById();
	        			});
		        });
	       /*  	getExamTypeByName(function(){
	        		getStandardsByName(function(){
		        		getSubjectsByName(function(){
		        			getAllLayouts(function(){
		        				getTypeofquesById();
		        			});
		        		});
	        		});
	        	}); */
				
	      	    	      	  	    
	      	});
	      	     
        
        </script>
        