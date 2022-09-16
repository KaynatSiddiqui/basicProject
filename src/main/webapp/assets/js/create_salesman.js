
function create_salesMan(){

	var salesMans= $("#salesMan").val();
	var mobilenumbers=$("#mobilenumber").val();
	var passwords= $("#password").val();
	var address_1= $("#address_1").val();
	var address_2= $("#address_2").val();
	var countrys= $("#country").val();
	var states= $("#state option:selected").text();
	var stateId= $("#state").val();
	var cityId= $("#city").val();
	var city= $("#city option:selected").text(); 
	/*var codes= $("#code").val();
	var groups= $("#group").val();*/
	var value=$("#value").val();
	var values=parseInt(value);
	var details=$("#details").val();
	var percentage=$("#percentage").val();
	var totalemi=$("#emi").val();
	
	if(salesMans==""||salesMans==null){
  		
  		alert("Please enter the Sales Man");
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


if(percentage==""||percentage==null){
		
		alert("Please enter the percentage");
		return false;
	} 
 
if(value==""||value==null){
  		
  		alert("Please enter the Value");
  		return false;
  	} 

if(totalemi==""||totalemi==null  || totalemi=="0"){
	
	alert("Please select emi option");
	return false;
}

else  if(totalemi=="true"){

totalemi=true
}

else  if(totalemi=="false"){

totalemi=false
}
/*if(details==""||details==null){
  		
  		alert("Please enter the Details");
  		return false;
  	} */
	
		var input ={
		  
			"salesMan":salesMans,
		    "phone":mobilenumbers,
			"password":passwords,
			"address1":address_1,
			"address2":address_2,
		     "country":countrys,
		     "state":states,
		     "city":city,
		     "stateId":stateId,
		     "cityId":cityId,
		   /* "code": codes,
				"group":groups,*/
			"value":values,
			"details":details,
			"emi":totalemi,
			"percentage":percentage
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/salesman/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("salesman.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
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

			
			getsalesman();
		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});

}




var states="";

$('#state').change(function(){


	states = $('#state').val();



	selectcity(states);

});




function selectcity(states,cityId){


	$.ajax({
		url : base_url+"rest/admin/getcities/"+states,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';
				
			
			//$("#city").val(states).attr("selected",true);
				

			}
			
			

			$("#city").empty("");
			$("#city").append('<option value="0";>Select City</option>'); 
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
	 
	 
	 
	 		
	 });
	 



function getsalesman(){
	 
  var id = localStorage.getItem("id"); 
	
	console.log(id);
	
	$.ajax({
		  url : base_url+"rest/salesman/getsalesMan/"+id,
		 type:"GET",
		 async:false,
		 dataType:"json",
		 contentType:'application/json',
		  
			  success: function(data){
				  
				  var state=data.stateId;
				  
				  var cityId1=data.cityId;
				  
				  var cityId=cityId1.toString()
				  
				  selectcity(state,cityId);
				  
				
				
			$("#salesMan").val(data.salesMan);
			$("#mobilenumber").val(data.phone);
			$("#password").val(data.password);
			$("#address_1").val(data.address1);
			$("#address_2").val(data.address2);
			$("#country").val(data.country);
			
		
			//var stid=data.stateId;
			//var stid1=stid.toString();
			
			$("#state").val(data.stateId);
			
			//var stids=data.cityId;
			//var stids1=stids.toString();
			
			//$("#city").val(data.cityId);
		    
			/*$("#code").val(data.code);
			$("#group").val(data.group);*/
			$("#value").val(data.value);
			
			$("#details").val(data.details);
                  if(data.emi == true){
				
				$("#emi").val("true");
				
			}
			
			
			if(data.emi ==false){
				
				$("#emi").val("false");
			}
			
			
			$("#percentage").val(data.percentage);
			
		 },
	    	  
		  error:function(data){
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }
			
	    	  
});

} 
	

$("#update").click(function(){
	
	
	
	var id = localStorage.getItem("id");
	var salesMans= $("#salesMan").val();
	var mobilenumbers=$("#mobilenumber").val();
	var passwords= $("#password").val();
	var address_1= $("#address_1").val();
	var address_2= $("#address_2").val();
	var countrys= $("#country").val();
	var states= $("#state option:selected").text();
	var stateId= $("#state").val();
	var cityId= $("#city").val();
	var city= $("#city option:selected").text(); 
	/*var codes= $("#code").val();
	var groups= $("#group").val();*/
	var value=$("#value").val();
	var values=parseInt(value);
	var details=$("#details").val();
	var percentage=$("#percentage").val();
	var totalemi=$("#emi").val();
	if(salesMans==""||salesMans==null){
  		
  		alert("Please enter the Sales Man");
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


if(percentage==""||percentage==null){
		
		alert("Please enter the percentage");
		return false;
	} 
 
if(value==""||value==null){
  		
  		alert("Please enter the Value");
  		return false;
  	}


if(totalemi==""||totalemi==null  || totalemi=="0"){
		
		alert("Please select emi option");
		return false;
	}


else  if(totalemi=="true"){
	
	totalemi=true
}

else  if(totalemi=="false"){
	
	totalemi=false
}
/*if(details==""||details==null){
  		
  		alert("Please enter the Details");
  		return false;
  	} */
	
		var input ={
				"id":id,
			"salesMan":salesMans,
		    "phone":mobilenumbers,
			"password":passwords,
			"address1":address_1,
			"address2":address_2,
		     "country":countrys,
		     "state":states,
		     "city":city,
		     "stateId":stateId,
		     "cityId":cityId,
		   /* "code": codes,
				"group":groups,*/
			"value":values,
			"details":details,
			"emi":totalemi,
			"percentage":percentage
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/salesman/update",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("salesman.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
			});



	});
