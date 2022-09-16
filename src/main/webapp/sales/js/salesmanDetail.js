
$(document).ready(function() {
	var countSno=1;
	var salesPersonsId = sessionStorage.getItem("slaesmanId"); 

$.ajax({
	  url : base_url+"rest/salesman/salesdetails/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(data){
    		 var tabledata = '';
		
		 for(var i =0; i<data.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + countSno++ + '</td>'+
				'<td class="text-center">' + data[i].studentName + '</td>'+
				'<td class="text-center">' + data[i].mobileNumber + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].offerType + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				/*'<td class="text-center">' + data[i].salesPersonId + '</td>'+*/
				'<td class="text-center">' + data[i].offerActivetedDate + '</td>'+
				'<td class="text-center">' + data[i].offerExpiredDate + '</td>'+
				'<td class="text-center">' + data[i].validityInhrs + '</td>'+

		
			'</tr>'
    			
    			
				
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
