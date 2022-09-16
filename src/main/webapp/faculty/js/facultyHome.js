
$(document).ready(function() {
	
	var facultyId = sessionStorage.getItem("facultyId"); 

$.ajax({
	  url : base_url+"rest/faculty/getDoubtsFaculty/"+facultyId,

		/*url:"http://skygettesting-env.eba-qhqqzjab.ap-south-1.elasticbeanstalk.com/rest/faculty/getDoubtsFaculty/1",*/
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
		  $("#allDoubts").empty("");
		  $("#allDoubts").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
	  
	  },
	  success:function(allDoubt){
		
    		 var tabledata = '';
		
		 for(var i =0; i<allDoubt.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + allDoubt[i].doubtId + '</td>'+
			/*	'<td>' + allDoubt[i].student_doubt + '</td>';*/
				
				'<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">'+ allDoubt[i].student_doubt + '</p></td>';
				/*'<td>' + allDoubt[i].student_doubt_image + '</td>'+*/
				
				if(allDoubt[i].student_doubt_image == "" || allDoubt[i].student_doubt_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px'></td>";
  			  }
  			  else{
  				tabledata += "<td class='text-center'><img src='"+allDoubt[i].student_doubt_image+"'  data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+allDoubt[i].student_doubt_image+'"'+")' style='height:50px;width:50px;border-radius:50px;'></td>";
    			  
  			  }
				
				/* '<td><img id="img" height="150" src="'+allDoubt[i].student_doubt_image +'" class="student_profile_img" style="height:50px;width:50px;"></td>'+*/
			/*'<td class="#text-center">' + allDoubt[i].mobile + '</td>'+*/
		
				tabledata +='<td class="text-center"><a href"#"  data-toggle="modal" data-target=".bd-example-modal-sm"  onclick="getAllstudents('+allDoubt[i].id+')" class="btn" style="border:1px solid #fd7e14">I WILL TAKE</a></td>';
				
				
				/*'<td class="#text-center">' + data[i].mobileNumber + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				/*'<td class="text-center">' + data[i].salesPersonId + '</td>'+*/
				/*'<td class="text-center">' + data[i].offerActivetedDate + '</td>'+
				'<td class="text-center">' + data[i].offerExpiredDate + '</td>'+
				'<td class="text-center">' + data[i].validityInhrs + '</td>'+*/

												/*'<div class="col-md-4">'+
												'<img id="img" height="150" src="/assets/images/students/default.png" class="student_profile_img">'+
												'</div></div></div>';
					
				sessionStorage.getItem('studentid', allDoubt[i].id);  */  

		
			'</tr>'
    			
    			
				
	  }
    	  
		  $("#allDoubts").empty();
    	 $('#myTable').DataTable().clear().destroy();
    	  $('#allDoubts').append(tabledata); 
    	$('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
		  $("#allDoubts").empty();
			 $("#allDoubts").html('<tr class="odd"><td valign="top" colspan="14" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
			
		/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/
    	
      }
	 
});
	 

 })


 function getAllstudents(doubt){
	
	var doubt=doubt;
	var facultyId = sessionStorage.getItem("facultyId");
	
	var input ={
		  
			"id":doubt,
		    "facultyId":facultyId
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/faculty/takeDoubt",
		/*url:"http://skygettesting-env.eba-qhqqzjab.ap-south-1.elasticbeanstalk.com/rest/faculty/takeDoubt",*/
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	/*var takenDoubt='';
	
			takenDoubt +='<div class="text-center">'+
			
							'<h4>'+data.message+'</h4>'+
			
						'</div>';
						
						$("#takendoubt").empty("");*/
    	/*
    	  			$('#takendoubt').html(takenDoubt);*/
				alert(data.message);
				location.reload();
	
	
		 
	  },
	  error:function(data){
		/*  alert(data.responseJSON.errorMessage);*/

	/*$("#takendoubt").empty("");
    	
    	  			$('#takendoubt').html(data.responseJSON.errorMessage);*/

	/*$("#takendoubt").empty("");*/
		alertify. alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

	
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
	    		
	    		tabdata = "<p style='padding:20px;word-break: break-all;'>"+facultyans2+"</p>";
	    			 
	    		 $("#doubtText").empty();
	    		$('#doubtText').append(tabdata); 
	    		    
	
}