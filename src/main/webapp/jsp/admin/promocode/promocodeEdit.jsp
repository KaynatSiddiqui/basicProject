<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">

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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Promocode</span><span class="main_heading_theme_color"> Add</span></h6>
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
														<label class="control-label" for="example-email">Discount Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="constant"  data-style="form-control btn-default btn-outline" >
															 <option>--- Select ---</option>
															<option value ="2">Discount in Percentage</option>
															<option value = "1">Discount in Rupees</option>
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Discount</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														
															<input type="email" id="discount" name="example-email" class="form-control" placeholder="Enter Discount">
														
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Issue Date</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="issuedate" name="example-email" class="form-control" placeholder="Enter Issue Date">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">End Date</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="enddate" name="example-email" class="form-control" placeholder="Enter End-Date">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Promocode</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="promocodee" name="example-email" class="form-control" placeholder="Enter Promocode">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Purpose</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="purpose" name="example-email" class="form-control" placeholder="Enter purpose">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Single/Multiple</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="singleormultiple"  data-style="form-control btn-default btn-outline" >
															 <option>--- Select ---</option>
															<option value="single">Single</option>
															<option value="multiple">Multiple</option>
														</select>
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Discount from OfferPrice</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="isofferprice"  data-style="form-control btn-default btn-outline" >
															 <option>--- Select ---</option>
															<option value="true">Yes</option>
															<option value="false">No</option>
														</select>
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Status</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="status"  data-style="form-control btn-default btn-outline" >
															 <option>--- Select ---</option>
															<option value="active">Active</option>
															<option value="inactive">InActive</option>
														</select>
													</div>
												</div>	
											</div>
											
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-5">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/promocode/promocode.jsp" class="btn  btn-info">Back</a>
													<a onclick="editPromocode()" id="promoadd" class="btn  btn-primary">Edit</a>
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
	 <input type="hidden" id="creationactive" value="promocode"/>
	
		<%@include file="/jsp/master/footer.jsp" %>
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/promocode.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	       <script>   
        $(document).ready(function(){
        
        	$("#issuedate, #enddate" ).datepicker({dateFormat:'dd-mm-yy'});
        	getPromocodeDetailsById();
        	
       
        });
        </script>
	</div>
	<!-- /Main Content -->