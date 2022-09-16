
$(document).ready(function() {
	
	var salesPersonsId = sessionStorage.getItem("slaesmanId"); 

$.ajax({
	  url : base_url+"rest/salesman/settlementDetails/"+salesPersonsId,
	  
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
			
			var insertedD=studentInfo[i].insertedDate
			 
				var iDate = new Date(insertedD).toLocaleDateString("en-IN")
				tabledata +='<tr>'+
				/*'<td class="text-center">' + studentInfo[i].stateId + '</td>'+*/
			/*'<td class="text-center">' + studentInfo[i].cityId+ '</td>';*/
				'<td class="text-center">' + studentInfo[i].salesmanId+ '</td>'+
				'<td class="text-center">' + studentInfo[i].salesmanName+ '</td>';
			
			if(studentInfo[i].image == "" || studentInfo[i].image == null){
				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
			  }
			  else{
	/*doubtimg="DoubtImage";*/
				tabledata += "<td class='text-center'><img src="+studentInfo[i].image+" data-toggle='modal' data-target='#proofImage' onclick='viewProofImage("+'"'+studentInfo[i].image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
			  }
			
			tabledata +='<td class="text-center">' + studentInfo[i].peroid+ '</td>'+
			'<td class="text-center">'+'<p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext('+"'"+studentInfo[i].comment+"'"+')">' + studentInfo[i].comment+ '</p>'+'</td>'+
			
			
			'<td class="text-center">' + iDate+ '</td>'+
			
			
			'</tr>';
    			
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	 $('#myTable').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	$('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
		  
		  $("#tablebody").empty();
		  $("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
      }
	 
});
	 

 })


 function viewProofImage(proofImage){
	
	
	var tabdata="";
	    		
	    		tabdata = "<img src="+proofImage+"  style='width:100%;'></td>";
	    			 
	    		 $("#salesman_student").empty();
	    		$('#salesman_student').append(tabdata); 
	    		    	
	    		
	    	}

function showStudentDoubttext(doubtText){
	var tabdata="";

	tabdata = "<p style='padding:20px;'>"+doubtText+"</p>";

	$("#doubtText").empty();
	$('#doubtText').append(tabdata); 


}