var liveVideo='';
var LoginData = getLoginData();
var sId = LoginData.studentid;
var name = LoginData.name;
var data="";
var modelview1="";
var fileUrl='';
var studentname="";
var referandearnamount="";
var examTypeId="";
var standardId="";
var categoryId="";

var stdvideosubStatus="";


var mobilenumbers=sessionStorage.getItem("mobile");
$("#nameinfo").val(name);
$("#phone_number").val(mobilenumbers);


$(document).ready(function() {
	
	examTypeId=sessionStorage.getItem("examTypeIds");
	standardId=sessionStorage.getItem("standardId");
	categoryId=sessionStorage.getItem("categoryid");
	
	if(examTypeId=="1"){
		$("#examtypeee").html("1-10k Rank - JEE Main")
	}
	else if(examTypeId=="2"){
		$("#crashneet").css("display","none");
		$("#examtypeee").html("1-5k Rank - NEET")
	}
	
	var sId = LoginData.studentid;
    studentname = LoginData.name;
	
	 $("#stdname").val(studentname);
	 
	 $("#studentid").val(sId);
	studentvideoSub();
	 scholarship();
	getAllVideos();
	 getchap();
	getAllIndiaLiveExams();
	getMissedtests();
	getDailyQuizResponse();
	amount();
	skygetsubscription();
	
	//rendereelemntforkatext();
	var referalcode=localStorage.getItem("referalcode");

	
	var lin="https://play.google.com/store/apps/details?id=com.skyget&hl=en_IN";
	
	$(".good-share").attr('data-share-url',lin);
	
	$(".good-share").attr('data-share-text',"Skyget is specialized in IIT-JEE Main.By using my referral code:" + referalcode + ", Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.");

	
});


/* Scholarship program SERVICE modal 	*/

function create_scholshipInfo(){
	
$('#modalSubscriptionForm').hide();

$('#exampleModalCenter').modal();

}




		// GETVIDEO MASKING 


function studentvideoSub(){
	
	/*var mobilenumber=sessionStorage.getItem("mobilenumber");*/

	 var LoginData = getLoginData();
	var sId = LoginData.studentid;
		var examTypes=examTypeId
	
/*var examTypeId = getParameterByName('eid');
*/

	$.ajax({
		  url : base_url+"rest/student/getSubscribeStatus/"+sId +"/"+examTypes,
		  type:"GET",
			dataType:"json",
		  contentType:'application/json',
		  success:function(data){
			  console.log(data);
			  
				if(data.status){
					studentvideoSub=true;
				}
				else{
					
					studentvideoSub=false;
					
				}
				
				
				 },
		
		  error:function(data){
		    	
		      }	  
	
});
}




	function getAllVideos(){ 
	
	 var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
/*var examTypeId = getParameterByName('eid');
*/
var studentId=sId;

	var input ={
	     "standardId":standardId,
		"examTypeId":examTypeId,
		"studentId":studentId
	     
	}

	console.log(input)
	var output =JSON.stringify(input);
	
$.ajax({
	  url : base_url+"rest/homepagevideos/videos/getallvideos",
	  
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
		  
		  	
    		 var allLivevideo = '';
 			var allLivevideo1 = '';
			 var allLivevideo2 = '';
		     var allLivevideo3 = '';
			 var allLivevideo4 = '';
		 var allLivevideo5 = '';
			 var allLivevideo6 = '';
		 	var allLivevideo7 = '';
		var allLivevideo8 = '';
		 	var allLivevideo9 = '';
			 
			 var count=0;
			 var count1=0;
			 var count2=0;
			 var count3=0;
			 var count4=0;
			 var count5=0;
			 var count6=0;
			var count7=0;
			 var count8=0;
			var count9=0;

			for(var i =0; i<data.length;i++){
				 liveVideo=data;
				 var type="live now"
				if(data[i].videoType == "live now"){
					
					/*var link=data[i].videoLink;
					
					
					var link1=link.tostring();
					console.log(link1)
					*/
					
					
					 count++
			            
	if(data[i].islive){
	    			allLivevideo +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:5px;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;cursor: pointer;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:272px;width:400px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:24%"></i></div>'+
	      			'</div>'+
	      			'</div>'+

	            	
	            	'<div class="panel-footer" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">'+
	            	'<div style="padding:20px;">'+
	            	
	            	'<h6 style="font-weight:bold">'+data[i].chapter+'</h6>'+
	                '<h6 style="margin-top:20px;">Duration :'+data[i].duration+'</h6>'+
					'</div>'+
					'<div>'+
					'<a href="#" class="btn btn-rounded cardItem" data-toggle="modal" data-target="#myModal2" onclick="joinNow('+"'"+data[i].videoLink+"'"+')" style="border-radius:10px;font-weight: bold;box-shadow: 0 2px 6px 0 rgb(0 0 0 / 25%);color: #fc6200;border: 1.75px solid #fc6200;cursor: pointer;">Join Now</a>'+
					  '<h6 style="display:flex;display:flex;align-items:center;margin-top:10px;"><i class="fa fa-circle" aria-hidden="true" style="margin-right:5px;"></i>'+data[i].professorName+'</h6>'+
					'</div>'+
	    			'</div>'+
				/*'<div class="" style="padding: 0px  20px"><div style="border-bottom:300px;border:1px solid #A9A9A9;width:360px;"></div></div>'+
				'<h6 style="display:flex;display:flex;align-items:center;margin-top:10px;margin-left:20px;margin-bottom:10px;"><i class="fa fa-star text-warning" aria-hidden="true" style="margin-right:5px;"></i>'+data[i].professorRating+'</h6>'+
				*/
	   			'</div>';
					 
					 if(count == 3){
			    			
			    			var v = document.getElementById("getAllLivevideo"); 
				            v.className += "scrolling-wrapper"; 
				            
							 }
					
					 
					
		            }



	else{
		
		
		allLivevideo +='<div class="panel panel-default" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:5px;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;cursor: pointer;" >'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:272px;width:400px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:24%"></i></div>'+
	      			'</div>'+
	      			'</div>'+

	            	
	            	'<div class="panel-footer" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">'+
	            	'<div style="padding:20px;">'+
	            	
	            	'<h6 style="font-weight:bold">'+data[i].chapter+'</h6>'+
	                '<h6 style="margin-top:10px;">Duration :'+data[i].duration+'</h6>'+
					'</div>'+
					'<div>'+
					'<a href="#" class="btn btn-rounded cardItem" data-toggle="modal" data-target="#myModal2" onclick="register()" style="border-radius:10px;font-weight: bold;box-shadow: 0 2px 6px 0 rgb(0 0 0 / 25%);color: #fc6200;border: 1.75px solid #fc6200;cursor: pointer;">Register</a>'+
					 '<h6 style="display:flex;display:flex;align-items:center;margin-top:10px;"><i class="fa fa-circle" aria-hidden="true" style="margin-right:5px;"></i>'+data[i].professorName+'</h6>'+
					'</div>'+
	    			'</div>'+
				/*'<div class="" style="padding:0px  20px"><div style="border-bottom:300px;border:1px solid 	#A9A9A9;width:360px;"></div></div>'+
				'<h6 style="display:flex;display:flex;align-items:center;margin-top:10px;margin-left:20px;margin-bottom:10px;"><i class="fa fa-star text-warning" aria-hidden="true" style="margin-right:5px;"></i>'+data[i].professorRating+'</h6>'+
				*/
	   			'</div>';
					 
					 if(count == 3){
			    			
			    			var v = document.getElementById("getAllLivevideo"); 
				            v.className += "scrolling-wrapper"; 
				            
							 }
					
					 
					
		            }
		
		
	}
				
				
			
				else if(data[i].videoType == "Methods to Solve"){
					
					
					count1++
					if(studentvideoSub){
					allLivevideo1 +='<div class="panel " style="display:inline-block;padding:0px;margin-right:10px;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';	
					}
	    			
					else{
					allLivevideo1 +='<div class="panel " style="display:inline-block;padding:0px;margin-right:10px;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' data-toggle="modal" data-target="#statusSubscription" style="padding:0px; marging:0px;" onclick="subscriptionPop()">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';	
					}
	    			
	    			 if(count1 == 3){
			    			
	    				 var v = document.getElementById("methodtosolve"); 
	 		            v.className += "scrolling-wrapper"; 
				            
							 }
			
						
					
					 	}
					else if(data[i].videoType == "Concepts - in Real world applications"){
						
					count2++
					
					if(studentvideoSub){
					
	    			allLivevideo2 +='<div class="panel " style="display:inline-block;padding:0px; margin-right:10px;border-radius:5px;cursor: pointer;">'+	
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';
					}
	    			
					else{
							allLivevideo2 +='<div class="panel " style="display:inline-block;padding:0px; margin-right:10px;border-radius:5px;cursor: pointer;">'+	
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" data-toggle="modal" data-target="#statusSubscription" onclick="subscriptionPop()">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';
						}
	    			
	    			 if(count2 == 3){
			    			
	    				 var v = document.getElementById("realworldconcepts"); 
	 		            v.className += "scrolling-wrapper"; 
				            
							 }
					
	    			
				}
				/*else if(data[i].videoType == "Doubts Videos"){
					
					count3++
	    			allLivevideo3 +='<div class="panel" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class="datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
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
					
					if(count3 == 3){
		    			
	   				 var v = document.getElementById("clearanydoubt"); 
			            v.className += "scrolling-wrapper"; 
				            
							 }
	    			
				}*/
				
				/*else if(data[i].videoType == "Tricks & Logics"){
					
					count4++;
	    			allLivevideo4 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class=" datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
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
	    			
	    			if(count4 == 3){
		    			
	   				 var v = document.getElementById("examhacking"); 
			            v.className += "scrolling-wrapper"; 
				            
							 }
	    			
				}*/
				/*else if(data[i].videoType == "Motivational Videos"){
					
					count5++;
	    			allLivevideo5 +='<div class="panel" style="display:inline-block;padding:0px;margin-right:10px;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'"  data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNows('+"'"+data[i].videoType+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+

	   			'</div>';
	    			
	    			if(count5 == 3){
		    			
	      				 var v = document.getElementById("motivational"); 
	   		            v.className += "scrolling-wrapper"; 
	   			            
	   						 }
	    			
				}*/
				/*else if(data[i].videoType == "News & Update"){
					count6++;
					
	    			allLivevideo6 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'"  data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNows('+"'"+data[i].videoType+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+

	   			'</div>';
	    			
	    			if(count6 == 3){
		    			
	      				 var v = document.getElementById("newsupdates"); 
	   		            v.className += "scrolling-wrapper"; 
	   			            
	   						 }
	    			
				}*/
		
		  
	    	  else if(data[i].videoType == "Crash Course"){
					count7++;
					
	    			allLivevideo7 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+

	            	/*
	            	'<div class="panel-footer" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">'+
	            	'<div style="padding:20px;">'+
	            	'<div class="text-primary">'+data[i].subject+'</div>'+
	            	'<div>'+data[i].chapter+'</div>'+
					'</div>'+
					'<div>'+
					'<a href="#" class="btn btn-primary btn-rounded  " style="border-radius:10px">Join Now</a>'+
					'</div>'+
	    			'</div>'+*/
	   			'</div>';
	    			
	    			if(count7 == 3){
		    			
	      				 var v = document.getElementById("crashCourse"); 
	   		            v.className += "scrolling-wrapper"; 
	   			            
	   						 }
	    			
				}
				
			/*	new Video types*/
			
	    	  	else if(data[i].videoType == "Fit Formulae"){
					count8++;
					if(studentvideoSub){
	    			allLivevideo8 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';
					}
	    			
					else{
						allLivevideo8 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' data-toggle="modal" data-target="#statusSubscription" style="padding:0px; marging:0px;" onclick="subscriptionPop()">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';
						
						}
	    			
	    			if(count8 == 3){
		    			
	      				 var v = document.getElementById("fitformulae"); 
	   		            v.className += "scrolling-wrapper"; 
	   			            
	   						 }
	    			
				}
				/*else if(data[i].videoType == "Confusions & Misconceptions"){
					count9++;
					
	    			allLivevideo9 +='<div class="panel" style="display:inline-block;padding:0px; margin-right:10px;cursor: pointer;border-radius:5px;cursor: pointer;">'+
	    			'<div class="panel-body datavid'+data[i].id+'" data-sub='+data[i].subject+' data-id='+data[i].id+' data-videolink='+data[i].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+data[i].videoType+"'"+','+"'"+data[i].chapterId+"'"+',this)">'+
	      			'<div  style="background-image:url('+"'"+data[i].thumbnail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px;">'+
	      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:26%"></i></div>'+
	      			'</div>'+
	      			'</div>'+
					'</div>';
	    			
	    			if(count9 == 3){
		    			
	      				 var v = document.getElementById("confusionsmis"); 
	   		            v.className += "scrolling-wrapper"; 
	   			            
	   						 }
	    			
				}*/
		
		
		  }
    	  
		 if(allLivevideo =="" || allLivevideo==null){
			 
				$("#getAllLivevideo").empty("");
		   		$("#getAllLivevideo").append("<h6 class='text-center' style='padding:10px;'>Live Videos will be updated soon ... ...</h6>");	  

				}
				else{
					
				$("#getAllLivevideo").empty();
		    	$('#getAllLivevideo').append(allLivevideo);
		 		}

				if(allLivevideo1 =="" || allLivevideo1==null){
				$('#methodtosolve').empty("");
		   		/*$('#methodtosolve').append("<h6 class='text-center' style='padding:10px;'>Method To Solve Videos will be updated soon ... ... </h6>");	  */
				
				$('#methodtosolve').append("<h6 class='text-center' style='padding:10px;'>Skyget Thunders Videos will be updated soon ... ... </h6>");	  
				}
				else{
				 $("#methodtosolve").empty();
		    	
		    	 $('#methodtosolve').append(allLivevideo1);
				}
				
				if(allLivevideo2 =="" || allLivevideo2==null){
					$("#realworldconcepts").empty("");
		   	/*	$("#realworldconcepts").append("<h6 class='text-center' style='padding:10px;'>Real Worlds Concept Videos will be updated soon ...</h6>");*/	  
				
					$("#realworldconcepts").append("<h6 class='text-center' style='padding:10px;'>Concept Scorers Videos will be updated soon ...</h6>");
				}
					else{
					$("#realworldconcepts").empty();
		    	
		    	  $('#realworldconcepts').append(allLivevideo2);	
					}

		 		/*if(allLivevideo3 =="" || allLivevideo3==null){
				
				$("#clearanydoubt").empty("");
		   		$("#clearanydoubt").append("<h6 class='text-center' style='padding:10px;'>Clear Any Doubt  Videos will be updated soon ...</h6>");	  
				
				$("#clearanydoubt").append("<h6 class='text-center' style='padding:10px;'>Doubt Clearance  Videos will be updated soon ...</h6>");	  
				}
				else{
				$("#clearanydoubt").empty();
		    	
		    	  $('#clearanydoubt').append(allLivevideo3);	
					
				}*/
				
				/*if(allLivevideo4 =="" || allLivevideo4==null){
				$("#examhacking").empty("");
		   		$("#examhacking").append("<h6 class='text-center' style='padding:10px;'>Exam Hacking & Tricks Videos will be updated soon ...</h6>");	  
				$("#examhacking").append("<h6 class='text-center' style='padding:10px;'>Tricks & Logics Videos will be updated soon ...</h6>");	  
				}
					else{
						
		 		$("#examhacking").empty();
		    	
		    	  $('#examhacking').append(allLivevideo4);
					}*/
					
					
					
					
					/*MOTI & NEWS*/
					
					
				/*	if(allLivevideo5 =="" || allLivevideo5==null){
						$("#motivational").empty("");
		   		$("#motivational").append("<h6 class='text-center' style='padding:10px;'>Motivational Videos will be updated soon ...</h6>");	  
					}
						else{
						$("#motivational").empty();
		    		 $('#motivational').append(allLivevideo5);	
						}
		 		
				

					if(allLivevideo6 =="" || allLivevideo6==null){
						$("#newsupdates").empty("");
		   				$("#newsupdates").append("<h6 class='text-center' style='padding:10px;'>News & Update Videos will be updated soon ...</h6>");	  
						}
						else{
					$("#newsupdates").empty();
		    	$('#newsupdates').append(allLivevideo6);
		    	 }*/

				if(allLivevideo7 =="" || allLivevideo7==null){
				$("#crashCourse").empty("");
		   		$("#crashCourse").append("<h6 class='text-center' style='padding:10px;'>Crash Course Videos will be updated soon ... </h6>");	  
					}
			else{

					$("#crashCourse").empty();
		    	
		    	  $('#crashCourse').append(allLivevideo7);
		    	}  

			/*new video types*/
			
			if(allLivevideo8 =="" || allLivevideo8==null){
				$("#fitformulae").empty("");
		   		$("#fitformulae").append("<h6 class='text-center' style='padding:10px;'>No More Mistakes Videos will be updated soon ... </h6>");	  
					}
			else{

					$("#fitformulae").empty();
		    	
		    	  $('#fitformulae').append(allLivevideo8);
		    	} 
			/*if(allLivevideo9 =="" || allLivevideo9==null){
				$("#confusionsmis").empty("");
		   		$("#confusionsmis").append("<h6 class='text-center' style='padding:10px;'>Confusions & Misconceptions Videos will be updated soon ... </h6>");	  
					}
			else{

					$("#confusionsmis").empty();
		    	
		    	  $('#confusionsmis').append(allLivevideo9);
		    	} */
	  },
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
 

};

function register(){
	
	alertify. alert("You have successfully registered for Live classes");
	
}


function getAllIndiaLiveExams(){
	
	var LoginData = getLoginData();
var sId1 = LoginData.studentid;

var standareq ={
	"studentId": sId1,
	"testType": "All"
}
	
	var standstr = JSON.stringify(standareq);
	
$.ajax({
	type: "POST",
	dataType: "json",
	 async:false,	 
	url: base_url+'rest/student/v1/getActiveLiveZoneTestsforandroidHome',
	data: standstr,
	contentType: 'application/json',
	success: function(data){
		
		
		
		var counter=0;

	  console.log(data);

			var examt = "subjectnumeric";
				/*	var background = "subjectwisey";*/
						var testname = "subjectstress1";
						var border = "scheduler-bordersubj";
						var mocktype ="scheduler-border1";
					
		 var appenddata = '';
	 for(var i =0; i<data.length;i++){
		counter++
		appenddata += "<div style='display:inline-block;padding:0px;'>"+
    			
		"<div class='row adjust ' style='display:inline-block;'>"+
					"<div class='totalbox'>"+
			 				/*"<div class='"+background+"'></div>"+*/
										"<div class='col-md-12 col-sm-12  col-lg-12'>"+
										"<div class='col-md-12 col-sm-12  col-lg-12 boxbg'  style='width: 481px;background:#fff;'>"+
										"<h6 class='text-center text-primary'><i class='fa fa-inr' aria-hidden='true'></i>Take Test, Earn Rs "+ data[i].amt+"</h6>";
			
			 appenddata += "<fieldset class='"+border+" properties-fSet '>"+
				
			/*"<legend class='scheduler-border'><span>"+data[i].examType+"</span></legend>"+*/
			"<div class='innerbox'>";
			       /* "<legend class='scheduler-border2'><div class='"+examt+"'>"+data[i].studentId+"<sup>th</sup></div></legend>"+*/
       if(data[i].testType =="Mock Test"){
	
			appenddata +="<legend class='"+mocktype+"' style='margin-left:30px'>"+data[i].testType+"</legend>";
			}
			
			else{
				appenddata +="<legend class='"+mocktype+"' style=''>"+data[i].testType+"</legend>";
				
			}
			
			appenddata +="<div class='col-md-12 col-sm-12  col-lg-12' style='text-align:center'>"+
													"<span class='"+testname+"' style='white-space: normal;'>"+data[i].testName+"</span>"+
														"<p class='stresss2'>"+data[i].numofquestions+"Q/"+data[i].marks+"M/"+data[i].testTime+"min</p></div>"+
														
			"<div class='col-md-12 col-sm-12  col-lg-12' style='text-align:center;margin-bottom: 18px'>"+
													/*"<span class='stresss3'>"+data[i].subjects+"</span>"+*/
														"<p class='stresss'>"+data[i].openingDate+" to </p>"+
														"<p class='stresss'>"+data[i].closingDate+"</p>"+
					"</div>"+
					
					
										"<div class='col-md-12 col-sm-12 col-lg-12 height' style='display:flex; justify-content:center'>"+
								"<div class='center'>";
								 if(data[i].alreadyTaken){
									 appenddata += 	"<a href='#' onclick='testtaken();' data-toggle='modal' data-target='#testtakenmodal'  class='buttontest cardItem'>TEST TAKEN </a>";
								 }else
									 {
									 appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId1+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button cardItem'>TAKE TEST</a>";
									/*  if(data[i].subscribedExamType){
									     appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									 }else{
										 appenddata += 	"<a href='#' onclick='subscripexamtype();' data-toggle='modal' data-target='#subscribmodel'  class='button'>TAKE TEST </a>"; 
									 } */
								}
								
							/*			
								 appenddata += 	"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='LASTTEXT'>";
									var subjectiddropdown=[];
									var subjectdnameropdown =[];
									var sub =data[i].subjectIdList;
									 for(var j=0; j < sub.length; j++){ 
										var id =sub[j].id;
										var name = sub[j].name;
										subjectiddropdown.push(id);
										subjectdnameropdown.push(name);
									} 
									 subjectiddropdown = subjectiddropdown.join();
									 subjectdnameropdown = subjectdnameropdown.join();
									//subjectiddropdown = data[i].subjectIdList;
									if(data[i].testType == "Full-Syllabus Mock"){
										 appenddata += 	"<a href='#'  onclick='suggestFields()' class='fullnxtexam fields' data-toggle='modal' data-id='"+data[i].id+"_"+"_"+data[i].standardId+"_"+examtype+"_"+subjectdnameropdown+"' data-target='#fullexampleModalSuggest'>Suggestions are welcome </a>";
									}else{
										 appenddata += 	"<a href='#'  onclick='suggestFields()' class='nxtexam fields' data-toggle='modal' data-id='"+data[i].id+"_"+"_"+data[i].standardId+"_"+subjectiddropdown+"_"+subjectdnameropdown+"_"+examtype+"' data-target='#exampleModalSuggest'>Suggest syllabus for next exam </a>";
									}
									
									 appenddata +="</div>"+
								"</div>"+
								"</div>"+*/
						 appenddata +="</div></div>"+
						
					
					
					
					
					
					
							/*"<div class='col-md-12 col-sm-12  col-lg-12'>"+
							"<div class='row form-group'>"+
								"<div class='col-md-6 col-sm-6  col-lg-6'>"+
									"<label class='stresss3' for='example-email'>Topper Name(till now)<span class='span-1'>:</span></label>"+
								"</div>"+
									
										"<div class='col-md-6 col-sm-6  col-lg-6 stresss3'>"+toppers+"<img src='"+toppers+"' class='topper-img'></div>"+
							"</div>"+
							"</div>"+*/
									/*"<div class='col-md-12 col-sm-12 col-lg-12 height'>"+
							"<div class='center'>";*/
							/* if(data[i].alreadyTaken){
								 appenddata += 	"<a href='#' onclick='testtaken();' data-toggle='modal' data-target='#testtakenmodal'  class='buttontest'>TEST TAKEN </a>";
							 }else
								 {
								 appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
								/*  if(data[i].subscribedExamType){
								     appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
								 }else{
									 appenddata += 	"<a href='#' onclick='subscripexamtype();' data-toggle='modal' data-target='#subscribmodel'  class='button'>TAKE TEST </a>"; 
								 } */
							/*}*/
							
						
					"</div>"+
			"</fieldset></div></div></div>	</div></div>";
				 if(counter == 3){
		    			
		    			var v = document.getElementById("realAllIndiaLiveExams"); 
			            v.className += "scrolling-wrapper"; 
			            
						 }
		

			
	 } 
	  	$("#realAllIndiaLiveExams").empty("");
   
		 $('#realAllIndiaLiveExams').append(appenddata);
		 
	
  },
	  
  
  error:function(data){
	  $("#realAllIndiaLiveExams").empty("");
	   $('#realAllIndiaLiveExams').append("<h6 class='text-center' style='padding:40px;font-weight:bold'>Tests will be updated soon ... </h6>");	  

  }
 
});
};

function joinNows(type,dat){
	
	var id = $(dat).attr("data-id");
	
		 window.location = base_url+"jsp/student/student module/viewvideos.jsp?videotype="+type+"&videoid="+id;
		
	
}

var videp="";
function joinNow1(type,chap,dat){
	
	var types="Tricks"
	var typess="News";
	
	if(type=="Tricks & Logics"){
		
		type=types;
	}
	
	if(type =="News & Updates"){
		
		type=typess;
		
	}
	
	
/*	var type=localStorage.getItem("type");*/
	var id = $(dat).attr("data-id");
/*	var type = $(id).attr("data-videotype");*/
	/*var sub = $(this).attr("data-sub");*/
	
	
	
	 window.location = base_url+"jsp/student/student module/viewvideos.jsp?videotype="+type+"&videoid="+id+"&chaptype="+chap;
	
	/*link.stopPropagation();
	link.preventDefault();
*/
	   
	    
		
/*			 
videp='<iframe id="ytplayer'+id+'" type="text/html" src="'+link+'" width=100% height=100%; frameborder="0" allowfullscreen>';
var videoElement = document.getElementById("ytplayer"+id);*/

		 
		/* $(".datavid"+id).empty("");
			
		  $(".datavid"+id).append(videp);*/
		  
		  
		/*  var playerElement = document.getElementById("ytplayer"+id);

		    playerElement.playVideo();   //`playVideo` is undefined

		    var requestFullScreen = playerElement.requestFullScreen || playerElement.mozRequestFullScreen || playerElement.webkitRequestFullScreen;
		    if (requestFullScreen)
		    {
		        requestFullScreen.bind(playerElement)();
		    }*/

	  
	/* $("#methodtosolve").empty();
	
	  $('#methodtosolve').append(videp);
	$("#realworldconcepts").empty();
	
	  $('#realworldconcepts').append(videp);
	$("#clearanydoubt").empty();
	
	  $('#clearanydoubt').append(videp);
	$("#examhacking").empty();
	
	  $('#examhacking').append(videp);
$("#motivational").empty();
	
	  $('#motivational').append(videp);
$("#newsupdates").empty();
	
	  $('#newsupdates').append(videp);
	 
		$("#crashCourse").empty();
	
	  $('#crashCourse').append(videp);
	*/
}



function getMissedtests(){	
		
	
		var LoginData = getLoginData();
	var sId2 = LoginData.studentid;
	
var standareq ={
		"testType":"Full-Syllabus Mock",
		"studentId":sId2,
		"examtypeId":"-1"
	}
		
		var standstr = JSON.stringify(standareq);
		
	$.ajax({
		type: "POST",
		dataType: "json",
		 async:false,	 
		url: base_url+'rest/student/v1/getStudentmissedtestsAndroidHome',
		data: standstr,
		contentType: 'application/json',
		success: function(data){
	var counters=0;
		  console.log(data);
		  var count4=0;
 		 var appenddata = '';
		 for(var i =0; i<data.length;i++){
			counters++
			
 			appenddata +="<div style='display:inline-block;padding:0px;'>"+
    			
							"<div class='row adjust ' style='display:inline-block;'>"+
									"<div class='totalbox'>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
	
	'<div class="panel panel-default cardItem" style="border-radius:30px;padding:20px;margin-left:20px;">'+
 			/*'<div class="panel-header" style="padding:0px; marging:0px;display:flex;justify-content:center;align-items:center;white-space:normal">'+'<h4 style="color:orange">'+data[i].testName+'</h4>'+'</div>'+*/
 			'<div class="panel-body" style="padding:0px; marging:0px;color:black;">'+
			'<div style="white-space: normal;"><h4 class="text-center" style="color:orange">'+data[i].testName+'</h4></div>'+
 			'<div style="display:flex;justify-content:center;align-items:center;">'+
 			'<span>'+data[i].noofQuestions+'Q/</span>'+
 			'<span>'+data[i].totalMarks+'M/</span>'+
 			'<span>'+data[i].time+'Min</span>'+'</div>'+ 
		 
 			'<h6 style="display:flex;justify-content:center;align-items:center;">'+data[i].subjectName+'</h6>'+
 			
 			'<div class="" style="padding:0px; marging:0px;display:flex;justify-content:center;align-items:center;">'+'<img src="https://cdn2.vectorstock.com/i/thumb-large/84/31/double-check-graphic-icon-design-template-vector-23278431.jpg" style="width:50px;height:50px">';
		 						if(data[i].alreadyTaken){
									 appenddata += 	"<a href='#' onclick='testtaken();' data-toggle='modal' data-target='#testtakenmodal'  class='buttontest'>TEST TAKEN </a>";
								 }else
									 {
									 appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].testPostID+"&studentid="+sId2+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									/*  if(data[i].subscribedExamType){
									     appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									 }else{
										 appenddata += 	"<a href='#' onclick='subscripexamtype();' data-toggle='modal' data-target='#subscribmodel'  class='button'>TAKE TEST </a>"; 
									 } */
								}
								
		appenddata +='</div>'+
 			'</div>'+
 			'</div></div></div></div></div></div>';
 			 
 		 if(counters == 3){
		    			
		    			var v = document.getElementById("missedTest"); 
			            v.className += "scrolling-wrapper"; 
			            
						 }
								
 			
		 } 
		  	$("#missedTest").empty("");
	   
			 $('#missedTest').append(appenddata);
			 
		
	  },
    	  
	  
	  error:function(data){
		  $('#missedTest').empty("");
	   		$('#missedTest').append("<h6 class='text-center' style='padding:10px;'>Tests will be updated soon ... </h6>");	  

      }
	 
});

};


function testtaken(){
	
	alert("Exam already written by you,you can't take exam twice")
}


function getDailyQuizResponse(){
var LoginData = getLoginData();
	var sId3 = LoginData.studentid;
	
var standareq ={
		"examtypeId": examTypeId,
		"months": 3,
		"studentId": sId3
	}
		
		var standstr = JSON.stringify(standareq);
		
	$.ajax({
		type: "POST",
		dataType: "json",
		 async:false,	 
		url: base_url+'rest/student/getDailyQuizResponseforandroidHome',
		data: standstr,
		contentType: 'application/json',
		success: function(testData){
	var co=0;
		  console.log(testData);
 		 var dailyQuizResponses = '';
 		 
 		 var data=testData.tests;
		 for(var i =0; i<data.length;i++){
			 
			 co++
			  dailyQuizResponses +="<div style='display:inline-block;padding:0px;'>"+
    			
							"<div class='row adjust ' style='display:inline-block;'>"+
									"<div class='totalbox'>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
		
		'<div style="margin-left:20px;">'+
		'<h5 style="margin-left:10px; margin-top:20px;padding:10px;">'+data[i].date+'</h5>'+
 			'<div class="panel panel-default daily_recal cardItem" style="border-radius:30px;padding:20px;margin-right:10px;">'+
 			'<div class="panel-header" style="display:flex;justify-content:space-between;align-items:center;white-space:normal">'+
 			
 			'<h4 class="">'+data[i].testName+'</h4>'+
 			'<div class="">'+
		/*<img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/notepad-512.png" style="width:30px">*/
		'</div>'+
 			'</div>'+
 			'<div class="panel-body" style="padding:0px; marging:0px;color:black">'+
 			'<div style="display:flex;justify-content:start;align-items:center;margin-bottom:10px;">'+
 			'<span style="margin-top:10px">'+data[i].questions+'Qns./</span>'+
 			'<span style="margin-top:10px">'+data[i].time+'Min</span>'+
 			'</div>';
 			
			 if(data[i].studentRank =="" || data[i].studentRank ==null){
				 '<div style="display:flex;justify-content:start;align-items:center;margin-top:10px ">Rank:'+'</div>'; 
			 }
			 else{
				 
				 dailyQuizResponses += 	'<div style="display:flex;justify-content:start;align-items:center;margin-top:10px ">'+
	 			 '<div>Rank:'+'</div>'+
	 			 '<div>'+data[i].studentRank+'</div>'+
	 			 '</div>';		 }
			 
				 
			 
			 '<div style="display:flex ;justify-content:end; margin-top:5px;">';

 			 if(data[i].testStatus =="wrote"){
									 dailyQuizResponses += 	"<a href='#'  class='buttontest' style='margin-top:15px;'>"+
								"<div style='display:flex;justify-content:space-between;align-items:center'>"+ 
											"<div style='display:flex; align-items:center;font-size:15px;'>"+
													"<img src='"+base_url+"assets/images/students/summary/comparitive/Score.png' width='40px' height='40px'>"+
									 					"<div style=''>your Score:</div><div>"+data[i].yourScore+"</div>/"+"<div>"+data[i].totalScore+"</div>"+
											"</div>"+
									 "<div style='color:skyblue;margin-left:15px;border-bottom:2px solid white;color:blue' class='cardItem' id='viewclick"+data[i].testId+"' onclick='getsummarycwupa("+sId+","+data[i].testId+")' data-toggle='modal' data-target='#showmoreModal"+data[i].testId+"'>view</div>"+
																
 									"</div>";
								
									 modelview1 +="<div class='modal fade' id='showmoreModal"+data[i].testId+"'  tabindex='-1' role='dialog' aria-labelledby='showmoreModal'>"+
									  "<div class='modal-dialog modal-lg' role='document'>"+
										"<div class='modal-content'>"+
														 "<div class='modal-header'>"+
																        "<h4 class='fonkar'>Hey, <span id='individualshowpaper'>"+name+"</span></h4>"+ 
																        "<div class='row'>"+
															            "<div class='col-sm-2 col-sm-offset-1 whsp' style='display:flex'><img  data-toggle='modal' data-id='"+data[i].testId+"' src='"+base_url+"assets/images/students/summary/individual/view/Correct.png' width='25px' alt=''> Correct : <text id='correct"+data[i].testId+"'></text> </div>"+
															            "<div class='col-sm-2 whsp' style='display:flex'><img  data-toggle='modal' data-id='"+data[i].testId+"'  src='"+base_url+"assets/images/students/summary/individual/view/Unattempted.png' width='22px' alt=''> UnAttempted  : <text id='unattempt"+data[i].testId+"'></text> </div>"+
															            "<div class='col-sm-2 whsp' style='display:flex'><img data-toggle='modal' data-id='"+data[i].testId+"' src='"+base_url+"assets/images/students/summary/individual/view/Wrong.png' width='25px' alt=''> Wrong  : <text id='wrong"+data[i].testId+"'></text> </div>"+
															            "<div class='col-sm-2 whsp' style='display:flex'><img data-toggle='modal' data-id='"+data[i].testId+"'  src='"+base_url+"assets/images/students/summary/comparitive/Accuracy.png' width='25px' alt=''> Accuracy  : <text id='accuracy"+data[i].testId+"'></text>% </div>"+
															            "<div class='col-sm-2 whsp' style='display:flex'><img  data-toggle='modal' data-id='"+data[i].testId+"'  src='"+base_url+"assets/images/students/summary/individual/performance/percentage.png' width='20px' alt='' height='22px'> Percentage  : <text id='percentage"+data[i].testId+"'></text>%</div>"+
														               "</div>"+
																     "</div>"+
											"<div class='modal-body'>"+
												"<div class='panel-body'>"+
													"<div class='panel-group accordion-struct' id='showmoreModal_tbody"+data[i].testId+"' role='tablist' aria-multiselectable='true'>"+
														"<div class='row'>"+
															"<div class='col-sm-12'>"+
																"<div class='tab-struct custom-tab-1'>"+
																	"<ul role='tablist' class='nav nav-tabs sky_blue_tabs' id='shopepertabs"+data[i].testId+"'>"+
																	 "<li class='' role='presentation'></li>"+
																		"<li role='presentation' class=''>Getting...</li>"+
																		"<li role='presentation' class=''></li>"+
																	"</ul>"+
																	"<div class='tab-content' id='questionsContents"+data[i].testId+"'>"+
																	"</div>"+
																	"</div>"+
																	"</div>"+
																	"</div>"+
																	"</div>"+
																	"</div>"+
																	"</div>"+
											"<div class='modal-footer'>"+
												"<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>"+
												"</div>"+
												"</div>"+
												"</div>"+
												"</div>";
								 dailyQuizResponses +="<div style='display:flex ; align-items:center;margin-left:8px'>" +
									"<img src='"+base_url+"assets/images/students/summary/individual/performance/percentage.png' style='width:26px;height:26px;'>"+
									 "<div style='margin-left:10px;font-size:15px'><div style='display:flex;align-items:center;'><div>Avg Score:</div><div>"+data[i].avgScore+"</div></div>"+
									 "<div style='display:flex;align-items:center;'><div>participants:</div><div><strong>"+data[i].participants+"</strong></div></div>"+
									 "</div>"+
									 "</div>"+"</div>"+"</div>"+
									 "</a>";

								 }else
									 {
									 dailyQuizResponses +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].testId+"&studentid="+sId3+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									/*  if(data[i].subscribedExamType){
									     appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									 }else{
										 appenddata += 	"<a href='#' onclick='subscripexamtype();' data-toggle='modal' data-target='#subscribmodel'  class='button'>TAKE TEST </a>"; 
									 } */
								}
		dailyQuizResponses +='</div>'+
 			
 			
 			'</div></div>'+
 			'</div></div></div></div></div></div>';
			
			 if(co == 2){
		    			
		    			var v = document.getElementById("dailyQuizResponse"); 
			            v.className += "scrolling-wrapper"; 
			            
						 }					
 			
		 } 
		  	$("#dailyQuizResponse").empty("");
	   
			 $('#dailyQuizResponse').append(dailyQuizResponses);
				
				setTimeout(function(){
					 $("#modelview").empty("");
					 $('#modelview').append(modelview1);
					rendereelemntforkatext();
				}, 500);
		
			 
			
		
	  },
    	  
	  
	  error:function(data){
		  $('#dailyQuizResponse').empty("");
	   		$('#dailyQuizResponse').append("<h6 class='text-center' style='padding:10px;'>Tests will be updated soon ... </h6>");	  

      }
	 
});
};

function amount(){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	$.ajax({
		  url : base_url+"rest/student/getReferandEarnDetails/"+sId,
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
		  success:function(data){
			  
			 /*if(data.referandearnamount ==0 || data.referandearnamount == null){
				 
			 
				 $("#amount").html("0"); 
				 
			 } 
			 
			 else{*/
			  
			  $("#amount").html(data.referandearnamount);
			  referandearnamount=data.referandearnamount;
			 // sessionStorage.setItem('amount', data.referandearnamount);
		  },
		
		  error:function(data){
		    	  alert(data.errorMessage);
		      }	  
	
});
}



function widthdraw(){
	
	var amou =referandearnamount;
	
	
	
	if(amou =="" || amou < 10){
		
		
		
		var tab='<div>Wallet  balance should be minimum Rs.10</div>'+
		'<div class="modal-footer" style="border:none;display:flex; justify-content:center;" data-dismiss="modal">'+
		'<button class="btn btn-sm" style="background-color:#9900cc;border:solid 1px white;border-radius:8px;color:white">ok'+'</button>'+
		'</div>';
		
		$(".with").empty("");
		$(".with").append(tab); 
		 
	 } 
	
	else{
		
		var table ='<div style="color:white;font-size:18px">'+"If you take subscription with the referral amount,"+'<span style="border-bottom:1px solid white"> more '+amou+'</span>'+'<span>'+" rupees will be added automatically from Skyget"+'</div>'+
		
		'<div style="display:flex;align-items:center;justify-content:center;margin-top:20px;">'+
		'<button class="btn" data-toggle="modal" style="border:solid 1px white;background-color:#9900cc;color:white;width:25%;border-radius:8px" onclick="Buy()"><a href="#" style="color:white">Buy</a></button>'+
		
		'<button class="btn" data-toggle="modal" data-target="#myModal1" data-dismiss="modal"  style="width:25%;border:solid 1px white;background-color:#9900cc;color:white; margin-left:20px;border-radius:8px" onclick="widthdra()">Withdraw</button>'+
		'</div>';
		
		$(".with").empty("");
		$(".with").append(table); 
		 
	}
}


	function Buy(){
		
		window.location = base_url+"jsp/student/student module/subscriptionpay1.jsp";
	} 
	
	function widthdra(){
		
		//var data1 = referandearnamount;
		var mobile=sessionStorage.getItem("mobile");
		
		
		var table1 ='<div>'+'<div style="font-size:16px;color:white;display:flex;align-items:center;justify-content:center;">'+"please enter the amount the range between 10.0 and "+'<span>'+referandearnamount+'</span>'+'<span>'+".0"+'</span>'+'</div>'+
		'<div style=""><input type="number" id="walletmoney" class="form-control w-50" placeholder="Please Enter Amount" style="width:250px;margin-top:5px;margin-left:130px;height:35px">'+
		'<div style="color:white;display:flex;align-items:center;justify-content:center;margin-top:6px;font-size:16px">'+"please provide paytm wallet number"+'</div>'+
		'<input type="tel" id="mobileNumber" class="form-control w-25" placeholder="Enter Mobile Number" value="'+mobile+'" style="width:250px;margin-top:5px;margin-left:130px;height:35px"></div>'+
		'<div style="display:flex;align-items:center;justify-content:center;margin-top:10px">'+
		'<button class="btn" data-toggle="modal"  data-target="#myModals" style="margin-top:10px;border:solid 1px white;background-color:#9900cc;color:white;display:flex;align-items:center;justify-content:center;border-radius:8px;width:25%" onclick="submit()">submit</button>'+
		'</div>'+'</div>';
		
        $(".with1").empty("");
        $(".with1").append(table1);
		
		
		}
	
	/*var amountwallet=$("#walletmoney").val();
	
	  if(amountwallet =="" ||  amountwallet ==null){
		  
   	   alert("Enter wallet  balance should be minimum Rs.10");
   	   
     
      }*/
      
	/*
		function submit(){
			
			var data1 = sessionStorage.getItem('amount');
			
			var amountwallet=$("#walletmoney").val();
			
			if(amountwallet ==0 || amountwallet <= 10 ){
				  
		   	   alert("Enter wallet  balance should be minimum Rs.10");
		   	   return false;
		 
		 } 
			
			else{
			var table2='';
			table2 = '<div class="modal fade" id="myModals" role="dialog" style="color:blue;">'+
		    '<div class="modal-dialog">'+
		    '<div class="vertical-alignment-helper">'+
		     '<div class="modal-dialog vertical-align-center">'+
		     '<div class="modal-content" style="background-color:blue;color:white">'+
		       '<div class="modal-body" style="padding:40px">'+
		        '<div class="withs" style="color:white">'+'<h6 style="color:white;display:flex;align-items:center;justify-content:center;">'+"please provide paytm wallet number"+'</h6>'+
			'<div style="display:flex;align-items:center;justify-content:center;"></div>'+
			'<div style="display:flex;align-items:center;justify-content:center;margin-top:10px">'+
			'<button class="btn" data-toggle="modal" data-dismiss="modal" style="margin-top:10px;border:solid 1px skyblue;background-color:blue;color:white;display:flex;align-items:center;justify-content:center" onclick="submit1()">submit</button>'+
			'</div>'+'</div>'+'</div>'+
		        '</div>'+
	        '</div>'+
	        '</div>'+
	      
	      '</div>'+
	    '</div>'+
	  
	  '</div>';
	  
			}
			
	        $(".withs").empty("");
			$(".withs").append(table2);
			
		}*/
		
		
		
	      /* var mobileNumber=$("#mobileNumber").val();
	       
	       if(mobileNumber =="" ||  mobileNumber==null){
	    		
				alert ("Please enter valid mobile number");
				
	       }*/
	       
		function submit(){
			
        var amountwallet=$("#walletmoney").val();
			
			if(amountwallet ==0 || amountwallet < 10 ){
				  
		   	   alert("Enter wallet  balance should be minimum Rs.10");
		   	   return false;
		 
		 } 
			
			var mobileNumber=$("#mobileNumber").val();
		       
			if(mobileNumber =="" ||  mobileNumber==null){
		    		
					alert ("Please enter valid mobile number");
					return false;
		       }
	
		var amou = referandearnamount;
	
	 	var LoginData = getLoginData();
		var sId = LoginData.studentid;
		
		
		
		
		var input ={
			     "amount":amountwallet,
				"examTypeId":examTypeId,
				"studentId":sId,
				"mobileNumber":mobileNumber
			     
			}

			console.log(input)
			var output =JSON.stringify(input);
			
		$.ajax({
			  url : base_url+"rest/withdraw/create",
			  
			  type:"POST",
			  dataType:"json",
			  contentType:'application/json',
			  data: output,
			  success:function(data){ 
				  
				alert(data.message); 
				$("#myModal1").modal("hide");
			  },
				
			  error:function(data){
			    	  alert(data.errorMessage);
			    	  $("#myModal1").modal("hide");
			      }	  
		
	});
	
	
}
		
		
		/*new subscription design*/
		
		
		

		/*var examTypeId="";
		var standardId="";
		var categoryId="";
*/

			function skygetsubscription(){
			
			/*examTypeId=sessionStorage.getItem("examTypeIds");
			standardId=sessionStorage.getItem("standardId");
			categoryId=sessionStorage.getItem("categoryid");*/
			
			var LoginData = getLoginData();
			var sId = LoginData.studentid;
			 var subscription= '';
		var exam=[];
		exam.push(examTypeId);
			var input ={
		  				
		  				 	 "studentId":sId,
		  					"categoryId":categoryId,
		  					"examtypeId":exam
		  				}
						var output =JSON.stringify(input);
		  				console.log(output);
		  				 $.ajax({
		  						  url : base_url+"rest/admin/getSubscriptionsByExamtypeId",
		  						  type:"POST",
		  						  dataType:"json",
		  						  contentType:'application/json',
		  						  	data: output,
					
									  contentType:'application/json',
										beforeSend: function(){
									  $("#subscriptionPay").empty("");
								      $("#subscriptionPay").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
								     },

				  success:function(data){
					  console.log(data);
					   
					  for(var i =0; i<data.length;i++){
						  /*	var youpay=data[i].amount-data[i].walletAmount-data[i].refferalAmount-data[i].salesPersonGaveOffer;*/
							 var youpay=data[i].amount-data[i].salesPersonGaveOffer+data[i].taxAmount;
							/* var downpayment=data[i].downPayment;*/
							console.log(youpay);
							
						if(data[i].subscribed==true){
							 
							subscription +='<div class="card mx-2" style="width: 21rem;cursor: pointer;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;margin:10px 15px;border-radius:10px;">';

						}
						
						else{
							
							 
							subscription +='<div class="card mx-2" style="width: 21rem;cursor: pointer;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;margin:10px 15px;border-radius:10px;">';

							
						}
							/*'<div class="card-header border-0">'+
												'<div class="p-4" style="display:flex;justify-content:center">'+
													
													'<div class="header_img"></div>'+
												'</div>'+
											'</div>'+*/
							subscription +='<div class="card-body">'+       				
													'<div class="d-flex justify-content-center align-items-center imageonplus" style="display:flex;justify-content:center; align-items:center">'+
													/*'<img src="<%=request.getContextPath()%>/assets/images/students/Subscription_img.svg">'+*/
													'<img src="'+data[i].imageUrl+'" style="height: 505px;">'+
													'<div class="top-right" data-toggle="modal" data-target="#subscriptionfutures"><i class="fa fa-plus fa-2x" aria-hidden="true"></i></div>'+
													'</div>'+
													
													/*'<div style="padding:0px 20px;">'+
													'<p style="color:black">Take Subscription & No need to worry about your Rank... We will take care about you.</p>'+
													'</div>'+
													'<div style="padding:0px 20px;">'+
													'<h5 class="text-warning"><strong>* Unlimited Access</strong><h5>'+
													'<h5 class="text-warning"><strong>* Personal Mentoring<strong><h5>'+
													'<h5 class="text-warning"><strong>* You can ask Unlimited Doubts<strong><h5>'+
													'</div>'+*/
													
													'<div style="padding:5px 20px 0px;margin:10px;box-shadow: 0 10px 20px -6px #000;">'+
													'<div style="display:flex;justify-content:space-between;">'+
														'<h5 style="font-size: 14px;"><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
														'<h5 style="font-size: 14px;"><strong id="priceMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
													'</div>'/*+
												'<div style="display:flex;justify-content:space-between;">'+
														'<h5><strong>Wallet Amount</strong></h5>'+
														'<h5><strong id="walletMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
													'</div>'+
													'<div style="display:flex;justify-content:space-between;">'+
														'<h5><strong>2x withdrawal Amount</strong></h5>'+
														'<h5><strong id="withdrawalamount"><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
													'</div>'*/;
													if(data[i].salesPersonGaveOffer !=0){
														subscription +='<div style="display:flex;justify-content:space-between;">'+
														'<h5 style="font-size: 14px;"><strong>AccountCounselor Discount</strong></h5>'+
														'<h5 style="font-size: 14px;"><strong id="salesPerson"><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
													'</div>';
													}
													subscription +='<div style="display:flex;justify-content:space-between;">'+
													'<h5 style="font-size: 14px;"><strong>GST ('+data[i].taxPercentage+'%)</strong></h5>'+
													'<h5 style="font-size: 14px;"><strong id="tax"><i class="fa fas fa-rupee-sign"></i>'+data[i].taxAmount+'.0/-</strong></h5>'+
												'</div>';
													
													
													
												/*	subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
														'<h5 class="text-danger" style="font-size: 14px;"><strong>You Pay</strong></h5>'+
														'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
													'</div>'+*/
													
													'<div>';
														
														//added on 07-04-2021
														
														if(data[i].subscribed==true){
												            
															/*subscription +='<div class="buybtn_img" style="cursor: pointer;">Subscribed</div>'*/
																subscription +='<div style="display:flex; justify-content:flex-end"><button class="btn text-white" style="background-image: linear-gradient(to top, rgb(78, 155, 1), rgb(146, 209, 8));color:white;margin: 0px 10px 10px" disabled>Subscribed</button></div>';
														}
													else{
															
															if(data[i].downPayment==0){
																
																subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
																'<h5 class="text-danger" style="font-size: 14px;"><strong>You Pay</strong></h5>'+
																'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
															'</div>'+
															'<div style="display:flex; justify-content:flex-end"><div class="buybtn_img" style="cursor: pointer;margin: 0px 10px 10px" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+','+data[i].salesOfferId+','+data[i].downPayment+')"></div></div>'
															}
															else{
																
																subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
																'<h5 class="text-danger" style="font-size: 14px;"><strong>Downpayment</strong></h5>'+
																'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+data[i].downPayment+'.0/-</strong></h5>'+
															'</div>'+
															'<div style="display:flex; justify-content:space-between; padding:10px 0px;">'+
															'<button class="btn" style="cursor: pointer;color:white;  background-image: linear-gradient(45deg, #FC4A1A, #F7B733);"  onclick="viewemipop(' + "'" + data[i].salesOfferId + "'" + ',' + "'" + data[i].subsciptionPeriod + "'" + ')">View</button><div class="buybtn_img" style="cursor: pointer;" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+','+data[i].salesOfferId+','+data[i].downPayment+')"></div>'+
															'</div>';
											  					 
															}
															
														}
												
													  
														
														subscription +='</div>'+
													/*'</div>'+*/
													'</div>'+
													
													/*'<div>'+
														'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
															
															'<div class="buybtn_img" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+')"></div>'+
														'</div>'+
													'</div>'+*/
													
													
												
										'</div>'+
		       					 '</div>';
						
						
					}

						
						$("#subscriptionPay").empty("");       
						$("#subscriptionPay").html(subscription);
						
				},
				
				  error:function(data){
				    	 /* alert(data.errorMessage);*/
				      }	  
			
		});
		}


		
		
		
		
		


/*	       
function skygetsubscription(){
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	$.ajax({
		  url : base_url+"rest/subscribe/getSubscription/"+sId,
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
		  success:function(data){
			  console.log(data);
			  var sub= '';
			  var corouselinner="";
			  for(var i =0; i<data.length;i++){
				  
				//  var youpay=data[i].amount-data[i].walletAmount-data[i].refferalAmount-data[i].salesPersonGaveOffer;
				  var youpay=data[i].amount-data[i].salesPersonGaveOffer+data[i].taxAmount;
				  
				  console.log(youpay);
				  if(i%3 ==0){
				  
					  corouselinner +='<div class="item cardItem" style="border:2px solid #ffe6e6;height:230px;border-radius:20px;background:#FFA500">'+
						  '<div class="carousel-caption d-none d-md-block" style="top:10px;bottom:10px;">'+
		    				'<div>'+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
		    					'</div>';*//*+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"Wallet Amount"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
		    					'</div>'+ 
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"2X Withdrawal Amount"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
		    					'</div>';*/
				 /* if(data[i].salesPersonGaveOffer!=0){
					  corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"AccountCounselor Discount"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
		    					'</div>';
				  }
				  corouselinner += '</div>'+
					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
					'<h5 class="text-white"><strong>GST ('+data[i].taxPercentage+'%)</strong></h5>'+
					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].taxAmount+'.0/-</strong></h5>'+
					'</div>';
				  corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"You Pay"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
		    					'</div>'+
		    					'<div style="justify-content:center;display:flex;"><a onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')" class="btn text-white" style=" margin-top:20px;width:150px;background-color:#C71585;border-radius:20px;color:white">'+"Buy"+'</a></div>'+
			    			'</div>'+
			    			'</div></div>';
				  $('.carousel-inner').empty("");
				  $('.carousel-inner').append(corouselinner);
				  }
				  
				  
				  if(i%3 ==1){
					  
					  corouselinner +='<div class="item cardItem" style="border:2px solid #ffe6e6;height:230px;border-radius:20px;background:#00FF00 !important;">'+
							  '<div class="carousel-caption d-none d-md-block" style="top:10px;bottom:10px;">'+
			    				'<div>'+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
		    					'</div>';
		    					if(data[i].salesPersonGaveOffer!=0){
		    						  corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    			    					'<h5 class="text-white"><strong>'+"AccountCounselor Discount"+'</strong></h5>'+
		    			    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
		    			    					'</div>';
		    					  }
		    					corouselinner += '</div>'+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>GST ('+data[i].taxPercentage+'%)</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].taxAmount+'.0/-</strong></h5>'+
		    					'</div>';
		    					corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"You Pay"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
		    					'</div>'+
		    					'<div style="justify-content:center;display:flex;"><a onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')" class="btn text-white" style=" margin-top:20px;width:150px;background-color:#C71585;border-radius:20px;color:white">'+"Buy"+'</a></div>'+
			    			'</div>'+
				    			'</div></div>';
		    					 $('.carousel-inner').empty("");
		    					$('.carousel-inner').append(corouselinner);
					  }
				  if(i%3 ==2){
					  
					  corouselinner +='<div class="item cardItem" style="border:2px solid #ffe6e6;height:230px;border-radius:20px;background:#4B0082 !important;">'+
							  '<div class="carousel-caption d-none d-md-block" style="top:10px;bottom:10px;">'+
			    				'<div>'+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
		    					'</div>';
		    					if(data[i].salesPersonGaveOffer!=0){
		    						  corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    			    					'<h5 class="text-white"><strong>'+"AccountCounselor Discount"+'</strong></h5>'+
		    			    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
		    			    					'</div>';
		    					  }
		    					corouselinner += '</div>'+
		    					'<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>GST ('+data[i].taxPercentage+'%)</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+data[i].taxAmount+'.0/-</strong></h5>'+
		    					'</div>';
		    					  corouselinner +='<div class="text-white" style="display:flex;justify-content:space-between;">'+
		    					'<h5 class="text-white"><strong>'+"You Pay"+'</strong></h5>'+
		    					'<h5 class="text-white"><strong><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
		    					'</div>'+
		    					'<div style="justify-content:center;display:flex;"><a onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')" class="btn text-white" style=" margin-top:20px;width:150px;background-color:#C71585;border-radius:20px;color:white">'+"Buy"+'</a></div>'+
			    			'</div>'+
				    			'</div></div>';
		    					  $('.carousel-inner').empty("");
		    					  $('.carousel-inner').append(corouselinner);
					  }
					  
				
				  
				  $('.item').first().addClass('active');
				
				  $('#myCarousel').carousel();


		
			  }
		  },
			
		  error:function(data){
		    	  alert(data.errorMessage);
		      }	  
	
});
}  */
	
		
/*function buySubcription(){
	window.location = base_url+"jsp/student/student module/subscriptionpay.jsp";
}*/


function joinNow(ele){
/*	
var h=ele.split(":");
var dat=h[0].join("//");
var link=dat+[h1];
	
*/
	var appendata='';
  var countss=0;
  
	appendata +='<div role="tabpanel" class="tab-pane active" >'+
	    '<div class="col-sm-12">'+
	    	   '<div class="panel panel-default">'+
	    	   '<button type="button" class="close" data-dismiss="modal" style="padding:10px"><i class="fa fas fa-times-circle"></i></button>'+
						'<div class="panel-body" style="padding-top:40px">'+
						
							 '<div class="row">'+
							 	'<div class="col-md-8" id="videopause">'+
							 		'<iframe src="'+ele+'" width="530px" height="315px"  id="youtubeembad" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
							 	'</div>'+
							 	'<div class="col-md-4" style="height:347px;">'+
							 		'<div class="panel-body" style="padding-top:0px">'+
							 			'<div class="row">'+
							 				'<div id="style-2" style="height:320px;padding:0px;margin:0px;overflow-x:hidden">'
										      for(var i = 0;i < liveVideo.length;i++){
										    	 
										    	  if(liveVideo[i].videoType == "live now"){
										    		  countss++
										    	  var url = liveVideo[i].videoLink;
										    	  var strurl = url.toString();
										    	  var segments = url.split( '/' );
										    	  var id = segments[4];
										    	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
										    	  
										    	  
										    	appendata += '<div class="col-md-12 col-sm-6 co-xs-12" style="margin-bottom:10px">'+
										    	'<div class="box">'+
										    		'<div class="item res-video" style="background-image: url('+liveVideo[i].thumbnail+');width:225px; height:110px;background-position: center;background-repeat: no-repeat;background-size:cover;"  onclick="viedomaindisplay(this)" data-videolink='+url+' >'+
										    		'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-2x text-white" style="margin-top:14%"></i></div>'+
													'</div>'+
										    		/*'<a  onclick="viedomaindisplay(this)"  data-videolink='+url+'>'+liveVideo[i].videoLink+'</a>'+
										    	*/
										    		'</div>'+
										    	'<div class="clearfix"></div></div>'
										      }
										      }
	
	
								appendata += '</div></div></div></div></div></div></div></div></div>'
									
									 if(countss == 3){
							    			
							    			var v = document.getElementById("style-2"); 
								           /* v.className += "scrolling-wrapper";*/ 
							    			v.attr("style","overflow-y: scroll;")
								            
											 }
									
									 
									
						            
		$(".with2").empty("");       
	$(".with2").html(appendata);


	
}

function viedomaindisplay(elem){ 
	
	var url = $(elem).attr("data-videolink");
	var	 chapid = $(elem).attr("data-chapid");

		$("#youtubeembad").attr("src", "");
		$("#youtubeembad").attr("src", url);

		}
		
		function subscriptionPop(){
			var subscriptionSta='';
			subscriptionSta +='<div class="modal fade" id="statusSubscription" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">'+
  				'<div class="modal-dialog modal-dialog-centered" role="document">'+
    			'<div class="modal-content" style="border-radius:5px;">'+
					'<div class="modal-body">'+
					'<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
          			'<span aria-hidden="true">&times;</span>'+
        			'</button>'+
					'<div style=""display:flex ;justify-content:center align-items:center">'+
					'<div style="padding:20px 0px">'+
      				'<h3 class="text-center" style="color:#fd7e14" >For Full Access</h3>'+
					'<h3 class="text-center" style="padding:20px 0px"> - Take Subscription</h3>'+
					'<div style="display:flex; justify-content:center;">'+
					'<button class="btn" style="border-radius: 157px;background-image: linear-gradient(45deg, #FC4A1A, #F7B733);color: white !important;width: 60px;font-size: 20px;padding-left: 19px; font-weight: bold;height: 60px;" data-dismiss="modal">ok</button>'+
					'</div>'+
					'</div>'+
					'</div>'+
					'</div>'+
				'</div>'+
  				'</div>'+
				'</div>';
				$("#statusSubscripition").empty();
				$("#statusSubscripition").append(subscriptionSta);
		}


function buySubcription(amount,subscriptionId,walletAmount,refferalAmount,salesPersonGaveOffer,youpay,tax,salesOfferId,downPayment){

			//promo 
			
			
			/* var totG = paytotal.text();*/
	
	
	 		var totG =youpay;
	 		
	 		
	 		if(downPayment !=0){
	 			var amounttype="DOWNPAY"
	 				
	 		}
	 		else{
	 			var amounttype="";
	 			
	 		}
	 		
			 var prmodiscount = $(".discount").text();
			 var promocode = $(".promoinput").val();

			 var examid =[];
			 examid.push(examTypeId);
			/* if(typeof examtypes !== "undefined" && typeof examtypes !== "string"){
				 examid = examtypes;
			 }else{
				 console.log("not an array")
			 }*/
			
			
			 var mobilenumber=sessionStorage.getItem("mobilenumber");
				
				var email=sessionStorage.getItem("email");
				
				if(email =="" || email==null || email==undefined){
					
					email=email;
				}
				else{
					
					email="Support@skyget.ai";
				}
				
				var LoginData = getLoginData();
				var studid = LoginData.studentid;
			
				var subscripId = subscriptionId;
				var originalprice = amount;
				var  offerprice = amount;
				var  walletamount = walletAmount;

				if(subscriptionId === "" || subscriptionId === null || subscriptionId ===undefined){
					return false;
				}
				else if(originalprice === "" || originalprice === null || originalprice ===undefined){
					return false;
				}
				else if(offerprice === "" || offerprice === null || offerprice ===undefined){
					return false;
				}
				else{
					if(prmodiscount != 0 &&  walletamount !=0){
						var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								
								// new key
								
								"salesOfferId":salesOfferId,
								"emiAmount":downPayment,
								"emiDetailsId":0,
								"type":amounttype,
								"tax":0,
								/*"totalAfterDiscount":totG,*/
								"totalAfterDiscount":totG,
								"discount":prmodiscount,
								"promocode":promocode,
								/*"grandtotal":totG,*/
								"grandtotal":totG,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":walletamount,
								"paymentstatus":"WIP"		
						}
					}
					else if(prmodiscount === 0 || prmodiscount ===""  && walletamount !=0){
			                var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								// new key
								
								"salesOfferId":salesOfferId,
								"emiAmount":downPayment,
								"emiDetailsId":0,
								"type":amounttype,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":0,
								"promocode":promocode,
								"grandtotal":totG,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":walletamount,
								"paymentstatus":"WIP"		
						}
					}else if(prmodiscount != 0 && walletamount ===0 || walletamount ===""){
			          var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								// new key
								
								"salesOfferId":salesOfferId,
								"emiAmount":downPayment,
								"emiDetailsId":0,
								"type":amounttype,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":prmodiscount,
								"promocode":promocode,
								"grandtotal":totG,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":0,
								"paymentstatus":"WIP"		
						}
					}
				else{
						var inputData ={
				
							"studentId":studid,
							"planId":subscripId,
							"userType":"web",
							"price":originalprice,
							"offerprice":offerprice,
							// new key
							
							"salesOfferId":salesOfferId,
							"emiAmount":downPayment,
							"emiDetailsId":0,
							"type":amounttype,
							"tax":0,
							"totalAfterDiscount":totG,
							"discount":0,
							"promocode":"",
							"grandtotal":totG,
							"examTypeId":examid,
							"transactionID":"ZOM123",
							/*"mobilenumber":"8297668888",*/
							"mobilenumber":mobilenumber,
							"walletamount":0,
							"paymentstatus":"WIP"
						
					}
				}
					
				
				var outputData = JSON.stringify(inputData);
				$.ajax({
					url:  base_url+'rest/student/createStudentSubscription',
					type:"POST",
					dataType: "json",
					contentType: 'application/json',
					data:outputData,
					success: function(data){
						if(data.status)
						{
						//alert(data.msg + " "+data.orderId + " "+walletdeductedamount+"totG"+totG);
						//call payment gateway
						var order_id=data.orderId;
						var currency=data.currency;
						var merchant_id=data.merchantId;
						//var amount=totG;
						/*var amount=data.amount;*/
						
						var amount=data.amount *100;
						
						var redirect_url=base_url+data.redirect_url;
						var cancel_url=base_url+data.cancel_url;
						var language=data.language;
						var billing_name=data.name;
						var billing_city=data.city;
						var billing_state=data.state;
						var billing_zip="";
						var billing_country=data.country;
						var billing_tel=data.mobileNumber;
						var billing_email=data.emailId;
						var tid= new Date().getTime();
						if(totG>0)
						{
					/*	var jspcall =  base_url+"jsp/paymengateway/ccavRequestHandler.jsp?order_id="+order_id+"&currency="+currency+"&merchant_id="+merchant_id+
						"&amount="+amount+"&redirect_url="+redirect_url+"&cancel_url="+cancel_url+"&language="+language+
						"&billing_name="+billing_name+"&billing_city="+billing_city+"&billing_state="+billing_state+"&billing_zip="+billing_zip+
						"&billing_country="+billing_country+"&billing_tel="+billing_tel+
						"&billing_email="+billing_email+"&tid="+tid;*/
							var options = {
								   
								    //"key":"rzp_live_kLObuozs6uSEfu",//*/ // Enter the Key ID generated from the Dashboard
						            "key":"rzp_test_siGwOhO8MAMbtj",
								    "amount": amount+"", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
								    "currency": "INR",
								    "name": "Skyget",
								    "description": "Buy Subscription",
								    "image": base_url+"assets/landing/img/logo2.svg",
								    "order_id": data.razorpay_orderid, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
								    "callback_url": redirect_url,
								    "prefill": {
								    	  "name": "",
									        /*"email": "Patabhi@skyget.ai",*/
	                                        "email":"support@skyget.ai",
									        "contact": mobilenumber
								    },
								    "notes": {
								        "address": "Zomant Solutions pvt ltd"
								    },
								    "theme": {
								        "color": "#3399cc"
								    }
								};
							
							var rzp1 = new Razorpay(options);
							 rzp1.open();
							 e.preventDefault();
						 //  window.location.href = jspcall;
						}else
						{
						if(walletdeductedamount!=0) // call wallet amt detuct only when  wallet is used
						    walletpay(order_id,tid);
						}
						//window.location = base_url+'jsp/student/student module/subscriptiondetails.jsp'


						}
						},
					error: function(data){
						alert(data.responseJSON.errorMessage);
					}
				})
				exmidd = [];
			}  
		}



var walletdeductedamount =0;
function walletpay(orderid,tid){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var orderid = orderid;
	var trackingid = tid;
	
	var walletamt = {
		"studentId": studid,
		"totalWalletAmt":walletdeductedamount
	}
	
	var walettoot = JSON.stringify(walletamt);
	
	$.ajax({
		type: "POST",
		url: base_url+'rest/admin/ReduceSubscribtionAmt',
		dataType: "json",
		contentType: 'application/json', 
		data:walettoot,
		cache:false,
		success: function(data){
			updateFinalpayProcess(orderid,trackingid);
			alert(data.message);
		},
		error:function(){
			alert("Considering amount is failed");
		}
	})
	
	
}
function updateFinalpayProcess(orderid,trackingid){
		  
	var odrid = orderid;
	var trackid =trackingid;
		  var inputData = {
			  "orderId":odrid,
			  "order_status":"success",
			  "tracking_id":trackid,
			  "payment_mode":"fromWallet"
		}
		  
		  
		var outputData = JSON.stringify(inputData);
		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			data:outputData,
			url: base_url+'rest/student/updateFinalPaymentProcess',
			cache:false,
			success: function(data){
				alert(data.message);
			
			} ,error:function(){
				alert(data.responseJSON.errorMessage);
			} 
		  
		  
});
}




function getchap(){
	
	var examid=examTypeId;

	var examtype =  {

			"examTypeId":examid,

	}


	var examids = JSON.stringify(examtype);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 

		url: base_url+'rest/subject/v1/getSubjects',
		data:examids,
		success:function(data){
			var tabledata = '';
			for(var i =0; i<data.length;i++){


				tabledata +='<option style="background:#fff" value="'+data[i].id+'">'+data[i].subject+'</option>';

			}
			$("#regarding").empty("");
			$("#regarding").append('<option style="background:#fff" value="";>Please select Subject</option>'); 
			$("#regarding").append(tabledata); 

		},

		error:function(){
			/*alert("");*/
		}
	});


}


 window.addEventListener('load', function() {
		  document.getElementById('fileUpload').addEventListener('change', function() {
		      if (this.files && this.files[0]) {
		          var img = document.getElementById('myImg');
		          img.onload = () => {
		              URL.revokeObjectURL(img.src);  // no longer needed, free memory
		          }

		          img.src = URL.createObjectURL(this.files[0]); // set src to blob url
		      }
		  });
		});
	 
	//Bucket Configurations

	 var bucketName = "doubtsvideos";
	 var bucketRegion = "ap-south-1";
	 var IdentityPoolId = "ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a";
	 //var IdentityPoolId = "ap-south-1:00ad6d2b-fd7b-48d1-812b-196b94449348";
	AWS.config.region = 'ap-south-1'; // Region
	AWS.config.credentials = new AWS.CognitoIdentityCredentials({
	    IdentityPoolId: 'ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a',
	});

	            var s3 = new AWS.S3({
	                apiVersion: '2014-06-30',
	                params: {Bucket: bucketName}
	        });
	            
	            function s3upload() { 
	            	
		            
                   /* s3.upload({
                                    Key: filePath,
                                    Body: file,
                                    ACL: 'public-read'
                                }, function(err, data) {
                                	console
                                    if(err) {
                                        reject('error');
                                    }
                                    
                                     alert('Successfully Image Uploaded!'); 
                                   
                                }).on('httpUploadProgress', function (progress) {
                                    var uploaded = parseInt((progress.loaded * 100) / progress.total);
                                    $("progress").attr('value', uploaded);
                                });*/
	            	
	            	s3.putObject ({
	                    ACL: 'public-read',
	                    Bucket: bucketName,
	                    Key: filePath,
	                    Body: file
	                }, function(err, data) {
	                    
	        								if(err) {
	                                                
	        										 alert('Unable Image Uploaded!');
	                                            }
	                                            
	                                           /*  alert('Successfully Image Uploaded!'); */
	        			
	        			
	                });

                }
      
     
 function getchap(){
	  var examid=examTypeId;
	  
		var examtype =  {
				
				"examTypeId":examid,
				
				}


		var examids = JSON.stringify(examtype);

	$.ajax({
  type: "POST",
  dataType: "json",
  contentType: 'application/json', 

  url: base_url+'rest/subject/v1/getSubjects',
  data:examids,
			success:function(data){
				 var tabledata = '';
				 for(var i =0; i<data.length;i++){
					 
				 
	 			tabledata +='<option style="background:#fff" value="'+data[i].id+'">'+data[i].subject+'</option>';
	 			
				 }
			  $("#regarding").empty("");
		        $("#regarding").append('<option style="background:#fff" value="";>---Select---</option>'); 
				 $("#regarding").append(tabledata); 
				
			},
				
				error:function(){
					  /*alert("");*/
				}
			});
			
	 
 }
 
   var file="";
   var filePath="";
   var fileName1 ="";
   var feedback ="";
   var regarding="";
   var  createdby="";
   var  studentId="";
 function addfeedback(){

   	
		var feedback = $("#editor1").val();
		 
    		var regarding = $("#regarding").val();
    		
    		
    		var  createdby= $("#stdname").val();
         var  studentId = $("#studentid").val();
         
         if(feedback == "" || feedback==null){
        	 
        	 alert("Please Write Feedback ");
        	 return false;
        	 
	    	}
         
         var files = document.getElementById('fileUpload').files;
         
         if(files.length==0){
            		
            		alert("please upload image");
            		
            		return false;
            		
            	}

                if (files) 
                {
                	
                	   var d = new Date();
	                   time_stamp = d.getTime();
	                    
                    file = files[0];
                    
                     fileName1 = file.name;
                    
                  
                }
                    var photo = fileName1;
    	    		
			var inputData = '{"subjectId":"'+regarding+'","student_doubt":"'+feedback+'","student_doubt_image":"'+photo+'","insertedBy":"'+createdby+'","studentId":"'+studentId+'","sourceType":"web"}';
			
var covfedd = inputData.replace(/\n/g, "\\n")
               .replace(/\r/g, "\\r")
               .replace(/\t/g, "\\t")
               .replace(/\f/g, "\\f");
			   
		//var appenddata = '';
		   jQuery.ajax({
			  type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			 url: base_url+'rest/doubts/v1/newDoubt',
			  data:covfedd,
			  success: function(data){
				  /*appenddata += data.message;*/    
			 
				
				updte(data.details);
				  
			
				 /*  alert('feedback saved successfully'); */
				  
			  },
			  error: function(data) {	
				  var tab="";
					var msssg=data.responseJSON.errorMessage;
					
					  if(msssg === "Please subscribe to ask your doubts"){
						  
						tab='<div class="modal-header" id="head">'+
							     '<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500" onclick="hjgdh()">'+
							              '<i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>'+
							           '</button>'+
							           '<div style="display:flex;">'+
							           	'<h6 style="color:#FFA500"><span></span>Hey'+'<span id="studentNames">,'+studentname+'</span></h6>'+
							          '</div>'+
							     '</div>'+
							     
							         '<div class="modal-body text-center" style="">'+
							         '<h6>'+msssg+'</h6>'+
							         '<button type="button" class="btn btn-default mt-20" style="border:1px solid orange;background:orange;color:white" data-dismiss="modal" onclick="hjgdh()">Ok'+'</button>'+
							        
							       '</div>';
							
				
							  
							  $("#imagsss").empty(" ");

							$('#imagsss').html(tab);   
						  
						 
						  
					  }
					  else{
					  alert(data.responseJSON.errorMessage);
					  }

			  }
			 /* complete: function(){
				  window.location = base_url+"jsp/admin/creation/categories.jsp";
			  }*/
		   });
    	
		


}

 
 

 function updte(doubtid){
	 

		var feedback = $("#editor1").val();
		 
    		var regarding = $("#regarding").val();
    		
    		
    		var  createdby= $("#stdname").val();
    		
      var  studentId = $("#studentid").val();
      
	 var id=doubtid;
	 
		var ids=id.split("SKY");
		
		var idss=ids[1]-1000
	 
	  var arr = fileName1.split(".");      // Split the string using dot as separator
      
      var lastVal = arr.pop();
	  
	  var doubtids=doubtid;
      
      var fileName = doubtids+'_'+time_stamp+'.'+lastVal;
   
      /* bucketName+'/' +  fileName; */
      // CHANGING HERE
     
				  
    
      var subject=$("#regarding").val();
      var sel = document.getElementById("regarding");
      var subjectName= sel.options[sel.selectedIndex].text;
      
    /*   if(subject==1)
           filePath= bucketName+'/' + 'Physics/Images/' + fileName;
      if(subject==2)
      	 filePath= bucketName+'/' + 'Chemistry/Images/' + fileName;
      if(subject==3)
      	 filePath= bucketName+'/' + 'Maths/Images/' + fileName;
      */
     
    	  filePath= bucketName+'/'+subjectName+'/Images/' + fileName;
      
     /* if(subject==1)
           filePath= bucketName+'/' + 'Physics/Images/' + fileName;
      if(subject==2)
      	 filePath= bucketName+'/' + 'Chemistry/Images/' + fileName;
      if(subject==3)
      	 filePath= bucketName+'/' + 'Maths/Images/' + fileName;*/
      //UPTO HERE
      
      fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;

 

 			var inputData = '{"id":"'+idss+'","subjectId":"'+regarding+'","student_doubt":"'+feedback+'","student_doubt_image":"'+fileUrl+'","insertedBy":"'+createdby+'","studentId":"'+studentId+'","sourceType":"web"}';
			
 			var covfedd = inputData.replace(/\n/g, "\\n")
               .replace(/\r/g, "\\r")
               .replace(/\t/g, "\\t")
               .replace(/\f/g, "\\f");
$.ajax({
 		type: "POST",
 		dataType: "json",
 		contentType: 'application/json', 

 		url: base_url+'rest/doubts/v1/updateDoubt',
 		data:covfedd,
 		success:function(data){
 			var tab="";
			  //Alert.render(data.message);
			  /* alert(data.message); */
			  	var msssg=data.message;
			  
			  tab='<div class="modal-header" id="head">'+
			     '<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">'+
			              '<i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>'+
			           '</button>'+
			           '<div style="display:flex;">'+
			           	'<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,'+studentname+'</span></h6>'+
			          '</div>'+
			     '</div>'+
			     
			         '<div class="modal-body text-center" style="">'+
			         '<h6>You have created doubt successfully'+'</h6>'+
			         '<button type="button" class="btn btn-default mt-20" style="border:1px solid orange;background:orange;color:white" data-dismiss="modal">Ok'+'</button>'+
			        
			       '</div>';
			

			  
			  $("#imagsss").empty(" ");

			$('#imagsss').html(tab);
			
 			  s3upload();
 			  
 			 window.setTimeout(function(){
				  window.location = base_url+"jsp/student/student module/doubts.jsp";
			  }, 3000);
 		},
 			error:function(){
 				  
 			}
 		
 		});
 	
 	
 }
function hjgdh(){
	
	 window.location = base_url+"jsp/student/student module/subscriptionpay1.jsp";
	
} 

var studentStatus="";


function scholarship(){
	
	/*var mobilenumber=sessionStorage.getItem("mobilenumber");*/

	
	$.ajax({
		  url : base_url+"rest/scholler/getStatus/"+mobilenumbers,
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
		  success:function(data){
			  console.log(data);
			  
				if(data.status){
					studentStatus=true;
				}
				else{
					
					studentStatus=false;
					setTimeout(function() {
					    $('#modalSubscriptionForm').modal('show');
					  	}, 10000);

					
				}
				
				
				 },
		
		  error:function(data){
		    	 window.location = base_url+"jsp/student/student module/scholarship.jsp";
		      }	  
	
});
}




function schlp(){
	
	if(studentStatus){
		
		window.setTimeout(function(){
			alertify.alert("already registered for scholarship");
		  }, 5000);	 
		
	}
	else{
		 window.location = base_url+"jsp/student/student module/scholarship.jsp";
	}
}



function create_scholshipInfo(){

	
	var name=$("#nameinfo").val();
	var phone= $("#phone_number").val();
	var standard= $("#standard").val();
	if(standard =="" || standard==null || standard==undefined){
		alert("Please select Standard");
		return false;
	}
	
	var SchoolCollege= $("#SchoolCollege").val();
	var tenth= $("#tenth").val();
	var levnth=$("#levnth").val();
	var city= $("#city").val();
	var parentnumber= $("#parentnumber").val();
	 $("#submited").empty("");
	$("#submited").html("Processing.....");	
	var input ={
		"name":name,
		"mobileNumber":phone,
		"standard":standard,
		"college":SchoolCollege,
		"percentage10":tenth,
		"percentage11":levnth,
		"city":city,
		"parentMobile":parentnumber
		    
	}

	console.log(input)
	var output =JSON.stringify(input);

	$.ajax({
	  url : base_url+"rest/scholler/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	 
		  
		 $('#exampleModalCenter').modal(); 
		
		/* $('#exampleModalCenter').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
}) */
		
		 /*  $("body").modal({
			  backdrop: true	
			}); */ 
			/*  $("#exampleModalCenter").click(function(){ */
				   
				  /* }); */
	 	console.log(data)
	window.setTimeout(function(){
		location.reload();
	  }, 6000);	 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}



function viewemipop(offerid,planname){

	var standareq ={

		"salesOfferId": offerid
		
	}
		
		var standstr = JSON.stringify(standareq);
		
	$.ajax({
		
		type: "POST",
		dataType: "json",
		 async:false,	 
		url: base_url+'rest/salesman/getOfferdetails',
		data: standstr,
		contentType: 'application/json',
		success: function(data){
			
			
		  console.log(data);
		  
		  $("#viewemi").modal();
		  
		  var viewdetails="";
		  
		  viewdetails +='<div class="row" style="padding:25px;">'+
						'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">plan</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-success">'+planname +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Subscription  Amount</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-warning">'+data.subscriptionAmount+'.00/-</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-5">'+
														/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">wallet Amount</label>'+
														'</div>'+
														'<div class="col-md-2">:</div>'+
														'<div class="col-md-5 text-primary">'+data.walletAmount+'.00/-</div>'+
													'</div>'+
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">AccountCounselor Discount</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>'+
													'<div class="col-md-5 text-danger">'+data.offerAmount+'.00/-</div>'+
												'</div>'+
												
												'<div class="col-md-12 form-group">'+
												'<div class="col-md-5">'+
												/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
													'<label class="control-label mb-5 bold">gstAmount('+data.gst+'%)</label>'+
												'</div>'+
												'<div class="col-md-2">:</div>'+
												'<div class="col-md-5">'+data.gstAmount+'.00/-</div>'+
											'</div>'+
											
											'<div class="col-md-12 form-group">'+
											'<div class="col-md-5">'+
											/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
												'<label class="control-label mb-5 bold">Total AmountToBePaid</label>'+
											'</div>'+
											'<div class="col-md-2">:</div>'+
											'<div class="col-md-5">'+data.totalAmountToBePaid+'.00/-</div>'+
										'</div>'+
										'<div class="col-md-12 form-group" style="font-size:20px;padding:0px 29px;color:#fd7e14"><u>Emi Details'+'</u></div><hr>'+
										
										'<div class="col-md-12 form-group">'+
										'<div class="col-md-5">'+
										/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
											'<label class="control-label mb-5 bold">downPayment/1st payment</label>'+
										'</div>'+
										'<div class="col-md-2">:</div>'+
										'<div class="col-md-5">'+data.downPayment+'.00/-</div>'+
									'</div>'+		
												
											'<div class="col-md-12 form-group">'+
											'<div class="col-md-5">'+
											/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
												'<label class="control-label mb-5 bold">EmiMonths</label>'+
											'</div>'+
											'<div class="col-md-2">:</div>'+
											'<div class="col-md-5">'+data.emiMonths+'Months</div>'+
										'</div>'+
										
									'<div class="col-md-12 form-group">'+
									'<div class="col-md-5">'+
									/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
										'<label class="control-label mb-5 bold">emiAmount</label>'+
									'</div>'+
									'<div class="col-md-2">:</div>'+
									'<div class="col-md-5">'+data.emiAmount.toFixed(2)+'</div>'+
								'</div>'+
								
							
						'</div>';
		  
		  
		  $("#showofferdetails").empty("")
		  $("#showofferdetails").append(viewdetails)
		  
	
},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	      }	  

});
	
}

 