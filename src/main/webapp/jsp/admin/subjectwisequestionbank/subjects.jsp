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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Subjects</span></h6>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-2">
									<a class="btn btn-primary mt-25" onclick="sqbAllSubjectbyStandards();">Submit</a>	
								</div>
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/subjects_add.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="sqbsubjects_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Standard</th>
													   <!--  <th>Parameter Name's</th> -->
													    <th>Subject images</th>
													    <th>Subject icons</th>
														<th>Subject</th>
														<th>Created Date</th>
														<th>Modified Date</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="sqbsubjects_tbody">
													
													
													
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
		<input type="hidden" id="creationactive" value="subjectwiseside"/>
		<input type="hidden" id="ulactive" value="subjectwisebank_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
               <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	
	          <script src="<%=request.getContextPath()%>/assets/js/subjectquestionbank.js"></script>
	      
	      <script >
	      $("#sbsubject").addClass('active-page');
	      $(document).ready(function() {
	    	  sqbgetallstandard();
	    	  sqbGetSubjects();
	    	});
	     
	      
	      </script>