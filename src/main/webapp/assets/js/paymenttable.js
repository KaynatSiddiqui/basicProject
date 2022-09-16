

 var getallorderpay='';

 $(document).ready(function() {
 
	 displayAllPayments();
	
 });
 
 
 function displayAllPayments(){
	 var newdate="";
var newdate1="";
	
	var fromdate=$("#datepicker1").val();
	
	console.log(fromdate);
	
	if(fromdate =="" || fromdate ==null){
		
		newdate=fromdate;

}else{
		var datearray = fromdate.split("-");
	
	 newdate = datearray[2] +"-"+ datearray[1] +"-"+ datearray[0];
	}
	
	var todate=$("#datepicker2").val();
	
	
	if(todate =="" || todate ==null){
		
		newdate1=todate;
	
	}else{
	
		var datearray1 = todate.split("-");
	
	     newdate1 = datearray1[2] + '-' + datearray1[1] + '-' + datearray1[0];
	}


/*if(fromdate>=todate){
	
	alert("please enter todate must be greater than fromdate");
	return false;
}

*/
 var withdraw =$("#withdraw").val();
var withdrawral=parseInt(withdraw)
	 
	 
	 var input={
			    "fromDate":newdate,
			    "toDate":newdate1,
			    "withdrawTypeid":withdrawral
			}
				
	 var output =JSON.stringify(input);



	$.ajax({
	url : base_url+"rest/withdraw/withdrawReport",
	type:"POST",
	dataType:"json",
	async:false,
	contentType:'application/json',
	data: output,
	success:function(data){
		  console.log(data);
		  getallorderpay=data.withdrawlist;
		 console.log(getallorderpay)
	$("#offeredAmount").html(data.totalAmount);
	 var tabledata = '';

	if(getallorderpay =="" || getallorderpay==null){
		
		
	}
	
	else{
		
		 for(var i =0; i<getallorderpay.length;i++){
			tabledata +='<tr>'+
		 			/*'<td class="text-center">' + allorderDetail[j].orderId + '</td>'+*/
		 			'<td>' + getallorderpay[i].id+ '</td>'+
		 			'<td>' + getallorderpay[i].studentId+ '</td>'+
					'<td>' + getallorderpay[i].studentName+ '</td>'+
					'<td>' + getallorderpay[i].emailId+ '</td>'+
		 			'<td>' + getallorderpay[i].amount+ '</td>'+
		 			'<td>' + getallorderpay[i].tranactionId+ '</td>'+
					'<td>' + getallorderpay[i].mobileNumber+ '</td>'+
		 			'<td>' + getallorderpay[i].withdrawDate+ '</td>'+
		 			
					'</tr>';
					
					
			
			}
			}
			
		$("#tablebody").empty();
    	  $('#myTables').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTables').DataTable(); 
		
	},
	error:function(data){
		  alert(data.responseJSON.errorMessage);
	}
	});
 }
 

function studentpayment(){
	displayAllPayments();
	
	}
	
	

	/*
	function getallpaymentdates(){
    		 var tabledata = '';
		 for(var i =0; i<getallorderpay.length;i++){
			
						
					tabledata +='<tr>'+
		 			/*'<td class="text-center">' + allorderDetail[j].orderId + '</td>'+*/
		 			/*'<td>' + getallorderpay[i].id+ '</td>'+
		 			'<td>' + getallorderpay[i].studentId+ '</td>'+
					'<td>' + getallorderpay[i].studentName+ '</td>'+
					'<td>' + getallorderpay[i].emailId+ '</td>'+
		 			'<td>' + getallorderpay[i].amount+ '</td>'+
		 			'<td>' + getallorderpay[i].tranactionId+ '</td>'+
					'<td>' + getallorderpay[i].mobileNumber+ '</td>'+
		 			'<td>' + getallorderpay[i].withdrawDate+ '</td>'+
		 			
					'</tr>';*/
					
			/*		
			
			}
			$("#student-body").empty();
    	  $('#myTables').DataTable().clear().destroy();
    	  $('#student-body').append(tabledata); 
    	 $('#myTables').DataTable(); 
*/
	
    	
			
		/*}*/
		
