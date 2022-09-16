function registration(){
	
	localStorage.removeItem('id');
	
	localStorage.setItem("chkbtn", "addbtn");
	
	
	location.assign("create_faculty.jsp");
}


$(document).ready(function() {
	 

$.ajax({
	  url : base_url+"rest/faculty/getallDoubtsFacultys",
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(data){
    		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + data[i].id + '</td>'+
				'<td class="text-center">' + data[i].faculty + '</td>'+
				'<td class="text-center">' + data[i].phone + '</td>';
				if(data[i].subjectid==1){
					tabledata +='<td class="text-center">Physics</td>';
				}
				else if(data[i].subjectid==2){
					tabledata +='<td class="text-center">Chemistry</td>';
				}
				else if(data[i].subjectid==3){
					tabledata +='<td class="text-center">Mathematics</td>';
				}
				
				/*'<td class="text-center">' + data[i].country + '</td>'+*/
				/*'<td class="text-center">' + data[i].state + '</td>'+*/
				tabledata +='<td class="text-center">' + data[i].city + '</td>'+
				/*'<td class="text-center">' + data[i].address1 + '</td>'+*/
				'<td><button data-toggle="modal" data-target="#facultyview"  onclick="getfacultydetails('+data[i].id+')" class="btn btn-success">View</button></td>'+

				
    		
				'<td><a href="#" class="btn btn-edit btn-icon-anim btn-circle mr-10"  onclick="update('+data[i].id+')" data-toggle="tooltip" data-id="1" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>'+
				'<a href="#" class="btn btn-delete btn-icon-anim btn-circle p-10" onclick="deletedata('+data[i].id+')" data-id="1" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a></td>'+
				'</tr>'
    			
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	  $('#myTables').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTables').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
	 

 })

 function getfacultydetails(facultyid){
	
	$.ajax({
	  url : base_url+"rest/faculty/getFaculty/"+facultyid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(data){
	
	var salesDetails='';
	
							salesDetails +='<form>'+
												'<div class="row">'+
														 '<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Faculty Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.id +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Faculty Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.faculty+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.phone+'</div>'+
														'</div>'+
														
														
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-map-marker prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Address - 1</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.address1+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Address - 2</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" >'+data.address2+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-4">'+
														/*'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">Institute</label>'+
														'</div>'+
														'<div class="col-md-1">:</div>'+
														'<div class="col-md-7" >'+data.institute+'</div>'+
													'</div>'+
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-4">'+
													/*'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">Experience</label>'+
													'</div>'+
													'<div class="col-md-1">:</div>'+
													'<div class="col-md-7" >'+data.yrsOfExperience+'</div>'+
												'</div>'+
												
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-pie-chart prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">City</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.city+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-edit prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">State</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.state+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-edit prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Country</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.country+'</div>'+
														'</div>'+
														
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-4">'+
														/*'<i class="active fa fa-edit prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">Subject</label>'+
														'</div>'+
														'<div class="col-md-1">:</div>'+
														'<div class="col-md-7">'+data.subject+'</div>'+
													'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-4">'+
														/*'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">Details</label>'+
														'</div>'+
														'<div class="col-md-1">:</div>'+
														'<div class="col-md-7" >'+data.details+'</div>'+
													'</div>'+
														/*'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-edit prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Code</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.subjectid+'</div>'+
														'</div>'+
														
														*/
													
          											'</div>'+
													
          									'</form></div></div></div></div>';
	
								$("#facultyDetails").empty("");
    	
    	  			$('#facultyDetails').append(salesDetails);
	
								},
	  
	  error:function(data){
			
		/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/
  	
      }
})  
}
	 

function update(id){
	localStorage.setItem("chkbtn", "updatebtn");
	

	
	localStorage.setItem("id",id);
	
	 
	location.assign("create_faculty.jsp");
    
    
}



function deletedata(id){
	
$.ajax({
	  url : base_url+"rest/faculty/deleteFaculty/"+id,
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
		  console.log(data)
		  alert(data.message);
		  window.location.reload();
	},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
});

}

$('body').click(function() {
 /* if (!$(this.target).is('#popUpForm')) {*/
    $(".modalDialog").hide();
 /* }*/
});
