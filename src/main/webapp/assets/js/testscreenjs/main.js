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
var maxintegerQuestoAns=5;
var integertrack = {
		  
		  "Subjects": [
		    { "integerattend":[-1,-1,-1,-1,-1]},
		    { "integerattend":[-1,-1,-1,-1,-1]},
		    { "integerattend":[-1,-1,-1,-1,-1]}
		  ]
		}


function findcountinSub(subjno)
{
  var count=0;
  for(var i=0; i < maxintegerQuestoAns;++i)
  {
      if(integertrack.Subjects[subjno].integerattend[i]!=-1)
      {
         count++;
      }
  }
return count;

}
function isquestionAnsinSub(subjno,ques)
{
 var found=false;
  for(var i=0; i < maxintegerQuestoAns;++i)
  {
      if(integertrack.Subjects[subjno].integerattend[i]==ques)
      {
         found= true;
      }
  }
return found;

}
function addquestioninSub(subjno,ques)
{
 
  for(var i=0; i < maxintegerQuestoAns;++i)
  {
      if(integertrack.Subjects[subjno].integerattend[i]==-1)
      {
        integertrack.Subjects[subjno].integerattend[i]=ques;
        return;
      }
  }

}
function removequestioninSub(subjno,ques)
{
 
  for(var i=0; i < maxintegerQuestoAns;++i)
  {
      if(integertrack.Subjects[subjno].integerattend[i]==ques)
      {
        integertrack.Subjects[subjno].integerattend[i]=-1;
        return;
      }
  }

}
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
						  apendpop += "<label class='backgroundpopup' onclick='getsectionwiseques(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].sectionlist[j].sectionId+"_"+i+"'>"+jsondata.subjectslist[i].sectionlist[j].section+"</label>";
						 appenddata += "<label class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].section+"<span class='dropdown'><i class='fa fa-info-circle dropbtn' aria-hidden='true'><div class='dropdown-content'>"; 
					 }else{
						 var	subname = jsondata.subjectslist[i].subjectId+"_"+i;
						  apendpop += "<label class='backgroundpopup' onclick='getsectionwiseques(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId+"_"+i+"'>"+jsondata.subjectslist[i].subject+"</label>";
						 appenddata += "<label class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].subject+"<span class='dropdown'><i class='fa fa-info-circle dropbtn' aria-hidden='true'><div class='dropdown-content'>"; 
					 }
				// appenddata += "<label class='background' onclick='getquestions(this);' data-id='"+i+"_"+j+"' id='"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].subject+" "+jsondata.subjectslist[i].sectionlist[j].section+"<span class='dropdown'><i class='fa fa-info-circle dropbtn' aria-hidden='true'><div class='dropdown-content'>"; 
				     appenddata +=  "<ul style='color: #000'><li><div class='tag1'id='submenu_ans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].answeredCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/answered.png'>Answered</li>";
				     appenddata += 	"<li><div class='tag1' id='submenu_unans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].notAnsweredCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/unanswered.png'>Not answered</li>";
					 appenddata +=  "<li><div class='tag1' id='submenu_notvisted_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].notVisitedCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/notvisited.png'>Not Visited</li>";
					 appenddata += 	"<li><div class='tag1' id='submenu_review_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].markedForReviewCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/review.png'>Marked for review</li>";
					 appenddata +=  "<li><div class='tag1' id='submenu_markreviewans_"+jsondata.subjectslist[i].subjectId +"_"+jsondata.subjectslist[i].sectionlist[j].sectionId+"'>"+jsondata.subjectslist[i].sectionlist[j].answeredAndMarkedForReviewCount+"</div><img class='secimage' src='"+base_url+"/assets/images/exam/ansreview.png'>Answered and marked for review</li></ul>";
					 appenddata += "</div></i></span> </label>";
	            //$("#menu_sub"+count ).html(jsondata.subjectslist[i].subject +" "+jsondata.subjectslist[i].sectionlist[j].section);
	            //count++;
			 }
	 
			 
	 }
	 $("#subjectt_section").append(appenddata);
	 $("#subject_popupp").append(apendpop);
	 var examtime= parseInt(jsondata.time);// in minutes
		countDownDate = addMinutes(new Date(),examtime);
//$('#'+subid+'_'+secid).click();
		$('#subjectt_section > label:first-child').click();
$('#subject_popupp > label:first-child').click();
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
		$('#subjectt_section > #'+a).css("background", "#8975c9");
		//$('#'+a).css("color", "red");
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
	return false;
}
var removesectionbkg=false;
function questDisplay()
{
	var typeofques="";

	//var i = parseInt($("#questionnumber").html()) + 1;
//	var qno2 =  jsondata.questions[i-1].questionnumber;
	//var quesappend= "";
	if(currentquestno==jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length)
	{
		removesectioncolurs();
		removesectionbkg= true;
	 // alert("section completed");
	  currentsectionno++;
	  currentquestno=0;
	 // updatesectioncolor();
	}
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
	if(currentquestno < jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist.length)
	{
		if(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].passage){
			$("#passage").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].passage)
		}else{
			$("#passage").html("");
		}
		var fullmarks = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].fullMarks;
		var negativeMarks = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].negativeMarks;
		//$('#typeq').attr('data-id' ,jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionTypeDescription);  
		//$("#typeq").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type +"(M="+fullmarks+",-ve="+negativeMarks+")&emsp;" );
		typeofques +="<span class='markings' id='typeq' data-id=''>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type +"(M="+fullmarks+",-ve="+negativeMarks+")&emsp;<div class='dropdown-content'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionTypeDescription+" </div></span>";
        $(".questype").empty();
$(".questype").append(typeofques);
$("#questionnumber").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionserialId + "." );
		presentquestionno = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].questionId ;
		presentsubjectno = jsondata.subjectslist[currentsubjectno].subjectId;
		presentsecno = jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].sectionId;
		$("#questiondisplay").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].title);
		//$("#quesopt").empty();
		//$("#quesopt").append("<p><input type='checkbox' id='optval[]' value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt1'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option+"</span></p><p><input type='checkbox' id='optval[]'  value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].optionId+"'/><span id='opt2'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option+"</span></p><p><input type='checkbox' id='optval[]'  value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt3'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option+"</span></p><p><input type='checkbox' id='optval[]' value='"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId+"'/><span id='opt4'>"+jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option+"</span></p>")
		
		var typeofQuestion =jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].type;
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
		 	
		 		$("#opt1").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option);
		 		$("#opt2").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option);
		 		$("#opt3").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option);
		 		$("#opt4").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option);
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
			}
		  else  if(typeofQuestion=="Single correct" || typeofQuestion=="Comprehension")
				{
			  //Radio button type
			  $("#optionspanelB").removeClass("hidediv");
			  $("#optionspanelA").addClass("hidediv");
		        
		         $("#optionspanelC").addClass("hidediv");
		         $("#optionspanelD").addClass("hidediv");
			  
		$("#optvalAr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].optionId);
		$("#optvalBr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].optionId);
		$("#optvalCr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].optionId);
		$("#optvalDr").val(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].optionId);
	
		$("#opt1r").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[0].option);
		$("#opt2r").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[1].option);
		$("#opt3r").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[2].option);
		$("#opt4r").html(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno].optionlist[3].option);
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
		//rendereelemntforkatext();
		/*renderMathInElement(document.body, {
			
					delimiters:[
					{left:'\\begin{equation}' , right:'\\end{equation}', display: true},
						{left:'$' , right:'$', display: false},
						{left:'\\(' , right:'\\)', display: false},
						
					]
				});*/
			
       renderMathInElement(document.body, {
            delimiters:[
            {left:'\\begin{equation}' , right:'\\end{equation}', display: true},
{left:'$' , right:'$', display: true},
{left:'\\(' , right:'\\)', display: true},

]
        });
	   $('body, html, .scrscreen').scrollTop(0);	
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
	$('#subjectt_section #'+sub+'_'+sec).css({ 'background-color' : '#8975c9', 'color' : 'white' });
	preva.style.color="white";
	preva.style.background="#8975c9";
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
	break;
	case 2:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
		
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount=count-1;
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
	
	break;
	case 2:
		var count = parseInt(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
		jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount=count+1;
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
		  "top"      : "27%",
	      "left"     : "9%",
	      "transform":"translate(-50%,-50%)"
	 });
	 $("#submenu_unans_"+subid+"_"+secid).append(jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].notAnsweredCount);
	 $("#submenu_notvisted_"+subid+"_"+secid).empty();
	 $("#submenu_notvisted_"+subid+"_"+secid).css({
		 "padding"   : "0px !important;",
		  "top"      : "43%",
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
	removequestioninSub(currentsubjectno,currentquestno-1);
	uncheckAllCheck_Radio_btns();
updateScreen("");
	 var questionAnsweredflag=  updateAnstoJson();
	 var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	 if(!questionAnsweredflag)
	  updatequestStatusFlags(prevflag,2); // not answered
	

 
	  
}
function uncheckAllCheck_Radio_btns()
{
	  $('.optionChecks').prop('checked',false);	
	  $('.optionChecks1').prop('checked',false);	
	  $('.optionChecks2').prop('checked',false);	
	  $('.optionChecks3').prop('checked',false);	
	  $('.optionChecks4').prop('checked',false);	
}
//mark and next
function markNext()
{
	
	var continueflag= true;
	var typeofQuestion=jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
	if( typeofQuestion=="Integer" )
    { 
		var found=isquestionAnsinSub(currentsubjectno,currentquestno-1);
	     if(found) 
		 { //is already in track 
	    	 optionChecksValues=$('.intdispscreen').html();
				if(optionChecksValues=="")
					    removequestioninSub(currentsubjectno,currentquestno-1);
		 }else
			 {
		//get the count of integers answered
		var count=findcountinSub(currentsubjectno);
		if(count>=5)
		{
			continueflag= false;
			alert("You reached max integer type questions,As per new JEE Main Exam Pattern");
		}else
		{//less then 5 so add it to track
			//check if this question is already in  track
			var found=isquestionAnsinSub(currentsubjectno,currentquestno-1);
		     if(found) 
			 { //is already in track 
			 			 
			 }else
				 { //not found in track so add it
			     	 optionChecksValues=$('.intdispscreen').html();
					if(optionChecksValues!="")
						    addquestioninSub(currentsubjectno,currentquestno-1);
				
				 }
			
		}
			 }
	    
    }
    if(continueflag)
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
	}
    	updateScreen("");
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
//save and next button
	function increment(){
		
		var continueflag= true;
		var typeofQuestion=jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].type;
		if( typeofQuestion=="Integer" )
	    { 
			
			var found=isquestionAnsinSub(currentsubjectno,currentquestno-1);
		     if(found) 
			 { //is already in track 
		    	    optionChecksValues=$('.intdispscreen').html();
					if(optionChecksValues=="")
						    removequestioninSub(currentsubjectno,currentquestno-1);
			 }else
				 {
			//get the count of integers answered
			var count=findcountinSub(currentsubjectno);
			if(count>=5)
			{
				continueflag= false;
				alert("You reached max integer type questions,As per new JEE Main Exam Pattern");
			}else
			{//less then 5 so add it to track
				//check if this question is already in  track
				var found=isquestionAnsinSub(currentsubjectno,currentquestno-1);
			     if(found) 
				 { //is already in track 
				 			 
				 }else
					 { //not found in track so add it
					    optionChecksValues=$('.intdispscreen').html();
						if(optionChecksValues!="")
							    addquestioninSub(currentsubjectno,currentquestno-1);
					
					 }
				
			}
				 }
	    }
	    if(continueflag)
		{
		
		 var questionAnsweredflag=  updateAnstoJson();
		  uncheckAllCheck_Radio_btns();
	     updateScreen("");
	      //updating answer to question
 	     var prevflag=  jsondata.subjectslist[currentsubjectno].sectionlist[currentsectionno].questionlist[currentquestno-1].questionStatus; //answered
	    if(questionAnsweredflag)
	     updatequestStatusFlags(prevflag,1); //answered
	    else
	    	updatequestStatusFlags(prevflag,2);
	   
	 // var currstatus = "sub ="+currentsubjectno+"_ sec= "+currentsectionno+"_ques "+currentquestno;
	 
		//$("#reportanerror").empty();
		// $("#reportanerror").append(currstatus);
		}
	    updateScreen("");
	    questDisplay();
	   
	}
	
	function loadingforevaluation(resultprocess,decid,examtype){
		if(resultprocess == "true"){
			alertify.alert('Hey,'+name+' ! <br>Successfully evaluated your results',function (e) {
				if (e) {
					window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+decid+'&testtype='+examtype;
				} else {
					alertify.error("You've clicked Cancel");
				}
			});
			}
			else if(resultprocess == "false"){
				var displaytable = '<div class="col-md-4">'+
			     '<img style="height: 150px;width: 150px;margin-left: 0%;" src="/assets/images/students/chaptertargetimg/Robotrans.gif"><p style="color:#7c6eb0;">I am Calculating Results</p>'+
			    '</div><div class="col-md-12 text-center">'+
			    '<img style="height: 200px;width:200px;margin-left: 0%;" src="/assets/images/students/spinner2.gif">'+
				'<p style="color:#7c6eb0;">Please wait for 60 sec</p>'+
			    '</div>';
				$("#infobtns").remove(); $("#buttons").remove();
				$("#displaytable").empty();$("#displaytable").append(displaytable); $("#displaytable").css('border','2px solid #7c6eb0');
				
			/*$("#tbody").empty();
	$("#tbody").append('<tr id="tr" class="text-center"></tr>');
		$('#tr').append('<img style="height: 200px;width:200px;margin-left: 0%;" src="/assets/images/students/spinner2.gif">');*/
			setTimeout(function(){ 
			window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+decid+'&testtype='+examtype;
			}, 60000);
			}else{
			alertify.alert('Hey,'+name+' ! <br>Something went wrong we will get back to you with your results',function (e) {
							if (e) {
								window.location =base_url + 'jsp/student/livezone/live_zone_active_full_mocks.jsp';
							
							} else {
								alertify.error("You've clicked Cancel");
							}
						});	
			}
		}
	
	function evaluateresults(id,studentid,examtype){
		var resultprocess = "false";
		var id= atob(id);
		var decid = btoa(id);
		$.ajax({
			type: "GET",
			  dataType: "json",
			 contentType: 'application/json', 
			  url: base_url+'rest/student/v1/evaluateTestpaper/'+id+'/'+studentid+'/1',
			success: function(data){
				  resultprocess = "true";
				  loadingforevaluation(resultprocess,decid,examtype);
				//alert('You have submitted the test successfully.');
				/*  alertify.alert('Hey,'+name+' ! <br>Successfully evaluated your results',function (e) {
						if (e) {
							window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+decid+'&testtype='+examtype;
						} else {
							alertify.error("You've clicked Cancel");
						}
					});*/

			  },
			  error: function(data) {	
				  resultprocess = "unkonwn";
				  $("#disableafter").removeAttr("disabled");
				 //alert('something went wrong');
				  /*alertify.alert('Hey,'+name+' ! <br>Something went wrong we will get back to you with your results',function (e) {
						if (e) {
							window.location =base_url + 'jsp/student/livezone/live_zone_active_full_mocks.jsp';
						
						} else {
							alertify.error("You've clicked Cancel");
						}
					});*/
			  }
			  
		});
		
		 loadingforevaluation(resultprocess,decid,examtype);
	}
	function submitt(){
		 jsondata.studentId =  atob(getParameterByName('studentid'));
		 jsondata.source ="web";
		 var missed = getParameterByName('missed');
		 if(missed !== "" && missed !==null&& missed !== undefined){
		 jsondata.fromMissed = true;
		 }
		
		var id = getParameterByName('id');
		var examtype = getParameterByName('examType');
		
		var inputData;
		inputData = JSON.stringify(jsondata);
		 $("#disableafter").attr("disabled", "disabled" );
		 
		 if(!pausetimerflag)
			{
			pausetimerflag= true;
			pausedtime=0;
		    }
		$.ajax({
			type: "POST",
			  dataType: "json",
			 
			  contentType: 'application/json', 
			  url: base_url+'rest/student/v1/submitTest',
			  data: inputData,
			   beforeSend: function(){
				   $("#loaderimage").append('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">');
				  
				   $('#loader').modal('show')
					//alertify.success('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">');
			},
			  success: function(data){
				//alert('You have submitted the test successfully.');
				  $('#loader').modal('hide');
				  if(jsondata.zoneType == "Previous Year"){
					  alertify.alert('Hey,'+name+' ! <br>Test Successfully Submitted Check Your results',function (e) {
							if (e) {
								
								
								window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+id+'&testtype='+examtype;
							
							} else {
								alertify.error("You've clicked Cancel");
							}
						});
				  }else if(jsondata.zoneType == "Live Zone"){
					  alertify.alert('Hey,'+name+' ! <br>We are evaulating your results please click ok',function (e) {
							if (e) {
								evaluateresults(id,jsondata.studentId,examtype);
								
								//window.location =base_url + 'jsp/student/student module/student_analytics3.jsp?id='+id+'&testtype='+examtype;
							
							} else {
								alertify.error("You've clicked Cancel");
							}
						});  
				  }
				  
            else if(jsondata.zoneType == "Daily Scoop"){
					  
					  alertify.alert('Hey,'+name+' ! <br>You have submitted the test successfully please click ok',function (e) {
							if (e) {
								
							window.location =base_url + 'jsp/student/student module/studenthome.jsp';
							
							} else {
								alertify.error("You've clicked Cancel");
							}
						});  
				  }
				 
				 

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
	     updatereconformscreen();
	    // $(".backers2").addClass("disabled"); //aravind
	     document.getElementById("timercountsubmitpg").innerHTML = "Time Over";
			
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
	   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span>"+questions[j].title+"</span></label></div>"+
	     "<div class='col-md-12'>";
	 var options = questions[j].optionlist;
	
	 appendqqq +=   "<label><span>A : </span></label><label><span style=''>"+options[0].option+"</span></label></div>"+
	"<div class='col-md-12'>"+
	    "<label><span>B : </span></label><label><span style=''>"+options[1].option+"</span></label>"+

	"</div><div class='col-md-12'>"+
	    "<label><span>C : </span></label><label><span style=''>"+options[2].option+"</span></label>"+

	"</div><div class='col-md-12'>"+
	    "<label><span>D : </span></label><label><span style=''>"+options[3].option+"</span></label>"+
  "</div></div></div>";
	}else if(questions[j].type =="Integer" || questions[j].type =="Matrix"){
		 appendqqq += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
		   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span>"+questions[j].title+"</span></label></div>"+
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
		   "<label><span>Q.No"+(questions[j].questionserialId)+" : </span></label></div><div class='col-md-12'><label><span>"+questions[j].title+"</span></label></div>"+
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