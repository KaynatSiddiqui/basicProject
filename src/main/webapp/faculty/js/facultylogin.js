



$(".user").focusin(function(){
  $(".inputUserIcon").css("color", "#e74c3c");
}).focusout(function(){
  $(".inputUserIcon").css("color", "white");
});

$(".pass").focusin(function(){
  $(".inputPassIcon").css("color", "#e74c3c");
}).focusout(function(){
  $(".inputPassIcon").css("color", "white");
});


function myFunction() {
	  var x = document.getElementById("videpass");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
function sub(){

var num=$(".user").val();


	if(num==""||num==null){
  		
  		alert("Please Enter the Mobile Number");
  		return false;
  	} 



var passwrd=$(".pass").val();

if(passwrd==""||passwrd==null){
  		
  		alert("Please Enter the Password");
  		return false;
  	} 

var input={
			phone:num,
			password:passwrd
	}
	var inputdata = JSON.stringify(input);
	
	console.log(inputdata);


$.ajax({
		    url: base_url+'rest/faculty/login',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputdata,
			beforeSend: function(){
		  $("#facultyLogin").empty("");
	      $("#facultyLogin").html('<div class="loading-indicator"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>');
	     },
		    success: function(data){
			 sessionStorage.setItem("facultyId",data.id);
		 		sessionStorage.setItem("facultyname",data.faculty);
				sessionStorage.setItem("subjectid",data.subjectid);
				sessionStorage.setItem("phoneNumber",data.phone);
				sessionStorage.setItem("facultyTitle",data.facultyTitle);
				sessionStorage.setItem("subjectName",data.details);
				 /*location.assign("salesHome.jsp");*/
				/*localStorage.setItem("phone",data.phone);
				localStorage.setItem("address1",data.address1);
				localStorage.setItem("country",data.country);
				localStorage.setItem("state",data.state);
				localStorage.setItem("city",data.city);
				localStorage.setItem("subjectid",data.subjectid);
				localStorage.setItem("details",data.details);
				localStorage.setItem("facultyTitle",data.facultyTitle);*/
				
			/*	sessionStorage.setItem("facultyTitle",data.facultyTitle);*/
				
		    /*	localStorage.setItem("value",data.value);*/
				window.location = base_url+"faculty/jsp/facultyHome.jsp";
		 
			},
		    	
error:function(data){
	alert(data.responseJSON.errorMessage);
	  $("#facultyLogin").empty("");
	  $("#facultyLogin").html('<i class="fa fa-lock"></i>');
		}
		
	
	
})


}


function lazyLoad(target) {
  const obs = new IntersectionObserver((entries, observer) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const img = entry.target;
        const src = img.getAttribute('data-lazy');

        img.setAttribute('src', src);
        img.classList.add('fadeIn');

        observer.disconnect();
      }
    });
  });
  obs.observe(target);
}
