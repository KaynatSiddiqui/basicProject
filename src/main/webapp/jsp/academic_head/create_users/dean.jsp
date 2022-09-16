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
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						
					</div>
				</div>
				<!-- /Title -->
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">User </span><span class="main_heading_theme_color">Creation</span></h6>
							</div>
							<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
							<div class="col-sm-12">
								<?php echo $sub_menu;?>
							</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<!--  <form method="post" >-->
										<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Category
													Image Upload </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"> <input type="hidden"
													id="base62photo" value=""> <label id="image">Upload
													Profile image <input type="file" id="eimage">
												</label>

											</div>
										</div>
									</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >First Name </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="firstName" name="" class="form-control" placeholder="Enter First Name">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Last Name </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="lastName" name="example-email" class="form-control" placeholder="Enter Last Name">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Mobile Number </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="mobile" name="example-email" class="form-control" placeholder="Enter Mobile Number" maxlength="15">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" for="example-email">Email Id </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="email" id="emailq" name="example-email" class="form-control" placeholder="Enter Email Id">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" >Gender</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="gender">
															<option value="">---Select---</option>
															<option value="male">MALE</option>
															<option value="female">FEMALE</option>
														</select>
													</div>
												</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label">Designation</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="desgination" name="example-email" class="form-control" placeholder="Enter Designation">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Qualification</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="qualification" name="example-email" class="form-control" placeholder="Enter Qualification">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Others</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<textarea id="others" name="others" class="form-control"></textarea>
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Pin Number</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="pin" name="pin" class="form-control" placeholder="Enter Pin Number">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Re-Pin Number </label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="repin" name="repin" class="form-control" placeholder="Enter Re Pin Number">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Password</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="password" id="pwd" name="pwd" class="form-control" placeholder="Enter Password">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Re-password</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="password" id="confirmpwd" name="example-email" class="form-control" placeholder="Enter Re-password">
												</div>
											</div>	
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="row form-group">
												<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
													<label class="control-label" >Dean Id</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="deanid" name="example-email" class="form-control" placeholder="Enter DeanId">
												</div>
											</div>	
										</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<input type="submit" class="btn  btn-primary" id="dean_edit" value="Add" onclick="registerUsers()">
												</div>
											</div>
										</div>
									<!-- </form>-->
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				<!-- /Row -->
				</div>
				<input type="hidden" id="creationactive" value="adduseractive"/>
		<input type="hidden" id="ulactive" value="users_dr"/>
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
		
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	  <script>
	  $("#deanactive").addClass('active-page');
	$(document).ready(function(){
		
		
		var deanId =getParameterByName('id');
		
		if(deanId !== "" && deanId !== null){
			/* $("#mobile").prop("disabled",true); */
			var inputData = {
					usertype: "dean",
					deanid: deanId	
			};
			
			inputData = JSON.stringify(inputData);
			$.ajax({
				type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url + 'rest/academichead/v1/previewdean',
				  data:inputData,
				  success: function(data){
					  if(data[0].photo == ""  || data[0].photo == null ){
						  var image="/assets/images/students/default.png";
				 
					  }
					  else{
						  var image = data[0].photo;
					  }
					  $("#firstName").val(data[0].firstaname);
					  $("#lastName").val(data[0].lastname);
					  $("#emailq").val(data[0].email);
					  $("#mobile").val(data[0].mobilenumber);
					  $("#desgination").val(data[0].designation);
					  $("#qualification").val(data[0].qualification);
					  $("#others").val(data[0].other);
					  $("#pin").val(data[0].pinnumber);
					  $("#repin").val(data[0].pinnumber);
					  $("#gender").val(data[0].gender);
					//$("#gender option[value='"+data[0].gender+"']").attr('selected',true);
					  $("#img").attr("src", image);
					  $("#pwd").val(data[0].password);
					  $("#confirmpwd").val(data[0].password);
					  $("#deanid").val(data[0].deanid);
					  $('.selectpicker').selectpicker('refresh');
				  },
				  error: function(){
					  alert("Dean not found!");
					  
					  }
					  
				
		});
		}
		
		
	});
	</script>
	 <script>
 document.getElementById("eimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src       = e.target.result;
		      document.getElementById("base62photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
		}
	 </script>