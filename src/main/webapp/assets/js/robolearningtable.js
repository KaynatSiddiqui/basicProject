function registration(){
	
	localStorage.removeItem('id');
	
	localStorage.setItem("chkbtn", "addbtn");
	
	
	location.assign("createrobolearning.jsp");
}


$(document).ready(function() {
	 

$.ajax({
	  url : base_url+"rest/robolearning",
	  
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
    			'<td class="text-center">' + data[i].screen + '</td>'+
				'<td class="text-center">' + data[i].msg + '</td>'+
				'<td class="text-center">' + data[i].noofdays + '</td>'+
				'<td class="text-center">' + data[i].layout + '</td>'+
				'<td class="text-center">' + data[i].repeatedtimecount + '</td>';

				if( data[i].speachavailabe){
    				
				
					tabledata +='<td class="text-center">Yes' + '</td>'
				
				}
				else{

					tabledata +='<td class="text-center">No' + '</td>'
					
					
				}
    			if( data[i].msgdisplay){
    				
    				tabledata +='<td class="text-center">Yes' + '</td>';
    			}
    			
    			else{
    				
    				tabledata +='<td class="text-center">No' + '</td>';
    			
    			}
    			if( data[i].status){
    				
    				tabledata +='<td class="text-center">Active'+'</td>';
    			
    			}
    			else{

    				tabledata +='<td class="text-center">In-Active'+'</td>';
    			
}
				/*'<td class="text-center">' + data[i].status + '</td>'+*/
				/*'<td><button data-toggle="modal" data-target="#exampleModalLong"  onclick="getviewStudent('+data[i].id+')" class="btn btn-success">View</button></td>'+*/
    			tabledata +='<td><a href="#" class="btn btn-edit btn-icon-anim btn-circle mr-10"  onclick="update('+data[i].id+')" data-toggle="tooltip" data-id="1" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>'+
				'<a href="#" class="btn btn-delete btn-icon-anim btn-circle p-10" onclick="deletedata('+data[i].id+')" data-id="1" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a></td>'+
				'</tr>';
    	
				
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


	 

function update(id){
	localStorage.setItem("chkbtn", "updatebtn");
	

	
	localStorage.setItem("id",id);
	
	 
	location.assign("createrobolearning.jsp");
    
    
}



function deletedata(id){
	
$.ajax({
	  url : base_url+"rest/robolearning/"+id,
	  type:"DELETE",
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
