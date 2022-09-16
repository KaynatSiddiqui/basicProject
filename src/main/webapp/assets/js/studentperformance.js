var states="";
var city="";
var getsalesmans="";

$(document).ready(function() {

	selectstates();



});


function selectstates(){

	$.ajax({
		url : base_url+"rest/admin/getstates",
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';

			}

			$("#States").empty("");
			$("#States").append('<option value="0";>--Select States--</option>'); 
			$('#States').append(statesdata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});

}



$('#States').change(function(){


	states = $('#States').val();



	selectcity(states);

});




function selectcity(states){


	$.ajax({
		url : base_url+"rest/admin/getcities/"+states,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';

			}

			$("#City").empty("");
			$("#City").append('<option value="0";>--Select City--</option>'); 
			$('#City').append(statesdata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});
}

function getall(){

	var selectcity=$("#City").val();

	var selectstate=$("#States").val();

	if(selectcity==" " || selectcity==null){
		alert("please select city");
		return false;
	}
	if(selectstate==" " || selectstate==null){
		alert("please select state");
		return false;
	}

	
	

	$.ajax({
		url: base_url+'rest/faculty/studentsDoubtsCount/'+selectstate+'/'+selectcity,
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
				
				'<td class="text-center">' + data[i].studentId + '</td>'+
				'<td class="text-center">' + data[i].studentName + '</td>'+
				'<td class="text-center">' + data[i].count + '</td>';
				
				if(data[i].subscribeStatus ==true){
					
					tabledata +='<td class="text-center">Subscribed'+ '</td>';
				
				}
				else{
					
					tabledata +='<td class="text-center">Not Subscribed'+ '</td>';
						
					}
				
				if(data[i].planId ==" " || data[i].planId ==null){
					
					tabledata +='<td class="text-center">'+ '</td>';
				}
				
				else{
					
				tabledata +='<td class="text-center">' + data[i].planId + '</td>';
			}
				
				tabledata +='<td class="text-center">' + data[i].state + '</td>'+
				'<td class="text-center">' + data[i].city + '</td>'+
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


}




