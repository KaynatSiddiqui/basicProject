 <!--  <!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description"
	content="Ranksheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/assets/landing/favicons/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="<%=request.getContextPath()%>
        /assets/landing/favicons/180x180.png">
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/landing/favicons/180x180.png">
<meta name="theme-color" content="#a64bf4">

<title>RankSheet</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/landing/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/landing/css/normalize.min.css">
<link href="<%=request.getContextPath()%>/assets/landing/css/md.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/landing/css/bootstrap.min.css">


<link href="<%=request.getContextPath()%>/assets/landing/css/style.css"
	rel="stylesheet">


<link
	href="<%=request.getContextPath()%>/assets/landing/css/responsive.css"
	rel="stylesheet">

 <style>

  h5{
 font-size: 18px;
    line-height: 20px;
    text-transform: capitalize;
  
 }
 
 </style>
 <body>-->
	<!-- Preloader Start -->
	<!-- <div id="preloader">
        <div class="colorlib-load"></div>
        </div> -->


<div class="col-sm-10 col-sm-offset-2"  >
<form>
<div class="form-group row">

<div class="col-md-9">
 <h5>*please upload your Aadhar card photo copy and Admit card photo copy on or before your exam</h5>
</div>
<div class="col-md-3">
<a href="/jsp/student/student module/jeemainterms.jsp" style="color:blue; float: right;"><u>Terms &amp; Conditions for Money Back</u></a>
</div>
</div>

<div class="form-group row">
    <label for="adhar" class="col-sm-2 col-form-label">Aadhar:</label>
   <!--  <div class="col-sm-6">
    <label id="image" >Upload Profile image
    <input type="file" id="pimage"  id="aadharid">
    </label>
      <input type="adhar" class="form-control"  id="aadharid">
    </div> -->
   
   
   <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												
												
												<img id="img1" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"><label id="aadhar">Upload
													Aadhar image <input type="file" id="pimage1"  >
												</label>

											</div>
  </div>
  <div class="form-group row">
    <label for="Admitcard" class="col-sm-2 col-form-label">Admit Card:</label>
  
   <!--  <div class="col-sm-6">
    <label id="image">Upload Profile image
    <input type="file" id="pimage" >
     <input type="Admit Card" class="form-control" id="Admitcard">
    </label>
      </div> -->
       <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img2" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img">  <label id="aadhar">Upload
													Admit card image <input type="file" id="pimage2"  >
												</label>

											</div>
											
											<!-- <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img1" height="35"
													src="http://via.placeholder.com/150x150"
													class="student_pro_img"> <label id="image">Upload
												   Icon <input type="file" id="chapicon">
												</label>

											</div> -->
     
    </div>
  
 
   <div class="form-group row">
    <label for="Scorecard" class="col-sm-2 col-form-label">Score Card:</label>
   <!-- <div class="col-sm-6">
  
      <input type="Score Card" class="form-control" id="Scorecard">
   
    </div> -->
     <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img3" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"><label id="scorecard">Upload
													Score card image <input type="file"  id="pimage3"  >
												</label>
						 <p>(*for claiming money back)</p>
											</div>
  </div>
  
   <div class="form-group row">
    <label for="comment" class="col-sm-2 col-form-label">Comment:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="comment">
    </div>
  </div>
   
   <div class="form-group">
  <h5 style="color:blue;">Bank Details:</h5>
    </div>
  
  <div class="form-group row">
    <label for="AccountName" class="col-sm-2 col-form-label">Account Holder Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="AccountName">
    </div>
  </div>

  <div class="form-group row">
    <label for="AccountNumber" class="col-sm-2 col-form-label">Account Number:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="AccountNumber">
    </div>
  </div>
  <div class="form-group row">
    <label for="BankName" class="col-sm-2 col-form-label">Bank Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="BankName">
    </div>
  </div>

<div class="form-group row">
<label for="accounttype" class="col-sm-2 col-form-label">Account Type:</label>


     <div class="dropdown col-md-2">
<select  id="accounttype">
   <option class="dropdown-item">Savings</option>
    <option class="dropdown-item">Current</option>
</select>
</div>
</div>




<div class="form-group row">
    <label for="IfscCode" class="col-sm-2 col-form-label">IFSC Code:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="IfscCode">
    </div>
  </div>


  <div class="form-group row">
    <label for="bankaddress" class="col-sm-2 col-form-label">Bank Address:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="bankaddress">
    </div>
  </div>
  <div class="form-group row">
    <label for="relationToYou" class="col-sm-2 col-form-label dropdown-toggle" data-toggle="dropdown">Relation to you:</label>
   <div class="dropdown col-md-2" id="relationToYou">  
 <select id="relationToYou">
    <option class="dropdown-item" href="#"></option>
    <option class="dropdown-item" href="#">Own</option>
    <option class="dropdown-item" href="#">Father</option>
    <option class="dropdown-item" href="#">Mother</option>
    <option class="dropdown-item" href="#">Gaurdian</option>
    </select>

</div>
</div>

<button type="button" id="getclaimdetails" onclick="getdata()"> Submit</button>
  </div>

</form>
</div>



<%-- <script
		src="<%=request.getContextPath()%>/assets/landing/js/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/popper.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/assets/landing/js/plugins.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/landing/js/mdb.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/bootstrap.min.js"></script>

	<!-- Slick Slider Js-->
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/slick.min.js"></script>
	<!-- Footer Reveal JS -->
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/footer-reveal.min.js"></script>
	<!-- Active JS -->
	<script src="<%=request.getContextPath()%>/assets/landing/js/active.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/owl.carousel.min.js"></script>
 --%>
	<%-- <script src="<%=request.getContextPath()%>/assets/landing/js/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	 --%>
	<%--  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/claimmoneybackform.js"></script> --%>
	<script>
	function getdata()
	{
		/* window.location = base_url+"jsp/student/student module/Ranksheet.jsp";
		 */
		 /* if(Admitcard=="" || Admitcard=="null"){
			alert("please enter your admit card image");
			return false;
		} */
		/*  if(admit == "" || admit == null){
				
				alert("please upload the admit card image");
				return false;
			}
		 if(scorecard == "" || scorecard == null){
				
				alert("please upload the score card image");
				return false;
			} */
		/*  if(Scorecard=="" || Scorecard=="null"){
			alert("please enter your scorecard image");
			return false;
		} */
		 if(AccountName=="" || AccountName=="null"){
			alert("please enter your account name");
		   return false;
		}
		 if(AccountNumber=="" ||AccountNumber.length<12){
			alert("please enter your account number");
			return false;
		}
		/*  var reg = /[A-Z|a-z]{4}[0][a-zA-Z0-9]{6}$/;
		 var inputvalues = $(this).val();      
		               
		  if (inputvalues.match(reg)) {    
		                    return true;    
		                }    
		                else {    
		                    alert("You entered invalid IFSC code");    
		                    return false;    
		                } */
		 
		if(IfscCode=="" ||IfscCode=="null"){
			alert("please enter your ifsc code");
			return false;
		}
		
		 if(bankaddress=="" || bankaddress=="null"){
			alert("please enter your bank address");
			return false;
		} 
		
		var input={
				
				"adharid":aadhar,
				"admitcard":admitCard,
				"scorecard":scoreCard,
				"bankname":bankName,
				"accountholder":accountName,
				"accountnumber":accountNumber,
				"accounttype":accountType,
				"ifsccode":ifscCode,
				"bankaddress":bankAddress,
				"gaurdian":relationToYou,
				"studentid":studentId
				
		}
		
		var output = JSON.stringify(input);
		
		$.ajax({
			url : base_url+"rest/student/claim",
			type:"POST",
			dataType:"json",
			contentType:'application/json',
			data: output,
			success:function(data){
				 var jsonData = {};
				
		    	  jsonData['adharid'] = aadhar;
		    	  jsonData['admitcard'] = admitCard;
		    	  jsonData['scorecard'] = scoreCard;
		    	  jsonData['bankname'] = bankName;
		    	  jsonData['accountholder'] = accountName;
		    	  jsonData['accountnumber'] = accountNumber;
		    	  jsonData['accounttype'] = accountType;
		    	  jsonData['ifsccode'] = ifscCode;
		    	  jsonData['bankaddress'] = bankAddress;
		    	  jsonData['gaurdian'] = relationToYou;
		    	  jsonData['studentid'] = data.details; 
		    	},
		    
			error:function(data){
				alert(data.responseJSON.errorMessage);
				
			}
		});
	});
	
		 window.location.assign("/jsp/student/student module/Ranksheet.jsp");

	</script>
	 <script>
  (function () {
    var aside = $('.side-nav'),
        showAsideBtn = $('.show-side-btn'),
        contents = $('#contents');
    showAsideBtn.on("click", function () {
      $("#" + $(this).data('show')).toggleClass('show-side-nav');
      contents.toggleClass('margin');
    });
    if ($(window).width() <= 767) {
      aside.addClass('show-side-nav');
    }
    $(window).on('resize', function () {
      if ($(window).width() > 767) {
        aside.removeClass('show-side-nav');
      }
    });
    $('.side-nav .close-aside').on('click', function () {
      $('#' + $(this).data('close')).addClass('show-side-nav');
      contents.removeClass('margin');
    });
  }());


  document.getElementById("pimage1").addEventListener("change", readFile1);
  document.getElementById("pimage2").addEventListener("change", readFile2);
  document.getElementById("pimage3").addEventListener("change", readFile3);
 
  function readFile1() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		     
		    FR.addEventListener("load", function(e) {
		    	  
		    	   document.getElementById("img1").src  = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
	
	 }
  function readFile2() {
	  
	  if (this.files && this.files[0]) {
	    
	    var FR= new FileReader();
	     
	    FR.addEventListener("load", function(e) {
	    	  document.getElementById("img2").src = e.target.result;
	    }); 
	    
	    FR.readAsDataURL( this.files[0] );
	  }
	  

	}
  function readFile3() {
	  
	  if (this.files && this.files[0]) {
	    
	    var FR= new FileReader();
	     
	    FR.addEventListener("load", function(e) {
	    	  document.getElementById("img3").src = e.target.result;
	    }); 
	    
	    FR.readAsDataURL( this.files[0] );
	  }
	  

 }
	  </script>
	</body>

	</html>
