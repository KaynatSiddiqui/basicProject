var allDoubt='';
var fromdate=0;
var todate=0;

$(document).ready(function() {
	
	getAllFacultyAccount();
	
	})
	
	 

	function getAllFacultyAccount() {
		
		var facultyId = sessionStorage.getItem("facultyId");
		/* fromdate = $("#fromDate").val();
		 todate = $("#toDate").val();
*/		
		
		var newdate ="";
		var newdate1="";

		var fromdate=$("#fromDate").val();
		
		if(fromdate ==""|| fromdate ==null || fromdate ==undefined){
			
			newdate=""; 
		}
		
		
		else{
		var datearray = fromdate.split("-");
		
		newdate = datearray[2] + '-' + datearray[1] + '-' + datearray[0];
		
		console.log(newdate)
		}
		var todate=$("#toDate").val();
		
	if(todate ==""|| todate ==null || todate ==undefined){
			
		newdate1=""; 
		}
	
	else{
		var datearray1 = todate.split("-");
		
		newdate1 = datearray1[2] + '-' + datearray1[1] + '-' + datearray1[0];
	}

		
		var input ={
		  
			"faciltyId":facultyId,
			"fromDate":newdate,
		    "toDate":newdate1
	}
		
		/*getAllFacultyAccount*/
		
		console.log(input)
var output =JSON.stringify(input);


$.ajax({
	  url : base_url+"rest/faculty/getfacultyAmount",
	  
	   type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  beforeSend: function(){
		  $("#allDoubts").empty("");
		  $("#allDoubts").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
	  },
	  success:function(data){
		
    		 var tabledata = '';

		$("#totalAmount").html(data.totalAmount);
		
		allDoubt=data.salesinfo
		
		 for(var i =0; i<allDoubt.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + allDoubt[i].doubtId + '</td>'+
				'<td class="text-center">' + allDoubt[i].amount + '</td>';
					if(allDoubt[i].rating==0){
						
					tabledata +='<td class="text-center"><img src="../images/question.png"></td>';
				}
				
				else if(allDoubt[i].rating==1){
					tabledata +='<td class="text-center"><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
				    '<path fill="#FF0000" d="M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2C6.47,2 2,6.47 2,12C2,17.53 6.47,22 12,22C17.53,22 22,17.53 22,12C22,6.47 17.53,2 12,2M14.59,8L12,10.59L9.41,8L8,9.41L10.59,12L8,14.59L9.41,16L12,13.41L14.59,16L16,14.59L13.41,12L16,9.41L14.59,8Z" />'+
					'</svg><div class="ml-5">Irrelevant'+'</div></td>';
				}
				else if(allDoubt[i].rating==2){
					tabledata +='<td class="text-center"><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
				    '<path fill="#FFA500" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M15.5,8C16.3,8 17,8.7 17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M12,14C13.75,14 15.29,14.72 16.19,15.81L14.77,17.23C14.32,16.5 13.25,16 12,16C10.75,16 9.68,16.5 9.23,17.23L7.81,15.81C8.71,14.72 10.25,14 12,14Z" />'+
			    	'</svg><div class="ml-5">Bad'+'</div></td>';
				}
				else if(allDoubt[i].rating==3){
					tabledata +='<td class="text-center"><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
				    '<path fill="#0000CD" d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,20A8,8 0 0,1 4,12A8,8 0 0,1 12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20M8.5,11A1.5,1.5 0 0,1 7,9.5A1.5,1.5 0 0,1 8.5,8A1.5,1.5 0 0,1 10,9.5A1.5,1.5 0 0,1 8.5,11M17,9.5A1.5,1.5 0 0,1 15.5,11A1.5,1.5 0 0,1 14,9.5A1.5,1.5 0 0,1 15.5,8A1.5,1.5 0 0,1 17,9.5M16,14V16H8V14H16Z" />'+
			    	'</svg><div class="ml-5">Satisfied'+'</div></td>';
				}
				else if(allDoubt[i].rating==4){
					tabledata +='<td class="text-center"><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
				    '<path fill="#008000" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z" />'+
			    	'</svg><div class="ml-5">Good'+'</div></td>';
				}
				/*else if(allDoubt[i].rating==5){
					tabledata +='<td class="text-center"><img src="../images/star.png"><img src="../images/star.png"><img src="../images/star.png"><img src="../images/star.png"><img src="../images/star.png"></td>';
				}*/
				
				
				
				if(allDoubt[i].paid==false){
					tabledata +='<td class="text-center">Pending</td>';
				}
				else{
					tabledata +='<td class="text-center">Completed</td>';
				}
				
				
				
			
				tabledata +="<td class='text-center'><img src='"+allDoubt[i].faculty_answer_image+"'  data-toggle='modal' data-target='#showImages' onclick='showImages("+'"'+allDoubt[i].faculty_answer_image+'"'+")' style='height:50px;width:50px;border-radius:50px'></td>";
				
				
			
				
				if(allDoubt[i].faculty_answer_video =="" || allDoubt[i].faculty_answer_video==null || allDoubt[i].faculty_answer_video==undefined){
					
					tabledata +='<td class="text-center"><img src="../images/youtube.png"  onclick="vid()" class="video-btn"></td>';
					
				}
				else{
				/*tabledata +='<td class="text-center"><img src="../images/youtube.png"  class="video-btn" data-toggle="modal" data-src="'+allDoubt[i].faculty_answer_video+'" data-target="#myModal"></td>';
				*/
				tabledata +='<td class="text-center"><img src="../images/youtube.png"  data-toggle="modal" data-target="#showim" onclick="showimage('+"'"+allDoubt[i].faculty_answer_video+"'"+')"></td>';
				
				
				
				}
				/*'<td class="text-center">' + allDoubt[i].amount + '</td>'+*/
			/*	'<td class="text-center">' + allDoubt[i].student_doubt_image + '</td>'+*/
			/*'<td class="#text-center">' + allDoubt[i].mobile + '</td>'+*/
		
				/*'<td><a href"#"  data-toggle="modal" data-target=".bd-example-modal-sm"  onclick="getAllstudents('+allDoubt[i].id+')" class="btn btn-outline-warning">I WILL TAKE</a></td>';
				*/
				
				/*'<td class="#text-center">' + data[i].mobileNumber + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				/*'<td class="text-center">' + data[i].salesPersonId + '</td>'+*/
				/*'<td class="text-center">' + data[i].offerActivetedDate + '</td>'+
				'<td class="text-center">' + data[i].offerExpiredDate + '</td>'+
				'<td class="text-center">' + data[i].validityInhrs + '</td>'+*/

		
				tabledata +='</tr>'
    			
    			
				
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
			
      }
	 
});
	 

 }


function showimage(img){
	
	var tabdata="";
	var facultyTitle=sessionStorage.getItem("facultyTitle");
	
	$("#facultyTitle").html(facultyTitle.trim());

	
	tabdata = "<video src="+img+" controls style='width:750px;height:420px'></video></td>";
		 
	 $("#imgs").empty();
	 $('#imgs').append(tabdata); 
	    	
	
}

function showImages(imgsss){
	
	var tabdata="";
	
	tabdata = "<img src="+imgsss+"  style='width:100%;'></td>";
		 
	 $("#imagsdATA").empty();
	
	    	  $('#imagsdATA').append(tabdata); 
	    	
	
}

var facultyName=sessionStorage.getItem("facultyname");

function vid(){
	
	alertify. alert("Hey "+facultyName +", No Video");
}

function SeachFacultyData(){
	getAllFacultyAccount();
}
