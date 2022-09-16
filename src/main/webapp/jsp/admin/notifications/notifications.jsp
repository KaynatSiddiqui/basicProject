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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Notifications </span><span class="main_heading_theme_color"> Published</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications.jsp" class="btn btn-danger">Published</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_created.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Created</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_add.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Create New</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Catagery</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id = "category">
														<!-- <option>--- Select ---</option>
														<option>Catagery 1</option>
														<option>Catagery 2</option> -->
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">From Date</label>
													<div class="input-group">
														<input class="form-control" name="interview_date" id="datepicker1" type="text" value="" placeholder="dd-mm-yyyy"/>
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date</label>
													<div class="input-group">
														<input class="form-control" name="interview_date" id="datepicker2" type="text" value="" placeholder="dd-mm-yyyy" />
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick = "filterpublish()">Submit</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="publishdatable"class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Notification Name</th>
														<th>Summary</th>
														<th>Preview</th>
														<th>Customer Type</th>
														
														<th>Category</th>
														<th>Standard</th>
														<th>Exam Type</th>
														<th>State</th>
														<th>City</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody id="publishbody">
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="notifications"/>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
          <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/notifications.js"></script>
	      <script>
	      	$(document).ready(function(){
	      		$("#datepicker1, #datepicker2").datepicker({dateformat:'dd-mm-yy'});
	      		getCategoriesByName();
	      		publishGet();
	      		
	      		
	      	});
	      </script>