var last7DaysVideos1='';
var last10DaysVideos1='';

/*
var last7DaysVideos="last7DaysVideos";
var last10DaysVideos="last10DaysVideos";
*/
var examTypeId="";
var standardId="";

$(document).ready(function() {
 
		examTypeId=sessionStorage.getItem("examTypeIds");
		standardId=sessionStorage.getItem("standardId");
		
		 displayDays();
 });
	

function displayDays(val) {
	
	var videostype="10videos";

	var videostype1="7Daysvideos";
	var videotext="";
	if(val =="" || val==undefined || val==null){
		
	}
	else{
		
       videotext=val.innerHTML;
	}
	
	if(videotext=="" || videotext==null  || videotext==undefined){
		
		videotext=videostype;
	}
	else{
		
		if(videotext.match("lAST 7 DAYS")){
			videotext=videostype1;
		}
		
		else{
			
			videotext=videostype;
		}
		
	}
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid; 
	
	var studentId=sId;

	var input ={
	     "standardId":standardId,
		"examTypeId":examTypeId,
		"studentId":studentId
	     
	}

	console.log(input)
	var output =JSON.stringify(input);
	
$.ajax({
	  url : base_url+"rest/homepagevideos/videos/"+videotext,
	  
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
		 
		 $("#liveVideoFilte").empty();
		 $("#liveVideoFilte").html(dat);
	  },
	  success:function(data){
			
		  var last10appenddata=" ";
			
			/*last10DaysVideos='';*/
			if(data.length ==0){
					
					alertify. alert("No Videos");
					
					}
					else{
			 for(var i =0; i<data.length;i++){
				
				 var img=data[i].thumbnail;
				 
					var img1=img.replace(/'/g, "%27");
					
			 			last10appenddata +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:18px">'+
			 			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+videotext+"'"+','+"'"+data[i].subject+"'"+',this)">'+
		      			'<div  style="background-image:url(' + "'" +img1+ "'" + ');background-position: center;background-repeat: no-repeat;background-size:cover;height:267px;width:393px;">'+
		      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
		      			'</div>'+
		      			'</div>'+
		      			'</div>';
				}
				}
				
				$("#liveVideoFilte").empty("");
			   
				$('#liveVideoFilte').append(last10appenddata);
		 /*last7DaysVideos1=data.last7Days;
		last10DaysVideos1=data.yesterday;
		
		last10Videos();
*/		
		/*last7DaysVideos='';*/
		
	/*	if(data.last7Days==last7DaysVideos){
			
			last7days();
		}
		else if(data.yesterday==last10DaysVideos){
			last10Videos();
		}*/
		
	/*last7DayVideo();
		last10Days();
		*/
		

		 /*for(var i =0; i<data.length;i++){
    		
    			allLivevideo +='<div class="panel panel-default " style="display:inline-block; padding:10px; margin:10px;">'+
    			'<div class="panel-body">'+
      			'<iframe width="420" height="315" src="'+data[i].videoLink+'"></iframe>'+
            	'</div>'+
            	
            	'<div class="panel-footer" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">'+
            	'<div style="padding:20px;">'+
            	'<div class="text-primary">'+data[i].subject+'</div>'+
            	'<div>'+data[i].chapter+'</div>'+
				'</div>'+
				'<div>'+
				'<a href="#" class="btn btn-primary btn-rounded  " style="border-radius:10px">Join Now</a>'+
				'</div>'+
    			'</div>'+
   			'</div>';
    			
				
	  }
    	  */
		 
		/* $("#liveVideoFilte").empty();
    	
    	  $('#liveVideoFilte').append(allLivevideo); */
    	 
			 
	  },
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
	 

 };

/*
 function displayDays() {
 	
 	var LoginData = getLoginData();
 	var sId = LoginData.studentid; 
 	
 	var studentId=sId;

 	var input ={
 	     "standardId":standardId,
 		"examTypeId":examTypeId,
 		"studentId":studentId
 	     
 	}

 	console.log(input)
 	var output =JSON.stringify(input);
 	
 $.ajax({
 	  url : base_url+"rest/homepagevideos/videos/10videos",
 	  
 	  type:"POST",
 	  dataType:"json",
 	  contentType:'application/json',
 	  data: output,
 	  success:function(data){
 			
 		  var last10appenddata=" ";
 			
 			last10DaysVideos='';
 			if(data.length ==0){
 					
 					alertify. alert("No Last 7 days Videos");
 					
 					}
 					else{
 			 for(var i =0; i<data.length;i++){
 				
 			 			last10appenddata +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:18px">'+
 			 			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+10videos+"'"+','+"'"+data[i].subject+"'"+',this)">'+
 		      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
 		      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
 		      			'</div>'+
 		      			'</div>'+
 		      			'</div>';
 				}
 				}
 				
 				$("#liveVideoFilte").empty("");
 			   
 				$('#liveVideoFilte').append(last10appenddata);
 		 last7DaysVideos1=data.last7Days;
 		last10DaysVideos1=data.yesterday;
 		
 		last10Videos();
 		
 		last7DaysVideos='';
 		
 		if(data.last7Days==last7DaysVideos){
 			
 			last7days();
 		}
 		else if(data.yesterday==last10DaysVideos){
 			last10Videos();
 		}
 		
 	last7DayVideo();
 		last10Days();
 		
 		

 		 for(var i =0; i<data.length;i++){
     		
     			allLivevideo +='<div class="panel panel-default " style="display:inline-block; padding:10px; margin:10px;">'+
     			'<div class="panel-body">'+
       			'<iframe width="420" height="315" src="'+data[i].videoLink+'"></iframe>'+
             	'</div>'+
             	
             	'<div class="panel-footer" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">'+
             	'<div style="padding:20px;">'+
             	'<div class="text-primary">'+data[i].subject+'</div>'+
             	'<div>'+data[i].chapter+'</div>'+
 				'</div>'+
 				'<div>'+
 				'<a href="#" class="btn btn-primary btn-rounded  " style="border-radius:10px">Join Now</a>'+
 				'</div>'+
     			'</div>'+
    			'</div>';
     			
 				
 	  }
     	  
 		 
 		 $("#liveVideoFilte").empty();
     	
     	  $('#liveVideoFilte').append(allLivevideo); 
     	 
 			 
 	  },
 	  
 	  error:function(data){
     	  alert(data.errorMessage);
       }
 	 
 });
 	 

  };
  */
/*
function last7days(){
	
	var last7appenddata=" ";
	
	last7DaysVideos='';
	
	if(last7DaysVideos1.length ==0){
			
			alertify. alert("No Last 7DaysVideos");
			
			}
			else{
		 for(var i =0; i<last7DaysVideos1.length;i++){
			
	 			last7appenddata +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:18px">'+
	 			'<div class="panel-body datavid'+last7DaysVideos1[i].id+'" data-sub='+last7DaysVideos1[i].subject+' data-id='+last7DaysVideos1[i].id+' data-videolink='+last7DaysVideos1[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+last7DaysVideos+"'"+','+"'"+last7DaysVideos1[i].subject+"'"+',this)">'+
      			'<div  style="background-image:url('+"'"+last7DaysVideos1[i].thumbnail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
      			'</div>'+
      			'</div>'+
      			'</div>';
		}
		}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(last7appenddata);
	
}*/


/*
function last10Videos(){
	
	var last10appenddata=" ";
	
	last10DaysVideos='';
	if(last10DaysVideos1.length ==0){
			
			alertify. alert("No Last 10 Videos");
			
			}
			else{
	 for(var i =0; i<last10DaysVideos1.length;i++){
		
	 			last10appenddata +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:18px">'+
	 			'<div class="panel-body datavid'+last10DaysVideos1[i].id+'" data-sub='+last10DaysVideos1[i].subject+' data-id='+last10DaysVideos1[i].id+' data-videolink='+last10DaysVideos1[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+last10DaysVideos+"'"+','+"'"+last10DaysVideos1[i].subject+"'"+',this)">'+
      			'<div  style="background-image:url('+"'"+last10DaysVideos1[i].thumbnail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
      			'</div>'+
      			'</div>'+
      			'</div>';
		}
		}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(last10appenddata);
}
*/
/*function last10Videos(){
	 last10Days();
}
function last7days(){
	 last7DayVideo();
}*/

/*var last7appenddata = '';
function last7DaysVideo(){
	 
		 for(var i =0; i<last7DaysVideos.length;i++){
	 			last7appenddata +='<div class="panel panel-default" style="display:inline-block;margin-right:10px;width:250px;height:auto;border-radius:30px;padding:20px;">'+
 			'<div class="panel-header" style="padding:0px; marging:0px;display:flex;justify-content:center;align-items:center;white-space:normal">'+'<h4 style="color:orange">'+data[i].testName+'</h4>'+'</div>'+
 			'<div class="panel-body" style="padding:0px; marging:0px;color:black">'+
 			'<div style="display:flex;justify-content:center;align-items:center;">'+
 			'<span>'+data[i].noofQuestions+'Q/</span>'+
 			'<span>'+data[i].totalMarks+'M/</span>'+
 			'<span>'+data[i].time+'Min</span>'+'</div>'+  
 			'<div style="display:flex;justify-content:center;align-items:center;">'+data[i].subjectName+'</div>'+
 			
 			'<div class="" style="padding:0px; marging:0px;display:flex;justify-content:center;align-items:center;">'+'<img src="https://cdn2.vectorstock.com/i/thumb-large/84/31/double-check-graphic-icon-design-template-vector-23278431.jpg" style="width:50px;height:50px">'+'<div style="color:green;display:flex;align-items:center">Take</div>'+'</div>'+
 			'</div>'+
 			'</div>';
		}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(last7appenddata);
	
}
*/
/*
document.addEventListener('DOMContentLoaded', function() {
		const selector = '.nav_link';
		const elems = Array.from( document.querySelectorAll( selector ) );
		const navigation = document.querySelector( 'nav' );

		function makeActive( evt ) {
		  const target = evt.target;
		  
		  if ( !target || !target.matches( selector ) ) {
		    return;
		  }
		  
		  elems.forEach( elem => elem.classList.remove( 'active' ) );
		    
		    evt.target.classList.add( 'active' );
		};

		navigation.addEventListener( 'mousedown', makeActive );

		} );*/

function joinNow1(type,sub,dat){
	
	
	
		var id = $(dat).attr("data-id");
	
		 window.location = base_url+"jsp/student/student module/liveyout.jsp?videotype="+type+"&videoid="+id+"&subtype="+sub;
		 
}