var modelfalse = true;
function registerstudent(){
	
	 
	var name = $("#namem").val();
	//var email = $("#emailm").val().toLowerCase();
	var email = "";
	var mobile = $("#mobilenumber").val();
	//var pass = $("#password").val();
	var pass ="skyget";
	//var conform =$("#confpsd").val();
	var conform ="skyget";
	var referal = $("#referalcode").val();
/*	var state = $("#state").val();
	var city = $("#city").val();
	var gender = $("#gender").val();
        var stateid   = $("#state").val();
	var resstate = stateid.split("_");
	var state = resstate[0];
	var cityid          = $("#city").val();
	var rescity = cityid.split("_");
	var city = rescity[0];*/
	var sourcetype = "web";
	
	/*var gender = $("#gender").val();*/
	
		
	if(name == "" || name == null){
		alert("please enter your name");
		modelfalse = false;
		return false;
	}
	if((email == "" || email == null) && (mobile == "" || mobile == null)){
		alert("please enter email or Phone number");
		modelfalse = false;
		return false;
	}
	if(mobile !=""){
	  if(mobile.length < 10){
		alert("Mobile number atleast 10 Characters");
		modelfalse = false;
		return false;
	}
	}
	
	if(email !=""){
		var atposition=email.indexOf("@");  
		var dotposition=email.lastIndexOf(".");
	if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
		alert("Please enter valid email address");
		modelfalse = false;
		return false;
	}
	}
/*	if(gender == "" || gender == null){
		modelfalse = false;
		alert("please enter gender");
		return false;
	}*/
	if(pass == "" || pass == null){
		modelfalse = false;
		alert("please enter your password");
		return false;
	}
	if(pass.length < 6 && conform.length < 6){
		modelfalse = false;
		alert("Password must be atleast 6 characters.");
		return false;
	}
	if(pass != conform){
		modelfalse = false;
		alert("password MissMatch");
		return false;
	}
	
/*	if(state == "" || state == null){
		modelfalse = false;
		alert("please enter state");
		return false;
	}
	if(city == "" || city == null){
		modelfalse = false;
		alert("please enter your city");
		return false;
	}*/

	var inputdata = {
			"name":name,
			"email":email,
			"mobilenumber":mobile,
			"password":pass,
			"createdBy":"SriDhar",
			"sourcetype":sourcetype,
			"referalCode":referal
			
			}
	var output =JSON.stringify(inputdata);
	$.ajax({
		url : base_url+'rest/student/v1/register',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:output,
		success:function(data){
			//alert(data.message);
			  var jsonData = {};
			  jsonData['studentid'] = data.details;
	    	  jsonData['name'] = name;
	    	  jsonData['email'] = email;
/*	    	  jsonData['city'] = city;
	    	  jsonData['state'] = state;*/
	    	  
	    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
			sessionStorage.setItem("email", email);
			sessionStorage.setItem("mobile", mobile);
			 sessionStorage.setItem('stdname', name);
			generateotp(data.details);
			
			sessionStorage.setItem('stdid',data.details);
			sessionStorage.setItem('reload',false);
			 //window.location = base_url+"jsp/student/student module/catselect.jsp";
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});
};
//student register

function generateotp(studentid,emailver,mobilever){
	
	
	
	  
if (emailver == "" || emailver == null || emailver == undefined){
	var email = $("#emailm").val();
	} else {
		var email = emailver;
	}
if(mobilever == "" || mobilever == null || mobilever == undefined){
	var mobile = $("#mobilenumber").val();
}else{
	var mobile = mobilever
}
	
	
	
	var input ="";
	//var studid = LoginData.studentid;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		input = {mobilenumber: mobile,email:email, name:"s",source:"register",studentId: studentid}
	}
	else if(email == "" || email == null){
		input = {mobilenumber: mobile,email:null, name:"s",source:"register",studentId: studentid}
	}
	else if(mobile==""|| mobile==null){
		input = {email :email,mobilenumber: null, name:"s",source:"register",studentId: studentid}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/sendotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
	    		/*$('body').css("overflow-y","hidden");*/
	    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
	    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile); 
	    		 
	    		// $('#overlayembody').find('#motpsend').val(mobile); 
		    	  $("#overlayemotp, #overlayembody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	}
	    else if(email == "" || email == null){
	    	/*	 $('body').css("overflow-y","hidden");*/
	    		 $('#overlaybody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile);
	    		 
		    	  $("#overlayOTP, #overlaybody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	}else if(mobile==""|| mobile==null){
	    		/* $('body').css("overflow-y","hidden");*/
	    		 $('#overlayebody').find('#otpbtn,#reoptbtn').attr('data-email' , email);  
		    	  $("#overlayeOTP, #overlayebody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	} 
	    	
	    	
	    	
			//window.location = base_url +"jsp/student/student module/otp.jsp";
			
			
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage)
		}
		
	})
	
}
function generateotpforlogin(studentid,emailver,mobilever){

	if (emailver == "" || emailver == null || emailver == undefined){
		var email = $("#emailm").val();
		} else {
			var email = emailver;
		}
	if(mobilever == "" || mobilever == null || mobilever == undefined){
		var mobile = $("#mobilenumber").val();
	}else{
		var mobile = mobilever
	}
		
		
		
		var input ="";
		//var studid = LoginData.studentid;
		if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
			input = {mobilenumber: mobile,email:email, name:"s",source:"register",studentId: studentid}
		}
		else if(email == "" || email == null){
			input = {mobilenumber: mobile,email:null, name:"s",source:"register",studentId: studentid}
		}
		else if(mobile==""|| mobile==null){
			input = {email :email,mobilenumber: null, name:"s",source:"register",studentId: studentid}
		}
		else{
			return false
		}
		var inputdata = JSON.stringify(input);
		$.ajax({
			url: base_url+'rest/student/v1/sendotpv2',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputdata,
		    success: function(data){
		    	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		    		/*$('body').css("overflow-y","hidden");*/
		    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
		    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile); 
		    		 $('#overlayembody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
		    		// $('#overlayembody').find('#motpsend').val(mobile); 
			    	  $("#overlayemotp, #overlayembody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	}
		    else if(email == "" || email == null){
		    		/* $('body').css("overflow-y","hidden");*/
		    		 $('#overlaybody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile);
		    		 $('#overlaybody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
			    	  $("#overlayOTP, #overlaybody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	}else if(mobile==""|| mobile==null){
		   /* 		 $('body').css("overflow-y","hidden");*/
		    		 $('#overlayebody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
		    		 
		    		 $('#overlayebody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
			    	  $("#overlayeOTP, #overlayebody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	} 
		    	
		    	
		    	
				//window.location = base_url +"jsp/student/student module/otp.jsp";
				
				
		    },
			error:function(data){
				//alert(data.responseJSON.errorMessage)
				if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		    	/*	$('body').css("overflow-y","hidden");*/
		    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
		    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile); 
		    		 $('#overlayembody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
		    		// $('#overlayembody').find('#motpsend').val(mobile); 
			    	  $("#overlayemotp, #overlayembody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	}
		    else if(email == "" || email == null){
		    		/* $('body').css("overflow-y","hidden");*/
		    		 $('#overlaybody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile);
		    		 $('#overlaybody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
			    	  $("#overlayOTP, #overlaybody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	}else if(mobile==""|| mobile==null){
		    		/* $('body').css("overflow-y","hidden");*/
		    		 $('#overlayebody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
		    		 
		    		 $('#overlayebody').find('#otpbtn').attr('onclick','otpvalidatelogin(this);');
			    	  $("#overlayeOTP, #overlayebody").css("display","block");
			    	  $('#centralModalLg').modal('hide');
		    	} 
			}
			
		})
	
}
function OTPoff() {
	$('#overlaybody').css("display","none");
	$('#overlayOTP').css("display","none");
   
}
function otpvalidate(elem){
	
	var mobile = $(elem).attr('data-mobile');
	var email =  $(elem).attr('data-email');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		var otpbtn = $('#overlayembody').find("#genrat").val();
		var otpemail = $('#overlayembody').find("#genratemail").val(); 
		if(otpemail == "" || otpemail == null){
			var otpbtn = $('#overlayembody').find("#genrat").val();
			input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"register",studentId: studid}
		}else if(otpbtn==""|| otpbtn==null){
			var otpemail =$('#overlayembody').find("#genratemail").val();
			input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"register",studentId: studid}
		}else{
			input = {mobilenumber: mobile,email:email, otp:otpbtn,emailotp:otpemail,source:"register",studentId: studid}
		}
	}
	else if(email == "" || email == null){
		var otpbtn = $('#overlaybody').find("#genrat").val();
		input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"register",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		var otpemail =$('#overlayebody').find("#genratemail").val();
		input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"register",studentId: studid}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/verifyotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    beforeSend: function() {
	    	  $(".loader").hide();
	    	  /*$("#body-load").append(currentTime);*/
		},
	    success: function(data){
	    	alert(data.message);
	    	$("#body-load").html("<h1 style='display:flex;justify-content:center;align-items:center;background:linear-gradient(to right,#884bdf,deepskyblue);position: relative;top: 233px;text-shadow: 1px 1px 11px darkslategrey;padding:50px 50px;color:ivory;' class='animated zoomInDown'>Welcome To Skygets</h1>"); 	    
			  window.setTimeout(function(){
				  window.location = base_url+"jsp/student/student module/catselect.jsp";
			  }, 3000);	
	    	//window.location = base_url +"jsp/student/student module/catselect.jsp";		//move later to category page
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
	})
	
}
function otpvalidatelogin(elem){
	var mobile = $(elem).attr('data-mobile');
	var email =  $(elem).attr('data-email');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	name=LoginData.name;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		var otpbtn = $('#overlayembody').find("#genrat").val();
		var otpemail = $('#overlayembody').find("#genratemail").val(); 
		if(otpemail == "" || otpemail == null){
			var otpbtn = $('#overlayembody').find("#genrat").val();
			input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"register",studentId: studid}
		}else if(otpbtn==""|| otpbtn==null){
			var otpemail =$('#overlayembody').find("#genratemail").val();
			input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"register",studentId: studid}
		}else{
			input = {mobilenumber: mobile,email:email, otp:otpbtn,emailotp:otpemail,source:"register",studentId: studid}
		}
	}
	else if(email == "" || email == null){
		var otpbtn = $('#overlaybody').find("#genrat").val();
		//mobile =  $('#overlaybody').find("#genrat").val();
		input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"register",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		var otpemail =$('#overlayebody').find("#genratemail").val();
		input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"register",studentId: studid}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/verifyotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    beforeSend: function() {
	    	  $(".loader").hide();
	    	  /*$("#body-load").append(currentTime);*/
		},
	    success: function(data){
	    	//alert(data.message);
	    	  var currentTime ="";
	    	   currentTime = new Date();

	    	 // $("#body-load").append(currentTime);
	    	 var usertype = "student"
		    	  validateuser(usertype);
	    	ua = navigator.userAgent;
	    	  /* MSIE used to detect old browsers and Trident used to newer ones*/
	    	  var is_ie = ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1;
	    	  if(is_ie){
	    		  
	    	  }else{
	    		  if(name !="" ){
		 				 if(currentTime.getHours()<12){
		 				   	 document.write("<b id='goodmorning'  style='position: relative;top: 99px;color: green;font-weight:100;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3; font-family: cursive;padding-left: 3px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Morning! </b>");
		 				    	
		 				    	  }
		 				    	  else if(currentTime.getHours()<17){
		 				    		  document.write("<b id='goodmorning' style='position: relative;top: 99px;font-weight:100;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey<span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Afternoon! </b>");
		 				    	
		 				    	  }
		 				    	  else {
		 				    		  document.write("<b id='goodmorning' style='position: relative; font-weight:100; top: 99px;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+" </span><span style='font-family: cursive;'>,</span></h4> Good Evening! </b>");
		 				    	 
		 				    	  }	
		 			    }  
	    	  }
	    	 
	    	  
	    	  window.setTimeout(function(){
	    		  var examtype=sessionStorage.getItem("examTypeIds");
	    			 
	    			 if(examtype=="" || examtype==null || examtype==undefined){
	    			 	
	    			 	  window.location =base_url+"jsp/student/student module/catselect.jsp?ref=std";
	    			 	  	
	    			 }
	    			 else{
	    		  window.location = base_url+"jsp/student/student module/studenthome.jsp";
	    			 }
	    		  
	    		  //	  window.location = base_url+"jsp/student/livezone/live_zone_active_full_mocks.jsp";
			  }, 3000);	 
	
	    	
	    	
	    	/*$("#body-load").html("<h1 style='display:flex;justify-content:center;align-items:center;background:linear-gradient(to right,#884bdf,deepskyblue);position: relative;top: 233px;text-shadow: 1px 1px 11px darkslategrey;padding:50px 50px;color:ivory;' class='animated zoomInDown'>Welcome To Skygets</h1>"); 	    
			  window.setTimeout(function(){
				  window.location = base_url+"jsp/student/student module/catselect.jsp";
			  }, 3000);	*/
	    	//window.location = base_url +"jsp/student/student module/catselect.jsp";		//move later to category page
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
	})	
}
function regenerateotp(elem){
	var mobile = $(elem).attr('data-mobile');
	var email =  $(elem).attr('data-email');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		input = {mobilenumber: mobile,email:email,source:"register",studentId: studid}
	}
	else if(email == "" || email == null){
		input = {mobilenumber: mobile,email:null,source:"register",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		input = {email :email,mobilenumber: null,source:"register",studentId: studid}
	}
	else{
		return false
	}
	
	
	
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/sendotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	//alert(data.message)
	    	 $('#overlayembody,#overlaybody,#overlayebody').find("#genrat,#genratemail").val("");
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage)
		}
		
	})
	
}
$("#mobilenumber, #genrat").keypress(function(e) {
	   //if the letter is not digit then display error and don't type anything
	   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	     return false;
	   }
	 });

//student register

function setStudentCookie(cname, cvalue, exdays) {
	   var d = new Date();
	   d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
	   var expires = "expires=" + d.toUTCString();
	   document.cookie = cname + "=" + cvalue + "; " + expires+ "; path=/";
	}


$('#loginForm').submit(function(event) {
	  
    event.preventDefault();

	var name = "";
	var currentTime ="";
    var formEl = $(this);
    var submitButton = $('input[type=submit]', formEl);

	
	var mobilenumber = $("#lmobilenumber").val().toLowerCase();
	//var password     = $("#lpassword").val();
	var password     = "skyget";
	
if(mobilenumber == "7799551666" || mobilenumber =="6303099014"){
		
		
		sessionStorage.setItem('isOtherLogin', 'true');
		
	
		
	 window.location.reload();
		/*
		  document.getElementById("loginBtn").setAttribute('data-target','#signinmodal');
		  document.getElementById("loginBtn").setAttribute('data-toggle','modal');
		  
			$('#signinmodal').modal("show");*/
		
}

/*else{
	
	 document.getElementById("loginBtn").removeAttribute('data-target');
	  document.getElementById("loginBtn").removeAttribute('data-toggle');
		
}*/

else{
	if(mobilenumber == "" || mobilenumber == null){
		alert("please enter mobilenumber or Email ID");
		return false;
		/*var letters = /^[A-Za-z]+$/;
	      if(mobilenumber.value.match(letters))
	      {
	    	  var atposition=email.indexOf("@");  
	    		var dotposition=email.lastIndexOf(".");
	    		if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
	    			alert("Please enter valid email address");
	    			return false;
	    		}
	      }
	      else
	      {
	    	  if(mobilenumber.length<10 ){
	    			alert("Mobile number atleast 10 Characters");
	    			return false;
	    		}
	      }*/
	}
	if(password == "" || password == null){
		alert("please enter password");
		return false;
	}
	if(password.length < 6){
		alert("Password must be atleast 6 characters.");
		return false;
	}
	var object = {
	  "mobilenumber":mobilenumber,
      "password":password
	};

/*	var formData = formEl.serializeArray();
	formData.forEach(function(value, key){
		object[value.name] = value.value;
	});
         */
	var json = JSON.stringify(object);
	
    $.ajax({
      cache: false,
      type: 'POST',
      async: false,
      url: base_url+"rest/student/v1/login",
      dataType:"json",
	  contentType:"application/json",
	  accept: {
        javascript: 'application/javascript'
      },
      data: json,
      beforeSend: function() {
    	  $(".loader").hide();

    	   currentTime = new Date();

    	  $("#body-load").append(currentTime);
    	  
    	  
        submitButton.prop('disabled', 'disabled');
      },success:function(data){
    	  name="";
		if(data.status == true){
			
			var anotherlogin=sessionStorage.getItem('isOtherLogin');
			
			if(anotherlogin =="true"){
				
			//alert(data.message);
				
				 name = data.name;
					var studentid = data.studentid;
					     
		       	 var emailver = "";
		            var mobiver = "";
		    		var email_mobile = $("#lmobilenumber").val();
		    		
		    		if(isNaN(email_mobile )){
		    			var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		    			if(!regex.test(email_mobile )){
		    				emailver = "";
		    			}else{
		    				emailver = email_mobile ;
		    			}
		    		}
		    		else{
		    			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
		    			if (validateMobNum.test(email_mobile ) && email_mobile.length == 10) {
		    				mobiver = email_mobile;
		    			}
		    			else{
		    				mobiver = email_mobile;
		    			}
		    		}
		    		 $('#centralModalLg').modal('hide');
		    		 $('#signinmodal').modal('hide');
		    		 sessionStorage.setItem("examTypeIds", data.examTypes[0].examtypeId);
		    		 sessionStorage.setItem("standardId", data.standardId);
		    		 var jsonData = {};
					  jsonData['studentid'] = data.studentid;
			    	  jsonData['name'] = "";
			    	  jsonData['city'] = "";
			    	  jsonData['state'] = "";
			    	  
			    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
					sessionStorage.setItem("email", emailver);
					sessionStorage.setItem("mobile", mobiver);
		           //generateotpforlogin(data.studentid,emailver,mobiver); 
					//generating otp again if user breaks registartion in the middle
		            sessionStorage.setItem('stdid',data.studentid);
		            sessionStorage.setItem('stdname',data.name);
					sessionStorage.setItem('reload',false);
					
					     var jsonData = {};
				    	  jsonData['userType'] ="";
				    	  jsonData['status'] ="";
				    	  jsonData['deanid']  ="";
				    	  jsonData['academicheadid'] ="";
				    	  jsonData['superdeanid']="";
				    	  jsonData['smeid'] ="";
				    	  if(data.name !== "" && data.name !== null){
				    		  jsonData['name'] = data.name;
				    	  }
				    	  if(data.studentid !== "" && data.studentid !== null){
				    		  jsonData['designation'] = data.studentid;
				    	  }
				    	  jsonData['studentid'] = data.studentid;
				    	  jsonData['name'] = data.name;
				    	  jsonData['city'] = data.city;
				    	  jsonData['state'] = data.state;
				    	  jsonData['categoryName'] = data.categoryName;
						jsonData['standardId'] = data.standardId;
						jsonData['examtypeId'] = data.examTypes[0].examtypeId;

						sessionStorage.setItem('stdid',data.studentid);
						setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
						sessionStorage.setItem('stdname',data.name);
						sessionStorage.setItem('stdquota',data.quota);
						sessionStorage.setItem('reload',false); 

						var usertype = "student";

						validateuser(usertype);

						// alert("successfully another account login");
						// sessionStorage.setItem('isOtherLogin','false');
						navigation();


						/* var usertype = "student"
				    	  validateuser(usertype);
				    	  ua = navigator.userAgent;
				    	  /* MSIE used to detect old browsers and Trident used to newer ones*/
				    	/*  var is_ie = ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1;
				    	  if(is_ie){
				    		  
				    	  }else{
				    		  if(name !="" ){
					 				 if(currentTime.getHours()<12){
					 				   	 document.write("<b id='goodmorning'  style='position: relative;top: 99px;color: green;font-weight:100;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3; font-family: cursive;padding-left: 3px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Morning! </b>");
					 				    	
					 				    	  }
					 				    	  else if(currentTime.getHours()<17){
					 				    		  document.write("<b id='goodmorning' style='position: relative;top: 99px;font-weight:100;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey<span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Afternoon! </b>");
					 				    	
					 				    	  }
					 				    	  else {
					 				    		  document.write("<b id='goodmorning' style='position: relative; font-weight:100; top: 99px;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+" </span><span style='font-family: cursive;'>,</span></h4> Good Evening! </b>");
					 				    	 
					 				    	  }	
					 			    }  
				    	  }
				    	 
				    	  
				    	  window.setTimeout(function(){
				    		 
							  window.location = base_url+"jsp/student/livezone/live_zone_active_full_mocks.jsp";
						  }, 3000);	 */ 
					
				    	  /*
				    	  sessionStorage.setItem('isOtherLogin', 'false');
				    	  */
				    	
				
			}
			else{
			 name = data.name;
			var studentid = data.studentid;
			     
       	 var emailver = "";
            var mobiver = "";
    		var email_mobile = $("#lmobilenumber").val();
    		
    		if(isNaN(email_mobile )){
    			var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    			if(!regex.test(email_mobile )){
    				emailver = "";
    			}else{
    				emailver = email_mobile ;
    			}
    		}
    		else{
    			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
    			if (validateMobNum.test(email_mobile ) && email_mobile.length == 10) {
    				mobiver = email_mobile;
    			}
    			else{
    				mobiver = email_mobile;
    			}
    		}
    		 $('#centralModalLg').modal('hide');
    		 $('#signinmodal').modal('hide');
    		 var jsonData = {};
			  jsonData['studentid'] = data.studentid;
	    	  jsonData['name'] = "";
	    	  jsonData['city'] = "";
	    	  jsonData['state'] = "";
	    	  
	    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
			sessionStorage.setItem("email", emailver);
			sessionStorage.setItem("mobile", mobiver);
            generateotpforlogin(data.studentid,emailver,mobiver); //generating otp again if user breaks registartion in the middle
            sessionStorage.setItem('stdid',data.studentid);
            sessionStorage.setItem('stdname',data.name);
			sessionStorage.setItem('reload',false);
			 sessionStorage.setItem("examTypeIds", data.examTypes[0].examtypeId);
    		 sessionStorage.setItem("standardId", data.standardId);
			     var jsonData = {};
		    	  jsonData['userType'] ="";
		    	  jsonData['status'] ="";
		    	  jsonData['deanid']  ="";
		    	  jsonData['academicheadid'] ="";
		    	  jsonData['superdeanid']="";
		    	  jsonData['smeid'] ="";
		    	  if(data.name !== "" && data.name !== null){
		    		  jsonData['name'] = data.name;
		    	  }
		    	  if(data.studentid !== "" && data.studentid !== null){
		    		  jsonData['designation'] = data.studentid;
		    	  }
		    	  jsonData['studentid'] = data.studentid;
		    	  jsonData['name'] = data.name;
		    	  jsonData['city'] = data.city;
		    	  jsonData['state'] = data.state;
		    	  jsonData['categoryName'] = data.categoryName;
						jsonData['standardId'] = data.standardId;
						jsonData['examtypeId'] = data.examTypes[0].examtypeId;

						sessionStorage.setItem('stdid',data.studentid);
						setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
						sessionStorage.setItem('stdname',data.name);
						sessionStorage.setItem('stdquota',data.quota);
						sessionStorage.setItem('reload',false); 
						/* var usertype = "student"
		    	  validateuser(usertype);
		    	  ua = navigator.userAgent;
		    	  /* MSIE used to detect old browsers and Trident used to newer ones*/
		    	/*  var is_ie = ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1;
		    	  if(is_ie){
		    		  
		    	  }else{
		    		  if(name !="" ){
			 				 if(currentTime.getHours()<12){
			 				   	 document.write("<b id='goodmorning'  style='position: relative;top: 99px;color: green;font-weight:100;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3; font-family: cursive;padding-left: 3px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Morning! </b>");
			 				    	
			 				    	  }
			 				    	  else if(currentTime.getHours()<17){
			 				    		  document.write("<b id='goodmorning' style='position: relative;top: 99px;font-weight:100;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey<span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Afternoon! </b>");
			 				    	
			 				    	  }
			 				    	  else {
			 				    		  document.write("<b id='goodmorning' style='position: relative; font-weight:100; top: 99px;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+" </span><span style='font-family: cursive;'>,</span></h4> Good Evening! </b>");
			 				    	 
			 				    	  }	
			 			    }  
		    	  }
		    	 
		    	  
		    	  window.setTimeout(function(){
		    		 
					  window.location = base_url+"jsp/student/livezone/live_zone_active_full_mocks.jsp";
				  }, 3000);	 */ 
			}
		
		}else {
                alert(data.message);
                if(data.accountVerified == false){
                	 var emailver = "";
                     var mobiver = "";
             		var email_mobile = $("#lmobilenumber").val();
             		
             		if(isNaN(email_mobile )){
             			var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             			if(!regex.test(email_mobile )){
             				emailver = "";
             			}else{
             				emailver = email_mobile ;
             			}
             		}
             		else{
             			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
             			if (validateMobNum.test(email_mobile ) && email_mobile.length == 10) {
             				mobiver = email_mobile;
             			}
             			else{
             				mobiver = "";
             			}
             		}
             		 $('#centralModalLg').modal('hide');
             		 $('#signinmodal').modal('hide');
             		 var jsonData = {};
       			  jsonData['studentid'] = data.studentid;
       	    	  jsonData['name'] = "";
       	    	  jsonData['city'] = "";
       	    	  jsonData['state'] = "";
       	    	  
       	    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
       			sessionStorage.setItem("email", emailver);
       			sessionStorage.setItem("mobile", mobiver);
                     generateotp(data.studentid,emailver,mobiver); //generating otp again if user breaks registartion in the middle
                     sessionStorage.setItem('stdid',data.studentid);
                     sessionStorage.setItem('stdname',data.name);
         			sessionStorage.setItem('reload',false);
                }
               
            }
		},
		error:function(data){
			
			alert("Login failed");
			return false;
		}
    
    }).done(function(data) {
      submitButton.prop('disabled', false);
    });
    
}
  });


 

//parent login


$('#parentloginForm').submit(function(event) {
    event.preventDefault();
    
	var name = "";
	var currentTime ="";
    var formEl = $(this);
    var submitButton = $('input[type=submit]', formEl);

	
	var mobilenumber = $("#pmobilenumber").val().toLowerCase();
	var password     = $("#ppassword").val();
	
	
	if(mobilenumber == "" || mobilenumber == null){
		alert("please enter mobilenumber or Email ID");
		return false;
		/*var letters = /^[A-Za-z]+$/;
	      if(mobilenumber.value.match(letters))
	      {
	    	  var atposition=email.indexOf("@");  
	    		var dotposition=email.lastIndexOf(".");
	    		if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
	    			alert("Please enter valid email address");
	    			return false;
	    		}
	      }
	      else
	      {
	    	  if(mobilenumber.length<10 ){
	    			alert("Mobile number atleast 10 Characters");
	    			return false;
	    		}
	      }*/
	}
	if(password == "" || password == null){
		alert("please enter password");
		return false;
	}
	/*if(password.length < 6){
		alert("Password must be atleast 6 characters.");
		return false;
	}*/
	var object = {
			  "mobilenumber":mobilenumber,
		      "password":password
			};
/*	var formData = formEl.serializeArray();
	formData.forEach(function(value, key){
		object[value.name] = value.value;
	});*/
	var json = JSON.stringify(object);
	
    $.ajax({
      cache: false,
      type: 'POST',
      async: false,
      url: base_url+"rest/student/parentlogin",
      dataType:"json",
	  contentType:"application/json",
	  accept: {
        javascript: 'application/javascript'
      },
      data: json,
      beforeSend: function() {
    	  $(".loader").hide();

    	   currentTime = new Date();

    	  $("#body-load").append(currentTime);
    	  
    	  
        submitButton.prop('disabled', 'disabled');
      },success:function(data){
		if(data.status == true){
			//alert(data.message);
			 name = data.parentname;
			var studentid = data.studentId;
			     
			     var jsonData = {};
		    	  jsonData['userType'] ="";
		    	  jsonData['status'] ="";
		    	  jsonData['deanid']  ="";
		    	  jsonData['academicheadid'] ="";
		    	  jsonData['superdeanid']="";
		    	  jsonData['smeid'] ="";
		    	  if(data.parentname !== "" && data.parentname !== null){
		    		  jsonData['name'] = data.parentname;
		    	  }
		    	  if(data.studentId !== "" && data.studentId !== null){
		    		  jsonData['designation'] = data.studentId;
		    	  }
		    	  jsonData['parentId'] = data.parentId;
		    	  jsonData['studentid'] = data.studentId;
		    	  jsonData['name'] = data.parentname;
		    	  jsonData['parentoccupation'] = data.parentoccupation;
		    	  
		    	  //jsonData['city'] = data.city;
		    	  //jsonData['state'] = data.state;
		    	 // jsonData['categoryName'] = data.categoryName;
		    	  sessionStorage.setItem('parentsname',data.parentname);
		    	  sessionStorage.setItem('parentsstdid',data.studentId);
		    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
		    	  
		    	  sessionStorage.setItem('reload',false); 
		    	  var usertype = "parent"
		    	  validateuser(usertype);
		    	  if(name !="" ){
		 				 if(currentTime.getHours()<12){
		 				   	 document.write("<b id='goodmorning'  style='position: relative;top: 99px;color: green;font-weight:100;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3; font-family: cursive;padding-left: 3px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Morning! </b>");
		 				    	
		 				    	  }
		 				    	  else if(currentTime.getHours()<17){
		 				    		  document.write("<b id='goodmorning' style='position: relative;top: 99px;font-weight:100;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey<span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+"</span><span style='font-family: cursive;'>,</span></h4> Good Afternoon! </b>");
		 				    	
		 				    	  }
		 				    	  else {
		 				    		  document.write("<b id='goodmorning' style='position: relative; font-weight:100; top: 99px;color: green;font-size:30px;font-family: cursive; display: flex; justify-content: center;align-items:center;'><img src='"+base_url+"assets/images/students/spinner2.gif' style='width:150px;height:150px;position: absolute;width: 150px;top: 150px;' > <h4 style='position: relative;bottom: 53px;font-weight: bolder;text-transform: capitalize;color: #3575d3;'>Hey <span style='color: #3575d3;font-family: cursive;padding-left: 12px;'>"+name+" </span><span style='font-family: cursive;'>,</span></h4> Good Evening! </b>");
		 				    	 
		 				    	  }	
		 			    }
		    	  
		    	  window.setTimeout(function(){
		    		 
					  window.location = base_url+"jsp/parent/dash.jsp";
				  }, 3000);	  
			}else {
                alert(data.message);
                if(data.accountVerified == false){
                	 var emailver = "";
                     var mobiver = "";
             		var email_mobile = $("#pmobilenumber").val();
             		
             		if(isNaN(email_mobile )){
             			var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             			if(!regex.test(email_mobile )){
             				emailver = "";
             			}else{
             				emailver = email_mobile ;
             			}
             		}
             		else{
             			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
             			if (validateMobNum.test(email_mobile ) && email_mobile.length == 10) {
             				mobiver = email_mobile;
             			}
             			else{
             				mobiver = "";
             			}
             		}
             		 $('#centralModalLg').modal('hide');
             		 $('#parentsigninmodal').modal('hide');
             		 var jsonData = {};
       			  jsonData['studentid'] = data.studentId;
       	    	  jsonData['name'] = "";
       	    	 // jsonData['city'] = "";
       	    	  //jsonData['state'] = "";
       	    	  
       	    	  setStudentCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
       			sessionStorage.setItem("email", emailver);
       			sessionStorage.setItem("mobile", mobiver);
                 //    generateotp(data.studentid,emailver,mobiver);
                     sessionStorage.setItem('parentsstdid',data.studentId);
         			sessionStorage.setItem('reload',false);
                }
               
            }
		},
		error:function(data){
			
			alert("Login failed");
			return false;
		}
		
		
    }).done(function(data) {
      submitButton.prop('disabled', false);
    });
  });

 function getcatstudent(){

		var appenddata;
		$.ajax({
			type: "GET",
			 url: base_url+'rest/category/v1/getcategories',
			  dataType: "json",
			  contentType: 'application/json', 
			 
			 
			  success: function(data){
		       for(var i=0; i < data.length; i++){
				 
		    		
						var categoryname = data[i].categoryname;
						var categoryid = data[i].id;
						//var zoneidis = data.zones[i].id;
						appenddata += '<option value="'+categoryid+'">'
								+categoryname+'</option>';
						
					}
		       $("#studentcategory").prop("disabled",false);
		       jQuery("#studentcategory").empty("");
				jQuery("#studentcategory").append('<option value="">--- Select Category---</option>');
				jQuery("#studentcategory").append(appenddata);
					
				$('.selectpicker').selectpicker('refresh');
				

			  },
			  error: function(data) {		

				  alert("Categories not found!");

			  }
		      	
		});

		//categories default get service in table  in admin

	}


function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1);
        if (c.indexOf(name) == 0)
            return c.substring(name.length, c.length);
    }
    return "";
}


function getSmeId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	
	if(loginData !== "" || loginData !== null){
		return loginData.smeid;
	} else {
		return "";
	}
	
}
function getLoginData(){
/*	var loginData = JSON.parse(atob(getCookie("LoginData")));
	
	if(loginData !== "" || loginData !== null){
		return loginData;
	} else {
		return "";
	}
	*/
	try{
		var loginData = JSON.parse(atob(getCookie("LoginData")));
		
		if(loginData !== "" || loginData !== null){
			return loginData;
		} else {
			return "";
		}
	}catch(e){
		return "";
	}

}

function getDeanId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		
		return loginData.deanid;
	} else {
		return "";
	}
	
	
}

function getSuperDeanId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		return loginData.superdeanid;
	} else {
		return "";
	}
}

function getAHId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		return loginData.academicheadid;
	} else {
		return "";
	}
}

function setHeaderName(){
	var loginData = getLoginData();
	var name = loginData.name;
	var desig = loginData.designation;
	if(name !== "" && name !== null && desig !== "" && desig !== null){
		$("#nameHeader").html(name);
		$("#desigHead").html(desig);
	}
}

function sendforotp(){
	   var mobemail = "";
		var email_mobile = $("#emai_mob").val();
		
		if(isNaN(email_mobile )){
			var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if(!regex.test(email_mobile )){
				alert("Please enter valid email id");
				return false;
			}else{
			mobemail = email_mobile ;
			}
		}
		else{
			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
			if (validateMobNum.test(email_mobile ) && email_mobile.length == 10) {
				mobemail = email_mobile;
			}
			else{
				alert("Invalid Mobile Number");
				return false;
			}
		}
		
		if (typeof(Storage) !== "undefined") {
		
	    localStorage.setItem("mob_email", email_mobile);
	    document.getElementById("emai_mob").innerHTML = localStorage.getItem("mob_email");
		}else {
		    document.getElementById("emai_mob").innerHTML = "Sorry, your browser does not support Web Storage...";
		}
		
	var otprequest	= {
			"name":"",
			"email":null,
			"mobilenumber":mobemail,
			"gender":"",
			"password":"",
			"state":"",
			"city":"",
			"createdBy":"",
			"category":"",
			"source":"forgot"
			}

		var passreq = JSON.stringify(otprequest);
		
	$.ajax({
		 url: base_url+'rest/student/v1/forgetPwdFirstScreen',
		 type:"POST",
	     dataType: "json",
	     data: passreq,
	     contentType:'application/json', 
		 success: function(data){
			 console.log(data.status);
			 if(data.status){
			 $("#forgotpassw").modal('hide');
			 $("#otpfunct").modal('show');
			 alertify.alert("OTP has been sent to your registered Mobile number or e-mail id.!");
			 }
			 else{
				 alert("Phone Number or Email Id not exists");
			 }
		 },
		 error:function(){
			 alertify.alert("Student details not available");
		 }
		 });
		
	}


function otpverification(){
	
	var email_mobile = $("#emai_mob").val();
	var otpnumb = $("#otpnumber").val();
	
	
	 var requestsend = {
		"email":null,
		"mobilenumber":email_mobile,
		"otp":otpnumb
		}
		var reqotp = JSON.stringify(requestsend);
		
		$.ajax({
			 url: base_url+'rest/student/v1/ForgetPwdverifyotp',
			 type:"POST",
		     dataType: "json",
		     data: reqotp,
		     contentType:'application/json', 
			 success: function(data){
				 $("#otpfunct").modal('hide');
				 $("#passwchange").modal('show');
				 alertify.alert("OTP Verified!");
			 },
			 error:function(data){
				 alertify.alert("Otp entered is invalid");
			 }
			 
      })
}


function changepassword(){
	
	var email_mobile = $("#emai_mob").val();
	var newpass = $("#newpassword").val();
	var conpass = $("#conpassword").val();
	
	
	
	if(newpass == "" || newpass == null){
		modelfalse = false;
		alert("please enter your password");
		return false;
	}
	if(newpass.length < 6 && conpass.length < 6){
		modelfalse = false;
		alert("Password must be atleast 6 characters.");
		return false;
	}
	if(newpass != conpass){
		alert("password MissMatch");
		return false;
	}
	var changepass = {
		"name":"",
		"email":null,
		"mobilenumber":email_mobile,
		"gender":"",
		"password":newpass,
		"state":"",
		"city":"",
		"createdBy":"",
		"category":""
	 }

	var changereq =JSON.stringify(changepass);
	
	$.ajax({
		 url: base_url+'rest/student/v1/updatePassword',
		 type:"POST",
	     dataType: "json",
	     data: changereq,
	     contentType:'application/json', 
		 success: function(data){
			 //alertify.alert("Your Skyget’s Password has been changed successfully.!");
			 //location.reload();
			 alertify.alert('Hey,'+name+' ! <br>Your Skygets Password has been changed successfully Please login with new password.!',function (e) {
					if (e) {
						//window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+decid+'&testtype='+examtype;
						$("#passwchange").modal('hide');
						 $("#signinmodal").modal('show');
					} else {
						alertify.error("You've clicked Cancel");
					}
				});
		 },
		 error:function(data){
			 alertify.alert("Password Changing Failed!");
		 }
		 
    })
	
}

//POSTING OF CONTACT US DATA


function sendcontactdata(){
	
	var fullname = $("#contname").val(); 
	
	var email = $("#contemail").val();
	
	var message = $("#contmessage").val();
	
	if(fullname == "" || fullname == null){
		
		alert("Please enter your fullname");
		return false;
	}
	
	
	if(email == "" || email == null){
		
		alert("Please enter your email");
		return false;
	}
	
   if(message == "" || message == null){
		
		alert("Please enter your Message");
		return false;
	}
	

	var contactdata = {
			"fullName":fullname,
			"email":email,
			"information":message,
			"from":"student"
		}

	var strncontact = JSON.stringify(contactdata);
	
	$.ajax({
		url: base_url +"rest/student/v1/contactus",
		type:"POST",
		datatype:"json",
		contentType:'application/json',
		data:strncontact,
		success:function(data){
			 alert(data.message);
				   window.location.reload();
		},
		error:function(){
			alert("Error in Sending Contact Details");
		}
	})
	
}



function parentcontactdata(){
	
	var fullname = $("#parentfullname").val(); 
	
	var email = $("#parentemail").val();
	
	var message = $("#parentmessage").val();
	
	if(fullname == "" || fullname == null){
		
		alert("Please enter your fullname");
		return false;
	}
	
	
	if(email == "" || email == null){
		
		alert("Please enter your email");
		return false;
	}
	
   if(message == "" || message == null){
		
		alert("Please enter your Message");
		return false;
	}
	

	var contactdata = {
			"fullName":fullname,
			"email":email,
			"information":message,
			"from":"parent"
		}

	var strncontact = JSON.stringify(contactdata);
	
	$.ajax({
		url: base_url +"rest/student/v1/contactus",
		type:"POST",
		datatype:"json",
		contentType:'application/json',
		data:strncontact,
		success:function(data){
			 alert(data.message);
				   window.location.reload();
			
		},
		error:function(){
			alert("Error in Sending Contact Details");
		}
	})
	
}


function getcontactdetails(){
	
	var fromdate = $("#id-date-picker-1").val();
	
	var todate = $("#id-date-picker-2").val();
	
	
	var splitfromdate = fromdate.split("/");
	
	var splittodate = todate.split("/");
	
	if(fromdate == "" || todate == ""){
		var MyDate = new Date();
		var month = MyDate.getMonth(); var date=  MyDate.getDate();  
		 if(month <=10){
			 month = parseInt(('0' + month))+1;
		 }else{
			 month = parseInt(month)+1;
		 }
		 if(date <=10){
			date = parseInt(('0' + date));
		 }
		 var datefrom = date+'-'+(month-2)+'-'+MyDate.getFullYear();
		 var dateto = date+'-'+(month+2)+'-'+MyDate.getFullYear();
	//var datefrom = ('0' + MyDate.getDate()).slice(-2) + '-' + ('0' + (MyDate.getMonth()-1)).slice(-2) + '-' + MyDate.getFullYear();
	
	//var dateto = ('0' + MyDate.getDate()).slice(-2) + '-' + ('0' + (MyDate.getMonth()+1)).slice(-2) + '-' + MyDate.getFullYear();
    	 
	}else{
	
	var datefrom = splitfromdate[1] + '-' + splitfromdate[0] + '-' + splitfromdate[2];
	
   var dateto = splittodate[1] + '-' + splittodate[0] + '-' + splittodate[2];
	}
	
	var getcontact = {
			"id":0,
			"fullName":"",
			"email":"",
			"information":"",
			"fromdate":datefrom,
			"todate":dateto
		}
	
	var strcontact = JSON.stringify(getcontact);
	
	var appenddata = "";

	
	$.ajax({
		url: base_url +"rest/student/v1/getContactusfilter",
		type:"POST",
		datatype:"json",
		contentType:'application/json',
		data:strcontact,
		beforeSend: function(){
			$("#contactus_tbody").empty();
			$("#contactus_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
		   for(var i=0;i<data.length;i++){
			   
			   appenddata += "<tr><td>"+(i+1)+"</td>";
			   appenddata += "<td>"+data[i].fullName+"</td>";
			   appenddata += "<td>"+data[i].email+"</td>";
			   appenddata += "<td>"+data[i].information+"</td>";
			   appenddata += "<td>"+data[i].InsertedDate+"</td>";
			   appenddata += "<td><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10'  data-id="+data[i].id+" data-toggle='tooltip' title='Delete' onclick='deletecontactus(this)'><i class='icon-trash font-18'></i></a></td></tr>";
		   }
		   
		     $("#contactus_tbody").empty();
		     $('#contact_tbl').DataTable().clear().destroy();
			  $("#contactus_tbody").append(appenddata);
			  $("#contact_tbl").DataTable();
		},
		error:function(data){
			alert("Contact us data may empty or error in  getting the data");
		}
   });
}

//DELETE CONTACT US 


function deletecontactus(elem){
	
	var id = $(elem).attr('data-id');
	
	$.ajax({
		url: base_url +"rest/student/v1/deletecontactusenquery/"+id,
		type:"GET",
		datatype:"json",
		contentType:'application/json',
		success:function(data){
		 	var con = confirm("Are you Sure to delete?");
		 	var pon = confirm("Really are you Sure?");
			  if(con == true){
				  if(pon == true){
				       alert("Contact Details has Successfully Deleted");
				       window.location.reload();
				  }
			  }
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});	
}

//getting examtypes student

function Gettingexamtypes(){
var appenddata = "";
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/student/getExamtypes',
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			
			  for(var i =0;i<data.length;i++){
				  
					 appenddata += "<div id='examff' class='col-12 col-md-4' ><a href='"+base_url+"/jsp/student/student module/examtypes.jsp?id="+data[i].examtypeId+"'  data-id="+data[i].hoverImage+" data-nonid="+data[i].normalImage+" onmouseover='hoverimage(this)' onmouseout='nothover(this)' class='examboxlinks' id="+data[i].examtypeId+"  ><div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'><div class='single-icon'><img src="+data[i].normalImage+"  class='ti-flag-alt' id='hover_"+data[i].examtypeId+"' width='50px' height='50px'></div><h4>"+data[i].examtypeName+"</h4><p>"+data[i].examtypeDescription+"</p></div></a></div>";
					 
					 
					  }

			

			  $("#examtypedetails").append(appenddata);
		  },
		  error:function(data){
			  appenddata += "<div id='examff' class='col-md-12 text-center' ><h2>No Examtypes Found</h2></div>";
 $("#examtypedetails").append(appenddata);
		  }
	 
	 })	
	}


function gettingexaminfoexams(){
	var appenddata = "";
		 $.ajax({
			 url:base_url+'rest/dynamicIndex/student/getExamtypes',
			 type:"GET",
			  contentType: 'application/json',
			  dataType:"json",
			  success:function(data){
				
				  for(var i =0;i<data.length;i++){
				 appenddata += "<div id='examff' class='col-12 col-md-4' ><a href='"+base_url+"/jsp/student/student module/examtypes.jsp?id="+data[i].examtypeId+"'  data-id="+data[i].hoverImage+" data-nonid="+data[i].normalImage+" onmouseover='hoverimage(this)' onmouseout='nothover(this)' class='examboxlinks' id="+data[i].examtypeId+"  ><div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'><div class='single-icon'><img src="+data[i].normalImage+"  class='ti-flag-alt' id='hover_"+data[i].examtypeId+"' width='50px' height='50px'></div><h4>"+data[i].examtypeName+"</h4><p>"+data[i].examtypeDescription+"</p></div></a></div>";
				 
				 
				  }

				  $("#examtypedetails").append(appenddata);
			  },
			  error:function(data){
				  appenddata += "<div id='examff' class='col-md-12 text-center' ><h2>No Examtypes Found</h2></div>";
	 $("#examtypedetails").append(appenddata);
			  }
		 
		 })	
		}

function hoverimage(elem){
	
 var hover = $(elem).attr('data-id');
 var id = $(elem).attr('id');
 
 $("#hover_"+id).attr("src",hover);
	
}

function nothover(elem){
   
	var nothover = $(elem).attr('data-nonid')
	var id = $(elem).attr('id');
 $("#hover_"+id).attr("src",nothover);
}

//getting examtypes student


//getting examtypes info student 
var listColor;
function examtypeinfoshowing(){
	
	var id = getParameterByName('id');
	var firstListItemId;
	$.ajax({
		url:base_url+'rest/dynamicIndex/student/getExamtypesInfo/'+id,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			  
			  $("#examname").html(data[0].examtypeName);
			  
			  $("#examdefi").html(data[0].examtypeDefinition);
			  
			  $("#mainimage").html('<img src='+data[0].mainImage+' >');
			  
			  var listItemAppendData = '<ul id="myTabs">';
			  var listDescAppendData = "";
			  var listArray = data[0].indexPageInfoInformationList;
			  firstListItemId = listArray[0].infoItem;
			  firstListItemId = firstListItemId.replace(/\s/g,"");
			  
			  listColor = listArray[0].color;
			  listColor = listColor.replace(/\s/g,"");
			  for(var i=0;i<listArray.length;i++){
				  var listItem = listArray[i].infoItem;
				  var listDesc	= listArray[i].infoItemDescription;
				  
				  
				  if(i>0){
					  listItemAppendData += '<li><a href="#/"  class="anchor" data-related="'+listItem.replace(/\s/g,"")+'">'+listItem+'</a></li>';
					  listDescAppendData += '<div class="single-special-info  wow fadeInUp fasak " data-wow-delay="0.4s" id="'+listItem.replace(/\s/g,'')+'">'+listDesc+'</div>';
				  } else{
					  listItemAppendData += '<li class="active" style="background-color:'+listColor+'"><a href="#/"  class="anchor" data-related="'+listItem.replace(/\s/g,"")+'">'+listItem+'</a></li>';
					  listDescAppendData += '<div class="single-special-info  wow fadeInUp fasak active" data-wow-delay="0.4s" id="'+listItem.replace(/\s/g,'')+'">'+listDesc+'</div>';
				  }
				  
			  }
			  
			  listItemAppendData += "</ul>";
			  
			  $("#jeemainsmenu").html(listItemAppendData);
			  $("#infodescrip").html(listDescAppendData);
			  
			 
		  },
		  error:function(){
			  alert("Getting examtype Info failed");
		  }, complete:function(data){
			  showOnlyOneTabDesc(firstListItemId);
		  }	
	})
}

$(document).on( "click","a.anchor", function(e) {
    e.preventDefault();
    
    var listItem = $(this).parent();
    $('#myTabs li').removeClass('active');
    $('#myTabs li').css({"background-color":"#f0f0f0"});

    $(listItem).removeClass('active').addClass('active');
    $(listItem).css({"background-color":listColor});
    
    var id = $(this).attr('data-related'); 
    $(".fasak").each(function(){
        $(this).hide();
        if($(this).attr('id') == id) {
            $(this).show();
        }
    });
});  



//getting examtypes info student 



function validateuser(usertype)
{

$.ajax({
type: "GET",
async: false,
 url: base_url+"jsp/master/setstudentsession.jsp?usertype="+usertype,
 success: function(data){
 

 },
 error: function(data) {	


 }
 
});

}

$("#signBtn").click(function(){
	$("#centralModalLg").modal("hide");
	$("#signinmodal").modal("show");
})
$("#signUpBtn").click(function(){
    $('#signinmodal').modal('hide');
})
    

function testAnim(x) {
       $('.modal .modal-dialog').attr('class', 'modal-dialog  ' + x + '  animated modal-lg');
   };
   $('#centralModalLg, #signinmodal ,#parentsigninmodal').on('show.bs.modal', function (e) {
     var anim = "slideInLeft"
         testAnim(anim);
   })
   $('#centralModalLg, #signinmodal, #parentsigninmodal').on('hide.bs.modal', function (e) {
     var anim = "slideOutRight"
         testAnim(anim);
   })
   
   $('#centralModalLg').on('hide.bs.modal', function (e) {
     var anim = "slideOutRight"
         testAnim(anim);
   })
   
/* var modal = document.getElementById("centralModalLg");
   $('body').click(function() {
	   if (!$(this.target).is('#centralModalLg')) {
	     $(".modalDialog").hide();
	   }
	 });*/
var modal = document.getElementById("centralModalLg");
window.onclick = function(event) {
	
   if (event.target == modal) {
	   
	   $("#centralModalLg").modal("hide");
    
   
   }
 }
$(document).ready(function(){
	 getcatstudent();
	 getstatesall();
});

$(".close").click(function(){
	 $("#overlayemotp, #overlayembody").css("display","none");
	 $("#overlayOTP, #overlaybody").css("display","none");
	  $("#overlayeOTP, #overlayebody").css("display","none");
	  $('#overlayembody,#overlaybody,#overlayebody').find("#genrat,#genratemail").val("");
});


function gettingnewsexamtypes(){
	var appendata = "";
	var appendata1="";
	$.ajax({
		type: "GET",
		 url: base_url+"rest/newsblog/getLatestThreeNews",
		 contentType: 'application/json',
		  dataType:"json",
		 success: function(data){
			 appendata1 += 
					
					 '<div class=""><a id="bgnav" onclick="viedomaindisplay1('+"'"+data[0].newsBlogId+"'"+')" href="'+base_url+'jsp/student/student module/blogcontent.jsp?blogid='+data[0].newsBlogId+'">'+
					 '<img src="'+data[0].newsImage+'" id="leftthumb" style="border-radius: 4px;width: 100%;height: 455px;">'+
					
					 '<div class="overlay">'+
				'<input type="text" id="exmid" hidden>'+
					 '<div class="w-25" id="type" style="background:#fd7e14">'+data[0].examtype+'</div>'+
					 '<div class="mt-3 text-justify text-warning" id="text">'+data[0].newsHeader+'</div></div>'+'</a>'+
					
					 /* '<a href="'+base_url+'jsp/student/student module/blogfullpage.jsp?blogid='+data[i].newsBlogId+'" data-id='+data[i].newsBlogId+'  class="examboxlinks" id="jeeadvanced" >'+
					 '<h3>'+data[i].newsHeader+'</h3><hr style="border-bottom: 2px solid #24b662; width: 42px;margin-left: 0px;">'+
					 '<p style="color:black">'+cutdesp+'</p></a></div></div>
*/					
					 '</div></div>';
			    var count=0;
			 for(var i=0;i<data.length;i++){
				 
				 count++
				 var url =data[i].newsImage;
				var str =data[i].newsHeader;
				str = str.replace(/ {2,}/g, " ");
				var NewsDesp = data[i].newsDescription;
				 var cutdesp = NewsDesp.substr(0, 180);
				
				 appendata +='<div class=" row mb-2" style="display:flex;">'+
                    '<div class="col-md-4"><a id="blgss" data-videolink='+url+' onclick="viedomaindisplay(this,'+"'"+str+"'"+','+"'"+data[i].examtype+"'"+')"><img style="border-radius:2px"  id="smallimg" src="'+data[i].newsImage+'"   data-videolink='+url+' style="height:85px"></a></div>'+
                    '<div class="col-md-8">'+'<h5><a id="blgss" data-videolink='+url+' onclick="viedomaindisplay(this,'+"'"+str+"'"+','+"'"+data[i].examtype+"'"+','+"'"+data[i].newsBlogId+"'"+')">'+'<p class="text-justify">'+str+'</p></a></h5></div>'+
                    '</div>';
				 
				 if(count ==4){

		    			var v = document.getElementById("blogright"); 
			            v.className += "  scrolling"; 
				 }

			 }
			 $("#blogleft").empty("");
			 
			 $("#blogright").empty("");
			 $("#blogleft").append(appendata1);
			 $("#blogright").append(appendata);
		 },
		 error:function(){
			 //alert("Getting blog details failed");
		 }
		 })
}

function viedomaindisplay(elem,text,examtype,id){ 
	 
	 
		var url = $(elem).attr("data-videolink");
		$("#exmid").val("");
		$("#exmid").val(id);
		
$("#text").html("");
$("#text").html(text);

$("#type").html("");
$("#type").html(examtype);

			$("#leftthumb").attr("src", "");
			
			$("#leftthumb").attr("src", url);
			



			}
var blogidd="";
function viedomaindisplay1(eid){
	
	 blogidd=$("#exmid").val();
	
	if(blogidd=="" || blogidd==undefined || blogidd==null){
		
		blogidd=eid;
		
	}
	
	else{
			blogidd=blogidd;
		
	}

	$("#bgnav").attr("href", "");
	
	$("#bgnav").attr("href", base_url+'jsp/student/student module/blogcontent.jsp?blogid='+blogidd);
	

}

function getblogpageexamtypes(){
	var appendata = "";
	$.ajax({
		type: "GET",
		 url: base_url+"rest/newsblog/getLatestThreeNews",
		 contentType: 'application/json',
		  dataType:"json",
		 success: function(data){
			 for(var i=0;i<data.length;i++){
				 var NewsDesp = data[i].newsDescription;
				 var cutdesp = NewsDesp.substr(0, 180);
				 appendata += '<li class="col-12 col-md-6 col-lg-3" data-id='+data[i].newsBlogId+'><div class="cnt-block equal-hight" style="height: 250px;"><a href="'+base_url+'jsp/student/student module/blogfullpage.jsp?blogid='+data[i].newsBlogId+'" class="examboxlinks" id="jeeadvanced" ><h4>'+data[i].newsHeader+'</h4><div style="font-size:15px;text-align:left;"><p>'+cutdesp+'</p></div></a></div></li>';
			 }
			 
			 $("#blogexamtypes").append(appendata);
		 },
		 error:function(data){
			 //alert("Getting blog details failed");
		 }
		 })
}

function getnewsnotificationbyid(){
	var appendata = "";
	var newsBlogId = getParameterByName("blogid");
	$.ajax({
		type: "GET",
		 url: base_url+"rest/newsblog/getNewsbyid/"+newsBlogId,
		 contentType: 'application/json',
		  dataType:"json",
		 success: function(data){
			
				 var NewsDesp = data[0].newsDescription;
				 var cutdesp = NewsDesp.substr(0, 400);
				 
				 if(data[0].createdDate){
					 appendata += '<div class="card" style="margin-bottom:25px"><h5 class="card-header"><p>'+data[0].newsHeader+'</p><p>Date:<span>'+data[0].createdDate+'</span></p></h5><div class="card-body"><div style="color:black;letter-spacing:1px;"><p>'+cutdesp+'</p></div><button class="btn-hover color-6"><a href="'+base_url+'jsp/student/student module/blogcontent.jsp?blogid='+data[0].newsBlogId+'" style="color:#fff">Readmore</a></button></div></div>';
				 }else{
					 appendata += '<div class="card" style="margin-bottom:25px"><h5 class="card-header"><p>'+data[0].newsHeader+'</p><p>Date:<span>'+data[0].lastModifiedDate+'</span></p></h5><div class="card-body"><div style="color:black;letter-spacing:1px;"><p>'+cutdesp+'</p></div><button class="btn-hover color-6"><a href="'+base_url+'jsp/student/student module/blogcontent.jsp?blogid='+data[0].newsBlogId+'" style="color:#fff">Readmore</a></button></div></div>'; 
				 }
			 
			 
			 $("#halfnotification").append(appendata);
		 },
		 error:function(data){
			// alert("Getting blog content failed");
		 }
		 })
}




function getblogfullcontentbyid(){
	var appendata = "";
	var newsBlogId = getParameterByName("blogid");
	$.ajax({
		type: "GET",
		 url: base_url+"rest/newsblog/getNewsbyid/"+newsBlogId,
		 contentType: 'application/json',
		  dataType:"json",
		 success: function(data){
			
			 if(data[0].createdDate){
			 appendata += '<div style="display:flex; justify-content:center"><img src="'+data[0].newsImage+'" style="width:900px;height:400px"></div><div class="jumbotron jumbotron-fluid" style="background:white"><div class="container"><h1 class="display-4 animation-reveal">'+data[0].newsHeader+'</h1></br><p class="card-text animation-reveal delay-6 lead">Date & Time: <span>'+data[0].createdDate+'</span></p><div class="animation-reveal delay-6" style="color:black">'+data[0].newsDescription+'</div></div></div>';
			 }else{
	    	 appendata += '<img src="'+data[0].newsImage+'" style="width:900px;height:400px"><div class="jumbotron jumbotron-fluid" style="background:white"><div class="container"><h1 class="display-4 animation-reveal">'+data[0].newsHeader+'</h1></br><p class="card-text animation-reveal delay-5 lead">Date & Time: <span>'+data[0].lastModifiedDate+'</span></p><div class="animation-reveal delay-5" style="color:black">'+data[0].newsDescription+'</div></div></div>';
			 }
			 
			 $("#fullblogcontent").empty("");
			
			 $("#fullblogcontent").append(appendata);
		 },
		 error:function(data){
			 //alert("Getting blog full-content failed");
		 }
		 })
}		


function demoVideo(){
	var deVideo='';
	 deVideo += '<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">'+
  '<div class="modal-dialog modal-lg modal-dialog-centered">'+
   ' <div class="modal-content">'+
   '<div class="modal-header">'+
   
   '<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
     '<span aria-hidden="true">&times;</span>'+
   '</button>'+
 '</div>'+
      '<div class="card">'+
			/*'<iframe width="100%" height="600" src="https://www.youtube.com/embed/o4h0pwhXsdY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
		*/
      '<iframe width="100%" height="499" src="https://www.youtube.com/embed/6RSvDljkUHA?modestbranding=1&rel=0&showinfo=0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+					
			'</div>'+
    '</div>'+
  '</div>'+
'</div>';
	$("#demoViseo").empty(" ");
	 $("#demoViseo").append(deVideo);
}


function navigation(){
	
	var examtype=sessionStorage.getItem("examTypeIds");
	 
	if(examtype=="" || examtype==null || examtype==undefined){
		
		  window.location =base_url+"jsp/student/student module/catselect.jsp?ref=std";
		  	
	}
	else{
		  window.location = base_url+"jsp/student/student module/studenthome.jsp";
		  
	}
	sessionStorage.setItem('isOtherLogin','false');


}