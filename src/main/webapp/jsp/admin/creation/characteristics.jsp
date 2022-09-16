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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Characteristics</span></h6>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-2 ">
									<a class="btn btn-primary mt-25" onclick="getAllCharacteristics()">Submit</a>	
								</div>
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_add.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="character-tab" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Category</th>
														<th>Standard</th>
														<th>Exam Type</th>
														<th>Diifculty Level</th>
														<th>Parameters</th>
														<!-- <th>Parameter 1</th>
														<th>Parameter 2</th>
														<th>Parameter 3</th>
														<th>Parameter 4</th>
														<th>Parameter 6</th>
														<th>Parameter 7</th>
														<th>Parameter 8</th>
														<th>Parameter 9</th>
														<th>Parameter 10</th>
														<th>Parameter 11</th>
														<th>Parameter 12</th> -->
														<th>Previous year Questions</th>
														<th>Previous Year other Competitive Exams</th>
														<th>Created Date</th>
														<th>Modified Date</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="character-tbody">
													<%-- <tr>
														<td>1</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Tough</td>
														<td>Parameter 1</td>
														<td>Parameter 2</td>
														<td>Parameter 3</td>
														<td>Parameter 4</td>
														<td>Parameter 5</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Tough</td>
														<td>Parameter 1</td>
														<td>Parameter 2</td>
														<td>Parameter 3</td>
														<td>Parameter 4</td>
														<td>Parameter 5</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Tough</td>
														<td>Parameter 1</td>
														<td>Parameter 2</td>
														<td>Parameter 3</td>
														<td>Parameter 4</td>
														<td>Parameter 5</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Tough</td>
														<td>Parameter 1</td>
														<td>Parameter 2</td>
														<td>Parameter 3</td>
														<td>Parameter 4</td>
														<td>Parameter 5</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Test</td>
														<td>Exam Test</td>
														<td>Tough</td>
														<td>Parameter 1</td>
														<td>Parameter 2</td>
														<td>Parameter 3</td>
														<td>Parameter 4</td>
														<td>Parameter 5</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>Name , 2017, 2018, 2016</td>
														<td>01-Apr-2018 <br />5:10 PM</td>
														<td>20-Apr-2018 <br /> 10:52 PM</td>
														<td>
															<a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a>
														</td>
														<td>
															<div class="">
																<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics_edit.jsp" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
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
<input type="hidden" id="creationactive" value="creationside"/>
<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	 <input type="hidden" id="createdby"  value="${AdminType }" />
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
<script>
$("#charcselect").addClass('active-page');
	$(document).ready(function() {
	  getExamTypeByName();
 	  getAllCharacteristics();
 	});
  
 </script>
	<!-- /Main Content -->