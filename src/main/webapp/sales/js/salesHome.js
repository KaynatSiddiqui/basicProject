		
function mobliNmuber(){

	var phoneNumber = $("#sendmobile_number").val();

$.ajax({
	  url : base_url+"rest/salesman/getstudent/"+phoneNumber,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
		  $("#studentProfile_card").empty("");
	      $("#studentProfile_card").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
	     },
	  success:function(data){
		  
var studentProfile_carddata='';
		 								studentProfile_carddata +='<div class="card_phonecards" style=" box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);background-color:white;border-radius:40px 40px 40px 0px">'+
          									'<div class="row"><div class="col-md-8">'+
        											'<form>'+
												'<div class="row">'+
														 '<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.name +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Email Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.emailid+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.mobilenumber+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-map-marker prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">City</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.city+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Standard Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" >'+data.standardName+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-pie-chart prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Category Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.categoryName+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-edit prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Registered Date</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.insertedDate+'</div>'+
														'</div>'+
													
          											'</div>'+
													'<div class="row mb-20">'+
														'<div class="col-md-8 col-md-offset-5">'+
														'<div class="button-list mt-25">'+
															'<a href="#" onclick="proceedData()" class="btn  btn-primary">Proceed</a>'+
														'</div>'+
														'</div>'+
													'</div>'+
          									'</form></div>'+

												'<div class="col-md-4">'+
												'<img id="img" height="150" src="/assets/images/students/default.png" class="student_profile_img">'+
												'</div></div></div>';
					
				sessionStorage.setItem('studentid', data.studentid);    

		
					
					$("#studentProfile_card").empty("");
    	
    	  			$('#studentProfile_card').append(studentProfile_carddata);
			
		},
	  
	  error:function(data){
	
		$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");
    	
      }
	 
});
	 

 }

		function proceedData(){
			
			window.location = base_url+"sales/jsp/salesman_offer.jsp";
		}

