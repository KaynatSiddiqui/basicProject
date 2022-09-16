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
								<h6 class="panel-title txt-dark"><span class="database_heading">Database-Difficulty Wise</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<form>
									<div class="row">
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category" onchange="getstandardsbtcat(this.value);">
													<option>--- Select ---</option>
													<option>Engineering</option>
													<option>Medical</option>
												</select>
											</div>	
										</div> -->
										
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value);">
													
												</select>
											</div>	
										</div>
										
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="sqbgetallunits(this.value);">
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Unit <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getchapterssqb(this.value);">
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="chapter" onchange="getSelectedSQBTopics(this.value);">
													<!-- <option>--- Select ---</option>
													<option>Chapter 1</option>
													<option>Chapter 2</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Topic</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline"  id="topic" onchange="getAllDifficultyWisesqb(this.value);">
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Difficulty Level</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="difficultlevel">
													
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a class="btn btn-primary" onclick="difflevelfilter();">Submit</a></div>
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
										<table id="difficultyleveltbl" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
												<th>s.no</th>
													<th>Question ID</th>
													<!-- <th>Exam Type</th> -->
													<th>Standard</th>
													<th>Subject</th>
													<th>Unit</th>
													<th>Chapter</th>
													<th>Topic</th>
													<th>Type of Question</th>
													<th>Difficulty Level</th>
													<th>Parameters</th>
													<th>Previous Year</th>
													<th>Modified Date</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody id="difficultyleveltblbody">
												
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a onclick="fnExcelReport('difficultyleveltbl')" class="btn btn-warning">Download in Word</a>
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
	 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	<script>
	$("#adifflev").addClass('active-page');
	$(document).ready(function(){
		/*  getCategoriesByName(); */
		 sqbgetallstandard();
		getDifficultylevel();
	})
	</script>