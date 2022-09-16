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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Topics</span><span class="main_heading_theme_color"> Edit</span></h6>
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
														<select class="selectpicker" id="category" onchange="getstandardsbtcat(this.value);"  data-style="form-control btn-default btn-outline" disabled>
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
														<label class="control-label" for="example-email">Standard Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="standard" onchange=getSelectedexams(this.value); data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>10th Class</option>
															<option>9th Class</option> -->
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
														<select class="selectpicker" id="examtype" onchange="getSelectedSubjects(this.value);" data-style="form-control btn-default btn-outline" disabled>
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
														<label class="control-label" for="example-email">Subject Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="subject" onchange="getSelectedUnit(this.value);" data-style="form-control btn-default btn-outline" disabled>
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
														<label class="control-label"  for="example-email">Unit Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="unit" onchange="getSelectedChapter(this.value);" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Unit 1</option>
															<option>Unit 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label"  for="example-email">Chapter Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="chapter" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Chapter 1</option>
															<option>Chapter 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label"  for="example-email">Topic Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="email" id="topicname" name="topicname" class="form-control" placeholder="Enter Topic Name" value="Topic 1">
													</div>
												</div>	
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/creation/topics.jsp" class="btn  btn-info">Back</a>
													<a id="top_edit" class="btn  btn-primary">Add</a>
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
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
        <script>
        $("#topiselect").addClass('active-page');
        $(document).ready(function() {
        	
        	getCategoriesByName(function(){
        		getTopicsById();
        	});
        /* 	getExamTypeByName(function(){
        		getStandardsByName(function(){
        			getSubjectsByName(function(){
        				getUnitsByName(function(){
        					getChaptersByName(function(){
        						getTopicsById();
        					});
        				});
        			});
        		});
        	});
        	       */  
      	    	 
      	    	});
      	      </script>
        