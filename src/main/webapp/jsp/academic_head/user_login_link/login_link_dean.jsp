<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

		<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					</div>
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-3 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Login </span><span class="main_heading_theme_color">Linking</span></h6>
								</div>
								<div class="col-sm-5 pull-left mb-20">
									<div class="col-md-6">
												<div class="form-group">
													<label class="control-label mb-5 bold">Dean Details<span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline"  id="dean">
														
													</select>
												</div>	
											</div>
										<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="loginlinkbyid('dean')">Submit</a>	
											</div>	
								</div>
								<div class="col-sm-4 col-xs-6 right">
									<a href="<%= AppConstants.BASE_URL %>academic_head/user_login_link/login_link_dean_assign.jsp" class="btn btn-primary">Assign</a>
								</div>
								<div class="clearfix"></div>
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
									<table id="deanlogindatable_1"
										class="table table-bordered display pb-30">
										<thead class="th_background">
											<tr>
												<th>Dean</th>
												<th>Photo</th>
											<!-- 	<th>Super Dean</th> -->
												<th>Standard</th>
												<th>Subject</th>
												<th>Unit</th>
												<th>Chapter</th>
												<th>Present Status</th>
											</tr>
										</thead>
										<tbody id="deanloginbody">
											
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<input type="hidden" id="creationactive" value="loginlinkactive"/>
		<input type="hidden" id="ulactive" value="loginlink"/>
				</div>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	    
		<script>
		$("#deanlinkactive").addClass('active-page');
	$(document).ready(function(){
		getSelectedByAllDeans();
		GetAllLoginDean();	
		
	})
	</script>
