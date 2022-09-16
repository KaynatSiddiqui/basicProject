var typeVideos="";
var allVideos="";
var last7DaysVideos1='';
var last10DaysVideos1='';
var videoid="";

var subtype = getParameterByName("subtype");

var last7DaysVideos="last 7Days Videos";
var last10DaysVideos="last 10Days Videos";

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

var iddddd="";

$(document).ready(function() {
	
	 videoid = getParameterByName("videoid");
	 


	 allVideos = getParameterByName("videotype");

	
		
	 var allVideos1="";	
			if(allVideos.match("10videos")){
				
			 allVideos1=last10DaysVideos;
			}
			
			else{
				
				allVideos1=last7DaysVideos;
			}
			
		
	 
	 $("#videoTypes").html(allVideos1);
		
	 
	var LoginData = getLoginData();
	sId = LoginData.studentid;

 standardId=sessionStorage.getItem("standardId");

 examTypeId=sessionStorage.getItem("examTypeIds");
 
 displayDays(allVideos);
	
	

	 watchstatus(videoid);
		
	 getlikesdislikes(videoid);
	
	
})



	
	var isliked=false;
	var isdisliked=false;
	
	 

	
function green(){
	
	iddddd=$("#vidid").attr("data-id");
	 
	if(iddddd==""|| iddddd==null || iddddd==undefined){
		
		iddddd=videoid;
	}
	
	else{
		
		iddddd=iddddd;
	}
	
	if(isliked==false){
	isliked=true;
	 isdisliked=false;
		likeddisliked(iddddd);
		
	}
	
	else{
		isliked=true;
		 isdisliked=false;
		 likeddisliked(iddddd);
		 
		}
	if ( document.getElementById("greens").classList.contains('green')){
		
		document.getElementById("greens").classList.remove('green');
	
	}
	else{
		document.getElementById("greens").classList.add('green');
		
	}
	
	if ( document.getElementById("reds").classList.contains('red')){
		document.getElementById("reds").classList.remove('red');
	}

 /*   if (btn2.classList.contains('red')) {
	      btn2.classList.remove('red');
	    } 
	  this.classList.toggle('green');*/
	  
	};

	function red(){
		
		iddddd=$("#vidid").attr("data-id");
		 
		if(iddddd==""|| iddddd==null || iddddd==undefined){
			
			iddddd=videoid;
		}
		
		else{
			
			iddddd=iddddd;
		}
		
		if(isdisliked==false){
			
			isdisliked=true;
			isliked=false;
			likeddisliked(iddddd);
			
		}
		
		else{
			isdisliked=true;
			isliked=false;
			likeddisliked(iddddd);
			
		}
		
		if ( document.getElementById("reds").classList.contains('red')) {
			document.getElementById("reds").classList.remove('red');
			
		}
		else{
		document.getElementById("reds").classList.add('red');
		
		}
		
		if ( document.getElementById("greens").classList.contains('green')) {
			document.getElementById("greens").classList.remove('green');
		}
	  
	};
	function displayDays(videotext){
		
		
		
		var LoginData = getLoginData();
		var sId = LoginData.studentid; 
		
		/*
		var standardId=1;
		var examTypeId=1;*/
		
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
				 
				 $("#leftviewVideo").empty();
				 $("#leftviewVideo").html(dat);
			  },
		  success:function(data){
				var appendata="";
				var rightVideo1="";
	    /*
			 last7DaysVideos1=data.last7Days;
			last10DaysVideos1=data.yesterday;
			
			
 if(last7DaysVideos == allVideos){*/
					  for(var i =0; i<data.length;i++){
						  
			  if(data[i].id == videoid){
				  $("#vidid").attr("data-id",videoid);
			  
	appendata +='<div role="tabpanel" class="tab-pane active" >'+
		   '<div class="" style="padding-top:40px">'+
							
								 '<div class="">'+
								 	'<div class="" id="videopause">'+
								 		'<iframe src="'+data[i].videoLink+'?rel=0&showinfo=0&modestbranding=1" width="840px" height="465px"  id="youtubeembad" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
								 		/*'<div class="">'+
									 	'<ul  style="display:flex ; justify-content:flex-end; align-items:center">'+
									 	'<li  style="padding:10px;"><div id="green" onclick="green('+"'"+last7DaysVideos1[i].id+"'"+',this)"><i class="fa fa-thumbs-up fa-2x" aria-hidden="true" style="margin-right:5px;"></i></div><div id="like">0</div></li>'+
									 	'<li style="padding:10px;"><div id="red" onclick="red('+"'"+last7DaysVideos1[i].id+"'"+',this)"><i class="fa fa-thumbs-down fa-2x" aria-hidden="true" style="margin-right:5px;"></i></div><div id="dislike">0</div></li>'+
									 	'<li style="padding:10px;" data-toggle="modal" data-target="#myModal"><div><i class="fa fa-share fa-2x" aria-hidden="true" style="color:#808080;margin-right:5px;"></i></div><div>0</div></li>'+
									 	'<li style="padding:10px;"><div><i class="fa fa-comments fa-2x" aria-hidden="true" style="color:#808080;margin-right:5px;"></i></div><div>0</div></li>'+
									 	
									 	'</ul>'+
									 	'</div>'+*/
								 	'</div>'+
								 	
								 	'</div></div></div>';
	
			  }
					
			  
	
/*	
	if(last7DaysVideos ==allVideos){
	for(var i =0; i<last7DaysVideos1.length;i++){
		if(last7DaysVideos1[i].subject ==subtype){*/
		rightVideo1 +='<div role="tabpanel" class="tab-pane active" >'+
			'<div class="" style="padding-top:10px;padding-top:0px;margin-top:8px">'+
			'<div class="">'+
			'<div  style="padding:0px;margin:0px;overflow-x:hidden">';
			
				var url = data[i].videoLink;
		    	  var strurl = url.toString();
		    	  var segments = url.split( '/' );
		    	  var id = segments[4];
		    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
		    	  
		    	  
		    	 rightVideo1 +=/*'<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+*/
		    	'<div class="box">'+
		    		'<div class="item res-video" style="background-image: url('+data[i].thumbnail+');background-position: center;background-repeat: no-repeat;background-size:cover;width:393px; height:267px;cursor: pointer;" onclick="viedomaindisplay('+"'"+data[i].id+"'"+',this)" data-videolink='+url+' >'+
					'<div style="display:flex; align-items:center ;justify-content:center;margin-top:20px"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
					'</div></div>'+
			    '<div class="clearfix"></div'+
			    
			      
			'</div></div></div></div>';
		    	  
	 
	
	}
	/*else if(last10DaysVideos == allVideos){
		for(var i =0; i<last10DaysVideos1.length;i++){
			if(last10DaysVideos1[i].subject ==subtype){
			 rightVideo1 +='<div role="tabpanel" class="tab-pane active" >'+
				'<div class="" style="padding-top:10px;padding-top:0px;margin-top:8px">'+
				'<div class="">'+
				'<div  style="padding:0px;margin:0px;overflow-x:hidden">';
				
					var url = last10DaysVideos1[i].videoLink;
			    	  var strurl = url.toString();
			    	  var segments = url.split( '/' );
			    	  var id = segments[4];
			    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
			    	  
			    	  
			    	 rightVideo1 +='<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+
			    	'<div class="box">'+
			    		'<div class="item res-video" style="background-image: url('+last10DaysVideos1[i].thumbnail+');background-position: center;background-repeat: no-repeat;background-size:cover;width:393px; height:267px;cursor: pointer;" onclick="viedomaindisplay('+"'"+last7DaysVideos1[i].videoId+"'"+',this)" data-videolink='+url+' >'+
							 		    		'<div style="display:flex; align-items:center ;justify-content:center;margin-top:20px"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
							 		    		'</div></div>'+
				    	'<div class="clearfix"></div'+
				    
				      
				'</div></div></div></div>';
			    	  
			} 
					
}
	}
*/			  $("#rightviewVideo").empty("");
				$('#rightviewVideo').append(rightVideo1);
			  
			  $("#leftviewVideo").empty("");       
				$("#leftviewVideo").html(appendata);	
			  
				 
		  },
		  
		  error:function(data){
	    	  alert(data.errorMessage);
	      }
		 
	});
		 

	 };



	
	
		
		
	 var videoid="";							 
	 function watchstatus(videid){
	 	
	 	if(videid =="" || videid==null){
	 		
	 	 videoid = getParameterByName("videoid");
	 		
	 	}
	 	else{
	 		videoid =videid;
	 	}
	 	
	 	
	 	var studentId=sId;

	 	var input ={
	 			
	 	     "videoId":videoid,
	 	     "studentId":sId,
	 	     "watched":true
	 	     
	 	}

	 	console.log(input)
	 	var output =JSON.stringify(input);
	 	
	 $.ajax({
	 	  url : base_url+"rest/homepagevideos/watchStatus",
	 	  
	 	  type:"POST",
	 	  dataType:"json",
	 	  contentType:'application/json',
	 	  data: output,
	 	  success:function(data){
	 		  
	 		 
	 		  
	 		  $("#watch").empty("");
	 		  
	 		  $("#watch").html(data.watchingCount)
	 		  
	   },
	 	  
	 	  error:function(data){
	     	 
	       }
	 	 
	 });
	 	 

	  };
	  function likeddisliked(videid) {
	 		

	 		if(videid =="" || videid==null){
	 			
	 		 videoid = getParameterByName("videoid");
	 			
	 		}
	 		else{
	 			videoid =videid;
	 		}
	 		
	 		
	 		var studentId=sId;

	 		var input ={
	 		     "videoId":videoid,
	 		     "studentId":sId,
	 		     "liked":isliked,
	 		     "disliked":isdisliked
	 		    
	 		}

	 		console.log(input)
	 		var output =JSON.stringify(input);
	 		
	 	$.ajax({
	 		  url : base_url+"rest/homepagevideos/likeOrDislike",
	 		  
	 		  type:"POST",
	 		  dataType:"json",
	 		  contentType:'application/json',
	 		  data: output,
	 		  success:function(data){	
	 		
	 			  
	 			 getlikesdislikes(videid);
	 			  
	 	  },
	 		  
	 		  error:function(data){
	 	    	  
	 	      }
	 		 
	 	});
	 		 

	 	 };
	 	 function getlikesdislikes(videid) {
	 			
	 		
	 			if(videid =="" || videid==null){
	 				
	 				 videoid = getParameterByName("videoid");
	 					
	 				}
	 				else{
	 					videoid =videid;
	 				}
	 			
	 			var studentId=sId;
	 /*
	 			var input ={
	 			     "videoId":videoid,
	 			     "studentId":sId
	 			     
	 			}

	 			console.log(input)
	 			var output =JSON.stringify(input);
	 			*/
	 		$.ajax({
	 			  url : base_url+"rest/homepagevideos/getLikesDislikesInfo/"+videoid+"/"+sId,
	 			  
	 			  type:"GET",
	 			  dataType:"json",
	 			  contentType:'application/json',
	 			  success:function(data){	
	 				
	 				  
	 				  var data1=data.LikeDislikeResponse;
	 				  
	 				  
	 				  var data2=data1.watchedAndLikeDislikeInfo;
	 				  
	 				  $(".s").empty("");
	 				  
	 				  $(".s").html(data1.likes);
	 				  
	 				  $(".ss").empty();
	 				  
	 				  $(".ss").html(data1.dislikes);
	 				  
	 				if(data2.liked ==true){

	 						/*document.getElementById("green").classList.add('green');*/
	 						/*var element = document.getElementById("greens");
	                         element.classList.add("green");*/

	                         $("#greens").addClass("green");
	 				  }
	 				
	 				else{
	 					
	 					$("#greens").removeClass("green");
	 					
	 				}
	 				  if(data2.disliked ==true){

	 						/*document.getElementById("red").classList.add('red');*/
	 						/*var element = document.getElementById("reds");
	                         element.classList.add("red");*/
	 					  
	                         $("#reds").addClass("red");

	 				 
	 				  
	 				  }
	 				  
	 				  else{
	 						
	 						$("#reds").removeClass("red");
	 						
	 					}
	 				
	 				  
	 				/*  $("#watch").html(data.watchingcount);*/
	 				  
	 		  },
	 			  
	 			  error:function(data){
	 		    	  
	 		      }
	 			 
	 		});
	 			 

	 		 };
	 		
	 		 function viedomaindisplay(id,elem){ 
	 			 
	 			 $("#vidid").attr("data-id",id);
					
					
				 watchstatus(id);
					
				 getlikesdislikes(id);
				 
					var url = $(elem).attr("data-videolink");
					

						$("#youtubeembad").attr("src", "");
						$("#youtubeembad").attr("src", url+"?rel=0&showinfo=0&modestbranding=1");
						

						
						

						}