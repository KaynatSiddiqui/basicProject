var typeVideos="";
var allVideos="";
var typeAllvideo="";
var sId="";
var standardId="";
var examTypeId="";
var chaptype="";

//parameter
function getParameterByName(name, url) {
	
	    if (!url) url = window.location.href;
	    name = name.replace(/[\[\]]/g, "\\$&");
	    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
	        results = regex.exec(url);
	    if (!results) return null;
	    if (!results[2]) return '';
	    return decodeURIComponent(results[2].replace(/\+/g, " "));
	}

//functionality

var iddddd="";

$(document).ready(function() {
	
	 
	 
	var LoginData = getLoginData();
	sId = LoginData.studentid;

 standardId=LoginData.standardId;

 examTypeId=LoginData.examtypeId;
 
	allVideos = getParameterByName("videotype");
	 
	
if(allVideos.match("Tricks")){
		
		allVideos="Tricks & Logics";
		
	$("#videoTypes").html(allVideos);
		
	}
	
	else{
		allVideos=allVideos;
		
		$("#videoTypes").html(allVideos);
		
	}
if(allVideos.match("Confusions ")){
	
	allVideos="Confusions & Misconceptions"

		$("#videoTypes").html(allVideos);
	
	
}
	
	if(allVideos.match("News") || allVideos.match("Motivational Videos")){
		
		if(allVideos.match("News")){
			
			allVideos="News & Update"
				
				var right="";
			   
	    	 right +='<h5 style="">'+allVideos+'</h5>';
				
				
				$("#videoTypes").html(allVideos);
				
				 $("#rightview").empty("");
				   
					$('#rightview').append(right);
			
		}
		
		if(allVideos.match("Motivational Videos")){
			
allVideos="Motivational Videos"
				
				$("#videoTypes").html(allVideos);

var right="";

right +='<h5 style="">'+allVideos+'</h5>';

$("#rightview").empty("");

$('#rightview').append(right);
	
		}
		getAllVideos();
		
	}
	else{
		
		$("#videoTypes").html(allVideos);
	 chaptype = getParameterByName("chaptype");
	displayDays();
	
	}
	
	
	
	 watchstatus(videoid);
		
	 getlikesdislikes(videoid);

	
	/*var btn1 = document.querySelector('#green');
	var btn2 = document.querySelector('#red');

	btn1.addEventListener('click', function() {
	  
	    if (btn2.classList.contains('red')) {
	      btn2.classList.remove('red');
	    } 
	  this.classList.toggle('green');
	  
	});

	btn2.addEventListener('click', function() {
	  
	    if (btn1.classList.contains('green')) {
	      btn1.classList.remove('green');
	    } 
	  this.classList.toggle('red');
	  
	});
	*/
})

/*
var btn1 = document.querySelector('#green');
	var btn2 = document.querySelector('#red');*/

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

	function displayDays() {
		
		
		/*if(allVideos ==""){
			
			
		}
		
		if(allVideos =="News "){
			
			allVideos="News & Update"
			
		}*/
		
		
		/*var studentId=sId;*/

		/*var input ={
		 
		     "standardId":standardId,
			"examTypeId":examTypeId,
			"studentId":studentId
		     
		}

		console.log(input) */
		//var output =JSON.stringify(input);
		
	$.ajax({
		  url : base_url+"rest/homepagevideos/v2/videos/"+allVideos+"/"+chaptype,
		  
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
		  //data: output,
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
			var right="";
			   
			    	 right +='<h5 style="">'+data.chaptername+'</h5>';
						
					
			    	 typeAllvideo=data.videosForUnitWise;
						
						
				
					/*else if(data[i].subject==subtype){
						chemistryvideos=data[i].listitems;
						chemistry();
						
						console.log("chemistry:"+chemistryvideos);

					}
					else if(data[i].subject==subtype){
						mathsvideos=data[i].listitems;
						maths();
						console.log("maths:"+chemistryvideos);
					}
				*/
				
			
			     video();
			     
			     $("#rightview").empty("");
				   
					$('#rightview').append(right);
					
				 
		  },
		  
		  error:function(data){
	    	  alert(data.errorMessage);
	      }
		 
	});
		 

	 };


	 var rightVideo="";
	function video(){
			
		var  appendata="";
		
		/*last7DaysVideos='';*/
	
			 for(var x =0; x<typeAllvideo.length;x++){
				 
				 if(typeAllvideo[x].videoId == videoid){
					  
					 $("#vidid").attr("data-id",videoid);
					 
						appendata +='<div role="tabpanel" class="tab-pane active" >'+
							   /* '<div class="">'+
							    	   '<div class="">'+
							    	   
											*/	'<div class="" style="padding-top:40px">'+
												
													 '<div class="">'+
													 	'<div class="" id="videopause">'+
													 		'<iframe src="'+typeAllvideo[x].videoLink+'?rel=0&showinfo=0&modestbranding=1" width="840px" height="465px"  id="youtubeembad" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
													 		
														 	
													 	'</div>'+
													 	
													 	'</div></div></div>';
				 }
				
				 rightVideo +='<div role="tabpanel" class="tab-pane active" >'+
				 						'<div class="" style="padding-top:40px;padding-top:0px;margin-top:8px">'+
				 						'<div class="">'+
				 						'<div  style="padding:0px;margin:0px;overflow-x:hidden">';
							 			
							 				var url = typeAllvideo[x].videoLink;
							 				var img=typeAllvideo[x].tumbNail
											var img1=img.replace(/'/g, "%27");
							 		    	  var strurl = url.toString();
							 		    	  var segments = url.split( '/' );
							 		    	  var id = segments[4];
							 		    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
							 		    	  
							 		    	  
							 		    	 rightVideo +=/*'<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+*/
							 		    	'<div class="box">'+
							 		    		'<div class="item res-video" style="background-image: url(' + "'" +img1+ "'" + ');background-repeat: no-repeat;background-size:cover;width:393px; height:267px;" onclick="viedomaindisplay('+"'"+typeAllvideo[x].videoId+"'"+',this)" data-videolink='+url+' >'+
							 		    		'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
							 		    		
							 		    		'</div>'+
					/*'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fal fa-caret-right fa-4x text-white" style="margin-top:30%"></i></div>'+
      			'</div>'+*/
												'</div>'+
										    	'<div class="clearfix"></div'+
										    
										      
				 						'</div></div></div></div>';
			}
			 
		
			
		  $("#leftviewVideo").empty("");       
		  $("#leftviewVideo").html(appendata);
			
		$("#rightviewVideo").empty("");
		   
		$('#rightviewVideo').append(rightVideo);
		
	}

/*
var cvideo="";
	function chemistry(){
		
		var chemistryappenddata=" ";
		
		last10DaysVideos='';
		
		for(var c =0; c<chemistryvideos.length;c++){
		
			cvideo=chemistryvideos[c].videosForUnitWise;
		}
		
			getAllVideos();
	

	
	}
var mvideo="";
	function maths(){
		
		var mathsappenddata=" ";
		
		last10DaysVideos='';
		for(var m =0; m<mathsvideos.length;m++){
			console.log("mvideo:"+mvideo);
			 
			cvideo =mathsvideos[m].videosForUnitWise;
			
		}
		
		getAllVideos();
	
	
	
	}*/
	
	function getAllVideos(){ 
		
		var videoid = getParameterByName("videoid");
	
	var studentId=sId;

		var input ={
		     "standardId":standardId,
			"examTypeId":examTypeId,
			"studentId":studentId,
			"videoType":allVideos
		     
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
				 
				 $("#leftviewVideo").empty();
				 $("#leftviewVideo").html(dat);
			
			 },
		  success:function(data){
			  var appendata="";
				var rightVideo1="";
				
			  for(var i =0; i<data.length;i++){
				  
			  if(data[i].id == videoid){
				  

				  $("#vidid").attr("data-id",videoid);
						
	appendata +='<div role="tabpanel" class="tab-pane active" >'+
		   /* '<div class="">'+
		    	   '<div class="">'+
		    	   
						*/	'<div class="" style="padding-top:40px">'+
							
								 '<div class="">'+
								 	'<div class="" id="videopause">'+
								 		'<iframe src="'+data[i].videoLink+'?modestbranding=1&rel=0&showinfo=0" width="840px" height="465px"  id="youtubeembad" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
								 		
								 	'</div>'+
								 	
								 	'</div></div></div>';

			  }
			  
		 rightVideo1 +='<div role="tabpanel" class="tab-pane active" >'+
			'<div class="" style="padding-top:10px;padding-top:0px;margin-top:8px">'+
			'<div class="">'+
			'<div  style="padding:0px;margin:0px;overflow-x:hidden">';
			
				var url = data[i].videoLink;
		    	  var strurl = url.toString();
		    	  var img=data[i].thumbnail
					var img1=img.replace(/'/g, "%27");
		    	  var segments = url.split( '/' );
		    	  var id = segments[4];
		    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
		    	  
		    	  
		    	 rightVideo1 +=/*'<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+*/
		    	'<div class="box">'+
		    		'<div class="item res-video" style="background-image: url(' + "'" +img1+ "'" + ');background-repeat: no-repeat;background-size:cover;width:393px; height:267px;" onclick="viedomaindisplay('+"'"+data[i].id+"'"+',this)" data-videolink='+url+' >'+
		    		'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
 		    		
							 		    		'</div></div>'+
			    	'<div class="clearfix"></div'+
			    
			      
			'</div></div></div></div>';
		    	  
		
		
		
	
								 	/*'<div class="col-md-4" style="height:347px;">'+
								 		'<div class="panel-body" style="padding-top:0px">'+
								 			'<div class="row">'+
								 				'<div id="style-2" style="height:320px;padding:0px;margin:0px;overflow-x:hidden">';
								 			
								 			 for(var y =0; y<cvideo.length;y++){
								 				var url = cvideo[y].videoLink;
								 		    	  var strurl = url.toString();
								 		    	  var segments = url.split( '/' );
								 		    	  var id = segments[4];
								 		    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
								 		    	  
								 		    	  
								 		    	 appendata +='<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+
								 		    	'<div class="box">'+
								 		    		'<div class="item res-video" style="background-image: url('+cvideo[y].tumbNail+');width:225px; height:110px;padding-left:0px;"  onclick="viedomaindisplay(this)" data-videolink='+url+' >'+
								 		    		
								 		    		'</div>'+
											    	'<div class="clearfix"></div></div>'
											     //
											      }
			  }
		
									appendata += '</div></div></div></div></div></div></div></div></div>';
										*/
										
			  
			  }
			  
			   

				$("#rightviewVideo").empty("");
				$('#rightviewVideo').append(rightVideo1);
			 
			  $("#leftviewVideo").empty("");       
				$("#leftviewVideo").html(appendata);
	    	  
			
				/*$("#rightviewVideo").empty("");       
				$("#rightviewVideo").html(appendata);*/
		  },
										
									  error:function(data){
								    	  alert(data.errorMessage);
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
		
