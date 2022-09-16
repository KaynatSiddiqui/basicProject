var physicsVideos='';
var chemistryvideos='';
var mathsvideos='';
var pvideo='';
var cvideo='';
var mvideo='';

var examTypeId="";
var standardId="";
var subj="";
$(document).ready(function() {

	examTypeId=sessionStorage.getItem("examTypeIds");
	standardId=sessionStorage.getItem("standardId");
	
	
	getchap();
	
 });
	
	

	
	
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}


var subid="";
var dataid="";

function highlight(el,id){
	
	dataid=id;
	
	var getindex="0";
	
	 $('#nav').find('li').eq(getindex).children().removeClass("highlite");

	if (current != null)
	{
		current.className = "";
	}
	el.className = "highlite";
	current = el;
	
	displayDays();
	
};

function getchap(){
	
	
	

	var examtype =  {

			"examTypeId":examTypeId,

	}


	var examids = JSON.stringify(examtype);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 

		url: base_url+'rest/subject/v1/getSubjects',
		data:examids,
		beforeSend: function(){
			  
			 var dat="";
			
			 dat='<div class="row">'+
				'<div class="col-sm-12" style="margin-top:30px;display:flex;justify-content:center;align-items:center;">'+
			
			 '<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">'+
			 '</div>'+'</div>';
			 
			 $("#nav").empty();
			 $("#nav").html(dat);
		
		 },
		success:function(data){
			
			
			var tabledata = '';
			defaultid=data;
			for(var i=0; i<data.length;i++){
				
				if(i==0){
					subj=data[i].id;
					
					subid=subj;
				}
				
                 tabledata +='<li role="presentation" class="nav_item mainMenu-itemLevel1">'+
					'<a href="#"  id="default'+i+'"  onclick="highlight(this,'+"'"+data[i].id+"'"+')">'+data[i].subject+'</a>'+
					'</li>';

               /*  data.eq(0).addClass("highlite");*/
                 
                
                 
				/*if(i==0){
				
					  $("#default"+i).addClass("highlite");
					
					 var v = document.getElementById("default"+i); 
			            v.className += "highlite"; 
			            
					}
*/
				

			}



var getindex="0";

			$("#nav").empty("");

			$("#nav").append(tabledata); 

			 $('#nav').find('li').eq(getindex).children().addClass("highlite");
			 displayDays();

		},

		error:function(){
			alert(data.responseJSON.errorMessage);
		}
	});


}


function displayDays() {
	
	if(dataid=="" || dataid==null){

		subid=subid;
	}
	else{

		subid=dataid;
	}
	var LoginData = getLoginData();
	var sId = LoginData.studentid; 
	
	var allVideos ="Tricks & Logics";
	
	
	/*var studentId=sId;*/

	/*var input ={
	     "standardId":standardId,
		"examTypeId":examTypeId,
		"studentId":studentId
	     
	}

	console.log(input) */
	//var output =JSON.stringify(input);
	
$.ajax({
	  url : base_url+"rest/homepagevideos/v1/video/"+allVideos+"/"+subid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
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
		  
		var physicsappenddata="";
		
		
		  if(data ==null || data=="" || data==undefined){
			  
			  alertify. alert("No details Found");
			  
		  }
				
					
		  else{
			  physicsappenddata ="";
				
				for(var c =0; c<data.length;c++){
					
					/*$("#cahpname").html(data[c].chaptername);,
					 * physicsappenddata +='<div>'+data[c].chaptername+'</div>'+
					*/
				
					
					physicsappenddata +='<h5 style="margin:10px">'+data[c].chaptername+'</h5>';
					
					pvideo=data[c].videosForUnitWise;
					
				
					 for(var x =0; x<pvideo.length;x++){
						 
							physicsappenddata +='<div style="display:inline-block;"><div class="panel" style="display:inline-block;padding:0px;margin-right:10px;cursor: pointer;border-radius:5px">'+
			 			
				 			'<div class="panel-body datavid'+pvideo[x].topicId+'"  data-id='+pvideo[x].topicId+' data-videolink='+pvideo[x].videoLink+' style="padding:0px; marging:0px;" onclick="joinNow1('+"'"+allVideos+"'"+','+"'"+data[c].chapterId+"'"+',this)">'+
			      			/*'<div  style="background-image:url('+"'"+pvideo[x].tumbNail+"'"+');display:flex;justify-content:center;align-items:center;width:430px;height:180px;">'+
			      			'<i class="fa fal fa-caret-right fa-2x text-white"></i>'+
			      			'</div>'+*/
							'<div style="background-image:url('+"'"+pvideo[x].tumbNail+"'"+');background-repeat: no-repeat;background-size:cover;height:267px;width:393px;border-radius:5px">'+
			      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:28%"></i></div>'+
			      			
			      			'</div>'+
			      			'</div>'+
			      			'</div></div>';
						}
						}
		  }
		  
		
		  $("#liveVideoFilte").empty("");
		   
			$('#liveVideoFilte').append(physicsappenddata);
					/*if(physicsVideos[p].videosForUnitWise==pvideo){
			console.log("physicsVideos[p].videosForUnitWise:"+physicsVideos[p].videosForUnitWise);
						physics();
				}*/				
				
		    
				
			
					/*if(chemistryvideos[c].videosForUnitWise==cvideo){
					console.log("chemistryvideos[c].videosForUnitWise:"+chemistryvideos[c].videosForUnitWise);
					chemistry();
					}*/
			 
		
				
				
				
				
				 /*if(mathsvideos[m].videosForUnitWise==mvideo){
					
					console.log("mathsvideos[m].videosForUnitWise:"+mathsvideos[m].videosForUnitWise);
						maths();
					}*/
				
				


		 
				
		
		/*last7DaysVideos='';*/
		
		
		
		
		
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
		  alertify. alert("No details Found");
      }
	 
});
	 

 };

/*

function physics(){
	
	var physicsappenddata=" ";
	
	last7DaysVideos='';
	
	if(physicsVideos !=null){
			
			
	for(var c =0; c<physicsVideos.length;c++){
		pvideo=physicsVideos[c].videosForUnitWise;
		 for(var x =0; x<pvideo.length;x++){
			
	 			physicsappenddata +='<div class="" style="display:inline-block; padding:10px; margin:10px;cursor: pointer;">'+
 			
    			'<div class="">'+
      			'<iframe width="420" height="315" src="'+pvideo[x].videoLink+'"></iframe>'+
				'<div  style="background-image:url('+"'"+pvideo[x].tumbNail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:30%"></i></div>'+
      			'</div>'+
            	'</div>'+
            
   				'</div>';
		}
		 
	}
	}
	
			else{
				
				alertify. alert("No Physics Videos");
			
			}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(physicsappenddata);
	
}



function chemistry(){
	
	var chemistryappenddata=" ";
	
	last10DaysVideos='';
	if(chemistryvideos !=null){
			
			
	
	for(var c =0; c<chemistryvideos.length;c++){
	
		cvideo=chemistryvideos[c].videosForUnitWise;
		
	 for(var y =0; y<cvideo.length;y++){
		
	 			chemistryappenddata +='<div class="" style="display:inline-block; padding:10px; margin:10px;cursor: pointer;">'+
 			
    			'<div class="">'+
      			'<iframe width="420" height="315" src="'+cvideo[y].videoLink+'"></iframe>'+
				'<div  style="background-image:url('+"'"+cvideo[y].tumbNail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:30%"></i></div>'+
      			'</div>'+
            	'</div>'+
            
   				'</div>';
		}
	}
		}
		
			else{
				
				alertify. alert("No Chemistry Videos");
			
			}
	 $('#liveVideoFilte').empty("");
	   
		$('#liveVideoFilte').append(chemistryappenddata);
}

function maths(){
	
	var mathsappenddata=" ";
	
	last10DaysVideos='';
	if(mathsvideos !=null){
			
			
	for(var m =0; m<mathsvideos.length;m++){
		console.log("mvideo:"+mvideo);
		 mvideo =mathsvideos[m].videosForUnitWise;
	 for(var z =0; z<mvideo.length;z++){
		
	 			mathsappenddata +='<div class="" style="display:inline-block; padding:10px; margin:10px;cursor: pointer;">'+
 			
    			'<div class="">'+
      			'<iframe width="420" height="315" src="'+mvideo[z].videoLink+'"></iframe>'+
				'<div  style="background-image:url('+"'"+mvideo[z].tumbNail+"'"+');background-position: center;background-repeat: no-repeat;background-size:cover;height:280px;width:400px;">'+
      			'<div style="display:flex; align-items:center ;justify-content:center"><i class="fa fas fa-play-circle fa-4x text-white" style="margin-top:30%"></i></div>'+
      			'</div>'+
            	'</div>'+
            
   				'</div>';
		}
	}
		}
		
			else{
				alertify. alert("No Maths Videos");
			
			}
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(mathsappenddata);
}*/
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

 function joinNow1(type,chap,dat){
	 
	 var types="Tricks"
			
			if(type=="Tricks & Logics"){
				
				type=types;
			}
			
					
		var id = $(dat).attr("data-id");

		 window.location = base_url+"jsp/student/student module/viewvideos.jsp?videotype="+type+"&videoid="+id+"&chaptype="+chap;
		 
	}