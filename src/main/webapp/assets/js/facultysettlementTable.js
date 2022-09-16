var states="";
var sales="";
var fileUrl='';

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
			$("#States").append('<option value="0";>Select States </option>'); 
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
	selectsalesman(states);

});


function selectsalesman(saleid){


	$.ajax({
		url : base_url+"rest/faculty/salesMansByStateId/"+saleid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var salesMandata = '';

			for(var i =0; i<data.length;i++){

				salesMandata +='<option value="'+data[i].id+'">'+data[i].faculty+'</option>';

					sessionStorage.setItem('salesmanId',data[i].id);
					sessionStorage.setItem('salesmanName',data[i].salesMan);
					/*sessionStorage.setItem('salesmanStateId',data[i].stateId);
					sessionStorage.setItem('salesmancityId',data[i].cityId);*/
					
			}

			$("#selectsalesman").empty("");
			$("#selectsalesman").append('<option value="";>Select Faculty </option>'); 
			$('#selectsalesman').append(salesMandata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	})  
}

	function sendSettlement(){

	salesPersonsId  =$("#selectsalesman").val();
$.ajax({
	  url : base_url+"rest/faculty/settlementDetails/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			$("#tablebody").empty();
			$("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
	  },
	  success:function(studentInfo){
		
		/*	studentInfo=data.students;*/
    		 var tabledata = '';
    		 
    	
		 for(var i =0; i<studentInfo.length;i++){
    			tabledata +='<tr>'+
    				/*'<td class="text-center">' + studentInfo[i].stateId + '</td>'+*/
				/*'<td class="text-center">' + studentInfo[i].cityId+ '</td>';*/
    				'<td class="text-center">' + studentInfo[i].facultyId+ '</td>'+
    				'<td class="text-center">' + studentInfo[i].facultyName+ '</td>';
    			
				if(studentInfo[i].image == "" || studentInfo[i].image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
		/*doubtimg="DoubtImage";*/
  				tabledata += "<td class='text-center'><img src="+studentInfo[i].image+" data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+studentInfo[i].image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
    			
    			tabledata +='<td class="text-center">' + studentInfo[i].peroid+ '</td>'+
				'<td class="text-center">'+'<p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">' + studentInfo[i].comment+ '</p>'+'</td>'+
				'</tr>';
			}
				
		 $("#tablebody").empty();
   	  $('#myTables').DataTable().clear().destroy();
   	  $('#tablebody').append(tabledata); 
   	 $('#myTables').DataTable(); 
		



		},
		error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
			$("#tablebody").empty();
			$("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
      }
		
				
				})
				
				}
				
				function showimage(img){
	
	var tab="";
	
	tab = "<img src="+img+"  style='width:100%;'></td>";
		 
	 $("#imgs").empty();
	
	    	  $('#imgs').append(tab); 
	    	
	
}
				function showStudentDoubttext(doubtText){

					var facultyans2=doubtText.innerHTML;
					
					var tabdata="";

					tabdata = "<p style='padding:20px;'>"+facultyans2+"</p>";

					$("#doubtText").empty();
					$('#doubtText').append(tabdata); 


				}