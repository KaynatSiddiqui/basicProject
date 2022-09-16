		
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %><!-- Main Content -->
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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Notifications </span><span class="main_heading_theme_color">    Preview</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							
							
							<div class="row">
								<div class="col-sm-12">
									
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Notification Name</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="notificationname">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Summery</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="summary">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Notification Image</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="notificationimage">
																<img id='img' height='150' src="" class='student_profile_img'>
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Or text</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="text">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Website Link </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="websitelink">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Android Link</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="androidlink">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">IOS Link</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="ioslink">
																
															</div>
														</div>	
													</div>
										
											<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Customer Type</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="customertype">
																
															</div>
														</div>	
													</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Account Type</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="accountype">
																
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Expiry</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="expiry">
																
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Category</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="category">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Standard</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="standard">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Exam Type</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="examtype">
																
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">State</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="state">
																
															</div>
														</div>	
													</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">City</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12" id="city">
																
															</div>
														</div>	
													</div>
													 -->
													
													
										</div>
									<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_created.jsp" class="btn  btn-info">Back</a>
													
												</div>
											</div>
										</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				<!-- /Row -->
    </div>
	<input type="hidden" id="creationactive" value="notifications"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>

	<!-- /Main Content -->
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
	
	    
	      <script>
	      $(document).ready(function(){
	    	  
	    	  var id = getParameterByName('id');
	    		$.ajax({
	    			url: base_url+'rest/admin/v1/previewnotification/'+id,
	    			type:"GET",
	    			dataType:"json",
	    			contentType:'application/json',
	    			success:function(data){
	    				if(data[0].notificationImage !=""){
							var image = data[0].notificationImage;
						}else{
							var image="/assets/images/students/default.png";
						}
	    				$("#notificationname").html(data[0].notificationName);
	    				  $("#summary").html(data[0].summery);
	    				  $("#img").attr("src", image);
	    		    	  
	    		    	   $("#text").html(data[0].notificationText);
	    		    	   $("#websitelink").html(data[0].websiteLink);
	    		    	   $("#androidlink").html(data[0].androidLink)
	    					  $("#ioslink").html(data[0].iosLink);
	    			    	  
	    		    	   
	    		      },
	    		  	error:function(data){
	    		  	  alert(data.responseJSON.errorMessage);
	    			}
	    	     });
	    	  
	      });
	      </script>