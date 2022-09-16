function getranksheetscheduler(){
	var appenddata ="";
	

	
	var examidid = getParameterByName('exam_id');
	$.ajax({
		type:"GET",
		url : base_url+'rest/student/scheduler/'+examidid,
		data:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i < data.length; i++){
				var scheduler= data[i].scheduler;
				var terms= data[i].terms;
				
				appenddata += '<div class="col-md-2"><a href="'+base_url+"jsp/student/student module/jeemainschdule.jsp?exam_id="+data[i].scheduler+'"><a href="'+base_url+"jsp/student/student module/jeemainschdule.jsp?exam_id="+data[i].terms+'"></a></div>';
				 $("#rankscheduler").append(appenddata);
			}
		
		},
	    
		error:function(data){
			alert(data.responseJSON.errorMessage);
			
		}
	})
	 
}
