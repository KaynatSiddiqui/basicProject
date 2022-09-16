var salesInfo='';
$(document).ready(function() {
 
	 displayAllPayments();
	
 });


function displayAllPayments(){
	var countSno=1;
	var salesMonths=$("#gMonth2").val()
	
	var salesPersonsId = sessionStorage.getItem("slaesmanId"); 

$.ajax({
	  url : base_url+"rest/salesman/report/"+salesPersonsId+"/"+salesMonths,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
	  success:function(res){
		
		$("#noOfsub").html(res.noOfSubscriptions)
		/*$("#pending").html(res.pending)
		$("#paid").html(res.paid)*/
		$("#tmount").html(res.totalAmount)
		
		 salesInfo=res.salesinfo
		
    		 var tabledata = '';
		 for(var i =0; i<salesInfo.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + countSno++ + '</td>'+
    			'<td class="text-center" hidden>' + salesInfo[i].id + '</td>'+
				'<td class="text-center">' + salesInfo[i].studentName + '</td>'+
				'<td class="text-center">' + salesInfo[i].mobileNumber + '</td>'+
				/*'<td class="text-center">' + salesInfo[i].offerType + '</td>'+
				'<td class="text-center">' + salesInfo[i].percentage + '</td>'+*/
				'<td class="text-center">' + salesInfo[i].subscriptionName + '</td>'+
				'<td class="text-center">' + salesInfo[i].subscriptionAmount + '</td>'+
				 '<td class="text-center">' + salesInfo[i].offerAmount + '</td>'+
				'<td class="text-center">' + salesInfo[i].paidAmount + '</td>'+
				'<td class="text-center">' + salesInfo[i].paidpercentage+ '</td>'+
				'<td class="text-center">' + salesInfo[i].salesManAmount + '</td>';
				
if( salesInfo[i].paid == true){
					
					tabledata +='<td class="text-center">paid'+'</td>';
					}
else{
	
	tabledata +='<td class="text-center">pending'+'</td>';
}

tabledata +='<td class="text-center">' + salesInfo[i].insertedDate + '</td>'+

'</tr>';		
				
	  }
    	  
		  $("#tablebody").empty();
    	  $('#myTable').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
		  $("#tablebody").empty();
		  $("#tablebody").html('<tr class="odd"><td valign="top" colspan="14" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
			
	 }
	 
});
	 

	
	
}

function searchMonth(){
 
displayAllPayments();

}



/*$(document).ready(function() {
	var countSno=1; 
var salesPersonsId = sessionStorage.getItem("slaesmanId"); 

$.ajax({
	  url : base_url+"rest/salesman/offerTakenByStuds/"+salesPersonsId,
	  
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
				'<td class="text-center">' + data[i].offerType + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				'<td class="text-center">' + data[i].paidAmount + '</td>'+
			
				'</tr>';
    			
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	  $('#myTable').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	 /* alert(data.errorMessage);*/
/*alertify. alert("Table Data Empty")*/
 /*     }
	 
});
	 

 })

*/