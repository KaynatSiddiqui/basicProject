
$(document).ready(function() {

		$.ajax({
		  url : base_url+"rest/doubts/notTakenDoubts",
		 type:"GET",
		 dataType:"json",
		  contentType:'application/json',
		  
			 beforeSend: function(){
				 $("#tablebody").empty();
				 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
			 },
		success:function(salesinfo){
			  $("#loading").hide();
			var tabledata = '';
		
			for(var i =0; i<salesinfo.length;i++){
			
				tabledata +='<tr>'+
				'<td class="text-center">' + salesinfo[i].doubtId + '</td>'+
				'<td class="text-center">' + salesinfo[i].student_doubt + '</td>';
				
				if(salesinfo[i].student_doubt_image == "" || salesinfo[i].student_doubt_image == null){
    				tabledata += "<td><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
  			  else{
	
  				tabledata += "<td><img src="+salesinfo[i].student_doubt_image+" data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+salesinfo[i].student_doubt_image+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
  			  }
				tabledata +='<td class="text-center">' + salesinfo[i].insertedDate + '</td>'+
				
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


});



/*var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var studentname = LoginData.name;
*/

function showimage(img){
	
	var tab="";
	
	tab = "<img src="+img+"  style='width:100%;'></td>";
		 
	 $("#imgs").empty();
	
	    	  $('#imgs').append(tab); 
	    	
	
}

