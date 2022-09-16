<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>
#image{
    padding: 10px;
    background: #b10058; 
    
    color: #fff;
     }



input[type="file"] {
    display: none;
}
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
									<h6 class="panel-title txt-dark" onclick=""><span class="main_heading_blue">Ncert</span><span class="main_heading_theme_color" onclick=""> Add</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12 ">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value); getExamTypeByName(this.value);" >
															
														</select>
													</div>
												</div>	
											</div>	
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">ExamTypes </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="examtype"  >
															
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
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="sqbgetallunits(this.value);" >
															
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Unit Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getchapterssqb(this.value);">
															
														</select>
													</div>
												</div>	
											</div>
											
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker "  data-style="form-control btn-default btn-outline" id="chapter"  onchange="getSelectedSQBTopics(this.value);">

														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Topic Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
														<select class="selectpicker "  data-style="form-control btn-default btn-outline" id="topic"  >
															
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Ncert </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
																<textarea class="textarea_editor form-control" rows="15" id="ncert" placeholder="Enter text ..."></textarea>
															</div>
														</div>	
										   </div>
										  
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/studyzone/Ncert.jsp" class="btn  btn-info">Back</a>
													<a class="btn  btn-primary" onclick="CreateNcert()">Add</a>
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
	<input type="hidden" id="creationactive" value="study_zone"/>
	<input type="hidden" id="ulactive" value="study_zone_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/studyzone.js"></script>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	<script>
	$("#ncertselect").addClass('active-page');
	$(document).ready(function() {
		sqbgetallstandard();
		 $( '#ncert' ).ckeditor();  
			
    });
	</script>

