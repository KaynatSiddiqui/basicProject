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
							
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form>
										<div class="row">
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Your Valuable Feedback </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															   <textarea name="c" class="form-control" id="editor1" class="reply" placeholder="Enter text ..." style="height:300px;width:600px;"></textarea>
																
															</div>
														</div>	
													</div>
										</div>
										
										<div class="row mb-20">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
												<a href="<%=AppConstants.BASE_URL%>admin/feedbacks/feedbacks.jsp" class="btn  btn-danger">Back</a>
													<a onclick="feedbackReply()" id="replyaddd" class="btn  btn-primary">Add</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" id="creationactive" value="parentfeedback"/>
			</div>
			
		<%@include file="/jsp/master/footer.jsp" %>
		
	</div>
	<!-- /Main Content -->
	      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/parent.js"></script>  
	       <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
	       <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	       <script>
	       $( document ).ready( function() {
           $('#editor1').ckeditor();  
           var id = getParameterByName('id');
           $.ajax({
               url: base_url +'rest/feedback/v1/getAdminFeedback/'+id,
               type: "GET",
               dataType: "json",
               contentType: 'application/json',
               success: function(data) {
            	   if(data.status == true && data.message !=""){
            		   $("#editor1").html(data.message);
                       $("#replyaddd").hide();
            	   }
                 
               },
               error: function(data) {
            	   alert(data.responseJSON.errorMessage);
               }   
                   
                   
           });     
          });
	       
	       </script>
	      <!-- <script>
	      	$(document).ready(function(){
	      		feedbackReply();
	      	});
	      </script> -->