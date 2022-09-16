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
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Report</span><span class="main_heading_theme_color"> (Admin)</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mb-10">
						<div class="row">
							<div class="col-md-12">
								<form>
									<div class="row">
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Student ID</label>
												 <input type="password" class="form-control" id="pwd">
											</div>	
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Student Name</label>
												 <input type="password" class="form-control" id="pwd">
											</div>	
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">City</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Hyderabad</option>
													<option>Vijayawada</option>
											</select>
											</div>	
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Category1</option>
													<option>Category2</option>
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a class="btn btn-primary">Submit</a></div>
										</div>
									</div>
								</form>
							</div>
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
										<table id="datable_1" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Student ID</th>
													<th>Student Name</th>
												    <th>State</th>
													<th>City</th>
													<th>Category</th>
													<th>Exam type(subscribe)</th>
													<th>Phone</th>
													<th>EmailID</th>
													<th>Parent Name</th>
													<th>Parent Mail ID</th>
													<th>Parent Phone No</th>
													</tr>
											 </thead>
											 <tbody>
											  <tr>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												  <td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
												    <td></td>
													<td></td>
												</tr>
												
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
												    <td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												    <td></td>
													<td></td>
													</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												   <td></td>
												   <td></td>
												   <td></td>
													</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												    <td></td>
												   <td></td>
												   <td></td>
												   <td></td>
													</tr>
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
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<!-- /Main Content -->
	
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>