<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
 <style>
 .button-list{
    float: left;
    margin-bottom: 22px;
 }
 </style>
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
									<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post History Daily Scoope</span><span class="test_post_title_second"> - Control</span></h6>
								</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row mt-20">
									
									
									</div>
									
									
									<div class="row">
								<form>
								<div class="col-sm-12">
									
										
											<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">From Date</label>
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
												<label class="control-label mb-5 bold" for="exampleInputuname_2">To Date <span class="red">*</span> </label>
												<div class="input-group">
													<input class="form-control date-picker" name="interview_date" id="todate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
										</div>
											<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Category <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value);" id="category">
													
												</select>
											</div>	
										</div>
										 <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Standard <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" id="standard" onchange="getSelectedexams(this.value);">
													
												</select>
											</div>	
										</div>
											<div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold">Exam Type <span class="red">*</span></label>
												<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSubjects(this.value);"  id="examtype">
													
												</select>
											</div>	
										</div>
										</div>
										<div class="col-sm-12">
											
											<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="testposthistfil('testposthistorydailyscoope',2)">Submit</a>
											</div>
									</div>
									</form>
								
								
							</div>
									<div class="row mt-30">
										<div class="col-md-12">
											<div class="table-wrap">
												<div class="table-responsive">
													<table id="testposthist_tbl" class="table table-bordered display pb-30" >
														<thead class="th_background">
															<tr>
																<th>S.No</th>
																<!-- <th>Posted <br>Date</th> -->
																<th>Category</th>
																<!-- <th>Standard</th> -->
																<th>Exam Type</th>
																<th>Zone Type</th>
																<th>Test Type</th>
																<th>Test Name</th>
																<th>Active <br>Date & Time</th>
																<th>Expiry<br> Date & Time</th>
																<th>Duration</th>
																<th>Posted <br>Date</th>
																<th>Test Details</th>
																<th>Test Details View</th>
																<th>Status</th>
																<th>Action</th>
																<th>Student Delete</th>
																<th>Delete</th>
															</tr>
														</thead>
														<tbody id="testposthist_tbody">
															
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
				<div class="modal fade" id="activeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="top:60px;">
				
				<div class="modal-body">
					<form>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Active Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker1" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Active
															Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker" name="example-email" class="form-control" value=""/>
															<input type="hidden"  id="testid" value=""/>
														</div>
													</div>
												</div>
											</div>
											
										
											
					</form>
				</div>
				<div class="modal-footer">
					<a href="" type="button" class="btn btn-primary" onclick="changeactivetime()" data-dismiss="modal">Change</a>
					<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
					</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="expiryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="top:60px;">
				
				<div class="modal-body">
					<form>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Expiry Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="z-index:1;">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker2" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Expiry
															Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker1" name="example-email" class="form-control" value=""/>
															<input type="hidden" id="testid1" value=""/>
														</div>
													</div>
												</div>
											</div>
											
					</form>
				</div>
				<div class="modal-footer">
					<a href="" type="button" class="btn btn-primary" onclick="changeexpirytime()" data-dismiss="modal">Change</a>
					<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
					</div>
			</div>
		</div>
	</div>
			<!-- /Row -->
			<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
		
				<%@include file="/jsp/master/footer.jsp" %>
			</div>
		</div>
		
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	   <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
        <!-- /Main Content -->
         <script type="text/javascript">
         $("#testposthis").addClass('active-page');
          $('#timepicker1').timepicker();
          $('#timepicker2').timepicker();
        </script>
        <script>   
        $(document).ready(function(){
        	$("#datepicker, #datepicker1" ).datepicker({dateFormat:'dd-mm-yy'});
        	Testposthistoryget("testposthistorydailyscoope",2);
        	getCategoriesByName();
        	$("#fromdate, #todate" ).datepicker({dateFormat:'dd-mm-yy'});
        });
        </script>
        <script>
        $(document).on("click", ".activeModal", function () {
     var test = $(this).data('id');
     var testde = test.split("_");

 	$("#datepicker").val(testde[1]);
 	$('#timepicker1').val(testde[2]);
 	
 	$("#testid").val(testde[0]);
 	
 	
 
});
        $(document).on("click", ".expiryModal", function () {
        	 var test = $(this).data('id');
             var testde = test.split("_");

             $("#datepicker1").val(testde[1]);
         	$('#timepicker2').val(testde[2]);
          	$("#testid1").val(testde[0]);
       });

		   $( "#zonetype" ).change(function() {
		      var valof =  $( "#zonetype option:selected" ).val();
		      if(valof === "Previous Year"){
		    	  $("#testtype").prop("disabled",true);
		    	  $("#testtype").css("cursor","not-allowed");
		      }else{
		    	  $("#testtype").prop("disabled",false);
		    	  $("#testtype").css("cursor","pointer");
		      }
		     })
		        .trigger( "change" );
</script>