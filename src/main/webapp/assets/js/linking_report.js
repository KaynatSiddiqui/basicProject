
var rowid="";
$(document).ready(function() {

	getsalesmans();
	getall();
	
	

	
});


function getsalesmans(){

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


			$("#Salesmanid").empty("");
			$("#Salesmanid").append('<option value="";>--Select Salesman--</option>'); 
			$('#Salesmanid').append(salesMandata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});

}


/*
$('#Salesmanid').change(function(){


	Salesmanid = $('#Salesmanid').val();


});
*/


/*
function getamount(Salesmanid){


	$.ajax({
		url : base_url+"rest/admin/getcities/"+states,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			getall();
			
			$("#amount").html("");
			
			$('#status').html(" ");

		},

		error:function(data){

			$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");

		}
	});
}

*/


function getall(){

	var saleid=$('#Salesmanid').val();
	
	var monthval=$('#month').val();
	
	var mmonthval="0";
	var ssaleid="0"
	
	if(monthval ==" " || monthval==null){
		
		monthval=mmonthval;
	}
	
	if(saleid =="" || saleid==null){
		
		saleid=ssaleid
	}
	
	
	$.ajax({
		url : base_url+"rest/salesman/linkReport/"+saleid+"/"+monthval,

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
				'<td class="text-center rowid" hidden>' + data[i].id + '</td>'+
				'<td class="text-center">' + data[i].supervisor + '</td>'+
				'<td class="text-center">' + data[i].salesmanId + '</td>'+
			/*	'<td class="text-center">' + data[i].noOfsubscriptions + '</td>'+*/
				'<td class="text-center">' + data[i].amount + '</td>'+
				'<td class="text-center">' + data[i].superVisorAmount + '</td>';
				
				if( data[i].paid == true){
					
					tabledata +='<td class="text-center">Paid'+'</td>';
					
					}
				else{
					
					tabledata +='<td class="text-center">'+
					'<select id="statuspaid" class="form-control" data-toggle="modal" data-target="#paystatus" onclick="paid(' + data[i].id + ')">'+
					'<option value="pending">pending'+'</option>'+
				    '<option value="paid">paid'+'</option>'+
					'</select>'+
					'</td>';
				
				}
				/*'<td class="text-center">' + data[i].mobilenumber + '</td>'+
                '<td class="text-center">' + data[i].mobilenumber + '</td>'+
				'<td class="text-center">' + data[i].mobilenumber + '</td>'+*/

				'</tr>'



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
		
		url : base_url+"rest/salesman/payLinking/"+paidservice,
       type:"GET",
	dataType:"json",
	contentType:'application/json',

	success:function(data){
		
		alert("successfully paid")
		location.reload();
	},

	error:function(data){
		alert("unable to paid");
	}

});


}



