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
								<div class="col-sm-3 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">AcademicYear</span></h6>
								</div>
								
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/subscriptionpackage/academicYearAdd.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="academic_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Academic Year</th>
														<th>Type</th>
							  								<th>Expiration in Days/month</th>
														<th>Inserted Date</th>
													    <th>Updated Date</th>
													    <th>Actions</th>
													</tr>
												</thead>
												<tbody id="acadmic_tbody">
													
													
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
	<input type="hidden" id="creationactive" value="adminsubscription"/>
	<input type="hidden" id="ulactive" value="subscription_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	    <%--   <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script> --%>
	     <%--  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> --%>
	          <script src="<%=request.getContextPath()%>/assets/js/subscription.js"></script>
	</div>
	<script>
	 $("#academicyear").addClass('active-page');
	 $(document).ready(function() {
		// getAllAcadmicYears();
		
		 getAllAcadmicYearsTypes();
	     
	 });
	      </script>
	      
	<!-- /Main Content -->