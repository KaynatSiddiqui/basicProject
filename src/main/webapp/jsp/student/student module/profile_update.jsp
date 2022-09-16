	<%@include file="/jsp/master/default.jsp" %>
<%@page import="com.zomant.util.AppConstants"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/profileupdate.css" rel="stylesheet">

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
							<div class="panel-heading mb-20">
								<div class="col-sm-5 pull-left">
									<!-- <h6 class="panel-title txt-dark"><span class="dashboard_heading">Update Profile</span></h6> -->
									<img src="<%=request.getContextPath()%>/assets/images/students/profile/profile.png" class=" img-responsive" style="max-width:40%;">
								</div>
								<div class="col-sm-4">
									<h6 class="panel-title txt-dark"><span class="profile_category_heading" id="stdcate"></span></h6>
								<input type="hidden" id="categiud" name="" class="form-control">
								<input type="hidden" id="stdid" name="" class="form-control">
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								
								
								<div class="row mt-10">
									<div class="col-sm-6 col-sm-offset-1">
										<div class="row">
											<div class="col-sm-12">
												<form>
													<div class="row">
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-user prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Name</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="text" id="stdname" name="example-email" class="form-control" placeholder="Enter stundent Name" >
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
																&nbsp;<label class="control-label mb-5 bold">Account ID</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" >
																<input type="text" id="studentid" name="example-email" class="form-control" placeholder="" readonly>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-mobile prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Phone</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="email" id="studentphone" name="example-email" class="form-control" placeholder="Enter Phone" >
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															 <i class="active fa fa-envelope prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Email ID</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<input type="email" id="stdemail" name="example-email" class="form-control" placeholder="Enter Email" >
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active 	fa fa-map-pin prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">State</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getallSelectedcities(this, event);" id="state">
																	
																	
																</select>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-map-marker prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">City</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" data-style="form-control btn-default btn-outline" id="city">
																
																
																</select>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-venus-mars prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Gender</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" data-style="form-control btn-default btn-outline" id="gender">
																	<option value="">--- Select Gender ---</option>
																	<option value="Male">Male</option>
																	<option value="Female">Female</option> 
																	<option value="Other">Other</option>
																</select>
															</div>
														</div>
												<div class="col-md-12 form-group">
													<div class="col-md-4">
														<i class="active fa fa-mobile prefix" style="color: red;"></i>
														&nbsp;<label class="control-label mb-5 bold">Category</label>
													</div>
													<div class="col-md-1">:</div>
													<div class="col-md-7">
														<input type="email" id="category" name="example-email"
															class="form-control" placeholder="Enter Category" disabled>
													</div>
												</div>
												<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-venus-mars prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">ExamTypes</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="onlyexamtype" onchange="getStandardsByName(this.value)">
																	<option>--- Select ---</option>
																</select>
															</div>
														</div>
														
														
												<div class="col-md-12 form-group">
													<div class="col-md-4">
														<i class="active fa fa-mobile prefix" style="color: red;"></i>
														&nbsp;<label class="control-label mb-5 bold">Standard</label>
													</div>
													<div class="col-md-1">:</div>
													<div class="col-md-7">
														<input type="email" id="stand" name="example-email"
															class="form-control" placeholder="" disabled>
													</div>
												</div>
											  <div class="col-md-12 form-group">
													<div class="col-md-4">
														<i class="active fa fa-mobile prefix" style="color: red;"></i>
														&nbsp;<label class="control-label mb-5 bold">Present Class</label>
													</div>
													<div class="col-md-1">:</div>
													<div class="col-md-7">
														<select class="selectpicker" data-style="form-control btn-default btn-outline"   id="standard">
																	
																	
													    </select>
													</div>
												</div>
												<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-venus-mars prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Branch</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" data-style="form-control btn-default btn-outline"   id="branch">
																	
																	
																</select>
															</div>
														</div>
															<div class="col-md-12 form-group">
															<div class="col-md-4">
															<i class="active fa fa-venus-mars prefix" style="color:red;"></i>
																&nbsp;<label class="control-label mb-5 bold">Caste</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<select class="selectpicker" data-style="form-control btn-default btn-outline" id="quota">
																
																
																</select>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<img id="img" height="150" src="/assets/images/students/default.png" class="student_profile_img">
										<input type="hidden" id="base64photo" value="">
										<input type="hidden" id="filezise" value="">
										<input type="hidden" id="compressedimage" value="">
										<label id="image">Upload Profile image
    <input type="file" id="pimage" >
    </label> 
									</div>
								</div>
								<div class="row mb-20">
									<div class="col-md-6 col-md-offset-5">
										<div class="button-list mt-25">
											<a href="<%= AppConstants.BASE_URL %>student/student module/profile.jsp" class="btn  btn-danger">Back</a>
											<!-- <a href="#" class="btn  btn-primary" id="updateProfileotp" onclick="updateProfile()">Save</a> -->
											<a href="#" class="btn  btn-primary" id="updateProfileotp">Save</a>
										</div>
									</div>
								</div>
								
							</div>
							
						</div>
					</div>
				</div>
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
			<%@include file="/jsp/student/student module/loginmodals.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	 <script>
	 function getbranches(){
 		var appenddata = "";

 		var catid = sessionStorage.getItem("catid");
 		var inputData = {
 				"categoryId":catid
 		}
 		var outputData = JSON.stringify(inputData);
 		$.ajax({
 			url:base_url+'rest/student/getCollegePredictionBranchess',
 			type:"POST",
 			dataType:"json",
 			contentType:'application/json',
 			data:outputData,
 			success:function(data){
 				console.log("Success");
 				for(var i = 0;i<data.length;i++){
 					var name = data[i].branchName;
					name = name.replace(/\s/g,'');
 					appenddata += "<option value="+name+">"+data[i].branchName+"</option>"
 				}

 				$("#branch").append('<option value="">---Select---</option>');
 				$("#branch").append(appenddata);
 				
 			},
 			error:function(data){
 				alert(data.responeJSON.errorMessage);
 			}
 		})
 		
 	}
	 $(document).ready(function(){
		 getAllStandardsAfterRegister();
		 getstatesall(function(){
			 
				
						 
					
			 var loginData = getLoginData();

	
			 var stid =loginData.studentid;
	
	$.ajax({
		url: base_url+'rest/student/v1/getstudentdetails/'+stid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
	
			   $("#stdcate").html(data[0].category);
			   $("#stdname").val(data[0].name);
	    	   $("#studentid").val(data[0].studentId);
	    	   $("#stdid").val(data[0].id);
	    	   if(data[0].mobilenumber != "" ){
	    		   $("#studentphone").val(data[0].mobilenumber);

	    	   }
	    	   if(data[0].emailId != "" ){
		    	   $("#stdemail").val(data[0].emailId);

	    	   }
	    	   
	    	   $("#state").val(data[0].stateId); 
				
	    	   $("#city").empty();
	    	   $("#city").append('<option value="">--- Select ---</option><option value="'+data[0].cityId+'">'+data[0].city+'</option>');
	    	   $("#city").val(data[0].cityId); 
	    	   $("#category").val(data[0].category);

	    	   var option = "";
	    	   var exm = data[0].examTypeIds;
	    	   var exmname = data[0].examTypeNames;
			    for(var i=0; i<exm.length; i++){
			    	option += "<option style='pointer-events:none' value="+exm[i]+" selected>"+exmname[i]+"</option>";
				}
			    $("#onlyexamtype").html(option);
	    	   $("#stand").val(data[0].standardName);
	    	   $("#standard").val(data[0].presentClass);

	    	   var branchselected = data[0].branch;
			   branchselected = branchselected.replace(/\s/g,'');
			   $("#branch").val(branchselected); 
	    	   

	    	   $("#quota").val(data[0].caste);
	 
	    	   
	    	   
	    	   if(data[0].photo !=""){
	    		   $("#img").attr("src", data[0].photo);
			    	
				}else{
					 $("#img").attr("src", "/assets/images/students/default.png");
				}
	    	 
	    	   $("#gender").val(data[0].gender); 
	    	
			    $('.selectpicker').selectpicker('refresh');
		},
		error:function(data){
			alert("student details not founds");
		}
	});
		 })
		 getbranches();
		 getquotas();
		 })
	
			
	 document.getElementById("pimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		   	document.getElementById("filezise").value = Math.round((this.files[0].size / 1024));
		    var FR= new FileReader()
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src       = e.target.result;
		      document.getElementById("base64photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		 
		  }
		  FR.addEventListener("load", function(e) {
		     var filezise = $("#filezise").val();
			  var photo = document.getElementById("base64photo").value;
	if(filezise > 500){
		
			 
			 resizeBase64Img(photo, 150, 150).then(function(newImg){
		 $("#img").attr("src",newImg);
		 $("#compressedimage").val(newImg);
	   
	});  
		  }
	else{
		$("#compressedimage").val(photo);
	}
		    }); 
		}
	 $(".close").click(function(){
		 $("#overlayemotp, #overlayembody").css("display","none");
		 $("#overlayOTP, #overlaybody").css("display","none");
		  $("#overlayeOTP, #overlayebody").css("display","none");
		  $('#overlayembody,#overlaybody,#overlayebody').find("#genrat,#genratemail").val("");
	 });
	 
	 
	  
 
	

	 </script>