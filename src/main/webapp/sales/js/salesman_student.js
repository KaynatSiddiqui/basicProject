var comment="";
$(document).ready(function() {
	
	var salesPersonsId = sessionStorage.getItem("slaesmanId"); 

$.ajax({
	  url : base_url+"rest/salesman/getStudentsforSalesman/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(studentInfo){
		
		/*	studentInfo=data.students;*/
    		 var tabledata = '';
		
		 for(var i =0; i<studentInfo.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + studentInfo[i].student_id + '</td>'+
    			'<td class="text-center">' + studentInfo[i].name + '</td>'
    			/*	'<td class="#text-center">' + studentInfo[i].mobile + '</td>'+
    			*/	
    				if(studentInfo[i].comment =="" || studentInfo[i].comment==null){
    					
    				tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="getconctact('+"'"+studentInfo[i].id+"'"+')" class="btn btn-danger">contact'+'</a></td>'
    				}
    				else{

    					 comment=studentInfo[i].comment;
    					 var cm=comment.replace(/\n/g, ' ');
    					tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="showconctact('+"'"+cm+"'"+')" class="btn btn-success">contacted'+'</a></td>'
    					
    				}
    				
        			tabledata+='<td><a href"#"  data-toggle="modal" data-target="#exampleModalLong"  onclick="getAllstudents('+"'"+studentInfo[i].student_id+"'"+','+"'"+studentInfo[i].name+"'"+','+"'"+studentInfo[i].mobile+"'"+','+"'"+studentInfo[i].emailId+"'"+','+"'"+studentInfo[i].city+"'"+','+"'"+studentInfo[i].state+"'"+','+"'"+studentInfo[i].category+"'"+')" class="btn btn-success">View</a></td>'+

        			'</tr>';
            			
				
				/*'<td class="#text-center">' + data[i].mobileNumber + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				/*'<td class="text-center">' + data[i].salesPersonId + '</td>'+*/
				/*'<td class="text-center">' + data[i].offerActivetedDate + '</td>'+
				'<td class="text-center">' + data[i].offerExpiredDate + '</td>'+
				'<td class="text-center">' + data[i].validityInhrs + '</td>'+*/

		
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	 $('#myTable').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	$('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
      }
	 
});
	 

 })


 function getAllstudents(studentid,name,mobile,emailId,city,state,category){
	
	
	var studentId=studentid;
	var salesPersonsId = sessionStorage.getItem("slaesmanId");
	
	$.ajax({
	  url : base_url+"rest/salesman/updateView/"+salesPersonsId+"/"+studentId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(){
			var studentProfile_carddata='';
		 								studentProfile_carddata +='<div class="row"><div class="col-md-12">'+
        											'<form>'+
												'<div class="row">'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Student Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+studentid +'</div>'+
														'</div>'+
														 '<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+name +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Email Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+emailId+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+mobile+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-map-marker prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">City</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+city+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">State</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" >'+state+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-pie-chart prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Category Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+category+'</div>'+
														'</div>'+
														
          											'</div>'+
													
          									'</form></div></div>';
				
					
					$("#salesman_student").empty("");
    	
    	  			$('#salesman_student').append(studentProfile_carddata);
			
		},
	  
	  error:function(data){
			
		/*$("#studentProfile_card").empty("");*/
		//alertify. alert("Student not found with this Phone number");
    	
      }
	 
});
	 
	
}



function getconctact(id){
	
	
	var tab="";
	
	tab='<div style="display:flex;justify-content:center;margin-top:10px">'+
		"<textarea id='cmnt'  rows='8' cols='75' placeholder='Enter Info'>"+"</textarea></div>"+
		"<div style='display:flex; justify-content:flex-end;margin-top:10px'><button class='btn btn-success' onclick='submitcomment("+id+")'>Submit"+"</button></div>";
	
		$("#salesman_comment").empty("");
	
		$('#salesman_comment').append(tab);
		
		
}

function submitcomment(id){

	
	var comnts=$("#cmnt").val();
	
	var input={
			
	id:id,
	comment:comnts	
	
	}
	var inputdata = JSON.stringify(input);
	
	console.log(inputdata);


$.ajax({
		    url: base_url+'rest/salesman/contactedInformation',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputdata,
			 success: function(data){
					alert(data.message);
					window.location.reload();
				},
			  
			  error:function(data){
				  alert(data.responseJSON.errorMessage);	
				/*$("#studentProfile_card").empty("");*/
				//alertify. alert("Student not found with this Phone number");
		    	
		      }
			 
})
	
}
function showconctact(cm){
	
	var tab="";
	
	tab='<div style="display:flex;justify-content:center;margin-top:10px">'+
		"<textarea id='cmnt'  rows='8' cols='75' placeholder='Enter Info' disabled>"+cm+"</textarea></div>";
		
	
		$("#salesman_comment").empty("");
	
		$('#salesman_comment').append(tab);
		
}