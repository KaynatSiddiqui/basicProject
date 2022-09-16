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
								<h6 class="panel-title txt-dark"><span class="database_heading">Database-By Parameters</span></h6>
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
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value)" id="category">
												
											</select>
										</div>	
									</div> -->
										<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getsubjectssqb(this.value);" id="standard">
												
											</select>
										</div>	
									</div>
										<!-- <div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange ="getSelectedSubjects(this.value);">
												
											</select>
										</div>	
									</div> -->
										
										 <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Subject</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="sqbgetallunits(this.value);getAllSQBLayouts(this.value);" id="subject" >
                                             
                                            </select>
                                        </div>
                                    </div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Unit <span class="red">*</span></label>
												<select class="selectpicker" id="unit" onchange="getchapterssqb(this.value);" data-style="form-control btn-default btn-outline" name="unit">
												
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Chapter <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSQBTopics(this.value)" id="chapter">
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Topic</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="topic" >
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Parameters</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="parameter">
													
												</select>
											</div>	
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Type of Question</label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType">
													
												</select>
											</div>	
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="center"><a class="btn btn-primary" id="Adminpmcfilter" >Submit</a></div>
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
										<table id="AdminBDP_tbl" class="table table-bordered display pb-30" >
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
													<!-- <th>Parameter 1</th>
													<th>Parameter 2</th>
													<th>Parameter 3</th>
													<th>Parameter 4</th>
													<th>Parameter 5</th>
													<th>Parameter 6</th>
													<th>Parameter 7</th>
													<th>Parameter 8</th>
													<th>Parameter 9</th>
													<th>Parameter 10</th> -->
													<th>Previous Year</th>
													<th>Modified Date</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody id="AdminBDP_tbody">
												
											</tbody>
										</table>
									</div>
								</div>
								<div class="pull-right mt-30">
									<a href="#" class="btn btn-warning" onclick="fnExcelReport('AdminBDP_tbl')">Download in Word</a>
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
	<input type="hidden" id="createdby"  value="${AdminType }" />
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script>
$("#adbypara").addClass('active-page');
	$(document).ready(function(){
		/* getCategoriesByName(); */
		sqbgetallstandard();
		gellAllSqbParamaters();
		
		/* getparameters(); */
		GetAdminDBP();
 	});
  
 </script>
