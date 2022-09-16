	<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
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
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Live</span><span class="main_heading_theme_color"> Zone</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="light-grey-hr mb-10">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="button-list">
                                <a href="<%= AppConstants.BASE_URL %>admin/live_zone/upcoming_published.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Published</a>
                                <a href="<%= AppConstants.BASE_URL %>admin/live_zone/upcoming.jsp" class="btn btn-danger">Add New</a>
                            </div>
                        </div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10">
					<div class="row">
						<div class="col-sm-12">
							<form>
								<div class="row">
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Live Zone test type  <span class="red">*</span></label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="livetesttype">
													<option>--- Select ---</option>
									                <option><%= AppConstants.SUBJECTWISE_MOCK %></option>
												    <option><%= AppConstants.MOCKTEST %></option>
													<option><%= AppConstants.FULLSYALLBUSMOCK %></option>
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Test Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<input type="text" name="example-email" class="form-control" id="testname" placeholder="Enter Test Name">
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Category </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category" onchange="getstandardsbtcat(this.value);">
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
											     </select>
											</div>
										</div>	
									</div>
										<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Standard Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getSelectedexams(this.value);" >
															<!-- <option>--- Select ---</option>
															<option>10th Class</option>
															<option>9th Class</option> -->
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Exam Type  <span class="red">*</span></label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="examtype" onchange="getSelectedSubjects(this.value);" >
															<!-- <option>--- Select ---</option>
															<option>Exam Type 1</option>
															<option>Exam Type 2</option> -->
											  </select>
											</div>
										</div>	
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Subject Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="subject"  >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
												</select>
											</div>
										</div>	
									</div>
									<!-- <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Unit Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getSelectedChapter(this.value)"  disabled>
															<option>--- Select ---</option>
															<option>Unit 1</option>
															<option>Unit 2</option>
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Chapter Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="chapter" onchange="getSelectedTopic(this.value)" disabled>
															<option>--- Select ---</option>
															<option>Unit 1</option>
															<option>Unit 2</option>
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											  <label class="control-label" for="example-email">Topic Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="topic" onchange="getAllLayouts()" disabled>
															<option>--- Select ---</option>
															<option>Unit 1</option>
															<option>Unit 2</option>
												</select>
											</div>
										</div>	
									</div> -->
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">No.of Questions </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
											<input type="text" id="questionType" name="example-email" class="form-control" placeholder="No of Questions">
									
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Comments</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<input type="text" id="comments" name="example-email" class="form-control" placeholder="Comments">
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Test Time </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<input type="text" id="testtime" name="example-email" class="form-control" placeholder="Enter Test Time">
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Total Marks </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<input type="text" id="totalmarks" name="totalmarks" class="form-control" placeholder="Enter Total Marks">
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Opening Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="opendate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Opening Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker1" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
									</div>
									
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Closing Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="closedate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
									
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Closing Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker2" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
									</div>
									<!-- <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Syllabus </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<input type="text" id="syllabus" name="example-email" class="form-control" placeholder="Enter Syllabus">
											</div>
										</div>	
									</div> -->
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Enable - suggest syllabus </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="enablesuggest">
													<option>--- Select ---</option>
													<option value="Enable">Enable</option>
													<option value="Disable">Disable</option>
												</select>
											</div>
										</div>	
									</div>
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Active Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="" id="activedate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Active Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="activepicker" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
									</div>
									
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Expiry Date</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group">
                                                    <input class="form-control date-picker" name="" id="expirydate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
                                                    <span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
                                                </div>
											</div>
										</div>	
									</div>
									
									
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Expiry Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="expirypicker" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
									</div>
									
									    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
                                                      <div class="row form-group" style="padding-top:50px;">                                            
                                                      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10" style="padding-left:150px;" >                                               
                                                       <label class="control-label" for="example-email">syllabus </label>                                           
                                                        </div>                                            
                                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                         
                                                           <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
                                                           <textarea name="editor1" class="form-control" id="editor1" style="height:300px;width:600px;"></textarea>
                                                            </div>                                       
                                                             </div>                                  
                                                               </div> 
									
								</div>
								<div class="row mb-30">
									<div class="col-md-3 col-md-offset-5">
										<div class="button-list">
											<a class="btn  btn-primary" onclick="createlivezoneadd()">Add</a>
										</div>
									</div>
								</div>
							</form>
						</div>
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
	   <script type="text/javascript">
          $('#timepicker1').timepicker();
          $('#timepicker2').timepicker();
          $('#activepicker').timepicker();
          $('#expirypicker').timepicker();
        </script>
        
        
	   
	   <script>
	   $("#upcomingselect").addClass('active-page');
	   $(document).ready(function(){
		   getCategoriesByName();
		   $("#opendate, #closedate" ).datepicker({dateFormat:'dd-mm-yy'});
		   $("#activedate, #expirydate").datepicker({dateFormat:'dd-mm-yy'});
	   });
	   
	   
	   </script>
	   
	    <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	     <script>
	       $( document ).ready( function() {
           $( '#editor1' ).ckeditor();  
    
          });
	       
	       </script>
	     