var mobileNumber=sessionStorage.getItem("phoneNumber");

if(mobileNumber==""|| mobileNumber==null || mobileNumber==undefined){
	
	window.location.assign("faculty_login.jsp");
	
}