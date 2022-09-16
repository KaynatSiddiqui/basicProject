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
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Users </span><span class="main_heading_theme_color">List</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
							      <a href="<%= AppConstants.BASE_URL %>superadmin/users_list/admin_users_list.jsp" class="btn btn-danger btn-outline fancy-button btn-0">ADMINS</a>
							      <%-- <a href="<%= AppConstants.BASE_URL %>superadmin/users_list/experts" class="btn btn-danger ">EXPERTS</a> --%>
							      <a href="<%= AppConstants.BASE_URL %>superadmin/users_list/academichead_users_list.jsp" class="btn btn-danger">ACADEMIC HEADS</a>
</div>								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
						<!-- <div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Users </span><span class="main_heading_theme_color">List</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div> -->
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
											<table id="academicHeadUserTable" class="table table-bordered display pb-30" >
												<thead class="th_background">
													<tr>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Mobile Number</th>
														<th>Email</th>
														<th>Gender</th>
														<th>Pin Number</th>
														<th>Designation</th>
														<?php if($sub_active=='admin'){?>
														<th>Features</th>
														<?php }?>
														<th>Action</th>
													</tr>
												</thead>
												<tbody id="academicHeadUserBody">
													<%-- <tr>
														<td>AAA</td>
														<td>BBB</td>
														<td>1111111111</td>
														<td>TEST@gmail.com</td>
														<td>Male</td>
														<td>1234</td>
														<td>Test...</td>
														<?php if($sub_active=='admin'){?>
														<td>
														<a data-toggle="modal" data-target="#myModal" class="model_img img-responsive" data-original-title="Preview"><i class="fa fa-search-plus text-success font-24" style="cursor:pointer;"></i></a>
														</td>
														<?php } ?>
														<td>
														<a href="<%= AppConstants.BASE_URL %>superadmin/users_list/academichead_edit_users.jsp" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-primary font-24"></i></a>
														<a href="" class="mr-10" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
														</td>
													</tr>
													<tr>
														<td>CCC</td>
														<td>DDD</td>
														<td>1111111111</td>
														<td>TEST@gmail.com</td>
														<td>Male</td>
														<td>1234</td>
														<td>Test...</td>
														<?php if($sub_active=='admin'){?>
														<td>
														<a data-toggle="modal" data-target="#myModal" class="model_img img-responsive" data-original-title="Preview"><i class="fa fa-search-plus text-success font-24"></i></a>
														</td>
														<?php } ?>
														<td>
														<a href="<%= AppConstants.BASE_URL %>superadmin/users_list/academichead_edit_users.jsp" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-primary font-24"></i></a>
														<a href="" class="mr-10" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>
														</td>
													</tr> --%>
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
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h5 class="modal-title" id="myModalLabel">Features List</h5>
</div>
<div class="modal-body">
<div class="table-responsive">
<table id="datable_1" class="table table-bordered display pb-30" >
<thead class="th_background">
<tr>
<th>Features</th>
</tr>
</thead>
<tbody>
<tr><td>1</td></tr>
<tr><td>1</td></tr>
<tr><td>1</td></tr>
<tr><td>1</td></tr>
</tbody>
</table>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
</div>
               <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
               <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
               <script>
					$(document).ready(function(){
						academicHeadUserList();
					})
				</script>