
function create_faculty(){

	var faculty= $("#faculty_name").val();
	var mobilenumbers=$("#mobilenumber").val();
	var passwords= $("#password").val();
	var address_1= $("#address_1").val();
	var address_2= $("#address_2").val();
	var countrys= $("#country").val();
/*	var states= $("#state").val();*/
/*var states= $("#state option:selected").text(); 
	var city= $("#city").val();*/
	
	var states= $("#state option:selected").text();
	var stateId= $("#state").val();
	var cityId= $("#city").val();
	var city= $("#city option:selected").text(); 
	var details=$("#details").val();
	var institute= $("#institute").val();
	
	var facultyTitle1= $("#facultyTitle").val();
	var facultyTitle = facultyTitle1.replace(/\n/g, ' ');
	console.log(facultyTitle);
	
	var experience= $("#experience").val();
	var experience1=parseInt(experience);

	/*var codes= $("#code").val();
	var groups= $("#group").val();*/
	var selectsub=$("#selectsub").val();
	
	
	if(faculty==""||faculty==null){
  		
  		alert("Please enter the faculty");
  		return false;
  	}
if(mobilenumbers==""||mobilenumbers==null){
  		
  		alert("Please enter the Mobile Number");
  		return false;
  	} 

if(passwords==""||passwords==null){
  		
  		alert("Please enter the Password");
  		return false;
  	} 

if(address_1==""||address_1==null){
  		
  		alert("Please enter the Address - 1");
  		return false;
  	} 

/*if(address_2==""||address_2==null){
  		
  		alert("Please enter the Address - 2");
  		return false;
  	} 
*/
if(countrys==""||countrys==null){
  		
  		alert("Please enter the Country");
  		return false;
  	} 

if(states==""||states==null){
  		
  		alert("Please enter the State");
  		return false;
  	} 

if(city==""||city==null){
  		
  		alert("Please enter the City");
  		return false;
  	} 


 
if(selectsub==""||selectsub==null){
  		
  		alert("Please select subject");
  		return false;
  	} 
if(facultyTitle1==""||facultyTitle1==null){
  		
  		alert("Please enter the Faculty Description");
  		return false;
  	} 
	
		var input ={
		  
			"faculty":faculty,
		    "phone":mobilenumbers,
			"password":passwords,
			"address1":address_1,
			"address2":address_2,
		     "country":countrys,
		     /*"state":states,
		     "city":city,*/
			"state":states,
		     "city":city,
		     "stateId":stateId,
		     "cityId":cityId,
		 	"details":details,
		     "yrsOfExperience":experience1,
			 "institute":institute,
			"subjectid":selectsub,
			"facultyTitle":facultyTitle
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/faculty/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("faculty.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}


/*

 function getchap(){
		  var examid="1";
		  
			var examtype =  {
					
					"examTypeId":examid,
					
					}


			var examids = JSON.stringify(examtype);

		$.ajax({
	  type: "POST",
	  dataType: "json",
	  async:false,
	  contentType: 'application/json', 
	
	  url: base_url+'rest/subject/v1/getSubjects',
	  data:examids,
				success:function(data){
					 var tabledata = '';
					 for(var i =0; i<data.length;i++){
						 
					 
		 			tabledata +='<option style="background:#fff" value="'+data[i].id+'">'+data[i].subject+'</option>';
		 			
					 }
				  $("#selectsub").empty("");
			        $("#selectsub").append('<option style="background:#fff" value="";>---Select---</option>'); 
					 $("#selectsub").append(tabledata); 
					
				},
					
					error:function(){
						  alert("");
					}
				});
				
		 
	 }
*/


// NEW SUBJECT WISE

function getchap(){
	
var stdsalesids ={
    "standardId":1
   
	}
var standstr = JSON.stringify(stdsalesids);

$.ajax({
	url: base_url+'rest/subject/sqb/getAllSubbyStdId',
	type:"POST",
	dataType: "json",
	contentType:'application/json',
	data: standstr,
				success:function(data){
					 var tabledata = '';
					 for(var i =0; i<data.length;i++){
						 
					 
		 			tabledata +='<option style="background:#fff" value="'+data[i].SubjectId+'">'+data[i].Subject+'</option>';
		 			
					 }
				  $("#selectsub").empty("");
			        $("#selectsub").append('<option style="background:#fff" value="";>---Select---</option>'); 
					 $("#selectsub").append(tabledata); 
					
				},
					
					error:function(){
						  alert("");
					}
				});
				
		 
	 }



function selectstates(){

	$.ajax({
		url : base_url+"rest/admin/getstates",
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';

			}

			$("#state").empty("");
			$("#state").append('<option value="0";>Select States </option>'); 
			$('#state').append(statesdata);
			facultyget();
		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});

}


var states="";

$('#state').change(function(){
	
	
	
	states =$("#state").val();
	
	selectcity(states);

});


function selectcity(states,cityId){


	$.ajax({
		url : base_url+"rest/admin/getcities/"+states,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
		
			var statesdata="";
		
			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';
				
			}
			$("#city").empty("");
			$("#city").append('<option value="0";>Select City </option>'); 
			$('#city').append(statesdata);
			
			$('select[name="city"]').find('option[value="'+cityId+'"]').attr("selected",true);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});
}





$(document).ready(function(){
	
	getchap();
	
	

	selectstates();
	
	 //check btn click with localstorage
	 
	 var clkbtnval = localStorage.getItem("chkbtn");
	 console.log("clickeed butn : "+clkbtnval);
	 
	 if(clkbtnval != null && clkbtnval != ""){
		 
		 if(clkbtnval == "addbtn"){
			 /*$('#submit').prop('disabled', false);
			 $('#update').prop('disabled', true);*/
			 
			 $('#submit').show();
			 $('#update').hide();
			 
		 }else{
			 /*$('#submit').prop('disabled', true);
			 $('#update').prop('disabled', false);*/
			 
			 $('#update').show();
			 $('#submit').hide();
			 
		 }
	 }
	
})



function facultyget(){
	 
  var id = localStorage.getItem("id"); 
	
	console.log(id);
	
	$.ajax({
		  url : base_url+"rest/faculty/getFaculty/"+id,
		 type:"GET",
		 async:false,
		  dataType:"json",
		  contentType:'application/json',
		  
			  success: function(data){
				  
				  var state=data.stateId;
				  

				  var cityId1=data.cityId;
				  
				  var cityId=cityId1.toString()
				  
				  selectcity(state,cityId);
				  
				  
				  
				/* populateCountries("country", "state");*/
				/* 
				 $('select[name="sub"]').find('option[value="'+data.subjectid+'"]').attr("selected",true);
                 $('select[name="state"]').find('option[value="'+data.state+'"]').attr("selected",true);
*/
			$("#faculty_name").val(data.faculty);
			$("#mobilenumber").val(data.phone);
			$("#password").val(data.password);
			$("#address_1").val(data.address1);
			$("#address_2").val(data.address2);
			$("#country").val(data.country);
			$("#details").val(data.details);
			
			$("#institute").val(data.institute);
			$("#experience").val(data.yrsOfExperience);
			
		/*	$("#city").val(data.city);*/
			/*var stid=data.state;
			var stid1=stid.toString();
			$("#state").html(stid1);*/
			
			/*$('select[name=state]').val(data.state);
			$('select[name=city]').val(data.city);
			$('select[name=sub]').val(data.state);*/
			
			 $('select[name="sub"]').find('option[value="'+data.subjectid+'"]').attr("selected",true);
                 $('select[name="state"]').find('option[value="'+data.state+'"]').attr("selected",true);
			 // $('select[name="city"]').find('option[value="'+data.city+'"]').attr("selected",true);
			/*var stids=data.city;
			var stids1=stids.toString();
			$("#city").html(stids1);*/
			
			/*$("#code").val(data.code);
			$("#group").val(data.group);*/
			
			
		/*	$("#selectsub").val();
			*/
			/*$("#state").val(data.state);*/
			
			
			$("#facultyTitle").val(data.title);
			
			
			
			  
      
			 },
	    	  
		  error:function(data){
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }
	    	  
});

	 

	 };

$("#update").click(function(){
	
	
	
	var id = localStorage.getItem("id");
	var faculty= $("#faculty_name").val();
	var mobilenumbers=$("#mobilenumber").val();
	var passwords= $("#password").val();
	var address_1= $("#address_1").val();
	var address_2= $("#address_2").val();
	var countrys= $("#country").val();
	/*var states= $("#state").val();*/
	/*var states= $("#state option:selected").text(); 
	var city= $("#city").val();*/
	var states= $("#state option:selected").text();
	var stateId= $("#state").val();
	var cityId= $("#city").val();
	var city= $("#city option:selected").text(); 
	/*var codes= $("#code").val();
	var groups= $("#group").val();*/
	var institute= $("#institute").val();
	var experience= $("#experience").val();
	var experience1=parseInt(experience);
	var selectsub=$("#selectsub").val();
	
	var facultyTitle1= $("#facultyTitle").val();
	var facultyTitle = facultyTitle1.replace(/\n/g, ' ');
	console.log(facultyTitle);
	
	var details=$("#details").val();
	
	if(faculty==""||faculty==null){
  		
  		alert("Please enter the faculty");
  		return false;
  	}
if(mobilenumbers==""||mobilenumbers==null){
  		
  		alert("Please enter the Mobile Number");
  		return false;
  	} 

if(passwords==""||passwords==null){
  		
  		alert("Please enter the Password");
  		return false;
  	} 

if(address_1==""||address_1==null){
  		
  		alert("Please enter the Address - 1");
  		return false;
  	} 

/*if(address_2==""||address_2==null){
  		
  		alert("Please enter the Address - 2");
  		return false;
  	} 
*/
if(countrys==""||countrys==null){
  		
  		alert("Please enter the Country");
  		return false;
  	} 

if(states==""||states==null){
  		
  		alert("Please enter the State");
  		return false;
  	} 

if(city==""||city==null){
  		
  		alert("Please enter the City");
  		return false;
  	} 


 
if(selectsub==""||selectsub==null){
  		
  		alert("Please select subject");
  		return false;
  	} 
if(facultyTitle1==""||facultyTitle1==null){
  		
  		alert("Please enter the Faculty Description");
  		return false;
  	} 
/*if(details==""||details==null){
  		
  		alert("Please enter the Details");
  		return false;
  	} */
	
		var input ={
		    "id":id,
			"faculty":faculty,
		    "phone":mobilenumbers,
			"password":passwords,
			"address1":address_1,
			"address2":address_2,
		     "country":countrys,
		     /*"state":states,
		     "city":city,*/
			"state":states,
		     "city":city,
		     "stateId":stateId,
		     "cityId":cityId,
		 	"details":details,
		     "yrsOfExperience":experience1,
				"institute":institute,
			"subjectid":selectsub,
			"facultyTitle":facultyTitle
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/faculty/update",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("faculty.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
			});



	});
