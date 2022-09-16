
$(document).ready(function() {
	 
$.ajax({
	  url : base_url+"rest/salesman/salesmansids",
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
	
		var salesMandata = '';
		var supervisor='';
		 for(var i =0; i<data.length;i++){
			 
			 
			 
 			salesMandata +='<option value="'+data[i].id+'">'+data[i].salesMan+'</option>';
			supervisor +='<option value="'+data[i].id+'">'+data[i].salesMan+'</option>';
 			
 			} 
		  $("#salesmanId").empty("");
	        $("#salesmanId").append('<option value="";>--Select Sales Man--</option>'); 
			 $('#salesmanId').append(salesMandata); 
			$("#supervisorId").empty("");
	        $("#supervisorId").append('<option value="";>--Select Supervisor--</option>'); 
			 $('#supervisorId').append(supervisor); 
		 
 		
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
});




function create_salesLinking(){

	
	var salesmanId=$("#salesmanId").val();
	var supervisorId= $("#supervisorId").val();
	
	
	
if(salesmanId==""||salesmanId==null){
  		
  		alert("Please enter the Select Sales Person ");
  		return false;
  	} 

if(supervisorId==""||supervisorId==null){
  		
  		alert("Please enter the Select Supervisor ");
  		return false;
  	} 


var input ={
		  
			"id":salesmanId,
   			 "supervisor":supervisorId
			
		    
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/salesman/linking",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
location.reload();
	},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}



$(document).ready(function() {
	 

$.ajax({
	  url : base_url+"rest/salesman/linkReport",
	  
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
    			'<td class="text-center">' + data[i].supervisorId + '</td>'+
				'<td class="text-center">' + data[i].supervisor + '</td>'+
				
				'<td class="text-center">' + data[i].links + '</td>'+
			
				'<td><a href="#" data-toggle="modal" data-target="#link_views"  onclick="getviewStudent('+data[i].supervisorId+')" class="btn btn-success">View</a></td>'+

				
    		
				/*'<td><a href="#" class="btn btn-edit btn-icon-anim btn-circle mr-10"  onclick="update('+data[i].id+')" data-toggle="tooltip" data-id="1" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>'+
				'<a href="#" class="btn btn-delete btn-icon-anim btn-circle p-10" onclick="deletedata('+data[i].id+')" data-id="1" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a></td>'+
				*/'</tr>'
    			
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	  $('#myTables').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTables').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
		  $("#tablebody").empty();
			 $("#tablebody").html('<tr class="odd"><td valign="top" colspan="9" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
					
		 
      }
	 
});
	 

 })



function getviewStudent(salesinfo){
	
	
		var salesInfo=salesinfo;
	
		
	
	$.ajax({
	  url : base_url+"rest/salesman/supervisor/"+salesInfo,
	  
	  type:"GET",
	  dataType:"json",
		/*async: false,*/
	  contentType:'application/json',
	  
	  success:function(data){
		  
		  var salesDetails='';
		  
								
								for(var i =0; i<data.length;i++){
									
													salesDetails +='<tr>'+
												      
												    '<td>'+data[i].id+'</td>'+
												    '<td>'+data[i].salesMan+'</td>'+
												    '</tr>';
												 
										}
											
								$("#sald").empty("");
								
								$('#sald').append(salesDetails);
	
								},
	  
	  error:function(data){
			
		/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/
  	
      }
})  
}

/*$('body').click(function() {*/
 /* if (!$(this.target).is('#popUpForm')) {*/
   /* $(".modalDialog").hide();*/
 /* }*/
/*});*/
$('body').click(function() {
	 /* if (!$(this.target).is('#popUpForm')) {*/
	    $(".modalDialog").hide();
	 /* }*/
	});