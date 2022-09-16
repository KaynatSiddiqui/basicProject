var states="";
var city="";
var getsalesmans="";
var ntg="0";
var doubtimg1="";
var doubtimg="";
$(document).ready(function() {

	


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


	getall();


});


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

var selectcitys="0"
	var selectstates="0"
		var froms="0"
			var tos="0"
			
			
function getall(){

	var selectcity=$("#City").val();

	var selectstate=$("#States").val();

	if(selectcity==" " || selectcity==null){
		selectcity=selectcitys;
	}
	if(selectstate==" " || selectstate==null){
		selectstate=selectstates;
	}

	/*var formdate=$("#from").val();
	console.log(formdate);
	
	var todate=$("#to").val();
	
	console.log(todate);*/
	
		var newdate ="";
		var newdate1="";

		var fromdate=$("#from").val();
		
		if(fromdate ==""|| fromdate ==null || fromdate ==undefined){
			
			newdate=""; 
		}
		
		
		else{
		var datearray = fromdate.split("-");
		
		newdate = datearray[2] + '-' + datearray[1] + '-' + datearray[0];
		
		console.log(newdate)
		}
		var todate=$("#to").val();
		
	if(todate ==""|| todate ==null || todate ==undefined){
			
		newdate1=""; 
		}
	
	else{
		var datearray1 = todate.split("-");
		
		newdate1 = datearray1[2] + '-' + datearray1[1] + '-' + datearray1[0];
	}
	
	
	
	
	
	
/*	
if(formdate==" " || formdate==null){
	formdate=froms;
	}
	if(todate==" " || todate==null){
		todate=tos;
	}*/


	var stdsalesids ={
			
			fromDate:newdate ,
			toDate: newdate1,
			stateId: selectstate,
			cityId: selectcity,
	}	
	var standstr = JSON.stringify(stdsalesids);

	$.ajax({
		url: base_url+'rest/faculty/getAllDoubtsAtAdmin',
		type:"POST",
		dataType: "json",
		contentType:'application/json',
		data: standstr,
        beforeSend: function(){
				 $("#tablebody").empty();
				 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
			 },
		success:function(salesinfo){
			  $("#loading").hide();
			var tabledata = '';
			
			var facultyanswervideo="";
			var facultyTile='';
			var facultytitle='';
			
			for(var i =0; i<salesinfo.length;i++){
				facultyanswervideo=salesinfo[i].faculty_answer_video;
				
				tabledata +='<tr>'+
				'<td class="text-center">' + salesinfo[i].doubtId + '</td>'+
				'<td class="text-center">' + salesinfo[i].studentId + '</td>'+
				
				'<td class="text-center">' + salesinfo[i].facultyId + '</td>'+
			
				/*'<td class="text-center">' + salesinfo[i].student_doubt + '</td>';*/
				'<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">'+ salesinfo[i].student_doubt + '</p></td>';
				
				if(salesinfo[i].student_doubt_image == "" || salesinfo[i].student_doubt_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
	/*doubtimg="DoubtImage";*/
  				tabledata += "<td class='text-center'><img src="+salesinfo[i].student_doubt_image+" data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+salesinfo[i].student_doubt_image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
				
				
				/*'<td class="text-center"><img src="'+salesinfo[i].student_doubt_image+'" width=40px height=40px style="border-radius:20px">'+'</td>';
				*/
				if(facultyanswervideo !=""){

					/*facultyTile=salesinfo[i].facultyTitle;
					facultytitle=facultyTile.trim();*/
					tabledata +='<td class="text-center video"><i onclick="video('+"'"+salesinfo[i].id +"'"+','+"'"+facultyanswervideo+"'"+')"  style="color:red" class="fa fa-youtube-play fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal"></i></td>';

				}

				else{

					tabledata +='<td class="text-center video"><i onclick="video('+"'"+salesinfo[i].id +"'"+','+"'"+ntg+"'"+')" style="color:red" class="fa fa-youtube-play fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal"></i></td>';

				}
				
				/*tabledata +='<td class="text-center"><img src="'+ salesinfo[i].faculty_answer_image+'" width=40px height=40px style="border-radius:20px">'+'</td>'+
				*/
				
				if(salesinfo[i].faculty_answer_image == "" || salesinfo[i].faculty_answer_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
	doubtimg1="SolutionImage";
  				tabledata += "<td class='text-center'><img src="+salesinfo[i].faculty_answer_image+" data-toggle='modal' data-target='#showimg' onclick='showimages("+'"'+salesinfo[i].faculty_answer_image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
				
				/*'<td class="text-center">' + salesinfo[i].state + '</td>'+
				'<td class="text-center">' + salesinfo[i].city + '</td>'+*/
				tabledata +='</tr>'



			
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



var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var studentname = LoginData.name;

function video(rowidl,videourl,facultyTitle){
	var videotab="";
	

	if(videourl=="0"){

		alertify. alert("Hey "+studentname +", Please wait for faculty reply");
		$("#videorate").empty(" ");
	}

	else{
		rowidl1=rowidl
		
		videotab +='<div class="modal fade" id="myModal" role="dialog" aria-labelledby="attemptedModal" data-backdrop="static" data-keyboard="false">'+
		'<div class="modal-dialog" role="document" style="width:780px;">'+
		'<div class="modal-content">'+
		'<div class="modal-header">'+
		
		'<button type="button" class="close" style="color:black" data-dismiss="modal" style="color:#000">&times;'+'</button>'+
			'<h4 class="modal-title text-center">Solution Video'+'</h4>'+
			'</div>'+
			'<div class="modal-body">'+
			/*'<video src="'+videourl+'"  controls style="width:520px;height:320px"></video>'+*/
			
			
				 '<div class="containerBox">'+
					 "<video src="+videourl+" style='width:750px;height:420px' controls></video>"+
						/*<div id="imgs"></div>*/

  				'<div class="image-box">'+
 					/* <img src="https://www.netcetra.com/images/howto_images/picmonkey-logo.jpg" style="width:100px;height:100px;"> */
  					'<h3 style="color:#FFA500;letter-spacing: 2px;"> Skyget<sup style="font-size:22px !important;">&#174;</sup></h3>'+
  				'</div>'+
  
    			'<div class="text-box">'+
    				/*'<div style="width:200px;height:70px;color:white;padding:10px;" id="">'+facultyTitle+'</div>'+*/
 				'</div>'+
			/*'</div>'+*/
			'</div>'+
			
			
			
			
			'</div>'+
			'</div>'+

			'</div>'+
			'</div>';
		}
		$("#videorate").empty(" ");

		$('#videorate').append(videotab);   

	

}

function showimage(img){
	
	var tab="";
	
	tab = "<img src="+img+"  style='width:100%;'></td>";
		 
	 $("#imgs").empty();
	
	    	  $('#imgs').append(tab); 
	    	
	
}


function showimages(imm){
	
	var tab="";
	
	tab = "<img src="+imm+"  style='width:100%;'></td>";
		 
	 $("#imgsssss").empty();
	
	    	  $('#imgsssss').append(tab); 
	    	
}


function showStudentDoubttext(doubtText){
	var facultyans2=doubtText.innerHTML;
	var tabdata="";
	    		
	    		tabdata = "<p style='padding:20px;word-break: break-all;'>"+facultyans2+"</p>";
	    			 
	    		 $("#doubtText").empty();
	    		$('#doubtText').append(tabdata); 
	    		    
	
}

/*function showStudentSolution(solutionText){
	var tabdataa="";
	    		
	    		tabdataa = "<p style='padding:20px;'>"+solutionText+"</p>";
	    			 
	    		 $("#solutionText").empty();
	    		$('#solutionText').append(tabdataa); 
	    		    
	
}

function solutiontext(){
	alertify. alert("Hey "+studentname +", Please wait for faculty reply");
	
}*/