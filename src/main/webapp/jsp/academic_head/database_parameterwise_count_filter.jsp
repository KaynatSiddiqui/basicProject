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
						<div class="row">
							<div class="col-sm-12 mb-20">
				              <h6 class="panel-title txt-dark"><span class="dashboard_heading">Database Parameterwise Count</span></h6>
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
										<table id="db_param_wise_count" class="table ahead_border  display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Chapter name</th>
													
													<th>Parameter</th>
													<th>Parameter Count </th>
													
												</tr>
											</thead>
											<tbody id="db_param_wise_body" >
												
											</tbody>
											<tfoot>
								            <tr>
								                <th colspan="3" style="text-align:right" id="total_count">Subject Total:</th>
								            </tr>
		       								 </tfoot>
												</table>
									</div>
								</div>
								<div class="mt-30">
									<a href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp" class="btn btn-primary pull-center">Back</a>
								<!-- 	<a href="#" class="btn btn-warning pull-right">Download in Excel</a> -->
																<button class="btn btn-download pull-right" type="submit" class="btn btn-warning" id="jquery-word-export">Download in Excel</button>
									
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- /Row -->
		</div>
		<!--<?php echo $footer;?>-->
				<%@include file="/jsp/master/footer.jsp" %>
	</div>
	
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	   <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	 
	<script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	<script>
		
	$(document).ready(function(){
		dbparameterwiseCountfilter();	
		 
		
	})
	</script>
	
	
	<!-- /Main Content -->
	