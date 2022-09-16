//GET STUDENT RESULTS HISTORY FOR FINISHED TEST 
	/*$("#exit").click(function(){
		
		var reffer = document.referrer;
		if(reffer.indexOf("parentslivezoneattempted.jsp") != -1){
			var exam = getParameterByName('exm');
			var currTabActive =  getParameterByName('testtype');
		      // window.history.back(function(exam){
			window.location = base_url +"jsp/parent/parentslivezoneattempted.jsp?&exm="+exam+"&testtype="+currTabActive;
		}
		
		else if(reffer.indexOf("live_zone_active_full_mocks.jsp") != -1){
			var exam = getParameterByName('exm');
			var currTabActive =  getParameterByName('testtype');
		      // window.history.back(function(exam){
			window.location = base_url +"jsp/student/livezone/live_zone_attempted_full_mocks.jsp?&exm="+exam+"&testtype="+currTabActive;
		
		}
	
	})*/
$("#exit").click(function(){
	var exam = getParameterByName('exm');
	var currTabActive =  getParameterByName('testtype');
	var from = getParameterByName('from');//from einstein
	var einsteinType = getParameterByName('einsteinType');//student || parent
	/*+"&from="+getParameterByName('from')+"&einsteinType="+einsteinType*/
	var parentredirect = base_url + "jsp/parent/einsteinanalaytics/einsteinsummary.jsp";
	var studentredirect = base_url + "jsp/student/einsteinanalaytics/einsteinsummary.jsp";
	var ps = document.referrer;
	var LoginData = getLoginData();
    var parentId = LoginData.parentId;
	  if(ps === parentredirect || einsteinType === "parent"){
		  window.location = base_url +"jsp/parent/einsteinanalaytics/einsteinsummary.jsp";
		  return;
	  }else if(ps === studentredirect || einsteinType === "student" ){
		  window.location = base_url +"jsp/student/einsteinanalaytics/einsteinsummary.jsp";
		  return;
	  }
	  
	if(parentId != "" && parentId !=undefined && parentId != null){
		window.location = base_url +"jsp/parent/parentslivezoneattempted.jsp?&exm="+exam+"&testtype="+currTabActive;

	}else{
		window.location = base_url +"jsp/student/livezone/live_zone_attempted_full_mocks.jsp?&exm="+exam+"&testtype="+currTabActive; 
	}

})


function getstudentcommon(){
var LoginData = getLoginData();
var studid = LoginData.studentid;
$.ajax({
	url: base_url+'rest/student/v1/getstudentdetails/'+studid,
	type:"GET",
	dataType:"json",
	contentType:'application/json',
	success:function(data){
	for(var i=0; i<data.length; i++){
		if(data[0].photo !=""){
			var image = data[0].photo;
		}else{
			var image= base_url +"/assets/images/students/default.png";
		}
		
		 $("#notifcount").html(data[0].notificationCount);
		$("#nme").html(data[i].name+"!");
		$("#categoryname").html(data[i].category+"<br/>"+data[i].standardName);
		$('#profileimg').attr('src', image);
	}
	
},
error:function(data){
alert("student details not founds");
}
});
} 



//function for analytics popups options

function answerTextCheck(type){
	switch(parseInt(type)){
		case 1:
			return "Your Answer and Correct Answer";
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		case 16:
		case 55:
		case 56:
			return "Correct Answer";
	}	
}
//function for analytics popups options for checking answers
function optionsAddingModal(iData,resolvedAnswer,answer,resolvedSelected){
	var appendData = "";
	var answerText = answerTextCheck(currType);

	
	if(iData["option1"] === "" && iData["option2"] === ""){
	  //integer layout
		
	  if(iData.roundedAnswer === iData["roundedStudentSelectedOption"] && iData["roundedStudentSelectedOption"] !== "" && iData["roundedStudentSelectedOption"] !== 0){
		  //Correct Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60" style="color:#2f2b2b"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="green bold keyStyle">'+iData["studentSelectedOption"]+' <i class="fa fa-check fa-lg green"></i> (Correct Answer)</span>'+
		  '</div></div></div>';
		  
	  } else if(iData["roundedStudentSelectedOption"] === "" || iData["roundedStudentSelectedOption"] === 0){
		  //Correct Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60" style="color:#2f2b2b"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="ocorrect bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="bold keyStyle"></span>'+
		  '</div></div></div>';
		  
	  } else{
		  //Wrong Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60" style="color:#2f2b2b"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="red bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="red bold keyStyle"> '+iData["studentSelectedOption"]+' <i class="fa fa-close fa-lg red"></i> (Wrong Answer)</span>'+
		  '</div></div></div>'
		  
	  }
	  
	  //Displays key and solution
	  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap" style="color:#2f2b2b"><div class="row pd-td-20">'+
	  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
	  '</div>'+
	  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+answer+'</span>'+
	  '</div></div></div>'+
	  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-" ><div class="row pd-td-20">'+
	  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
	  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
	  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ iData.solution+
	  '</div></div></div></div>';
	  
	  
	  //Total students count for attempted and correctly answerred
	  appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount " style="color:#2f2b2b">'+
      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b">  Students Attempted -</span>  <span class="below-icon-text" style="color:#2f2b2b">'+iData.totalStudentsAttended+'</span></div>'+
      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text" style="color:#2f2b2b">'+iData.totalStudentsAnsweredCorrectly+'</span></div>';
      
	  if(iData.overtime){
		 appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
	  } else{
		  appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
	  }
	  
      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
	  
	} 	else {
		
		for(var jk=1;jk<=4;jk++){
			//looping through four options
			
			if(iData["option1"] == "MATRIX OPTION1" && iData["option2"] === "MATRIX OPTION2"){
				// matrix layout
				
				var studentSelected = iData.studentSelectedOption;
				var studentSplit = studentSelected.split('|');
				
				var correctAnswer_d = answer;
				var correctAnswerSplit = correctAnswer_d.split('|');
							
			
				var optVal = ["P","Q","R","S","T"];

				appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60" ><div class="row pd-5">'+
				'<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b"><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>';
					
			    var sas = correctAnswerSplit[jk-1].split(',');
			    var sss;

			    if(iData.unattempted){
			    	//UnAttempted Logic
			    	
			    	for(var j=0;j<optVal.length;j++){
			    		if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
							  //Correct Answer but not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					    	  
					      } else{
					    	  // Neutral, neither correct nor wrong
					    	  appendData += '<span class="bold">'+optVal[j]+' </span>';
					    	
					      }
			    	}
			    	
			    } else{
			    	
			    	if(studentSplit[jk-1] !== ""){
					    sss = studentSplit[jk-1].split(',');
		
					    for(var j=0;j<optVal.length;j++){
					      //looping through single option(p,q,r,s,t)
					      if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1 && studentSplit[jk-1].indexOf(optVal[j]) > -1){
					    	  //Correct Answer
					    	  appendData += '<span class="green bold">'+optVal[j]+' </span>';
					    	
					      } else if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1 && studentSplit[jk-1].indexOf(optVal[j]) === -1){
					    	  //Wrong Answer and not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
							  
						  } else if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
							  //Correct Answer but not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					    	  
					      } else if(studentSplit[jk-1].indexOf(optVal[j]) > -1){
					    	  //Wrong Answer but attempted
					    	  appendData += '<span class="red bold">'+optVal[j]+' </span>';
					    	
					      } else{
					    	  // Neutral, neither correct nor wrong
					    	  appendData += '<span class="bold">'+optVal[j]+' </span>';
					    	
					      }
					      
					    }

				    } else{
				    	
					    for(var j=0;j<optVal.length;j++){
					      if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
					    	 appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					      } else{
					    	 appendData += '<span class="bold">'+optVal[j]+' </span>';
					      }
					    }
				    
				    }
			    	appendData += '</span>(Your Answer - '+studentSplit[jk-1]+')';
			    }
			    

				appendData += "</div></div></div>";
	
			} else if(resolvedAnswer.constructor === Array || resolvedSelected.constructor === Array){
				//comprehension passage option logic and multi correct logic
				
				var resolvedSelected_arr = [];
				var resolvedAnswer_arr = [];

				if(resolvedSelected !== "" && resolvedSelected !== undefined && resolvedSelected !== null){
					if(resolvedSelected.constructor !== Array){
						resolvedSelected_arr[0] = resolvedSelected;
					} else{
						resolvedSelected_arr = resolvedSelected.slice(); //copying array values into another array
					}
				} else {
					resolvedSelected_arr[0] = 9999; //not an option static value set
				}
				
				if(resolvedAnswer !== "" && resolvedAnswer !== undefined && resolvedAnswer !== null){
					if(resolvedAnswer.constructor !== Array){
						resolvedAnswer_arr[0] = resolvedAnswer;
					} else{
						resolvedAnswer_arr = resolvedAnswer.slice(); //copying array values into another array
					}
				} else {
					resolvedAnswer_arr[0] = 9999; //not an option static value set
				}
				
				var join_resolvedAnswer = resolvedAnswer_arr.join(',');
				
				var join_resolvedSelected = resolvedSelected_arr.join(',');
				
				
				if(iData.unattempted){
					//Unattempted 
					if(join_resolvedAnswer.indexOf(jk) > -1){
						//Correct Answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					}  else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question

					if(join_resolvedAnswer.indexOf(jk) > -1 && join_resolvedSelected.indexOf(jk) > -1){
						//Correct Answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedAnswer.indexOf(jk) > -1){
						//Correct Answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedSelected.indexOf(jk) > -1){
						//Wrong answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
				}
				
				
			} else {
				
				//single correct option logic

				var stdselected;
				if(iData.studentSelectedOption !== "" && iData.studentSelectedOption !== null){
				    stdselected = idResolver(iData.studentSelectedOption);
				}
				
				if(iData.unattempted){
					//unattempted logic
					
					if(resolvedAnswer===jk){
						//correct answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question
					
					
					if(resolvedAnswer===jk && stdselected === jk){
						//your answer is correct
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
						
					} else if(resolvedAnswer===jk){
						//correct answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(stdselected===jk){
						//wrong answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
				}
				
			}
			
		}
		
		//Displays key and solution
		 appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row  pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+answer+'</span>'+
		  '</div></div></div>'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row  pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
		  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ iData.solution+
		  '</div></div></div></div>';
		 
		  
		  //Total students count for attempted and correctly answerred
		  appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
	      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span>  <span class="below-icon-text" style="color:#2f2b2b">'+iData.totalStudentsAttended+'</span></div>'+
	      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text" style="color:#2f2b2b">'+iData.totalStudentsAnsweredCorrectly+'</span></div>';
	      
		  if(iData.overtime){
			 appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
		  } else{
			  appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
		  }
		  
	      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
			
	}
	
	//returns option html append data
        return appendData;
   
   
}

 //analytics summaery function
 function getStudentAnalyticsSummary(){
	 
	/* var x = document.referrer;
	 
	 if(x.indexOf("live_zone_attempted_full_mocks.jsp")!== -1){
		 var testPostId = getParameterByName('id');
	 }
	 
	 else{
		 var testPostId = atob(getParameterByName('id'));
	 }*/
	 var testPostId = atob(getParameterByName('id'));
	 var LoginData = getLoginData();
	 var studentid = LoginData.studentid;
	 var inputData = {
	  "testPostId":testPostId,
	  "studentId":studentid
	  }
	inputData = JSON.stringify(inputData);
			
	 var appenddata;
	 var qualifiedappenddata = "";
	 var timespentappenddatahead;
	 var timespentappenddatabody;
	$.ajax({ 
		url   :  base_url+'rest/student/v1/getsummery',
		type  : "POST",
		dataType: "json",
		contentType:'application/json',
		data: inputData,
		success: function(data){
			/*if(data[0].issubscribed){
				$(".perfor_viewques, .diffwiseAcc, .subwiseper").removeClass("mask");
    			$("#timespenthide, #freeaccess_btn, #subjectvsdifficulty").removeClass("mask");
			}else{
				$(".perfor_viewques, .diffwiseAcc, .subwiseper").addClass("mask");
				$("#timespenthide, #freeaccess_btn, #subjectvsdifficulty, #performancediv, #viewqnshide").addClass("mask");
			}*/
			if(data[0].issubscribed){
				$(".perfor_viewques, .diffwiseAcc, .subwiseper").removeClass("mask");
    			//$("#timespenthide, #freeaccess_btn, #subjectvsdifficulty").removeClass("mask");
				$("#timespenthide, #freeaccess_btn, #perfromview, #viewqnshide , #diffwiseacc, #subwiseper, #subjectvsdifficulty").removeClass("mask");
			}else{
				$(".perfor_viewques, .diffwiseAcc, .subwiseper").addClass("mask");
				$("#timespenthide, #freeaccess_btn, #perfromview, #viewqnshide , #diffwiseacc, #subwiseper, #subjectvsdifficulty").addClass("mask");
			}
			var attempted = data[0].attempted;
			var correct = data[0].correct;
			var wrong = data[0].wrong;
			var unAttempted = data[0].unAttempted;
			var overtime = data[0].overtime;
			
			
			var accuracy = data[0].accuracy;
			var percentage = data[0].percentage;
			var percentile = data[0].percentile;
			var speed = data[0].speed;
			var totalMarks = data[0].totalMarks;
			var cutOffMarks = data[0].cutOffMarks;
			
			var marksObtained = data[0].marksObtained;
			
			
			var negative = data[0].negative;
			var countryLevelRank =  data[0].countryLevelRank;
			var stateLevelRank =  data[0].stateLevelRank;
			var cityLevelRank =  data[0].cityLevelRank;
			var timeSpent =  data[0].timeSpent;
			
			
			var markedForReivew =  data[0].markedForReivew;
			
			var answeredAndMarkedForReview =  data[0].answeredAndMarkedForReview;
			var unVisited =  data[0].unVisited;
			var subjectwise =[];
			//studentSubjectWiseMarks
			 subjectwise =  data[0].studentSubjectWiseMarks;
			 var sujectwiseanalysis =[];
			 sujectwiseanalysis = data[0].subjectWiseAnalysisPojos;
		
		if(data[0].previousYear === true){
		
			
			$('#compbtnhide , #timespenthide , #attemptexit,#act').css({"display":"none"});
			//$('#performancediv').css({"left":"200px"});
			$('#paperwiseexit').css({"display":"inline"});
		}
		
		$("#attempted").html(attempted);
		$("#correctqns").html(correct);
		$("#wrongqns").html(wrong);
		$("#unAttempted").html(unAttempted);
		$("#overtime").html(overtime);
		
		$("#marksObtained").html(marksObtained);
			$("#totalMarks").html(marksObtained+"/"+totalMarks);
			$("#negative").html(negative);
			$("#accuracy").html(accuracy+"%");
			$("#percentage").html(percentage+"%");
			$("#percentile").html(percentile);
			$("#speed").html(speed);
			
			$("#cutoff").html(cutOffMarks);
			$("#omarks").html(marksObtained);
			$("#omarkss").html(marksObtained);
			$("#totalm").html(totalMarks);
			$("#totalms").html(totalMarks);
			
			$("#testname").html(data[0].testName);
			$("#testtype").html(data[0].testType);
			$("#testdate").html(data[0].testTakenDate);
			
			for(var i=0;i<data.length;i++){
				  
				  if(data[i].examStatus == "Qualified"){
    				  /*appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";*/
					 /* appenddata +=	  "<span style='color: #09a275;'>"+data[i].examStatus+";
*/    	
					  qualifiedappenddata += "<span class='pull-right bold font-16 text-success' style='color: #09a275;'> Qualified </span>";
				  }
    			  else {
    				 /* appenddata += "<label><span style='color: #EB1FB0;'>"+data[i].examStatus+"</span></label>";*/
    				  qualifiedappenddata += "<span class='pull-right bold font-16 text-success' style='color: #EB1FB0 !important;'> Not Qualified </span>"
    			  }
			}
			  $("#qualified").empty();
			  $("#qualified").append(qualifiedappenddata);

			  for (var j = 0;j<subjectwise.length;j++){
				  appenddata += "<tr><td id='subjectname' data-id='"+subjectwise[j].subjectId+"'>"+subjectwise[j].subjectName+"</td>";
    			
    			if(subjectwise[j].scoredQuestionsCount !=0 ){
					 appenddata += "<td class='text_score' data-toggle='modal' data-target='#correctModal' onclick= 'getCorrectQns(this,7,\"\",\""+subjectwise[j].subjectName+"\")'><span data-toggle='toolti' title='Click To Check Your Score Questions'>"+subjectwise[j].scored+"<br>("+subjectwise[j].scoredQuestionsCount+"Q/"+subjectwise[j].totalQuestionsCount+"Q)</span></td>";
    			  
				}else{
					 appenddata += "<td class='text_score' ><span data-toggle='toolti' title='Click To Check Your Score Questions'>"+subjectwise[j].scored+"<br>("+subjectwise[j].scoredQuestionsCount+"Q/"+subjectwise[j].totalQuestionsCount+"Q)</span></td>";
    			  
				}
				if(subjectwise[j].negativeQuestionsCount !=0){
					 appenddata += "<td class ='text_negative_score'  data-toggle='modal' data-target='#correctModal' onclick= 'getCorrectQns(this,8,\"\",\""+subjectwise[j].subjectName+"\")'><span data-toggle='toolti' title='Click To Check Your NegativeMarks Questions'>"+subjectwise[j].negativeMarks+"<br>("+subjectwise[j].negativeQuestionsCount+"Q)</span></td>";
				}else{
					 appenddata += "<td class ='text_negative_score' ><span data-toggle='toolti' title='Click To Check Your NegativeMarks Questions'>"+subjectwise[j].negativeMarks+"<br>("+subjectwise[j].negativeQuestionsCount+"Q)</span></td>";
				}
				if(subjectwise[j].unattempted !=0){
    				 appenddata += "<td class ='text_unattempted' data-toggle='modal'  data-target='#correctModal' onclick= 'getCorrectQns(this,9,\"\",\""+subjectwise[j].subjectName+"\")'><span data-toggle='toolti' title='Click To Check Your UnAttempted Questions'>"+subjectwise[j].unattempted+"</span></td>";
       			   
    			 }else{
    				 appenddata += "<td class ='text_unattempted' ><span data-toggle='toolti' title='Click To Check Your UnAttempted Questions'>"+subjectwise[j].unattempted+"</span></td>";
       			   
    			 }
    			 if(subjectwise[j].overtimeqns !=0){
    				 appenddata += "<td class ='text_negative_score' data-toggle='modal' data-target='#correctModal' onclick= 'getCorrectQns(this,10,\"\",\""+subjectwise[j].subjectName+"\")'><span data-toggle='toolti' title='Click To Check Your Overtime Questions'>"+subjectwise[j].overtimeqns+"</span></td>";
    	    			
    			 }else{
    				 appenddata += "<td class ='text_negative_score' ><span data-toggle='toolti' title='Click To Check Your Overtime Questions'>"+subjectwise[j].overtimeqns+"</span></td>";
    	    			 
    			 }
    			    
    			  appenddata += "<td>"+subjectwise[j].percentage+"%</td>";
    			  
    			  appenddata += "<td>"+subjectwise[j].accuracy+"%</td>";
    			  appenddata += "<td>"+subjectwise[j].speed+" Qns./Hr</td></tr>";
			  }
			  
			  $("#std-summary-tablebody").empty();
			  
			  
			  appenddata += '<tr style="background-color: #80808017;"><td style="font-weight: bolder;">Total : </td>';
			  appenddata += '<td class="text_score" data-toggle="modal" data-target="#correctModal" onclick="getCorrectQns(this,4,)"><span data-toggle="toolti" title="Click To Check Your Score Questions">'+marksObtained+'</span></td>';
			  appenddata += '<td class ="text_negative_score" data-toggle="modal" data-target="#correctModal" onclick="getCorrectQns(this,11,)"><span data-toggle="toolti" title="Click To Check Your NegativeMarks Questions">'+negative+'</span></td>';
			  if(unAttempted !=0){
				  appenddata += '<td class ="text_unattempted" data-toggle="modal" data-target="#correctModal" onclick="getCorrectQns(this,5,)"><span data-toggle="toolti" title="Click To Check Your UnAttempted Questions">'+unAttempted+'</span></td>';
					 
			  }else{
				  appenddata += '<td class ="text_unattempted" ><span data-toggle="toolti" title="Click To Check Your UnAttempted Questions">'+unAttempted+'</span></td>';
					  
			  }
			 if(overtime !=0 ){
				 appenddata += '<td class ="text_negative_score" data-toggle="modal" data-target="#correctModal" onclick="getCorrectQns(this,6,)"><span data-toggle="toolti" title="Click To Check Your Overtime Questions">'+overtime+'</span></td>'; 
			 }else{
				 appenddata += '<td class ="text_negative_score" ><span data-toggle="toolti" title="Click To Check Your Overtime Questions">'+overtime+'</span></td>'; 
			 }
			 
			  appenddata += "<td>"+percentage+"%</td>";
			  
			  appenddata += "<td>"+accuracy+"%</td>";
			  appenddata += "<td>"+speed+" Qns./Hr</td></tr>";
			  
			  $("#std-summary-tablebody").append(appenddata);
			 // $('#std-summary-table').DataTable();
			  
			  
			/*var pgbarcent = (parseInt(marksObtained) / parseInt(totalMarks)) * 100;
			pgbarcent = parseFloat(Math.round(pgbarcent * 100) / 100).toFixed(2);*/
			$("#pgbar").html(percentage+"%");
			$("#pgbar").css("width",Math.round(percentage)+"%");
			
			for(var k=0;k<sujectwiseanalysis.length;k++){
				timespentappenddatahead += "<td class='text'><img src='"+sujectwiseanalysis[k].subjectIcon+"' alt='logo' class='imgstyle-2'> <span class='timespnt-subname'> "+sujectwiseanalysis[k].subjectName+"</span></td>";
  			 // appenddata += "<td>"+sujectwiseanalysis[k].subjectName+"</td>";
  			  
				
			}
			 $("#tablehead-timespent").empty();
			  $("#tablehead-timespent").append(timespentappenddatahead);
			 // $('#table-timespent').DataTable();
			  
			  for(var l=0;l<sujectwiseanalysis.length;l++){ 
				  timespentappenddatabody += "<td class = 'text'>"+sujectwiseanalysis[l].time+"</td>"
			  }
			  $("#timespent-tablebody").empty();
			  $("#timespent-tablebody").append(timespentappenddatabody);
			//  $('#table-timespent').DataTable();
			  
			  
			  
			  //create bar chart data
			 // var chart_Data = [];
			  var y = [];
			  var a = [];
			  var b = [];
			  var difficultyWise = data[0].studentDifficultyWisePerformances;
			  var diffiWiseLen = difficultyWise.length;
			  
			  var diffiTbody = "";
			  var color ={};
			  for(var bc =0;bc<diffiWiseLen;bc++){
				  
				 
				var  datajsony = difficultyWise[bc].level;
				var  datajsona= difficultyWise[bc].accuracy;
				var  datajsonb = difficultyWise[bc].percentage;
				  y.push(datajsony);
				  a.push(datajsona);
				  b.push(datajsonb);
				 
				  //jsonObj[data[i].id] = data[i].name;
				  if(bc == 0 ){
					 var colorcode = '#80ff00';
				  }else if(bc == 1){
					  var colorcode = '#5DADE2';
				  }else{
					  var colorcode = '#fb397d';
				  }
				  color[difficultyWise[bc].level] = colorcode;
				  
				/* color.push(color);
				 var obj = {};

				 obj[name] = val;

				 ary.push(obj);*/
				  diffiTbody += '<tr><td><div class="level'+(bc+1)+'">'+difficultyWise[bc].level+'</div></td>';
				  if(difficultyWise[bc].totalQuestions != 0){
					  diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" data-target="#correctModal" onclick="getCorrectQns(this,16,\''+difficultyWise[bc].level+'\')">'+difficultyWise[bc].totalQuestions+'</span></td>';
				  }else{
					  diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" >'+difficultyWise[bc].totalQuestions+'</span></td>';
				  }
				if(difficultyWise[bc].attmptedCount !=0){
					  diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" data-target="#correctModal" onclick="getCorrectQns(this,12,\''+difficultyWise[bc].level+'\')">'+difficultyWise[bc].attmptedCount+'</span></td>';
				}else{
					  diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" >'+difficultyWise[bc].attmptedCount+'</span></td>';
				}
if(difficultyWise[bc].unattemptedCount !=0){
	 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" data-target="#correctModal" onclick="getCorrectQns(this,15,\''+difficultyWise[bc].level+'\')">'+difficultyWise[bc].unattemptedCount+'</span></td>';
	 		
				}else{
					 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color">'+difficultyWise[bc].unattemptedCount+'</span></td>';
					 
				}
if(difficultyWise[bc].wrongCount != 0){
	 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" data-target="#correctModal" onclick="getCorrectQns(this,14,\''+difficultyWise[bc].level+'\')">'+difficultyWise[bc].wrongCount+'</span></td>';
		
}else{
	 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color"  >'+difficultyWise[bc].wrongCount+'</span></td>';
		
}
if(difficultyWise[bc].correctCount !=0){
	 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" data-target="#correctModal" onclick="getCorrectQns(this,13,\''+difficultyWise[bc].level+'\')">'+difficultyWise[bc].correctCount+'</span></td></tr>';
	 
}else{
	 diffiTbody += '<td><span data-toggle="modal" class="font-18  cursor-link level'+(bc+1)+'-color" >'+difficultyWise[bc].correctCount+'</span></td></tr>';
	 
}
				
				  
			  }
			  
			  
			  $("#diffiTbody").append(diffiTbody);
			/*  datajson["y"] */
			  
			/* formatY = function(y){
				  return y+'%';
			  },
			  Morris.Bar({
				  element: 'morris_bar_chart',
				  data: chart_Data,
				  xkey: 'y',
				  ykeys: ['a', 'b'],
				  yLabelFormat : formatY,
				  labels: ['Accuracy%', 'Percentage%'],
				 barColors: ["#FFB74D", "#81D4FA"],
				 barRadius: [20, 20, 0, 0],
				// gridTextColor:[]
				

				});*/
		/* const color = {
					Easy:'#80ff00',
				  Hard: '#5DADE2',
				  Medium: '#fb397d'
				}*/
			
			 
					var colors = ['#FFBD4A', '#44D9E6'];
					Highcharts.chart('highcharts', {
						 //data: chart_Data,
					    chart: {
					        type: 'column'
					    },
					    title: {
					        text: ''
					    },
					    exporting: { enabled: false },
					     plotOptions: {
					        pie: { //working here
					            colors: colors
					        },
					         column: {
					        	 pointWidth: 30,
					               borderRadius: 10,
					           
					           }
					    },
					    xAxis: {
					        categories: y,
					        labels: {
					      formatter () {
					      	return `<span style="color: ${color[this.value]}">${this.value}</span>`
					      }
					    }
					    
					    },
					    yAxis: {
					    	max: 100,
					    	labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
					},
					    credits: {
					        enabled: false
					    },
					    
					    colors:colors,
					    series: [{
					        name: 'Accuracy',
					        data:a
					       
					       
					    }, {
					        name: 'percentage',
					       data: b
					       
					       // data: ['b']
					    }]
					});
			  
			  
		},
		
		 error:function(data){

			 
				// alertify.confirm().setting('modal', false);
				  var loader = '<img style="margin-left: 0%;" src="/assets/images/students/spinner2.gif">';
				// alert(loader);
				
				alertify.alert(loader+'<br>Hey,!Evaluating your results please wait',function (e) {
							if (e) {
								//window.location =base_url + 'jsp/student/livezone/live_zone_active_full_mocks.jsp';
							
							} else {
								alertify.error("You've clicked Cancel");
							}
						});
						$('.alertify > nav' ).css("display","block");
						setTimeout(function(){ 
						getStudentAnalyticsSummary();
						}, 30000);
				// alert("Analytics not founds!");
		 }
	});
 }
 
 
//individual analytics  view questions correct ans popup
 var currType = "";
 function getViewQnsSubjects(testPostId,level){
 	 var testPostId = atob(getParameterByName('id'));
 	var appenddata = "";
 	$.ajax({
 		type:"GET",
 		url: base_url +'rest/testpost/v1/getsections/'+testPostId,
 		async:false,
 		datatype:"json",
 		contentType:'application/json',
 		success:function(data){
 			for(var i=0; i<data.length; i++ ){
 				if(i>0){
 					appenddata += '<li class="" data-subid="'+data[i].id+'" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#tab_'+(i+1)+'" data-id="'+(i+1)+'" data-subid="'+data[i].id+'" onclick="getCorrectQns2('+(i+1)+','+currType+',\''+level+'\')">'+data[i].name+'</a></li>';
 				} else{
 					subFirst = data[i].id;
 					appenddata += '<li class="active" data-subid="'+data[i].id+'" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#tab_'+(i+1)+'" data-id="'+(i+1)+'" data-subid="'+data[i].id+'" onclick="getCorrectQns2('+(i+1)+','+currType+',\''+level+'\')">'+data[i].name+'</a></li>';
 				}
 						
 			}
 			$("#subjectsTabs").empty();
 			$("#subjectsTabs").append(appenddata);	
 			
 		},
 		error:function(){
 			alert("Subjects not found");
 		}
 	});
 }
//individual analytics all popups function
 function getCorrectQns(tabId,type,level,subjectParam){
 	
 	var appendData = "";
 	currType = parseInt(type);
 	var LoginData = getLoginData();
 	var sId = LoginData.studentid;
 	
 	
 	 var testPostId = parseInt(atob(getParameterByName('id')));
 	 
 	 
 	 getViewQnsSubjects(testPostId,level);
 	 
 	
 	// var subFst = $("#subjectsTabs li:nth-child("+parseInt(tabId)+")").text();
 	 
 	 if(subjectParam !== undefined && subjectParam !== null && subjectParam !== ""){
 		 var subFst = subjectParam;
		 
 		 
 		 var eel = $('#subjectsTabs li a:contains('+subFst+')').parent();
		 
		 var subFstId = $(eel).data('subid');
		 
 		 $("#subjectsTabs li").removeClass("active");
 		 $(eel).addClass("active");
 	 } else{
 		 var subFst = $("#subjectsTabs li:first-child").text();
 		 var subFstId = $("#subjectsTabs li:first-child a").data('subid');
 	 }
 	

 	var url = "";
 	currType = parseInt(type);
 	
 	switch(currType){
 		case 3:
 			url = base_url +'rest/student/v1/getSummeryCorrectQuestions';
 			break;
 		case 4:
 			url = base_url +'rest/student/v1/getSummeryAttemptedQuestions';
 			break;
 		case 5:
 			url = base_url +'rest/student/v1/getSummeryUnAttemptedQuestions';
 			break;
 		case 6:
 			url = base_url +'rest/student/v1/getViewQuestionsOverTimeQuestions';
 			break;
 		case 7:
 			url =base_url +'rest/student/v1/getSubjectWiseScoredQuestions';
 		 break;
 		case 8:
 			url =base_url +'rest/student/v1/getSubjectWiseNegativeQuestions';
 		 break;
 		case 9:
 			url =base_url +'rest/student/v1/getSubjectWiseUnattemptedQuestions';
 		 break;
 		case 10:
 			url =base_url +'rest/student/v1/getSubjectWiseOverTimeQuestions';
 		 break;
 		case 11:
 			url =base_url +'rest/student/v1/getSummeryWrongQuestions';
 			break;
 		case 12:
 			url =base_url +'rest/student/v1/getDifficultyAttemptedQuestions';
 			break;
 		case 13:
 			url =base_url +'rest/student/v1/getDifficultyCorrectQuestions';
 			break;
 		case 14:
 			url =base_url +'rest/student/v1/getDifficultyWrongQuestions';
 			break;
 		case 15:
 			url =base_url +'rest/student/v1/getDifficultyUnAttemptedQuestions';
 			break;
 		case 16:
 			url =base_url +'rest/student/v1/getDifficultyTotalQuestions';
 			break;
 	}
 	
 	
 	var inputData = {
		"testPostId": testPostId,
		"studentId": sId,
	    "subjectId": subFstId
    }
 	
 	switch(currType){
	 	case 12:
	 	case 13:
	 	case 14:
	 	case 15:
	 	case 16:
	 		inputData = {
	 			"testPostId": testPostId,
	 			"studentId":sId,
	            "subjectId": subFstId,
	            "level":level
	 		}
	 		break;
 	}
 	
 	var appendData = '<div id="tab_1" class="tab-pane fade active in col-lg-12 col-md-12 col-sm-12" role="tabpanel"><div><div class="row mt-10">';
 	
 	var inputdata = JSON.stringify(inputData);
 	$.ajax({
 		// url: base_url+'rest/student/getSummeryCorrectQuestions',
 		url:url,
 		 type:"POST",
 	     dataType: "json",
 	     data: inputdata,
 	     contentType:'application/json', 
 	     beforeSend: function(){
 				$("#CorrectquestionsContent").empty();
 				
 				/*$("#CorrectquestionsContent").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
				$("#CorrectquestionsContent").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
 			},
 		 success: function(data){

 				for(var i=0;i<data.length;i++){
 				
 				var resolvedAnswer, resolvedSelected;
 				var answer,studentSelectedOption;
 				
 				
 				var passageType = data[i].passagequestions;
 				if(passageType !== null && passageType !== undefined){
 					
 					for(var op=0;op<passageType.length;op++){
 						var answer= passageType[op].correctAnswer;
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						studentSelectedOption = passageType[op].studentSelectedOption;
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 						
 						
 						// passage questions 
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
						  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
						  '<span>&nbsp; : &nbsp;</span></div>'+
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b" >'+data[i].question +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						  
						if(!passageType[op].unattempted){
							if(passageType[op].correctQuestion){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b" >'+passageType[op].question +
						  '</div></div></div>';
 						
 						
 						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
 						
 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
 						
 					}
 					
 	
 					
 				} else{
 					
 					var answer= data[i].correctAnswer;
 					studentSelectedOption = data[i].studentSelectedOption;
 					
 					
 					if(data[i].option1 === "" && data[i].option2 === ""){
 						// integer layout
 						resolvedAnswer = answer;
 					} else{
 						// not integer
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 					}
 					
 					appendData += '<div class="">'+
					  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
					  '<div class="row pd-5">'+
					  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
					  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data[i].questionSerialNumber+'</span></label>'+
					  '<span>&nbsp; : &nbsp;</span>';
 					
 						if(!data[i].unattempted){
 							if(data[i].correctQuestion){
 								//Correct Question, correct tick
 								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
 							} else{
 								//Wrong Question, Wrong tick
 								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
 							}
 							
 						} else{
 							//UnAttempted Question, /!\ tick
 							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
 						}
 					
 					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
					  '</div></div></div>';
 					
 					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
 					
 				}
 				}
 		 
 			appendData += "</div></div></div>";
			
			setTimeout(function() {
				$("#CorrectquestionsContent").empty();
				$("#CorrectquestionsContent").html(appendData);
				rendereelemntforkatext();
			}, 500);
			
 		},

 		error: function(){
			
 			setTimeout(function() {
 				var nextclick = 2;
 				 $('#subjectsTabs li:nth-child('+parseInt(nextclick)+') a').click();

 								$("#CorrectquestionsContent").empty();
 								$("#CorrectquestionsContent").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
 							}, 500);
 			 			
 			 			
 		}
 			
 	});
 }


 function getCorrectQns2(tabId,type,level){
 	
 	var subFstId = $("#subjectsTabs li:nth-child("+parseInt(tabId)+") a").data('subid');
 	var appendData = "";
 	
 	var LoginData = getLoginData();
 	var sId = LoginData.studentid;
 	
 	
 	 var testPostId = parseInt(atob(getParameterByName('id')));
 	 
 	
 	
 	var url = "";
 	currType = parseInt(type);
 	
 	switch(currType){
 		case 3:
 			url = base_url +'rest/student/v1/getSummeryCorrectQuestions';
 			break;
 		case 4:
 			url = base_url +'rest/student/v1/getSummeryAttemptedQuestions';
 			break;
 		case 5:
 			url = base_url +'rest/student/v1/getSummeryUnAttemptedQuestions';
 			break;
 		case 6:
 			url = base_url +'rest/student/v1/getViewQuestionsOverTimeQuestions';
 			break;
 		case 7:
 			url =base_url +'rest/student/v1/getSubjectWiseScoredQuestions';
 		 break;
 		case 8:
 			url =base_url +'rest/student/v1/getSubjectWiseNegativeQuestions';
 		 break;
 		case 9:
 			url =base_url +'rest/student/v1/getSubjectWiseUnattemptedQuestions';
 		 break;
 		case 10:
 			url =base_url +'rest/student/v1/getSubjectWiseOverTimeQuestions';
 		 break;
 		case 11:
 			url =base_url +'rest/student/v1/getSummeryWrongQuestions';
 			break;
 		case 12:
 			url =base_url +'rest/student/v1/getDifficultyAttemptedQuestions';
 			break;
 		case 13:
 			url =base_url +'rest/student/v1/getDifficultyCorrectQuestions';
 			break;
 		case 14:
 			url =base_url +'rest/student/v1/getDifficultyWrongQuestions';
 			break;
 		case 15:
 			url =base_url +'rest/student/v1/getDifficultyUnAttemptedQuestions';
 			break;
 		case 16:
 			url =base_url +'rest/student/v1/getDifficultyTotalQuestions';
 			break;
 	}
 	
 	
 	var inputData = {
 			 
 			"testPostId": testPostId,
 			"studentId":sId,
             "subjectId": subFstId
             
 		}
 	
 	switch(currType){
	 	case 12:
	 	case 13:
	 	case 14:
	 	case 15:
	 	case 16:
	 		inputData = {
	 			"testPostId": testPostId,
	 			"studentId":sId,
	            "subjectId": subFstId,
	            "level":level
	 		}
	 		break;
	}
 	
 	
 	var inputdata = JSON.stringify(inputData);
 	
 	var appendData = '<div id="tab_1" class="tab-pane fade active in col-lg-12 col-sm-12 col-md-12" role="tabpanel"><div><div class="row mt-10">';
 	$.ajax({
 		// url: base_url+'rest/student/getSummeryCorrectQuestions',
 		url:url,
 		 type:"POST",
 	     dataType: "json",
 	     data: inputdata,
 	     contentType:'application/json', 
 	     beforeSend: function(){
 				$("#CorrectquestionsContent").empty();
 			
 				/*$("#CorrectquestionsContent").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
				$("#CorrectquestionsContent").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
 			},
 		 success: function(data){

 				for(var i=0;i<data.length;i++){
 				
 				var resolvedAnswer, resolvedSelected;
 				var answer,studentSelectedOption;
 				
 				
 				var passageType = data[i].passagequestions;
 				if(passageType !== null && passageType !== undefined){
 					
 					for(var op=0;op<passageType.length;op++){
 						var answer= passageType[op].correctAnswer;
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						studentSelectedOption = passageType[op].studentSelectedOption;
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 						
 						
 						// passage questions 
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
						  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
						  '<span>&nbsp; : &nbsp;</span></div>'+
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						  
						if(!passageType[op].unattempted){
							if(passageType[op].correctQuestion){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+passageType[op].question +
						  '</div></div></div>';
 						
 						
 						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
 						
 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
 						
 					}
 					
 	
 					
 				} else{
 					
 					var answer= data[i].correctAnswer;
 					studentSelectedOption = data[i].studentSelectedOption;
 					
 					
 					if(data[i].option1 === "" && data[i].option2 === ""){
 						// integer layout
 						resolvedAnswer = answer;
 					} else{
 						// not integer
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 					}
 					
 					appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number" >'+data[i].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						
							if(!data[i].unattempted){
								if(data[i].correctQuestion){
									//Correct Question, correct tick
									appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
								} else{
									//Wrong Question, Wrong tick
									appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
								}
								
							} else{
								//UnAttempted Question, /!\ tick
								appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
							}
						
						appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
						  '</div></div></div>';
 					
 					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
 					
 				}
 				}
 		 
 			appendData += "</div></div></div>";
			setTimeout(function() {
				$("#CorrectquestionsContent").empty();
				$("#CorrectquestionsContent").html(appendData);
				rendereelemntforkatext();
			}, 500);
			
 		},

 		error: function(){
			
 			setTimeout(function() {
 				var nextclick = tabId+1;
 				 $('#subjectsTabs li:nth-child('+parseInt(nextclick)+') a').click();

 								$("#CorrectquestionsContent").empty();
 								$("#CorrectquestionsContent").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
 							}, 500);
 			
 		}
 			
 	});
 }

 $("#freeaccess_btn").attr("data-id","0_0");

 $("#freeaccess_div").click(function(){
 	getShowPaper("#freeaccess_btn");
 });
 $(document).ready(function(){
 	getstudentcommon();
 	 
   });

 
	// function for getting comparitive analytics

 function getStudentComparitiveAnalytics(){
 /*	var x = document.referrer;
 	 if(x.indexOf("student_analytics3.jsp")!== -1){
 		 var testPostId = parseInt(getParameterByName('id'));
 	 }
 	 else{
 		 var testPostId = parseInt(atob(getParameterByName('id')));
 	 }*/
     var qualifiedappenddata="";
 	 var testPostId = parseInt(atob(getParameterByName('id')));
 	 var LoginData = getLoginData();
 	 var studentid = LoginData.studentid;
 	 
 	 var inputData = {
 			  "testPostId":testPostId,
 			  "studentId":studentid
 			  }
 	inputData = JSON.stringify(inputData);
 	 var appenddata;
 	 var subjpercent = "";
 	 $.ajax({ 
 			url   :  base_url+'rest/student/v1/getcomparativeAnalytics',
 			type  : "POST",
 			dataType: "json",
 			contentType:'application/json',
 			data: inputData,
 			success: function(data){
 				if(data[0].issubscribed){
 					$("#blur").removeClass("mask");
 				}else{
 					$("#blur").addClass("mask");
 				}
 				/*if(true){
 					$("#blur").removeClass("mask");
 				}else{
 					$("#blur").addClass("mask");
 				}*/
 				$("#testname").html(data[0].testName);
 				$("#testtype").html(data[0].testType);
 				$("#testdate").html(data[0].testDate);
 				
 				$("#allindiarank").html(data[0].allIndiaRank);
 				$("#staterank").html(data[0].stateRank);
 				$("#cityrank").html(data[0].cityRank);
 				
 				$("#outofallindiarank").html(data[0].totalAllIndiaStudents);
 				$("#outofallstaterank").html(data[0].totalStateStudents);
 				$("#outofallcityrank").html(data[0].totalCityStudents);
 				
 				$("#cutoff").html(data[0].cutoffMarks);
 				$("#yourmarks").html(data[0].studentMarks);
 				$("#totalmarks").html(data[0].totalMarks);
 				$("#no-ofstdsqualified").html(data[0].numOfStudentsQualified);
 				
 				$("#yurmarks").html(data[0].studentMarks);
 				$("#totalms").html(data[0].totalMarks);
 				
 				$("#crctanswercount").html(data[0].correctAnsweredStudentsCount);
 				$("#notcrctanswercount").html(data[0].notCorrectAnsweredStudentsCount);
 				$("#unattemptedanswercount").html(data[0].unattemptedStudentsCount);
 				$("#comparitive-percentile").html(data[0].percentile);
 				$("#overallper").html(data[0].percentile);
 				
 				for(var i=0;i<data.length;i++){
 					  
 					  if(data[i].examStatus == "Qualified"){
 	    				  /*appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";*/
 						 /* appenddata +=	  "<span style='color: #09a275;'>"+data[i].examStatus+";
 	*/    	
 						  qualifiedappenddata += "<span class='pull-right bold font-16 text-success' style='color: #09a275;'> Qualified </span>";
 					  }
 	    			  else {
 	    				 /* appenddata += "<label><span style='color: #EB1FB0;'>"+data[i].examStatus+"</span></label>";*/
 	    				  qualifiedappenddata += "<span class='pull-right bold font-16 text-success' style='color: #EB1FB0 !important;'> Not Qualified </span>"
 	    			  }
 				}
 				  $("#qualified").empty();
 				  $("#qualified").append(qualifiedappenddata);
 				
 				
 				var allindiaslab=[];
 				
 				allindiaslab =data[0].slabPojos;
 				
 				for (var  i= 0;i<allindiaslab.length;i++){
 					
 					 appenddata += "<tr><td>"+allindiaslab[i].percentage+"</td>";
 	    			  appenddata += "<td>"+allindiaslab[i].noOfStudents+"</td>";
 	    			 // appenddata += "<td>"+allindiaslab[i].yourPosition+"</td>";
 	    			  
 	    			  if(allindiaslab[i].existed == false){
 	    				  /*appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";*/
 	    				  		appenddata += "<td> <span> -- </span> </td>";
 	    			  }
 	    			  else if(allindiaslab[i].existed == true){
 	    				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
 	    			  }
 			}
 				
 				var subjpercen = data[0].subjectWisePercentiles;
 				
 				for(var i = 0;i<subjpercen.length;i++){
 					
 					subjpercent += '<div class="col-sm-4"><img src='+subjpercen[i].subjectIcon+' width="35px" height="35px" style="border-radius:25px">&nbsp;&nbsp;<span style="font-size:16px;vertical-align:super;">'+subjpercen[i].subject+': <span id="subject" style="font-weight: bold">'+subjpercen[i].percentile+'</span></span></div>'
					     
 				}
 				
 				//var pgbarcent = (parseInt(data[0].studentMarks) / parseInt(data[0].totalMarks)) * 100;
 				//pgbarcent = parseFloat(Math.round(pgbarcent * 100) / 100).toFixed(2);
 				$("#pgbar").html(data[0].percentage+"%");
 				$("#pgbar").css("width",Math.round(data[0].percentage)+"%");
 				
 				 $("#all-india-table-body").empty();
 				  $("#all-india-table-body").append(appenddata);
 				 // $('#all-india-table').DataTable();
 				  
 				  
 				  $("#more-than-seventy").html(data[0].scoredMoreThanSeventy);
 				  $("#correctly-answered").html(data[0].correctMoreThanseveny);
 				  $("#notcorrectly").html(data[0].wrongMoreThanSeventy);
 				  $("#unattempted").html(data[0].unattemptedMoreThanSeventy);
 				  $("#subpercentile").html(subjpercent);
 				  
 				  $("#avg-score").html(data[0].avgScore);  
 				  $("#avg-negitive").html(data[0].avgNegativeScore); 
 				  $("#avg-accuracy").html(data[0].avgAccuracy+' %'); 
 				  $("#avg-percentage").html(data[0].avgPercentage+' %');
 				  $("#avg-speed").html(data[0].avgSpeed);
 			},
 			error:function(data){
 				//alert(data.responseJSON.errorMessage);
 			 $('#comppopup')[0].click();
 			$("#blur").addClass('thickbox-open');
 			
 		
 				 //$("#comparitivemodal").addClass('fade in');
 			    $("#popupcomparitveerror").empty();
 				$("#popupcomparitveerror").html(data.responseJSON.errorMessage);
 			}
 			
 					
 });
 }
 
 //function for number of students scored more popup in comparitive analytics
 


 function getScoredMore(){
 	 var testPostId = atob(getParameterByName('id'));
 	 var LoginData = getLoginData();
 	 var studentid = LoginData.studentid;
 	var  appenddata="";
 	$.ajax({
 		type: "GET",
 		  dataType: "json",
 		  contentType: 'application/json', 
 		  url: base_url+'rest/student/v1/getstudents/'+testPostId,
 		  success: function(data){
 			 
 			  for(var i=0; i < data.length; i++){
 				  /*appenddata += "<tr><td>"+data[i].studentImage+"</td>";*/
 				  if(data[i].studentImage == "" || data[i].studentImage == null ){
 					  appenddata += "<tr><td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
 					  }
 					  else{
 					  appenddata += "<tr><td > <img src="+data[i].studentImage+" width='50px' style='margin-top:7px;'></td>";
 					  }
 				  appenddata += "<td>"+data[i].name+"</td>";
 				  appenddata += "<td>"+data[i].studentFormatId+"</td>";
 				  appenddata += "<td>"+data[i].score+"</td>";
 				  appenddata += "<td>"+data[i].percentage+"</td>";
 				  appenddata += "<td>"+data[i].state+"</td>";
 				  appenddata += "<td>"+data[i].city+"</td></tr>";
 			  }
 			  $("#score_tbody").empty();
 			  $("#score_tbody").append(appenddata);
 		  },
 		  error: function(data) {		
 			
 			 // alert(data.responseJSON.errorMessage);
 			  $("#comparitvepopuptable").empty();
 			  $("#comparitvepopuptable").html('<h5 class="center">No Students get More Than 70% marks :(</h5>');
 		  }
 		  
 	});
 }

 
//comparitive 70% corner Not correct answer qns

function getSeventyCornerComprt(type){

	var appendData = "";
	var tid = atob(getParameterByName('id'));
	var LoginData = getLoginData();
	var sid = LoginData.studentid;
	var url;
	var $modalheading = $("#modalheading");
	var headingtxt;
	switch(type){
		case 'correct':
			headingtxt = 'Correctly Answered Questions';
			url = base_url+'rest/student/v1/getComparativeCorrectQuestions/'+tid +'/'+sid;
			break;
		case 'notcorrect':
			headingtxt = 'Not Correctly Answered Questions';	
			url = base_url+'rest/student/v1/getComparativeWrongQuestions/'+tid +'/'+sid;
			break;
		case 'unattempted':
			headingtxt = 'UnAttempted Answered Questions';
			url=base_url+'rest/student/v1/getComparativeUnattemptedQuestions/'+tid +'/'+sid;
			break;
	}
	
	$modalheading.html(headingtxt);
	
	$.ajax({
		 url:url,
		 type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  beforeSend: function(){
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		 success: function(data){
			 
			 for(var i=0;i<data.length;i++){
	 				
	 				var resolvedAnswer, resolvedSelected;
	 				var answer,studentSelectedOption;
	 				
	 				
	 				var passageType = data[i].passagequestions;
	 				if(passageType !== null && passageType !== undefined){
	 					
	 					for(var op=0;op<passageType.length;op++){
	 						var answer= passageType[op].correctAnswer;
	 						
	 						if(answer.indexOf(',')> -1){
	 							var checkAnswer = answer.split(',');
	 							
	 							resolvedAnswer = [];
	 							for(var s =0;s<checkAnswer.length;s++){
	 								resolvedAnswer.push(idResolver(checkAnswer[s]));
	 							}
	 							
	 						} else{
	 							var checkAnswer = answer;
	 							
	 							resolvedAnswer = idResolver(answer);
	 						}
	 						
	 						studentSelectedOption = passageType[op].studentSelectedOption;
	 						
	 					
	 						if(studentSelectedOption.indexOf(',')> -1){
	 							var checkStudentSelect = studentSelectedOption.split(',');
	 							
	 							resolvedSelected = [];
	 							for(var s =0;s<checkStudentSelect.length;s++){
	 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
	 							}
	 							
	 						} else{
	 							var checkStudentSelect = studentSelectedOption;
	 							
	 							resolvedSelected = idResolver(checkStudentSelect);
	 						}
	 						
	 						
	 						// passage questions 
							appendData += '<div class="">'+
							  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
							  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
							  '<span>&nbsp; : &nbsp;</span></div>'+
							  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
							  '</div></div></div>';
							
							appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
							  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
							  '<span>&nbsp; : &nbsp;</span>';
							  
							if(!passageType[op].unattempted){
								if(passageType[op].correctQuestion){
									//Correct Question, correct tick
									appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
								} else{
									//Wrong Question, Wrong tick
									appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
								}
								
							} else{
								//UnAttempted Question, /!\ tick
								appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
							}
							
							appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+passageType[op].question +
							  '</div></div></div>';
	 						
	 						
	 						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
	 						
	 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
	 						
	 					}
	 					
	 	
	 					
	 				} else{
	 					
	 					var answer= data[i].correctAnswer;
	 					studentSelectedOption = data[i].studentSelectedOption;
	 					
	 					
	 					if(data[i].option1 === "" && data[i].option2 === ""){
	 						// integer layout
	 						resolvedAnswer = answer;
	 					} else{
	 						// not integer
	 						
	 						if(answer.indexOf(',')> -1){
	 							var checkAnswer = answer.split(',');
	 							
	 							resolvedAnswer = [];
	 							for(var s =0;s<checkAnswer.length;s++){
	 								resolvedAnswer.push(idResolver(checkAnswer[s]));
	 							}
	 							
	 						} else{
	 							var checkAnswer = answer;
	 							
	 							resolvedAnswer = idResolver(answer);
	 						}
	 						
	 						
	 						
	 					
	 						if(studentSelectedOption.indexOf(',')> -1){
	 							var checkStudentSelect = studentSelectedOption.split(',');
	 							
	 							resolvedSelected = [];
	 							for(var s =0;s<checkStudentSelect.length;s++){
	 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
	 							}
	 							
	 						} else{
	 							var checkStudentSelect = studentSelectedOption;
	 							
	 							resolvedSelected = idResolver(checkStudentSelect);
	 						}
	 					}
	 					
	 					appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data[i].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
	 					
	 						if(!data[i].unattempted){
	 							if(data[i].correctQuestion){
	 								//Correct Question, correct tick
	 								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
	 							} else{
	 								//Wrong Question, Wrong tick
	 								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
	 							}
	 							
	 						} else{
	 							//UnAttempted Question, /!\ tick
	 							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
	 						}
	 					
	 					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
						  '</div></div></div>';
	 					
	 					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
	 					
	 				}
	 				}
	 		 
	 			appendData += "</div></div></div>";
		  
		  
		  setTimeout(function() {
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").append(appendData);
			rendereelemntforkatext();
		  }, 500);
		 
	  },
	  error:function(data){
		 // alert("Not Corrected Questions not found in 70 Percentage  Marks");
		 
		 setTimeout(function() {
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").html('<h5 class="center">'+headingtxt+' not found:(</h5>');
		  }, 500);

	  }
	}); 
}

//attempted showpaper for getting subjects
var showpaperdata ="";

function attemptedshowpaperques(elem){
	
	//var testPostId = $("#showpaper").attr('data-id');
	var Id = $(elem).data("id");
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	//var subfirst =("#questionsContents li:first-child ").text(); 
	var inputData ={
			/*"testPostId":parseInt(atob(getParameterByName('id'))),*/
			"testPostId":parseInt(Id),
			"studentId":sId
			
	};
	inputData = JSON.stringify(inputData);
	var appenddata ="";
	$.ajax({
		type:"POST",
		  dataType: "json",
		  contentType:'application/json', 
		  data:inputData,
		url: base_url +'rest/student/v1/getShowPaperQuestions',
		beforeSend: function(){
			$("#questionsContents").empty();
			/*$("#questionsContents").html('<h5 class="center">Getting Questions...</h5>');*/
			/*$("#questionsContents").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
			$("#questionsContents").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		success:function(data){
			showpaperdata = data;
			//getpaperSubjects(showpaperdata);
			for(var i=0; i < showpaperdata.subjectslist.length; i++ ){
				
			 for(var k=0; k < showpaperdata.subjectslist[i].sectionlist.length; k++) {
				 
				 if(showpaperdata.subjectslist[i].sectionlist[k].section !=""){
					 if(i>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						} else{
							subFirst = showpaperdata.subjectslist[i].sectionlist[k].section;
							appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'"  onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						}
				
				  }else{
					 if(i>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 } else{
						subFirst = showpaperdata.subjectslist[i].subject;
						appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 }
				}
			 }
			 
			}
			
			
			
		
		 setTimeout(function() {
				$("#shopepertabs").empty();
				$("#shopepertabs").append(appenddata);
				$('#shopepertabs li:first-child a').click();	
			}, 500);
		 
	
		},
		error:function(){
			setTimeout(function() {
				$("#questionsContents").empty();
				$("#questionsContents").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');	
			}, 500);
			
		}
	});
	
}


//analytics showpaper for getting subjects
var showpaperdata ="";

function showpaperques(){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			"testPostId":parseInt(atob(getParameterByName('id'))),
			"studentId":sId
			
	};
	inputData = JSON.stringify(inputData);
	var appenddata ="";
	$.ajax({
		type:"POST",
		  dataType: "json",
		  contentType:'application/json', 
		  data:inputData,
		  url: base_url +'rest/student/v1/getShowPaperQuestions',
		  beforeSend: function(){
			$("#questionsContents").empty();
			/*$("#questionsContents").html('<h5 class="center">Getting Questions...</h5>');*/
			/*$("#questionsContents").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
			$("#questionsContents").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		  success:function(data){
			showpaperdata = data;
			//getpaperSubjects(showpaperdata);
			for(var i=0; i < showpaperdata.subjectslist.length; i++ ){
				
			 for(var k=0; k < showpaperdata.subjectslist[i].sectionlist.length; k++) {
				 
				 if(showpaperdata.subjectslist[i].sectionlist[k].section !=""){
					 if(k>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						} else{
							subFirst = showpaperdata.subjectslist[i].sectionlist[k].section;
							appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'"  onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						}
				
				  }else{
					 if(k>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 } else{
						subFirst = showpaperdata.subjectslist[i].subject;
						appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 }
				}
			 }
			 
			}
			
			
			setTimeout(function() {
				$("#shopepertabs").empty();
				$("#shopepertabs").append(appenddata);	
				
			}, 500);
		 
		 
		// $( "#shopepertabs" ).tabs({ active: 0 });
		
		},
		error:function(){
			
			setTimeout(function() {
				$("#questionsContents").empty();
				$("#questionsContents").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');	
			}, 500);
			
			//alert("Subjects not found");
		}
	});
	
}

function getShowPaper(elem){
	
	
	$('#shopepertabs li').removeClass('active');
	$('#shopepertabs li:first-child').addClass('active');
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	
	 var testPostId = parseInt(atob(getParameterByName('id')));
	 var appendqqq="";
		 
	 var subject = $(elem).attr('data-id');
		var res = subject.split("_");
		var subjectno= parseInt(res[0]);
	var	sectionno = parseInt(res[1]);
	if(sectionno !="" ){
		var questions =  showpaperdata.subjectslist[subjectno].sectionlist[sectionno].questionlist;
	}else{
		var questions =  showpaperdata.subjectslist[subjectno].sectionlist[0].questionlist;
	}
	

for(var j=0; j < questions.length; j++){ 
	if(questions[j].type =="Multi correct" || questions[j].type =="Single correct"){
		
		
		 appendqqq += '<div class="">'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
		  '<div class="row pd-5">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
		  '<label class="control-label" for="example-email">Q.<span class="view_questions_question_number">'+questions[j].questionserialId+'</span></label>'+
		 '<span>&nbsp; : &nbsp;</span>';
		 
		   if(!questions[j].unattempted){
				if(questions[j].correctQuestion){
					//Correct Question, correct tick
					appendqqq += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
				} else{
					//Wrong Question, Wrong tick
					appendqqq += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
				}
					
			} else{
				//UnAttempted Question, /!\ tick
				appendqqq += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
			}
		   
		   appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+questions[j].title +
		  '</div></div></div>';
		 
		    var options = questions[j].optionlist;
			var answerrsult =  questions[j].answer;
			var studentanswer =  questions[j].studentAnswer;
			
			 for(var l=0; l < options.length; l++){ 
				 
				 if(questions[j].unattempted){
					 
					 //UnAttempted
					 
					 if(answerrsult.indexOf(',') > -1){
						 //multi correct
						 if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						 } else{
							
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
							  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
							  '</div></div></div>';
						 }
						 
					 } else{
						//single correct
						 
						 if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						 } else{
								
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
							  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
							  '</div></div></div>';
						}
						 
					 }
					 
				 } else {
					 
					 //Attempted 
					 
					 if(answerrsult.indexOf(',') > -1){
						 //multi correct
						 
						 if(answerrsult.indexOf(options[l].optionId) > -1 && studentanswer.indexOf(options[l].optionId) > -1){
								//your answer is correct
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer.indexOf(options[l].optionId) > -1){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 } else{
						 //single correct
						 
						 if(studentanswer === options[l].optionId && answerrsult === options[l].optionId){
							//your answer is correct
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop">'+
							  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
							  '</div></div></div>';
								
						 } else if(answerrsult === options[l].optionId){
							//correct answer
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
							  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
							  '</div></div></div>';
						 } else if(studentanswer === options[l].optionId){
							//wrong answer
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop">'+
							  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
							  '</div></div></div>';
						 }else{
								
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
							  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
							  '</div></div></div>';
						}
					 }
				 }

			 }
			 
			 //Displays key and solution
			 appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row pd-td-20">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
			  '</div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+questions[j].answer+'</span>'+
			  '</div></div></div>'+
			  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row pd-td-20">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
			  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap">'+ questions[j].solution+
			  '</div></div></div></div>';
			 
			 //Total students count for attempted and correctly answerred
			 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
			               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
			               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
			 
			 if(questions[j].overtime){
				 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
			 } else{
				 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
			 }
			                
			 appendqqq += '</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
			 
			  /*appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div></div></div></div>';*/
			 
	}else if(questions[j].type =="Integer"){
		//Integer Layout 
		
		var answerrsult =  questions[j].roundedAnswer;
		var studentanswer =  questions[j].roundedStudentSelectedOption;
		 appendqqq += '<div class="">'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
		  '<div class="row pd-5">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
		  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+questions[j].questionserialId+'</span></label>'+
		  '<span>&nbsp; : &nbsp;</span>';
		  
		   if(!questions[j].unattempted){
				if(questions[j].correctQuestion){
					//Correct Question, correct tick
					appendqqq += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
				} else{
					//Wrong Question, Wrong tick
					appendqqq += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
				}
					
			} else{
				//UnAttempted Question, /!\ tick
				appendqqq += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
			}
		   
		  appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+questions[j].title+
		  '</div></div></div>';
		 
		 if(studentanswer === answerrsult && studentanswer !== "" && studentanswer !== 0){
			 appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
			  '</div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="green bold keyStyle">  '+studentanswer+' <i class="fa fa-check fa-lg green"></i> (Correct Answer)</span>'+
			  '</div></div></div>';
		  } else if(studentanswer !== "" && studentanswer !== 0){
			  appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="red bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
			  '</div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="red bold keyStyle"> '+studentanswer+' <i class="fa fa-close fa-lg red"></i> (Wrong Answer)</span>'+
			  '</div></div></div>'
		  } else{
			  appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
			  '</div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="bold keyStyle"> </span>'+
			  '</div></div></div>';
		  }
		 
	 	/*appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class="row pd-5">'+
		  '<div class="col-lg-2 col-md-2 col-sm-3 col-xs-11"><label class="control-label" for="example-email">Key </label>'+
		  '</div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>'+
		  '<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12"><span class="green bold">'+answerrsult+'</span>'+
		  '</div></div></div>';*/
	 	
	 	//Displays key and solution
		 appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap"><span class="green bold keyStyle">'+questions[j].answer+'</span>'+
		  '</div></div></div>'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
		  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
		 }
		                
		 appendqqq += '</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
	 	
		/*appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div></div></div></div>';*/
		  
	} else if(questions[j].type =="Matrix"){
		//Matrix Layout
		
		appendqqq += '<div class="">'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
		  '<div class="row pd-5">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
		  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+questions[j].questionserialId+'</span></label>'+
		  '<span>&nbsp; : &nbsp;</span>';
		  
		   if(!questions[j].unattempted){
				if(questions[j].correctQuestion){
					//Correct Question, correct tick
					appendqqq += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
				} else{
					//Wrong Question, Wrong tick
					appendqqq += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
				}
					
			} else{
				//UnAttempted Question, /!\ tick
				appendqqq += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
			}
		 appendqqq +=  '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+questions[j].title+
		  '</div></div></div>';
		
		var answerrsult =  questions[j].answer;
		var studentanswer =  questions[j].studentAnswer;
		
		
		var studentSelected = studentanswer;
		var studentSplit = studentSelected.split('|');
		
		var correctAnswer_d = answerrsult;
		var correctAnswerSplit = correctAnswer_d.split('|');
		
		var optVal = ["P","Q","R","S","T"];
		
		for(var jk=1;jk<=4;jk++){
			
			appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
			  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop"><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>';
				
			  var sas = correctAnswerSplit[jk-1].split(',');
			  var sss;
			  
			  if(questions[j].unattempted){
				  //UnAttempted
				  for(var h=0;h<optVal.length;h++){
					  if(correctAnswerSplit[jk-1].indexOf(optVal[h]) > -1){
						  appendqqq += '<span class="ocorrect bold">'+optVal[h]+' </span>';
					  } else{
						  appendqqq += '<span class="bold">'+optVal[h]+' </span>';
					  }
				  }
			  } else{
				 //Attempted
				  if(studentSplit[jk-1] !== ""){
					  
					sss = studentSplit[jk-1].split(',');
		
					for(var h=0;h<optVal.length;h++){
						
					  if(correctAnswerSplit[jk-1].indexOf(optVal[h]) > -1 && studentSplit[jk-1].indexOf(optVal[h]) > -1){
						  appendqqq += '<span class="green bold">'+optVal[h]+' </span>';
					  } else if(correctAnswerSplit[jk-1].indexOf(optVal[h]) > -1 && studentSplit[jk-1].indexOf(optVal[h]) === -1){
						  appendqqq += '<span class="ocorrect bold">'+optVal[h]+' </span>';
					  } else if(correctAnswerSplit[jk-1].indexOf(optVal[h]) > -1){
						  appendqqq += '<span class="ocorrect bold">'+optVal[h]+' </span>';
					  } else if(studentSplit[jk-1].indexOf(optVal[h]) > -1){
						  appendqqq += '<span class="red bold">'+optVal[h]+' </span>';
					  } else{
						  appendqqq += '<span class="bold">'+optVal[h]+' </span>';
					  }
					  
					}
			
				  } else{
					  
					for(var h=0;h<optVal.length;h++){
					  if(correctAnswerSplit[jk-1].indexOf(optVal[h]) > -1){
						  appendqqq += '<span class="ocorrect bold">'+optVal[h]+' </span>';
					  } else{
						  appendqqq += '<span class="bold">'+optVal[h]+' </span>';
					  }
					}
						
				  }
		
				  appendqqq += '</span>(Your Answer - '+studentSplit[jk-1]+')';	
			  }
			  
			  appendqqq += '</div></div></div>';
		}
		
		//Displays key and solution
		 appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+questions[j].answer+'</span>'+
		  '</div></div></div>'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
		  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
		 }
		                
		 appendqqq += '</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
		
	} else{
		//Passage Questions
		
       if(j > 0){

		if(questions[j].questionId != questions[j-1].questionId){
			appendqqq += '<div class="">'+
			  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
			  '<div class="row pd-5">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
			  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
			  '<span>&nbsp; : &nbsp;</span></div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">'+questions[j].passage+
			  '</div></div></div>';
			  
		}
		
       } else{
			appendqqq += '<div class="">'+
			  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
			  '<div class="row pd-5">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
			  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
			  '<span>&nbsp; : &nbsp;</span></div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+questions[j].passage+
			  '</div></div></div>';
		
       }

         appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
		  '<div class="row pd-5">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
		  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+questions[j].questionserialId+'</span></label>'+
		  '<span>&nbsp; : &nbsp;</span>';
		  
           if(!questions[j].unattempted){
				if(questions[j].correctQuestion){
					//Correct Question, correct tick
					appendqqq += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
				} else{
					//Wrong Question, Wrong tick
					appendqqq += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
				}
					
			} else{
				//UnAttempted Question, /!\ tick
				appendqqq += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
			}
           
		  appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+questions[j].title+
		  '</div></div></div>';
               
		 var options = questions[j].optionlist;
		 var answerrsult =  questions[j].answer;
			var studentanswer =  questions[j].studentAnswer;
			 for(var l=0; l < options.length; l++){ 
				 
				 if(questions[j].unattempted){
					 //UnAttempted
					 
					 if(answerrsult.indexOf(',') > -1){
						 //multi correct
						 if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 }else{
						 //single correct
						 
						 if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						  } else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
					      }
						 
					 }
				 } else{
					 //Attempted
					 if(answerrsult.indexOf(',') > -1){
						 //multi correct
						 
						 if(answerrsult.indexOf(options[l].optionId) > -1 && studentanswer.indexOf(options[l].optionId) > -1){
								//your answer is correct
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer.indexOf(options[l].optionId) > -1){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 } else{
						 //single correct
						 
						 if(studentanswer === options[l].optionId && answerrsult === options[l].optionId){
								//your answer is correct
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer === options[l].optionId){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>' +options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 }
				 }
				 
				 
			 
			 
		 }
			 
		 //Displays key and solution
		 appendqqq +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+questions[j].answer+'</span>'+
		  '</div></div></div>'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
		  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
		 }
		                
		 appendqqq += '</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
		 
		 /*appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div></div></div></div>';*/
		 
		 
	}
}



		$("#questionsContents").empty();
		$("#questionsContents").append(appendqqq);
	
		rendereelemntforkatext();
		

		
}

function getcheptewise_list(test,sub){
	
	var mainchapters = "";
		var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			"testPostId":parseInt(atob(getParameterByName('id'))),
			"studentId":sId,
			"subjectId":sub
			
	};
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getChapterWiseBySubjects',
			type:"POST",
			async:false,
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				
			if(data.length > 0){
				for(var k=0; k < data.length; k++){
				   mainchapters+='<tr class="">'+
									'<td><img src='+data[k].chapterImage+' width="35px" height="35px" style="border-radius:25px">&nbsp;&nbsp;<span style="vertical-align:super">'+data[k].chapterName+'</span> </td>'+
								    '<td style="cursor: pointer;color: #22B14C;" data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(1,'+data[k].chapterId+')">'+data[k].scoreMarks+'<br> ('+data[k].scoredQuestions+'/'+data[k].totalQuestions+')</td>'+
									'<td style="cursor: pointer;color: #EB1FB0;" data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(2,'+data[k].chapterId+')">'+data[k].negativeMarks+'<br>('+data[k].negativeQuestions+')</td>'+
									'<td style="cursor: pointer;color: #3F48CC;;"data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(3,'+data[k].chapterId+')">'+data[k].unAttemptedQuestions+'</td>'+
									'<td style="cursor: pointer;color: #EB1FB0;;"data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(4,'+data[k].chapterId+')">'+data[k].overTimeQuestions+'</td>'+
									'</tr>';
			  }
			  $("#chapterwisetable").empty();
			  $("#chapterwisetable").append(mainchapters);
				
			}
			  
			},
			error:function(data){
				alert(data.errorMessage);
			}
		})
	
}

function getchapterwisesummery(){
	var bestappend ="";
	var weekappend ="";
	var mainchapters = "";
		var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			"testPostId":parseInt(atob(getParameterByName('id'))),
			"studentId":sId
			
	};
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getChapterWiseAnalyticsSummery',
			type:"POST",
			async:false,
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				var best_chapters = data[0].bestChapters;
				var weak_chapters = data[0].weakChapters;
				if( best_chapters != null && best_chapters !="" && best_chapters != undefined){
					for(var i=0; i < best_chapters.length; i++){
				bestappend +=	'<p class="text-center">'+best_chapters[i].chapterName+'</p>';
				}
				}else{
					bestappend += '<p class="text-center">No Chapters Found</p>';
				}
				if(weak_chapters != null && weak_chapters != 0 &&  weak_chapters != undefined){
				for(var j=0; j < weak_chapters.length; j++){
					weekappend +='<p class="text-center">'+weak_chapters[j].chapterName+'</p>';
				}
				}else{
					weekappend += '<p class="text-center">No Chapters Found</p>';
				}
				 $("#best3").empty();
				  $("#week3").empty();
			 $("#best3").append(bestappend);
			  $("#week3").append(weekappend);
			  getSubQuestion('chapter');
			 /* var ttlchapters = data[0].chapters;
			  for(var k=0; k < ttlchapters.length; k++){
				   mainchapters+='<tr class="center">'+
									'<td>'+ttlchapters[k].chapterName+' </td>'+
								    '<td style="cursor: pointer;color: #22B14C;" data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(1,'+ttlchapters[k].chapterId+')">'+ttlchapters[k].scoreMarks+'<br> ('+ttlchapters[k].scoredQuestions+'/'+ttlchapters[k].totalQuestions+')</td>'+
									'<td style="cursor: pointer;color: #EB1FB0;" data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(2,'+ttlchapters[k].chapterId+')">'+ttlchapters[k].negativeMarks+'<br>('+ttlchapters[k].negativeQuestions+')</td>'+
									'<td style="cursor: pointer;color: #3F48CC;;"data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(3,'+ttlchapters[k].chapterId+')">'+ttlchapters[k].unAttemptedQuestions+'</td>'+
									'<td style="cursor: pointer;color: #EB1FB0;;"data-toggle="modal" data-target="#correctModal" onclick="getchapterwisepopup(4,'+ttlchapters[k].chapterId+')">'+ttlchapters[k].overTimeQuestions+'</td>'+
									'</tr>';
			  }
			  $("#chapterwisetable").empty();
			  $("#chapterwisetable").append(mainchapters);*/
			},
			error:function(data){
				alert(data.errorMessage);
			}
		})
}
 function getchapterwisepopup(type,chapterid){
	 var appendData = "";
 	currType = parseInt(type);
 	var LoginData = getLoginData();
 	var sId = LoginData.studentid;
 	
 	
 	 var testPostId = parseInt(atob(getParameterByName('id')));
 	 

 	var url = "";
 	currType = parseInt(type);
 	
 	switch(currType){
 		case 1:
 			url = base_url +'rest/student/getChapterWiseScored';
 			break;
 		case 2:
 			url = base_url +'rest/student/getChapterWiseNegativeQuestions';
 			break;
 		case 3:
 			url = base_url +'rest/student/getChapterWiseUnattemptedQuestions';
 			break;
 		case 4:
 			url = base_url +'rest/student/getChapterWiseOverTimeQuestions';
 			break;
 		}
 	
 	
 	var inputData = {
		"studentId":sId,
	"testPostId":testPostId,
	"chapterId":chapterid
    }
 	var appendData = '<div id="tab_1" class="tab-pane fade active in col-lg-12 col-md-12 col-sm-12" role="tabpanel"><div><div class="row mt-10">';
 	
 	var inputdata = JSON.stringify(inputData);
 	$.ajax({
 		// url: base_url+'rest/student/getSummeryCorrectQuestions',
 		url:url,
 		 type:"POST",
 	     dataType: "json",
 	     data: inputdata,
 	     contentType:'application/json', 
 	     beforeSend: function(){
			 $("#subjectsTabs").empty();
 				$("#CorrectquestionsContent").empty();
 				
 				/*$("#CorrectquestionsContent").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
				$("#CorrectquestionsContent").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
 			},
 		 success: function(data){

 				for(var i=0;i<data.length;i++){
 				
 				var resolvedAnswer, resolvedSelected;
 				var answer,studentSelectedOption;
 				
 				
 				var passageType = data[i].passagequestions;
 				if(passageType !== null && passageType !== undefined){
 					
 					for(var op=0;op<passageType.length;op++){
 						var answer= passageType[op].correctAnswer;
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						studentSelectedOption = passageType[op].studentSelectedOption;
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 						
 						
 						// passage questions 
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
						  '<label class="control-label" for="example-email"><strong>Passage : </strong></label>'+
						  '</div>'+
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						  
						if(!passageType[op].unattempted){
							if(passageType[op].correctQuestion){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+passageType[op].question +
						  '</div></div></div>';
 						
 						
 						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
 						
 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
 						
 					}
 					
 	
 					
 				} else{
 					
 					var answer= data[i].correctAnswer;
 					studentSelectedOption = data[i].studentSelectedOption;
 					
 					
 					if(data[i].option1 === "" && data[i].option2 === ""){
 						// integer layout
 						resolvedAnswer = answer;
 					} else{
 						// not integer
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 					}
 					
 					appendData += '<div class="">'+
					  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
					  '<div class="row pd-5">'+
					  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
					  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data[i].questionSerialNumber+'</span></label>'+
					  '<span>&nbsp; : &nbsp;</span>';
 					
 						if(!data[i].unattempted){
 							if(data[i].correctQuestion){
 								//Correct Question, correct tick
 								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
 							} else{
 								//Wrong Question, Wrong tick
 								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
 							}
 							
 						} else{
 							//UnAttempted Question, /!\ tick
 							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
 						}
 					
 					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
					  '</div></div></div>';
 					
 					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
 					
 				}
 				}
 		 
 			appendData += "</div></div></div>";
			
			setTimeout(function() {
				$("#CorrectquestionsContent").empty();
				$("#CorrectquestionsContent").html(appendData);
				rendereelemntforkatext();
			}, 500);
		
 		},

 		error: function(){
			
			setTimeout(function() {
				$("#CorrectquestionsContent").empty();
				$("#CorrectquestionsContent").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
			}, 500);

 		}
 			
 	});
	 
 }
 function getSubQuestion(types){
 	 var testPostId = atob(getParameterByName('id'));
 	var appenddata = "";
 	$.ajax({
 		type:"GET",
 		url: base_url +'rest/testpost/v1/getsections/'+testPostId,
 		async:false,
 		datatype:"json",
 		contentType:'application/json',
 		success:function(data){
			if(types == "comp"){
			appenddata += '<li role="presentation" class="active"><a href="#" aria-controls="home" onclick="getquestionwise('+testPostId+',-1)" role="tab" data-toggle="tab">All</a></li>';
 			for(var i=0; i<data.length; i++ ){
 				appenddata += '<li role="presentation" class=""><a href="#" onclick="getquestionwise('+testPostId+',\''+data[i].id+'\')" aria-controls="home" role="tab" data-toggle="tab">'+data[i].name+'</a></li>';
 					
 			}
			
				$("#questionwisesub").empty();
 			$("#questionwisesub").append(appenddata);	
				 $('#questionwisesub li:first-child a').click();
			}else if(types == "chapter"){
				appenddata += '<li role="presentation" class="active"><a href="#" aria-controls="home" onclick="getcheptewise_list('+testPostId+',-1)" role="tab" data-toggle="tab">All</a></li>';
 			for(var i=0; i<data.length; i++ ){
 				appenddata += '<li role="presentation" class=""><a href="#" onclick="getcheptewise_list('+testPostId+',\''+data[i].id+'\')" aria-controls="home" role="tab" data-toggle="tab">'+data[i].name+'</a></li>';
 					
 			}
				$("#chapterwise_subj").empty();
				$("#chapterwise_subj").append(appenddata);	
			 $('#chapterwise_subj li:first-child a').click();
			}
 			
			
 			
 		},
 		error:function(){
 			alert("Subjects not found");
 		}
 	});
 }
 var ques_viewdata={};
 function getquestionwise(testid,subid){
	 var appenddata ="";
	  var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		var inputData ={
				"studentId": studentid,
"subjectId": subid,
"testPostId": testid
       
			}
			
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getQuestionWiseSummery',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				 ques_viewdata = data;
				 for(var i=0; i < data.length; i++){
					 
					 appenddata += '<tr class="center"><td >'+data[i].serialNumber+'</td><td>'+data[i].questionType+'</td><td>'+data[i].difficultyType+'</td>';
					 var qview = data[i].questionView;
					 if(qview.correct == true){
						  appenddata +='<td style="color:#00BA85;">Correct</td>';
						  appenddata += '<td style="font-weight:bold;">'+data[i].numberOfStudentsCorrectlyAnswered+'</td>';
					 }else if(qview.correct == false && qview.unAttempted == true){
						 appenddata +='<td style="color:#3F48CC;">UnAttempted</td>';
						 appenddata += '<td style="font-weight:bold;">'+data[i].numberOfStudentsCorrectlyAnswered+'</td>';
					 }else{
						 appenddata +='<td style="color:#FF0000;">Wrong</td>';
						 appenddata += '<td style="font-weight:bold;">'+data[i].numberOfStudentsCorrectlyAnswered+'</td>';
					 }
					 
						 appenddata +=	'<td><i class="fa fa-eye fa-2x" style="color: lightskyblue;" data-toggle="modal" data-target="#not-correct-answer-qns" onclick="getquestioncomparitive('+i+')"></i></td></tr>';
					 
				 }
				
				 $("#questionwise_table").empty();
			 $("#questionwise_table").append(appenddata);
			},
			error:function(data){
				alert(data.errorMessage);
			}
		})
	 
 }
 function getquestioncomparitive(questionserial){
	 var appendData = "";
	var data = ques_viewdata[questionserial].questionView;
 				 
 			var resolvedAnswer, resolvedSelected;
 				var answer,studentSelectedOption;
 				
 				
 				
 				if(data.passagequestion == true && data.passagequestion !== false){
 					
 				
 						var answer= data.correctAnswer;
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						studentSelectedOption = data.studentAnswer;
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 						
 						
 						// passage questions 
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
						  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
						  '<span>&nbsp; : &nbsp;</span></div>'+
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data.passage +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data.questionSerialId+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						  
						if(!data.unAttempted){
							if(data.correct){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data.question +
						  '</div></div></div>';
 						
 						
 						appendData += compoptionappend(data,resolvedAnswer,answer,resolvedSelected);
 						
 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
 						
 					
 					
 	
 					
 				} else{
 					
 					var answer= data.correctAnswer;
 					studentSelectedOption = data.studentAnswer;
 					
 					
 					if(data.option1 === "" && data.option2 === ""){
 						// integer layout
 						resolvedAnswer = answer;
 					} else{
 						// not integer
 						
 						if(answer.indexOf(',')> -1){
 							var checkAnswer = answer.split(',');
 							
 							resolvedAnswer = [];
 							for(var s =0;s<checkAnswer.length;s++){
 								resolvedAnswer.push(idResolver(checkAnswer[s]));
 							}
 							
 						} else{
 							var checkAnswer = answer;
 							
 							resolvedAnswer = idResolver(answer);
 						}
 						
 						
 						
 					
 						if(studentSelectedOption.indexOf(',')> -1){
 							var checkStudentSelect = studentSelectedOption.split(',');
 							
 							resolvedSelected = [];
 							for(var s =0;s<checkStudentSelect.length;s++){
 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
 							}
 							
 						} else{
 							var checkStudentSelect = studentSelectedOption;
 							
 							resolvedSelected = idResolver(checkStudentSelect);
 						}
 					}
 					
 					appendData += '<div class="">'+
					  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
					  '<div class="row pd-5">'+
					  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
					  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data.questionSerialId+'</span></label>'+
					  '<span>&nbsp; : &nbsp;</span>';
 					
 						if(!data.unAttempted){
 							if(data.correct){
 								//Correct Question, correct tick
 								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
 							} else{
 								//Wrong Question, Wrong tick
 								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
 							}
 							
 						} else{
 							//UnAttempted Question, /!\ tick
 							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
 						}
 					
 					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data.question +
					  '</div></div></div>';
 					
 					appendData += compoptionappend(data,resolvedAnswer,answer,resolvedSelected);
 					
 				}
 				
 		 
 			appendData += "</div></div></div>";
 			$("#modalheading").empty();
			setTimeout(function() {
				$("#popupnotcorrectanswerqns").empty();
				$("#popupnotcorrectanswerqns").html(appendData);
				
				rendereelemntforkatext();
			}, 500);
 			
			
 }
 function compoptionappend(iData,resolvedAnswer,answer,resolvedSelected)
 {
	 var appendData = "";
	 if(!iData.correct){
		 var answerText = "Correct Answer";
	 }else{
		 var answerText = "Your Answer and Correct Answer";
	 }
	

	
	if(iData.option1 === "" && iData.option2 === ""){
	  //integer layout
		
	  if(iData.correctAnswer === iData.studentAnswer && iData.studentAnswer !== "" && iData.roundedStudentSelectedOption !== 0){
		  //Correct Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="green bold keyStyle">'+iData.studentAnswer+' <i class="fa fa-check fa-lg green"></i> (Correct Answer)</span>'+
		  '</div></div></div>';
		  
	  } else if(iData.unAttempted === true ){
		  //Correct Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="ocorrect bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="bold keyStyle"></span>'+
		  '</div></div></div>';
		  
	  } else{
		  //Wrong Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="red bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="red bold keyStyle"> '+iData.studentAnswer+' <i class="fa fa-close fa-lg red"></i> (Wrong Answer)</span>'+
		  '</div></div></div>'
		  
	  }
	  
	  //Displays key and solution
	  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row pd-td-20">'+
	  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
	  '</div>'+
	  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+answer+'</span>'+
	  '</div></div></div>'+
	  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row pd-td-20">'+
	  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
	  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
	  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ iData.solution+
	  '</div></div></div></div>';
	  
	  
	  //Total students count for attempted and correctly answerred
	  appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b">  Students Attempted -</span>  <span class="below-icon-text" style="color:#2f2b2b">'+iData.numberOfStudentsAttempted+'</span></div>'+
      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text" style="color:#2f2b2b">'+iData.numberOfStudentsCorrectlyAnswered+'</span></div>';
      
	  if(iData.overtime){
		 appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
	  } else{
		  appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
	  }
	  
      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
	  
	} 	else {
		
		for(var jk=1;jk<=4;jk++){
			//looping through four options
			
			if(iData.option1 == "MATRIX OPTION1" && iData.option2 === "MATRIX OPTION2"){
				// matrix layout
				
				var studentSelected = iData.studentAnswer;
				var studentSplit = studentSelected.split('|');
				
				var correctAnswer_d = answer;
				var correctAnswerSplit = correctAnswer_d.split('|');
							
			
				var optVal = ["P","Q","R","S","T"];

				appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
				'<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop"><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>';
					
			    var sas = correctAnswerSplit[jk-1].split(',');
			    var sss;

			    if(iData.unAttempted){
			    	//UnAttempted Logic
			    	
			    	for(var j=0;j<optVal.length;j++){
			    		if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
							  //Correct Answer but not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					    	  
					      } else{
					    	  // Neutral, neither correct nor wrong
					    	  appendData += '<span class="bold">'+optVal[j]+' </span>';
					    	
					      }
			    	}
			    	
			    } else{
			    	
			    	if(studentSplit[jk-1] !== ""){
					    sss = studentSplit[jk-1].split(',');
		
					    for(var j=0;j<optVal.length;j++){
					      //looping through single option(p,q,r,s,t)
					      if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1 && studentSplit[jk-1].indexOf(optVal[j]) > -1){
					    	  //Correct Answer
					    	  appendData += '<span class="green bold">'+optVal[j]+' </span>';
					    	
					      } else if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1 && studentSplit[jk-1].indexOf(optVal[j]) === -1){
					    	  //Wrong Answer and not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
							  
						  } else if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
							  //Correct Answer but not attempted
					    	  appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					    	  
					      } else if(studentSplit[jk-1].indexOf(optVal[j]) > -1){
					    	  //Wrong Answer but attempted
					    	  appendData += '<span class="red bold">'+optVal[j]+' </span>';
					    	
					      } else{
					    	  // Neutral, neither correct nor wrong
					    	  appendData += '<span class="bold">'+optVal[j]+' </span>';
					    	
					      }
					      
					    }

				    } else{
				    	
					    for(var j=0;j<optVal.length;j++){
					      if(correctAnswerSplit[jk-1].indexOf(optVal[j]) > -1){
					    	 appendData += '<span class="ocorrect bold">'+optVal[j]+' </span>';
					      } else{
					    	 appendData += '<span class="bold">'+optVal[j]+' </span>';
					      }
					    }
				    
				    }
			    	appendData += '</span>(Your Answer - '+studentSplit[jk-1]+')';
			    }
			    

				appendData += "</div></div></div>";
	
			} else if(resolvedAnswer.constructor === Array || resolvedSelected.constructor === Array){
				//comprehension passage option logic and multi correct logic
				
				var resolvedSelected_arr = [];
				var resolvedAnswer_arr = [];

				if(resolvedSelected !== "" && resolvedSelected !== undefined && resolvedSelected !== null){
					if(resolvedSelected.constructor !== Array){
						resolvedSelected_arr[0] = resolvedSelected;
					} else{
						resolvedSelected_arr = resolvedSelected.slice(); //copying array values into another array
					}
				} else {
					resolvedSelected_arr[0] = 9999; //not an option static value set
				}
				
				if(resolvedAnswer !== "" && resolvedAnswer !== undefined && resolvedAnswer !== null){
					if(resolvedAnswer.constructor !== Array){
						resolvedAnswer_arr[0] = resolvedAnswer;
					} else{
						resolvedAnswer_arr = resolvedAnswer.slice(); //copying array values into another array
					}
				} else {
					resolvedAnswer_arr[0] = 9999; //not an option static value set
				}
				
				var join_resolvedAnswer = resolvedAnswer_arr.join(',');
				
				var join_resolvedSelected = resolvedSelected_arr.join(',');
				
				
				if(iData.unAttempted){
					//Unattempted 
					if(join_resolvedAnswer.indexOf(jk) > -1){
						//Correct Answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					}  else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question

					if(join_resolvedAnswer.indexOf(jk) > -1 && join_resolvedSelected.indexOf(jk) > -1){
						//Correct Answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedAnswer.indexOf(jk) > -1){
						//Correct Answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedSelected.indexOf(jk) > -1){
						//Wrong answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
				}
				
				
			} else {
				
				//single correct option logic

				var stdselected;
				if(iData.studentAnswer !== "" && iData.studentAnswer !== null){
				    stdselected = idResolver(iData.studentAnswer);
				}
				
				if(iData.unAttempted){
					//unattempted logic
					
					if(resolvedAnswer===jk){
						//correct answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question
					
					
					if(resolvedAnswer===jk && stdselected === jk){
						//your answer is correct
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
						
					} else if(resolvedAnswer===jk){
						//correct answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(stdselected===jk){
						//wrong answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span>'+iData["option"+jk]+'</span>'+
						  '</div></div></div>';
					}
				}
				
			}
			
		}
		
		//Displays key and solution
		 appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap"><div class="row  pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Key </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap"><span class="green bold keyStyle">'+answer+'</span>'+
		  '</div></div></div>'+
		  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3-"><div class="row  pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100">'+
		  '<label class="control-label" for="example-email"><span class="sky_blue1 bold">Hint /Sol</span></label><span class="rightPosa">&nbsp; : &nbsp;</span></div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ iData.solution+
		  '</div></div></div></div>';
		 
		  
		  //Total students count for attempted and correctly answerred
		  appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
	      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span>  <span class="below-icon-text" style="color:#2f2b2b">'+iData.numberOfStudentsAttempted+'</span></div>'+
	      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text" style="color:#2f2b2b">'+iData.numberOfStudentsCorrectlyAnswered+'</span></div>';
	      
		  if(iData.overtime){
			 appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
		  } else{
			  appendData += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text" style="color:#2f2b2b"> '+iData.timespent+'</span></div>';
		  }
		  
	      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
			
	}
	
	//returns option html append data
        return appendData;
   
   

 }
 function getdificultywise(){
	  var appenddata ="";
	  var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		 var testPostId = parseInt(atob(getParameterByName('id')));
		var inputData ={
				"studentId": studentid,
"testPostId": testPostId
      }
			
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getSubjectVsDifficultySummery',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				var subjectlist =data.subjectsList;
				 var y = [];
			  var levelnames =[];
			  var alevel1 = [];
			  var blevel2 = [];
			   var clevel3 = [];
			  
				 for(var i=0; i < subjectlist.length; i++){
					 	var  datajsony = subjectlist[i].subjectName;
				 y.push(datajsony);
				 var dificultylevel =  subjectlist[i].difficultyLevelList;
				 appenddata+='<div ><table id="subjecttable" class="table table-bordered display pb-30 subwisevsdiff" style="margin-left: auto;margin-right: auto;">'+
												'<thead class="th_background"><tr>'+
								 				' <th class="chd'+i+'"></th><th>Difficulty Level</th><th>Score</th>'+
														'<th>-ve marks <br>(Wrong Qns)</th><th>Unattempted <br>(Qns)</th>'+
														'<th>Overtime <br>(Qns)</th><th>Percentage %</th>'+
														'<th>Accuracy %</th><th>Speed <br> (Qns/Hr)</th><th>Avg score of all students</th> <th>Topper Score</th>'+
													'</tr></thead><tbody>';
						
					 
					 
					
						 				
					 /*}else if(leveltype == "Level-2"){*/
						 					 
					 /*}else{*/
					/* }*/							
				 for(var j=0; j < dificultylevel.length; j++){
					var leveltype = dificultylevel[j].difficultyLevel;
					if (levelnames.indexOf(leveltype) > -1) {
   //In the array!
	
} else {
   //Not in the array
	if(leveltype == "Total"){
		
	}else{
		levelnames.push(leveltype);
	}
	
}
			
appenddata+= '<tr class="center">';
				if(j==0){
						appenddata+= '<td rowspan = "'+dificultylevel.length+'" class="chd'+i+'" >'+datajsony+'</td>';
													}
									
														
									appenddata+='<td>'+dificultylevel[j].difficultyLevel+'</td>'+
									'<td style="color:#22B14C;font-weight: bold;" data-toggle="modal" data-target="#not-correct-answer-qns" onclick="get_dificulyquestions(\'Scored\',\'' + dificultylevel[j].difficultyLevel+ '\',\'' +subjectlist[i].subjectId+ '\',\'' + testPostId+ '\')">'+dificultylevel[j].scoreMarks+'/'+dificultylevel[j].totalMarks+' <br>('+dificultylevel[j].scoreQuestionsCount+'Q/'+dificultylevel[j].totalQuestionsCount+'Q)</td>'+
									'<td style="color:#EB1FB0;font-weight: bold;" data-toggle="modal" data-target="#not-correct-answer-qns" onclick="get_dificulyquestions(\'Negative\',\'' + dificultylevel[j].difficultyLevel+ '\',\'' +subjectlist[i].subjectId+ '\',\'' + testPostId+ '\')">'+dificultylevel[j].negativeMarks+'<br> ('+dificultylevel[j].negativeQuestionsCount+'Q)</td>'+
									'<td style="color:#3F48CC;font-weight: bold;" data-toggle="modal" data-target="#not-correct-answer-qns" onclick="get_dificulyquestions(\'Unattempted\',\'' + dificultylevel[j].difficultyLevel+ '\',\'' +subjectlist[i].subjectId+ '\',\'' + testPostId+ '\')">'+dificultylevel[j].unAttemptedCount+'</td>'+
									'<td style="color:#EB1FB0;font-weight: bold;" data-toggle="modal" data-target="#not-correct-answer-qns" onclick="get_dificulyquestions(\'OverTime\',\'' + dificultylevel[j].difficultyLevel+ '\',\'' +subjectlist[i].subjectId+ '\',\'' + testPostId+ '\')">'+dificultylevel[j].overTimeCount+'</td>'+
									'<td>'+dificultylevel[j].percentage+'%</td>'+
														'<td>'+dificultylevel[j].accuracy+'%</td>'+
														'<td>'+dificultylevel[j].speed+'</td>'+
														'<td>'+dificultylevel[j].avgScore+'</td>'+
														'<td>'+dificultylevel[j].topperScore+'</td>'+
													'</tr>';

				}
					 appenddata+='</tbody></table></div>';
				
				}
				 for(var ij=0; ij < subjectlist.length; ij++){
					  var dificultylevel =  subjectlist[ij].difficultyLevelList;
					  if(ij == 0){
						  
					  }else{
						  
						  if(alevel1.length ===  blevel2.length && alevel1.length === clevel3.length){
							  
						  }else{
							  if(alevel1.length == (ij-1)){
								  alevel1.push(0);
							  }
							  if(blevel2.length== (ij-1)){
								  	blevel2.push(0);
							  }
							  if(clevel3.length == (ij-1)){
								  	clevel3.push(0);
							  }
							  
						  }
					  }
				  for(var jk=0; jk < dificultylevel.length; jk++){
					  var dificult = dificultylevel[jk].difficultyLevel
					 	if( dificult.toLowerCase()== "level 1"){
							
					alevel1.push(dificultylevel[jk].percentage); }
                   if(dificult.toLowerCase() == "level 2"){
				blevel2.push(dificultylevel[jk].percentage);
					   }
					 	if(dificult.toLowerCase() == "level 3"){
				clevel3.push(dificultylevel[jk].percentage);
					  
					 }
					
				 }}
				 
				 Highcharts.chart('high', {
					
                             chart: {type: 'column'},
							   title: { text: 'Subject VS Difficulty Level'},
							     exporting: { enabled: false },
                                       
										xAxis: {
													categories: y,
													labels: {
														x: -10
													}
												},
												yAxis: {
																					 labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
					   max: 100,
													allowDecimals: false,
													 title: {
													        text: 'Percentage'
													    }
												},
											  plotOptions: {
					       
					         column: {
					        	 pointWidth: 30,
					               borderRadius: 10,
					           
					           }
					    },	
							
                               credits: { enabled: false  },
                               colors:['#00BA85','#E6C458',	'#00A2E8'],
												series: [{
													name: 'Level 1',
													data: alevel1
												}, {
													name: 'Level 2',
													data: blevel2
												}, {
													name: 'Level 3',
													data: clevel3
												}],

												
											});
				
			
				
				
				$("#subjtbl").empty();
			  $("#subjtbl").append(appenddata);
			},
			error:function(data){
				//alert(data.responseJSON.errorMessage);
			}
		})
}
 function get_dificulyquestions(type,level,subid,testPostId){
	
var LoginData = getLoginData();
	var sId = LoginData.studentid;
	//var subfirst =("#questionsContents li:first-child ").text(); 
	
	var appendData ="";
var url;
	var $modalheading = $("#modalheading");
	var headingtxt;
	if(level == "Total"){
		var inputData ={
			"testPostId":testPostId,
			"studentId":sId,
			"subjectId":subid,
	};
	inputData = JSON.stringify(inputData);
			switch(type){
		case 'Scored':
			headingtxt = 'Scored Questions';
			url = base_url+'rest/student/v1/getSubjectWiseScoredQuestions';
			break;
			case 'Negative':
			headingtxt = 'negative Questions';
			url = base_url+'rest/student/v1/getSubjectWiseNegativeQuestions';
			break;
		case 'Unattempted':
			headingtxt = 'UnAttempted Questions';	
			url = base_url+'rest/student/v1/getSubjectWiseUnattemptedQuestions';
			break;
		case 'OverTime':
			headingtxt = 'Overtime Questions';
			url=base_url+'rest/student/v1/getSubjectWiseOverTimeQuestions';
			break;
	}
	}else{
		var inputData ={
			"testPostId":testPostId,
			"studentId":sId,
			"subjectId":subid,
			"difficultyLevel":level
	};
	inputData = JSON.stringify(inputData);
			switch(type){
		case 'Scored':
			headingtxt = 'Scored Questions';
			url = base_url+'rest/student/getSubjectVsDifficultyScoredQuestions';
			break;
			case 'Negative':
			headingtxt = 'negative Questions';
			url = base_url+'rest/student/getSubjectVsDifficultyNegativeQuestions';
			break;
		case 'Unattempted':
			headingtxt = 'UnAttempted Questions';	
			url = base_url+'rest/student/getSubjectVsDifficultyUnattemptedQuestions';
			break;
		case 'OverTime':
			headingtxt = 'Overtime Questions';
			url=base_url+'rest/student/getSubjectVsDifficultyOverTimeQuestions';
			break;
	}
	}

	
	$modalheading.html(headingtxt);
$.ajax({
		 url:url,
		type:"POST",
		  dataType: "json",
		  contentType: 'application/json', 
		   data:inputData,
		  beforeSend: function(){
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		 success: function(data){
			  for(var i=0;i<data.length;i++){
	 				
	 				var resolvedAnswer, resolvedSelected;
	 				var answer,studentSelectedOption;
	 				
	 				
	 				var passageType = data[i].passagequestions;
	 				if(passageType !== null && passageType !== undefined){
	 					
	 					for(var op=0;op<passageType.length;op++){
	 						var answer= passageType[op].correctAnswer;
	 						
	 						if(answer.indexOf(',')> -1){
	 							var checkAnswer = answer.split(',');
	 							
	 							resolvedAnswer = [];
	 							for(var s =0;s<checkAnswer.length;s++){
	 								resolvedAnswer.push(idResolver(checkAnswer[s]));
	 							}
	 							
	 						} else{
	 							var checkAnswer = answer;
	 							
	 							resolvedAnswer = idResolver(answer);
	 						}
	 						
	 						studentSelectedOption = passageType[op].studentSelectedOption;
	 						
	 					
	 						if(studentSelectedOption.indexOf(',')> -1){
	 							var checkStudentSelect = studentSelectedOption.split(',');
	 							
	 							resolvedSelected = [];
	 							for(var s =0;s<checkStudentSelect.length;s++){
	 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
	 							}
	 							
	 						} else{
	 							var checkStudentSelect = studentSelectedOption;
	 							
	 							resolvedSelected = idResolver(checkStudentSelect);
	 						}
	 						
	 						
	 						// passage questions 
							appendData += '<div class="">'+
							  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
							  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
							  '<span>&nbsp; : &nbsp;</span></div>'+
							  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
							  '</div></div></div>';
							
							appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
							  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
							  '<span>&nbsp; : &nbsp;</span>';
							  
							if(!passageType[op].unattempted){
								if(passageType[op].correctQuestion){
									//Correct Question, correct tick
									appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
								} else{
									//Wrong Question, Wrong tick
									appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
								}
								
							} else{
								//UnAttempted Question, /!\ tick
								appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
							}
							
							appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+passageType[op].question +
							  '</div></div></div>';
	 						
	 						
	 						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
	 						
	 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
	 						
	 					}
	 					
	 	
	 					
	 				} else{
	 					
	 					var answer= data[i].correctAnswer;
	 					studentSelectedOption = data[i].studentSelectedOption;
	 					
	 					
	 					if(data[i].option1 === "" && data[i].option2 === ""){
	 						// integer layout
	 						resolvedAnswer = answer;
	 					} else{
	 						// not integer
	 						
	 						if(answer.indexOf(',')> -1){
	 							var checkAnswer = answer.split(',');
	 							
	 							resolvedAnswer = [];
	 							for(var s =0;s<checkAnswer.length;s++){
	 								resolvedAnswer.push(idResolver(checkAnswer[s]));
	 							}
	 							
	 						} else{
	 							var checkAnswer = answer;
	 							
	 							resolvedAnswer = idResolver(answer);
	 						}
	 						
	 						
	 						
	 					
	 						if(studentSelectedOption.indexOf(',')> -1){
	 							var checkStudentSelect = studentSelectedOption.split(',');
	 							
	 							resolvedSelected = [];
	 							for(var s =0;s<checkStudentSelect.length;s++){
	 								resolvedSelected.push(idResolver(checkStudentSelect[s]));
	 							}
	 							
	 						} else{
	 							var checkStudentSelect = studentSelectedOption;
	 							
	 							resolvedSelected = idResolver(checkStudentSelect);
	 						}
	 					}
	 					
	 					appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data[i].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
	 					
	 						if(!data[i].unattempted){
	 							if(data[i].correctQuestion){
	 								//Correct Question, correct tick
	 								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
	 							} else{
	 								//Wrong Question, Wrong tick
	 								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
	 							}
	 							
	 						} else{
	 							//UnAttempted Question, /!\ tick
	 							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
	 						}
	 					
	 					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
						  '</div></div></div>';
	 					
	 					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
	 					
	 				}
	 				}
	 		 
	 			appendData += "</div></div></div>";
		  
		  
		  setTimeout(function() {
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").append(appendData);
			rendereelemntforkatext();
		  }, 500);
		
	  },
	  error:function(data){
		 // alert("Not Corrected Questions not found in 70 Percentage  Marks");
		 
		 setTimeout(function() {
			$("#popupnotcorrectanswerqns").empty();
			$("#popupnotcorrectanswerqns").html('<h5 class="center">'+headingtxt+' not found:(</h5>');
		  }, 500);

	  }
	}); 	
 }
 
function get_state_city(){
	 
	 var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var testPostId = parseInt(atob(getParameterByName('id')));
	var inputData =  {
	"testPostId":testPostId,
	"studentId":sId,
	"stateId":$(".stateselction option:selected").val()
}

var appenddata = "";
var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getStateAndCityRanks',
		data : inputdata,
		
		success : function(data) {
			var statename = data.stateRanks;
			appenddata += '<div class="col-md-3 statecircle">'+
									'<p class="text-center">'+statename.state+'</p>'+
									'<p class="text-center" >Rank :<span style="padding-left: 5px;color: deepskyblue;font-size:18px;">'+statename.rank+'</span></p>'+
									'<p class="text-center" style="margin-top: 7px">Attempted :<span style="padding-left: 5px;color: deepskyblue;">'+statename.attempted+'</span></p></div>';
			var cities = statename.cityRanks;
			for (var i = 0; i < cities.length; i++) {
				
				appenddata += '<div class="col-md-3 citycircle">'+
									'<p class="text-center">'+cities[i].city+'</p>'+
									'<p class="text-center" >Rank :<span style="padding-left: 5px;color: deepskyblue;font-size:18px;">'+cities[i].rank+'</span></p>'+
									'<p class="text-center" style="margin-top: 7px">Attempted :<span style="padding-left: 5px;color: deepskyblue;">'+cities[i].attempted+'</span></p></div>';
			}

			$("#display_rank").empty("");
			
			$("#display_rank").append(appenddata);

			$('.selectpicker').selectpicker('refresh');
			

		},
		error : function(data) {
			$("#loading").hide();
			 alert(data.responseJSON.errorMessage);

		},

	});
 }
function getoveraltoppers(){
	  
	 var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var testPostId = parseInt(atob(getParameterByName('id')));
	var inputData =  {
	"testPostId":testPostId,
	"studentId":sId,
	
}

var appenddata = "";
var inputdata = JSON.stringify(inputData);
	var appendhead = "";
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getOverAllToppers',
		data : inputdata,
		
		success : function(data) {
			if(data.issubscribed)
			{
				$("#overall, #subjecttab").removeClass("mask");
			}else
			{
				$("#overall, #subjecttab").addClass("mask");
			}
			var topperdetails = data.topperDetails;
			appendhead +='<thead class="th_background" id="overallheader"><tr><th></th><th>Photo</th><th>Student Name</th><th>AIR</th><th>Total Marks</th><th>-ve Marks</th><th>Unattempted (qns)</th>';
				
			var subjects = topperdetails[0].subjectMarks;
					for(var j=0; j < subjects.length; j++){
						appendhead+='<th>'+subjects[j].subjectName+'<br>Marks</th>';
						}
										
			appendhead +='<th>Percentage %</th><th>Accuracy</th><th>Percentile</th><th>speed <br>(Qns./ Hr.)</th></tr></thead><tbody>';
			for (var i = 0; i < topperdetails.length; i++){
				
				if(topperdetails[i].isfrommissed === true){
					 $('#toperpopup')[0].click();
			 			$("#blur").addClass('thickbox-open');
			 			
			 		
			 				 //$("#comparitivemodal").addClass('fade in');
			 			    $("#topperserror").empty();
			 				$("#topperserror").html(topperdetails[i].message);
				}
				
				if(topperdetails[i].studentImage == ""){
					var image = base_url +"/assets/images/students/default.png";
				}else{
					var image = topperdetails[i].studentImage;
				}
				
		
				if(i==0){
					appendhead += '<tr style="background-color:#00a2e82e"><td><i class="fa fa-angle-double-right"></i></td>';
					var studentname= "You";
				}else{
					appendhead += '<tr><td>'+(i)+'</td>';
					var studentname= topperdetails[i].studentName;
				}
				appendhead += '<td><img src="'+image+'" alt="logo" class="imgstyle-2" style="height: 50px;"></td><td>'+studentname+'</td>'+
				               '<td>'+topperdetails[i].allIndiaRank+'</td><td>'+topperdetails[i].totalMarks+'</td>'+
								'<td>'+topperdetails[i].negativeMarks+'</td><td>'+topperdetails[i].unAttempted+'</td>';
					var subjects = topperdetails[i].subjectMarks;
					for(var j=0; j < subjects.length; j++){
						appendhead+='<td>'+subjects[j].subjectMarks+'</td>';
						}
				appendhead +='<td>'+topperdetails[i].percentage+' %</td><td>'+topperdetails[i].accuracy+' %</td><td>'+topperdetails[i].percentile+'</td><td>'+topperdetails[i].speed+'</td>'+
								'</tr>';
								
			}
	appendhead +='</tbody>';
			$("#overalltable").empty("");
			$("#overalltable").append(appendhead);
			},
		error : function(data) {
			$("#loading").hide();
			 alert(data.responseJSON.errorMessage);

		},

	});
	 
	 
}
 var subjectwisetoppers="";
 function getsubwise(){
	 var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var testPostId = parseInt(atob(getParameterByName('id')));
	var inputData =  {
	"testPostId":testPostId,
	"studentId":sId,
}
var appenddata = "";
var inputdata = JSON.stringify(inputData);
	var appendhead = "";
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getSubjectWiseToppers',
		data : inputdata,
		
		success : function(data) {
			var topperdetails = data.subjects;
			subjectwisetoppers = data.subjects;
			for (var i = 0; i < topperdetails.length; i++){
				appendhead += '<li role="presentation" class=""><a href="#" onclick="gettoperdetails('+i+');" aria-controls="home" role="tab" data-toggle="tab">'+topperdetails[i].subjectName+'</a></li>';
			}
	
			$("#tabsub").empty("");
			$("#tabsub").append(appendhead);
			 $('#tabsub li:first-child a').click();
			},
		error : function(data) {
			$("#loading").hide();
			 alert(data.responseJSON.errorMessage);

		},

	});
}
 function gettoperdetails(index){
		var subwisetopers = subjectwisetoppers;
		var appenddata = "";
		var topperResponses = subwisetopers[index].topperResponses;
		var topperdetails = topperResponses.topperDetails;
		for(var i = 0; i < topperdetails.length; i++){
			if(topperdetails[i].studentImage == ""){
						var image = base_url +"/assets/images/students/default.png";
					}else{
						var image = topperdetails[i].studentImage;
					}
					if(i==0){
						appenddata += '<tr style="background-color:#00a2e82e"><td><i class="fa fa-angle-double-right"></i></td>';
						var studentname= "You";
					}else{
						appenddata += '<tr><td>'+(i)+'</td>';
						var studentname= topperdetails[i].studentName;
					}
					appenddata += '<td><img src="'+image+'" alt="logo" class="imgstyle-2" style="height: 50px;"></td><td>'+studentname+'</td><td>'+topperdetails[i].subjectRank+'</td>'+
					               '<td>'+topperdetails[i].allIndiaRank+'</td><td>'+topperdetails[i].totalMarks+'</td>'+
									'<td>'+topperdetails[i].negativeMarks+'</td><td>'+topperdetails[i].unAttempted+'</td>';
					appenddata +='<td>'+topperdetails[i].percentage+' %</td><td>'+topperdetails[i].accuracy+' %</td><td>'+topperdetails[i].percentile+'</td><td>'+topperdetails[i].speed+'</td>'+
									'</tr>';
			
		}
		$("#subtoppers").empty("");
				$("#subtoppers").append(appenddata);
	}