<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

		<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						
					</div>
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="row">
								<div class="col-sm-12">
								<div class="button-list">
							    <a href="<%= AppConstants.BASE_URL %>sme/questionstatus/status.jsp" class="btn btn-academic_head_tabs">Question Status</a>
							    <a href="<%= AppConstants.BASE_URL %>sme/questioncount/question_count.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Questions Count</a>
								</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-10">
							<div class="row">
								<div class="col-sm-12">
								<form>
										<div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Status <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="statusType">
														<option>--- Select ---</option>
														<option>Pending</option>
														<option>Rejected</option>
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">From Date <span class="red">*</span></label>
													<input type="email" id="datepicker" name="example-email" class="form-control"  autocomplete="off"/>
												</div>	
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date <span class="red">*</span></label>
													<input type="email" id="datepicker1" name="example-email" class="form-control"  autocomplete="off"/>
												</div>	
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="submitStatus();">Submit</a>
											</div>
										</div>
									</form>
									</div>
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
											<table id="accept_reject_tbl" class="table sme_border  display pb-30" >
												<thead class="th_background">
													<tr>
														<th>Q ID</th>
														<!-- <th>Category</th>
														<th>Exam Type</th> -->
														<th>Standard</th>
														<th>Subject</th>
														<th>Unit</th>
														<th>Chapter</th>
														<th>Status</th>
														<th>Question Status</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="accept_reject_tbody" >
													<!-- <tr>
														<td>1</td>
														<td>Live Exam</td>
														<td>10th</td>
														<td>Mathematics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction Introduction</td>
														<td>Rejected</td>
														<td>Test...</td>
														<td>
															<div class="">
																<a href="" class="btn btn-preview btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																<a class="btn btn-delete btn-icon-anim btn-circle p-10" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a>
															</div>
														</td>
													</tr>
													
													<tr>
														<td>2</td>
														<td>Practice Exam</td>
														<td>10th</td>
														<td>Physics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction</td>
														<td>Pending</td>
														<td>Test...</td>
														<td>
															<div class="">
																<a href="" class="btn btn-preview btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a>
																<a href="" class="btn btn-edit btn-icon-anim btn-circle mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>
																
															</div>
														</td>
													</tr> -->
													
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
				<input type="hidden" id="creationactive" value="smeques"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
		</div>
        <!-- /Main Content -->
        
           <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
           <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/sme.js"></script>
	<script>
	 $(document).ready(function() {  		
		$("#datepicker, #datepicker1" ).datepicker({dateFormat:'dd-mm-yy'});
		
		function showWorkStatus(){
			var getPopupStatus = displayOncePopup();
			
			if(!getPopupStatus){
				var data = getLoginData();
				var work = data.havework;
				if(!work){
					alert('No Work Assigned!!');
					sessionStorage.setItem('displayed',true);	
				}
				
					sessionStorage.setItem('displayed',true);	
				
				
			}
		

		}
		showWorkStatus();
		 Getaccept_rejectques();
		 
	    });
	     
	      
	      </script>