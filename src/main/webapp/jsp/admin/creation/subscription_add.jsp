<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>
#image {
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
									<h6 class="panel-title txt-dark" onclick="createCategory()"><span class="main_heading_blue">Subscription</span><span class="main_heading_theme_color" onclick="createCategory()"> Add</span></h6>
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
														<label class="control-label" for="example-email">Academic Year </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="acayear">
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Category Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category" onchange="getstandardsbtcat(this.value);">
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard  </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline"  id="standard" onchange="getSelectedexams(this.value)" >
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Examtype  </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" multiple>
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subscription Image </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="subscriptionImage" name="subscriptionImage" class="form-control" placeholder="Subscription Image Url">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Original Price </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="orgprice" name="orgprice" class="form-control" placeholder="Enter Original Price">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Offer Price </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="offerprice" name="offerprice" class="form-control" placeholder="Enter Offer Price ">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Active Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="" id="activedate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Expiry Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="" id="expirydate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
											
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/creation/subscription.jsp" class="btn  btn-info">Back</a>
													<a   class="btn  btn-primary" onclick="subscriptionadd();">Add</a>
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
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	     <%--  <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script> --%>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	          <script src="<%=request.getContextPath()%>/assets/js/subscription.js"></script>
	
	 <script type="text/javascript">
          $('#timepicker1').timepicker();
          $('#timepicker2').timepicker();
          $('#activepicker').timepicker();
          $('#expirypicker').timepicker();
        </script>
	<script>
	 $("#subscriptionselect").addClass('active-page');
	 $("#activedate, #expirydate").datepicker({dateFormat:'dd-mm-yy'});
	 $(document).ready(function(){
		 subscriptionGetAll();
		 getCategoriesByName();
		   /*  subscriptionGetAll();
			getCategoriesByName();
			getStandardsByName();
			getExamTypeByName(); */
			/* getstandardsbtcat();
			getSelectedexam(); */

		});
	</script>
	
	