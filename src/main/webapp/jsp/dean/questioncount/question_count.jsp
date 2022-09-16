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
									<div class="button-list" id="deantopbuttons">
										<a href="<%= AppConstants.BASE_URL %>dean/questionstatus/status.jsp" id="deanqstatus" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Question Status</a>
										<a href="<%= AppConstants.BASE_URL %>dean/questioncount/question_count.jsp" id="deanqc" class="btn btn-dean_tabs">Question Count</a>
										<a href="<%= AppConstants.BASE_URL %>dean/databaseqc/database_qc.jsp" id="deandbqc" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Database QC</a>
										<%-- <a href="<%= AppConstants.BASE_URL %>dean/copytootherexamtype/move_to_board.jsp" id="deancopytoexam" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Copy to other Exam Type</a> --%>
										<a href="<%= AppConstants.BASE_URL %>dean/manualpostquestions/manual_post_qns.jsp" id="" class="btn btn-dean_tabs btn-outline fancy-button btn-0">Manual Post Questions</a>
									</div>	
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
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedStandardsByDeanId(this.value);" id="category">
														
													</select>
												</div>	
											</div> -->
											
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getSelectedSubjectByDeanId(this.value);" disabled>
														
													</select>
												</div>	
											</div>
											<!-- <div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSubjectByDeanId(this.value);" id="examtype" disabled>
														
														
													</select>
												</div>	
											</div> -->
											<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">Subject <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" disabled>
														
													</select>
												</div>	
											</div>
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="questionCount();">Submit</a>	
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
											<table id="allquestyp_tbl" class="table dean_border  display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S NO</th>
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
												<tbody id="allquestyp_tbody">
													
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
				<input type="hidden" id="creationactive" value="dcount"/>
				</div>
				<%@include file="/jsp/master/footer.jsp" %>
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/dean.js"></script>
		</div>
        <!-- /Main Content -->
        <script>
        $(document).ready(function(){
        	var deanId = getDeanId();
        	getSelectedStandardsByDeanId(deanId);
        	/* getCategoriesByDeanId(deanId); */
        	Getdeanquescount();	
        })
        
        </script>