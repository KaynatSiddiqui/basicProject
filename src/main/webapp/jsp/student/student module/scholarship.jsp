<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/assets/css/student/css/subscriptionstu/subscriptionstu.css">
<style>
.card_phonecard {
	background: white;
	/* padding: 35px; */
	margin: 20px 0;
	width: 560px;
	
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.sendata {
	background: #FFA500;
}

.sendata:hover {
	background: #32CD32;
	color: white;
}


	#card {
  position: relative;
 /*  top: 110px; */
  width: 320px;
  display: block;
  margin: auto;
  text-align: center;
  font-family: 'Source Sans Pro', sans-serif;
}

#upper-side {
  padding: 2em;
  background-color: #8BC34A;
  display: block;
  color: #fff;
  border-top-right-radius: 8px;
  border-top-left-radius: 8px;
}

#checkmark {
  font-weight: lighter;
  fill: #fff;
  margin: -3.5em auto auto 20px;
}

#status {
  font-weight: lighter;
  text-transform: uppercase;
  letter-spacing: 2px;
  font-size: 1em;
  margin-top: -.2em;
  margin-bottom: 0;
}

#lower-side {
  padding: 2em 2em 5em 2em;
  background: #fff;
  display: block;
  border-bottom-right-radius: 8px;
  border-bottom-left-radius: 8px;
}

#message {
  margin-top: -.5em;
  color: #757575;
  letter-spacing: 1px;
}

#contBtn {
  position: relative;
  top: 1.5em;
  text-decoration: none;
  background: #8bc34a;
  color: #fff;
  margin: auto;
  padding: .8em 3em;
  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  border-radius: 25px;
  -webkit-transition: all .4s ease;
		-moz-transition: all .4s ease;
		-o-transition: all .4s ease;
		transition: all .4s ease;
}

#contBtn:hover {
  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  -webkit-transition: all .4s ease;
		-moz-transition: all .4s ease;
		-o-transition: all .4s ease;
		transition: all .4s ease;
}
.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus {
    background-color: #FFA500;
    /* border: 1px solid #3B7808; */
}
.alertify {
    background: #FFF;
    border: 10px solid #FFA500;
}
.example-open 
.modal-backdrop 
{background-color:rgba(0,0,0,0.6);}

body{
	background-color: #282828;
}
</style>

<div class="page-wrapper"  style="background-color: #282828;">
<div class="container">
<div class="row">
			<div class="col-lg-12">
				<div style="display: flex; justify-content: center">
					<div class="card card_phonecard">
						<div class="card-header" style="padding:20px;background-image: linear-gradient( 45deg , #FC4A1A, #F7B733);margin: 0px 0px 0px;">
    						<h2 class="text-center" style="color:white;">100 Crores Mega scholarship</h2>
 						 </div>
						<form style="padding: 30px 30px 0px;" >
							<div class="row" id="profile">

								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Name</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input type="text" id="nameinfo" style="background: white"class="form-control" disabled>
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Phone Number</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input type="text" id="phone" style="background: white"
												class="form-control" disabled>
										</div>
									</div>
								</div>


								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Standard</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<select class="form-control" id="standard" required>
												<option value="">Select Standard</option>
												<option value="10th">10<sup>th</sup></option>
												<option value="11th">11<sup>th</sup></option>
												<option value="12th">12<sup>th</sup></option>
												<option value="12+">12<sup>+</sup></option>
											</select>
											
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">School / College
											Name</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="School/ College Name" type="text"
										id="SchoolCollege"class="form-control">
										</div>
									</div>
								</div>

								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">10<sup>th</sup>% or CGPA</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="" type="text" id="tenth"
												class="form-control">
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">11<sup>th</sup>% or CGPA</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="" type="text" id="levnth"
												class="form-control">
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">City</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<textarea rows="3" cols="3" id="city" class="form-control" placeholder="Enter City"></textarea>
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Parent Number</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7" id="stdname">
										<div class="form-group">
											<input  type="tel" id="parentnumber"
												class="form-control" placeholder="Mobile number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />										</div>
									</div>
								</div>
								

							</div>
						</form>
						
						<div class="text-center">
									<label class="control-label mb-5 bold text-center">* Terms &
										Conditions apply</label>
						</div>

						<div class="form-group" style="display:flex; justify-content:center">
							<button class="btn text-white" onclick="create_scholshipInfo()" id="submited"
								 style="background-image: linear-gradient( 45deg , #FC4A1A, #F7B733);width: 400px;font-weight:bold">Submit</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" style="display:flex; justify-content:center">
    <div class="modal-content" style="width: 320px;">
      
      <div class="">
      <div id='card' class="animated fadeIn">
  <div id='upper-side'>
    <?xml version="1.0" encoding="utf-8"?>
      <!-- Generator: Adobe Illustrator 17.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
      <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
      <svg version="1.1" id="checkmark" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" xml:space="preserve">
        <path d="M131.583,92.152l-0.026-0.041c-0.713-1.118-2.197-1.447-3.316-0.734l-31.782,20.257l-4.74-12.65
	c-0.483-1.29-1.882-1.958-3.124-1.493l-0.045,0.017c-1.242,0.465-1.857,1.888-1.374,3.178l5.763,15.382
	c0.131,0.351,0.334,0.65,0.579,0.898c0.028,0.029,0.06,0.052,0.089,0.08c0.08,0.073,0.159,0.147,0.246,0.209
	c0.071,0.051,0.147,0.091,0.222,0.133c0.058,0.033,0.115,0.069,0.175,0.097c0.081,0.037,0.165,0.063,0.249,0.091
	c0.065,0.022,0.128,0.047,0.195,0.063c0.079,0.019,0.159,0.026,0.239,0.037c0.074,0.01,0.147,0.024,0.221,0.027
	c0.097,0.004,0.194-0.006,0.292-0.014c0.055-0.005,0.109-0.003,0.163-0.012c0.323-0.048,0.641-0.16,0.933-0.346l34.305-21.865
	C131.967,94.755,132.296,93.271,131.583,92.152z" />
        <circle fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="10" cx="109.486" cy="104.353" r="32.53" />
      </svg>
      <h3 id='status'>
      Success
    </h3>
  </div>
  <div id='lower-side'>
  	<h4 style="padding: 0px 0px 20px;font-size: 45px;line-height: 30px;#757575;">
     Thanks !
    </h4>
    <p id='message'>
     Results will be Announced in 20 days. 
    </p>
    <a href="#" id="contBtn" onclick="sch()">Ok</a>
  </div>
</div>
      </div>
     
    </div>
  </div>
</div>
	
	
	
	
	
	<%@include file="/jsp/master/footer.jsp" %>
</div>

 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/subscriptionstudent.js"></script>
<script>


var LoginData = getLoginData();
var sId = LoginData.studentid;
var name = LoginData.name;
	/* console.log(name) */
	$("#nameinfo").val(name);
var mobilenumber=sessionStorage.getItem("mobilenumber");
$("#phone").val(mobilenumber);
/* console.log(mobilenumber) */
function create_scholshipInfo(){

	
	var name=$("#nameinfo").val();
	var phone= $("#phone").val();
	var standard= $("#standard").val();
	if(standard =="" || standard==null || standard==undefined){
		alert("Please select Standard");
		return false;
	}
	
	var SchoolCollege= $("#SchoolCollege").val();
	var tenth= $("#tenth").val();
	var levnth=$("#levnth").val();
	var city= $("#city").val();
	var parentnumber= $("#parentnumber").val();
	 $("#submited").empty("");
	$("#submited").html("Processing.....");	
	var input ={
		"name":name,
		"mobileNumber":phone,
		"standard":standard,
		"college":SchoolCollege,
		"percentage10":tenth,
		"percentage11":levnth,
		"city":city,
		"parentMobile":parentnumber
		    
	}

	console.log(input)
	var output =JSON.stringify(input);

	$.ajax({
	  url : base_url+"rest/scholler/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	 
		  
		 $('#exampleModalCenter').modal(); 
		
		/* $('#exampleModalCenter').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
}) */
		
		 /*  $("body").modal({
			  backdrop: true	
			}); */ 
			/*  $("#exampleModalCenter").click(function(){ */
				   
				  /* }); */
	 	console.log(data)
	window.setTimeout(function(){
	 	window.location = base_url + "jsp/student/student module/studenthome.jsp";
	  }, 6000);	 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}

function sch(){
	
	window.location = base_url + "jsp/student/student module/studenthome.jsp";
}


</script>
