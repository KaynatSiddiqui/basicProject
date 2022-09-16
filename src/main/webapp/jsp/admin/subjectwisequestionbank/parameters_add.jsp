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
									<h6 class="panel-title txt-dark" onclick=""><span class="main_heading_blue">Parameters</span><span class="main_heading_theme_color" onclick=""> Add</span></h6>
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
														<label class="control-label" for="example-email">Parameter </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="sqbparameter" name="example-email" class="form-control" placeholder="Enter Parameter Name">
										        	</div>  
												</div>	
											</div>	
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Parameter Priority</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="priority" name="example-email" class="form-control" placeholder="Enter Parameter priority">
										        	</div>  
												</div>	
											</div>	
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Main Skills</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="mainskills" name="example-email" class="form-control" placeholder="Enter Parameter priority">
										        	</div>  
												</div>	
											</div>	
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="standard"   data-style="form-control btn-default btn-outline" onchange="getsubjectssqb(this.value);" >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subject </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="subject"   data-style="form-control btn-default btn-outline" onchange="sqbgetallunits(this.value);">
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>		
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Unit</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="unit"   data-style="form-control btn-default btn-outline" onchange="getchapterssqb(this.value);">
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>								
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapters </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="chapter" multiple data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
											
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/parameters.jsp" class="btn  btn-info">Back</a>
													<a class="btn  btn-primary" onclick="sqbPostParameters();">Add</a>
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
	<input type="hidden" id="creationactive" value="subjectwiseside"/>
	<input type="hidden" id="ulactive" value="subjectwisebank_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/subjectquestionbank.js"></script>
	</div>
	
	<script>
	$("#parama").addClass('active-page');
	$(document).ready(function() {
			//sqbgetallSubwiseParameters();
			 sqbgetallstandard();
		/* 	getAllSqbChapters(); */
    });
	</script>
	