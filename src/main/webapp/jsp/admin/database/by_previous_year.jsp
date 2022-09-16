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
								<h6 class="panel-title txt-dark"><span class="database_heading">Database-By Previous Year</span></h6>
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
												
												</select>
											</div>	
										</div> -->
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value);  getYearSqb(this.value)">
												
												</select>
											</div>	
										</div>
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange="getSelectedSubjects(this.value); getOtherExamtypes(this.value); getAllYearsForDropDown(this.value)">
																							</select>
											</div>	
										</div> -->
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
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="chapter" onchange="getSelectedSQBTopics(this.value)" >
													<!-- <option>--- Select ---</option>
													<option>Chapter 1</option>
													<option>Chapter 2</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Topic</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="topic">
												<!-- 	<option>--- Select ---</option>
													<option>Topic 1</option>
													<option>Topic 2</option> -->
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Previous Year</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="sltdyer">
													<!-- <option>--- Select ---</option>
													<option>2017</option>
													<option>2016</option>
													<option>2015 Based</option> -->
												</select>
											</div>	
										</div>
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Other Competitive Exam Type</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="otherexamtype">
													<option>--- Select ---</option>
													<option>EAMCET</option>
													<option>KCET</option>
												</select>
											</div>	
										</div> -->
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Other Competitive Year</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="sltdyer1">
												<!-- 	<option>--- Select ---</option>
													<option>2017</option>
													<option>2016</option> -->
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a class="btn btn-primary" onclick="byPrevsYrsFillter();">Submit</a></div>
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
										<table id="previous-year-table" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
												<th>S. No</th>
													<th>Question ID</th>
													<!-- <th>Exam Type</th> -->
													<th>Standard</th>
													<th>Subject</th>
													<th>Unit</th>
													<th>Chapter</th>
													<th>Topic</th>
													<th>Type of Question</th>
													<th>Difficulty Level</th>
													<th>Previous Year</th>
													<th>Other Competitive Exam Type</th>
													<th>Other Competitive Previous Year</th>
													<th>Modified Date</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody id ="previous-year-tbody">
											
											
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a onclick="fnExcelReport('previous-year-table')"  class="btn btn-warning">Download in Word</a>
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
	    <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
	       <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	         <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	         <script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	<script>
	$("#adbypre").addClass('active-page');
	$(document).ready(function(){
		/*  getCategoriesByName(); */
		    sqbgetallstandard();
			getPreviousyear();
		
		
			
		//getAllYearsForDropDown(cat,exam,standard);
		
		
	})
	</script>
