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
								<div class="col-sm-6 col-xs-12 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Examtype Creation</span></h6>
								</div>
								<div class="col-sm-4 col-xs-6 right">
									<a href="landingexamptypes.jsp" class="btn btn-add_btn btn-xs">Add</a>
								</div>
								<div class="col-sm-1 col-xs-6 pull-right right">
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
										
											<table id="examcreate_tbl" class="table display pb-30" >
											<div id="loading">
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>examtypeName</th>
														<th>examtypeDefinition</th>
														<th>NormalImage</th>
														<th>HoverImage</th>
														<th>MainImage</th>
														<th>examtypeDescription</th>
														<th>Actions</th>
													</tr>
												</thead>
												
												<tbody id="examcreat_tbody">
												
												
													
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				
		</div>
		<input type="hidden" id="creationactive" value="adminexamcre">
       	<input type="hidden" id="ulactive" value="adminexamcre_dr">
		<%@include file="/jsp/master/footer.jsp" %>
	</div>

	<!-- /Main Content -->
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
    <script src="<%=request.getContextPath()%>/assets/js/examcreation.js"></script>
	
<script>
$("#examtypecreation").addClass('active-page');
$(document).ready(function(){
	Gettingexamtypes();
})


</script>