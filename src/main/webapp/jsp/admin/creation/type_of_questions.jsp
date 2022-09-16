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
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Types of Questions</span></h6>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Exam Type </label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange="getsubjectsbyexamtype(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Subjects</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-2 ">
									<a class="btn btn-primary mt-25" onclick="GetAllTypeofques();">Submit</a>	
								</div>
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/creation/type_of_questions_add.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="typeques_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Category</th>
														<th>standard</th>
														<th>Exam Type</th>
														<th>Subject</th>
														<th>Layout Number</th>
														<th>Types of Question Name</th>
														<th>Time</th>
														<th>Full Marks</th>
														<th>Negative Marks</th>
														<th>Partial Marks</th>
														<th>Created Date</th>
														<th>Modified Date</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="typques_tbody">
												
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
        	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	      	<script>
	      	 $("#typqselect").addClass('active-page');
		$(document).ready(function(){
			getExamTypeByName();
			GetAllTypeofques();
			
		})
		</script>