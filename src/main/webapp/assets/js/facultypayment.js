var salesinfo='';

var states="";
var city="";
var getsalesmans="";

$(document).ready(function() {

	selectsalesman();



});


function selectsalesman(){


	$.ajax({
		url : base_url+"rest/faculty/getallDoubtsFacultys",
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var Facultys = '';

			for(var i =0; i<data.length;i++){

				Facultys +='<option value="'+data[i].id+'">'+data[i].faculty+'</option>';

			}

			$("#Faculty").empty("");
			$("#Faculty").append('<option value="";>Select Faculty </option>'); 
			$('#Faculty').append(Facultys);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	})  
}

var getFaculty="";

$('#Faculty').change(function(){


	getFaculty = $('#Faculty').val();


});


var facultyTitle='';
function getall(){

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

	var stdsalesids ={
			
			fromDate:newdate,
			toDate: newdate1,
			faciltyId: getFaculty,
			
	}	
	var standstr = JSON.stringify(stdsalesids);

	$.ajax({
		url: base_url+'rest/faculty/getfacultyAmount',
		type:"POST",
		dataType: "json",
		contentType:'application/json',
		data: standstr,
        beforeSend: function(){
				 $("#tablebody").empty();
				 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
			 },
		success:function(data){
			  $("#loading").hide();
	
			salesinfo=data.salesinfo;
			
		/*var faciltyId=data[s].faciltyId;*/
		var tabledata = '';
				
				for(var i =0; i<salesinfo.length;i++){
					
				facultyTitle=salesinfo[i].facultyTitle;
					tabledata +='<tr>'+
					
			    '<td class="text-center">' + salesinfo[i].doubtId + '</td>'+
				'<td class="text-center">' + salesinfo[i].facultyId + '</td>'+
        
				/*'<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;">' + salesinfo[i].student_doubt + '</p></td>';*/
				
				'<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">'+ salesinfo[i].student_doubt + '</p></td>';
				if(salesinfo[i].student_doubt_image == "" || salesinfo[i].student_doubt_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
	/*doubtimg="DoubtImage";*/
  				tabledata += "<td  class='text-center'><img src="+salesinfo[i].student_doubt_image+" data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+salesinfo[i].student_doubt_image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
				
				
				/*'<td class="text-center">' + (data[i].student_doubt_image + '</td>'+
				
				
				
			*/
			
			if(salesinfo[i].faculty_answer_video == "" || salesinfo[i].faculty_answer_video == null){
    			/*	tabledata +='<td class="text-center"><img src="../images/youtube.png"  class="video-btn" data-toggle="modal" data-src="https://cmeducation.de/wp-content/uploads/2016/04/videodummy.jpg" data-target="#myModal"></td>';*/
				
				tabledata +='<td class="text-center"><img src="/assets/images/images/youtube.png" onclick="vid()" class="video-btn"></td>';
			
				 }
  			  else{
  				
				tabledata +="<td class='text-center'><img src='/assets/images/images/youtube.png'  class='video-btn' data-toggle='modal' data-target='#showVideo' onclick='showvideo("+'"'+salesinfo[i].faculty_answer_video+'"'+")'></td>";
			
  			  }
			
			/*tabledata +='<td class="text-center"><img src="/assets/images/images/youtube.png"  class="video-btn" data-toggle="modal" data-src="'+salesinfo[i].faculty_answer_video+'" data-target="#myModal"></td>';
			*/	
				/*'<td class="text-center">' + data[i].faculty_answer_video + '</td>';*/
				
				
				
				
				
				if(salesinfo[i].faculty_answer_image == "" || salesinfo[i].faculty_answer_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
	doubtimg1="SolutionImage";
  				tabledata += "<td class='text-center'><img src="+salesinfo[i].faculty_answer_image+" data-toggle='modal' data-target='#showimg' onclick='showimages("+'"'+salesinfo[i].faculty_answer_image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
				
	tabledata +='<td class="text-center">' + salesinfo[i].rating+ '</td>'+
				
				'<td class="text-center">' + salesinfo[i].actualRating+ '</td>'+
				
			    '<td class="text-center">' + salesinfo[i].amount+ '</td>';
				
				
				if( salesinfo[i].paid == true){
					
					tabledata +='<td class="text-center">paid'+'</td>';
					}
				else{
					
					tabledata +='<td class="text-center">'+
					'<select id="statuspaid" class="form-control" data-toggle="modal" data-target="#paystatus" onclick="paid(' + salesinfo[i].id + ')">'+
					'<option value="pending">pending'+'</option>'+
				    '<option value="paid">paid'+'</option>'+
					'</select>'+
					'</td>';
				}
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
		
    url : base_url+"rest/faculty/payFaculty/"+paidservice,
    type:"GET",
	dataType:"json",
	contentType:'application/json',

	success:function(data){
		
		alert("successfully paid");
		location.reload();
		
		
	},

	error:function(data){
		/*alert("unable to paid");*/
		/*alertify. alert("Unable to paid");*/
		alertify. alert("Unable to paid");
	}

});


}

	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var studentname = LoginData.name;
function vid(){
	
	alertify. alert("Hey "+studentname +", Please wait for faculty reply");
}


function showimage(img){
	
	var tab="";
	
	tab = "<img src="+img+"  style='width:100%;'></td>";
		 
	 $("#imgs").empty();
	
	    	  $('#imgs').append(tab); 
	    	
	
}

function showvideo(videoUrl){
	
	var tab="";
	
	$("#facultyTitle").html(facultyTitle)
	tab = '<video src="'+videoUrl+'"  controls style="width:750px;height:420px"></video>';
		 
	 $("#videoUrlData").empty();
	
	    	  $('#videoUrlData').append(tab); 
	    	
	
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
