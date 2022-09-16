
var physicsVideos='';
var chemistryvideos='';
var mathsvideos='';
var pvideo='';
var cvideo='';
var mvideo='';
var defaultid="";
var current="";

var examTypeId="";
var standardId="";

console.log(physicsVideos);

$(document).ready(function() {
	
	examTypeId=sessionStorage.getItem("examTypeIds");
	standardId=sessionStorage.getItem("standardId");
	
	/*var serialnumber=1;*/
	 
	 getchap();

	var type=getParameterByName("allData")
	$("#type").html(type);
	
	/*if(type == "NCERT"){
		
		 $('.img').attr('src',<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Concepts/wh64PX.png);
	}
	*/
	
	for(var i=0; i<defaultid.length;i++){
		
	 var currents = document.getElementById('default'+defaultid);
	
	 if(currents =="" || currents==null){
		 
	 }
	 else{
		 
		 currents=current;
	 }
	}
	
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


var subid="1";
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

var data="";
function displayDays() {
	
	if(dataid=="" || dataid==null){

		subid=subid;
	}
	else{

		subid=dataid;
	}

	var LoginData = getLoginData();
	
	var sId = LoginData.studentid; 
	
	
	var fcn = getParameterByName("allData");
	
	/*var studentId=sId;*/

	/*var input ={
	     "standardId":standardId,
		"examTypeId":examTypeId,
		"studentId":studentId
	     
	}

	console.log(input) */
	//var output =JSON.stringify(input);
	
$.ajax({
	 url : base_url+"rest/homepagevideos/v2/Subject/type/"+fcn+"/"+subid,
	  
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
			 
			 $("#liveVideoFilte").empty();
			 $("#liveVideoFilte").html(dat);
		
		 },
	  success:function(data1){
		  
		  data=data1.listitems;
		
        if(data ==null || data=="" || data==undefined){
			  
			  alertify. alert("No details Found");
			  
		  }
				
					
		  else{
			  
						var physicsappenddata=" ";
						
						var psn=1;
						var datas=getParameterByName("allData");
						
						/*last7DaysVideos='';*/
						
						if(datas == "NCERT"){
							
							if(data.length ==0){
								
								alertify. alert("No details found");
								
								}
								else{
							
						for(var c =0; c<data.length;c++){
							
							var chap=data[c].chapterId;
							var sub=data[c].subjectId;
								
							
							
							physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
					 			
					    			'<div class="panel-body">'+
					      			'<div class="col-md-12 "><div style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">' +data[c].chaptername +'</h5></div>'+
					'<div style="display:flex;justify-content:space-around">'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
					'</div>'+'</div>'+
					            	'</div>'+
					            
					   			'</div></div>';
							}
							
						}
						}
						
						else if(datas == "Concepts"){
							if(data.length ==0){
								
								alertify. alert("No details found");
								
								}
								else{
							
						for(var c =0; c<data.length;c++){
							
							
							
							var chap=data[c].chapterId;
								var sub=data[c].subjectId;
								
							
							
							physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
					 			
					    			'<div class="panel-body">'+
					      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">' +data[c].chaptername +'</h5></div>'+
					'<div style="display:flex;justify-content:space-around">'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
					'</div>'+'</div>'+
					            	'</div>'+
					            
					   			'</div></div>';
							}
							}
							}
							
							
							else if(datas == "Formulas"){
								
								if(data.length ==0){
								
								alertify. alert("No details found");
								
								}
								else{
								
								/*var msn=1;*/
								for(var c =0; c<data.length;c++){
							
								var chap=data[c].chapterId;
								var sub=data[c].subjectId;
								
							
							
							physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
					 			
					    			'<div class="panel-body">'+
					      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">'+data[c].chaptername +'<h5></div>'+
					'<div style="display:flex;justify-content:space-around">'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
					'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
					'</div>'+'</div>'+
					            	'</div>'+
					            
					   			'</div></div>';
							}
							}
							}
							
							$("#liveVideoFilte").empty("");
						   
							$('#liveVideoFilte').append(physicsappenddata);
							rendereelemntforkatext();
					}
				
			/*	if(data[i].subject=="Physics"){
					
					physicsVideos=data[i].listitems;
					console.log("physics:"+physicsVideos);
				}
				else if(data[i].subject=="Chemistry"){
					chemistryvideos=data[i].listitems;
					console.log("chemistry:"+chemistryvideos);

				}
				else if(data[i].subject=="Mathematics"){
					mathsvideos=data[i].listitems;
					console.log("maths:"+chemistryvideos);
				}*/
			
			
		
		   
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
	
	var psn=1;
	var datas=getParameterByName("allData");
	
	last7DaysVideos='';
	
	if(datas == "NCERT"){
		
		if(data.length ==0){
			
			alertify. alert("No details found");
			
			}
			else{
		
	for(var c =0; c<data.length;c++){
		
		var chap=data[c].chapterId;
			var sub=data[c].subjectId;
			
		
		
		physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">' +physicsVideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
	}
	}
	
	else if(datas == "Concepts"){
		if(data.length ==0){
			
			alertify. alert("No details found");
			
			}
			else{
		
	for(var c =0; c<data.length;c++){
		
		
		
		var chap=data[c].chapterId;
			var sub=data[c].subjectId;
			
		
		
		physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">' +physicsVideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		}
		}
		
		
		else if(datas == "Formulas"){
			
			if(data.length ==0){
			
			alertify. alert("No details found");
			
			}
			else{
			
			var msn=1;
			for(var c =0; c<data.length;c++){
		
			var chap=data[c].chapterId;
			var sub=data[c].subjectId;
			
		
		
		physicsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ psn++ +'.</h5><h5 onclick="physicsData(this)" style="cursor: context-menu;">'+physicsVideos[c].chaptername +'<h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		}
		}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(physicsappenddata);
		rendereelemntforkatext();
	
}



function chemistry(){
	
	var chemistryappenddata=" ";
	
	last10DaysVideos='';
	
	var csn=1;
	var datas=getParameterByName("allData");
	
	if(datas == "NCERT"){
		var csn=1;
		if(chemistryvideos.length ==0){
			
			alertify. alert("No Chemistry details");
			
			}
			else{
	
	for(var c =0; c<chemistryvideos.length;c++){
		
		
		
			var chap=chemistryvideos[c].chapterId;
			var sub=chemistryvideos[c].subjectId;
			
		
		chemistryappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ csn++ +'.</h5><h5 onclick="chemistryData(this)" style="cursor: context-menu;">'+chemistryvideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		}
	
	}
	
	else if(datas == "Concepts"){
		var csn=1;
		
		if(chemistryvideos.length ==0){
			
			alertify. alert("No Chemistry details");
			
			}
			else{
	for(var c =0; c<chemistryvideos.length;c++){
			var chap=chemistryvideos[c].chapterId;
			var sub=chemistryvideos[c].subjectId;
			
		
		
		chemistryappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ csn++ +'.</h5><h5 onclick="chemistryData(this)" style="cursor: context-menu;"> '+chemistryvideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
		}
		
		}
		else if(datas == "Formulas"){
			var csn=1;
			
			if(chemistryvideos.length ==0){
			
			alertify. alert("No Chemistry details");
			
			}
			else{
	for(var c =0; c<chemistryvideos.length;c++){
		
		var chap=chemistryvideos[c].chapterId;
			var sub=chemistryvideos[c].subjectId;
			
		
		chemistryappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ csn++ +'.</h5><h5 onclick="chemistryData(this)" style="cursor: context-menu;">' +chemistryvideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
		}
	}
		cvideo=chemistryvideos[c].videosForUnitWise;
		
	 for(var y =0; y<cvideo.length;y++){
		
	 			chemistryappenddata +='<div class="panel panel-default " style="display:inline-block; padding:10px; margin:10px;">'+
 			
    			'<div class="panel-body">'+
      			'<iframe width="420" height="315" src="'+cvideo[y].videoLink+'"></iframe>'+
            	'</div>'+
            
   				'</div>';
		}
	
		
	 $('#liveVideoFilte').empty("");
	   
		$('#liveVideoFilte').append(chemistryappenddata);
		rendereelemntforkatext();
}

function maths(){
	
	var mathsappenddata=" ";
	
	last10DaysVideos='';
	var msn=1;
		
	var datas=getParameterByName("allData");
	
	if(datas == "NCERT"){
		var csn=1;
		
		if(mathsvideos.length ==0){
			
			alertify. alert("No Maths details");
			
			}
			else{
	for(var m =0; m<mathsvideos.length;m++){
		console.log("mvideo:"+mvideo);
		
		var chap=mathsvideos[m].chapterId;
			var sub=mathsvideos[m].subjectId;
			
		
		
		mathsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ msn++ +'.</h5><h5 onclick="mathsData(this)" style="cursor: context-menu;">'+mathsvideos[m].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
	}
	}
	
	else if(datas == "Concepts"){
		var csn=1;
		if(mathsvideos.length ==0){
			
			alertify. alert("No Maths details");
			
			}
			else{
	for(var c =0; c<mathsvideos.length;c++){
		
		var chap=mathsvideos[c].chapterId;
			var sub=mathsvideos[c].subjectId;
		
		mathsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ msn++ +'.</h5><h5 onclick="mathsData(this)" style="cursor: context-menu;">' +mathsvideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Formulas&chapid='+chap+'&subid='+sub+'">Formulas</h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
		}
		
		}
		else if(datas == "Formulas"){
			var csn=1;
			if(mathsvideos.length ==0){
			
			alertify. alert("No Maths details");
			
			}
			else{
	for(var c =0; c<mathsvideos.length;c++){
		
		
			var chap=mathsvideos[c].chapterId;
			var sub=mathsvideos[c].subjectId;
			
		
		mathsappenddata +='<div style="width:700px;margin-left:25%"><div class="panel panel-default cardhover" style="padding:20px;border-radius:20px;border-left:10px solid orange;">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 "><div  style="display:flex; justify-content:center"><h5 class="text-warning">'+ msn++ +'.</h5><h5 onclick="mathsData(this)" style="cursor: context-menu;">' +mathsvideos[c].chaptername +'</h5></div>'+
'<div style="display:flex;justify-content:space-around">'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=Concepts&chapid='+chap+'&subid='+sub+'">Concepts</a></h5>'+
'<h5 style="border-bottom:2px solid black"><a href="getallconcepts.jsp?allconcepts=NCERT&chapid='+chap+'&subid='+sub+'">NCERT</a></h5>'+
'</div>'+'</div>'+
            	'</div>'+
            
   			'</div></div>';
		}
		
		}
	}
		
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(mathsappenddata);
		rendereelemntforkatext();
}*/

function physicsData(el){
	
	var mData='';
	var chapname="";
	
for(var mp =0; mp<data.length;mp++){
	
	 chapname=data[mp].chaptername;
	
	var str=el.innerHTML;
	
	var str1=str.replace( /(<([^>]+)>)/ig, '')
		
		if(chapname == str1){
		
	    mData +='<div class="panel panel-default">'+
 			     '<div class="panel-body">'+
      			'<div style="padding:20px;">'+ data[mp].type+'</div>'+
            	'</div>'+
            
   				'</div>';
		
	}
	
	}
	
	$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(mData);
		rendereelemntforkatext();
	
}

/*function chemistryData(el){
var mData='';
	var chapname="";
	
for(var mp =0; mp<chemistryvideos.length;mp++){
 chapname=chemistryvideos[mp].chaptername;
	
	var str=el.innerHTML;
	
	var str1=str.replace( /(<([^>]+)>)/ig, '')
		
		if(chapname == str1){
		
	    mData +='<div class="panel panel-default">'+
 			     '<div class="panel-body">'+
      			'<div style="padding:20px;">'+ chemistryvideos[mp].type+'</div>'+
            	'</div>'+
            
   				'</div>';
		
	}
	
	}
	
	$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(mData);
		rendereelemntforkatext();
	
}
function mathsData(el){
	var mData='';
	var chapname="";
	
for(var mp =0; mp<mathsvideos.length;mp++){
		
		 chapname=mathsvideos[mp].chaptername;
	
	var str=el.innerHTML;
	
	var str1=str.replace( /(<([^>]+)>)/ig, '')
		
		if(chapname == str1){
		
	    mData +='<div class="panel panel-default">'+
 			     '<div class="panel-body">'+
      			'<div style="padding:20px;">'+ mathsvideos[mp].type+'</div>'+
            	'</div>'+
            
   				'</div>';
		
	}
	
	}
	
	$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(mData);
		rendereelemntforkatext();
	
	
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

