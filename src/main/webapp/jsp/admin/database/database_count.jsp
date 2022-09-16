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
								<h6 class="panel-title txt-dark"><span class="database_heading">Database-Count</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
									<!-- 	<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category</label>
												<select class="selectpicker" id="category"  data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value);">
												
												</select>
											</div>	
										</div> -->
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard</label>
												<select class="selectpicker" id="standard"  data-style="form-control btn-default btn-outline">
												
												</select>
											</div>	
										</div>
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type</label>
												<select class="selectpicker" id="examtype" onchange="getSelectedDifficultLevels(this.value);" data-style="form-control btn-default btn-outline" disabled>
												
												</select>
											</div>	
										</div> -->
										
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Difficulty</label>
												<select class="selectpicker" id="difficultlevel" data-style="form-control btn-default btn-outline" disabled>
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<div class="col-md-12">
													<div class="center"><a class="btn btn-primary" id="dbSubmit">Submit</a></div>
												</div>
											</div>	
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
										<table id="adminDB_tbl" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
												<th>S. No</th>
													<th>Subject</th>
													<th>Total Question Count</th>
													<th>Parameterwise Count</th>
													<th>Chapterwise Count</th>
												</tr>
											</thead>
											<tbody id="adminDB_tbody">
										
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
			<input type="hidden" id="creationactive" value="admindatabase">
			<input type="hidden" id="ulactive" value="admindatabase_dr">
			
		</div>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<input type="hidden" id="createdby"  value="${AdminType }" />
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	  <script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script>
$("#adbcount").addClass('active-page');
	$(document).ready(function() {
		// getCategoriesByName();
		sqbgetallstandard();
		 getAllDifficultyWisesqb();
		adminDBcount();
 	});
  
 </script>
