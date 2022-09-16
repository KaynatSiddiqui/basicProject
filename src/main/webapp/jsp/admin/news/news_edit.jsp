<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
<style>
.setting {
	font-size: 24px;
	font-weight: bold;
	color: darkblue;
}

#image {
	padding: 10px;
	background: #b10058;
	color: #fff;
}

input[type="file"] {
	display: none;
}
</style>
<div class="page-wrapper">
	<div class="container-fluid">
		<input type="hidden" id="studenactive" value="studentfeedback" /> <input
			type="hidden" id="greyactive"
			value="<%=request.getContextPath()%>/assets/images/students/feedback/feedbackwhite.svg" />

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->
		<div>

			<input type="hidden" id="studentid" value=""> <input
				type="hidden" id="stdname" value="">
		</div>
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading">
						<div class="col-sm-6 col-xs-6 pull-left left">
							<a href="#" class="left inline-block  mr-15"> <span
								class="setting">Edit News</span>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="row" style="margin-top: 50px">
					<div class="col-sm-12 ">
							<form>
								<div class="row">
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-122">
                                     <div class="row form-group">
									<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
										<label class="control-label" for="example-email">Examtypes
										</label>
									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
									<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
										<select class="selectpicker" name="examtypeget" data-style="form-control btn-default btn-outline" id="examtype">
											
										</select>
									</div>
								</div>
								</div>
								
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">News Heading</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="newsheading" class="form-control">
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">News Description</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea name="description" class="ckedit form-control"
													id="newsdescription" style="height: 300px; width: 600px;"></textarea>
											</div>
										</div>
									</div>
									
									
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                       <label class="control-label" for="example-email"> Upload file </label>
                                               </div>
                                              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                             <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <img id="img" height="150" src="http://via.placeholder.com/150x150" class="student_profile_img"> 
        <input type="hidden" id="base67photos" value="">
         <label id="image">Upload Profile image <input type="file" id="feedbacksimage"></label>							
         		</div>
									</div>
									</div>
									
							
								<div class="row mb-20">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<a href="#" onclick="updatenews()" class="btn  btn-primary">Update</a>
										</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

<input type="hidden" id="creationactive" value="newsactive"/>
		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>

<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<script>
	       $( document ).ready( function() {
              $('#newsdescription').ckeditor();  
              
            	     editblogbyid(); 
	    		  
              
		
          });
	       
	       document.getElementById("feedbacksimage").addEventListener("change", readFile);
	       function readFile() {
	        
	        if (this.files && this.files[0]) {
	          
	          var FR= new FileReader();
	          
	          FR.addEventListener("load", function(e) {
	            document.getElementById("img").src       = e.target.result;
	            document.getElementById("base67photos").value = e.target.result;
	          }); 
	          
	          FR.readAsDataURL( this.files[0] );
	        }
	        
	       }
	     </script>
