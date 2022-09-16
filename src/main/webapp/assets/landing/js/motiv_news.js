var examTypeId="";
var standardId="";

$(document).ready(function() {
 
	 displayallVideos();
	
	 examTypeId=sessionStorage.getItem("examTypeIds");
		standardId=sessionStorage.getItem("standardId");
		
 });
	
/*	function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$|");
    var regex = new RegExp("[?\]" + name + "(=([^|#]*)|\|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}*/



function displayallVideos() {
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid; 
	
	
	var standardId=standardId;
	var examTypeId=examTypeId;
	var studentId=sId;
	
	var videoAll ="Motivational Videos"  ;/* getParameterByName("motive_news");*/
	
	var input ={
	     "standardId":standardId,
		"examTypeId":examTypeId,
		"studentId":studentId,
	    "videoType":videoAll
	}

    
    
	console.log(input)
	var output =JSON.stringify(input);
	
$.ajax({
	  url : base_url+"rest/homepagevideos/viewAll",
	  
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  beforeSend: function(){
		  
			 var dat="";
			
			 dat='<div class="row">'+
				'<div class="col-sm-12" style="margin-top:30px;display:flex;justify-content:center;align-items:center;">'+
			
			 '<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">'+
			 '</div>'+'</div>';
			 
			 $("#motive_news").empty();
			 $("#motive_news").html(dat);
		
		 },
	  success:function(data){
		
		var allLivevideo6='';
		if(data.length ==0){
			
			alertify. alert("No Motivational Videos");
			
			}
			else{
		for(var i =0; i<data.length;i++){
    		
    		if(data[i].videoType == "Motivational Videos"){
				/*
				count5++;*/
    			allLivevideo6 +='<div class="panel " style="display:inline-block;padding:0px;margin-right:10px;margin-top:20px;border-radius:5px">'+
    			'<div class="panel-body datavid'+data[i].id+'" data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+',this)">'+
      			/*'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');display:flex;justify-content:center;align-items:center;width:430px;height:180px;">'+
      			'<i class="fa fal fa-caret-right fa-2x text-white"></i>'+
      			'</div>'+*/
				'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px">'+
				'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
      			
      			'</div>'+
      			'</div>'+
      			'</div>';
    			
    		/*	if(count5 == 3){
	    			
      				 var v = document.getElementById("motivational"); 
   		            v.className += "scrolling-wrapper"; 
   			            
   						 }*/
    			
			}
				
	  }
    	}  
		 
		$("#motive_news").empty();
    	
    	  $('#motive_news').append(allLivevideo6); 
    	 
			 
	  },
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
	 

 };


 function joinNow1(type,dat){
		
		
		
		var id = $(dat).attr("data-id");
	
		 window.location = base_url+"jsp/student/student module/viewvideos.jsp?videotype="+type+"&videoid="+id;
		 
}