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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Login </span><span class="main_heading_theme_color">Linking</span></h6>
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
														<label class="control-label" for="example-email">SME <span class="red">*</span> </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select  class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="getSelectedByAllDeans(this.value)" id="sme">
															<!-- <option>--- Select ---</option>
															<option>SME Name 1</option>
															<option>SME Name 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Dean <span class="red">*</span> </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select  class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getallstandardssqb(this.value)" id="dean">
															<!-- <option>--- Select ---</option>
															<option>Dean Name 1</option>
															<option>Dean Name 2</option>  -->
														</select>
													</div>
												</div>	
											</div>
											<!--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Super Dean <span class="red">*</span> </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select id="logl_sdean" class="selectpicker" data-style="form-control btn-default btn-outline" >
															<option>--- Select ---</option>
															<option>Super Dean Name 1</option>
															<option>Super Dean Name 2</option>
														</select>
													</div>
												</div>	
											</div>-->
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard <span class="red">*</span> </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select id="standard" class="selectpicker" onchange="getallsubjectssqb(this.value)" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>10th</option>
															<option>11th</option>
															<option>12th</option> -->
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
														<select class="selectpicker" id="subject" onchange="getallunitssqb(this.value)" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
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
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="unit" onchange="getallchapterssqb(this.value)" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Unit 1</option>
															<option>Unit 2</option> -->
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
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="chapter" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Chapter 1</option>
															<option>Chapter 2</option> -->
														</select>
													</div>
												</div>	
											</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>academic_head/user_login_link/login_link_sme.jsp" class="btn  btn-info">Back</a>
													<a class="btn  btn-primary" onclick="postloginsme()">Assign</a>
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
				<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
<input type="hidden" id="baseURL" value="<%= AppConstants.MASTER_URL %>" />
<input type="hidden" id="createdby"  value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
<script>

$(document).ready(function(){
	getSelectedByAllSme(this.value);
});

</script>
	
