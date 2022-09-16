
function create_salesMan(){

	var screenName=$("#screenName").val();
	var message=$("#messagee").val();
	var noofdays= $("#noofdays").val();
	var noofDays=parseInt(noofdays);
	var layout= $("#layout").val();
	var repeatedTimecount= $("#repeatedtimecount").val();
	var repeatedtimecount=parseInt(repeatedTimecount);
	
	var speachavailabe="";
	var selectedValueeee="";
	
if($("#checkbox1").is(':checked')){
		
	speachavailabe=true;
		
	}
	
	else{
		
		speachavailabe=false;
	}
	
	if($("#checkbox2").is(':checked')){
		
		selectedValueeee=true;
		
	}
	
	else{
		
		selectedValueeee=false;
		
	}
	
	/*var speachavailabe=$("#speachavailabe").val();*/
/*	var selectedVal = document.querySelectorAll('input[name="speachavailabechoice"]');
	var status=$("#status").val();
	var msgdisplay=$("#msgdisplay").val();
	var selectedmsgVal = document.querySelectorAll('input[name="messagedispalychoice"]');
	const rbs = document.querySelectorAll('input[name="messagedispalychoice"]');
           var  selectedValue=false;
            for (const rb of selectedmsgVal) {
                if (rb.checked) {
                    selectedValue = rb.value;
                    break;
                }
            }

		var selectedValueeee=false;
            for (const rb of selectedVal) {
                if (rb.checked) {
                    selectedValueeee = rb.value;
                    break;
                }
            }*/
           
 
if(screenName==""||screenName==null){
  		
  		alert("Please enter the Screen Name");
  		return false;
  	} 


var input ={
		  
			"screen":screenName,
		    "msg":message,
			"noofdays":noofDays,
			"layout":layout,
			"repeatedtimecount":repeatedtimecount,
			"speachavailabe":speachavailabe,
		    "msgdisplay":selectedValueeee,
		     //"status":true
		    
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/robolearning",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("robolearningtable.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}


 $(document).ready(function(){
  	
  	var id = localStorage.getItem("id"); 


  $.ajax({
  		  url : base_url+'rest/robolearning/'+id,
  		  type:"GET",
  		  dataType:"json",
  		  contentType:'application/json',
  		 
  		  success:function(data){
  			  
  			  console.log(data);
  			/*  
  			  $("#paragraph").val(data.paragraph);*/
  			  
  			 
  			  $("#screenName").val(data.screen); 
				$("#messagee").val(data.msg);
				$("#noofdays").val(data.noofdays);
				$("#layout").val(data.layout);
				$("#repeatedtimecount").val(data.repeatedtimecount);
				
				var speech=data.speachavailabe;
				var msg=data.msgdisplay;
				
				if(speech){
					

					$("#checkbox1").attr("checked","checked");
					
					//document.getElementById("speachavailabe").checked = true;
				}
				
               if(msg){
            	   
            	   $("#checkbox2").attr("checked","checked");
					
            	  // document.getElementById("msgdisplay").checked = true;
					
				}
				
               var condtn=data.status;
           	
           	var condtn1=condtn.toString()
           	
				/*$("#status").val(data.status);*/
               $('select[name="selValue3"]').find('option[value="'+condtn1+'"]').attr("selected","selected");

           	
  			
  		
  			 },
  	    	  
  		  error:function(data){
  			  alert(data.responseJSON.errorMessage);
  		  }
  	    	  
  });

 var clkbtnval = localStorage.getItem("chkbtn");
	 console.log("clickeed butn : "+clkbtnval);
	 
	 if(clkbtnval != null && clkbtnval != ""){
		 
		 if(clkbtnval == "addbtn"){
			 /*$('#submit').prop('disabled', false);
			 $('#update').prop('disabled', true);*/
			 
			 $('#submit').show();
			 $('#update').hide();
			 $('#robostatus').hide();
			robostatus
			 
		 }else{
			 /*$('#submit').prop('disabled', true);
			 $('#update').prop('disabled', false);*/
			 
			 $('#update').show();
		$('#robostatus').show();
		 $('#submit').hide();
			 
		 }
	 }
	 
	 
	 });
	 
	

$("#update").click(function(){
	
	
	
	var id = localStorage.getItem("id");
		var screenName= $("#screenName").val();
	var message=$("#messagee").val();
	var noofdays= $("#noofdays").val();
	var noofDays=parseInt(noofdays);
	var layout= $("#layout").val();
	var repeatedTimecount= $("#repeatedtimecount").val();
	var repeatedtimecount=parseInt(repeatedTimecount);
	
	/*var speachavailabe=$("#speachavailabe").val();*/
	var speachavailabe="";
	var selectedValueeee="";
	
if($("#checkbox1").is(':checked')){
		
	speachavailabe=true;
		
	}
	
	else{
		
		speachavailabe=false;
	}
	
	if($("#checkbox2").is(':checked')){
		
		selectedValueeee=true;
		
	}
	
	else{
		
		selectedValueeee=false;
		
	}
	
	var status=$("#roboStatus").val();
 
if(screenName==""||screenName==null){
  		
  		alert("Please enter the Screen Name");
  		return false;
  	} 


var input ={
		  
		
			"screen":screenName,
		    "msg":message,
			"noofdays":noofDays,
			"layout":layout,
			"repeatedtimecount":repeatedtimecount,
		     "speachavailabe":speachavailabe,
		     "msgdisplay":selectedValueeee,
		     "status":status
		    
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/robolearning/"+id,
	  type:"PUT",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	 location.assign("robolearningtable.jsp");
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
			});



	});
