
function getranksheetexamtypes(){
	var appenddata ="";
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	$.ajax({
		type:"GET",
		url : base_url+'rest/student/v1/getStudentExamtypes/'+sId,
		data:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i < data.length; i++){
				appenddata += '<div class="col-md-2"><a href="'+base_url+"jsp/student/student module/Ranksheet.jsp?exam_id="+data[i].id+'"><img src="'+data[i].image+'" width="80px" height="80px"><p class="heit">'+data[i].name+'</p></a></div>';
				}
			 $("#ranksheetexamtypes").empty();
			 $("#ranksheetexamtypes").append(appenddata);
			 $(".button-list div").each(function(z){
				  $(this).first().delay(600 * z).animate({'opacity':'1'},800);
			  }) 
		
		},
	    
		error:function(data){
			alert(data.responseJSON.errorMessage);
			
		}
	})
	 
}


