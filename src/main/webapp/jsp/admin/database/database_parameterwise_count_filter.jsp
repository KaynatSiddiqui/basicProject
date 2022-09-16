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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Database</span><span class="main_heading_theme_color"> Parameterwise Count</span></h6>
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
										<table id="parametrwisetbl" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Chapter name</th>
													<th>Total</th>
													<th>Parameters</th>
												
												</tr>
											</thead>
											<tbody id="parameterwisebody">
												<!-- <tr>
													<td>Chapter-1</td>
													<td>500</td>
													<td>100</td>
													<td>150</td>
													<td>150</td>
													<td>200</td>
												</tr>
												<tr>
													<td>Chapter-2</td>
													<td>500</td>
													<td>100</td>
													<td>150</td>
													<td>" "</td>
													<td>200</td>
												</tr>
												<tr>
													<td>Chapter-3</td>
													<td>" "</td>
													<td>" "</td>
													<td>" "</td>
													<td>" "</td>
													<td>" "</td>
												</tr>
												<tr>
													<td>Total</td>
													<td>Total</td>
													<td>Total</td>
													<td>Total</td>
													<td>Total</td>
													<td>Total</td>
												</tr> -->
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
		<script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	  <script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script>
	$("#adbcount").addClass('active-page');
	$(document).ready(function(){
		getParameterwisecountfilter();
	}) ;
	</script>