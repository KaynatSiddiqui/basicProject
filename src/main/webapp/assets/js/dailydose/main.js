var countDownDate;
var jsondata1 = {};
var jsondata = {};
var currentquestno=0;
var currentsubjectno=0;
var currentsectionno=0;
var presentquestionno;
var presentsubjectno;
var presentsecno;
var qestionsloaded=false;

function getallquestions(){
	
	//var id = getParameterByName('id');
	var inputData ={
			"testPostId":atob(getParameterByName('id')),
			"studentId":atob(getParameterByName('studentid'))
			
	};
	inputData = JSON.stringify(inputData);
	
	$.ajax({
		type:"POST",
	  dataType: "json",
	  contentType:'application/json', 
	  data:inputData,
	  url: base_url+'rest/student/v1/getTestPostQuestions',
	  success: function(data){
	  jsondata = data;
	   //open this 
	  initilaize();
			$("#scrollhorisub .tab-struct").css("display","block");
	  },
	  error:function(data){
		  //alert("Getting all questions failed!")
	  }
	});
	
		
}

var subid = -1;
var secid= -1;
function initilaize()
{
	if(!qestionsloaded)
		{
	 currentquestno=0;
	 currentsubjectno=0;
	 currentsectionno=0;
	 //setting subjects
	 updateScreen("");
	 var appenddata= "";
	 var apendpop="";
	 var count=0;
	 $("#testname").html(jsondata.examName);
	 for(var i=0;i<jsondata.subjectslist.length; ++i)
	 {  
	     if(subid == -1){
			subid= jsondata.subjectslist[i].subjectId;
		 }
		 
	     //apendpop += "<label class='backgroundpopup' onclick='getsectionwiseques(this);' data-id='"+jsondata.subjectslist[i].subject +"' id='"+jsondata.subjectslist[i].subject +"'>"+jsondata.subjectslist[i].subject+"</label>";
		
	     // if(jsondata.subjectslist[i].subject!== undefined)
			 for(var j=0;j<jsondata.subjectslist[i].sectionlist.length; ++j)
			 {
				 if(secid == -1){
					 secid= jsondata.subjectslist[i].sectionlist[j].sectionId;
					 }
					 if(jsondata.subjectslist[i].sectionlist[j].section !=""){
						 var	subname = jsondata.subjectslist[i].sectionlist[j].sectionId+"_"+i;
						  //apendpop += "<li class='backgroundpopup' onclick='getsectionwiseques(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].sectionlist[j].sectionId+"_"+i+"'>"+jsondata.subjectslist[i].sectionlist[j].section+"</li>";
						 appenddata += "<li class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].section; 
					 }else{
						 var	subname = jsondata.subjectslist[i].subjectId+"_"+i;
						 // apendpop += "<li class='backgroundpopup' onclick='getsectionwiseques(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId+"_"+i+"'>"+jsondata.subjectslist[i].subject+"</li>";
						 appenddata += "<li class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].subject; 
					 }
				// appenddata += "<label class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].subject+" "+jsondata.subjectslist[i].sectionlist[j].section+"<span class='dropdown'><i class='fa fa-info-circle dropbtn' aria-hidden='true'><div class='dropdown-content'>"; 
				   /*  appenddata +=  "<ul style='color: #000'><li><div class='tag1'id='submenu_ans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].answeredCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/answered.png'>Answered</li>";
				     appenddata += 	"<li><div class='tag1' id='submenu_unans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].notAnsweredCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/unanswered.png'>Un answered</li>";
					 appenddata +=  "<li><div class='tag1' id='submenu_notvisted_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].notVisitedCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/notvisited.png'>Not Visited</li>";
					 appenddata += 	"<li><div class='tag1' id='submenu_review_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].markedForReviewCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/review.png'>Marked for review</li>";
					 appenddata +=  "<li><div class='tag1' id='submenu_markreviewans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].answeredAndMarkedForReviewCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/ansreview.png'>Answered and marked for review</li></ul>";
					 appenddata += "</div></i></span> </label>";*/
					 appenddata += "</li>";
	            //$("#menu_sub"+count ).html(jsondata.subjectslist[i].subject +" "+jsondata.subjectslist[i].sectionlist[j].section);
	            //count++;
			 }
	 
			 
	 }
	 $("#subjectt_section").append(appenddata);
	 $("#subjectt_section li:first-child").addClass('active');
	// $("#subject_popupp").append(apendpop);
	// $("#subject_popupp li:first-child").addClass('active');
	 var examtime= parseInt(jsondata.time);// in minutes
		countDownDate = addMinutes(new Date(),examtime);
//$('#'+subid+'_'+secid).click();
		$('#subjectt_section > li:first-child').click();
		$('#subject_popupp > li:first-child').click();
//$('#'+subname).click();
	 updatesideblockBtns();
	 
	
	
	 
	     var currstatus = "sub ="+currentsubjectno+"_ sec= "+currentsectionno+"_ques "+currentquestno;
	     $("#reportanerror").empty();
		 $("#reportanerror").append(currstatus);
		}
	
	 qestionsloaded=true;
}
/*function changeSection(changesec)
{
	alert(changesec);
	var res = changesec.split("_");
	currentsubjectno= parseInt(res[0]);
	
	alert(currentsubjectno);
	//currentsubjectno=1;
	currentquestno=0;
	questDisplay();
}*/
//displaying no of questions btn in side block
function updatesideblockBtns()
{
	var i=currentsubjectno;
	 var appenddata= "";
	for(var j=0;j<jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length; ++j)
	 {
		 if(secid == -1){
			 secid= jsondata.subjectslist[i].sectionlist[j].sectionId;
			 }
		 var imagepath = base_url+"/assets/images/exam/notvisited.png";
		 var status =jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[j].questionStatus;
		 switch(status)
			{
			case 0: imagepath= base_url+"/assets/images/exam/notvisited.png";
					break;
			case 1: imagepath= base_url+"/assets/images/exam/answered.png";
					break;
			case 2:  imagepath= base_url+"/assets/images/exam/unanswered.png";
				break;
			case 3:  imagepath= base_url+"/assets/images/exam/review.png";
					break;
			case 4:
				 imagepath= base_url+"/assets/images/exam/ansreview.png";
				break;
			
			}
		 var imageid = "imgid_"+currentsubjectno+"_"+currentsectionno+"_"+j;
		 var clickimg = "cliimgid_"+currentsubjectno+"_"+currentsectionno+"_"+j;
		 appenddata +=" <div class='col-md-3'><div onclick='getclickedquestions(this);' id="+clickimg+" style='cursor: pointer;'><div class='questag'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[j].questionserialId+"</div><img class='sideblockimages' onclick='getclickedquestions(this);' src="+imagepath+" id= "+imageid+" style='height: 40px;width: 40px;'></div></div>"
		 
 }
	
	 
	$("#section_ques_btn").empty();
	 $("#section_ques_btn").append(appenddata);
	 
	 $("#section_namedisplay").empty();
	 if(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].section !=""){
		 $("#section_namedisplay").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].section); 
	 }else{
		 $("#section_namedisplay").append(jsondata.subjectslist[currentsubjectno].subject); 
	 }
	
	 UpdateSideblockflags();
}
//question selected from choose a question panel 
function getclickedquestions(elem)
{
	
	if(currentquestno > 0){
		var questionAnsweredflag=updateAnstoJson();
		
		 uncheckAllCheck_Radio_btns();
		     updateScreen("");
		 var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //status
		   /* if(prevflag==0) // update only from not visited to visited( others should remain same as it is)
		     	updatequestStatusFlags(prevflag,2);// not answered
*/		
		  if(questionAnsweredflag && prevflag !=4)
			     updatequestStatusFlags(prevflag,1); //answered
			    else if(!questionAnsweredflag && prevflag !=2 && prevflag !=3 ) 
			    	updatequestStatusFlags(prevflag,2);// not answered

	}
	
	
	
	var ques = $(elem).attr('id');
     //alert(ques);
    var val=ques.split("_");
     var currques= parseInt(val[3]); 
     currentquestno= currques;
     uncheckAllCheck_Radio_btns();
     updateScreen("");
     questDisplay();
	
}
//section change from top
function getquestions(elem){
	if(currentquestno > 0){
		var questionAnsweredflag=updateAnstoJson();
		
		 uncheckAllCheck_Radio_btns();
		     updateScreen("");
	 var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //status
	   /* if(prevflag==0) // update only from not visited to visited( others should remain same as it is)
	     	updatequestStatusFlags(prevflag,2);// not answered*/
	 if(questionAnsweredflag && prevflag !=4)
	     updatequestStatusFlags(prevflag,1); //answered
	    else if(!questionAnsweredflag && prevflag !=2 && prevflag !=3 ) 
	    	updatequestStatusFlags(prevflag,2);// not answered

	
	}
	var id = $(elem).attr('data-id');
	
	//var preva = $(elem).attr("0_0");
//	var sub= currentsubjectno +1;
//	var sec= currentsectionno+1;
	var sub = jsondata.subjectslist[currentsubjectno].subjectId;
	var sec = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
	
	/*var preva = document.getElementById(sub+"_"+sec);
	//alert(id);
	preva.style.color="gray";
	preva.style.background="white";
	//$('#'+preva+'> a' ).css("color", "white");
	//preva.css("background", "white");
	//preva.css("color", "black");
	
	var a = $(elem).attr('id');
	//alert(id);
	$('#'+a).css("background", "#8975c9");
	//$('#'+a).css("color", "red");
	$('#'+a+'> a' ).css("color", "white");*/
	 $("#subjectt_section .background").css({ 'background-color' : '', 'color' : '' });
	 var a = $(elem).attr('id');
		//alert(id);
		$('#subjectt_section > #'+a).css({
			"background": "#6895ed",
			"padding":"10px",
			"font-weight":"600"
		});
		
		$('#subjectt_section > #'+a).css("color", "white");
		
	var res = id.split("_");
	currentsubjectno= parseInt(res[0]);
	currentsectionno = parseInt(res[1]);
	currentquestno=0;
	removesectionbkg= true;
	/*alert(currentsubjectno);
	alert(currentsectionno);*/
	//currentsubjectno=1;
	uncheckAllCheck_Radio_btns();
	 updateScreen("");
	questDisplay();
	//elem.preventDefault();
	disableSubmit();
	seralNoColor();
	return false;
}
var removesectionbkg=false;
function questDisplay(currQusNum,currQuestype)
{
	var cur = parseInt(currQusNum);
	
	var cuA = $(".bgcQ"+cur);
	var queLen = $("#questionLestList a");
	
	var typeofques="";
//console.log({currQusNum, currQuestype});
if(currQusNum === undefined || currQusNum === null){
	var cqNum = currQusNum;
}else{
	var cqNum = parseInt(currQusNum);
}
var cqType = currQuestype;
	//var i = parseInt($("#questionnumber").html()) + 1;
//	var qno2 =  jsondata.questions[i-1].questionnumber;
var quesListLength = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length;
	//var quesappend= "";
	if(cqNum === null || cqNum === undefined){
		if(currentquestno==jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length)
		{
			removesectioncolurs();
			removesectionbkg= true;
		 // alert("section completed");
		  currentsectionno++;
		  currentquestno=0;
		}
	}else{
		currentquestno = cqNum - 1;
	}
	/*if(cqNum == null || cqNum == undefined){
		  currentquestno=0;
	  }else{
		  currentquestno = cqNum;
	  }*/
	
	if(currentsectionno == jsondata.subjectslist[currentsubjectno].sectionlist.length)
	{
		//alert("subject completed");
		currentsubjectno++;
	 currentsectionno=0;
	 currentquestno=0;
	}
	if(currentsubjectno == jsondata.subjectslist.length)
	{
	     //alert("exam completed");
	     currentsubjectno=0;
		 currentsectionno=0;
		 currentquestno=0;
	/*$('#savenext').addClass('not-active');
	$('#submittques').removeClass('not-active');*/
	
	}
	var lenofquss = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length;
	
	if(currentquestno < jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length)
	{
		var lenofqus = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist;
		var quesNo1 = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[0].questionserialId;
		var quesNo = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionserialId;
		/*var quesNoTypeSing = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type;*/
		var qusAssume = quesNo1;
		var appq = ""; 
		for(var disq = 0; disq<lenofqus.length; ++disq){
			var quesNoTypeSing = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[disq].type;
			appq += '<a class="bgClass serialid'+lenofqus[disq].questionserialId+' bgcQ'+(disq+1)+'" id="bgcQ'+(disq+1)+'" onclick="getquestionWiseOptions(this);" data-type="'+quesNoTypeSing+'" data-id="'+(disq+1)+'" href="javascript:void(0)"><div class="chat-data"><div class="pull-left mr-20 question_not_answered notanswered'+qusAssume+'">&nbsp; '+ qusAssume +' &nbsp;</div><div class="user-data"><span class="name capitalize-font">'+lenofqus[disq].title+'</span></div><div class="clearfix"></div></div></a>';
			qusAssume++;
		}
		$("#questionLestList").html(appq);
		var bg1 = $(".bgClass").length;
		/*$(".bgClass > .chat-data > .user-data > .name > table > tbody > tr > td > p").css('display','none');
		$(".bgClass > .chat-data > .user-data > .name > table > tbody > tr > td > p:first-child").css('display','block');*/
		$(".bgClass > .chat-data > .user-data > .name").find('p').css('display','none');
		$(".bgClass > .chat-data > .user-data > .name").find('p:first-child').css('display','block');
		//$(".bgClass").css('height','6.5vh');
		//$(".bgClass .chat-data").css('background','#fff');
		/*$("#questionLestList #bgcQ:first-child .chat-data").addClass("chatbg");*/
		if(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].passage){
			$("#passage").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].passage)
		}else{
			$("#passage").html("");
		}
		var fullmarks = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].fullMarks;
		var negativeMarks = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].negativeMarks;
		//$('#typeq').attr('data-id' ,jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionTypeDescription);  
		//$("#typeq").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type +"(M="+fullmarks+",-ve="+negativeMarks+")&emsp;" );
		typeofques +="<span class='markings' id='typeq' data-id=''>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type +"(M="+fullmarks+",-ve="+negativeMarks+")</span>";
        $(".questype").empty();
        $(".questype").append(typeofques);
        $("#questionnumber").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionserialId + "." );
		presentquestionno = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionId ;
		presentsubjectno = jsondata.subjectslist[currentsubjectno].subjectId;
		presentsecno = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
		$("#questiondisplay").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].title);
		rendereelemntforkatext();
		/*$("#questionLestList").html('<a onclick="getquestionWiseOptions(this);" href="javascript:void(0)"><div class="chat-data"><div class="pull-left mr-20 question_answered_correct">&nbsp; 1 &nbsp;</div><div class="user-data"><span class="name block capitalize-font">'+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].title+'</span></div><div class="clearfix"></div></div></a>')*/
		//$("#quesopt").empty();
		//$("#quesopt").append("<p><input type='checkbox' id='optval[]' value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt1'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option+"</span></p><p><input type='checkbox' id='optval[]'  value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].optionId+"'/><span id='opt2'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option+"</span></p><p><input type='checkbox' id='optval[]'  value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt3'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option+"</span></p><p><input type='checkbox' id='optval[]' value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt4'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option+"</span></p>")
		$("#optionspanelB .flexer input[type=radio]").removeClass('point');
		//var typeofQuestion =jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type;
		if(cqType == null || cqType == undefined){
			var typeofQuestion =jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type;
		}else{
			var typeofQuestion = cqType;
		}
		  
		if(typeofQuestion=="Multi correct" || typeofQuestion=="Multi Comprehension")
			{  //check box 
			     $("#optionspanelA").removeClass("hidediv");
			     $("#optionspanelB").addClass("hidediv");
		         
		         $("#optionspanelC").addClass("hidediv");
		         $("#optionspanelD").addClass("hidediv");
		         $("#optvalA").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId);
		 		$("#optvalB").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].optionId);
		 		$("#optvalC").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].optionId);
		 		$("#optvalD").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].optionId);
		 	
		 		$("#opt1").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>A)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option);
		 		$("#opt2").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>B)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option);
		 		$("#opt3").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>C)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option);
		 		$("#opt4").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>D)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option);
		 		//setting back answer selected if any
		 		var ans= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].answer;
		         if(ans!="")
		         {
		        	var opt= ans.split(",");
		        	 for(var g=0;g<opt.length; ++g)
		        		 {
				           $('#optval'+opt[g]).prop('checked',true);
		        		 }
		        
		         }
		         rendereelemntforkatext();
			}
		  else  if(typeofQuestion=="Single correct" || typeofQuestion=="Comprehension")
				{
			  //Radio button type
			  $("#optionspanelB").removeClass("hidediv");
			  $("#optionspanelA").addClass("hidediv");
		        
		         $("#optionspanelC").addClass("hidediv");
		         $("#optionspanelD").addClass("hidediv");
			  
		$("#optvalAr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId);
		/*var optvalAr = "optvalAr";
		var opid= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionId;
		$("#optvalAr").addClass(optvalAr +"_"+ opid);*/
		$("#optvalBr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].optionId);
		$("#optvalCr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].optionId);
		$("#optvalDr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].optionId);
		
		$("#opt1r").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>A)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option);
		$("#opt2r").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>B)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option);
		$("#opt3r").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>C)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option);
		$("#opt4r").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='mr-1'>D)</span>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option);
		//setting back answer selected if any
		var ans= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].answer;
        if(ans!="")
        {
       	var opt= ans.split(",");
       	 for(var g=0;g<opt.length; ++g)
       		 {
		           $('#optval'+opt[g]+"r").prop('checked',true);
       		 }
       
        }
        rendereelemntforkatext();
			  }else if( typeofQuestion=="Integer")
				  {  //integer type
				  $("#optionspanelA").addClass("hidediv");
			         $("#optionspanelB").addClass("hidediv");
			         $("#optionspanelC").removeClass("hidediv");
			         $("#optionspanelD").addClass("hidediv");
			       //setting back answer selected if any
			     	var ans= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].answer;
			        if(ans!="")
			        {
			        	updateScreen(ans);
			        }
				  
				  }else if( typeofQuestion=="Matrix")
					  {
					  //Matrixs
				   	  $("#optionspanelA").addClass("hidediv");
				         $("#optionspanelB").addClass("hidediv");
				         $("#optionspanelC").addClass("hidediv");
				         $("#optionspanelD").removeClass("hidediv");
					  //todo
				         var ans= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].answer;
				         if(ans!="")
					        {
					  var opt= ans.split("|");
				        for(var g=0;g<opt.length; ++g)
				       	 {
				        	 var matrixopt= opt[g].split(",");
				        	 for (var k=0;k<matrixopt.length; ++k)
				        		    if(matrixopt[k]!="")
						           $('#checkbox'+(g+1)+matrixopt[k]).prop('checked',true);
				       	 }
		        	
					        }
				         rendereelemntforkatext();
					  }
		  
		  
		  
		  
		  
		  ///end of question types
	
		         var typeqcolor =jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionStatus;
if(typeqcolor === 3 || typeqcolor === 4){
	$('#typeq').css("color", "#8975c9");
}else{
	$('#typeq').css("color", "black");
}
	
			currentquestno++;
	}
	var co=jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length;
	
	

	   if(removesectionbkg)
		{
		   updatesideblockBtns();
	    	updatesectioncolor();
	    	UpdateSideblockflags();
		removesectionbkg= false;
		}
	   $('body, html, .scrscreen').scrollTop(0);
	   
	  /*if(typeofQuestion != "Integer"){
		  SubmitOptionExist();
	  } */
	   var bgc = $(".bgClass");
	/*	for(var z=0;z<bgc.length;z++){
			if(bgc[z].classList.contains('chatbg')){
				bgc[z].classList.remove('chatbg');
			}else if(bgc[z].classList.contains(cuA[0].classList[1])){
				console.log(cuA[0].classList[1]);
				bgc[z].classList.add('chatbg2');
				//bgc[z].id.css('background','red');
				$("#bgcQ"+cur).addClass('chatbg');
			}
		}*/
	   if(!Number.isNaN(cur)){
		for(var z=0;z<bgc.length;z++){
			if(bgc[z].classList.contains('chatbg')){
				bgc[z].classList.remove('chatbg');
			}
		}
	   }else{
		  $("#questionLestList .bgClass:first-child").addClass('chatbg');
	   }
	   $(".bgClass > .chat-data > .user-data > .name").find('p:first-child').css('display','flex');
	   $(".bgClass > .chat-data > .user-data > .name").find('img').css('vertical-align','middle');
	   
		$("#bgcQ"+cur).addClass('chatbg');
		$("#questiondisplay").find('img').css("vertical-align","middle");
		$(".flexer").find('img').css("vertical-align","middle");
		console.log(queLen);
		 highlight();
		 disableSubmit();
}
function removesectioncolurs()
{
	//var sub= currentsubjectno +1;
	//var sec= currentsectionno+1;
	var sub = jsondata.subjectslist[currentsubjectno].subjectId;
	var sec = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
	var preva = document.getElementById(sub+"_"+sec);
	//alert(id);
	$('#subjectt_section #'+sub+'_'+sec).css({ 'background-color' : '', 'color' : '' });
	 //$('#'+preva).css({ 'background-color' : '', 'color' : '' });
	preva.style.color="gray";
	preva.style.background="white";
	//$('#'+preva+'> a' ).css("color", "gray");
}
function updatesectioncolor()
{
	//var sub= currentsubjectno +1;
//	var sec= currentsectionno+1;
	var sub = jsondata.subjectslist[currentsubjectno].subjectId;
   var sec = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
	var preva = document.getElementById(sub+"_"+sec);
	//alert(id);
	$('#subjectt_section #'+sub+'_'+sec).css({
		"background": "#6895ed",
		"padding":"10px",
		"font-weight":"600",
		"color":"black",
	    "border-radius": "10px",
	    "margin-bottom": "10px"
	});
	$('#subjectt_section li:first-child').removeClass('active');
	preva.style.color="#fff";
	preva.style.background="#6895ed";
/*	$('#'+preva+'> a' ).css("color", "white");
	var a = $(elem).attr('id');*/
	


}
//updates each questions flag
function updatequestStatusFlags(prevflag,currentflag)
{
	//updating flag to question
	jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus=currentflag; //answered
	var que= parseInt(currentquestno)-1;
	var imageid = "imgid_"+currentsubjectno+"_"+currentsectionno+"_"+que;
	
	 switch(currentflag)
		{
		case 0: $('#'+imageid).attr('src', base_url+'/assets/images/exam/notvisited.png');
				break;
		case 1: $('#'+imageid).attr('src', base_url+'/assets/images/exam/answered.png');
				break;
		case 2: $('#'+imageid).attr('src', base_url+'/assets/images/exam/unanswered.png');
			break;
		case 3: $('#'+imageid).attr('src', base_url+'/assets/images/exam/review.png');
				break;
		case 4:
			    $('#'+imageid).attr('src', base_url+'/assets/images/exam/ansreview.png');
			break;
		
		}
	//updating flag to section data
	switch(prevflag)
	{
	case 0:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount);
		
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount=count-1;
	break;
	case 1:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount=count-1;
		console.log("answeredCount" + count);
	break;
	case 2:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount=count-1;
		console.log("notAnsweredCount" + count );
	break;
	case 3:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount);
		
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount=count-1;
	break;
	case 4:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount);
		
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount=count-1;
	break;
	
	}
	switch(currentflag)
	{
	case 0:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount=count+1;
	break;
	case 1:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount=count+1;
		console.log("answeredCount" + count);
	break;
	case 2:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount=count+1;
		console.log("notAnsweredCount" + count );
	break;
	case 3:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount=count+1;
	break;
	case 4:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount=count+1;
	break;
	
	}
	
	
	UpdateSideblockflags();

}
function UpdateSideblockflags()
{

	 $("#answeredtag").empty();
	 $("#answeredtag").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount);
	 $("#unansweredtag").empty();
	 $("#unansweredtag").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
	 $("#notvisitedtag").empty();
	 $("#notvisitedtag").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount);
	 $("#reviewtag").empty();
	 $("#reviewtag").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount);
	 $("#ansreviewtag").empty();
	 $("#ansreviewtag").append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount);
	
	 
			var subid= jsondata.subjectslist[currentsubjectno].subjectId;
		    var  secid= jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
					
	 $("#submenu_ans_"+subid+"_"+secid).empty();
	 $("#submenu_ans_"+subid+"_"+secid).css({
		 "padding"   : "0px !important;",
		  "top"      : "13%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_ans_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredCount);
	 $("#submenu_unans_"+subid+"_"+secid).empty();
	 $("#submenu_unans_"+subid+"_"+secid).css({
		  "padding"  : "0px !important;",
		  "top"      : "43%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_unans_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
	 $("#submenu_notvisted_"+subid+"_"+secid).empty();
	 $("#submenu_notvisted_"+subid+"_"+secid).css({
		 "padding"   : "0px !important;",
		  "top"      : "27%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_notvisted_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notVisitedCount);
	 $("#submenu_review_"+subid+"_"+secid).empty();
	 $("#submenu_review_"+subid+"_"+secid).css({
		 "padding"   : "0px !important;",
		  "top"      : "60%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_review_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].markedForReviewCount);
	 $("#submenu_markreviewans_"+subid+"_"+secid).empty();
	 $("#submenu_markreviewans_"+subid+"_"+secid).css({
		 "padding"   : "0px !important;",
		  "top"      : "76%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_markreviewans_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].answeredAndMarkedForReviewCount);
	
}
//clear response
function clearResponse()
{
	uncheckAllCheck_Radio_btns();
updateScreen("");
	 var questionAnsweredflag=  updateAnstoJson();
	 var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	 if(!questionAnsweredflag)
	  updatequestStatusFlags(prevflag,2); // not answered
	

 
	  
}
function uncheckAllCheck_Radio_btns()
{
	 // $('.optionChecks').prop('disabled', '');
	  $(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").parent().removeClass('forCorrectAnsMatrix');
	  $(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").parent().removeClass('forWrongAnsMatrix');
	  $('#optionspanelB .flexer .optionChecks').parent().removeClass('forCorrectAns');
	  $("#optionspanelB .flexer .optionChecks").parent().removeClass('forWrongAns');
	  $("#optionspanelA .flexer .optionChecks").parent().removeClass('forCorrectAns');
	  $("#optionspanelA .flexer .optionChecks").parent().removeClass('forWrongAns');
	  $('.optionChecks').prop('checked',false);
	  $('.optionChecks1').prop('checked',false);	
	  $('.optionChecks2').prop('checked',false);	
	  $('.optionChecks3').prop('checked',false);	
	  $('.optionChecks4').prop('checked',false);	
}
//mark and next
function markNext()
{
	 var questionAnsweredflag=updateAnstoJson();
	//$('#submittques').removeClass('not-active');
	 uncheckAllCheck_Radio_btns();
	     updateScreen("");
	     var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag)
	     updatequestStatusFlags(prevflag,4); // mark and answered
	    else
	    	updatequestStatusFlags(prevflag,3);// mark without answer
	 
	     questDisplay();
	
}
function updateAnstoJson()
{
	var oc = 0;
 	var optionChecksValues = [];
 	var seclectedmatrix="";
 	var questionAnsweredflag= false;
 	var typeofQuestion=jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
	if( typeofQuestion!="Integer" && typeofQuestion!="Matrix")
    {  

       $('.optionChecks:checked').each(function () {
        optionChecksValues[oc++] = $(this).val();
        questionAnsweredflag= true;
      });
     optionChecksValues = optionChecksValues.join(',');
      
		
	}else 
		{
			if( typeofQuestion=="Integer" )
				{
				optionChecksValues=$('.intdispscreen').html();
				if(optionChecksValues!="")
					questionAnsweredflag=true;
				}
			else
				{
				optionChecksValues = [];
	    		oc=0;
		       $('.optionChecks1:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        questionAnsweredflag=true;
			       });
		         optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		       $('.optionChecks2:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        questionAnsweredflag=true;
			       });
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		     //  optionChecksValues = optionChecksValues.join(',');
		       $('.optionChecks3:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        questionAnsweredflag=true;
			       });
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		      // optionChecksValues = optionChecksValues.join(',');
		       $('.optionChecks4:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        questionAnsweredflag=true;
			       });
		       	       
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues;
		       //  optionChecksValues = [];
		         optionChecksValues=seclectedmatrix;
		    		oc=0;
				
				}
			
			
		}
      //updating answer to question
     jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].answer= optionChecksValues;
     return questionAnsweredflag;

}
function updateAnstoJsonForDisable()
{
	var oc = 0;
 	var optionChecksValues = [];
 	var seclectedmatrix="";
 	var questionAnsweredflag= false;
 	var typeofQuestion=jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
	if( typeofQuestion!="Integer" && typeofQuestion!="Matrix")
    {  

       $('.optionChecks:checked').each(function () {
        optionChecksValues[oc++] = $(this).val();
         $(this).attr('disabled', 'disabled');
        questionAnsweredflag= true;
      });
     optionChecksValues = optionChecksValues.join(',');
      
		
	}else 
		{
			if( typeofQuestion=="Integer" )
				{
				optionChecksValues=$('.intdispscreen').html();
				if(optionChecksValues!="")
					questionAnsweredflag=true;
				}
			else
				{
				optionChecksValues = [];
	    		oc=0;
		       $('.optionChecks1:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        optionChecksValues[oc++] = $(this).prop('disabled', true);
			        questionAnsweredflag=true;
			       });
		         optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		       $('.optionChecks2:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        optionChecksValues[oc++] = $(this).prop('disabled', true);
			        questionAnsweredflag=true;
			       });
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		     //  optionChecksValues = optionChecksValues.join(',');
		       $('.optionChecks3:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        optionChecksValues[oc++] = $(this).prop('disabled', true);
			        questionAnsweredflag=true;
			       });
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues+"|";
		         optionChecksValues = [];
		    		oc=0;
		      // optionChecksValues = optionChecksValues.join(',');
		       $('.optionChecks4:checked').each(function () {
			        optionChecksValues[oc++] = $(this).val();
			        optionChecksValues[oc++] = $(this).prop('disabled', true);
			        questionAnsweredflag=true;
			       });
		       	       
		       optionChecksValues = optionChecksValues.join(',');
		         seclectedmatrix+= optionChecksValues;
		       //  optionChecksValues = [];
		         optionChecksValues=seclectedmatrix;
		    		oc=0;
				
				}
			
			
		}
      //updating answer to question
     jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].answer= optionChecksValues;
     return questionAnsweredflag;

}
//save and next button
	function increment(){
		 //var questionAnsweredflag=  updateAnstoJson();
		 
		  //updateAnstoJson();
		  var questionAnsweredflag=  updateAnstoJson();
		  uncheckAllCheck_Radio_btns();
		  updateScreen("");
		  var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
		    if(questionAnsweredflag){
		     updatequestStatusFlags(prevflag,1); //answered
		    }
		    else{
		    	updatequestStatusFlags(prevflag,2);
		    }
		    
		    var quesSerialSubjectNum = jsondata.subjectslist[currentsubjectno].subjectId;
			var quesSerialNum = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId;
			var questionId = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionId;
			var examId = jsondata.examTypeId;
			var questType = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
			var quesSerialNumAnswer = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].answer;
			var comprehensionId = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].comprehensionId;
				if(quesSerialNumAnswer != "" && quesSerialNum === jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId 
						&& questType === "Single correct" || questType === "Comprehension"
					|| questType === "Multi correct"|| questType ==="Multi Comprehension" || questType ==="Integer" || questType ==="Matrix"){
					  for(var sNoExit in submitQuestionsCart){
						  if(submitQuestionsCart[sNoExit].QuSerialNum === quesSerialNum){
							  console.log("Already Exist" + quesSerialNum);
							  questDisplay();
							  seralNoColor();
							  disableSubmit();
							  return;
						  }
					  }
						var submitQ = new Submit(quesSerialNumAnswer, questType, quesSerialNum, quesSerialSubjectNum, questionId, true); 
						var submitQserNum = new SerQno(quesSerialNum);
						submitQuestionsCart.push(submitQ);
						studSubQuesSer.push(submitQserNum);
				}
				disableSubmit();
				indexColr = new IndexColor(quesSerialNum, false);
				rightWrongColor.push(indexColr);
		 
	     questDisplay();
	     seralNoColor();
	}
	
	function submitt(){
		
		
		 jsondata.studentId =  atob(getParameterByName('studentid'));
		 jsondata.source ="web";
		 var missed = getParameterByName('missed');
		 if(missed !== "" && missed !==null&& missed !== undefined){
		 jsondata.fromMissed = true;
		 }
		
		var id = getParameterByName('id');
		var examtype = atob(getParameterByName('examType'));
		
		var inputData;
		inputData = JSON.stringify(jsondata);
		 $("#disableafter").attr("disabled", "disabled" );
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/student/v1/submitTest',
			  data: inputData,
			  success: function(data){
				//alert('You have submitted the test successfully.');
				  var stuname = sessionStorage.getItem("stdname");
				  
				  alertify.alert('Hey,'+stuname+' ! <br>You have submitted the test successfully',function (e) {
						if (e) {
							window.location =base_url + 'jsp/student/dailyscoope/dailyscoop.jsp?eid='+examtype;
						
						} else {
							alertify.error("You've clicked Cancel");
						}
					});

			  },
			  error: function(data) {	
				  $("#disableafter").removeAttr("disabled");
				 alert('something went wrong');
			  }
			  
		});
	}
	
	updateScreen = function(displayValue) {
		if(displayValue=="")
			currentEntry='';
		  var displayValue = displayValue.toString();
		  $('.intdispscreen').html(displayValue.substring(0, 10));
		};

		isNumber = function(value) {
		  return !isNaN(value);
		}
		
		  var prevEntry = 0;
		  var operation = null;
		  var currentEntry = '';
   //integer type keyboard key press event
$('.button').on('click', function(evt) {
		    var buttonPressed = $(this).html();
		    console.log(buttonPressed);
		    
		    if (buttonPressed === "Clear All") {
		     // result = 0;
		      currentEntry = '';
		    } else if (buttonPressed === "backspace") {
		      currentEntry = currentEntry.substring(0, currentEntry.length-1);
		    } else if (buttonPressed === '-') {
		    	if(($('.intdispscreen').html() == "") ||($('.intdispscreen').html() == null))	{
		    		      currentEntry += '-';}
		    } else if (buttonPressed === '.') {
		      currentEntry += '.';
		    } else if (isNumber(buttonPressed)) {
		      if (currentEntry === '0') currentEntry = buttonPressed;
		      else currentEntry = currentEntry + buttonPressed;
		    } else if (isOperator(buttonPressed)) {
		      prevEntry = parseFloat(currentEntry);
		      operation = buttonPressed;
		      currentEntry = '';
		    } 
		    updateScreen(currentEntry);
		  });	
			
	
	function updatereconformscreen()
	{
		//updating last displayed question ans and status before submiting
		 var questionAnsweredflag=  updateAnstoJson();
		 
	      //updating question status
	     var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag)
	     updatequestStatusFlags(prevflag,1); //answered
	    else
	    	updatequestStatusFlags(prevflag,2);
	   ////////////
		
		
		 $("#screentestpage").addClass("hidediv");
         $("#summerypage").removeClass("hidediv");
		    $("body").removeClass("fullscreen");
		examscreenON= false;
		var totAns=0;
		var totunAns=0;
		var totnotvisited=0;
		var totreview=0;
		var totAnsreview=0;
		
		var displaytable="<table class='table table-responsive table-fixed'><tbody id='tbody'><tr id='tr'> <td id='td' colspan='2'>";
		    displaytable += " <div class='padd'><span id='timercountsubmitpg'></span></div> </td> </tr>";
		 //   jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno]
		    for ( var i=0; i < jsondata.subjectslist.length; ++ i)
		    	{
		    	 for(var j=0;j<jsondata.subjectslist[i].sectionlist.length; ++j)
				 {
		    		 
		    		    var secAns=jsondata.subjectslist[i].sectionlist[j].answeredCount;
		    			var secunAns=jsondata.subjectslist[i].sectionlist[j].notAnsweredCount;
		    			var secnotvisited=jsondata.subjectslist[i].sectionlist[j].notVisitedCount;
		    			var secreview=jsondata.subjectslist[i].sectionlist[j].markedForReviewCount;
		    			var secAnsreview=jsondata.subjectslist[i].sectionlist[j].answeredAndMarkedForReviewCount;
		    		 	 
		    			 totAns +=secAns;
		    			 totunAns+=secunAns;
		    			 totnotvisited+=secnotvisited;
		    			 totreview+=secreview;
		    			 totAnsreview+=secAnsreview;

		    			 if(jsondata.subjectslist[i].sectionlist[j].section !=""){
		    				  displaytable += " <tr id='tr' class='tr1'><td id='td' class='td1' rowspan='2'>"+jsondata.subjectslist[i].sectionlist[j].section+"</td>";
		    			 }else{
		    				  displaytable += " <tr id='tr' class='tr1'><td id='td' class='td1' rowspan='2'>"+ jsondata.subjectslist[i].subject+"</td>";
		    			 }
		  
		    displaytable += "<td id='td'>";
		    displaytable += " <div class='row'>";
		    displaytable += " <div class='col-md-1'></div>";
		    displaytable += " <div class='col-md-2'><img src='"+base_url+"/assets/images/exam/answered.png' alt=''><span class='centerText'>"+secAns+"</span></div>";
		    displaytable += "<div class='col-md-2'><img src='"+base_url+"assets/images/exam/unanswered.png' alt=''><span class='centerText'>"+secunAns+"</span></div>";
		    displaytable += "<div class='col-md-2'><img src='"+base_url+"/assets/images/exam/notvisited.png' alt=''><span class='centerText'>"+secnotvisited+"</span></div>";
		    displaytable += "<div class='col-md-2'><img src='"+base_url+"assets/images/exam/review.png' alt=''><span class='centerText'>"+secreview+"</span></div>";
		    displaytable += "<div class='col-md-2'><img src='"+base_url+"assets/images/exam/ansreview.png' alt=''><span class='centerText'>"+secAnsreview+"</span></div>";
		    displaytable += "<div class='col-md-1'></div> </div> </td> </tr><tr>";
		    
		    	}
		    	}
		    
		    
		    
		    
		    displaytable += " </tbody></table>";
		$("#displaytable").empty();
		$("#displaytable").append(displaytable);
		
		
		
	//updating totals	
		$("#totAns").empty();
		$("#totAns").append(totAns);
		$("#totunAns").empty();
		$("#totunAns").append(totunAns);
		$("#totnotvisited").empty();
		$("#totnotvisited").append(totnotvisited);
		$("#totreview").empty();
		$("#totreview").append(totreview);
		$("#totAnsreview").empty();
		$("#totAnsreview").append(totAnsreview);
		 
		 
	//alert(" conform screen");

	}
	
	

	//aravind timer functionality
	if(!countDownDate && countDownDate != null && countDownDate != undefined ){
		 var examtime= parseInt(jsondata.time);// in minutes
			countDownDate = addMinutes(new Date(),examtime);
	}else{
	countDownDate = addMinutes(new Date(),120);
	}
	var examscreenON= true;
	var pausedtime=0;
	//Update the count down every 1 second
	var x = setInterval(function() {
		if(qestionsloaded)
		{

		if(!pausetimerflag)
	    {
	 // Get todays date and time
	 var now = new Date().getTime();
	 
	 // Find the distance between now and the count down date
	 var distance = (countDownDate) - now;
	 //console.log("seconds = "+distance);
	 // Time calculations for days, hours, minutes and seconds
	 var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	 var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	 var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	 var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	 
	 // Output the result in an element with id="demo"
	 //if(examscreenON){
	 document.getElementById("timercount").innerHTML =  hours + ":"
	 + minutes + ":" + seconds;
	 //}else
		// {
	    if(jsondata.subjectslist!== undefined)
	    	{
	   
	      jsondata.timeSpent+=1;// updating time spent on exam( including spent on submit screen)
	    if(!examscreenON){
		      document.getElementById("timercountsubmitpg").innerHTML = "Time-left : "+hours + ":"+ minutes + ":" + seconds;
		 }else
			 {
			 jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionWiseTimeSpent +=1;
			   jsondata.subjectslist[currentsubjectno].timeSpentonsub +=1;  //aravind
               //updating time spent on each section of subject ( excluding  time spen on submit screen)
			   jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].timeSpentonsec +=1;
		      }
	    	}
	 // If the count down is over, write some text 
	 if (distance <= 0) {
			 jsondata.timeSpent -=1;
	     clearInterval(x);
	     document.getElementById("timercount").innerHTML = "Time Over";
	    
	   $('#backtoscreen').attr("disabled","disabled");
	   submitt();
	   
	      // updatereconformscreen();
	     //document.getElementById("timercountsubmitpg").innerHTML = "Time Over";
			
	 }
	    }else
	    	{
	    	pausedtime++;
	    	
	    	}
		}
	}, 1000);

	function addMinutes(date, minutes) {
	 return new Date(date.getTime() + minutes*60000);
	}
	function addseconds(date, seconds) {
		 return new Date(date.getTime() + seconds*1000);
		}
	var pausetimerflag=false;
	function resumetimerflag()
	{
		countDownDate = addseconds( countDownDate,pausedtime);
		pausedtime=0;
		//x.pause();
		pausetimerflag= false;
		examscreenON=true;
	}
	function pauseTimer()
	{
		//x.resume();
		if(!pausetimerflag)
		{
		pausetimerflag= true;
		pausedtime=0;
	    }
	}
	
	
	
	
	
	function getsectionwiseques(elem){
		
	var subject = $(elem).attr('data-id');
	var appendqqq="";
	 $(".backgroundpopup").css({ 'background-color' : '', 'color' : '' });
	 var selectedcolor = $(elem).attr('id');
		//alert(id);
		$('#'+selectedcolor).css("background", "#8975c9");
		//$('#'+a).css("color", "red");
		$('#'+selectedcolor).css("color", "white");
		

		var res = subject.split("_");
		var subjectno= parseInt(res[0]);
	var	sectionno = parseInt(res[1]);
	if(sectionno !="" ){
		var questions =  jsondata.subjectslist[subjectno].sectionlist[sectionno].questionlist;
	}else{
		var questions =  jsondata.subjectslist[subjectno].sectionlist[0].questionlist;
	}
	

for(var j=0; j < questions.length; j++){ 
	if(questions[j].type =="Multi correct" ||questions[j].type =="Single correct"){

	 appendqqq += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
	   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span style='color: #FF4043;'>"+questions[j].title+"</span></label></div>"+
	     "<div class='col-md-12'>";
	 var options = questions[j].optionlist;
	
	 appendqqq +=   "<label><span>A : </span></label><label><span style='color: #00BA85;'>"+options[0].option+"</span></label></div>"+
	"<div class='col-md-12'>"+
	    "<label><span>B : </span></label><label><span style='color: #00BA85;'>"+options[1].option+"</span></label>"+

	"</div><div class='col-md-12'>"+
	    "<label><span>C : </span></label><label><span style='color: #00BA85;'>"+options[2].option+"</span></label>"+

	"</div><div class='col-md-12'>"+
	    "<label><span>D : </span></label><label><span style='color: #00BA85;'>"+options[3].option+"</span></label>"+
  "</div></div></div>";
	}else if(questions[j].type =="Integer" || questions[j].type =="Matrix"){
		 appendqqq += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
		   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span style='color: #FF4043;'>"+questions[j].title+"</span></label></div>"+
		     "</div'>";
	}else{
                    if(j > 0){

		if(questions[j].questionId != questions[j-1].questionId){
			appendqqq +="<div class='col-md-12'><div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+questions[j].passage+"</p></b></div></div></div>";
		}
}
		else{

appendqqq +="<div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+questions[j].passage+"</p></b></div></div>";
		
}

		 appendqqq += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
		   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span style='color: #FF4043;'>"+questions[j].title+"</span></label></div>"+
		     "<div class='col-md-12'>";
		 var options = questions[j].optionlist;
		
		 appendqqq +=   "<label><span>A : </span></label><label><span style='color: #00BA85;'>"+options[0].option+"</span></label></div>"+
		"<div class='col-md-12'>"+
		    "<label><span>B : </span></label><label><span style='color: #00BA85;'>"+options[1].option+"</span></label>"+

		"</div><div class='col-md-12'>"+
		    "<label><span>C : </span></label><label><span style='color: #00BA85;'>"+options[2].option+"</span></label>"+

		"</div><div class='col-md-12'>"+
		    "<label><span>D : </span></label><label><span style='color: #00BA85;'>"+options[3].option+"</span></label>"+
	  "</div></div></div>";
	}
}
$("#mainsection").empty();
$("#mainsection").append(appendqqq);
rendereelemntforkatext();
}
	
/*function instruction(elem){
	var inst = $(elem).attr('data-id');
	
	$("#instques").empty();
	$("#instques").append(inst);
	 $('#qinst').modal({
	        show: true
	 });
	}*/
 //jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[j].questionserialId;	
function getquestionWiseOptions(elem){
	
	var id = $(elem).attr('data-id');
	var type = $(elem).attr('data-type');
	var questionAnsweredflag=  updateAnstoJson();
	  uncheckAllCheck_Radio_btns();
	  updateScreen("");
	  var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag){
	     updatequestStatusFlags(prevflag,1); //answered
	    }
	    else{
	    	updatequestStatusFlags(prevflag,2);
	    }
	    questDisplay(id,type);
	    //disableSubmit();
        seralNoColor();
}

var submitQuestionsCart = [];

var Submit = function(optionSelected, type, QuSerialNum, subjectName, questionId, status){
	this.optionSelected = optionSelected
	this.type = type
	this.QuSerialNum = QuSerialNum
	this.subjectName = subjectName
	this.questionId = questionId
	this.status = status
}
var studSubQuesSer = [];
var SerQno = function(QueSeqNum){
	this.QueSeqNum = QueSeqNum
} 
var serverQwiseAns = [];
var Details = function(answer, sNo, qusId,questType ,solution, tSACorrectly, tSAttended){
	this.answer = answer
	this.sNo = sNo
	this.qusId = qusId
	this.questType = questType
	this.solution = solution
	this.tSACorrectly = tSACorrectly
	this.tSAttended = tSAttended
}
var rightWrongColor = [];
var IndexColor = function(serialNo, status){
	this.serialNo = serialNo
	this.status = status
}
var indexNs = [];
var NumIndex = function(no){
	this.no = no
}
function wrgCrt(forCorrectAnsandWrng, sno){
	var forCrt = forCorrectAnsandWrng;
	var sno = sno;
	var indexColr ="";
	var QsA = [];
	if(rightWrongColor.length > 0 ){
		console.log(indexNs.includes(sno));
		if(!indexNs.includes(sno)){
			for(var i in indexNs){
				if(indexNs[i].no == sno){
				  return;
			    }
			}
			if(forCorrectAnsandWrng == "forCorrectAns" ){
				  indexColr = new IndexColor(sno, true);
				  rightWrongColor.push(indexColr);
				  var inn = new NumIndex(sno);
				  indexNs.push(inn);
			}else if(forCorrectAnsandWrng == "forWrongAns" ){
				indexColr = new IndexColor(sno, false);
				  rightWrongColor.push(indexColr);
				  var inn = new NumIndex(sno);
				  indexNs.push(inn);
			}
			
		}else{
			console.log("there")
		}
		
	} else if(rightWrongColor.length == 0){
		if(forCorrectAnsandWrng == "forCorrectAns"){
			  indexColr = new IndexColor(sno, true);
			  rightWrongColor.push(indexColr);
			  var inn = new NumIndex(sno);
			  indexNs.push(inn);
		}else{
			indexColr = new IndexColor(sno, false);
			  rightWrongColor.push(indexColr);
			  var inn = new NumIndex(sno);
			  indexNs.push(inn);
		}
	}
	
}
function seralNoColor(){
	if(rightWrongColor.length > 0 ){
	for(var sn in rightWrongColor){
		if(rightWrongColor[sn].status === true){
			$(".notanswered"+rightWrongColor[sn].serialNo).removeClass("question_not_answered question_wrongs_answered").addClass("question_corrects_answered");
		}else if(rightWrongColor[sn].status === false){
			$(".notanswered"+rightWrongColor[sn].serialNo).removeClass("question_not_answered question_corrects_answered").addClass("question_wrongs_answered");
		}else{
			
		}
	}
   }
}

// use function for correct wrong and also colors red and green
function SubmitOptionExist(val,sno, qId, questType){
	var quesSerialNum = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId;
	var QsA = [];
	var serverAns = "T";
	var questTyp = questType;
	/*var BB = "B";*/
	//var ServerintergerBB = ["111","222"];
	//var serverAnswers = [];
	//var MulBB = ["B","D"];
	//var serverMatrix = "P,Q|R,S|T,P|Q,R";
	//var servMatrix = serverMatrix.split("|");
	var sno = sno;
	var qId = qId;
	if(typeof val !== "undefined"){
		var dataS = val;
		var solution = dataS[0].solution;
		var totStuAnsCorrect = dataS[0].totalStudentsAnsweredCorrectly;
		var totStuAttended = dataS[0].totalStudentsAttended;
		if(questTyp =="Single correct" || questTyp == "Comprehension"){
			var BB = dataS[0].answer;
			var qusDetails = new Details(BB, sno, qId, questTyp, solution, totStuAnsCorrect, totStuAttended);
		}else if(questTyp =="Integer"){
			var ServerintergerBB = dataS[0].answer;
			var qusDetails = new Details(ServerintergerBB, sno, qId, questTyp, solution, totStuAnsCorrect, totStuAttended);
		}else if(questTyp =="Multi correct" || questTyp == "Multi Comprehension"){
			var MulBB = dataS[0].answer;
			var qusDetails = new Details(MulBB, sno, qId, questTyp, solution, totStuAnsCorrect, totStuAttended);
		}else if(questTyp =="Matrix"){
			//var serverMatrix = "P,Q|R,S|T,P|Q,R";
			var serverMatrix = dataS[0].answer;
			var servMatrix = serverMatrix.split("|");
			var qusDetails = new Details(servMatrix, sno, qId, questTyp, solution, totStuAnsCorrect, totStuAttended);
		}
		serverQwiseAns.push(qusDetails);
	}else{
		for(var sa=0;sa <serverQwiseAns.length; sa++){
			if(serverQwiseAns[sa].sNo == quesSerialNum && serverQwiseAns[sa].questType == "Single correct" || serverQwiseAns[sa].questType == "Comprehension"){
				var BB = serverQwiseAns[sa].answer;
			}else if(serverQwiseAns[sa].sNo == quesSerialNum && serverQwiseAns[sa].questType == "Integer"){
				var ServerintergerBB = serverQwiseAns[sa].answer;
			}else if(serverQwiseAns[sa].sNo == quesSerialNum && serverQwiseAns[sa].questType == "Multi correct" || serverQwiseAns[sa].questType == "Multi Comprehension"){
				var MulBB = serverQwiseAns[sa].answer;
			}else if(serverQwiseAns[sa].sNo == quesSerialNum && serverQwiseAns[sa].questType == "Matrix"){
				var servMatrix = serverQwiseAns[sa].answer;
			}
		}
	}
	//integer and singlecorrect & compre
	
	
	
	for(var i = 0;i < submitQuestionsCart.length; i++){
		  QsA.push(submitQuestionsCart[i].QuSerialNum);
		  //if serial number not there
		if(QsA.indexOf(quesSerialNum) < 0 ){
			//for Single correct radio
			$("#optvalAr, #optvalA").prop("disabled", false);
			//$("#optvalAr").parent().removeClass('forCorrectAns');
			$("#optvalBr, #optvalB").prop("disabled", false);
			$("#optvalCr, #optvalC").prop("disabled", false);
			//$("#optvalCr").parent().removeClass('forWrongAns');
			$("#optvalDr, #optvalD").prop("disabled", false);
			$("#optionspanelB .flexer .optionChecks").parent().removeClass('forCorrectAns');
			$("#optionspanelA .flexer .optionChecks").parent().removeClass('forCorrectAns');
			$("#optionspanelB .flexer .optionChecks").parent().removeClass('forWrongAns');
			$("#optionspanelA .flexer .optionChecks").parent().removeClass('forWrongAns');
			$(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").prop("disabled", false);
			$(".intdispscreen").removeClass('integerbgcorrect');
			$(".intdispscreen").removeClass('integerbgwrong');
			updateScreen("");
			$(".calc-row .button").removeClass("disablelink");
			/*$("#optionspanelB .flexer .optionChecks").each(function(){
				if($(this).val() === submitQuestionsCart[i].optionSelected){
					$(this).parent().removeClass('forCorrectAns');
				}
			});*/
			//for multi correct checkbox
			
		}else{
			//for Single correct radio
			$("#optvalAr, #optvalA").prop("disabled", true);
			//$("#optvalAr").parent().addClass('forCorrectAns');
			$("#optvalBr, #optvalB").prop("disabled", true);
			$("#optvalCr, #optvalC").prop("disabled", true);
			//$("#optvalCr").parent().addClass('forWrongAns');
			$("#optvalDr, #optvalD").prop("disabled", true);
			$(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").prop("disabled", true);
			//integer
			if(submitQuestionsCart[i].type === "Integer"){
				var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
			if(submitQuestionsCart[i].QuSerialNum === quesSerialNum && submitQuestionsCart[i].optionSelected == Math.ceil(ServerintergerBB)){
				$(".intdispscreen").html(submitQuestionsCart[i].optionSelected);
				$(".intdispscreen").removeClass('integerbgwrong');
				$(".intdispscreen").addClass('integerbgcorrect');
				$(".calc-row .button").addClass("disablelink");
				if( valQue === quesSerialNum)
					$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
				wrgCrt("forCorrectAns", quesSerialNum);
			}else if(submitQuestionsCart[i].QuSerialNum === quesSerialNum && submitQuestionsCart[i].optionSelected != Math.ceil(ServerintergerBB)){
				$(".intdispscreen").html(submitQuestionsCart[i].optionSelected);
				$(".intdispscreen").removeClass('integerbgcorrect');
				$(".intdispscreen").addClass('integerbgwrong');
				$(".calc-row .button").addClass("disablelink");
				if( valQue === quesSerialNum)
					$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
				wrgCrt("forWrongAns", quesSerialNum);
			}else{
				
			}
		}//radio
			if( submitQuestionsCart[i].QuSerialNum === quesSerialNum && submitQuestionsCart[i].type == "Single correct" || submitQuestionsCart[i].type == "Comprehension"){
			$("#optionspanelB .flexer .optionChecks").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					//console.log($(this).val());
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					//submitQuestionsCart[i].optionSelected == BB
					if($(this).val() == submitQuestionsCart[i].optionSelected && submitQuestionsCart[i].QuSerialNum == quesSerialNum && submitQuestionsCart[i].optionSelected == BB){
						$(this).parent().addClass('forCorrectAns');
						if( valQue === quesSerialNum)
							$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
					}else if($(this).val() == BB ){
						$(this).parent().addClass('forCorrectAns');
						//console.log("Not There ");
					}else if($(this).val() == submitQuestionsCart[i].optionSelected && submitQuestionsCart[i].QuSerialNum == quesSerialNum && submitQuestionsCart[i].optionSelected != BB){
						$(this).parent().addClass('forWrongAns');
						    wrgCrt("forWrongAns", quesSerialNum);
						//18-09-2019 
						if( valQue === quesSerialNum)
							$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
					     }
					}
				/*if(valQue === quesSerialNum && !$(".notanswered"+quesSerialNum).hasClass("question_wrongs_answered")){
				     $(this).removeClass("question_not_answered").addClass("question_corrects_answered");
				}*/
				//17-04-2019 stopped here for serial no color
			})
			wrgCrt("forCorrectAns", quesSerialNum);
			
			//18-09-2019
		}//multi
			if(submitQuestionsCart[i].QuSerialNum === quesSerialNum && submitQuestionsCart[i].type == "Multi correct" || submitQuestionsCart[i].type == "Multi Comprehension"){
			$("#optionspanelA .flexer .optionChecks").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					//console.log("Multi its There ");
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					var optionCheckMulti = submitQuestionsCart[i].optionSelected;
					var optionCheckBox = optionCheckMulti.split(",");
					for(var cb=0;cb<optionCheckBox.length;cb++){
						var thisval = $(this).val();
						if($(this).val() == optionCheckBox[cb] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && MulBB.indexOf(optionCheckBox[cb]) == 0){
							$(this).parent().addClass('forCorrectAns');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
						}else if(MulBB.indexOf(thisval) != -1 ){
							$(this).parent().addClass('forCorrectAns');
							/*$(this).parent().addClass('forWrongAns');*/
						}/*else if(MulBB.indexOf(optionCheckBox[cb]) != -1){
							wrgCrt("forWrongAns", quesSerialNum);
						}*/else if($(this).val() == optionCheckBox[cb] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && MulBB.indexOf(optionCheckBox[cb]) < 0){
							$(this).parent().addClass('forWrongAns');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
							wrgCrt("forWrongAns", quesSerialNum);
							
						}else{
							var mulbb = MulBB.split(",");
							for(var mb =0; mb<mulbb.length;mb++){
								if(optionCheckBox.includes(mulbb[mb])){
									
								}else{
									if( valQue === quesSerialNum)
										$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
									wrgCrt("forWrongAns", quesSerialNum);
								}
							}
						}
					}
				}else{
					//console.log("Not There ");
				}
			})
			wrgCrt("forCorrectAns", quesSerialNum);
		}
			//for matrix correct checkbox
			
			if(submitQuestionsCart[i].type == "Matrix" && submitQuestionsCart[i].QuSerialNum === quesSerialNum){
				var optionCheckMultiMatrix = submitQuestionsCart[i].optionSelected;
				//optionCheckMultiMatrix = optionCheckMultiMatrix.replace(/\|/g, "*");
				var rowPipe = optionCheckMultiMatrix.split("|");
				var optionCheckBoxMatrix = optionCheckMultiMatrix.split(",");
			$(".optionChecks1").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					//console.log("Multi its There ");
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					var row1Mat = rowPipe[0].split(",");
					var matxSplit = servMatrix[0].split(",");
					for(var mx=0;mx<row1Mat.length;mx++){
						var matxVal = $(this).val();
						if($(this).val() === row1Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row1Mat[mx]) == 0){
//							/$(this).attr("checked",true);
							$(this).parent().addClass('forCorrectAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
						}else if(matxSplit.indexOf(matxVal) != -1){
							$(this).parent().addClass('forCorrectAnsMatrix');
						}else if($(this).val() === row1Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row1Mat[mx]) < 0){
							$(this).parent().addClass('forWrongAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
							wrgCrt("forWrongAns", quesSerialNum);
						}else {
							
							//var mulbb = MulBB.split(",");
							for(var mb =0; mb<matxSplit.length;mb++){
								if(row1Mat.includes(matxSplit[mb])){
									
								}else{
									if( valQue === quesSerialNum)
										$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
									wrgCrt("forWrongAns", quesSerialNum);
								}
							}
						}
					}
				}
			})
			$(".optionChecks2").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					//console.log("Multi its There ");
					var row2Mat = rowPipe[1].split(",");
					var matxSplit = servMatrix[1].split(",");
					for(var mx=0;mx<row2Mat.length;mx++){
						var matxVal2 =$(this).val();
						if($(this).val() === row2Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row2Mat[mx]) == 0){
							$(this).parent().addClass('forCorrectAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
						}else if(matxSplit.indexOf(matxVal2) != -1){
							$(this).parent().addClass('forCorrectAnsMatrix');
						}else if($(this).val() === row2Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row2Mat[mx]) < 0){
							$(this).parent().addClass('forWrongAnsMatrix');
							wrgCrt("forWrongAns", quesSerialNum);
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
						}else{
							for(var mb =0; mb<matxSplit.length;mb++){
								if(row2Mat.includes(matxSplit[mb])){
									
								}else{
									if( valQue === quesSerialNum)
										$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
									wrgCrt("forWrongAns", quesSerialNum);
								}
							}
						}
					}
				}
			})
			$(".optionChecks3").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					//console.log("Multi its There ");
					var row3Mat = rowPipe[2].split(",");
					var matxSplit = servMatrix[2].split(",");
					for(var mx=0;mx<row3Mat.length;mx++){
						var matxVal3 = $(this).val();
						if($(this).val() ===row3Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row3Mat[mx]) == 0){
							$(this).parent().addClass('forCorrectAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
						}else if(matxSplit.indexOf(matxVal3) != -1){
							$(this).parent().addClass('forCorrectAnsMatrix');
						}else if($(this).val() === row3Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row3Mat[mx]) < 0){
							$(this).parent().addClass('forWrongAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
							wrgCrt("forWrongAns", quesSerialNum);
						}else{
							for(var mb =0; mb<matxSplit.length;mb++){
								if(row3Mat.includes(matxSplit[mb])){
									
								}else{
									if( valQue === quesSerialNum)
										$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
									wrgCrt("forWrongAns", quesSerialNum);
								}
							}
						}
					}
				}
			})
			$(".optionChecks4").each(function(){
				if(studSubQuesSer.indexOf(quesSerialNum) < 0 ){
					var valQue = parseInt($(".notanswered"+quesSerialNum).text().trim());
					//console.log("Multi its There ");
					var row4Mat = rowPipe[3].split(",");
					var matxSplit = servMatrix[3].split(",");
					for(var mx=0;mx<row4Mat.length;mx++){
						var matxVal4 =$(this).val();
						if($(this).val() === row4Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row4Mat[mx]) == 0){
							$(this).parent().addClass('forCorrectAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_not_answered").addClass("question_corrects_answered");
						}else if(matxSplit.indexOf(matxVal4) != -1){
							$(this).parent().addClass('forCorrectAnsMatrix');
						}else if($(this).val() === row4Mat[mx] && submitQuestionsCart[i].QuSerialNum == quesSerialNum && matxSplit.indexOf(row4Mat[mx]) < 0){
							$(this).parent().addClass('forWrongAnsMatrix');
							if( valQue === quesSerialNum)
								$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
							wrgCrt("forWrongAns", quesSerialNum);
						}else{
							for(var mb =0; mb<matxSplit.length;mb++){
								if(row4Mat.includes(matxSplit[mb])){
									
								}else{
									if( valQue === quesSerialNum)
										$(".notanswered"+quesSerialNum).removeClass("question_corrects_answered question_not_answered").addClass("question_wrongs_answered");
									wrgCrt("forWrongAns", quesSerialNum);
								}
							}
						}
					}
				}
			})
			wrgCrt("forCorrectAns", quesSerialNum);
	      } 
		}
	}
}
function submitSingleQues(){
	
	
	var quesSerialNum = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId;
	var questionId = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionId;
	var examId = jsondata.examTypeId;
	var questType = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
	var quesSerialNumAnswer = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].answer;
	var comprehensionId = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].comprehensionId;
		if(quesSerialNumAnswer != "" && quesSerialNum === jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId 
				&& questType === "Single correct" || questType === "Comprehension"
			|| questType === "Multi correct"|| questType ==="Multi Comprehension" || questType ==="Integer" || questType ==="Matrix"){
			  for(var sNoExit in submitQuestionsCart){
				  if(submitQuestionsCart[sNoExit].QuSerialNum === quesSerialNum){
					  console.log("Already Exist" + quesSerialNum);
					  return;
				  }
			  }
				var submitQ = new Submit(quesSerialNumAnswer, questType, quesSerialNum, quesSerialSubjectNum, questionId, true); 
				var submitQserNum = new SerQno(quesSerialNum);
				submitQuestionsCart.push(submitQ);
				studSubQuesSer.push(submitQserNum);
		}
		
		 var questionAnsweredflag=  updateAnstoJson();
		  uncheckAllCheck_Radio_btns();
	     updateScreen("");
	      //updating answer to question
	     var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag)
	     updatequestStatusFlags(prevflag,1); //answered
	    else
	    	updatequestStatusFlags(prevflag,2);
	  
	     questDisplay();
	    
	    // getquestionWiseOptions();
	     
	   
//		6-june
	/*	var	examtypeId =  examId;
		var	questionId = questionId;
		var	studentAnswer = quesSerialNumAnswer;
		if(comprehensionId != 0 || comprehensionId != 0){
			var comprehensionQuestion = comprehensionId;
		}else{
			var comprehensionQuestion = 0;
		}
		var inputData = {
				"questionId":questionId,
				"comprehensionQuestionId":comprehensionId,
				"studentAnswer":studentAnswer,
				"examtypeId":examtypeId
				}
		var outputData = JSON.stringify(inputData);
		$.ajax({
			url : base_url+'rest/student/checkQuestion2',
			type: "POST",
			dataType:"json",
			contentType:'application/json',
			data:outputData,
			success:function(data){
				SubmitOptionExist(data,quesSerialNum,questionId,questType);
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
			
		})*/
		
//		6-june
		//SubmitOptionExist();
		/*console.log({quesSerialSubjectNum, quesSerialNum, quesSerialNumAnswer});
		console.log(submitQuestionsCart);
		console.log(studSubQuesSer);
		console.log(rightWrongColor);*/
		
}

function highlight(){
	var quesSerialNum = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId;
	var bg = $(".bgClass");
	
		for(var i=0;i<bg.length;i++){
			bg[i].classList.remove("chatbg");
		}
		$(".serialid"+quesSerialNum).addClass("chatbg");
	
}


///
function disableSubmit(){/*
	var quesSerialNum = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionserialId;
	var QsA = [];
	for(var i = 0;i < submitQuestionsCart.length; i++){
		  QsA.push(submitQuestionsCart[i].QuSerialNum);
		  //if serial number not there
		if(QsA.indexOf(quesSerialNum) < 0 ){
			//for Single correct radio
			$("#optvalAr, #optvalA").prop("disabled", false);
			//$("#optvalAr").parent().removeClass('forCorrectAns');
			$("#optvalBr, #optvalB").prop("disabled", false);
			$("#optvalCr, #optvalC").prop("disabled", false);
			//$("#optvalCr").parent().removeClass('forWrongAns');
			$("#optvalDr, #optvalD").prop("disabled", false);
			$("#optionspanelB .flexer .optionChecks").parent().removeClass('forCorrectAns');
			$("#optionspanelA .flexer .optionChecks").parent().removeClass('forCorrectAns');
			$("#optionspanelB .flexer .optionChecks").parent().removeClass('forWrongAns');
			$("#optionspanelA .flexer .optionChecks").parent().removeClass('forWrongAns');
			$(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").prop("disabled", false);
			$(".intdispscreen").removeClass('integerbgcorrect');
			$(".intdispscreen").removeClass('integerbgwrong');
			updateScreen("");
			$(".calc-row .button").removeClass("disablelink");
			
		}else{
			//for Single correct radio
			$("#optvalAr, #optvalA").prop("disabled", true);
			//$("#optvalAr").parent().addClass('forCorrectAns');
			$("#optvalBr, #optvalB").prop("disabled", true);
			$("#optvalCr, #optvalC").prop("disabled", true);
			//$("#optvalCr").parent().addClass('forWrongAns');
			$("#optvalDr, #optvalD").prop("disabled", true);
			$(".optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4").prop("disabled", true);
			if(quesSerialNum === submitQuestionsCart[i].QuSerialNum){
				$(".intdispscreen").html(submitQuestionsCart[i].optionSelected);
			}
			$(".calc-row .button").addClass("disablelink");
			
			
		}
	}
*/
	console.log("disable comment");
	}
function incrementskip(){
	 var questionAnsweredflag=  updateAnstoJson();
	  uncheckAllCheck_Radio_btns();
	  updateScreen("");
	  var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag){
	     updatequestStatusFlags(prevflag,1); //answered
	    }
	    else{
	    	updatequestStatusFlags(prevflag,2);
	    }
	    
	     questDisplay();
	     seralNoColor();
}
/////

function firstActive() {
    setTimeout(function(){ 
    	$("#questionLestList a:first-child").addClass("chatbg");
    	 //alert("loaded");
    }, 4000);
}
firstActive();
//first hide next button and then-->
//on click sumit should hide submit and show next button
/*$("#next").click(function(){
	increment();
	//uncheckAllCheck_Radio_btns();
})*/





