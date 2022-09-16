const $button  = document.querySelector('#sidebar-toggle');
const $wrapper = document.querySelector('#wrapper');

$button.addEventListener('click', (e) => {
  e.preventDefault();
  $wrapper.classList.toggle('toggled');
});

	var current = document.getElementById('default');

	function highlight(el){
	 if (current != null)
	     {
	         current.className = "";
	     }
	     el.className = "active";
	     current = el;
	  };

var facultyName=sessionStorage.getItem("facultyname");
	  if(facultyName =="" || facultyName ==null){
		  
	  }
	  else{
		  
		  $("#facultyname").html(facultyName); 
	  }
	  

 function logoutadmin(){
	sessionStorage.removeItem("facultyname");
	/*window.location.assign("salesman_login.jsp")*/
	window.location = base_url+"faculty/jsp/faculty_login.jsp";
	
	
}
				/*var phoneNumber=sessionStorage.getItem("phone");
				var address1=localStorage.getItem("address1");
				var country=localStorage.getItem("country");
				var state=localStorage.getItem("state");
				var city=localStorage.getItem("city");
				var subjectid=localStorage.getItem("subjectid");
				var details=localStorage.getItem("details");*/
	

 function showimages(){
	
	var facultyid=sessionStorage.getItem("facultyId")
	
	$.ajax({
	  url : base_url+"rest/faculty/getFaculty/"+facultyid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',

		beforeSend: function(){
		  $("#imags").empty("");
	      $("#imags").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
	     },
	  
	  success:function(data){
	    		
	    		var tabdata="";
	    		
	    		
				$("#facultyName").html(facultyName)
				tabdata +='<div class="card_phonecards" style=" box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);background-color:#778899;border-radius:40px 40px 40px 0px;color:white">'+
          									'<div class="row"><div class="col-md-9">'+
        											'<form>'+
												'<div class="row" style="padding:10px;">'+
														 /*'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+facultyName+'</div>'+
														'</div>'+*/
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-subscript prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Subject</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>';
															if(data.subjectid==1){
																
															
															tabdata +='<div class="col-md-6">Physics</div>';
															}
															else if(data.subjectid==2){
																tabdata +='<div class="col-md-6">Chemistry</div>';
															}
															else if(data.subjectid==3){
																tabdata +='<div class="col-md-6">Mathematics</div>';
															}
														tabdata +='</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-mobile prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.phone+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-university prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Institute</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.institute+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-cogs prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Experience</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.yrsOfExperience+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-map-marker prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Country</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.country+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-map-marker prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">State</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.state+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-map-marker prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">City</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6" >'+data.city+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-pie-chart prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Address</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.address1+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															'<i class="active fa fa-edit prefix" style="color:#FFE4E1;"></i>'+
																'<label class="control-label mb-5 bold">Bank Details</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-6">'+data.details+'</div>'+
														'</div>'+
													
          											'</div>'+
												/*	'<div class="row mb-20">'+
														'<div class="col-md-8 col-md-offset-5">'+
														'<div class="button-list mt-25">'+
															'<a href="#" onclick="proceedData()" class="btn  btn-primary">Proceed</a>'+
														'</div>'+
														'</div>'+
													'</div>'+*/
          									'</form></div>'+

												'<div class="col-md-3">'+
												'<img id="img" height="120" src="/assets/images/students/default.png" class="student_profile_img">'+
												'</div></div></div>';
	    			 

							


	    		 		$("#imags").empty();
						 $('#imags').append(tabdata); 
	    		    	
	    		
	    }

	
	});
	}