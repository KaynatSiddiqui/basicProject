<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <style>
	tbody, tfoot, thead, tr, th, td{
		border: 1px solid #777;
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
								<div class="col-sm-6 col-xs-12 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Feedback</span></h6>
								</div>
								<div class="col-sm-1 col-xs-6 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">From Date <span class="red">*</span></label>
													<div class="input-group">
														<input class="form-control date-picker" name="interview_date" id="datepicker1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date <span class="red">*</span></label>
													<div class="input-group">
														<input class="form-control date-picker" name="interview_date" id="datepicker2" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category">
														<!-- <option>--- Select ---</option>
														<option>Catagery 1</option>
														<option>Catagery 2</option> -->
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">State</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getallSelectedcities(this, event);" id="state">
														<!-- <option>--- Select ---</option>
														<option>State 1</option>
														<option>State 2</option> -->
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">City</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="city">
														<!-- <option>--- Select ---</option>
														<option>City 1</option>
														<option>City 2</option> -->
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<a href="#" class="btn btn-primary mt-25" onclick="feedbackFilter()">Submit</a>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="feedbackdatable" class="table display pb-30" >
												<thead class="th_background">
													<tr>
													<th>S.no</th>
														<th>Customer ID</th>
														<th>Customer Name</th>
														<th>Feedback</th>
														<th>City</th>
														<th>Regarding</th>
														<th>Date</th>
														<th>View</th>
														<th>Reply</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody id ="feedbackbody">
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="col-sm-2 pull-right">
										<button onclick="fnExcelReport('feedbackdatable')" class="btn btn-warning btn-anim pull-right download-btn"><i class="icon-cloud-download"></i><span class="btn-text">Download In Excel</span></button>
									</div>
								</div>
							</div>
						</div>	
					</div>
					
				</div>
			<input type="hidden" id="creationactive" value="feedback"/>
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
         <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	      <script>
	      	$(document).ready(function(){
	      		
	        	$("#datepicker1, #datepicker2" ).datepicker({dateFormat:'dd-mm-yy'});
	        	getCategoriesByName();
	        	getstatesall();
	      		feedbackGet();
	      	});
	      </script>