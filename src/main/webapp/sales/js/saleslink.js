var salesInfo='';
var rowid="";

$(document).ready(function() {
	
displayAllPayments();

});


function displayAllPayments(){
	

	var salesPersonsId1="0";
	
	var salesMonths=$("#gMonth2").val();
	
	var salesPersonsId=sessionStorage.getItem("slaesmanId");

	
$.ajax({
	  url : base_url+"rest/salesman/linkReport/"+salesPersonsId+"/"+salesMonths,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
	  success:function(salesInfo){
		
	
    		 var tabledata = '';
		 for(var i =0; i<salesInfo.length;i++){
			 
			 tabledata +='<tr>'+
                '<td class="text-center">' +  salesInfo[i].id + '</td>'+
				
				'<td class="text-center">' + salesInfo[i].supervisor + '</td>'+
				'<td class="text-center">' + salesInfo[i].salesmanId + '</td>'+
				'<td class="text-center">' + salesInfo[i].amount+ '</td>'+
				'<td class="text-center">' + salesInfo[i].superVisorAmount + '</td>';
			 
			 if(salesInfo[i].paid ==true){
				 
				 tabledata +='<td class="text-center">Paid'+'</td>';
			 }
			 else{
				 tabledata +='<td class="text-center">Pending'+'</td>';
				 
			 }
			 tabledata +='</tr>';
    			
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
