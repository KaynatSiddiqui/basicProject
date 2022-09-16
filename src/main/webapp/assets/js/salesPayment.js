var salesInfo='';
var rowid="";

$(document).ready(function() {
	
	

	
$.ajax({
	  url : base_url+"rest/salesman/salesmansids",
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
	
		var salesMandata = '';
		
		 for(var i =0; i<data.length;i++){
		salesMandata +='<option value="'+data[i].id+'">'+data[i].salesMan+'</option>';
			} 
		  $("#salesId").empty("");
	        $("#salesId").append('<option value="0";>--Select SalesPerson--</option>'); 
			 $('#salesId').append(salesMandata); 
			
		 
 		
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});

	 displayAllPayments();

});


/*$(document).ready(function() {
 
	
	
 });*/


function displayAllPayments(){
	
	var countSno=1;
	var salesPersonsId1="0";
	var salesMonths=$("#gMonth2").val();
	
	var salesPersonsId=$("#salesId").val();
	
	if(salesPersonsId =="" || salesPersonsId==null){
		
		salesPersonsId=salesPersonsId1;
	}
	
	/*
	
	var salesPersonsId = localStorage.getItem("slaesmanId"); */

$.ajax({
	  url : base_url+"rest/salesman/report/"+salesPersonsId+"/"+salesMonths,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
	  success:function(res){
		
		$("#noOfsub").html(res.noOfSubscriptions)
		/*$("#pending").html(res.pending)
		$("#paid").html(res.paid)*/
		$("#tmount").html(res.noOfSubscriptions)
		
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
				'<td class="text-center">' + salesInfo[i].insertedDate + '</td>'+
				'<td class="text-center">' + salesInfo[i].paidpercentage+ '</td>'+
				'<td class="text-center">' + salesInfo[i].salesManAmount + '</td>';
if( salesInfo[i].paid == true){
					
					tabledata +='<td class="text-center">paid'+'</td>';
					}
				else{
					
					tabledata +='<td class="text-center">'+
					'<select id="statuspaid" class="form-control" data-toggle="modal" data-target="#paystatus" onclick="paid(' + salesInfo[i].id + ')">'+
					'<option value="pending">pending'+'</option>'+
				    '<option value="paid">paid'+'</option>'+
					'</select>'+
					'</td>';
				}
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


var paidservice="";

function paid(paidservice){
	
	sessionStorage.setItem('paidservice', paidservice);
	 
	paymwntpaid()
}

/*
$('#statuspaid').on('change',function() {
	
	 $('#paystatus').modal('show');
	*/

function paymwntpaid(){
	
	var paidservice1=sessionStorage.getItem('paidservice');
	

var tabb="";

		
		tabb='<div><h5>Are you want to pay'+'</h5>'+
		'<div class="mt-20 mb-20" style="">'+
			'<button type="button" class="btn btn-sm mr-10" style="background:green;color:white" onclick="paidss('+paidservice1+')">Ok'+'</button>'+
		      '<button type="button" class="btn btn-sm" style="background:red;color:white" data-dismiss="modal">Cancel'+'</button>'+'</div>'
		        
	$("#payss").empty();
	$("#payss").append(tabb);	
			
	

/*tabl='<p>Are you want to pay'+'</p>'+

'<div style="display:flex;justify-content:flex-end">'+

    '<button type="button" class="btn btn-default " data-dismiss="modal">Cancel'+'</button>'+

    '<button type="button" class="btn btn-default" data-dismiss="modal" onclick="paids('+paidservice+')">Ok'+'</button></div>';
	
$("#faclypmnt").empty();

$('#faclypmnt').append(tabl);
*/
};

function paidss(paidservice){
	
	
	
	
	
	$.ajax({
		
		url : base_url+"rest/salesman/paysalesman/"+paidservice,
       type:"GET",
	dataType:"json",
	contentType:'application/json',

	success:function(data){
		
		alert("successfully paid");
		location.reload();
		
		
	},

	error:function(data){
		alert("unable to paid");
	}

});


}



