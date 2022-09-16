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
								class="setting">Examtypes Creation</span>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="row" style="margin-top: 50px">
						<div class="col-sm-6 col-sm-offset-3">
							<form>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Examtype</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="examtypename" class="form-control">
											</div>
										</div>
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Examtype
													Description </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea name="description" class="ckedit form-control"
													id="description" style="height: 300px; width: 600px;"></textarea>
											</div>
										</div>
									</div>
							
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


									<div class="row form-group">
										<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">
												Examtype Image </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
											<img id="img" height="150"
												src="http://via.placeholder.com/150x150"
												class="examtype_profile"> <input type="hidden"
												id="base67photos" value=""> <label id="image">Upload
												Profile image <input type="file" id="examtypeimage">
											</label>

										</div>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


									<div class="row form-group">
										<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">
												Examtype Hover Image </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
											<img id="img1" height="150"
												src="http://via.placeholder.com/150x150"
												class="examtypehover_profile"> <input type="hidden"
												id="base63photos" value=""> <label id="image">Upload
												Profile image <input type="file" id="examtypehoverimage">
											</label>

										</div>
									</div>
								</div>
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


									<div class="row form-group">
										<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">
												Examtype Main Image </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
											<img id="img2" height="150"
												src="http://via.placeholder.com/150x150"
												class="examtypehover_profile"> <input type="hidden"
												id="base56photos" value=""> <label id="image">Upload
												Profile image <input type="file" id="examtypemainimage">
											</label>

										</div>
									</div>
								</div>
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Examtype
													Definition </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea name="description" class="ckedit form-control"
													id="definition" style="height: 300px; width: 600px;"></textarea>
											</div>
										</div>
									</div>
								<div class="row mb-20">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<a href="#" onclick="creatingexamtypes()" class="btn  btn-primary">Create</a>
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


		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>

<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/examcreation.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<script>
	       $( document ).ready( function() {
           $('#description').ckeditor();  
    
          });
	     </script>
<script>
	       $( document ).ready( function() {
           $('#definition').ckeditor();  
    
          });
	     </script>
<script>
			document.getElementById("examtypeimage").addEventListener("change", readFile);
			function readFile() {
			 
			 if (this.files && this.files[0]) {
			   
			   var FR= new FileReader();
			   
			   FR.addEventListener("load", function(e) {
			     document.getElementById("img").src = e.target.result;
			     document.getElementById("base67photos").value = e.target.result;
			   }); 
			   
			   FR.readAsDataURL( this.files[0] );
			 }
			 
			}
		</script>

       <script>
			document.getElementById("examtypehoverimage").addEventListener("change", readFile);
			function readFile() {
			 
			 if (this.files && this.files[0]) {
			   
			   var FR= new FileReader();
			   
			   FR.addEventListener("load", function(e) {
			     document.getElementById("img1").src = e.target.result;
			     document.getElementById("base63photos").value = e.target.result;
			   }); 
			   
			   FR.readAsDataURL( this.files[0] );
			 }
			 
			}
		</script>
		<script>
			document.getElementById("examtypemainimage").addEventListener("change", readFile);
			function readFile() {
			 
			 if (this.files && this.files[0]) {
			   
			   var FR= new FileReader();
			   
			   FR.addEventListener("load", function(e) {
			     document.getElementById("img2").src = e.target.result;
			     document.getElementById("base56photos").value = e.target.result;
			   }); 
			   
			   FR.readAsDataURL( this.files[0] );
			 }
			 
			}
		</script>