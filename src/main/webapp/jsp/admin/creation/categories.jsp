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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Categories</span></h6>
								</div>
								<div class="col-sm-4 col-xs-6 right">
									<a href="categories_add.jsp" class="btn btn-add_btn btn-xs">Add</a>
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
										
											<table id="categories_tbl" class="table display pb-30" >
											<div id="loading">
												<p>Loading...</p></div>
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Category</th>
														<th>Category uploaded Images</th>
														<th>Created Date</th>
														<th>Modified Date</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												
												<tbody id="categories_tbody">
												
												</tr>
												
													<!-- <tr>
														<td>1</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>6</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>7</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>8</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>9</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>10</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>11</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>12</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>13</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>14</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>15</td>
														<td>Test</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="categories_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr> -->
													
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
		<input type="hidden" id="creationactive" value="creationside"/>
		<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>

	<!-- /Main Content -->
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	
	<script>
	  $("#catselect").addClass('active-page');
	$(document).ready(function(){
		GetAllCategories();	
	})
	</script>