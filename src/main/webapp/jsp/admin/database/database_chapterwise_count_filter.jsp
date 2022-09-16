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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Database</span><span class="main_heading_theme_color"> Chapterwise Count</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
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
										<table id="chpterwisetbl" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Chapter name</th>
													<th>Total</th>
													<th>Single correct</th>
													<th>Multi correct</th>
													<th>Integer</th>
													<th>Comprehension</th>
													<th>Multi Comprehension</th>
													<th>Matrix</th>
												</tr>
											</thead>
											<tbody id="chpterwisebody"> 
											
											</tbody>
										</table>
									</div>
								</div>
								<div class="mt-30">
									<a href="<%= AppConstants.BASE_URL %>admin/database/database_count.jsp" class="btn btn-primary pull-center">Back</a>
									<a href="#" class="btn btn-download pull-right">Download in Excel</a>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- /Row -->
		</div>
		<input type="hidden" id="creationactive" value="admindatabase">
		<input type="hidden" id="ulactive" value="admindatabase_dr">
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	  <script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<!-- /Main Content -->
	<script>
	$("#adbcount").addClass('active-page');
	$(document).ready(function(){
		getChapterwisecountfilter();
	});
	</script>