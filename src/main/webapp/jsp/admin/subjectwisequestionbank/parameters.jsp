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
								<div class="col-sm-6 col-xs-12 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Parameters</span></h6>
								</div>
								<div class="col-md-12" style="margin-top:25px;margin-left:20px">
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label mb-5 bold">Standard </label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label mb-5 bold">Subjects</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="sqbgetallunits(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label mb-5 bold">Unit</label>
										<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getchapterssqb(this.value);">
											<!-- <option>--- Select ---</option>
											<option>Mains</option>
											<option>NEET</option> -->
										</select>
									</div>	
								</div>
								<div class="col-md-12 text-center">
									<a class="btn btn-primary mt-25" onclick="sqbparamfilter()">Submit</a>	
								</div>
								</div>
								<div class="col-md-12 right">
									<a href="parameters_add.jsp" class="btn btn-add_btn btn-xs">Add</a>
								</div>
								
								<div class="col-sm-1 col-xs-6 pull-right right">
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
											<table id="sqbparameter_tbl" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Parameter</th>
														<th>Priority</th>
														<th>Main Skills</th>
														<th>Standard</th>
														<th>Subject</th>
														<th>Unit</th>
														<th>Chapters</th>
														<th>Actions</th>
														
													</tr>
												</thead>
												<tbody id="sqbparameter_tbody" style="white-space:nowrap">
													
													
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
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/subjectquestionbank.js"></script>
	</div>
	<script>
	 $("#parama").addClass('active-page');
	 $(document).ready(function() {
		 sqbgetallstandard();
			sqbGetParametrs();
	    	});
	     
	      
	      </script>
	      
	<!-- /Main Content -->