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
								<a href="<%= AppConstants.BASE_URL %>sme/questionstatus/status.jsp" class="btn btn-academic_head_tabs btn-outline fancy-button btn-0">Question Status</a>
							    <a href="<%= AppConstants.BASE_URL %>sme/questioncount/question_count.jsp" class="btn btn-academic_head_tabs" style="vertical-align: bottom;">Questions Count</a>
								</div>
							</div>
							<hr class="light-grey-hr mt-10 mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedStandardsBySmeId(this.value);" id="category">
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div> -->
										<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getsubjectssqb(this.value);" disabled>
														<option>--- Select ---</option>
														<!-- <option>10th</option>
														<option>11th</option>
														<option>12th</option> -->
													</select>
												</div>	
											</div>
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSubjectBySmeId(this.value);" id="examtype" disabled>
														<option>--- Select ---</option>
														<option>Mains</option>
														<option>NEET</option>
													</select>
												</div>	
											</div> -->
											
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" disabled>
														<option>--- Select ---</option>
														<!-- <option>Maths</option>
														<option>Physics</option>
														<option>Chemistry</option> -->
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="questionCount()">Submit</a>
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
											<table id="smequescount_tbl" class="table sme_border  display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S No</th>
														<!-- <th>Exam Type</th> -->
														<th>Standard</th>
														<th>Subject</th>
														<th>Chapter</th>
														<th>Topic</th>
														<th>Pending Qns</th>
														<th>Rejected Qns</th>
														<th>Approved Qns</th>
													</tr>
												</thead>
												<tbody id="smequescount_tbody">
													<!-- <tr>
														<td>Live Exam</td>
														<td>10th</td>
														<td>Physics</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction Introduction</td>
														<td>20</td>
														<td>12</td>
														<td>10</td>
													</tr>
													<tr>
														<td>Mock Exam</td>
														<td>10th</td>
														<td>Chemistry</td>
														<td>Inverse Trigonometric functions</td>
														<td>Introduction Introduction Introduction</td>
														<td>20</td>
														<td>12</td>
														<td>10</td>
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
				<input type="hidden" id="creationactive" value="smeqcou"/>
				</div>
		<%@include file="/jsp/master/footer.jsp" %>
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		   <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
		  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/sme.js"></script>
		</div>
		
		<script>
		 	$(document).ready(function() {  
		 		var smeId =getSmeId();
		 		/* getCategoriesBySmeId(smeId); */
		 		sqbgetallstandard();
			 Getsmequescount();
		   });
	      
	   </script>
        <!-- /Main Content -->
