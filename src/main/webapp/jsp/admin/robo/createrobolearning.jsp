<%@page import="com.zomant.util.AppConstants"%>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
<%@include file="/jsp/master/default.jsp"%>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
</script>
<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->
		<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Robo learning</span></h6>
								</div>
							</div>
					</div>
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
												<label class="control-label" for="videourl">Screen</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <input type="text" id="screenName" name="salesMan"
													class="form-control" placeholder="Enter Screen Name"> -->
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="screenName" name="salesMan">
													
												</select>	
													
													
											</div>
										</div>
									</div>
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Message</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea  id="messagee" rows="3" cols="3" name="Message"
													class="form-control" placeholder="Enter Message"></textarea>
											</div>
										</div>
									</div>
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">No of Days</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="tel" id="noofdays" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" name="mobilenumber"
													class="form-control" placeholder="Enter No Of Days">
											
											</div>
										</div>
									</div>
									
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Layout</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <input type="text" id="layout" name="address_1"
													class="form-control" placeholder="Enter Layout Name"> -->
													
													<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="layout" name="address_1">
													
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Repeated time count</</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="repeatedtimecount" name="address_1"
													class="form-control" placeholder="Enter Repeated time count">
											</div>
										</div>
									</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group" style="display:flex;align-items:center">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Speech available</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <input type="text" id="speachavailabe" name="country"
													class="form-control" placeholder="Enter Speech available"> -->
									
									 <form>
									 	<input type="checkbox" name="spechavaible" id="checkbox1" style="zoom:2.0">
        										
       <!--  <input type="button" id="btn" value="Show Selected Value"> -->
    												</form>
									
								
											</div>
										</div>
									</div> 
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group" style="display:flex;align-items:center">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												
													<label class="control-label" for="videourl">Message Display</label>
											
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <input type="text" id="msgdisplay" name="country"
													class="form-control"  placeholder="Enter Message Display"> -->
												  <form>
        										<!-- 	<input type="radio" name="messagedispalychoice" value="yes"> Yes
        											<input type="radio" name="messagedispalychoice" value="no"> No -->
        											<input type="checkbox" name="msgdisplay" id="checkbox2" style="zoom:2.0">
       <!--  <input type="button" id="btn" value="Show Selected Value"> -->
    												</form>
												 
													
							
											</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="robostatus">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Status</</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="roboStatus" name="selValue3">
													
															<option value="true">Active</option>
													<option value="false">In-Active</option> 
												</select>
											</div>
										</div>
									</div>
									
									
									<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Status</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
													<input type="text" id="status" name="country"
													class="form-control" placeholder="Enter Status" >
													
											</div>
										</div>
									</div> -->
									
									
								
									<!-- <button class="btn btn-primary" onclick="livevideoadd()">Submit</button> -->

									<!-- <input type="button" id="submit" class="btn btn-primary text-white" onclick="livevideoadd()" value="Submit" />
  
   											<input type="button" id="update" class="btn btn-info text-white" value="Update" />  -->

								</div>


								<div class="row">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<input type="button" id="submit"
												class="btn btn-primary text-white" onclick="create_salesMan()"
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
	
<!-- <input type="hidden" id="Sales_zone" value="Sales_zone"/>
<input type="hidden" id="sales" value="sales"/>
	 -->
</div>
<!-- <input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/> -->
<!-- 
<input type="hidden" id="creationactive" value="Sales_zone"/>
	<input type="hidden" id="ulactive" value="sales"/>

 -->




<script src="<%=request.getContextPath()%>/assets/js/createrobolearning.js"></script>


<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/countries.js"></script>
<script>

/* var page = $("#Sales_zone").val();
$("#"+page).addClass('active');
var page1 = $("#sales").val();
$("#"+page1).addClass('collapse in');
 */
 /* 

populateCountries("country", "state"); */

//$("#salescreate").addClass('active-page');
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



