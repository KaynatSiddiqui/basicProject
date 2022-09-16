function registration(){
	
	localStorage.removeItem('id');
	
	localStorage.setItem("chkbtn", "addbtn");
	
	
	location.assign("create_salesman.jsp");
}


$(document).ready(function() {
	 

$.ajax({
	  url : base_url+"rest/salesman/getallsalesMans",
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
	  success:function(data){
		  $("#loading").hide();
    		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + data[i].id + '</td>'+
				'<td class="text-center">' + data[i].salesMan + '</td>'+
				'<td class="text-center">' + data[i].phone + '</td>'+
				/*'<td class="text-center">' + data[i].country + '</td>'+*/
				/*'<td class="text-center">' + data[i].state + '</td>'+*/
				'<td class="text-center">' + data[i].city + '</td>'+
				/*'<td class="text-center">' + data[i].address1 + '</td>'+*/
				'<td><button data-toggle="modal" data-target="#exampleModalLong"  onclick="getviewStudent('+data[i].id+')" class="btn btn-success">View</button></td>'+

				
    		
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
		  $("#tablebody").empty();
			 $("#tablebody").html('<tr class="odd"><td valign="top" colspan="14" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
					
		 
      }
	 
});
	 

 })

 function getviewStudent(salesinfo){
	
	$.ajax({
	  url : base_url+"rest/salesman/getsalesMan/"+salesinfo,
	  
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
																'<label class="control-label mb-5 bold">Sales Man Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.id +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Sales Man Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.salesMan+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.phone+'</div>'+
														'</div>';
														if(data.details =="" || data.details ==null){
															
														}
														else{
															salesDetails +='<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Details</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.details+'</div>'+
														'</div>';
														}
														
														
														salesDetails +='<div class="col-md-12 form-group">'+
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
														/*'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-edit prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Code</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.code+'</div>'+
														'</div>'+*/
														/*'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-edit prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Group</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.group+'</div>'+
														'</div>'+*/
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-edit prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Values</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+data.value+'</div>'+
														'</div>'+
													
          											'</div>'+
													
          									'</form>';
	
								$("#salesDetail").empty(" ");
    	
    	  			$('#salesDetail').append(salesDetails);
	
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
	
	 
	location.assign("create_salesman.jsp");
    
    
}



function deletedata(id){
	
$.ajax({
	  url : base_url+"rest/salesman/deletesalesMan/"+id,
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
