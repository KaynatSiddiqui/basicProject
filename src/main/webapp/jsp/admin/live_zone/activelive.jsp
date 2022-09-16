<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<!-- Main Content -->
<div class="page-wrapper">
    <div class="container-fluid">
<iframe id="txtArea1" style="opacity: 0; width: 100%; height: 0px;" seamless="seamless"></iframe>
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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Live</span><span class="main_heading_theme_color"> Zone</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                   <%-- <hr class="light-grey-hr mb-10">
                     <div class="row">
                        <div class="col-sm-12">
                            <div class="button-list">
                                <a href="<%= AppConstants.BASE_URL %>admin/live_zone/upcoming_published.jsp" class="btn btn-danger">Published</a>
                                <a href="<%= AppConstants.BASE_URL %>admin/live_zone/upcoming.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Add New</a>
                            </div>
                        </div>
                    </div> --%>
					 <hr class="light-grey-hr mb-10">
					<div class="row">
						<div class="col-sm-12">
							<form>
								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value)" id="category">
											
											</select>
										</div>	
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedexams(this.value)" id="standard">
											
											</select>
										</div>	
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
											<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype">
											
											</select>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">From Date</label>
											<div class="input-group">
												<input class="form-control date-picker" name="interview_date" id="fromdate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
												<span class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</span>
											</div>
										</div>	
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">To Date</label>
											<div class="input-group">
												<input class="form-control date-picker" name="interview_date" id="todate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
												<span class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</span>
											</div>
										</div>	
									</div>
									<div class="col-md-2">
										<a class="btn btn-primary mt-25" onclick="getlivezonetestbyfilter()">Submit</a>
									</div>
								</div>
							</form>
						</div>
					</div>  <hr class="light-grey-hr mt-30 mb-10">
                   
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default card-view">
                                <div class="panel-heading">
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
                                                <table id="active_table" class="table display pb-30">
                                                    <thead class="th_background">
                                                        <tr>
                                                            <th>Live Zone test type</th>
                                                            <th>Test name</th>
                                                            <th>Exam type</th>
                                                            <th>Subjects</th>
                                                            <th>No. of Qns.</th>
                                                            <th>Test Time</th>
                                                            <th>Opening date</th>
                                                            <th>Closing date</th>
                                                            <th>Syllabus</th>
                                                          <!--   <th>Suggest- syllabus</th> -->
                                                            <th>Suggested Syllabus by Student</th>
                                                           <!--  <th>Status</th>-->
                                                            <th>Delete</th> 
                                                        </tr>
                                                    </thead>
                                                    <tbody id="active_body">
                                                      
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
								
								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="getactivesyllabus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
									<div class="modal-content">
											
									<div class="modal-body">
									<div class="panel-body">
									<div class="panel-group accordion-struct" id="activesyllabus_tbody" role="tablist" aria-multiselectable="true">
											
								   </div>
									</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
	 <div class="modal fade bd-example-modal-lg" id="studentsuggest" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												<h5 class="modal-title center" id="exampleModalLabel1">Suggested Syllabus by Student</h5>
											</div>
											<div class="modal-body">
											<div class="" >
										 <div class="col-sm-3 col-sm-offset-8 mb-5">
													Total Suggested: <span class="theme_color bold font-18" id="totalsuggestcount"></span>
												</div>		
											</div>
												<div class="table-wrap mt-40">
													<div class="table-responsive">
													  <table id="activeviewtable" class="table table-hover table-bordered mb-0">
														<thead class="th_background">
														  <tr>
															<th>Student ID</th>
															<th>Student Name</th>
															<th>State</th>
															<th>City</th>
															<th>Standard</th>
															<th>Subject</th>
															<th>Chapter</th>
															<th>Comment</th>
														  </tr>
														</thead>
														<tbody id="actveviewtablebody">
															
														</tbody>
													  </table>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-download" onclick="fnExcelReport('activeviewtable');" data-dismiss="modal">Download</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
        <!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="livezoneside"/>
			<input type="hidden" id="ulactive" value="livezone_dr"/>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
          
          <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
          <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
          <script src="<%=request.getContextPath()%>/assets/js/livezone.js"></script>
          
     	<script>
    	$("#activeselect").addClass('active-page');
     		$(document).ready(function(){
     			liveactiveexams();
     			  getCategoriesByName();
     			 $("#fromdate, #todate" ).datepicker({dateFormat:'dd-mm-yy'});
     		});
     	</script>     	