<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
	
	<style>
#image{
    padding: 10px;
    background: #b10058; 
    
    color: #fff;
     }



input[type="file"] {
    display: none;
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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Notifications </span><span class="main_heading_theme_color"> Create New</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Published</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_created.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Created</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_add.jsp" class="btn btn-danger">Create New</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
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
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<form>
												<div class="row">
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Notification Name </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<input type="email" id="notificationame" name="example-email" class="form-control" placeholder="Enter Notification Name">
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Summary </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<input type="email" id="summary" name="example-email" class="form-control" placeholder="Enter Summary">
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Notification Image </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<div class="form-group mb-30">
																	<!-- <div class="fileinput fileinput-new input-group" data-provides="fileinput">
																		<div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
																		<span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>
																		<input type="file" name="...">
																		</span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a> 
																	</div> -->
																	<img id="img" height="150" src="/assets/images/students/default.png" class="student_profile_img">
										<input type="hidden" id="base64photo" value="">
										<label id="image">Upload  image
    <input type="file" id="pimage" >
																</div>
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Or Text </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<textarea class="textarea_editor form-control" rows="15" id="notitext" placeholder="Enter text ..."></textarea>
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Notification Type </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<select class="selectpicker form-control"  id="notitype" >
																   <option>--- Select Zone---</option>
																<option><%= AppConstants.APPLICATION %></option>
																<option><%= AppConstants.PROMOTIONAL %></option>
																</select>
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Website Link </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<input type="email" id="weblink" name="example-email" class="form-control" placeholder="Enter Website Link">
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Android Link </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<input type="email" id="android" name="example-email" class="form-control" placeholder="Enter Android Link">
															</div>
														</div>	
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">IOS Link </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<input type="email" id="ios" name="example-email" class="form-control" placeholder="Enter IOS Link">
															</div>
														</div>	
													</div>
												</div>
												<div class="row">
													<div class="col-md-6 col-md-offset-4">
														<div class="button-list mt-25">
															<a href="#" onclick="notificationadd()" class="btn btn-primary">Submit</a>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
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
	     
	      <script src="<%=request.getContextPath()%>/assets/js/notifications.js"></script>
	      <script>
	      document.getElementById("pimage").addEventListener("change", readFile);
	 	 function readFile() {
	 		  
	 		  if (this.files && this.files[0]) {
	 		    
	 		    var FR= new FileReader();
	 		    
	 		    FR.addEventListener("load", function(e) {
	 		      document.getElementById("img").src       = e.target.result;
	 		      //document.getElementById("base64photo").value = e.target.result;
	 		    }); 
	 		    
	 		    FR.readAsDataURL( this.files[0] );
	 		  }
	 		  
	 		}
	      </script>