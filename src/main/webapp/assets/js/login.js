/**
 * 
 */

$('#usersubmission').submit(function(e){
	  e.preventDefault();
	});

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}


function setRefVal(v){
	var form = $("#usersubmission");
	
		var redirecturl = getParameterByName('redirect_url');
		if(redirecturl !="" && redirecturl !=null){
	}else{
		var redirecturl = "";
	}
	
	switch(v){
		case 'admin':
			form.attr('action','otp.jsp?ref=ad&redirecturl='+redirecturl+'');
			break;
		case 'academichead':
			form.attr('action','otp.jsp?ref=ah');
			break;
		case 'admintp':
			form.attr('action','otp.jsp?ref=atp');
			break;
		case 'adminzs':
			form.attr('action','otp.jsp?ref=azs');
			break;
		case 'dean':
			form.attr('action','otp.jsp?ref=dn');
			break;
		case 'sme':
			form.attr('action','otp.jsp?ref=sm');
			break;
		case 'superadmin':
			form.attr('action','otp.jsp?ref=sad');
			break;
		case 'superdean':
			form.attr('action','otp.jsp?ref=sdn');
			break;
	}
}
	 
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
   document.cookie = cname + "=" + cvalue + "; " + expires + "; path=/";
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

//login page 

function validateAdmin(){
	$("#loginBtn").prop('disabled',true);
	
	var userType = $("#userType").val();
	var mobileNumber =$("#mobileNumber").val();
	var password   =$("#password").val();
	var pinNumber  =$("#pinNumber").val();
	
	if(userType == ""){
		alert("user types should be filled");
		$("#loginBtn").prop('disabled',false);
		return false;
	}
	
	if(mobileNumber == ""){
		alert("plese enter mobilenumber");
		$("#loginBtn").prop('disabled',false);
		return false;
	}
	if(password == ""){
		alert("plese enter password");
		$("#loginBtn").prop('disabled',false);
		return false;
	}
	
	if(pinNumber == ""){
		alert("plese enter pinNumber");
		$("#loginBtn").prop('disabled',false);
		return false;
	}
	
		var inputData = '{"userType":"'+userType+'","mobileNumber":"'+mobileNumber+'","password":"'+password+'","pinNumber":"'+pinNumber+'"}';
		
		$.ajax({
			url: base_url+'rest/academichead/v1/login',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputData,
			  success: function(data){
		    	  
		    	  //set cookie
		    	  var jsonData = {};
		    	  jsonData['userType'] = data.userType;
		    	  jsonData['status'] = data.status;
		    	  jsonData['deanid'] = data.deanid;
		    	  jsonData['adminId'] = data.adminId;
		    	  jsonData['academicheadid'] = data.academicheadid;
		    	  jsonData['superdeanid'] = data.superdeanid;
		    	  jsonData['smeid'] = data.smeid;
		    	
		    	  sessionStorage.setItem("photo", data.photo);
		    	  sessionStorage.setItem("accademicpass", password);
		    	  
		    	  if(jsonData.userType === "sme"){
		    		  jsonData['havework'] = data.havework;
		    		  
		    	  }
		    	  if(data.name !== "" && data.name !== null){
		    		  jsonData['name'] = data.name;
		    	  }
		    	  if(data.designation !== "" && data.designation !== null){
		    		  jsonData['designation'] = data.designation;
		    	  }
		    	  
		    	
		    	  
		    	  setCookie("LoginData",btoa(JSON.stringify(jsonData)),2);
		    	  
		    	//get cookie
		    	  var  loginData ="";
		    	  try {
			    	  loginData = JSON.parse(atob(getCookie("LoginData")));
			    	  console.log("loginData try deanid"+loginData.deanid);
			    	  console.log("loginData try academicheadid"+loginData.academicheadid);
			    	  console.log("loginData try superdeanid"+loginData.superdeanid);
			    	  console.log("loginData try smeid"+loginData.smeid);
			    	  sessionStorage.setItem('displayed',false);
		    	  } catch (e) {
		    		  console.log("loginData catch"+loginData);
		    	  }
		    	  
		    	  /* delete loginData['status'];*/
		    	  /*clear Cookie 
		    	   setCookie("LoginData", {}, 0); */
		    	 
		    	
		    	  
		    	  if(data.status == true){
		    		  
		    		  setRefVal(loginData.userType);
		    		  generateotpforadmin();
		    		  //$('#usersubmission')[0].submit();
		    		  
		    		 
		    	  }
		    	  else{
		    		  
		    		  $.toast({
		  				    text: data.message, // Text that is to be shown in the toast
		  				    heading: 'Login Error', // Optional heading to be shown on the toast
		  				    icon: 'error', // Type of toast icon
		  				    showHideTransition: 'plain', // fade, slide or plain
		  				    allowToastClose: true, // Boolean value true or false
		  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  				    textAlign: 'left',  // Text alignment i.e. left, right or center
		  				    loader: true,  // Whether to show loader or not. True by default
		  				    loaderBg: '#9EC600',  // Background color of the toast loader
		  				    beforeShow: function () {}, // will be triggered before the toast is shown
		  				    afterShown: function () {}, // will be triggered after the toat has been shown
		  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
		  				    afterHidden: function () {
		  				    	$("#loginBtn").prop('disabled',false);
		  				    }  // will be triggered after the toast has been hidden
		  				});
		    		  
		    		  return false;
		    	  }
		    	
		    	 // window.location = base_url+"/jsp/master/otp.jsp";

		    	  
		    	  },
		 
		    	  
		    	  error:function(data){
		    		  $.toast({
		  				    text: 'Failed to login!', // Text that is to be shown in the toast
		  				    heading: 'Login Error', // Optional heading to be shown on the toast
		  				    icon: 'error', // Type of toast icon
		  				    showHideTransition: 'plain', // fade, slide or plain
		  				    allowToastClose: true, // Boolean value true or false
		  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  				    
		  				    
		  				    
		  				    textAlign: 'left',  // Text alignment i.e. left, right or center
		  				    loader: true,  // Whether to show loader or not. True by default
		  				    loaderBg: '#9EC600',  // Background color of the toast loader
		  				    beforeShow: function () {}, // will be triggered before the toast is shown
		  				    afterShown: function () {}, // will be triggered after the toat has been shown
		  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
		  				    afterHidden: function () {
		  				    	$("#loginBtn").prop('disabled',false);
		  				    }  // will be triggered after the toast has been hidden
		  				});
		    			return false;
				  }
		   
		});
}
function generateotpforadmin(){
		var email = null;
		var mobile = $("#mobileNumber").val();
		 
		var input ={
			 "email" : email,
			 "mobilenumber" : mobile
			};
		
		var inputdata = JSON.stringify(input);
		$.ajax({
			async: false,
			url: base_url+'rest/student/v1/sendotp',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputdata,
		    success: function(data){
		    	
		    	sessionStorage.setItem("email", email);
		    	sessionStorage.setItem("mobile", mobile);
		    	sessionStorage.setItem("details", data.details);
		    	alert(data.message)
		    	$.toast({
					    text: data.message, // Text that is to be shown in the toast
					    heading: data.message, // Optional heading to be shown on the toast
					    icon: 'success', // Type of toast icon
					    showHideTransition: 'plain', // fade, slide or plain
					    allowToastClose: true, // Boolean value true or false
					    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
					    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
					    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
					    textAlign: 'left',  // Text alignment i.e. left, right or center
					    loader: true,  // Whether to show loader or not. True by default
					    loaderBg: '#9EC600',  // Background color of the toast loader
					    beforeShow: function () {}, // will be triggered before the toast is shown
					    afterShown: function () {}, // will be triggered after the toat has been shown
					    beforeHide: function () {
					    	
					    	$('#usersubmission')[0].submit();

					    }, // will be triggered before the toast gets hidden
					    afterHidden: function () {
					    	
					    }  // will be triggered after the toast has been hidden
					});
		    },
			error:function(data){
				
				$.toast({
  				    text: data.message, // Text that is to be shown in the toast
  				    heading: 'Login Error', // Optional heading to be shown on the toast
  				    icon: 'error', // Type of toast icon
  				    showHideTransition: 'plain', // fade, slide or plain
  				    allowToastClose: true, // Boolean value true or false
  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
  				    textAlign: 'left',  // Text alignment i.e. left, right or center
  				    loader: true,  // Whether to show loader or not. True by default
  				    loaderBg: '#9EC600',  // Background color of the toast loader
  				    beforeShow: function () {}, // will be triggered before the toast is shown
  				    afterShown: function () {}, // will be triggered after the toat has been shown
  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
  				    afterHidden: function () {
  				    	$("#loginBtn").prop('disabled',false);
  				    }  // will be triggered after the toast has been hidden
  				});
    		  
    		  return false;
			}
			
		})
		

}
function regenerateotpforadmin(){
	var email = sessionStorage.getItem("email");
	var mobile =sessionStorage.getItem("mobile");
	var input ={mobilenumber: mobile,
					email:email};
	
	
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/sendotp',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	alert(data.message)
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage)
		}
		
	})
	
}
function validateotpforadmin(){
	var otpbtn = $("#genrat").val();
	var details = sessionStorage.getItem("details");
	var ref = getParameterByName('ref');
	input={
			otp:otpbtn,
			sessionId:details
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/verifyotp',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	$.toast({
			    text: "OTP Validated!", // Text that is to be shown in the toast
			    heading: "Success", // Optional heading to be shown on the toast
			    icon: 'success', // Type of toast icon
			    showHideTransition: 'plain', // fade, slide or plain
			    allowToastClose: true, // Boolean value true or false
			    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
			    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
			    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
			     textAlign: 'left',  // Text alignment i.e. left, right or center
			    loader: true,  // Whether to show loader or not. True by default
			    loaderBg: '#9EC600',  // Background color of the toast loader
			    beforeShow: function () {}, // will be triggered before the toast is shown
			    afterShown: function () {
			    	var ref = getParameterByName('ref');
					var redirecturl = getParameterByName('redirecturl');
						if(redirecturl !="" && redirecturl !=null){
						window.location = ReDirect_Url+redirecturl;
					}else{
						window.location = base_url + "jsp/"+refResolver(ref);
					}
			    //	window.location = base_url + "jsp/"+refResolver(ref);
			    	
			    }, // will be triggered after the toat has been shown
			    beforeHide: function () {
			    	
			    }, // will be triggered before the toast gets hidden
			    afterHidden: function () {
			    	
			    }  // will be triggered after the toast has been hidden
			});
		
	    	//window.location = base_url +"jsp/student/student module/index.jsp";		//move later to category page
	    },
		error:function(data){
			$.toast({
			    text: 'Enter correct OTP', // Text that is to be shown in the toast
			    heading: 'Invalid OTP', // Optional heading to be shown on the toast
			    icon: 'error', // Type of toast icon
			    showHideTransition: 'plain', // fade, slide or plain
			    allowToastClose: true, // Boolean value true or false
			    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
			    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
			    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
			    
			    
			    
			    textAlign: 'left',  // Text alignment i.e. left, right or center
			    loader: true,  // Whether to show loader or not. True by default
			    loaderBg: '#9EC600',  // Background color of the toast loader
			    beforeShow: function () {}, // will be triggered before the toast is shown
			    afterShown: function () {
			    	
			    }, // will be triggered after the toat has been shown
			    beforeHide: function () {}, // will be triggered before the toast gets hidden
			    afterHidden: function () {
			    	$("#otpbtn").prop('disabled',false);
			    }  // will be triggered after the toast has been hidden
			});
		return false;
			
		}
		
	})

	
}


function refResolver(r){
	switch(r){
		case 'ah':
			return 'academic_head/status.jsp';
		case 'ad':
			return 'admin/creation/categories.jsp';
		case 'atp':
			return 'admin/test_post/test_post_history_all_posts.jsp';
		case 'azs':
			return 'admin/studyzone/chapterbasic.jsp';
		case 'sm':
			return 'sme/questionstatus/status.jsp';
		case 'dn':
			return 'dean/questionstatus/status.jsp';
		case 'sad':
			return 'master/default.jsp';
		case 'sdn':
			return 'master/default.jsp';
		
	}
}
function otpgenerate(){
	$("#otpbtn").prop('disabled',true);
	
	var optval  =  $("#genrat").val();
	
	if(optval !== ""){
		var ref = getParameterByName('ref');
		var redirecturl = getParameterByName('redirecturl');
			/*if(redirecturl !="" && redirecturl !=null){
			window.location = ReDirect_Url+redirecturl;
		}else{
			window.location = base_url + "jsp/"+refResolver(ref);
		}*/
		
		
		validateotpforadmin();
		
	} else {
		$.toast({
			    text: 'Enter OTP', // Text that is to be shown in the toast
			    heading: 'OTP empty', // Optional heading to be shown on the toast
			    icon: 'error', // Type of toast icon
			    showHideTransition: 'plain', // fade, slide or plain
			    allowToastClose: true, // Boolean value true or false
			    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
			    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
			    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
			   textAlign: 'left',  // Text alignment i.e. left, right or center
			    loader: true,  // Whether to show loader or not. True by default
			    loaderBg: '#9EC600',  // Background color of the toast loader
			    beforeShow: function () {}, // will be triggered before the toast is shown
			    afterShown: function () {
			    	
			    }, // will be triggered after the toat has been shown
			    beforeHide: function () {}, // will be triggered before the toast gets hidden
			    afterHidden: function () {
			    	$("#otpbtn").prop('disabled',false);
			    }  // will be triggered after the toast has been hidden
			});
		return false;
	}
}

