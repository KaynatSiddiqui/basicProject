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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Subscription</span></h6>
								</div>
								
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/creation/subscription_add.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="susc_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Academic Year</th>
														<th>Category Name</th>
														<th>Standard</th>
														<th>Exam Type</th>
														<th>Original Price </th>
														<th>Offer Price</th>
														<th>Active Date </th>
														<th>Expiry Date</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="subsc_tbody">
													<%-- <tr>
														<td>1</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Standard Name here</td>
														<td>Science</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Standard Name here</td>
														<td>Science</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Standard Name here</td>
														<td>Science</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Standard Name here</td>
														<td>Science</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Standard Name here</td>
														<td>Science</td>
														<td>Unit 1</td>
														<td>Chapter 1</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
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
	<input type="hidden" id="creationactive" value="adminsubscription"/>
	<input type="hidden" id="ulactive" value="subscription_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	     <%--  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> --%>
	          <script src="<%=request.getContextPath()%>/assets/js/subscription.js"></script>
	</div>
	<script>
	 $("#subscriptionselect").addClass('active-page');
	 $(document).ready(function() {
		 getAllSubscription();
		/*  getExamTypeByName();
	    	  getAllChapter(); */
	    	});
	     
	      
	      </script>
	      
	<!-- /Main Content -->