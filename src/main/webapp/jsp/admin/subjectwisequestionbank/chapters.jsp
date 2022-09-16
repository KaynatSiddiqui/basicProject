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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Chapters</span></h6>
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
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="sqbgetallunits(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label mb-5 bold">Unit</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-1">
									<a class="btn btn-primary mt-25" onclick="getAllChaptersByStdSubUnit()">Submit</a>	
								</div>
								<div class="col-md-1">
									<a href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/chapters_add.jsp" class="btn btn-success btn-xs">Add</a>
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
														<th>Examtype</th>
														<th>Subject </th>
														<th>Unit</th>
														<!-- <th>Parameters</th> -->
														<th>Chapter </th>
														 <th>Chapter Info</th>
														<!--<th>Chapter Basic</th>
														<th>Chapter Formulae</th> -->
														<th>Chapter Image</th>
														<th>Chapter Icon</th>
														<th>student Status</th>
														<th>Chapter Approach Status</th>
													    <th>Color code</th>
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
				
				<div class="modal fade"  id="param" tabindex="-1" role="dialog" aria-labelledby="param">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Parameters<span id="wstviewname"></span></h4>
											   </div>
											<div class="modal-body" id="hvrmsg">
											 <p class="wstedtxtclr" id ="parameters"> </p>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
							
							
							<div class="modal fade"  id="chapterinfo" tabindex="-1" role="dialog" aria-labelledby="chapterinfo">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">ChapterInfo<span id="wstviewname"></span></h4>
											   </div>
											<div class="modal-body" id="hvrmsg">
											 <p class="wstedtxtclr" id ="chapinfo"> </p>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
		</div>
		<input type="hidden" id="creationactive" value="subjectwiseside"/>
		<input type="hidden" id="ulactive" value="subjectwisebank_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/subjectquestionbank.js"></script>
	      <div id="paramsshow"></div>
	        <div id="chapinfo"></div>
	</div>
	<script>
	 $("#sbchapter").addClass('active-page');
	 $(document).ready(function() {
		 sqbgetallstandard();
			sqbGetchapters();
	    	});
	     
	      
	      </script>
	      
	<!-- /Main Content -->