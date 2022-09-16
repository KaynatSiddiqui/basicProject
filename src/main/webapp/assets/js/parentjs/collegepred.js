//college predictor analytics
function Showingtabs(){
	
	var examid = getParameterByName('examid');
	
	var tabs = {
			
	 "examtypeId": examid
	 
	}
	
	var tbshow = JSON.stringify(tabs);
	
	var appendata = "";
	
	$.ajax({
		url: base_url+'rest/student/checkAirAndHsExists',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:tbshow,
		success:function(data){
			var allindia = data.air;
			var homestate = data.homeState;
			
			if(allindia == true && homestate == true){
				appendata += '<li role="presentation" class="active"><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li><li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else if(allindia == true && homestate == false){
				appendata += '<li role="presentation" ><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li>';
			}else if(allindia == false && homestate == true){
				appendata += '<li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else{
				appendata += "";
			}
			
			$("#Showtabs").html(appendata);
			
		},
		error:function(){
			alert("Failed to get Tab Details");
		}
	})
	
}


function AnalyAllindia(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var idtest = atob(getParameterByName('id'));
	
	var fivelast = {
			"studentId": studid,
			"testPostId":idtest
		}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getCollegesPredictionResponse',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata += 
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
      }
			  appendata +=  '</div>'
		    
		    $("#india").html(appendata);
		},
		error:function(){
			alert("Failed to get Allindia rank details")
		}
	})
	
}



function AnalyHomestate(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var idtest = atob(getParameterByName('id'));
	
	var fivelast = {
			"studentId":studid,
			"testPostId":idtest
		}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getHSCollegesPredictionResponse',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
      }
			  appendata += '</div>'
		    
		    $("#homestate").html(appendata);
		},
		error:function(){
			alert("Failed to get Homestate rank details")
		}
	})
	
}


//college predictor analytics

function GetExamtypes(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var appenddata = "";
	var k = 0
	$.ajax({
		url: base_url+'rest/student/v1/getStudentExamtypes/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata += '<li class="col-md-2" style="text-align:center"><a class="toseeperall" data-id='+data[i].id+'><img src='+data[i].image+' width="160px" height="80px" style="border-radius:15px"><p>'+data[i].name+'</p></a></li>';
				
			}
			
			$("#Examtabs").html(appenddata);
			
		},
		error:function(){
			alert("Failed to get Examtypes");
		}
	})	
}



function GetlastfiveExamtypes(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var appenddata = "";
	$.ajax({
		url: base_url+'rest/student/v1/getStudentExamtypes/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata += '<li class="active col-md-2" style="text-align:center"><a href="'+base_url+'jsp/student/collegeprediction/lastfivepage.jsp?exmid='+data[i].id+'" ><img src='+data[i].image+' width="160px" height="80px" style="border-radius:15px"><p>'+data[i].name+'</p></a></li>';
				
			}
			
			$("#lastfiveexams").html(appenddata);
			
		},
		error:function(){
			alert("Failed to get Examtypes");
		}
	})	
}


function getallIndia(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = getParameterByName('exmid');
	
	var indiarank  = {
		"studentId":studid,
		"examtypeId":examid
	}
	
	var strindiarank = JSON.stringify(indiarank);
	var appendata = "";
	var subappend = "";
	
	$.ajax({
		url: base_url+'rest/student/getLastFiveTests',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strindiarank,
		success:function(data){
			
			appendata += '<div class="col-md-2" style="text-align:center"><img src='+data.examtypeIcon+' width="160px" height="80px" style="border-radius:15px"><p>'+data.examtype+'</p></div>';
			
			var testarray = data.testDetails;
			
			var examid = data.examtypeId;
			
			for(var i = 0; i < testarray.length;i++){
				var testname = testarray[i].testName;
			
				subappend	+=  '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
				    '<a href="'+base_url+'jsp/student/collegeprediction/fivetests.jsp?examid='+examid+'&testname='+testname+'&allindrank='+testarray[i].allIndiaPredictionRank+'">'+
				    '<div class="fivemade">'+
				    '<p>'+testarray[i].testName +'</p>'+
				    '<p style="margin-left:20px">'+testarray[i].expiredDate+'</p>'+
				    '<p style="float:right"><span class="glyphicon glyphicon-chevron-right" style="color:gold;font-size:20px"></span></p>'+
				    '<p style="margin-top:18px">All India Predicted Rank: <span style="color:blue;font-weight:bold">'+testarray[i].allIndiaPredictionRank+'</span></p>'+
				    '</div>'+
				     '</a>'+
				    '</div>'
			}
			
			$("#examname").append(appendata);
			$("#examdetails").append(subappend);
		},
		error:function(){
			alert("Getting Exam type details failed");
		}
		
	})
	
}



function lastfiveexamnameshow(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = getParameterByName('examid');
	
	var indiarank  = {
		"studentId":studid,
		"examtypeId":examid
	}
	
	var strindiarank = JSON.stringify(indiarank);
	var appendata = "";
	var subappend = "";
	
	$.ajax({
		url: base_url+'rest/student/getLastFiveTests',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strindiarank,
		success:function(data){
			
			appendata += '<div class="col-md-2" style="text-align:center"><img src='+data.examtypeIcon+' width="160px" height="80px" style="border-radius:15px"><p>'+data.examtype+'</p></div>';
			
			
			$("#lastfiveexam").append(appendata);
			
			
			lastfivetabs();
		},
		error:function(){
			alert("Getting Exam type details failed");
		}
		
	})
	
}


function lastfivetabs(){
	
	var examid = getParameterByName('examid');
	
	var tabs = {
			
	 "examtypeId": examid
	 
	}
	
	var tbshow = JSON.stringify(tabs);
	
	var appendata = "";
	
	$.ajax({
		url: base_url+'rest/student/checkAirAndHsExists',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:tbshow,
		success:function(data){
			var allindia = data.air;
			var homestate = data.homeState;
			
			if(allindia == true && homestate == true){
				appendata += '<li role="presentation" class="active"><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li><li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else if(allindia == true && homestate == false){
				appendata += '<li role="presentation" ><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li>';
			}else if(allindia == false && homestate == true){
				appendata += '<li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else{
				appendata += "";
			}
			
			$("#lastfivetabs").append(appendata);
			
		},
		error:function(){
			alert("Failed to get Tab Details");
		}
	})
	
}


function getFiveAllindia(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = getParameterByName('examid');
	var allindiarank = getParameterByName('allindrank');
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"allIndiaRank":allindiarank
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getAICollegesListByAir',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
      }
			appendata +=  '</div>'
		    
		    $("#india").html(appendata);
		},
		error:function(){
			alert("Failed to get Allindia rank details")
		}
	})
	
}



function getFiveHomestate(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = getParameterByName('examid');
	var allindiarank = getParameterByName('allindrank');
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"allIndiaRank":allindiarank
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getHsCollegesListByAir',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
      }
			  appendata +=   '</div>'
		    
		    $("#homestate").html(appendata);
		},
		error:function(){
			alert("Failed to get Homestate rank details")
		}
	})
	
}

function predicttabs(){
	
	var examid = $("#exmid").val();
	
	var tabs = {
			
	 "examtypeId": examid
	 
	}
	
	var tbshow = JSON.stringify(tabs);
	
	var appendata = "";
	
	$.ajax({
		url: base_url+'rest/student/checkAirAndHsExists',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:tbshow,
		success:function(data){
			var allindia = data.air;
			var homestate = data.homeState;
			
			if(allindia == true && homestate == true){
				appendata += '<li role="presentation" class="active"><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li><li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else if(allindia == true && homestate == false){
				appendata += '<li role="presentation" ><a href="#india" class="fronk" aria-controls="home" role="tab" data-toggle="tab">All India</a></li>';
			}else if(allindia == false && homestate == true){
				appendata += '<li role="presentation"><a href="#homestate" class="fronk safehome" aria-controls="profile" role="tab" data-toggle="tab">HomeState</a></li>';
			}else{
				appendata += "";
			}
			
			$("#Showtabs").html(appendata);
			
		},
		error:function(){
			alert("Failed to get Tab Details");
		}
	})
	
}


function predictAllindia(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = $("#exmid").val();
	var allindiarank = $("#air").val();
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"allIndiaRank":allindiarank
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getAICollegesListByAir',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
		   
		  
      }
			 appendata +=  '</div>'
		    
		    $("#india").html(appendata);
		},
		error:function(){
			alert("Failed to get Allindia rank details")
		}
	})
	
}


function predictHomestate(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = $("#exmid").val();
	var allindiarank = $("#air").val();
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"allIndiaRank":allindiarank
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getHsCollegesListByAir',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
      }
			  appendata += '</div>'
			
			
		    
		    $("#homestate").html(appendata);
		},
		error:function(){
			alert("Failed to get Homestate rank details")
		}
	})
	
}


////

function percentileallindia(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = $("#exmid").val();
	var percentile = $("#percentile").val();
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"percentile":percentile
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getAICollegesListByPercentile',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata +=  
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
		   
		    
      }
			
			 appendata +=  '</div>'
			
		    $("#india").html(appendata);
		},
		error:function(){
			alert("Failed to get Allindia rank details")
		}
	})
	
}


function percentileHomestate(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = $("#exmid").val();
	var percentile = $("#percentile").val();
	
	var fivelast = {
		"studentId":studid,
		"examtypeId":examid,
		"percentile":percentile
	}
	
	var appendata = "";
	var fivejson = JSON.stringify(fivelast);
	
	$.ajax({
		url: base_url+'rest/student/getHsCollegesListByPercentile',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:fivejson,
		success:function(data){
			
			var collegelist = data.collegesLists;
			
			appendata += ' <div class="col-md-11" style="margin-top:40px">'+
		        '<div class="container">'+
		    '<span style="color:black;font-size:18px;padding:10px">Hey '+data.studentName+'!</span>'+
		    '<span style="color:black;font-size:18px;padding:10px">Gender:'+data.gender+'</span>'+
		     '<span style="color:black;font-size:18px;padding:10px">Quota:'+data.quota+'</span>'+
		        '</div>'+
		    '</div>'+
'<div class="col-md-11" style="margin-top:30px">'+
'<div class="container">'+
'<span style="color:black;font-size:18px;padding:10px">'+data.branch+'</span>'+
'<span style="color:black;font-size:16px">All India Predicted Rank: <span style="color:orange;font-weight:bold">'+data.allIndiaPredictedRank+'</span> </span>'+
'</div>'+
'</div> <div class="Showdetails col-md-12">'
       
  for(var i = 0;i < collegelist.length; i++){
	  appendata += 
		    '<div class="col-md-6" style="margin-top:20px;display:flex;justify-content:center;">'+
		    '<div class="shadow">'+
		    '<p>'+collegelist[i].collegaName+' ('+collegelist[i].collegeCode+') </p>'+
		    '<p style="margin-left:50px">('+collegelist[i].universityName+')</p>'+
	        '<div class="col-md-6">'+
		    '<p style="margin-top:8px">Cut-off:<span style="color:darkslategrey;font-weight:bold">'+collegelist[i].cutoff+'</span></p>'+
		     '<p style="margin-top:8px">'+collegelist[i].state+'</p>'+
		    '</div>'+
		    '<div class="col-md-6 col-md-push-2">'+
		     '<p style="margin-top:8px" >Possibility: <span style="color:darkslategrey;font-weight:bold">'+collegelist[i].possibility+'</span></p><br>'+
		    '<p style="margin-top:8px" >'+collegelist[i].city+'</p>'+
		    '</div>'+
		    '</div>'+
		    '</div>'
		   
		
      }
			
			  appendata += '</div>'
			
		    
		    $("#homestate").html(appendata);
		},
		error:function(){
			alert("Failed to get Homestate rank details")
		}
	})
	
}


$("#exit").click(function(){
	var exam = getParameterByName('exm');
	var currTabActive =  getParameterByName('testtype');
      // window.history.back(function(exam){
		  var LoginData = getLoginData();
		 var parentId = LoginData.parentId;
		 if(parentId != "" && parentId !=undefined && parentId != null){
			 window.location = base_url +"jsp/parent/parentslivezoneattempted.jsp?&exm="+exam+"&testtype="+currTabActive;
			 
		 }else{
			window.location = base_url +"jsp/student/livezone/live_zone_attempted_full_mocks.jsp?&exm="+exam+"&testtype="+currTabActive; 
		 }
	
})