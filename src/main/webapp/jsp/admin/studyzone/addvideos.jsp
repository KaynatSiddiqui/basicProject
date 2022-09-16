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
								<div class="col-sm-1">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Videos</span></h6>
								</div>
							 <div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Standard </label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Subjects</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="sqbgetallchapters(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Chapters</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="chapter">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div> 
								 <div class="col-md-1">
									<a class="btn btn-primary mt-25" onclick="getvideosfiterByStdSub()">Submit</a>	
								</div> 
								<div class="col-md-1">
									<a href="<%= AppConstants.BASE_URL %>admin/studyzone/addvideos_add.jsp" class="btn btn-success btn-xs">Add</a>
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
											<table id="sqbchapter_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Standard</th>
														<th>ExamTypes</th>
														<th>Subject </th>
														<th>Unit</th>
														<th>Chapter </th>
														<th>Topic </th>
														<th>Video title</th>
														<th>Video URl</th>
														<th>Created Date</th>
														<th>Modified Date</th>
														<th>Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="sqbchapter_tbody">
													
													
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
	<input type="hidden" id="creationactive" value="study_zone"/>
	<input type="hidden" id="ulactive" value="study_zone_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		   <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	        <script src="<%=request.getContextPath()%>/assets/js/studyzone.js"></script>
	</div>
	<script>
	 $("#sbvideos").addClass('active-page');
	 $(document).ready(function() {
		 sqbgetallstandard();
		 sqbGetAddVideo();
	  });
	     
	      
	      </script>
	      
	<!-- /Main Content -->