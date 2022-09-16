<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>


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
								<div class="col-sm-4 pull-left mb-10 mt-10">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Preview</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
									<hr class="light-grey-hr mb-10">
							<div class="row m-10">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Photo </label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="photo">
										
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">First Name</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="frstname">
										
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Last Name</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="lastname">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Mobile Number</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="mobnum">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Email</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="email">
											
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Gender</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="gender">
											  
										</div>
									</div>	
								</div>
								
								
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Pin Number</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="pinnumber">
											  
										</div>
									</div>	
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Qualification</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="qualification">
											
										</div>
									</div>	
								</div>
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Status</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="status">
											
										</div>
									</div>	
								</div>
								
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="row form-group">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
											<label class="control-label" for="example-email">Id</label>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="id">
											  
										</div>
									</div>	
								</div>
							</div>
							
							<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<input type="submit" class="btn  btn-primary" onclick="previewBack();" value="back" ">
												</div>
											</div>
										</div>
						</div>
				   </div>
			 </div>
	</div>
</div>
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
 <script>
 $(document).ready(function() {
		
		var preview = getParameterByName("id");
	
		var usertype = getParameterByName("usertype");
		
		//categories default get service in table  in admin

		function getPreview(){
			
			var appenddata ="";
			
			
			if(usertype === "dean"){
				
				//dean preview 
				var inputData = {
				"usertype":usertype,
				"deanid":preview
				};
			inputData = JSON.stringify(inputData);
				$.ajax({
					type: "POST",
					  dataType: "json",
					  contentType: 'application/json', 
					  url: base_url+'rest/academichead/v1/previewdean',
					  data:inputData,
					  success: function(data){
						  if(data[0].photo == "" || data[0].photo == null){
							     appenddata += "<tr id='deancopy_row"+data[0].id+"'><td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>"
							     $("#photo").html(appenddata);
							    }else{
							  appenddata += "<tr id='deancopy_row"+data[0].id+"'><td><img src="+data[0].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";    
							  $("#photo").html(appenddata);
							    }
						$("#frstname").html(data[0].firstaname);
						$("#lastname").html(data[0].lastname);
						$("#mobnum").html(data[0].mobilenumber);
						$("#email").html(data[0].email);
						$("#gender").html(data[0].gender)
						$("#pinnumber").html(data[0].pinnumber);
						$("#qualification").html(data[0].qualification);
						
						$("#status").html(data[0].status);
						$("#id").html(data[0].deanid);
					  },
					  error: function (){
						  alert("Preview Data not found!");
					  }
					  
				});
			} else if(usertype === "sme"){
				
				//sme preview ajax
					var inputData = {
				"usertype":usertype,
				"smeid":preview
				};
			inputData = JSON.stringify(inputData);
				$.ajax({
					type: "POST",
					  dataType: "json",
					  contentType: 'application/json', 
					  url: base_url+'rest/academichead/v1/previewsme',
					  data:inputData,
					  success: function(data){
						  if(data[0].photo == "" || data[0].photo == null){
							     appenddata += "<tr id='deancopy_row"+data[0].id+"'><td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>"
							     $("#photo").html(appenddata);   
						  }else{
							  appenddata += "<tr id='deancopy_row"+data[0].id+"'><td><img src="+data[0].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";    
							  $("#photo").html(appenddata);   
						  } 
						$("#frstname").html(data[0].firstaname);
						$("#lastname").html(data[0].lastname);
						$("#mobnum").html(data[0].mobilenumber);
						$("#email").html(data[0].email);
						$("#gender").html(data[0].gender)
						$("#pinnumber").html(data[0].pinnumber);
						$("#qualification").html(data[0].qualification);
						
						$("#status").html(data[0].status);
						$("#id").html(data[0].smeid);
					  },
					  error: function (){
						  alert("Preview Data not found!");
					  }
					  
				});
				
				
			}
			
		}
		
		getPreview();
		});
</script>
