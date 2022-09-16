<%@page import="com.zomant.util.AppConstants"%>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
<%@include file="/jsp/master/default.jsp"%>
<!-- <link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css'>
 -->
 
<!--  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
  -->
<style>
/* #image {
	padding: 10px;
	background: #b10058;
	color: #fff;
}

input[type="file"] {
	display: none;
} */
/* img {
	max-width: 180px;
} */
</style>

<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">

					<hr class="light-grey-hr mb-10">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<form>
								<div class="row">
				
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Faculty Name</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="faculty_name" name="salesMan"
													class="form-control" placeholder="Enter Faculty Name">
											</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Mobile Number </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="tel" id="mobilenumber" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" name="mobilenumber"
													class="form-control" placeholder="Enter Mobile Number">
											
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Password</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="password" name="password"
													class="form-control" placeholder="Enter Password">
											</div>
										</div>
									</div>
									
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Address- 1 </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="address_1" name="address_1"
													class="form-control" placeholder="Enter Address - 1">
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Address- 2 </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="address_2" name="address_1"
													class="form-control" placeholder="Enter address - 2 ">
											</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Bank Details</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea  id="details" rows="3" cols="3" name="details"
													class="form-control" placeholder="Enter Details"></textarea>
											</div>
										</div>
									</div>
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Country </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												 <!-- <select name="country"
									class="form-control"
									 id="country">
									<option value="">Select Country</option>
								</select> -->
								<input type="text" id="country" name="country"
													class="form-control" value="India" disabled>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">State </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<select name="state"class="form-control" id="state" ></select>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">City </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <input type="text" id="city" name="city"
													class="form-control" placeholder="Enter City"> -->
												
												<select name="city"
													class="form-control"
												 id="city"></select>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Institute</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
											<input type="text" id="institute" name="value"
													class="form-control" placeholder="Enter Institute">		
									</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Experience</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
											<input type="number" id="experience" name="value"
													class="form-control" placeholder="Enter Years Of Experience">		
									</div>
										</div>
									</div>
									
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Select Subject</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select name="sub"
													class="form-control"
												 id="selectsub">
													
								</select>
											</div>
										</div>
									</div>
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Faculty Title</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
											<!-- <input type="text" id="facultyTitle" name="value"
													class="form-control" placeholder="Enter the  Description"> -->
														
											<textarea  id="facultyTitle" rows="3" cols="3" name="value"
													class="form-control" placeholder="Enter the  Description"></textarea>		
													
														
									</div>
										</div>
									</div>
									
									
								<!-- 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Code</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="code" name="code"
													class="form-control" placeholder="Enter Code">
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Group</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="group" name="group"
													class="form-control" placeholder="Enter Group">
											</div>
										</div>
									</div> -->
									
									
								
									
									
									
								</div>


								<div class="row">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<input type="button" id="submit"
												class="btn btn-primary text-white" onclick="create_faculty()"
												value="Submit" /> 
											<input type="button" id="update"
												class="btn btn-info text-white" value="Update" />
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
					<hr class="light-grey-hr mt-30 mb-10">
				</div>
			</div>
		</div>
		<!-- /Row -->
	</div>
</div>
<!-- <input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/> -->


<input type="hidden" id="creationactive" value="faculty_zone"/>
<input type="hidden" id="ulactive" value="faculty"/>








<script src="<%=request.getContextPath()%>/assets/js/create_faculty.js"></script>


<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/countries.js"></script>
<script>
populateCountries("country", "state");
$("#facultycreate").addClass('active-page');

$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
		
		</script>
<!-- <script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js'></script>
<script
	src='https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js'></script>
 -->
 
 
 </div>



<script>
	/* document.getElementById("pimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src       = e.target.result;
		      document.getElementById("base60photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
	
	 } 
	 
	 
	 window.addEventListener('load', function() {
		  document.querySelector('input[type="file"]').addEventListener('change', function() {
		      if (this.files && this.files[0]) {
		          var img = document.querySelector('img');  // $('img')[0]
		          img.src = URL.createObjectURL(this.files[0]); // set src to blob url
		          img.onload = imageIsLoaded;
		      }
		  });
		});

		function imageIsLoaded() { 
		  this.src  // blob url
		  // update width and height ...
		}
	
	 */

	

	/* $(function() {

		$('#datetimepicker3').datetimepicker({
			format : 'LT'
		});
	}); */
	
	/* $(document).ready(function ($) {
	    $('#TheTime').datetimepicker({
	        format: 'hh:mm a'
	    });                        
	}); */
	
</script>



