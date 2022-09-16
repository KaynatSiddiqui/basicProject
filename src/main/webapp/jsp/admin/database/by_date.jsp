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
								<h6 class="panel-title txt-dark"><span class="database_heading">Database-By Date</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<!-- <div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" id="category" onchange="getstandardsbtcat(this.value);" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option>
												</select>
											</div>	
										</div> -->
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard</label>
												<select class="selectpicker" id="standard" data-style="form-control btn-default btn-outline">
													<!-- <option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option> -->
												</select>
											</div>	
										</div>
										<!-- <div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" id="examtype" data-style="form-control btn-default btn-outline">
													<option>--- Select ---</option>
													<option>Mains</option>
													<option>NEET</option>
												</select>
											</div>	
										</div> -->
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">From Date</label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">To Date</label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="id-date-picker-2" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a id="AdminBDfilter" class="btn btn-primary">Submit</a></div>
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
										<table id="AdminBD_tbl" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
												<th>S.No</th>
													<th>Question ID</th>
													<!-- <th>Exam Type</th> -->
													<th>Class</th>
													<th>Subject</th>
													<th>Unit</th>
													<th>Chapter</th>
													<th>Topic</th>
													<th>Type of Question</th>
													<th>Difficulty Level</th>
													<th>Modified Date</th>
													<th>Last Updated ID(SME/Dean/Super Dean)</th>
													<th>Comment</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody id="AdminBD_tbody">
															</tbody>
										</table>
									</div>
									<div class="pull-right mt-30">
									<a onclick="fnExcelReport('AdminBD_tbl')" class="btn btn-warning">Download in Word</a>
								</div>
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
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

	<script type="text/javascript">

		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
		$(document).ready(function(){
			 $("#adbydate").addClass('active-page');
			GetAdminDBD();
			sqbgetallstandard();
			/* getCategoriesByName(); */
		})
	</script>
