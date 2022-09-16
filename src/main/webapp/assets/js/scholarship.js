

$(document).ready(function() {
	 

$.ajax({
	  url : base_url+"rest/scholler/registeredStus",
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
    			'<td class="text-center">' + data[i].name + '</td>'+
			/*	'<td class="text-center">' + data[i].emailid + '</td>'+*/
				'<td class="text-center">' + data[i].mobileNumber + '</td>'+
				/*'<td class="text-center">' + data[i].adress + '</td>'+*/
				'<td class="text-center">' + data[i].standard + '</td>'+
				'<td class="text-center">' + data[i].college + '</td>'+
				'<td class="text-center">' + data[i].percentage10 + '</td>'+
				'<td class="text-center">' + data[i].percentage11 + '</td>'+
				'<td class="text-center">' + data[i].city + '</td>'+
				'<td class="text-center">' + data[i].parentMobile + '</td>'+
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

 