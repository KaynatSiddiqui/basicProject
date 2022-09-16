function showingsubjects(subject){
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var subjectsappend = "";
	
	$.ajax({
		url: base_url+'rest/chapterInteractive/getCISubofExamTypeByStu/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
				var nthchild = '';
				subjectsappend += '<ul class="nav nav-tabs" id="subjectlist" style="display:flex;justify-content:center;">'
					for(var i=0; i<data.length; i++){
						if(subject == undefined || subject == null || subject == ""){
							nthchild = 1;
						}else{
							if(subject == data[i].subjectId){
								nthchild = i+1;
							}
						}
						
						subjectsappend += '<li style="padding: 10px 10px;" ><a class="" href="#subjectshow'+data[i].subjectId+'" style="text-align:center" aria-controls="home" data-subjid='+data[i].subjectId+' data-subject='+data[i].subjectName+' onclick="showingchaptersbysubid(this)" data-toggle="tab"><img src='+data[i].subjectIcon+' width="40px">&nbsp;&nbsp;<p>'+data[i].subjectName+'</p></a></li>';	   
				  }
			    subjectsappend += '</ul>';
			
			$("#subjectsshow").html(subjectsappend);
			 $('#subjectlist li:nth-child('+parseInt(nthchild)+') a').click();
			//$("#subjectlist li:first-child a").click();
			 sessionStorage.setItem("selectstatus", true);
		},
		error:function(data){
			$("#setgoalbtn").click();
			sessionStorage.setItem("selectstatus", false);
		}
	})	
}
function getfeedbackdetails(elem){
	var chapter = $(elem).attr("data-chapter");
	//var examtype = $(elem).attr("data-examtype");
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var sname = LoginData.name;	 
	var cidname = chapter.split("_");
	var questionscr = {
					"studentId":sId,
					"chapterId":parseInt(cidname[0])
			}
				var quesstr = JSON.stringify(questionscr);
				
				$.ajax({
		type : "POST",
		url : base_url + 'rest/chapterInteractive/getCIFeedBack',
		dataType : "json",
		contentType : 'application/json',
		data:quesstr,
		success : function(data) {
			$('#maintabs').html('<li class="active"><a >'+firstexamtype+'(first focus)</a></li>');
			$('#feedbackchapname').html(cidname[1]);
			var difficultyWisePerformances = data.difficultyWisePerformances;
			if(difficultyWisePerformances != null){
			for(var mn = 0; mn < difficultyWisePerformances.length; mn++){
				if(difficultyWisePerformances[mn].level == "Level 1"){
					var level1 = Math.round(difficultyWisePerformances[mn].percentage);
				}else if(difficultyWisePerformances[mn].level == "Level 2"){
					var level2 = Math.round(difficultyWisePerformances[mn].percentage);
				}else{
					var level3 = Math.round(difficultyWisePerformances[mn].percentage);
				}
		}}else{
			var level1 = 0; var level2 = 0; var level3 = 0;
		}
		var stagemsg = data.stagemsg;
		if(stagemsg != null){
			
			$('#stage1status').html(stagemsg[0].yourStatusMsg1);$('#stage2status').html(stagemsg[1].yourStatusMsg1);$('#stage3status').html(stagemsg[2].yourStatusMsg1);
			if(stagemsg.length >3){
				$('#chapmsg1').html('Your Status :'+stagemsg[3].yourStatusMsg1); 
				$('#chappercent1').html('Your percentage :'+stagemsg[3].percentage); $('#avgtimeqns1').html('Avg Time Spent :'+stagemsg[3].avgTime); //$('#chapdate1').html('Test -01'+stagemsg[3].examdate); 
					
			}
			if(stagemsg.length >4){
			$('#chapmsg2').html('Your Status :'+stagemsg[4].yourStatusMsg1); 
			$('#chappercent2').html('Your percentage :'+stagemsg[4].percentage); $('#avgtimeqns2').html('Avg Time Spent :'+stagemsg[4].avgTime); //$('#chapdate2').html('Test -02'+stagemsg[4].examdate); 
			}
			}else{
			
			$('#stage1status').html('');$('#stage2status').html('');$('#stage3status').html('');
			$('#chapmsg1').html(''); $('#chapmsg1').html(''); 
			$('#chappercent1').html(''); $('#chappercent2').html(''); 
			 $('#avgtimeqns2').html('');  $('#avgtimeqns1').html(''); 
			 $('#chapdate1').html(''); $('#chapdate1').html(''); 
			
		}
			
			Highcharts.chart('jeecontainer', {
  chart: {
    type: 'column'
  },
  title: {
    text: 'Difficulty Level-wise performance'
  },
  subtitle: {
    text: ''
  },
  xAxis: {
    type: 'category'
  },
  yAxis: {
    title: {
      text: 'percentage'
    }

  },
  legend: {
    enabled: false
  },
    credits: {
      enabled: false
  },
  plotOptions: {
    series: {
      borderWidth: 0,
      pointWidth: 40,
	  borderRadius: 5,
      dataLabels: {
        enabled: true,
        format: '{point.y:.1f}%'
      }
    }
  },

  tooltip: {
    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b><br/>'
  },

  series: [
    {
      name: "percentage",
      colorByPoint: true,
      data: [
        {
          name:"level-1", 
          y: level1,

          color:'#00A2E8'
        },
        {
          name:"level-2",
          y: level2,
        
          color:'#ffc90e'
        },
        {
          name: "level-3",
          y: level3,
         
            color:'#ff80c0'
        },
      ]
    }
  ],
  
});
			},
		error:function(data){
			
			alert("Getting feedback error");
		}
	})
}
var firstexamtype = '';
function showingchaptersbysubid(elem){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var subid = parseInt($(elem).attr("data-subjid"));
	var subject = $(elem).attr("data-subject");
	var roboName="";
	var chaptershow = {
			  "studentId":studid,
			   "subjectId":subid
			 }
	
	var strchapter = JSON.stringify(chaptershow);
	var appendata = "";
	$.ajax({
		url: base_url+'rest/chapterInteractive/CIGetChapterInfo',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
	    beforeSend: function(){
	    	
	    	
	    	$("#tabsection").empty();
	    	$(".load").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"  >');			
			$(".load").show();	
			 $('#subjectlist li a').addClass("anchordisabled");
			},
		success:function(data){
			
			$(".load").hide();
			 $('#subjectlist li a').removeClass("anchordisabled");
			var chapterd = "";
			var stage3 = "";
			var stage4 = "";
			var stage1 = "";
			var stage2 = "";
			var Chapter = "";
			var array = [];
				var apedn;
				var k = 0;
			appendata += '<div class="tab-content">'
			
			for(var i = 0;i < data.length;i++){
				
				if(data[i].issubscribed == false) {
					if(i<=1){
						var mask = "unmask";
						var lock = "unlock";
					}else{
						var mask = "mask";
						var lock = "lock";
					}
				 }else{
					 var mask = "unmask";
					 var lock ="unlock";
				 }
				 chapterd = data[i].chapterId;
				 roboName= data[i].roboName;
				// console.log("roboname"+ roboName);
				 stage1 = data[i].stage1Status;
				 
				 stage2 = data[i].stage2Status;
				 
				 stage3 = data[i].stage3GoalTime;
				 
				 stage4 = data[i].stage4GoalTime;
				 
				 Chapter = data[i].Chapter;
			firstexamtype = data[i].cieachExamFocusStatus.firstFocusExamtype;
				 
			appendata += ' <div role="tabpanel" class="tab-pane active" id="subjectshow'+subid+'"><i class="fa fa-lock '+lock+'" aria-hidden="true"></i><div class="col-md-12 '+mask+'">'+
	            '<div class="first mb-20">'+
            '<div class="rowblock" id="chapter'+data[i].chapterId+'" style="box-shadow: 0px 0px 10px grey">'+
              '<div class="row">'+
                    '<div class="col-md-4 sideheading" style="background:'+data[i].chapteColorCode+'">'+
					
					'<div class="col-md-1" style="padding-left:0px">'+
                      '<img src='+data[i].chapterIcon+'  class="imgchaptericon">&nbsp;&nbsp;'+
					  '</div>'+
					  '<div class="col-md-1">'+
					    '</div>'+
						  '<div class="col-md-9" style="padding:0px">'+
                     '<p>'+data[i].Chapter+'</p>'+
                    '</div></div>'+
					
                     
                    '<div class="col-md-1" style="position:relative;float: right;" data-toggle="modal" data-target="#feedbackModal" data-chapter="'+chapterd+'_'+data[i].Chapter+'"  onclick="getfeedbackdetails(this)">'+
                     '<i class="fa fa-line-chart antics" aria-hidden="true"></i>'+
                     
                    '</div>'+
					'<div class="col-md-6" style="display:flex;margin-top:10px">'+
                     '<p class="cont">Stage-1</p>'+
                      '<p class="cont1">Stage-2</p>'+
                     '<div class="progress bar1">'+
                       '<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:'+data[i].stage1Status+'%;border-top-right-radius: 0px;border-bottom-right-radius: 0px;">'+
                        
                      ' </div>'+
                     '</div>'+
                     '<div class="progress bar2" style="width:150px;height:28px">'+
                       '<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:'+data[i].stage2Status+'%;border-top-right-radius: 0px;border-bottom-right-radius: 0px;">'+
                       '</div>'+
                     '</div>'
                     if(data[i].stage1Status >=100 && data[i].stage2Status >=100){
						appendata +='<button class="setbtn" onclick="onetwostagecmpl();" >Go</button>';
					 }else{
						  appendata +='<button class="setbtn" onclick="writetest(this)" data-chapter="'+chapterd+'_'+data[i].Chapter+'" data-subid="'+subid+'_'+subject+'" >Go</button>'
					 }
					
                    appendata += '</div>'+
              '</div><div class="firsparallel">'
                    
    				appendata += '<div class="row">'+
                        '<table class="table table-condensed col-sm-12" style="display:flex;justify-content:center;"><tbody><tr>'+
                        '<td><p style="font-weight:bold;font-size:15px">First focus</p></td>'+
                        '<td><p style="color:#00ba85;font-weight:bold;font-size:15px" data-id='+data[i].cieachExamFocusStatus.firstFocusExamtypeId+'>'+data[i].cieachExamFocusStatus.firstFocusExamtype+'</p></td>'
                        
                        if(data[i].cieachExamFocusStatus.firstFocusProgress == 0){
                        appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglezero.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress >= 16 && data[i].cieachExamFocusStatus.firstFocusProgress <= 30 ){
                        appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglesixteen.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress >= 32 &&  data[i].cieachExamFocusStatus.firstFocusProgress <=45){
                        appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglethirtytwo.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'                        	
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress >= 48 && data[i].cieachExamFocusStatus.firstFocusProgress <= 60){
                            appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglefortyeight.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'                        	                       	
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress >= 64  && data[i].cieachExamFocusStatus.firstFocusProgress <= 75){
                            appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglesixtyfour.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'                        	                       	
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress >= 80  && data[i].cieachExamFocusStatus.firstFocusProgress <= 90){
                            appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/triangleeighty.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'                        	                       	
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress == 100){
                            appendata += '<td><div id="rayopticsmain'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container"><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-21px;left:-1px;color:#00ba85"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/firstfocustriangles/trianglehund.png" style="position:absolute;top:17px;left:-14px" width="30px" ></div></div></td>'                        	                       	
                        }
                    
                    
                        appendata += '<td><p>'
                        
                        if((stage1 < 100 && stage2 < 100) || (stage1 <= 100 && stage2 < 100) || (stage1 < 100 && stage2 <= 100)){
                        	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" data-stage="'+stage1+'_'+stage2+'" onclick="gotostage3check(this,\''+data[i].cieachExamFocusStatus.firstFocusExamtypeId+'\');">Go</button>';
                        }else if(data[i].cieachExamFocusStatus.firstFocusProgress == 100){
                        	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" onclick="allparamcomplete();">Go</button>';
                        }
                        else{
                        	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" onclick="directstage3go(this,\''+data[i].cieachExamFocusStatus.firstFocusExamtypeId+'\');">Go</button>';
                        }
                        
                        if(data[i].cieachExamFocusStatus.firstFocustargetGoalTime == 0){
                        	 appendata += '<span style="margin-left:10px" data-toggle="modal" data-target=".goalsettime" data-subid='+subid+' data-examid='+data[i].cieachExamFocusStatus.firstFocusExamtypeId+' data-chapid='+chapterd+' onclick="goaltimestage3(this)"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Set Goal Time)</span></p></td>'
                        }else{
                        	var time_spent_chapter  = data[i].cieachExamFocusStatus.firstFocustimeSpent;
                        	time_spent_chapter = time_spent_chapter/60;
                        	time_spent_chapter = time_spent_chapter/60;
                       	 appendata += '<span style="margin-left:10px"  data-examid='+data[i].cieachExamFocusStatus.firstFocusExamtypeId+' data-chapid='+chapterd+' >'+time_spent_chapter.toFixed(2)+'/'+data[i].cieachExamFocusStatus.firstFocustargetGoalTime+'hrs</span></p></td>'                   	
                        }
                        appendata +='</tr>'
               
                        	sessionStorage.setItem("firstfocusid", data[i].cieachExamFocusStatus.firstFocusExamtypeId);
                        
                        var parallelfocus = data[i].cieachExamFocusStatus.parllelfocusexamtypes;
                        
                 /*  for(var ps=0;ps<parallelfocus.length;ps++){
                	  
                	   appendata += '<tr>'+     
               '<td><p style="font-weight:bold;font-size:15px" class="paralleltext'+parallelfocus[ps].examtypeId+'"></p></td>'+
               '<td><p style="color:#00bfff;font-weight:bold;font-size:15px" data-id='+parallelfocus[ps].examtypeId+'>'+parallelfocus[ps].examtype+'</p></td>'
               
               if(parallelfocus[ps].progress == 0){
               appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglezero.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'
               }else if(parallelfocus[ps].progress >= 16 && parallelfocus[ps].progress <= 30){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglesixteen.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	   
               }else if(parallelfocus[ps].progress >= 32 &&  parallelfocus[ps].progress <= 45){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglethirtytwo.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	               	   
               }else if(parallelfocus[ps].progress >= 48 && parallelfocus[ps].progress <= 60){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:gray"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglefortyeight.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	               	              	   
               }else if(parallelfocus[ps].progress >= 64 && parallelfocus[ps].progress <= 75){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:#00bfff"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglesixtyfour.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	               	              	              	   
               }else if(parallelfocus[ps].progress >= 80 && parallelfocus[ps].progress <= 90){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:#00bfff"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/triangleeighty.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	               	              	              	   
               }else if(parallelfocus[ps].progress == 100 ){
                   appendata +='<td><div id="rayopticsparallel'+chapterd+'" style="height: 70px;position:relative;"><div class="pyramid-container" ><span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-22px;left:-2px;color:#00bfff"></i></span><img src="'+base_url+'/assets/images/students/chaptertargetimg/secondfocustriangles/trianglehund.png" style="position:absolute;top:17px;left:-16px" width="30px" ></div></div></td>'            	               	              	              	   
               }
               
               appendata += '<td><p>'
            	   //<button class="setbtn" data-toggle="modal" data-target=".examcheckstatus">Go</button>'
            	   if((stage1 < 100 && stage2 < 100) || (stage1 <= 100 && stage2 < 100) || (stage1 < 100 && stage2 <= 100)){
                   	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" onclick="gotostage3check(this,\''+parallelfocus[ps].examtypeId+'\');">Go</button>';
                   }else if(parallelfocus[ps].progress == 100){
                   	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" onclick="allparamcomplete();">Go</button>';
                   }
            	   else{
                   	appendata +='<button class="setbtn" data-chapter="'+chapterd+'_'+Chapter+'" data-subid="'+subid+'_'+subject+'" onclick="directstage3go(this,\''+parallelfocus[ps].examtypeId+'\');">Go</button>';
                   }
               if(parallelfocus[ps].targetGoalTime == 0){
            	   appendata += '<span style="margin-left:10px" data-toggle="modal" data-target=".goalsettime" data-examid='+parallelfocus[ps].examtypeId+' data-chapid='+chapterd+' onclick="goaltimestage4(this)"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Set Goal Time)</span></p></td>'
               }else{
            	   appendata += '<span style="margin-left:10px" data-toggle="modal" data-target=".goalsettime" data-examid='+parallelfocus[ps].examtypeId+' data-chapid='+chapterd+' onclick="goaltimestage4(this)">'+parallelfocus[ps].timeSpent+'/'+parallelfocus[ps].targetGoalTime+'hrs</span></p></td>'        	   
               }
              
            	   var push = array.push(parallelfocus[ps].examtypeId)
            	   
            	   sessionStorage.setItem("Secondfocusids", array);
               }*/
                  
                   appendata +=  '</tr></tbody></table></div></div>'+
              '<div class="row">'+
              '<div class="col-sm-6"><a href="'+base_url+'jsp/student/livezone/live_zone_active_full_mocks.jsp"><p style="color: '+data[i].chapteColorCode+'">No of tests in livezone: '+data[i].noOfTestsInLiveZone+'</p></a></div>'+
                '<div class="col-sm-6" style="display:flex;justify-content:flex-end">'+
             '<div class="arrow bounce rayoptics" style="position:relative;bottom:0px">'+
			  '<a class="fa fa-arrow-circle-down fa-2x downarrow" id="slicdown'+data[i].chapterId+'" data-id='+data[i].chapterId+' ></a>'+
			  '<a class="fa fa-arrow-circle-up fa-2x uparrow hide" id="slicup'+data[i].chapterId+'" data-id='+data[i].chapterId+'></a>'+
			'</div>'+
             '</div>'+
             '</div>'+
            '</div>'+
            '<div class="col-sm-9  first raycollapse collpbar collapsetab'+data[i].chapterId+'  hide">'+
            '<button class="btn" style="background:none !important;color:#fff;float:right;"><i class="fa fa-times closebtn" aria-hidden="true" style="font-size:20px" data-id='+data[i].chapterId+'></i></button>'+
                   '<div class="row col-sm-12 col-sm-push-1 mb-10">'+
                       '<div class="col-sm-4">'+
           '<img src="'+base_url+'/assets/images/students/chaptertargetimg/chapterbasic.svg" style="vertical-align:middle"  width="30px" >&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="modal" data-target="#basicModal'+data[i].chapterId+'" onclick="chapterbasicexamtypes(this)" data-chapid='+data[i].chapterId+' style="cursor:pointer;color:#fff;">Chapter Basics</a>'+
                       '</div>'+
                       '<div class="col-sm-4">'+
                               '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Concepts.svg" style="vertical-align:middle"  width="30px" >&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="modal" data-target="#conceptModal'+data[i].chapterId+'" onclick="conceptexamtypes(this)" data-chapid='+data[i].chapterId+'  style="cursor:pointer;color:#fff;">Concepts</a>'+
                           '</div>'+
                           '<div class="col-sm-4">'+
           '<img src="'+base_url+'/assets/images/students/chaptertargetimg/NCERT.svg"  style="vertical-align:middle"  width="30px">&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="modal" data-target="#ncertModal'+data[i].chapterId+'" onclick="ncertexamtypes(this)"  data-chapid='+data[i].chapterId+'  style="cursor:pointer;color:#fff;">NCERT</a>'+
                       '</div>'+
                   '</div>'+
                   '<div class="row col-sm-12 col-sm-push-1" style="margin-top:5px">'+
                           '<div class="col-sm-4">'+
               '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Formelua.svg" style="vertical-align:middle"  width="30px">&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="modal" data-target="#formulaModal'+data[i].chapterId+'" onclick="chapformulaexamtypes(this)" data-chapid='+data[i].chapterId+'  style="cursor:pointer;color:#fff;">Formulae</a>'+
                           '</div>'+
                           '<div class="col-sm-4">'+
                                   '<img src="'+base_url+'/assets/images/students/chaptertargetimg/VIDEOS.svg"   width="30px">&nbsp;&nbsp;&nbsp;&nbsp;<span style="vertical-align:super"><a data-toggle="modal" data-target="#videoModal'+data[i].chapterId+'" onclick="chapvideosexamtypes(this)" data-chapid='+data[i].chapterId+'  style="cursor:pointer;color:#fff;">videos</a></span>'+
                               '</div>'+
                               '<div class="col-sm-4">'+
               '<img src="'+base_url+'/assets/images/students/chaptertargetimg/INFO.svg" style="vertical-align:middle"  width="30px">&nbsp;&nbsp;&nbsp;&nbsp;<span><a data-toggle="modal" data-target="#infoModal'+data[i].chapterId+'" onclick="chapinfoexamtypes(this)" data-chapid='+data[i].chapterId+'  style="cursor:pointer;color:#fff;">Info</a></span>'+
                           '</div></div></div></div></div></div>'
               
          /*     showingbetweencontent(chapterd,data[i].Chapter,subid,subject,stage3,stage4,data[i].stage1Status,data[i].stage2Status);*/
			}
			
			appendata += '</div>'
                   
            $("#tabsection").html(appendata);   
			
			 //$(".firsparallel").children("div").children("table").children("tbody").children("tr:nth-child(2)").children("td:nth-child(1)").children("p:first-child").text("Parallel focus");
				
			$("#robodiv").html('Hey Iam '+roboName+' <a href="#" data-toggle="modal" data-target=".goalsettime" onclick="setroboname();" style="color: blue;"><i class="fa fa-edit"></i></a>');   
		},
		error:function(data){
			alert("failed to get examtypes");
		}
	
	})
	
}
function allparamcomplete(){
	  var LoginData = getLoginData();
		var sname = LoginData.name;
		 $('#chapterint').empty();
			var message = '<h5>Hi '+sname+', All parameters Completed From this examtype practice another examtype</h4>'+
			'<p style="margin-top:15px">Be in touch with us You will get more questions soon</p>'+
			    '<button class="btn btn-success"   style="margin-top:20px;color:#fff;"  data-dismiss="modal">Close</button>';
			 $('#chapterint').html(message);
			 $(".examcheckstatus").modal('show');
			
}
function onetwostagecmpl(){
	  var LoginData = getLoginData();
		var sname = LoginData.name;
		 $('#chapterint').empty();
			var message = '<h5>Hi '+sname+', </h4>'+
			'<p style="margin-top:15px">You have already finsihed stage 1 and stage 2</p>'+
			'<p style="margin-top:15px">Please practice target exam</p>'+
			    '<button class="btn btn-success"   style="margin-top:20px;color:#fff;"  data-dismiss="modal">Ok,Got it</button>';
			 $('#chapterint').html(message);
			 $(".examcheckstatus").modal('show');
			
}
function setgoalexamtypes(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var firstfocus = "";
	
	var parallelfocus = "";
	
	$.ajax({
		url: base_url+'rest/student/v1/getStudentExamtypes/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++){
				firstfocus += '<div class="col-sm-3 text-center focusfirst"  id="single'+data[i].id+'" data-li-id='+(i+1)+'><a data-singleexam='+data[i].id+' class="text-center"><span class="checkmark cc"></span><img src='+data[i].image+' width="50px" alt=""><p>'+data[i].name+'<p></a></div>';
				 
				parallelfocus += '<div class="col-sm-3 text-center focusparallel" id="multiple'+data[i].id+'" data-li-id='+(i+1)+'><a data-multipleexam='+data[i].id+'  class="text-center"><span class="checkmark cc"></span><img src='+data[i].image+' width="50px" alt=""><p>'+data[i].name+'</p></a></div>';
			}
		
			
			$("#singlefocus").html(firstfocus);
			$("#multiplefocus").html(parallelfocus);
			var firstfocusid =  sessionStorage.getItem("firstfocusid");
			if(firstfocusid != "" && firstfocusid != null){
			   onactiveexamtypes();
			}
		},
		error:function(data){
			alert("failed to get examtypes");
		}
	
	})
}


function onactiveexamtypes(){
	
	var firstfocusid =  sessionStorage.getItem("firstfocusid");
	
	$("#single"+firstfocusid+"").addClass("firstactive");
	
	 $("#single"+firstfocusid+"  > a > span").removeClass("cc");
	 
	 $("#single"+firstfocusid+" > a > p").css({"color":"red"});
	 
	 var listId = 2;
	 
	 var listItemId = $(".firstactive").attr("data-li-id");
	 
	   $("#multiplefocus[data-id=" + listId + "] > .focusparallel ").removeClass("disable");
	    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] ").addClass("disable");
	    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] > a > span").addClass("cc");
	    $("#multiplefocus[data-id=" + listId + "] > .disable").removeClass("active");
	    $("#multiplefocus[data-id=" + listId + "] > .disable > a > p").css({"color":"black"});
	    
	var secondfoucsid =  sessionStorage.getItem("Secondfocusids"); 
	
	var splitsecond = secondfoucsid.split(",");
	
	for(var i = 0; i < splitsecond.length;i++){
		
		$("#multiple"+splitsecond[i]+"").addClass("parallelactive");
		$("#multiple"+splitsecond[i]+" > a > span").removeClass("cc");
		$("#multiple"+splitsecond[i]+" > a > p").css({"color":"red"});
	}
	    
	    
}


function goalsubmission(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	

	var firstfocus = $("#singlefocus").find(".firstactive a").attr("data-singleexam");
	var parallelfocus = $("#multiplefocus").find(".parallelactive a")
	
	var array = [];

	  $(parallelfocus).each(function(){
		  var secondfocus = $(this).attr("data-multipleexam");
		var parallelfocus = array.push(secondfocus);
		  
	  })
		
		/*if(firstfocus == "" || firstfocus == null || array == "" || array == null){
			alert("please select both firstfocus & parallelfocus examtypes");
		   return false;
		}*/
		
	
var  submission =	{
		"StudentId":studid,
		"firstfocusExamId":firstfocus,
		"parallelFocusExamId":array,
		"userType":"web"
	}

var strsubmission = JSON.stringify(submission);
	
$.ajax({
	url: base_url+'rest/student/selectSetGoalExamTypes',
	type:"POST",
	dataType:"json",
	contentType:'application/json',
	data:strsubmission,
	success:function(data){
		alert(data.message);
		 $("#iconclose").click();

		  
		var status = sessionStorage.getItem("selectstatus"); 
		if(status == "true"){
		showingsubjects('');
		}else{
			selectquota();
		}
		
	},
	error:function(data){
		alert(data.responseJSON.errorMessage);
	}
})
}


function selectquota(){
	
	var appendata = "";
	
	var quota = sessionStorage.getItem('stdquota');
	
	if(quota == "General"){
	  $(".shomor").addClass("hide");
	  $("#catshow").html(quota);
	  $("#realobs").attr("data-word", quota)
	}else{
		$("#catshow").html(quota);
		
		$("#realobs").attr("data-word", quota)
	}
	
$("#cateselect").modal("show");	
	
	
}

function quotanext(elem){
	
	$("#cateselect").hide();
	
var word = $(elem).attr("data-word");
	
	$("#showingquota").html(word);
	
	$("#afterselect").modal("show");
	
}


function finalquota(){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var value = "";
	
	var login = sessionStorage.getItem('stdquota');
	
	var localvalue = $("#showingquota").html();
	
	if(login == localvalue){
		value = true;
	}else{
		value = false;
	}
	
	
	$.ajax({
		url: base_url+'rest/student/setConsiderCatbyStuId/'+studid+'/'+value,
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			$("#afterselect").hide();
			showingsubjects('');
		},
	   error:function(){
		alert("Sending quota failed")
	}
	})
	
}


/*function showingbetweencontent(chapterd,Chapter,subid,subject,stage3,stage4,stage1,stage2){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var appendata = ""
		$.ajax({
			url: base_url+'rest/student/getSetGoalExamtypesbyStudentId/'+studid,
			type:"GET",
			dataType:"json",
			contentType:'application/json',
			success:function(data){
				
				
			  
			},
			error:function(){
				alert("getting the content failed");
			}	
		})		
}
*/

function gotostage3check(elem,examid){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");	
	var stageprogress = $(elem).attr("data-stage");	
	 var LoginData = getLoginData();
		var sname = LoginData.name;
	//var path1 = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=expert';
	var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
	Aimessage = '<p style="color:black">Hi '+sname+'</p>'+
	'<p style="color:black">I suggest You to finish stage-1 & stage-2.</p>'+
	'<p style="color:black">You can finish it in lessthan one hour</p>'+
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'" >ok lets Go</button>'+
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-chapter="'+chapter+'" data-subid="'+subject+'" data-stage="'+stageprogress+'" onclick="gotodirectstage3(this);">No take me to stage 3</button>';
	$('#chapterint').empty();
	 $('#chapterint').html(Aimessage);
	 
	var cidname = chapter.split("_");
	 $('#chap_name_popup').html(cidname[1]);
	  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
		 $(".examcheckstatus").modal('show');
	 
		
}
function gotodirectstage3(elem){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");
	var stageprogress = $(elem).attr("data-stage");	
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		var cidname = chapter.split("_");
	 $('#chap_name_popup').html(cidname[1]);
	var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=expert';
	Aimessage = '<p style="color:black">Hi '+sname+', it seems You are confident..</p>'+
	'<p style="color:black">Firstly let me give you some questionst to refresh your chapter knowledge.</p>'+
	
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'" >ok lets Go</button>';
	$('#chapterint').empty();
	 $('#chapterint').html(Aimessage);
	  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
		 $(".examcheckstatus").modal('show');
	  $("#analytics").modal('hide');
		
	
}
function directstage3go(elem,examid){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");	
	 window.location = base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&examid="+examid+"&user_wish=";
}

function goaltimestage3(elem){	
	
	var chapid = $(elem).attr("data-chapid");
	var subject = $(elem).attr("data-subid");
	var examid = $(elem).attr("data-examid");
	
	 var appendata = '<div class="col-md-12 col-md-offset-2">'+
	         '<label style="font-size:15px" class="col-sm-2">Goal time:</label>'+
	         '<input type="text" id="goaltime3" class="col-md-4 form-control" placeholder="Enter no. of hours" style="width:46% !important">'+
	         '</div><div class="col-md-12 text-center"><button class="btn btn-success" style="margin-top:20px;color:#fff" data-subid= '+subject+' data-chpid='+chapid+' onclick="submissiongoaltime3(this,\''+examid+'\')">Submit</button></div>'; 
	       $("#goal_time_set").html(appendata);
	
	
}

function goaltimestage4(elem){	
	
	var chapid = $(elem).attr("data-chapid");
	
	var examid = $(elem).attr("data-examid");
	
	 var appendata = '<div class="modal fade goalsettime" tabindex="-1" role="dialog">'+
	  '<div class="modal-dialog" role="document">'+
	    '<div class="modal-content">'+
	      '<div class="modal-header">'+
	        '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
	        '<h4 class="modal-title">Set Goal Time</h4>'+
	      '</div>'+
	      '<div class="modal-body">'+
	        '<div class="row">'+
	         '<div class="col-md-12 col-md-offset-2">'+
	         '<label style="font-size:15px" class="col-sm-2">Goal time:</label>'+
	         '<input type="text" id="goaltime4" class="col-md-4 form-control" placeholder="Enter no. of hours" style="width:46% !important">'+
	         '</div><div class="col-md-12 text-center"><button class="btn btn-success" style="margin-top:20px;color:#fff" data-chpid='+chapid+' onclick="submissiongoaltime3(this,\''+examid+'\')">Submit</button></div></div></div>'+  
	      '<div class="modal-footer">'+
	      '</div></div></div></div>'
	    
	  $("#goaltime").html(appendata);
	
	
}

function submissiongoaltime3(elem,examid){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var stagetime = "";
	var subject = parseInt($(elem).attr("data-subid"));
	var chapid = parseInt($(elem).attr("data-chpid"));
	
	var stage3time = parseInt($("#goaltime3").val());
	
	var stage4time = parseInt($("#goaltime4").val());
	
	if(!isNaN(stage3time)  &&  isNaN(stage4time)){
		stagetime =  parseInt($("#goaltime3").val());
	}else{
		stagetime = parseInt($("#goaltime4").val());
	}
	
	if(isNaN(stage3time) && isNaN(stage4time)){
		alert("Please set no. of hours");
		return false;
	}
	
	var goalstage3 = {
		    "studentId": studid,
		    "chapterId":chapid,
		"stage3GoalTime": stagetime,
		"examId":examid

		}
	
	var strgoaltime3 = JSON.stringify(goalstage3);
	
	$.ajax({
		url: base_url+'rest/chapterInteractive/CISetChapstageGoalTimes',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strgoaltime3,
		success:function(data, textStatus, xhr){
			 alert("successfully set goaltime");
			 window.location = base_url+'jsp/student/Ainteractive/interactive.jsp?subject='+subject;
			 //location.reload();
		},
		  error: function(xhr, textStatus) {
		       alert("setgoal time has not sucessfully set");
		      
		    } 
/*
 * error:function(response){ alert(data.responseJSON.errorMessage);
 * console.log(response); }
 */
		
	})
}



function chapterbasicexamtypes(elem){
	
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = "";
	$.ajax({
		url: base_url+'rest/student/getChapterBasicsByChapterID/'+chapid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			var chapbasic = data.chapterbasics;
			
			appendata +=  '<div class="modal fade modalbasic" id="basicModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:800px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" id="basicbutton" class="close" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title">Chapter Basics</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'        
		        for(var i = 0;i < chapbasic.length;i++){
		        	 appendata += '<div class="card card-1">'+chapbasic[i].chapterBasics+'</div>'
		         }
		        
			appendata += '</div></div></div></div>'
		   
		    $("#chapbasic").html(appendata);
			rendereelemntforkatext();
			$("#basicModal"+chapid).modal("show");
		},
		error:function(data){
			alert("Failed to get chapterbasics");
		}
	})	
}


function chapinfoexamtypes(elem){
	
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = "";
	
	$.ajax({
		url: base_url+'rest/student/getchapterInfoByChapterID/'+chapid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
				
			var examconcepts = data.parllelfocusexamtypes;
			
			appendata +=  '<div class="modal fade modalinfo" id="infoModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:800px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" id="infobutton" class="close" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title">Chapter Info</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'+
		        '<div class="card card-1">'+data.chapterinfo+'</div></div></div></div></div>'
		        
		    $("#chapinfo").html(appendata);
			
			$("#infoModal"+chapid).modal("show");
		},
		error:function(data){
			alert("Failed to get chapterinfo");
		}
	})	
}


function chapformulaexamtypes(elem){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getSetGoalExamtypesbyStudentId/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
				
			var examconcepts = data.parllelfocusexamtypes;
			
			appendata +=  '<div class="modal fade" id="formulaModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:800px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title">Chapter Formulas</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'+
		        '<div id="infoexams'+chapid+'"><ul class="nav nav-tabs" id="formulaexams" role="tablist" style="display:flex;justify-content:center;"><li role="presentation"  class="active"><a href="#exam'+data.firstFocusExamtypeId+'" style="text-align:center;" onclick="chapterformulas(this)" data-examid='+data.firstFocusExamtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+data.firstFocusExamIcon+' width="50px" alt=""> <p>'+data.firstFocusExamtype+'<p></a></li>'
				for(var i = 0;i < examconcepts.length;i++){
					appendata += '<li role="presentation" class="active" ><a href="#exam'+examconcepts[i].examtypeId+'" style="text-align:center;" onclick="chapterformulas(this)" data-examid='+examconcepts[i].examtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+examconcepts[i].examicon+' width="50px" alt=""> <p>'+examconcepts[i].examtype+'<p></a></li>';
		       }
			appendata += '</ul></div><div class="tab-content" id="formulapend"></div></div></div></div></div>'
		   
		    $("#formula").append(appendata);
			
			$("#formulaModal"+chapid).modal("show");
			$("#formulaexams li:first-child a").click();
		},
		error:function(data){
			alert("Failed to get formulas");
		}
	});	
}

function chapterformulas(elem){
	
	var chapid = $(elem).attr("data-chapid");
	var examid = $(elem).attr("data-examid");
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getChapterFormulasByChapterID/'+chapid+"/"+examid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			var listformula = data.chapterformulas;
			
			appendata += '<div role="tabpanel" class="tab-pane active" id="exam'+examid+'">'
		        
		        for(var i = 0;i < listformula.length;i++){
		        	appendata += '<div class="card card-1">'+listformula[i].formula+'</div>';
		        }
		        appendata += '</div>'
	
		    $("#formulapend").html(appendata);
		        rendereelemntforkatext();
		},
		error:function(data){
			alert("Failed to get chapterformulas");
		}
	});
}



function ncertexamtypes(elem){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getSetGoalExamtypesbyStudentId/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
				
			var examconcepts = data.parllelfocusexamtypes;
			
			appendata +=  '<div class="modal fade" id="ncertModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:800px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title">Ncert</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'+
		        '<div id="infoexams'+chapid+'"><ul class="nav nav-tabs" id="ncertexams" role="tablist" style="display:flex;justify-content:center;"><li role="presentation" class="active"><a href="#exam'+data.firstFocusExamtypeId+'" style="text-align:center;" onclick="ncertdisplay(this)" data-examid='+data.firstFocusExamtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+data.firstFocusExamIcon+' width="50px" alt=""> <p>'+data.firstFocusExamtype+'<p></a></li>'
				for(var i = 0;i < examconcepts.length;i++){
					appendata += '<li role="presentation" class="active" ><a href="#exam'+examconcepts[i].examtypeId+'" style="text-align:center;" onclick="ncertdisplay(this)" data-examid='+examconcepts[i].examtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+examconcepts[i].examicon+' width="50px" alt=""> <p>'+examconcepts[i].examtype+'<p></a></li>';
		       }
			appendata += '</ul></div><div class="tab-content" id="ncertpend"></div></div></div></div></div>'
		   
		    $("#ncert").append(appendata);
			
			$("#ncertModal"+chapid).modal("show");
			$("#ncertexams li:first-child a").click();
		},
		error:function(data){
			alert("Failed to get all examtypes");
		}
	});	
}

function ncertdisplay(elem){
	
	var chapid = $(elem).attr("data-chapid");
	var examid = $(elem).attr("data-examid");
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getNcertCoceptsBy/'+chapid+"/"+examid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			var listncert = data.chapterconcepts;
			
			appendata += '<div role="tabpanel" class="tab-pane active" id="exam'+examid+'">'
		        
		        for(var i = 0;i < listncert.length;i++){
		        	appendata += '<div class="card card-1">'+listncert[i].concepts+'</div>';
		        }
		        appendata += '</div>'
	
		    $("#ncertpend").html(appendata);
		        rendereelemntforkatext();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});
}



function chapvideosexamtypes(elem){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getSetGoalExamtypesbyStudentId/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
				
			var examconcepts = data.parllelfocusexamtypes;
			
			appendata +=  '<div class="modal fade" id="videoModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:900px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" class="close Modalvideo" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title"><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;Chapter related videos</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'+
		        '<div id="infoexams'+chapid+'"><ul class="nav nav-tabs" id="videoexams" role="tablist" style="display:flex;justify-content:center;"><li role="presentation" class="active"><a href="#exam'+data.firstFocusExamtypeId+'" style="text-align:center;" onclick="chapvideo(this)" data-examid='+data.firstFocusExamtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+data.firstFocusExamIcon+' width="50px" alt=""> <p>'+data.firstFocusExamtype+'<p></a></li>'
				for(var i = 0;i < examconcepts.length;i++){
					appendata += '<li role="presentation" class="active"><a href="#exam'+examconcepts[i].examtypeId+'" style="text-align:center;" onclick="chapvideo(this)" data-examid='+examconcepts[i].examtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+examconcepts[i].examicon+' width="50px" alt=""> <p>'+examconcepts[i].examtype+'<p></a></li>';
		       }
			appendata += '</ul></div><div class="tab-content" id="videospend"></div></div><div class="modal-footer"></div></div></div></div>'
		   
		    $("#videos").append(appendata);
			
			$("#videoModal"+chapid).modal("show");
			
			$("#videoexams li:first-child a").click();
		},
		error:function(data){
			alert("Failed to get chaptervideos");
		}
	})	
}


function chapvideo(elem){
	
	var chapid = $(elem).attr("data-chapid");
	var examid = $(elem).attr("data-examid");
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getchapterVideosByChapterID/'+chapid+"/"+examid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			var chapvideos = data.chaptervideos;
			
			appendata +=   '<div role="tabpanel" class="tab-pane active" id="exam'+examid+'">'+
		        '<div class="col-sm-12">'+
		        	   '<div class="panel panel-default">'+
								'<div class="panel-body">'+
									 '<div class="row">'+
		          '<div class="col-md-8" id="videopause">'+
		          '<iframe src='+chapvideos[0].chapterVideoLink+' width="530px" height="315px" id="youtubeembad'+chapid+'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
		          '</div>'+
		          '<div class="col-md-4" style="height:347px;">'+
		          '<div class="panel-body">'+
		          '<div class="row">'+
		          '<div id="style-2" style="height:300px;">'
		          for(var i = 0;i < chapvideos.length;i++){
		        	  var url = chapvideos[i].chapterVideoLink;
		        	  var strurl = url.toString();
		        	  var segments = url.split( '/' );
		        	  var id = segments[4];
		        	  var backimg = 'https://img.youtube.com/vi/'+id+'/0.jpg'
		        	  
		        	  
		        	  appendata += '<div class="col-md-12 col-sm-6 co-xs-12">'+
		          '<div class="box">'+
		          '<div class="item res-video" style="background-image: url('+backimg+');width:225px; height:110px;padding-left:0px;"  onclick="viedomaindisplay(this)" data-chapid='+chapid+' data-videolink='+url+' >'+
				   '</div>'+
		          '<a  onclick="viedomaindisplay(this)" data-chapid='+chapid+' data-videolink='+url+'>'+chapvideos[i].chaptervideotext+'</a>'+
		          '</div>'+
		          '<div class="clearfix"></div></div>'
		          }
			appendata += '</div></div></div></div></div></div></div></div></div>'
		            
		    $("#videospend").html(appendata);
		
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})	
}


function viedomaindisplay(elem){ 
	
var url = $(elem).attr("data-videolink");
var	 chapid = $(elem).attr("data-chapid");

	$("#youtubeembad"+chapid).attr("src", "");
	$("#youtubeembad"+chapid).attr("src", url);

	}




function conceptexamtypes(elem){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var chapid = $(elem).attr("data-chapid");
	
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getSetGoalExamtypesbyStudentId/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
		
			var examconcepts = data.parllelfocusexamtypes;
			
			appendata +=  '<div class="modal fade" id="conceptModal'+chapid+'"  role="dialog">'+
		    '<div class="modal-dialog modal-lg" style="width:800px;">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title">Concepts</h4>'+
		        '</div>'+
		        '<div class="modal-body" style="padding:25px;text-align:justify">'+
		        '<div id="conceptexams'+chapid+'"><ul class="nav nav-tabs" id="conceptexams" role="tablist" style="display:flex;justify-content:center;"><li role="presentation" class="active"><a href="#exam'+data.firstFocusExamtypeId+'"  style="text-align:center;" onclick="chapconcepts(this)" data-examid='+data.firstFocusExamtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+data.firstFocusExamIcon+' width="50px" alt=""> <p>'+data.firstFocusExamtype+'<p></a></li>'
				for(var i = 0;i < examconcepts.length;i++){
					appendata += '<li role="presentation"  class="active"><a href="#exam'+examconcepts[i].examtypeId+'" style="text-align:center;" onclick="chapconcepts(this)" data-examid='+examconcepts[i].examtypeId+' data-chapid='+chapid+' aria-controls="home" role="tab" data-toggle="tab"><img src='+examconcepts[i].examicon+' width="50px" alt=""> <p>'+examconcepts[i].examtype+'<p></a></li>';
		       }
			appendata += '</ul></div><div class="tab-content" id="topicpend"></div></div></div></div></div>'
		   
		
		    $("#concepts").append(appendata);
			$("#conceptModal"+chapid).modal("show");
			$("#conceptexams li:first-child a").click();
		
		},
		error:function(data){
			alert("Failed to get chapterconcepts");
		}
	})	
	
}

function chapconcepts(elem){
	
	var chapid = $(elem).attr("data-chapid");
	var examid = $(elem).attr("data-examid");
	var appendata = ""
	$.ajax({
		url: base_url+'rest/student/getChapterConceptsByChapterID/'+chapid+"/"+examid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			var listconcepts = data.chapterconcepts;
			
			appendata += '<div role="tabpanel" class="tab-pane active" id="exam'+examid+'">'
		        for(var i = 0;i < listconcepts.length;i++){
		        	appendata += '<div class="card card-1">'+listconcepts[i].concepts+'</div></div>';
		        }
		        appendata += '</div>';
		   
		    
		    $("#topicpend").html(appendata);
			rendereelemntforkatext();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})	
}

var jsondata ={};
		
 var consecutive_wrong_answers=0;
 var consecutive_8_wrong_answers=0;
 var approach_time=0;
var  consecutive_correct_answer=0;;
var  consecutive_8_correct_answer=0
 var consecutive_unattempted=0;
 var currentquestionno=0;
 var currenttopicno=0;;
var iscorrect;   // is correct answered or not
var isunattempted;  // skiped 
var approachlastque =0;   // time of approach seen for first question
var approachlastsecques =0;// time of approach seen for second question
var approachlastthirdques =0;// time of approach seen for third question
var approachlastfourquest =0;// time of approach seen for fourth question
var timeseenlastque =0;  // time of question seen for first question
var timeseenlastsecque =0;// time of question seen for second question
var timeseenlastthirdque =0;// time of question seen for third question
var timeseenlastfourque =0;// time of question seen for fourth question
var Prev5QuesStatusRtWrong = [];
var questionNo=1;
var noOfQuesShowinTopic=0;
var noofunattemptedinTopic=0;
var noofcorrectintopic = 0;
var noofwrongintopic = 0;
var totalunatemptedQuestinStageRound=0;
var totalCorrectquestinStageRound=0;
var  totalwrong =0;
var keepenabledisableapproach = false;
function interactivetestscreen(chap,sub,popup,user_wish){
	
	//console.log(chap + "  "+ sub);
	var questionid = "";
	var comprehensionid= "";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	//console.log("sId= " + sId); 
	var sname = LoginData.name;	 
	// sId=2;
	questionNo=1;
    var sidname = sub.split("_");
	var cidname = chap.split("_");
   	
	var appendtabpanel = "";
	var sidequesmenu = "";
	var appendsidequestion = "";
	var p = 0;
	var examid = getParameterByName("examid");
	if(user_wish !="" && user_wish !=undefined && user_wish !=null){
		if(user_wish == "begginer"){
			var questionscr = {
			"studentId":sId,
			"subjectId":parseInt(sidname[0]),
			"chapterId":parseInt(cidname[0]),
			"chapterName":cidname[1],
			"subjectName":sidname[1],
			"currentCIStatus":"S1R1"
	}
	var url = 'rest/chapterInteractive/getChapterStageRound';
		}else if(user_wish == "learner"){
		var questionscr = {
			"studentId":sId,
			"subjectId":parseInt(sidname[0]),
			"chapterId":parseInt(cidname[0]),
			"chapterName":cidname[1],
			"subjectName":sidname[1],
			"currentCIStatus":"learner"
	}
	var url = 'rest/chapterInteractive/ChapterCrosscheckRound';
		}else if(user_wish == "expert"){
			var questionscr = {
					"studentId":sId,
					"subjectId":parseInt(sidname[0]),
					"chapterId":parseInt(cidname[0]),
					"chapterName":cidname[1],
					"subjectName":sidname[1],
					"currentCIStatus":"expert"
			}
				var url = 'rest/chapterInteractive/ChapterCrosscheckRound';	
		}
		

	
	
	}else{
		if(examid !="" && examid !=undefined && examid !=null){
			var questionscr = {
					"studentId":sId,
					"subjectId":parseInt(sidname[0]),
					"chapterId":parseInt(cidname[0]),
					"chapterName":cidname[1],
					"subjectName":sidname[1],
					"examTypeId":examid,
					"currentCIStatus":"S1R1"
			}

			
			
		}else{
			var questionscr = {
					"studentId":sId,
					"subjectId":parseInt(sidname[0]),
					"chapterId":parseInt(cidname[0]),
					"chapterName":cidname[1],
					"subjectName":sidname[1],
					"currentCIStatus":"S1R1"
			}

			
			
		}
		
		var url = 'rest/chapterInteractive/getChapterStageRound';
	}
	var quesstr = JSON.stringify(questionscr);
	totalunatemptedQuestinStageRound=0;
	totalCorrectquestinStageRound=0;
	 totalwrong =0;
	
	

	//console.log("json aru"+ quesstr);
	$.ajax({
		type : "POST",
		url : base_url + url,
		dataType : "json",
		contentType : 'application/json',
		data:quesstr,
	    beforeSend: function() {
	    	var loader ='<div class="center">'+	
			'<img style="height: 200px;width:200px;margin-left: 0%;" src="/assets/images/students/spinner2.gif">'+		
			'</div>';
	    	$("#Getallquestions").append(loader);
	    	
		},
		success : function(data) {
			
//console.log( data);
			jsondata = data;
			if(jsondata!=null){
				var LoginData = getLoginData();
				
				var sname = LoginData.name;	 
      
					 noofunattemptedinTopic=0;
				if(popup == "popup"){
					if(jsondata.previousCIStatus=="S1R0")
					{
					
						$('#chap_name_popup').html(cidname[1]);
						 $('#chapterint').empty();
							var message = '<h5>Hi '+sname+', what are you in this chapter?</h4>'+
							   '<p style="margin-top:15px"><input type="radio"  id="status" name="status" style="zoom:1.5" value="begginer">&nbsp;&nbsp;<span style="font-size:16px">Begineer</span></p>'+
							   '<p><input type="radio" name="status"  id="status" style="zoom:1.5" value="learner">&nbsp;&nbsp;<span style="font-size:16px">Learner</span></p>'+
							   '<button class="btn btn-success" onclick="stdstatus(this);" id="stdstatus" data-chapter="'+chap+'" data-subid="'+sub+'" style="margin-top:20px;color:#fff;">Lets Go</button>';
							 $('#chapterint').html(message);
							 $(".examcheckstatus").modal('show');
						
					}else{
						if(jsondata.topicsList.length >0){
							 window.location = base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chap+"&subject="+sub+"&user_wish=";
						}else{
							$('#chap_name_popup').html(cidname[1]);
							 $('#chapterint').empty();
							var message = '<h5>Hi '+sname+', There is no questions for practice?</h4>'+
							'<p style="margin-top:15px">Be in touch with me You will get more questions soon</p>'+
							    '<button class="btn btn-success"   style="margin-top:20px;color:#fff;"  data-dismiss="modal">Close</button>';
							 $('#chapterint').html(message);
							 $(".examcheckstatus").modal('show');
						}
						
					}
					
				
				}else if(popup == ""){
					$('.timer').countimer('start');
					/*if(jsondata.topicsList[currenttopicno].studentAccuracy >=60){
						currenttopicno++
					}else{
						
					}*/
					if(jsondata.chapApproachAvailable == true){
						keepenabledisableapproach = true;
					}else{
						keepenabledisableapproach = false;
					}
					
					var stage_btn = getParameterByName("stage_btn");
					if(stage_btn != "" && stage_btn != null && stage_btn != undefined){
						if(stage_btn == "stage-2"){
							get_param_list('enable');
						}else if(stage_btn == "stage-3"){
							get_param_listforstage3('enable');
						}
						
					}else{
					      if(jsondata.startIndex>0)
					    	  {
					    	  //check for stage 3 and show popup
							  if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" || jsondata.currentCIStatus == "S3R4"){
					    	  currenttopicno=jsondata.startIndex;
					    	  }
							  if ((jsondata.startIndex) % 2 != 0) {
									
						var color = "#A349A4";			
		var sname = LoginData.name;
		var Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			var Aimessage = '<p>Hi '+sname+'!</p>'+
			'<p>You have finished already Sesion in '+jsondata.topicsList[currenttopicno].topicName+'</p>'+
			'<p>click on Okay button to Continue</p>';
  Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;"  class="close" data-dismiss="modal" >okay</button>';
	   
			$('#chapterint').empty();
			 $("#modalcss").css("background-color",color);
			 $('#chapter_name').html(jsondata.chapterName); 
			 $('#robo_image').html(Aiimage);
			 $('#chapterint').html(Aimessage);
			$('#chapterint > p').css("color","#fff");
			$("#clsebtn").remove();
			 $(".examcheckstatus").modal({backdrop: 'static', keyboard: false});  
				 $(".examcheckstatus").modal('show');
				
				
			
				$('.timer').countimer('stop');
								}
							  }
					      $("#Getallquestions").empty();
						questiondisplay();
					}
					
					
				}
			}
			
			
			},
		error:function(data){
			
			alert("Getting questions error");
		}
	})
	
	
	
} 

var is_this_last_que = '';
function questiondisplay(){
	if(jsondata.topicsList.length >0){
					noOfQuesShowinTopic=jsondata.topicsList[currenttopicno].firstShowNoQuestions;
				}else{
					noOfQuesShowinTopic = 0;
				}
	var appendtabpanel = "";
	var sidequesmenu = "";
	var appendsidequestion = "";
	isunattempted= false;
	iscorrect= false;
	
	var topicsList = jsondata.topicsList;
		var questionlist = topicsList[currenttopicno].questionsList;
		
		if(topicsList[currenttopicno]==null || topicsList[currenttopicno].questionsList[currentquestionno]==null)
		{	
	alert("you reached end of practice");
	test_cpmpleted = true;
	$("#pause_btn").hide();
	$("#finishtest").show();
		$(".getsubmit").hide();
		$(".skipstn").hide();
		$(".getnext").hide();
		return;
		}
		if(jsondata.startIndex > 0 && currenttopicno == jsondata.startIndex && currentquestionno == 0){
			var classname = "active";
		}else if(currentquestionno == 0 && currenttopicno == 0){
			var classname = "active";
		}else if(currentquestionno == 0 && currenttopicno == 0 && jsondata.startIndex > 0){
			var classname = "active";
		}else{
			var classname = "";
		}
				
					$('#imgsetting').html(jsondata.chapterName);
if(jsondata.currentCIStatus == "S2R1" || jsondata.currentCIStatus == "S2R2" || jsondata.currentCIStatus == "S2R3" || jsondata.currentCIStatus == "S2R4"){
	//if(currenttopicno >= 1){
		//var popupicon = '<i class="fa fa-info-circle" onclick="get_param_list(\'disable\')"></i>';
		var popupicon  =  '<a  class="" onclick="get_param_list(\'disable\')"><img src="/assets/images/students/chaptertargetimg/Intractivepopicon.svg" width="30" height="30" alt=""></a>';
	
		
		
		$('.nextbtn').attr('onclick','onNextBtnClick();');
		$('.skpbtn').attr('onclick','skipQuestion();');
		
	/*}else {
		var popupicon = '';
	
		$('.nextbtn').attr('onclick','onNextBtnClick();');
		$('.skpbtn').attr('onclick','skipQuestion();');
	}*/
	
	$('#present_stage').html('Stage 2');
	
}else if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
	//if(currenttopicno >= 1){
		//var popupicon = '<i class="fa fa-info-circle" onclick="get_param_listforstage3(\'disable\')"></i>';
		var popupicon  =  '<a  class="" onclick="get_param_listforstage3(\'disable\')"><img src="/assets/images/students/chaptertargetimg/Intractivepopicon.svg" width="30" height="30" alt=""></a>';
	
		
		
		$('.nextbtn').attr('onclick','onNextBtn3Click();');
		$('.skpbtn').attr('onclick','skipQuestion3();');
	/*}else{
		var popupicon = '';
		
		$('.nextbtn').attr('onclick','onNextBtn3Click();');
		$('.skpbtn').attr('onclick','skipQuestion3();');
	}*/
	$('#present_stage').html('Stage 3');
}else if(jsondata.currentCIStatus == "S3R4"){
	//var popupicon = '<i class="fa fa-info-circle" onclick="get_param_listforstage3(\'disable\')"></i>';
	var popupicon  =  '<a  class="" onclick="get_param_listforstage3(\'disable\')"><img src="/assets/images/students/chaptertargetimg/Intractivepopicon.svg" width="30" height="30" alt=""></a>';
					
	$('.nextbtn').attr('onclick','onNextBtn3Click();');
		$('.skpbtn').attr('onclick','skipQuestion3();');
	$('#present_stage').html('Previous years');
}else if(jsondata.currentCIStatus == "S3R5" || jsondata.currentCIStatus == "S3R6"){
	//var popupicon = '<i class="fa fa-info-circle" onclick="get_param_listforstage3(\'disable\')"></i>';
	var popupicon  =  '<a  class="" onclick="get_param_listforstage3(\'disable\')"><img src="/assets/images/students/chaptertargetimg/Intractivepopicon.svg" width="30" height="30" alt=""></a>';
	
	$('.nextbtn').attr('onclick','onNextBtn3Click();');
		$('.skpbtn').attr('onclick','skipQuestion3();');
	$('#present_stage').html('Chapter Target - '+(jsondata.topicsList[currenttopicno].noofTimeTopicRepeated+1));
}
else{
	
	$('.nextbtn').attr('onclick','onNextBtnClick();');
	$('.skpbtn').attr('onclick','skipQuestion();');
	var popupicon = '';
	if(jsondata.currentCIStatus == "expert"){
		$('#present_stage').html('');
	}else{
		$('#present_stage').html('Stage 1');
	}
	
}

if(jsondata.currentCIStatus == "S3R5" || jsondata.currentCIStatus == "S3R6"){
	$('#Paramname').html('');

}else{
	$('#Paramname').html(topicsList[currenttopicno].topicName);
	
}
$('#Paramname').css("color", getRandomColor());
$('#paramiconin').html(popupicon);
	var mainquestion = questionlist[currentquestionno].title;
	var removespace = questionlist[currentquestionno].questionType.replace(/ /g,'');
	is_this_last_que = questionlist[currentquestionno].questionId;
						if(questionlist[currentquestionno].questionType == 'Single correct'){
 sidequesmenu += '<li class="'+classname+'"  style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="singlequestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow singlebckground'+questionlist[currentquestionno].questionId+'" >'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+ questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){	 
								appendsidequestion +=  '<div class="singleopdiv'+questionlist[currentquestionno].questionId+' flowmiddle"><div class="col-sm-12 mb-20" id="singleoptiondiv'+optionspace[k].optionId+'"><label class=""><input type="radio" style="margin: 0 !important" name="singleradio'+questionlist[currentquestionno].questionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text singleoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span class="hide" style="float:right" id="correctanswer'+questionlist[currentquestionno].questionId+'" >Correct Answer</span><span class="hide" style="float:right" id="selectanswer'+questionlist[currentquestionno].questionId+'">Your Answer</span></div></div>'; 		

							}
							appendsidequestion +='<div class="row singlesolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}


						if(questionlist[currentquestionno].questionType == 'Multi correct'){
sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="multiquestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multibckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="multiopdiv'+questionlist[currentquestionno].questionId+' flowmiddle"><div class="col-sm-12 mb-20" id="multioptiondiv'+optionspace[k].optionId+'"><label class=""><input type="checkbox" name="multicheckbox'+questionlist[currentquestionno].questionId+'" class="option-input checkbox ads_Checkbox" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text multioptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>'; 
							}
							
							appendsidequestion +='<div class="row multisolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}



						if(questionlist[currentquestionno].questionType == 'Comprehension'){
                     sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].comprehensionId+'" id="comprequestiondiv'+questionlist[currentquestionno].comprehensionId+'"  style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].questionType+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow comprebckground'+questionlist[currentquestionno].comprehensionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].comprehensionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].comprehensionId+'"></p><p class="correct'+questionlist[currentquestionno].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlist[currentquestionno].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){

								appendsidequestion +=  '<div class="compreopdiv'+questionlist[currentquestionno].comprehensionId+'  flowmiddle"><div class="col-sm-12 mb-20" id="compreoptiondiv'+optionspace[k].optionId+'"><label class=""><input type="radio" style="margin: 0 !important" name="singlecomprehension'+questionlist[currentquestionno].comprehensionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text compreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>';  

							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row compresolution'+questionlist[currentquestionno].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';


						}


						if(questionlist[currentquestionno].questionType == 'Multi Comprehension'){

							sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].comprehensionId+'" id="multicomprequestiondiv'+questionlist[currentquestionno].comprehensionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multicomprebckground'+questionlist[currentquestionno].comprehensionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].comprehensionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].comprehensionId+'"></p><p class="correct'+questionlist[currentquestionno].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlist[currentquestionno].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="multicompreopdiv'+questionlist[currentquestionno].comprehensionId+'  flowmiddle"><div class="col-sm-12 mb-20" id="multicompreoptiondiv'+optionspace[k].optionId+'"><label  class=""><input type="checkbox" name="multicheckbox'+questionlist[currentquestionno].comprehensionId+'" class="option-input checkbox" value='+optionspace[k].optionId+'><span style="height:30px" class="option_text multicompreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>'; 
							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row multicompresolution'+questionlist[currentquestionno].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}


						if(questionlist[currentquestionno].questionType == 'Integer'){
sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="intequestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].questionType+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow intebckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class=""><div class="flex-container"><div class="newCheckBox" ><span id="">';

							appendsidequestion +=  '<div class="row">'+
							 '<div class="col-md-8 col-md-push-4">'+
						       '<div class="calculator integer'+questionlist[currentquestionno].questionId+'">'+
						       '<div class="calc-row">'+
						         '<div class="intdispscreen  mainscreen'+questionlist[currentquestionno].questionId+'"></div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button backspace" data-question='+questionlist[currentquestionno].questionId+'>backspace</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>1</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>2</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>3</div>'+
						       '</div>'+
						        '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>4</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>5</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>6</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>7</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>8</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>9</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button zero" data-question='+questionlist[currentquestionno].questionId+'>0</div><div class="button decimal" data-question='+questionlist[currentquestionno].questionId+'>.</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button clear-All" data-question='+questionlist[currentquestionno].questionId+'>Clear All</div>'+
						       '</div>'+
						     '</div>'+
						     '</div>'+
						      '</div>'

							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row intesolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div></div>';
						}


						if(questionlist[currentquestionno].questionType == 'Matrix'){

 sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="matrixquestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].type+'  data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-topicindex ='+currenttopicno+' data-qnsindex ='+currentquestionno+' data-comprehensionid='+questionlist[currentquestionno].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow matrixbckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane" role="tabpanel '+classname+'"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newMatrixBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="matrixdiv'+questionlist[currentquestionno].questionId+'"><div class="col-sm-12 mb-20 " style="display:flex;width:50%"><span class="option_text">'+optionspace[k].optionId+')</span>&nbsp;&nbsp;<label class="Parray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="p">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">p</span></label><label  class="Qarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="q">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">q</span></label><label class="Rarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+' checkbox" value="r">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">r</span></label><label class="Sarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="s">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">s</span></label><label  class="Tarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="t">&nbsp;&nbsp;<span style="position:relative;bottom:-8px;padding-left:8px">t</span></label></div></div>'; 
							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							appendsidequestion +='<div class="row matrixsolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
						}

			
if(keepenabledisableapproach == true){
	$('#approachpresent').html('');
	$('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\'\',\'\')">Approach</a>');
	
}else{
	$('#approachpresent').html('');
}
			
			$("#allQuestions").append(sidequesmenu);
			 $("#Getallquestions").empty();
			$("#Getallquestions").append(appendsidequestion);
			rendereelemntforkatext();
		
}

function clicktoseeques(elem){
	
	var quest_id = $(elem).attr("data-questionid");
	var topicindex = $(elem).attr("data-topicindex");
	var qnsindex = $(elem).attr("data-qnsindex");
	$('.concept').attr('onclick','');
	$('.concept').attr('onclick','seeconcept(\''+qnsindex+'\',\''+topicindex+'\')');
	if(quest_id == is_this_last_que){
		if(keepenabledisableapproach == false){
			$('#approachpresent').html('');
		}else{
			$('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\''+qnsindex+'\',\''+topicindex+'\')">Approach</a>');
		}
		
		//if(jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer == "" ){
			if(test_cpmpleted == false){
				if(jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer == "" ){
					$(".getsubmit").show();
				$(".skipstn").show();
				$(".getnext").hide();
				$(".getnextnext").hide();
				}else{
					$(".getsubmit").hide();
					$(".getnext").show();
				$(".getnextnext").hide();
				}
				
				
			}else{
				$(".getsubmit").hide();
				$(".getnext").hide();
	$(".skipstn").hide();
			}
		/*}else{
				$(".getnext").show();
				$(".getnextnext").hide();
			}*/
	}else{
		if(keepenabledisableapproach == false){
			$('#approachpresent').html('');
		}else{
			$('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\''+qnsindex+'\',\''+topicindex+'\')">Approach</a>');
			
		}
		
			$(".getsubmit").hide();
			$(".getnext").hide();
$(".skipstn").hide();
$('.newnextbtn').attr('onclick','onNextlastque('+quest_id+');');
if(test_cpmpleted == false){
$(".getnextnext").show();
		}
	}
}
function onNextlastque(questid){
	 $('#allQuestions li:eq('+counter+') a').click(); 
}
// $(".subbtn").on("click" , function(){ // submit btn is pressed

function onSubmitBtnClick()
{
	 //console.log("submit onclick called");
	
	 var questionAnsweredflag = updateAnstoJson();
		var question = $('#allQuestions').find('li.active a').attr('data-questionid');
	    var comprehension = $('#allQuestions').find('li.active a').attr('data-comprehensionid');
	    var rdiovalue = $(".newCheckBox input[name='singleradio"+question+"']:checked").val();
	    var comprevalue = $(".newCheckBox input[name='singlecomprehension"+comprehension+"']:checked").val();
		var integervalue = $(".mainscreen"+question).html();
		var multicorrectchekvalue = $(".newCheckBox input[name='multicheckbox"+question+"']:checked").val();
		var multicomprehenchekvalue = $(".newCheckBox input[name='multicomprehension"+comprehension+"']:checked").val();
		var matrixlayout = $(".matrixdiv"+question+" input[type=checkbox]:checked").val();
		// var examtypeid = getParameterByName("examid");
		var value;
	    if(rdiovalue != "" && typeof(rdiovalue) !== "undefined"){
	    
	        value = rdiovalue;
	    
	    }
	    
	    if(comprevalue != "" && typeof(comprevalue) !== "undefined"){
	        
	        value = comprevalue;
	    
	    }
	    
	    
	    if(integervalue != "" && typeof(integervalue) !== "undefined"){
	    	value = integervalue;
	    }
	    
	    if(multicorrectchekvalue != "" && typeof(multicorrectchekvalue) !== "undefined"){
	    	var favorite = [];
	    	
	    	$.each($("input[name='multicheckbox"+question+"']:checked"),function(){
	    	 favorite.push($(this).val());
	    	})
	    	value = favorite.join(",");
	  }
		
	    if(multicomprehenchekvalue != "" && typeof(multicomprehenchekvalue) !== "undefined"){
	    	var favorite = [];
	    	
	    	$.each($("input[name='multicomprehension"+comprehension+"']:checked"),function(){
	    	 favorite.push($(this).val());
	    	})
	    	value = favorite.join(",");
	  }
	    
	    
	    if(matrixlayout != "" && typeof(matrixlayout) !== "undefined"){
	    	var favorite = [];
	    	var favorite1 = [];
	    	var favorite2 = [];
	    	var favorite3 = [];
	    	var oc=0;
	    	
	        $('.optioncheck1:checked').each(function () {
	        	favorite.push($(this).val());
		       });
	        favorite = favorite.join(',');
	        var selectedmatrix1= favorite+"|";

	         $('.optioncheck2:checked').each(function () {
	         	favorite1.push($(this).val());
	 	       });
	         favorite1 = favorite1.join(',');
	         var selectedmatrix2= favorite1+"|";
	          
	          $('.optioncheck3:checked').each(function () {
	          	favorite2.push($(this).val());
	  	       });
	          favorite2 = favorite2.join(',');
	           var selectedmatrix3 = favorite2+"|";
	           
	           $('.optioncheck4:checked').each(function () {
	           	favorite3.push($(this).val());
	   	       });
	           favorite3 = favorite3.join(',');
	           var selectedmatrix4 = favorite3;
	           
	           var concatinate = selectedmatrix1.concat(selectedmatrix2, selectedmatrix3, selectedmatrix4);

	           value = concatinate.toUpperCase();
	  }
		  
	    
	    var answer =  value;	
	
	    if(answer == "" || answer == undefined ){
	    	$("#questionempty").modal("show");
	    	return false;
	    }
	    updateStatusOfSubmitedQues(answer);
	    // update the question area with soulution/Hint
	    var topicsList = jsondata.topicsList;
		var questionlist = topicsList[currenttopicno].questionsList;
	    var appenddata="";
		appenddata += '<div class="col-sm-12" style="margin-top:35px;margin-left:10px;"><h2 class="bold font-16 text-dark" style="color:deepskyblue">Solution:</h2><div class="col-sm-12 solcontent"><div style="display:block;padding:20px 20px;">'+questionlist[currentquestionno].solution+'</div></div>';
		//appenddata+='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><i class="fa fa-child below-popup-icon-attempt"></i> &nbsp;&nbsp;<span style="vertical-align:super;">Attempted:&nbsp;&nbsp;<span>21</span></span><span style="float:right" ><i class="fa fa-check-circle below-popup-icon"></i> &nbsp;&nbsp;<span style="vertical-align:super;">Correctly Answered:&nbsp;&nbsp;<span>31</span></span></span></div></div>';
		rendereelemntforkatext();
		var spacestudentoption = answer;
		var spaceansweroption = questionlist[currentquestionno].answer;
		
		
		
		if(spaceansweroption.indexOf("|") != -1){
	

				var rarray = spaceansweroption.split("|");
				var sarray = spacestudentoption.split("|");
				
				for(var sx = 0;sx<sarray.length;sx++){
					var px = sarray[sx].split(",");
					var qx = rarray[sx];
					
					for(var jk = 0;jk<px.length;jk++){
						if(qx.indexOf(px[jk]) != -1){
							var selet = px[jk];
							
							$(".matrixdiv"+question+" input[value='" + selet + "']").prop('checked', true);
							$(".matrixdiv"+question+" ."+selet+"array"+(sx+1)+"").css({"background":"#cbf5d8","color":"darkgreen","padding-bottom":"8px"});
							
						}else{
							$(".matrixdiv"+question+" ."+px[jk]+"array"+(sx+1)+"").css({"background":"#ffe8f0","color":"red","padding-bottom":"8px"});
							 $("#matrixquestiondiv"+question).find(".matrixbckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
						}
					}
					
					var ansx = rarray[sx].split(",");
					for(var sk = 0;sk<ansx.length;sk++){
						
						if(qx.indexOf(ansx[sk]) != -1){
							var answ = ansx[sk];
							
							$(".matrixdiv"+question+" input[value='" + answ + "']").prop('checked', true);
							$(".matrixdiv"+question+" ."+answ+"array"+(sx+1)+"").css({"background":"#cbf5d8","color":"darkgreen","padding-bottom":"8px"});
							 $("#matrixquestiondiv"+question).find(".matrixbckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
							
						}
					}
				}
				
				 $(".matrixdiv"+question).find(".option-input").prop("disabled",true);
					$(".matrixsolution"+question).html(appenddata);
	
		}else if( spaceansweroption.indexOf(",") != -1){
			
			
			
			 
			var splitstudentoption = spacestudentoption.split(",");
			var splitansweroption = spaceansweroption.split(",");
			

						
			
					for(var m=0;m<splitstudentoption.length;m++){
						var studentbreak = spacestudentoption.split(",");
						if(spaceansweroption.indexOf(studentbreak[m]) != -1){
							// multi correct
							$(".multiopdiv"+question).find(".multioptions"+studentbreak[m]).css({"color":"black"});
							$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid #22b14c"});
							$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"background":"#cbf5d8","padding-bottom":"8px"});
						    $(".multiopdiv"+question+" #multioptiondiv"+studentbreak[m]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
							$("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
							 
							 // multi comprehension
							$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+studentbreak[m]).css({"color":"black"});
							$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid #22b14c"});
						    $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"background":"#cbf5d8","padding-bottom":"8px"});
						    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+studentbreak[m]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    
						    $("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
								 
						 
								 
						}else{
							// multi correct
							$(".multiopdiv"+question).find(".multioptions"+studentbreak[m]).css({"color":"black"});
							$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid red"});
							$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"background":"#ffe8f0","padding-bottom":"8px"});
						    $(".multiopdiv"+question+" #multioptiondiv"+studentbreak[m]).find(".select"+question).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
							$("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
							
							// multi comprehension

							$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+studentbreak[m]).css({"color":"black"});
							$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid red"});
							 $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"background":"#ffe8f0","padding-bottom":"8px"});
							$(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+studentbreak[m]).find(".select"+comprehension).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    								 
							 $("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
							 
								
						}
					}
					
					 $(".multiopdiv"+question).find(".option-input").prop("disabled",true);
						$(".multisolution"+question).html(appenddata);
						 $(".multicompreopdiv"+comprehension).find(".option-input").prop("disabled",true);
							$(".multicompresolution"+comprehension).html(appenddata);
							
				
					for(var js=0;js<splitansweroption.length;js++){
						// multi correct
						
						$(".multiopdiv"+question).find(".multioptions"+splitansweroption[js]).css({"color":"black"});
						$(".multiopdiv"+question).find("#multioptiondiv"+splitansweroption[js]).css({"background":"#cbf5d8","padding-bottom":"8px"});
						$(".multiopdiv"+question).find("#multioptiondiv"+splitansweroption[js]).css({"border-bottom":"1.2px solid #22b14c"});
						$(".multiopdiv"+question+" #multioptiondiv"+splitansweroption[js]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
						
						// multi comprehension
						$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+splitansweroption[js]).css({"color":"black"});
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+splitansweroption[js]).css({"border-bottom":"1.2px solid #22b14c"});
					    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+splitansweroption[js]).find(".correct"+comprehension).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+splitansweroption[js]).css({"background":"#cbf5d8","padding-bottom":"8px"});
						
					 }
					
					
		
		}else{
			
			
			
									
					if(spaceansweroption == spacestudentoption){
					// single
					$(".singleopdiv"+question).find(".singleoptions"+spaceansweroption).css({"color":"black"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					$("#singlequestiondiv"+question).find(".singlebckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					$(".singleopdiv"+question+" #singleoptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});
					$(".singleopdiv"+question).find(".option-input").prop("disabled",true);
					$(".singlesolution"+question).html(appenddata);
					
					$(".compreopdiv"+comprehension).find(".compreoptions"+spaceansweroption).css({"color":"black"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					$("#comprequestiondiv"+comprehension).find(".comprebckground"+comprehension).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					$(".compreopdiv"+comprehension+" #compreoptiondiv"+spaceansweroption).find(".correct"+comprehension).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});
					$(".compreopdiv"+comprehension).find(".option-input").prop("disabled",true);
					$(".compresolution"+comprehension).html(appenddata);
					
					
					// integer
					$(".integer"+question).find(".mainscreen"+question).css({"background":"#cbf5d8","color":"darkgreen"});
					$(".integer"+question).find(".button").prop("disabled",true);
					$("#intequestiondiv"+question).find(".intebckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					$(".intesolution"+question).html(appenddata);
					}else {						
					// single
					$(".singleopdiv"+question).find(".singleoptions"+spaceansweroption).css({"color":"black"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					$(".singleopdiv"+question+" #singleoptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});
					
					
					$(".singleopdiv"+question).find(".singleoptions"+spacestudentoption).css({"color":"black"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spacestudentoption).css({"border-bottom":"1.2px solid red"});
					$(".singleopdiv"+question).find("#singleoptiondiv"+spacestudentoption).css({"background":"#ffe8f0","padding-bottom":"8px"});
					$(".singleopdiv"+question+" #singleoptiondiv"+spacestudentoption).find(".select"+question).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});
					$("#singlequestiondiv"+question).find(".singlebckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
					$(".singleopdiv"+question).find(".option-input").prop("disabled",true);
					$(".singlesolution"+question).html(appenddata);
					
					
					$(".compreopdiv"+comprehension).find(".compreoptions"+spaceansweroption).css({"color":"black"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					$(".compreopdiv"+comprehension+" #compreoptiondiv"+spaceansweroption).find(".correct"+comprehension).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});

					$(".compreopdiv"+comprehension).find(".compreoptions"+spacestudentoption).css({"color":"black"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spacestudentoption).css({"border-bottom":"1.2px solid red"});
					$(".compreopdiv"+comprehension).find("#compreoptiondiv"+spacestudentoption).css({"background":"#ffe8f0","padding-bottom":"8px"});
					$(".compreopdiv"+comprehension+" #compreoptiondiv"+spacestudentoption).find(".select"+comprehension).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});						
					$("#comprequestiondiv"+comprehension).find(".comprebckground"+comprehension).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
					$(".compreopdiv"+comprehension).find(".option-input").prop("disabled",true);
					$(".compresolution"+comprehension).html(appenddata);
					
					// integer
					$(".integer"+question).find(".mainscreen"+question).css({"background":"#ffe8f0","color":"red"});
					$(".integer"+question).find(".button").prop("disabled",true);
					$("#intequestiondiv"+question).find(".intebckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
					$(".intesolution"+question).html(appenddata);
			
	            }
    	}
	    
	    
	    
        $(".getsubmit").hide();
    	$(".skipstn").hide();
    	$(".getnext").show();
		
    // submitQuestion(); // do the preparation for next question display
		
		
		
    }
 
/*function updateStatusOfSubmitedQues()
{
	// need to hide skip and submit and show next button
	 

var StuAns=	jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer;
var actualCorrectAns=	jsondata.topicsList[currenttopicno].questionsList[currentquestionno].answer;
	 if(StuAns == actualCorrectAns)
	 {
	 // if user wrote correct calculate accuracy,speed,time
	 iscorrect  =true;
	 totalCorrectquestinStageRound++;
	 addPrev5QuesStatusRtWrong(1); // 1 is right answerd by student
	 }else
	 {
	  iscorrect  =false;
	  totalwrong++;
	  addPrev5QuesStatusRtWrong(0); // 0 is wrong answerd by student
	 }
	// if user wrote wrong check is this question consecutively wrong
	 if(iscorrect == true && isunattempted ==false)
	 {
		 consecutive_correct_answer++;
		 consecutive_8_correct_answer++;
		 consecutive_wrong_answers =0;
		 consecutive_8_wrong_answers=0;
		 consecutive_unattempted=0;
		 noofcorrectintopic++;
	 }
	 if(iscorrect == false && isunattempted == false)
	 {
		 consecutive_correct_answer=0;
		 consecutive_8_correct_answer=0;
		 consecutive_wrong_answers++;
		 consecutive_8_wrong_answers++;
		 consecutive_unattempted=0;
		 noofwrongintopic++;
	 }
	 
	
	 
	 
}*/


function updateStatusOfSubmitedQues(answer)
{
	// need to hide skip and submit and show next button
	var question = jsondata.topicsList[currenttopicno].questionsList[currentquestionno].orginalquestionId;
	var comprehension = jsondata.topicsList[currenttopicno].questionsList[currentquestionno].comprehensionId;
	  var questionanswer = {
	    		"questionId":question,
	    		"comprehensionQuestionId":comprehension,
	    		"studentAnswer":answer,
	    		 "examtypeId":''
	    	}	
	  var questionstr = JSON.stringify(questionanswer);
		$.ajax({
			type : "POST",
			url : base_url + 'rest/student/checkQuestion',
			dataType : "json",
			contentType : 'application/json',
			data:questionstr,
			success : function(data) {
				var StuAns=	jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer;
				var actualCorrectAns=	jsondata.topicsList[currenttopicno].questionsList[currentquestionno].answer;
					 if(data[0].correctQuestion == true)
					 {
					 // if user wrote correct calculate accuracy,speed,time
						 jsondata.topicsList[currenttopicno].questionsList[currentquestionno].iscorrectkey = true;
					 iscorrect  =true;
					 totalCorrectquestinStageRound++;
					 addPrev5QuesStatusRtWrong(1); // 1 is right answerd by student
					 }else
					 {
						 jsondata.topicsList[currenttopicno].questionsList[currentquestionno].iscorrectkey = false;
					  iscorrect  =false;
					  totalwrong++;
					  addPrev5QuesStatusRtWrong(0); // 0 is wrong answerd by student
					 }
					// if user wrote wrong check is this question consecutively wrong
					 if(iscorrect == true && isunattempted ==false)
					 {
						 consecutive_correct_answer++;
						 consecutive_8_correct_answer++;
						 consecutive_wrong_answers =0;
						 consecutive_8_wrong_answers=0;
						 consecutive_unattempted=0;
						 noofcorrectintopic++;
					 }
					 if(iscorrect == false && isunattempted == false)
					 {
						 consecutive_correct_answer=0;
						 consecutive_8_correct_answer=0;
						 consecutive_wrong_answers++;
						 consecutive_8_wrong_answers++;
						 consecutive_unattempted=0;
						 noofwrongintopic++;
					 }
				
				
			},
			error:function(){
				 alert("Submitting the question is failed");	
				}
			})
}
var timetilllastqns=0;
var totalQuestionspentime = 0;
 function updateAnstoJson()
 {
 	var oc = 0;
 	var optionChecksValues = [];
 	var seclectedmatrix="";
 	var questionAnsweredflag= false;
 	var eachquestiontime;
 	
 	var questionid = $('#allQuestions').find('li.active a').attr('data-questionid');
 	var comprehension = $('#allQuestions').find('li.active a').attr('data-comprehensionid');
 	var questiontype = $('#allQuestions').find('li.active a').attr('data-type');
 	var queslistarray = jsondata.topicsList[currenttopicno].questionlist;

 	var fetchtime = $(".get_questions_timer").text();
    var splitfetchtime = fetchtime.split(":");
    var hourssec = parseInt(splitfetchtime[0]) * 60 * 60;
    var minsec = parseInt(splitfetchtime[1]) * 60;
    var finaltime = hourssec+minsec+parseInt(splitfetchtime[2]);

 	eachquestiontime = parseInt(finaltime);
var timespentonques = eachquestiontime - timetilllastqns;
	timetilllastqns = eachquestiontime;

	totalQuestionspentime += timetilllastqns;
	
 	if( questiontype!="Integer" && questiontype!="Matrix")
 	{  
 		if(questiontype=="Singlecorrect" || questiontype=="Multicorrect"){
 		$('#question'+questionid+' .option-input:checked').each(function () {
 			optionChecksValues[oc++] = $(this).val();
 			questionAnsweredflag= true;
 		});
 		optionChecksValues = optionChecksValues.join(',');
 		}else{
 			$('#question'+comprehension+' .option-input:checked').each(function () {
 	   			optionChecksValues[oc++] = $(this).val();
 	   			questionAnsweredflag= true;
 	   		});
 	   		optionChecksValues = optionChecksValues.join(',');
 		}
 		questionstatus = 1;

 	}else 
 	{
 		if( questiontype=="Integer" )
 		{
 			optionChecksValues=$('.mainscreen'+questionid).val();
 			questionstatus = 1;
 			if(optionChecksValues!="")
 				questionAnsweredflag=true;
 		}
 		else
 		{
 			optionChecksValues = [];
 			oc=0;
 			$('.optioncheck1'+questionid+':checked').each(function () {
 				optionChecksValues[oc++] = $(this).val();
 				questionAnsweredflag=true;
 			});
 			optionChecksValues = optionChecksValues.join(',');
 			seclectedmatrix= optionChecksValues+"|";
 			optionChecksValues = [];
 			oc=0;
 			$('.optioncheck2'+questionid+':checked').each(function () {
 				optionChecksValues[oc++] = $(this).val();
 				questionAnsweredflag=true;
 			});
 			optionChecksValues = optionChecksValues.join(',');
 			seclectedmatrix+= optionChecksValues+"|";
 			optionChecksValues = [];
 			oc=0;
 			// optionChecksValues = optionChecksValues.join(',');
 			$('.optioncheck3'+questionid+':checked').each(function () {
 				optionChecksValues[oc++] = $(this).val();
 				questionAnsweredflag=true;
 			});
 			optionChecksValues = optionChecksValues.join(',');
 			seclectedmatrix+= optionChecksValues+"|";
 			optionChecksValues = [];
 			oc=0;
 			// optionChecksValues = optionChecksValues.join(',');
 			$('.optioncheck4'+questionid+':checked').each(function () {
 				optionChecksValues[oc++] = $(this).val();
 				questionAnsweredflag=true;
 			});

 			optionChecksValues = optionChecksValues.join(',');
 			seclectedmatrix+= optionChecksValues;
 			// optionChecksValues = [];
 			optionChecksValues=seclectedmatrix;
 			oc=0;

 			questionstatus = 1;
 		}



 	}


 	
 			jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer= optionChecksValues;
 			jsondata.topicsList[currenttopicno].questionsList[currentquestionno].questionWiseTimeSpent += timespentonques;
 			jsondata.topicsList[currenttopicno].totalTimeSpentOnTopic += timespentonques;
 			jsondata.topicsList[currenttopicno].questionsList[currentquestionno].questionStatus = questionstatus;

 			//console.log(jsondata);
 		if(questionNo == 1 ){
		timeseenlastque += timespentonques; 
 timeseenlastsecque =0;
timeseenlastthirdque =0;
 timeseenlastfourque =0;
 

	 }else{
		 timeseenlastfourque += timeseenlastthirdque;
		 timeseenlastthirdque += timeseenlastsecque;
		 timeseenlastsecque += timeseenlastque;
		 timeseenlastque += timespentonques; 
 }

 			
 			
 			return questionAnsweredflag;
 }
 
    
    var counter = 0;
    var scrolled = 0;
    function counterli(){
    	var stage_btn = getParameterByName("stage_btn");
    	if(stage_btn != "" && stage_btn != null && stage_btn != undefined){
    		if(questionNo == 1){
    			
    		}else{
    			counter++;
    		}
    		
    	}else{
    		counter++;
    	}
    	$("#allQuestions>li.active").removeClass("active");
    	 $('#allQuestions li:eq('+counter+') a').click(); 
    }
	var firstshow_which_one = false;
	var show_param_list = false;
	var test_cpmpleted = false;
	function applausewhenparamcomplted(){
		var Aimessage="";
		 var Aiimage="";
		 var color="#A349A4";
		 
		 var LoginData = getLoginData();
			var sname = LoginData.name;
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
				Aimessage += '<p>Hi '+sname+', Congratulations!!</p>'+
				'<p>You have achieved'+jsondata.topicsList[currenttopicno].topicName+'</p>'+
	  '<p>Keep going..</p>';

		   Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="get_param_list(\'enable\')" >Lets go</button>&nbsp;';
		   
				$('#chapterint').empty();
				 $("#modalcss").css("background-color",color);
				 $('#chapter_name').html(jsondata.chapterName); 
				 $('#robo_image').html(Aiimage);
				 $('#chapterint').html(Aimessage);
				$('#chapterint > p').css("color","#fff");
				$("#clsebtn").remove();
				$('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
					 $(".examcheckstatus").modal('show');
					 
					
				
					$('.timer').countimer('stop');
					
					 return true;
	}
	var showaccuracy = []; //this variable is for showing accuracy in stage 2 only for student we are not qualifying paramnter based on this accuracy
function onNextBtnClick(){ //stage 1 and stage 2 next button method
	firstshow_which_one = validateAIcases();
	var isParameterPopupShow= false;
	//console.log("currentquestionno = " + currentquestionno);
	//console.log("noOfQuesShowinTopic = " + noOfQuesShowinTopic);
	var total_attempted = noofcorrectintopic+noofwrongintopic+noofunattemptedinTopic; 
	var total_topic_attempted = noofcorrectintopic+noofwrongintopic;
	if(total_topic_attempted == noOfQuesShowinTopic || currentquestionno+1 == jsondata.topicsList[currenttopicno].maxShowNoQuestions || currentquestionno+1 == jsondata.topicsList[currenttopicno].questionsList.length)
	{
		jsondata.topicsList[currenttopicno].noOfAttemptedquestions = noofcorrectintopic;
		jsondata.topicsList[currenttopicno].notAnsweredCount = noofwrongintopic;
		jsondata.topicsList[currenttopicno].notVisitedCount = noofunattemptedinTopic;
		// for stage 1 and stage 2we need to qualify based on acciuracy etc
		if(total_topic_attempted == jsondata.topicsList[currenttopicno].firstShowNoQuestions)
		{	
			showaccuracy.push(Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0)));
		jsondata.topicsList[currenttopicno].studentAccuracy= Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0));
		}else{
			showaccuracy.push(Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0)));
			jsondata.topicsList[currenttopicno].studentAccuracy=0;
		}
		
		noofunattemptedinTopic=0; noofwrongintopic=0; noofcorrectintopic=0;
		if(jsondata.currentCIStatus == "S2R1" || jsondata.currentCIStatus == "S2R2" || jsondata.currentCIStatus == "S2R3" || jsondata.currentCIStatus == "S2R4")
		{
	    
	    	 isParameterPopupShow= true;
		 
	    	 unattempted_topicarray=[];
	    	 checkifthistopicwrote();
				  if(unattempted_topicarray.length >0){
					   show_param_list = true;
					   if(jsondata.topicsList[currenttopicno].studentAccuracy >= 60 ){
						   
						   applausewhenparamcomplted();
					   }else{
						   get_param_list('enable');
					   }
					 
				  }else
					  {

					   console.log(" all topic reached");
					   alert("You reached end of practice");
					   test_cpmpleted = true;
					   $("#pause_btn").hide();
						$("#finishtest").show();
						$(".getsubmit").hide(); // end of all topics reached
						$(".skipstn").hide();
						$(".getnext").hide();
						showfinish();
					  return;
					  }
	     
         }else{
	currenttopicno++;
		
					currentquestionno=0;
					   if(currenttopicno==jsondata.topicsList.length)
						{
						   console.log(" all topic reached");
						   alert("You reached end of practice");
						   test_cpmpleted = true;
						$("#pause_btn").hide();
						$("#finishtest").show();
						$(".getsubmit").hide(); // end of all topics reached
						$(".skipstn").hide();
						$(".getnext").hide();
						showfinish();
						return;
						}else
							{
							
						questionNo++;
							}
}
		
		
		
	}else{
		currentquestionno++;
		
		
		questionNo++;
	}
	
	
	
	console.log(" im also from submitquestion()");

	$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	// if last topic reached then making topic to zero
	if(currenttopicno == jsondata.topicsList.length){
		currenttopicno=0;
		currentquestionno=0;
		$(".getsubmit").hide(); // end of all topics reached
		$(".skipstn").hide();
	}else
		{
		   if(isParameterPopupShow== false)
			{  // parameter popup is not showing
				questiondisplay();
			    counterli();
			}
		
		
		}
	
	scrolled=scrolled+80;
    
	$(".get_questions_list_div").animate({
	        scrollTop:  scrolled
	   });
	
}
function resetAllAi()
{
	consecutive_wrong_answers=0;
	consecutive_correct_answer=0;
	consecutive_unattempted=0;
	
	Prev5QuesStatusRtWrong=[];
}

function validateAIcases()
{
	
	
	     if(jsondata.chapApproachAvailable ==true)
		 {    //4 consecutive wrong ans
			 if(consecutive_wrong_answers == 4 && consecutive_correct_answer == 0 && consecutive_unattempted == 0 )
			 {
				 			 
					  if(approachlastque >= 60 &&  approachlastsecques >= 60 && approachlastthirdques >= 60 && approachlastfourquest >= 60 )
					  {
						  showAIPopupModal('3','');
						  return true;
					  }else 
						  if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest==0)
						  {
							  showAIPopupModal('1',''); return true;
						  } else
						  if(approachlastque <= 30 &&  approachlastsecques <= 30 && approachlastthirdques <= 30 && approachlastfourquest <= 30 )
						  {
							  showAIPopupModal('2',''); return true;
						  }
				  
		 	} // end of 4 consecutive wrong ans
			
			
			// 8 consecutive wrong ans
			 if(consecutive_8_wrong_answers == 8 && consecutive_correct_answer == 0 && consecutive_unattempted == 0 )
			 {
				 if(timeseenlastque >=120 && timeseenlastsecque >=120 && timeseenlastthirdque >=120 && timeseenlastfourque >=120 )
				  {
					  if(approachlastque >= 60 &&  approachlastsecques >= 60 && approachlastthirdques >= 60 && approachlastfourquest >= 60 )
					  {
						  showAIPopupModal('4','');
						  consecutive_8_wrong_answers=0; return true;
					  }
				  }
			 }
		 
		
		
		 // if 4 consecutive unatempted
		 if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 0 && consecutive_unattempted == 4)
		 {
			 if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest==0)
			 {
			 showAIPopupModal('7',''); return true;
			 } 
			 if(approachlastque > 0 &&  approachlastsecques > 0 && approachlastthirdques > 0 && approachlastfourquest > 0)
			 {
			    showAIPopupModal('8',''); return true;
			 }
		 }
		       //3 Or greater than 3 Qns. correct out of 5 Qns., but not consecutively correct. Seeing/NOT seeing Approach
		      if( getPrev5QuesStatusRtWrong(1)>=3) // passing 1 ia right ans
			   {
			     	  showAIPopupModal('15',getPrev5QuesStatusRtWrong(1)); return true;
			   }
		      //3 or greater than 3 Qns. Wrong out of 5 Qns., but not consecutively wrong NOT Seeing Approach
		      if( getPrev5QuesStatusRtWrong(0)>=3  && approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest==0)  //passing 0 is wrong ans
			   {
			     	  showAIPopupModal('16',getPrev5QuesStatusRtWrong(0)); return true;
			   }
		      
		      //3 or greater than 3 Qns. Wrong out of 5 Qns., but not consecutively wrong, Seeing Approach
		      if( getPrev5QuesStatusRtWrong(0)>=3 && approachlastque > 0 &&  approachlastsecques > 0 && approachlastthirdques > 0 && approachlastfourquest > 0 )  //passing 0 is wrong ans
			   {
		     	  showAIPopupModal('17',getPrev5QuesStatusRtWrong(0)); return true;
		   }
		     
		      if( getPrev5QuesStatusRtWrong(2)>=3 && approachlastque > 0 &&  approachlastsecques > 0 && approachlastthirdques > 0 && approachlastfourquest > 0) // passing 1 ia skip ans
			   {
			     	  showAIPopupModal('20',getPrev5QuesStatusRtWrong(2)); return true;
			   }
		      if( getPrev5QuesStatusRtWrong(2)>=3 && approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest==0) // passing 1 ia skip ans
			   {
			     	  showAIPopupModal('21',getPrev5QuesStatusRtWrong(2)); return true;
			   }
		      // if 3 consecutive answers correct
				 if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 3 && consecutive_unattempted == 0)
				 {
					 if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0)
					 {
				 			 showAIPopupModal('5',''); return true;
					 }
				 }
				// if 8 consecutive answers correct
				 if(consecutive_wrong_answers == 0 && consecutive_8_correct_answer == 8 && consecutive_unattempted == 0)
				 {
					 if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest==0)
					 {
				    	showAIPopupModal('6','');
				    	consecutive_8_correct_answer=0; return true;
					 }
				 }
		 
		}else   // if approach for chapter is false
		 {
			//consecutive 4 wrong ans
		    if(consecutive_wrong_answers == 4 && consecutive_correct_answer == 0 && consecutive_unattempted == 0)
		    {
				 if(timeseenlastque >=120 && timeseenlastsecque >=120 && timeseenlastthirdque >=120 && timeseenlastfourque >=120 )
				 {
				   showAIPopupModal('9',''); return true;
				 }
				 if(timeseenlastque < 120 && timeseenlastsecque < 120 && timeseenlastthirdque < 120 && timeseenlastfourque < 120 )
				 {
				   showAIPopupModal('10',''); return true;
				 }
		    }
		    // if 8 consecutive answers wrong
			 if(consecutive_8_wrong_answers == 8 && consecutive_correct_answer == 0 && consecutive_unattempted == 0)
			 {
				 if(timeseenlastque >=120 && timeseenlastsecque >=120 && timeseenlastthirdque >=120 && timeseenlastfourque >=120 )
				 {
				   showAIPopupModal('11','');
				   consecutive_8_wrong_answers=0; return true;
				 }
			 }
		   
			//consecutive 8 unattempted
			if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 0 && consecutive_unattempted == 8)
			{
				showAIPopupModal('14',''); return true;
			}		
			
			  //3 Or greater than 3 Qns. correct out of 5 Qns., but not consecutively correct. 
		      if( getPrev5QuesStatusRtWrong(1)>=3) // passing 1 ia right ans
			   {
			     	  showAIPopupModal('18',getPrev5QuesStatusRtWrong(1)); return true;
			   }
		      //3 or greater than 3 Qns. Wrong out of 5 Qns., but not consecutively wrong.
		      if( getPrev5QuesStatusRtWrong(0)>=3 )  //passing 0 is wrong ans
			   {
			     	  showAIPopupModal('19',getPrev5QuesStatusRtWrong(0)); return true;
			   }
		      if( getPrev5QuesStatusRtWrong(2)>=3 )  //passing 0 is wrong ans
			   {
			     	  showAIPopupModal('22',getPrev5QuesStatusRtWrong(2)); return true;
			   }
		      // consecutive 3 answers correct
				if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 3 && consecutive_unattempted == 0)
				{
					showAIPopupModal('12',''); return true;
				}	 
				// consecutive 4 unattempted
				if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 0 && consecutive_unattempted == 4)
				{
				    showAIPopupModal('13',''); return true;
				}
			
			
		 } // end of chapter approch is not there ( false)
	 
	
	 return false;
}
// returns  the parameter ans right or wrong found no of times in this 
function getPrev5QuesStatusRtWrong(ans)
{
	  var count =0;
	 // var ans=1;
	     if(Prev5QuesStatusRtWrong.length>=5)
	     for(var i =0; i < Prev5QuesStatusRtWrong.length; ++i)
	     {
	      if(Prev5QuesStatusRtWrong[i]==ans )
	       count++;
	     }
	
return 	count;//  return no of times ans status found
}
function addPrev5QuesStatusRtWrong(ans)
{
		if(Prev5QuesStatusRtWrong.length<=4)
	    {
			Prev5QuesStatusRtWrong.push(ans);
			
	    }else
    	{
    	Prev5QuesStatusRtWrong.shift();// will remove first element
    	Prev5QuesStatusRtWrong.push(ans);// then push the ans
    	}

}

function skipQuestion(){ //stage 1 and stage 2 skip question method
	var isParameterPopupShown= false;
  addPrev5QuesStatusRtWrong(2); // 2 is skip answerd by student
	totalunatemptedQuestinStageRound++;// to show in summary of stageround
	  consecutive_wrong_answers=0;  // incrementing wrong as question is skiped
	  consecutive_8_wrong_answers=0;
	  consecutive_correct_answer=0; //making zero as continues answering breaked as skiped
	  consecutive_8_correct_answer=0;
	  consecutive_unattempted++;// incrementing unattempted as question is skiped
	  noofunattemptedinTopic++;
	  validateAIcases();
	
	  var total_attempted = noofcorrectintopic+noofwrongintopic+noofunattemptedinTopic; 
	  var total_topic_attempted = noofcorrectintopic+noofwrongintopic; 
		if(total_topic_attempted == noOfQuesShowinTopic || currentquestionno+1 == jsondata.topicsList[currenttopicno].maxShowNoQuestions || currentquestionno+1 == jsondata.topicsList[currenttopicno].questionsList.length)
		{
			
			jsondata.topicsList[currenttopicno].noOfAttemptedquestions = noofcorrectintopic;
			jsondata.topicsList[currenttopicno].notAnsweredCount = noofwrongintopic;
			jsondata.topicsList[currenttopicno].notVisitedCount = noofunattemptedinTopic;
			var total_attempted = noofcorrectintopic+noofwrongintopic+noofunattemptedinTopic;
			//Stage-1 and stage 2  accuracy calculation,need to Qualify or change rounds based on accuracy. 
			if(total_topic_attempted == jsondata.topicsList[currenttopicno].firstShowNoQuestions)
			{	
				showaccuracy.push(Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0)));
			jsondata.topicsList[currenttopicno].studentAccuracy= Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0));
			}else{
				showaccuracy.push(Number(((noofcorrectintopic/total_topic_attempted)*100).toFixed(0)));
				jsondata.topicsList[currenttopicno].studentAccuracy=0;
			}
			
			
			noofunattemptedinTopic=0; noofwrongintopic=0; noofcorrectintopic=0;
			if(jsondata.currentCIStatus == "S2R1" || jsondata.currentCIStatus == "S2R2" || jsondata.currentCIStatus == "S2R3" || jsondata.currentCIStatus == "S2R4" )
			{
				
					isParameterPopupShown= true;
					 unattempted_topicarray=[];
			    	 checkifthistopicwrote();
						  if(unattempted_topicarray.length >0){
							   show_param_list = true;
							   if(jsondata.topicsList[currenttopicno].studentAccuracy >= 60 ){
								   
								   applausewhenparamcomplted();
							   }else{
								   get_param_list('enable');
							   }
						  }else
							  {

							   console.log(" all topic reached");
							  
							   test_cpmpleted = true;
							   $("#pause_btn").hide();
								$("#finishtest").show();
								$(".getsubmit").hide(); // end of all topics reached
								$(".skipstn").hide();
								$(".getnext").hide();
								showfinish();
							  return;
							  }
				}else
				{
						currenttopicno++;
						currentquestionno=0;
					   if(currenttopicno==jsondata.topicsList.length)
						{
						   console.log(" all topic reached");
						  test_cpmpleted = true;
						}else
							{
							console.log(" topic shifted");
					
						questionNo++;
							}
				}
			
		}else{
			currentquestionno++;
			questionNo++;
		}
	  
	
	  console.log(" no is " + currentquestionno);
	$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	// if last topic reached then making topic to zero
	if(currenttopicno == jsondata.topicsList.length){
		currenttopicno=0;
		currentquestionno=0;
		$(".getsubmit").hide(); // end of all topics reached
		$(".skipstn").hide();
		$("#pause_btn").hide();
	$("#finishtest").show();
	showfinish();
	}else
		{
		if(isParameterPopupShown==false)
			{		
			questiondisplay();
		    counterli();
			}
		
		}
	scrolled=scrolled+80;
    
	$(".get_questions_list_div").animate({
	        scrollTop:  scrolled
	   });
	
}
function showAIPopupModal(popupcase,num){
 var Aimessage="";
 var Aiimage="";
 var color="";
 console.log("Case NO = "+ popupcase);
 var LoginData = getLoginData();
	var sname = LoginData.name;
 switch(popupcase){
		case '1':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 4 wrong answers consecutively</p>'+
   '<p>Please refer Approach of the Question and try to answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
			break;
		case '2':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 4 wrong answers consecutively</p>'+
   '<p>Please spend some more time on Approach of the Question</p>'+
   '<p>Think! try to answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';	
			break;
		case '3':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 4 wrong answers consecutively</p>'+
   '<p>Do concentrate!</p>'+
'<p>Refer concepts & basics of the chapter try to answer.</p>'+
 '<p>Put your maximum effort.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '4':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', you are marking wrong answers for maximum Qns.</p>'+
   '<p>Accuracy is most important.</p>'+
    '<p>Please revise All Concepts &basics of the chapter.</p>'+
	'<p>Think ! Think! Before you answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '5':
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 3 correct answers without seeing approach.</p>'+
   '<p>Keep it up!</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '6':
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 8 correct answers without seeing approach. </p>'+
   '<p>Rocking!</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '7':
		color = "#fde17d";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', I am Unhappy.</p>'+
   '<p>You are not attempting questions.</p>'+
   '<p>Please refer Approach of the Question and try to answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '8':
		color = "#fde17d";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
			Aimessage = '<p>Hi'+sname+', I am Unhappy.</p>'+
   '<p>You are not attempting questions.</p>'+
    '<p>Please refer the Concepts &basics of the chapter.</p>'+
	 '<p>Think & try to answer.<i class="fa fa-thumbs-up" aria-hidden="true"></i></p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '9':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 4 wrong answers consecutively.</p>'+
   '<p>Please refer Concepts related to the Questions.<p>'+
   '<p>Check whether you are strong at your basics of the chapter.</p>'+
   '<p>try to answer. Dont give up <i class="fa fa-thumbs-up" aria-hidden="true"></i></p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '10':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', 4 wrong answers consecutively. </p>'+
   '<p>Spend some more time on question.</p>'+
   '<p>Please refer Concepts & basics related to the Questions.</p>'+
   '<p>try to answer. Dont give up <i class="fa fa-thumbs-up" aria-hidden="true"></i></p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '11':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', you are marking wrong answers for maximum Qns. </p>'+
   '<p>Accuracy is most important.</p>'+
   '<p>Please revise All Concepts &basics of the chapter. </p>'+
   '<p>Think! Think! Before you answer. Take your own time.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '12':
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', three correct answers.</p>'+
   '<p>Keep it up!</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '13':
		color = "#fde17d";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', I am Unhappy.</p>'+
   '<p>You are not attempting questions.</p>'+
    '<p>Please refer the Concepts &basics of the chapter.</p>'+
	 '<p>Think & try to answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '14':
		color = "#fde17d";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', I am Unhappy.</p>'+
   '<p>You are not at all trying to answer.</p>'+
    '<p>Please refer the Concepts &basics of the chapter.</p>'+
	 '<p>Recollect what you studied & try to answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Lets go</button>';
		break;
		case '15':
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', </p>'+
   '<p>'+num+' Correct Out of 5 Questions</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Go Ahead</button>';
		break;
		case '16':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', '+num+' wrong out of last 5 Qns</p>'+
   '<p>take approach help</p>'+
   '<p>Try to mark correct answers</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal" >okay got it</button>';
		break;
		case '17':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+','+num+' wrong out of last 5 Qns</p>'+
   '<p>Do concentrate Follow The approach correctly</p>'+
   '<p>Acccuracy is important</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">okay got it</button>';
		break;
		case '18':
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', '+num+' Correct out of last 5 qns</p>'+
  
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Go Ahead!</button>';
		break;
		case '19':
		color = "#ef698e";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p>Hi '+sname+', '+num+' Wrong out of last 5 qns</p>'+
   '<p>Revise Concepts,Formulas.</p>'+
   '<p>Check your basics Of the chapter.</p>'+
   '<p>Try to  mark correct answer.</p>'+
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Okay Got it</button>';
		break;
		case '21':
			color = "#fde17d";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
				Aimessage = '<p>Hi '+sname+', '+num+' Un Attempted out of 5 Qns</p>'+
	   '<p>take approach help</p>'+
	   '<p>Try to mark correct answers</p>'+
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal" >okay got it</button>';
			break;
			case '20':
			color = "#fde17d";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
				Aimessage = '<p>Hi '+sname+','+num+' Un Attempted out of 5 Qns</p>'+
	   '<p>Do concentrate Follow The approach correctly</p>'+
	   '<p>Acccuracy is important</p>'+
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">okay got it</button>';
			break;
			case '22':
				color = "#fde17d";
				Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_yellow.gif"  height="200px;">';
					Aimessage = '<p>Hi '+sname+', '+num+' Un Attempted  Out of 5 qns</p>'+
		   '<p>Revise Concepts,Formulas.</p>'+
		   '<p>Check your basics Of the chapter.</p>'+
		   '<p>Try to  mark correct answer.</p>'+
		    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Okay Got it</button>';
				break;
	
		
	}
	$('#chapterint').empty();
	 $("#modalcss").css("background-color",color);
	 $('#chapter_name').html(jsondata.chapterName); 
	 $('#robo_image').html(Aiimage);
	 $('#chapterint').html(Aimessage);
	$('#chapterint > p').css("color","#fff");
	  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
		 $(".examcheckstatus").modal('show');
		 resetAllAi();
	 //$("#examcheckstatus").modal({show:true});
		// alert(Aimessage);
		$('.timer').countimer('stop');
		
		 return true;
 }
var avgAccuracys=[];
var curenavgacuracy =[];
function onFinishTestClick(type)
{
	//calculate the accuracy/ percentage/speed of each topic
	 //if all topics got 60% as needed then change the current S1R1 to next level and save it in data base
	var alltopicsReachedAccuracy=0;
	if(jsondata.currentCIStatus=="S3R5" || jsondata.currentCIStatus=="S3R6"){
		var total_qnslength = jsondata.topicsList[currenttopicno].noOfAttemptedquestions+jsondata.topicsList[currenttopicno].notAnsweredCount+jsondata.topicsList[currenttopicno].notVisitedCount;
	
	}
	 avgAccuracys=[];
	 curenavgacuracy=[];
	 if(jsondata.currentCIStatus=="S3R1" ||jsondata.currentCIStatus=="S3R2"||jsondata.currentCIStatus=="S3R3"){
		 var topicdatalength = (jsondata.topicsList.length)-2;
	 }else{
		 var topicdatalength = jsondata.topicsList.length;
	 }
    	for(var noofTopic=0;noofTopic <topicdatalength; ++noofTopic)
		{
     		var topicAccuracy=0;
     		var correctAnsCount=0;
     		var attemptedAnsCount=0;
     		/*for( noofquestion=0; noofquestion<jsondata.topicsList[noofTopic].questionsList.length;++noofquestion)
			 {
			   //if(jsondata.topicsList[noofTopic].questionsList[noofquestion].studentAnswer==jsondata.topicsList[noofTopic].questionsList[noofquestion].answer)
     			if(jsondata.topicsList[noofTopic].questionsList[noofquestion].iscorrectkey == true)
     			{
				   correctAnsCount++;
    			}
    			if(jsondata.topicsList[noofTopic].questionsList[noofquestion].questionStatus==1) // for attempted
    			{
    				attemptedAnsCount++;
    		 	}
    		 }*/  // end of questions in one topic
     		//jsondata.topicsList[noofTopic].studentAccuracy= ((Number(correctAnsCount)/Number(attemptedAnsCount))*100).toFixed(0);
    		//jsondata.topicsList[noofTopic].studentAccuracy= Number(((Number(correctAnsCount/attemptedAnsCount)*100).toFixed(0));
			if(jsondata.topicsList[noofTopic].studentAccuracy == "NaN" || jsondata.topicsList[noofTopic].studentAccuracy == "undefined" ){
				jsondata.topicsList[noofTopic].studentAccuracy = 0;	
			}
    		avgAccuracys.push(parseInt(jsondata.topicsList[noofTopic].studentAccuracy));
    		curenavgacuracy.push(parseInt(jsondata.topicsList[noofTopic].studentAccuracy));
    		//   avgAccuracys+=jsondata.topicsList[noofTopic].studentAccuracy;
    		// check for near by targetaccuracy reached (do minus 10)
		  if(jsondata.topicsList[noofTopic].studentAccuracy>=jsondata.topicsList[noofTopic].catogoryTargetAccuracy)
			  {
			  alltopicsReachedAccuracy++;
			  }
			 
		}// end of topics accuracy calculating
    	//adding previous stage rounds topics/parameters accuracys to the current one
        	if(jsondata.prevAccuracy !=null && jsondata.prevAccuracy.length>0)
    		{
	    		for ( var k=0; k < jsondata.prevAccuracy.length;++k)
	    			//avgAccuracys.push(jsondata.prevAccuracy[k]);
	    			curenavgacuracy.push(jsondata.prevAccuracy[k]);
    		}
        	//aravind adding progress depending on the parameters /topics completed
        	// will update the progress according to the parameters completed here 
        	if(avgAccuracys !=null && avgAccuracys.length>0)
    		{
        		var noOfParamCompleted=0;
	    		for ( var k=0; k < curenavgacuracy.length;++k)
	    		{
	    		   if(curenavgacuracy[k]>=jsondata.topicsList[0].catogoryTargetAccuracy-10)
	    			{
	    			   noOfParamCompleted++;
	    			}		
	    			
	    		}
	    		var prog= (noOfParamCompleted/curenavgacuracy.length)*100;
	    		jsondata.progress=prog;
    		}
	    if(alltopicsReachedAccuracy< topicdatalength) //shifting to next round in same stage
		{
			var catogoryTargetAccuracy=jsondata.topicsList[0].catogoryTargetAccuracy;
			if(jsondata.currentCIStatus == 'learner'){
				
			}else if(jsondata.currentCIStatus == 'expert'){
				
				
			}
			else{
		if(jsondata.currentCIStatus=="S3R3"){
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,'same');
		}else if(jsondata.currentCIStatus=="S3R4"){
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,'complete');
		}else if(jsondata.currentCIStatus=="S3R5"){
			if(jsondata.topicsList[currenttopicno].questionsList.length == total_qnslength){
				jsondata.topicsList[currenttopicno].noofTimeTopicRepeated += 1;
				}
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,'same');
		}else if(jsondata.currentCIStatus=="S3R6"){
			if(jsondata.topicsList[currenttopicno].questionsList.length == total_qnslength){
				jsondata.topicsList[currenttopicno].noofTimeTopicRepeated += 1;
				}
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,'same');
		}
		else{
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,'stage3only');
		}
			}
	    	
			
	    	//shifting to next round
		}else
		{  // all topics reached targeted accuracy see  ranges and show popups
			jsondata.previousCIStatus=jsondata.currentCIStatus;
			
			if(jsondata.currentCIStatus=="S1R1" ||jsondata.currentCIStatus=="S1R2"||jsondata.currentCIStatus=="S1R3"||jsondata.currentCIStatus=="S1R4")
				{
				var stage_button = "Stage-2"
				jsondata.currentCIStatus="S2R1";
				jsondata.progress=100;
				
				}else if(jsondata.currentCIStatus=="S2R1" ||jsondata.currentCIStatus=="S2R2"||jsondata.currentCIStatus=="S2R3"||jsondata.currentCIStatus=="S2R4")
				{
					var stage_button = "Stage-3"
						jsondata.currentCIStatus="S3R1";
						jsondata.progress=100;
				
				}else if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
					var stage_button = "previous years";
					jsondata.previousCIStatus=jsondata.currentCIStatus;
			    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"previous_param");
					
				}else if(jsondata.currentCIStatus=="S3R4"){
					var stage_button = "chapter Target"       
					jsondata.previousCIStatus=jsondata.currentCIStatus;
			    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"complete");
				}else if(jsondata.currentCIStatus=="S3R5"){
					if(jsondata.topicsList[currenttopicno].questionsList.length == total_qnslength){
						jsondata.topicsList[currenttopicno].noofTimeTopicRepeated += 1;
						}
					var stage_button = "chapter Target";
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"complete");
		}
				else if(jsondata.currentCIStatus=="S3R6"){
					if(jsondata.topicsList[currenttopicno].questionsList.length == total_qnslength){
						jsondata.topicsList[currenttopicno].noofTimeTopicRepeated += 1;
						}
					var stage_button = "chapter Target";
			jsondata.previousCIStatus=jsondata.currentCIStatus;
	    	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"complete");
		}
			
		}
	   var fetchtime = $(".get_questions_timer").text();
	    var splitfetchtime = fetchtime.split(":");
	    var hourssec = parseInt(splitfetchtime[0]) * 60 * 60;
	    var minsec = parseInt(splitfetchtime[1]) * 60;
	    var finaltime = hourssec+minsec+parseInt(splitfetchtime[2]);
	    jsondata.chapterTotalTimeSpent += finaltime;
	
	    
	    ////for pause
		if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" || jsondata.currentCIStatus == "S3R4"){
			 if(type=="pause"){
				 if(currenttopicno >0){
					 /* var checkwrotepause1 = jsondata.topicsList[currenttopicno].noOfAttemptedquestions+jsondata.topicsList[currenttopicno].notAnsweredCount+jsondata.topicsList[currenttopicno].notVisitedCount;
					   var checkwrotepause2 = jsondata.topicsList[currenttopicno-1].noOfAttemptedquestions+jsondata.topicsList[currenttopicno-1].notAnsweredCount+jsondata.topicsList[currenttopicno-1].notVisitedCount;
				var checkwrotepause=checkwrotepause1+checkwrotepause2;
				console.log(jsondata.topicsList[currenttopicno].questionsList.length);
				console.log(jsondata.topicsList[currenttopicno-1].questionsList.length);
				var paramlengthboth = (jsondata.topicsList[currenttopicno].questionsList.length)+(jsondata.topicsList[currenttopicno-1].questionsList.length);
				if(checkwrotepause == paramlengthboth){
					 
				 }else{
					 jsondata.topicsList[currenttopicno].paused="paused";
				 }*/
				  if (currenttopicno % 2 != 0) {
								var checkwrotepause1 = jsondata.topicsList[currenttopicno].noOfAttemptedquestions+jsondata.topicsList[currenttopicno].notAnsweredCount+jsondata.topicsList[currenttopicno].notVisitedCount;
					   var checkwrotepause2 = jsondata.topicsList[currenttopicno-1].noOfAttemptedquestions+jsondata.topicsList[currenttopicno-1].notAnsweredCount+jsondata.topicsList[currenttopicno-1].notVisitedCount;
				var checkwrotepause=checkwrotepause1+checkwrotepause2;	
				var paramlengthboth = (jsondata.topicsList[currenttopicno].questionsList.length)+(jsondata.topicsList[currenttopicno-1].questionsList.length);
								if(checkwrotepause == paramlengthboth){
					 
				 }else{
					 jsondata.topicsList[currenttopicno].paused="paused";
				 }
								}else{
									jsondata.topicsList[currenttopicno].paused="paused";
								}
				}else{
					  jsondata.topicsList[currenttopicno].paused="paused";
				 }
				
				 
				  
				
			 }
	    
		}
	   
	    
	   ////
	/*console.log(" finish called");
	console.log(jsondata);*/
	var strchapter = JSON.stringify(jsondata);
	$.ajax({
		url: base_url+'rest/chapterInteractive/saveChapterStageRound',
		type:"POST",
		 async: false,
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
		success:function(data){
			if(type=="pause"){
				window.location = base_url+'jsp/student/Ainteractive/interactive.jsp?subject='+jsondata.subjectId;
				
			}else if(type=="more"){
				
			}
			else{
				
				if(jsondata.currentCIStatus=="S1R1" ||jsondata.currentCIStatus=="S1R2"||jsondata.currentCIStatus=="S1R3"||jsondata.currentCIStatus=="S1R4"){
				
			}else if(jsondata.currentCIStatus=="S2R1" ||jsondata.currentCIStatus=="S2R2"||jsondata.currentCIStatus=="S2R3"||jsondata.currentCIStatus=="S2R4")
			{
				
			}
			
			if(jsondata.previousCIStatus == 'learner'){
				
					showPopup(6,'');
					
				
			}else if(jsondata.previousCIStatus == 'expert'){
				
				showPopup(7,'');
			}
			else{
				if(alltopicsReachedAccuracy< topicdatalength) //shifting to next round in same stage
				{
					
				 showPopup(5,'');
			    	
			    	//shifting to next round
				}else
				{  
				
					var catogoryTargetAccuracy=jsondata.topicsList[0].catogoryTargetAccuracy;
					
					if(checkAllaccuracy(catogoryTargetAccuracy+20))  // >80-100
					{ 
						showPopup(4,stage_button);
						
					}else
						if(checkAllaccuracy(catogoryTargetAccuracy+10))  // = >70-80
						{ showPopup(3,stage_button);
							
						}else
							if(checkAllaccuracy(catogoryTargetAccuracy))  // = >60 to 70
							{ showPopup(2,stage_button);
								
							}else{
								 showPopup(1,stage_button);
							}	
					
				}
			}
			}
			
			
			 
			//alert(data.message );
			
		},
		error:function(data){
			alert("Failed to Submit Practice");
		}
	
	})
	
}
function show_applause(stage_button){
	var subject = getParameterByName("subject")
		var chapter = getParameterByName("chapter");
		 var LoginData = getLoginData();
	var sname = LoginData.name;
	 if(stage_button == "Stage-3" || stage_button == "previous years"){
		
		 var firstfocusid =  sessionStorage.getItem("firstfocusid");
		 var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&examid='+firstfocusid+'&user_wish=';
	 }else if(stage_button == "chapter Target"){
		 var path = base_url+'jsp/student/Ainteractive/interactive.jsp?subject='+jsondata.subjectId;
	
		 stage_button = "Next Chapter Target"; 
	 }else{
		 var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
	 }
	
	color = "#A349A4";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			Aimessage = '<p style="color:black">Hi '+sname+',</p>'+
   '<p style="color:black">Congratulations You reached '+stage_button+'</p>'+
    
    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Ok</button>';
	$('#chapterint').empty();
	 $("#modalcss").css("background-color",color);
	
	 $('#robo_image').html(Aiimage);
	 $('#chapterint').html(Aimessage);
	  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
		 $(".examcheckstatus").modal('show');
	  $("#analytics").modal('hide');
		$('.timer').countimer('stop');
	
}
function showPopup(popupcase,stage_button){
	 var Aimessage="";
 //console.log("Case NO = "+ popupcase);
 var LoginData = getLoginData();
	var sname = LoginData.name;
	var accuracy = totalaacuracyavg();
	accuracy =  accuracy.toFixed(2);
	if(accuracy == "NaN" || accuracy == "undefined"){ accuracy = 0;}
	var avg_timespenton_qns = totalQuestionspentime /60 ;
	var timespentonavgans = avg_timespenton_qns / questionNo ;
	timespentonavgans = timespentonavgans.toFixed(2);
	 var subject = getParameterByName("subject")
		var chapter = getParameterByName("chapter");
	 if(stage_button == "Stage-3" || stage_button == "Chapter Target" ||  stage_button == "previous year"){
		/* if(stage_button == "Chapter Target"){
			 stage_button = "Chapter Target"; 
		 }*/
		 var firstfocusid =  sessionStorage.getItem("firstfocusid");
		 var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&examid='+firstfocusid+'&user_wish=';
	 }else{
		 var path = base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
	 }
	
	
	switch(popupcase){
		case 1:
			color = "#ef698e";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';
			Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
   '<p style="color:black">Accuracy: '+accuracy+'%</p>'+
    '<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
    '<p style="color:black">Accuracy is good. But It could be much better </p>'+
    '<p style="color:black">Revise all the Concepts, formulas, Basics strongly.</p>'+
   // '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Take me to '+stage_button+'</button>';
	 '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="show_applause(\''+stage_button+'\');">Take me to '+stage_button+'</button>';
	break;
	case 2:
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
   '<p style="color:black">Accuracy: '+accuracy+'%</p>'+
    '<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
    '<p style="color:black">Accuracy is good. But It could be much better </p>'+
    '<p style="color:black">Revise all the Concepts, formulas, Basics strongly.</p>'+
    //'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Take me to '+stage_button+'</button>';
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="show_applause(\''+stage_button+'\');">Take me to '+stage_button+'</button>';
	break;
	case 3:
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
   '<p style="color:black">Accuracy: '+accuracy+'%</p>'+
    '<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
    '<p style="color:black">Accuracy is good enough.But It could be more</p>'+
    '<p style="color:black">Understand the Concepts,formulas,basics strongly.</p>'+
    //'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Take me to '+stage_button+'</button>';
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="show_applause(\''+stage_button+'\');">Take me to '+stage_button+'</button>';
	break;
	case 4:
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
			Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
   '<p style="color:black">Accuracy: '+accuracy+'%</p>'+
    '<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
    '<p style="color:black">Accuracy is great. Focus on Time management also </p>'+
    '<p style="color:black">Speed grasping and responding with right solution is important.</p>'+
    //'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Take me to '+stage_button+'</button>';
	'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="show_applause(\''+stage_button+'\');">Take me to '+stage_button+'</button>';
	break;
	case 5:
		color = "#6fd697";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
		Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
'<p style="color:black">Accuracy: '+accuracy+'%</p>'+
'<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
'<p style="color:black">Accuracy is most important. Improve it furtherly.</p>'+
'<p style="color:black">Be sure with your logic &answer.</p>'+
'<p style="color:black">I am giving you some more questions.</p>'+
'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path+'\'">Lets Go</button>';
break;
case 6:
	color = "#6fd697";
	Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
		Aimessage = '<p style="color:black">Hi '+sname+', your performance so far..</p>'+
'<p style="color:black">Accuracy: '+accuracy+'%</p>'+
'<p style="color:black">Avg. time spent per Qsn: '+timespentonavgans+'min</p>'+
'<p style="color:black">Dou you wnat to start from stage 1 & stage 2.</p>'+
'<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" onclick="gotostage1(this);">Go Stage 1</button>';
if(accuracy >= 60){
	Aimessage +=  '<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" data-msg= "" onclick="gotostage2(this);">Go Stage 2</button>';
}else{
	Aimessage +=  '<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" data-msg= "You are skipped & Confident" onclick="gotostage2(this);">Go Stage 2</button>';
}

break;
case 7:
	color = "#6fd697";
	Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';
	//Aimessage += '<p style="color:black">Hi '+sname+', your performance so far..</p>';
	if(accuracy >= 60){
		
		Aimessage += '<p style="color:black">Hi '+sname+',Your performance is great</p>';
		Aimessage += '<p style="color:black">Accuracy is '+accuracy+'</p>';
		Aimessage += '<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" data-msg= "" onclick="gotostage3(this);">Yes take me to stage3</button>';

	}else{
		
		Aimessage += '<p style="color:black">Hi '+sname+',Your performance is Not so great</p>';
		              Aimessage += '<p style="color:black">Accuracy is '+accuracy+'</p>';
		Aimessage += '<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" onclick="gotostage1(this);">Ok lets Go</button>';
	Aimessage += '<button class="btn btn-success" style="margin-top:20px;color:#fff;" data-subid= "'+subject+'" data-chapter= "'+chapter+'" data-msg= "You are skipped & Confident" onclick="gotostage3(this);">No take me to stage3</button>';
	}

	}
	$('#chapterint').empty();
	 $("#modalcss").css("background-color",color);
	
	 $('#robo_image').html(Aiimage);
	 $('#chapterint').html(Aimessage);
	  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
		 $(".examcheckstatus").modal('show');
	  $("#analytics").modal('hide');
		$('.timer').countimer('stop');
		
		 return true;
}
function gotostage1(elem){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");	
	
	jsondata.previousCIStatus=jsondata.currentCIStatus;
	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"fail");
	var strchapter = JSON.stringify(jsondata);
	$.ajax({
		url: base_url+'rest/chapterInteractive/saveChapterStageRound',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
		success:function(data){
			window.location =  base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
			
		},
		error:function(data){
			alert("Failed to Submit Practice");
		}
	
	})
}
function gotostage2(elem){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");	
	var stage2 = $(elem).attr("data-msg");	
	jsondata.previousCIStatus=jsondata.currentCIStatus;
	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"pass");
	var strchapter = JSON.stringify(jsondata);
	$.ajax({
		url: base_url+'rest/chapterInteractive/saveChapterStageRound',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
		success:function(data){
			if(stage2 != ""){
				skipstage(chapter,subject,"stage2",stage2);
			}else{
			window.location =  base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
					
			}
			
			
		},
		error:function(data){
			alert("Failed to Submit Practice");
		}
	
	})
}
function gotostage3(elem){
	var chapter = $(elem).attr("data-chapter");
	var subject = $(elem).attr("data-subid");	
	var stage3 = $(elem).attr("data-msg");	
	jsondata.previousCIStatus=jsondata.currentCIStatus;
	jsondata.currentCIStatus=GetnextRoundSR(jsondata.currentCIStatus,"pass");
	var strchapter = JSON.stringify(jsondata);
	$.ajax({
		url: base_url+'rest/chapterInteractive/saveChapterStageRound',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
		success:function(data){
			if(stage3 != ""){
				skipstage(chapter,subject,"stage3",stage3);
				
			}else{
				 var firstfocusid =  sessionStorage.getItem("firstfocusid");
					window.location =  base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&examid='+firstfocusid+'&user_wish=';
			}
			//skipstage(chapter,subject,"stage3");
			
		},
		error:function(data){
			alert("Failed to Submit Practice");
		}
	
	})
}
function skipstage(chapter,subject,stage,msg){
	var stage2msg = ""; var stage1msg = "";
var stage1skip = false;	var stage2skip = false;	
	if(stage == "stage3"){
		stage1msg = msg;
	stage2msg = msg;
	stage2skip = true; stage1skip = true;
	 var firstfocusid =  sessionStorage.getItem("firstfocusid");
	}else{
		stage1msg = msg;
	
	stage1skip = true;
	}
					
var  jsondata1 =	{
	"studentId":jsondata.studentId,
	"chapterId":jsondata.chapterId,
		"stage1SkipMsgs":stage1msg,
		"updatestage1Skip":stage1skip,
		"stage2SkipMsgs":stage2msg,
		"updatestage2Skip":stage2skip
	}
	var strchapter = JSON.stringify(jsondata1);
	$.ajax({
		url: base_url+'rest/chapterInteractive/updateStageSkipStatus',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:strchapter,
		success:function(data){
				if(stage == "stage3"){
					window.location =  base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&examid='+firstfocusid+'&user_wish=';
				}else{
					window.location =  base_url+'jsp/student/Ainteractive/interactivetestscreen.jsp?chapter='+chapter+'&subject='+subject+'&user_wish=';
		
				}
			},
		error:function(data){
			alert("Failed to GO");
		}
	
	})
}
function checkAllaccuracy(percent)
{
	var count=0;
     for (var i=0; i < avgAccuracys.length; ++i)
	  {
	         // if greater then 80
    	    if(avgAccuracys[i] >= percent )
    		 {
  	           count++;
  	         }else
  	        	 {
  	        	 return false
  	        	 }
	  }
     return true;
}
function sumofArray(sum, num) { 
    return sum + num; 
} 
function totalaacuracyavg() { 
   
           var sumofacuracy = avgAccuracys.reduce(sumofArray); 
           var avgofacc =  sumofacuracy / avgAccuracys.length;
           return avgofacc;
}


function  GetnextRoundSR(status,condition)
{
	switch(status)
	{
	case "S1R1" :
	         	//jsondata.progress=30;
		        return  "S1R2";
	case "S1R2" : 
			//	jsondata.progress=60;
	            return  "S1R3";
	case "S1R3" :
		       // jsondata.progress=90;
	            return  "S1R3";
	case "S1R4" :
		      //  jsondata.progress=100;
	            return  "S2R1";
	case "S2R1" :
		      //  jsondata.progress=30;
	            return  "S2R2";
	case "S2R2" :
				//jsondata.progress=60;
			    return  "S2R3";
	case "S2R3" :
				//jsondata.progress=90;
			    return  "S2R3";
	case "S3R1" :
				
				switch(condition){
		case "previous_param":
			jsondata.progress=80;
	    return  "S3R4";
		case "stage3only":
		//	jsondata.progress=16;
			    return  "S3R2";
		}
				
	case "S3R2" :
	switch(condition){
		case "previous_param":
			jsondata.progress=80;
	    return  "S3R4";
		case "stage3only":
		//	jsondata.progress=32;
		    return  "S3R3";
		}
			
   
	
	case "S3R3" :
		switch(condition){
		case "previous_param":
			jsondata.progress=80;
	    return  "S3R4";
		case "same":
			//jsondata.progress=50;
		    return  "S3R3";
		}
	case "S3R4" :
		switch(condition){
		case "complete":
			jsondata.progress=90;
	    return  "S3R5";
		case "same":
			jsondata.progress=80;
		    return  "S3R4";
		}
	case "S3R5" :
		switch(condition){
		case "complete":
			jsondata.progress=90;
			 return  "S3R6";
		case "same":
			jsondata.progress=80;
		    return  "S3R5";
		}
		
	   
	case "S3R6" :
		jsondata.progress=100;
	    return  "S3R6";
		case "learner":
		switch(condition){
			case "pass":
			jsondata.progress=100;
	    return  "S2R1";
		case "fail":
		jsondata.progress=0;
	    return  "S1R1";
		}
		case "expert":
		switch(condition){
		case "pass":
		jsondata.progress=100;
    return  "S3R1";
	case "fail":
	jsondata.progress=0;
    return  "S1R1";
	}
		
	}
	return "S1R1";
}
var current_approach_time;
function seeapproach(qnsindex,topicindex){
	
	if(qnsindex =="" &&topicindex == ""){
			var approach = jsondata.topicsList[currenttopicno].questionsList[currentquestionno].approach;
	}else{
			var approach = jsondata.topicsList[topicindex].questionsList[qnsindex].approach;
	}
	current_approach_time =0;
	$('#chapterconcept').empty();

	 $('#chapterconcept').html(approach);
	 $('.concepts').modal({backdrop: 'static', keyboard: false})  
	 $('#chapter_name_con_app').html(jsondata.chapterName);
		 $(".concepts").modal('show');
			var fetchtime = $(".get_questions_timer").text();
    var splitfetchtime = fetchtime.split(":");
    var hourssec = parseInt(splitfetchtime[0]) * 60 * 60;
    var minsec = parseInt(splitfetchtime[1]) * 60 ;
    var finaltime = hourssec+minsec+parseInt(splitfetchtime[2]);
	current_approach_time = parseInt(finaltime);
}
$('.concepts').on('hidden.bs.modal', function () {
	var fetchtime = $(".get_questions_timer").text();
    var splitfetchtime = fetchtime.split(":");
    var hourssec = parseInt(splitfetchtime[0]) * 60 * 60;
    var minsec = parseInt(splitfetchtime[1]) * 60;
    var finaltime = hourssec+minsec+parseInt(splitfetchtime[2]);
	var  time_approach_close= parseInt(finaltime);
	var approachseentime = time_approach_close-current_approach_time;
	if(jsondata.topicsList[currenttopicno].questionsList[currentquestionno].studentAnswer == ""){
		
		 jsondata.topicsList[currenttopicno].questionsList[currentquestionno].approachViewTime += approachseentime;
		    if(questionNo == 1 ){
		approachlastque += approachseentime; 
 approachlastsecques =0;
approachlastthirdques =0;
 approachlastfourquest =0;
	 }else{
		 approachlastfourquest += approachlastthirdques;
		 approachlastthirdques += approachlastsecques;
		 approachlastsecques += approachlastque;
		 approachlastque += approachseentime; 
 }
	}
  
	  
    });
	$('.examcheckstatus, #analytics, .concepts').on('hidden.bs.modal', function () {
    
	   $('.timer').countimer('resume');
	  
		  firstshow_which_one = false;
		  if(show_param_list == true) {
			    show_param_list = false;
		  $('.parameterdrive').modal({backdrop: 'static', keyboard: false})  
	 $(".parameterdrive").modal('show'); 
	  }
    });
	$('.parameterdrive').on('hidden.bs.modal', function () {
    
	   $('.timer').countimer('resume');
	 
    });
function seeconcept(qnsindex,topicindex){
	$('.timer').countimer('stop');
	var conceptdata ="";
	$('#chapterconcept').empty();
	if(jsondata.topicsList[currenttopicno].questionsList[currentquestionno].concept == null || jsondata.topicsList[currenttopicno].questionsList[currentquestionno].concept =="")
	{
		
		 $('#chapterconcept').html("No concept ");
	}else{

		if(qnsindex =="" &&topicindex == ""){
			var approach = jsondata.topicsList[currenttopicno].questionsList[currentquestionno].concept;
		}else{
			var approach = jsondata.topicsList[currenttopicno].questionsList[currentquestionno].concept;
		}
		
		if(approach.length != 0){
			for(var i=0; i<approach.length; i++){
			conceptdata += '<div class="card card-1">'+approach[i].value+'</div>';
			
		}
		}
		
		 $('#chapterconcept').html(conceptdata);
	}
	$('#chapter_name_con_app').html(jsondata.chapterName);
	 $('.concepts').modal({backdrop: 'static', keyboard: false})  
		 $(".concepts").modal('show');
}
function analytics(status){
	$('.timer').countimer('stop');
	 $('#analytics').modal({backdrop: 'static', keyboard: false})
	  $('.examcheckstatus').modal('hide');
var LoginData = getLoginData();
	var sname = LoginData.name;	 
	$("#user_name").html('Hello !'+sname);
	$("#total_no").html(questionNo);
	$("#total_unattempted_no").html(totalunatemptedQuestinStageRound);
	$("#total_correct_no").html(totalCorrectquestinStageRound);
	$("#total_wrong_no").html(totalwrong);
	if(morestagego == "stage-3"){
		var examid = getParameterByName("examid");
		 var subject = getParameterByName("subject");
			var chapter = getParameterByName("chapter");
			 var paramid = getParameterByName("paramid");
		 var path =  base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&examid="+examid+"&stage_btn="+morestagego+"&user_wish=";
	}else if(morestagego == "stage-2"){
		var examid = getParameterByName("examid");
		 var subject = getParameterByName("subject");
			var chapter = getParameterByName("chapter");
			 var paramid = getParameterByName("paramid");
		 var path =  base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&stage_btn="+morestagego+"&user_wish=";
	}
		
	if(status == "pause"){
		var button_types= '<button type="button" class="btn btn-secondary"  onclick="onFinishTestClick(\'pause\')" style="border-radius:15px;color:purple;border: 1px solid purple;">See you later</button>'+
          '<button type="button" class="btn btn-secondary" style="border-radius:15px;color:deepskyblue;border: 1px solid deepskyblue;" data-dismiss="modal">Resume</button>';
		}else if(status == "morepause"){
			var button_types= '<button type="button" class="btn btn-secondary"  onclick="location.href=\''+path+'\'" style="border-radius:15px;color:purple;border: 1px solid purple;">See you later</button>'+
	          '<button type="button" class="btn btn-secondary" style="border-radius:15px;color:deepskyblue;border: 1px solid deepskyblue;" data-dismiss="modal">Resume</button>';
			
		}
	else{
			var button_types= '<button type="button" class="btn btn-secondary" onclick="onFinishTestClick(\'finish\')" style="border-radius:15px;color:purple;border: 1px solid lightgreen;">Finish Now</button>'+
         '<button type="button" class="btn btn-secondary" style="border-radius:15px;color:deepskyblue;border: 1px solid deepskyblue;" data-dismiss="modal">Resume</button>';
		}
		$('#analytic_button').html(button_types);
	 $("#analytics").modal('show');
	
}
function setroboname(){
	 var appendata = '<div class="col-md-12 col-md-offset-2">'+
	         '<label style="font-size:15px" class="col-sm-3">Change name:</label>'+
	         '<input type="text" id="robo_name" class="col-md-4 form-control" style="width:46% !important" placeholder="Robo name">'+
	         '</div><div class="col-md-12 text-center"><button class="btn btn-success" style="margin-top:20px;color:#fff"  onclick="submissionroboname()">Submit</button></div>'; 
	       $("#goal_time_set").html(appendata);
}
function submissionroboname(){
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var robo_name = $("#robo_name").val();
	$.ajax({
		url: base_url+'rest/student/setRoboNamebyStuId/'+studid+'/'+robo_name,
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		
		success:function(data){
			 alert(data.message);
			 location.reload();
		},
		 error:function(data){
			alert(data.errorMessage);
		}

		
	})
	
}
var clsebtn = false;
function closebtnonclick(disable){
	if(disable == "enable"){
		 if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
			$(".getnext").hide(); 
		 }else{
			 $(".getsubmit").hide();
		$(".skipstn").hide();
		 }
		
		//currenttopicno--;
		clsebtn = true;
	}else{
		clsebtn = false;
	}
}

function get_param_list(disable){
	$('.timer').countimer('stop');
	 if(disable == "disable" && clsebtn == false){
		 var closebtn ='<button type="button" class="close" data-dismiss="modal" onclick="closebtnonclick(\'disable\');">&times;</button>';
	 }else{
		 var closebtn ='<button type="button" class="close" data-dismiss="modal" onclick="closebtnonclick(\'enable\');">&times;</button>';
	 }
	
	/*if(clsebtn == true && disable == "disable"){
		var closebtn ='<button type="button" class="close" data-dismiss="modal" onclick="closebtnonclick(\''+(disable)+'\');">&times;</button>';
	}else if(clsebtn == false && disable == "enable"){
		
	}*/
	var LoginData = getLoginData();
	var sname = LoginData.name;
	var topicsList = jsondata.topicsList;
	if(topicsList.length >= currenttopicno){
		
		var status="Poor";
		//80-100 excellent,60-80 good,40-60 average,<40 poor
		    if(topicsList[currenttopicno].studentAccuracy<40)
			{
		    	status="Poor";
			}else 
			if(topicsList[currenttopicno].studentAccuracy>=40 && topicsList[currenttopicno].studentAccuracy<=60)
			{
		    	status="Average";
			}else if(topicsList[currenttopicno].studentAccuracy>=60 && topicsList[currenttopicno].studentAccuracy<=80)
			{
		    	status="Good";
		    	
		    	
			}else if(topicsList[currenttopicno].studentAccuracy>=80 && topicsList[currenttopicno].studentAccuracy<=100)
			{
		    	status="Excellent";
		    	
		    	
			}		
		
		var appenddata =  '<div class="col-md-4">';

		appenddata+='<div class="col-md-12"  style="min-height: 220px;">'+
		  '<p class="parampopupp">'+topicsList[currenttopicno].topicName+'</p>';
		if(disable == "disable" && clsebtn == false){
			 appenddata+='</div>'; 
		 }else{
			 appenddata+='<p>Your Performance is '+status+'</p>';
			 appenddata+='<p style="color:green">Accuracy-'+showaccuracy[currenttopicno]+'%</p>'+
		          '</div>'; 
		 }
		
	/*if(disable == "disable" && clsebtn == false){
		currenttopicno = currenttopicno;
	}else{
		
		currenttopicno = parseInt(currenttopicno+1);
	}*/
	
	if(topicsList.length == currenttopicno){
		unattempted_topicarray=[];
		 checkifthistopicwrote();
		
		currenttopicno = unattempted_topicarray[0];
	}
	 else if(topicsList[currenttopicno].noOfAttemptedquestions >0  || topicsList[currenttopicno].notAnsweredCount > 0 || topicsList[currenttopicno].notVisitedCount >0){
		
		   unattempted_topicarray=[];
		 checkifthistopicwrote();
		
		currenttopicno = unattempted_topicarray[0];
	 }else{
		 if(topicsList[currenttopicno].questionsList.length > 0){
			 currenttopicno = currenttopicno; 
		 }else{
			   unattempted_topicarray=[];
			  checkifthistopicwrote();
			
		currenttopicno = unattempted_topicarray[0];
		 }	  
	 }
	
	
       appenddata+= '<div class="col-md-12">'+
		 '<span class="paramhighlight">Now I would like to drive you on </span>'+
        '<p class="parampopupp">'+topicsList[currenttopicno].topicName+'</p>';
       	 if(disable == "disable" && clsebtn == false){
			    appenddata+='';
		 }else {
			 appenddata+='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="gotocurrentparam(\''+(currenttopicno)+'\');">Lets Go</button>';   
		 }
    
          
       appenddata+= '</div></div>';
		  
		  appenddata+='<div class="col-md-3">'+
		  	'<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_parameter drive.gif"  >'+
		    '</div>';
            appenddata+='<div class="col-md-5">'+
			'<span class="paramhighlight">Tell me what is your interest</span>';
				var prev_param = jsondata.prevParameterName;
				var prev_mainskill = jsondata.prevMainSkills;
				var prevParameterIds = jsondata.prevParameterIds;
			if(prev_param.length > 0 && prev_mainskill.length >0  ){
				 for(var prev_param_name=0; prev_param_name<prev_param.length; prev_param_name++){
			 appenddata+='<div class="col-md-12">'+
   '<p class="parampopupp">'+prev_param[prev_param_name].value+'</p>'+
     '<p style="font-size:14px">Main Skills: '+prev_mainskill[prev_param_name].value+'</p>'+
	 '<span style="color:green;font-weight:bold">Acheived</span>'+
	 '<span style="float: right;color:blue;font-weight:bold;" data-param="'+prevParameterIds[prev_param_name]+'" data-chapter="'+jsondata.chapterId+'_'+jsondata.chapterName+'"  data-subid="'+jsondata.subjectId+'_'+jsondata.subjectName+'" onclick="getmorepractice(this);"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>More practice Qns</span>'+
    '</div>';
			 }
			}
		if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
				var topiclengthto_display = topicsList.length-1;
			}else{
				var topiclengthto_display = topicsList.length;
			}
			
   for(var param_name=0; param_name<topiclengthto_display; param_name++){
	   
	   if(param_name!=currenttopicno)
		   {
	   appenddata+='<div class="col-md-12">'+
   '<p class="parampopupp">'+topicsList[param_name].topicName+'</p>'+
     '<p style="font-size:14px">Main Skills:'+topicsList[param_name].mainSkills+'</p>';
	 if(topicsList[param_name].noOfAttemptedquestions >0  || topicsList[param_name].notAnsweredCount > 0 || topicsList[param_name].notVisitedCount >0){
		 if(topicsList[param_name].studentAccuracy >= 60 ){
			  appenddata+=  '<span style="color:green;font-weight:bold">Acheived</span>';
			  appenddata+=  '<span style="float: right;color:blue;font-weight:bold;"  data-param="'+topicsList[param_name].topicID+'" data-chapter="'+jsondata.chapterId+'_'+jsondata.chapterName+'"  data-subid="'+jsondata.subjectId+'_'+jsondata.subjectName+'" onclick="getmorepractice(this);" ><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>More practice Qns</span>';
		 
		 }else{
			 appenddata+=  '<p style="color:red;font-weight:bold">Accuracy- '+topicsList[param_name].studentAccuracy+'%</p>';
		 }
		
	 }else{
		 if(disable == "disable" && clsebtn == false){
			  appenddata+=  ''; 
		 }else{
			$(".getsubmit").show();
					$(".skipstn").show();
			 appenddata+=  '<button class="drivenow" onclick="gotocurrentparam(\''+param_name+'\');" >Drive now</button>';  
		 }
		 
		  
	 }
	
    
	 appenddata+='</div>';
		   }
	   
   }

          appenddata+='</div>';
	$('#param_oreder_flow').empty();
	$('.parameterdrive > .modal-dialog').addClass('modal-lg');
	$('.parameterdrive > #chapter_name').empty(); $('.parameterdrive > #chapter_name').html('Hey ! '+sname);
	$('#paramdrive_close').html(closebtn);
$('#param_oreder_flow').html(appenddata);
if(firstshow_which_one == true){
	
}else{
	 show_param_list = false;
	 $('.parameterdrive').modal({backdrop: 'static', keyboard: false})  
	 $(".parameterdrive").modal('show');
}

	  $(".examcheckstatus").modal('hide');
	}	  
	$("#modalcss").css("background-color","#f79683");
}
function gotocurrentparam(current_param){
	$('.timer').countimer('resume');
	currentquestionno = 0; currenttopicno = parseInt(current_param);
	if(jsondata.currentCIStatus=="S2R1" ||jsondata.currentCIStatus=="S2R2"||jsondata.currentCIStatus=="S2R3"||jsondata.currentCIStatus=="S2R4"){
		noOfQuesShowinTopic= jsondata.topicsList[currenttopicno].firstShowNoQuestions;
	}
	var stage_btn = getParameterByName("stage_btn");
	if(stage_btn != "" && stage_btn != null && stage_btn != undefined){
		if(questionNo == 1){
			
		}else{
			questionNo++;
		}
		
	}else{
		questionNo++;
	}
	
				
	questiondisplay();
	counterli();
	$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	clsebtn = false;
	$('.parameterdrive').modal('hide');
}
var unattempted_topicarray = [];
function checkifthistopicwrote(){
	var topicsList = jsondata.topicsList;
	if(jsondata.currentCIStatus=="S3R1" ||jsondata.currentCIStatus=="S3R2"||jsondata.currentCIStatus=="S3R3"||jsondata.currentCIStatus=="S3R4"){
		var topiclength = (topicsList.length)-2;
	}else{
		var topiclength = topicsList.length;
	}
	
	
	  for(var param_name=0; param_name<topiclength; param_name++){
		   if(topicsList[param_name].noOfAttemptedquestions == 0  &&  topicsList[param_name].notAnsweredCount ==  0 && topicsList[param_name].notVisitedCount == 0){
			  if(topicsList[param_name].studentAccuracy > 0 ){
				  //unattempted_topicarray.push(param_name);
			  }else{
				   unattempted_topicarray.push(param_name);
			  }
			 
		   }
		  
	  }
}
/*code for stage3 start */

function onNextBtn3Click() //next button method for stage 3 only
{
	if(currenttopicno == 0 ){
		if(jsondata.currentCIStatus == "S3R1"){
			firstshow_which_one = validateAIcases();
			}else if(jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
			firstshow_which_one = validateAIcasesforstage3();
		}else{
			firstshow_which_one = false;
		}
		
	}else if(jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
		firstshow_which_one = validateAIcasesforstage3();
	}else{
		firstshow_which_one = false;
	}
	
	var isParameterPopupShow= false;
	/*console.log("currentquestionno = " + currentquestionno);
	console.log("noOfQuesShowinTopic = " + noOfQuesShowinTopic);*/
	var total_attempted = noofcorrectintopic+noofwrongintopic+noofunattemptedinTopic; 
	var total_topic_attempted = noofcorrectintopic+noofwrongintopic;
	if(total_topic_attempted == noOfQuesShowinTopic || currentquestionno+1 == jsondata.topicsList[currenttopicno].maxShowNoQuestions || currentquestionno+1 == jsondata.topicsList[currenttopicno].questionsList.length)
	{
		  console.log(" all  question  reached in topic");
			jsondata.topicsList[currenttopicno].noOfAttemptedquestions = noofcorrectintopic;
			jsondata.topicsList[currenttopicno].notAnsweredCount = noofwrongintopic;
			jsondata.topicsList[currenttopicno].notVisitedCount = noofunattemptedinTopic;
			//for stag3 we need to do qualify  based on percentages etc.
			jsondata.topicsList[currenttopicno].studentAccuracy= Number(((noofcorrectintopic/total_attempted)*100).toFixed(0));
			noofunattemptedinTopic=0; noofwrongintopic=0; noofcorrectintopic=0;
			
				isParameterPopupShow= true;
					 unattempted_topicarray=[];
					  checkifthistopicwrote();
					  if(unattempted_topicarray.length >0){
						 
						  if(jsondata.topicsList[currenttopicno].topicName == jsondata.topicsList[currenttopicno+1].topicName){
							  sessioncomplete('first'); 
						   }else{
							   show_param_list = true;
							   sessioncomplete('second');
							  // get_param_listforstage3('');
						   }
					  }
					 else
						 {
								   console.log(" all topic reached");
								   alert("You reached end of practice");
								   test_cpmpleted = true;
								   $("#pause_btn").hide();
									$("#finishtest").show();
									$(".getsubmit").hide(); // end of all topics reached
									$(".skipstn").hide();
									$(".getnext").hide();
									showfinish();
								  return;
						 }
	}else{
		currentquestionno++;  questionNo++;
		$(".getsubmit").show();
		$(".skipstn").show();
		$(".getnext").hide();
	}

		
	     if(isParameterPopupShow== false)
			{  // parameter popup is not showing
				questiondisplay();
			    counterli();
			}
	     scrolled=scrolled+80;
	     
	 	$(".get_questions_list_div").animate({
	 	        scrollTop:  scrolled
	 	   });
}
function skipQuestion3(){  //stage 3 skip method 
	var isParameterPopupShown= false;
  addPrev5QuesStatusRtWrong(2); // 2 is wrong/skip answerd by student
	totalunatemptedQuestinStageRound++;// to show in summary of stageround
	  consecutive_wrong_answers=0;  // incrementing wrong as question is skiped
	  consecutive_8_wrong_answers=0;
	  consecutive_correct_answer=0; //making zero as continues answering breaked as skiped
	  consecutive_8_correct_answer=0;
	  consecutive_unattempted++;// incrementing unattempted as question is skiped
	  noofunattemptedinTopic++;
	  if(currenttopicno == 0 ){
		  if(jsondata.currentCIStatus == "S3R1"){
				firstshow_which_one = validateAIcases();
				}else if(jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
				firstshow_which_one = validateAIcasesforstage3();
			}else{
				firstshow_which_one = false;
			}
		}else if(jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3"){
			firstshow_which_one = validateAIcasesforstage3();
		}else{
			firstshow_which_one = false;
		}
	
	  var total_attempted = noofcorrectintopic+noofwrongintopic+noofunattemptedinTopic; 
	  var total_topic_attempted = noofcorrectintopic+noofwrongintopic;
		if(total_topic_attempted == noOfQuesShowinTopic || currentquestionno+1 == jsondata.topicsList[currenttopicno].maxShowNoQuestions || currentquestionno+1 == jsondata.topicsList[currenttopicno].questionsList.length)
		{
			console.log(" all  question  reached in topic");
			jsondata.topicsList[currenttopicno].noOfAttemptedquestions = noofcorrectintopic;
			jsondata.topicsList[currenttopicno].notAnsweredCount = noofwrongintopic;
			jsondata.topicsList[currenttopicno].notVisitedCount = noofunattemptedinTopic;
			//for stag3 we need to do qualify  based on percentages etc. 
			if(total_attempted>0)
			jsondata.topicsList[currenttopicno].studentAccuracy= Number(((noofcorrectintopic/total_attempted)*100).toFixed(0));
			else
			jsondata.topicsList[currenttopicno].studentAccuracy=0;
			
			noofunattemptedinTopic=0; noofwrongintopic=0; noofcorrectintopic=0;
			isParameterPopupShown= true;
					 unattempted_topicarray=[];
			    	 checkifthistopicwrote();
						  if(unattempted_topicarray.length >0){
							 
							   if(jsondata.topicsList[currenttopicno].topicName == jsondata.topicsList[currenttopicno+1].topicName){
								   sessioncomplete('first'); 
							   }else{
								     show_param_list = true;
								     sessioncomplete('second');
								   //get_param_listforstage3('');
							   }
							   
						  }else
							  {

							   console.log(" all topic reached");
							    test_cpmpleted = true;
							   $("#pause_btn").hide();
								$("#finishtest").show();
								$(".getsubmit").hide(); // end of all topics reached
								$(".skipstn").hide();
								$(".getnext").hide();
								showfinish();
							  return;
							  }
			
		}else{
			$(".getsubmit").show();
			$(".skipstn").show();
			$(".getnext").hide();
			currentquestionno++;
			    questionNo++;
		}
	 
	 
	 
	if(isParameterPopupShown==false)
			{		
			questiondisplay();
		    counterli();
			}
		
scrolled=scrolled+80;
    
	$(".get_questions_list_div").animate({
	        scrollTop:  scrolled
	   });

	
}
function sessioncomplete(firstshow){
	var Aimessage="";
	 var Aiimage="";
	 var color="";
	 
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		color = "#A349A4";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
		Aimessage += '<p>Hi '+sname+' !,  you have finished the '+firstshow+' session.</p>'+
		'<p style="color:black">Click on Okay to go to see session Summary.</p>'+
		'<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="Showsessiononeresult(\''+firstshow+'\');">Okay</button>';
		$('#chapterint').empty();
		 $("#modalcss").css("background-color",color);
		 $('#chapter_name').html(jsondata.chapterName); 
		 $('#robo_image').html(Aiimage);
		 $('#chapterint').html(Aimessage);
		$('#chapterint > p').css("color","#fff");
		$("#clsebtn").remove();
		 $('.examcheckstatus').modal({backdrop: 'static', keyboard: false});
			 $(".examcheckstatus").modal('show');
			
			 resetAllAi();
		 //$("#examcheckstatus").modal({show:true});
			// alert(Aimessage);
			$('.timer').countimer('stop');
			
			 return true;
}
function Showsessiononeresult(firstshow){
	var Aimessage="";
	 var Aiimage="";
	 var color="";
	 
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		color = "#A349A4";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			Aimessage += '<p>Hi '+sname+',  you have finished the session with patience.</p>'+
   '<p>You have solved'+jsondata.topicsList[currenttopicno].topicName+'Qns.</p>'+
   '<p style="color:black">Percentage: '+jsondata.topicsList[currenttopicno].studentAccuracy+'%</p>'+
   '<p style="color:black">Coreect Qns: '+jsondata.topicsList[currenttopicno].noOfAttemptedquestions+'</p>'+
   '<p style="color:black">Wrong Qns: '+jsondata.topicsList[currenttopicno].notAnsweredCount+'</p>'+
   '<p style="color:black">Un attempted Qns: '+jsondata.topicsList[currenttopicno].notVisitedCount+'</p>';
			
   if(firstshow == 'first'){
	   if(jsondata.topicsList[currenttopicno].studentAccuracy >= 60){
		   disablingapproachmsg();
		  // Aimessage +='<p style="color:black">You have Qualified in session We are disabling Approach </p>';
	   }
	   Aimessage +='<p style="color:black">I will give you another session of same kind.</p>'+
	   '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="gotosession2ofsame();">Lets go</button>&nbsp;';
	    }else{
	    	Aimessage +='<p style="color:black">Successfully Completed Your Two sessions Will Go to another paramaeter.</p>'+
	 	   '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="get_param_listforstage3(\'enable\');">Lets go</button>&nbsp;';	
	    }
			
   
   Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="onFinishTestClick(\'pause\');">See You later</button>';
			
			$('#chapterint').empty();
			 $("#modalcss").css("background-color",color);
			 $('#chapter_name').html(jsondata.chapterName); 
			 $('#robo_image').html(Aiimage);
			 $('#chapterint').html(Aimessage);
			$('#chapterint > p').css("color","#fff");
			$("#clsebtn").remove();
				 $('.examcheckstatus').modal({backdrop: 'static', keyboard: false});
				 $(".examcheckstatus").modal('show');
			
				 resetAllAi();
			 //$("#examcheckstatus").modal({show:true});
				// alert(Aimessage);
				$('.timer').countimer('stop');
				
				 return true;
			
}
function disablingapproachmsg(){
	var Aimessage="";
	 var Aiimage="";
	 var color="";
	 
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		color = "#A349A4";
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			Aimessage += '<p>Hi '+sname+',  you have got Achieved  the session with patience.</p>'+
  
  '<p style="color:black">Iam  disabling The Approach </p>';
  Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Okay</button>';
			
			$('#chapterint').empty();
			 $("#modalcss").css("background-color",color);
			 $('#chapter_name').html(jsondata.chapterName); 
			 $('#robo_image').html(Aiimage);
			 $('#chapterint').html(Aimessage);
			$('#chapterint > p').css("color","#fff");
			$("#clsebtn").remove();
			$('.examcheckstatus').modal({backdrop: 'static', keyboard: false});
				 $(".examcheckstatus").modal('show');
				 
				
			 //$("#examcheckstatus").modal({show:true});
				// alert(Aimessage);
				$('.timer').countimer('stop');
				
				 return true;
}
function gotosession2ofsame(){
 $('.timer').countimer('resume');
 if(jsondata.topicsList[currenttopicno].studentAccuracy >= 60){
	 keepenabledisableapproach =false;
	 $('#approachpresent').html('');
 }else{
	 if(jsondata.chapApproachAvailable ==true){
		 keepenabledisableapproach =true;
	 }else{
		 keepenabledisableapproach =false;
	 }
	
	 $('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\'\',\'\')">Approach</a>');
 }
	currentquestionno = 0; currenttopicno++;
	/*if(jsondata.topicsList[currenttopicno].studentAccuracy >=60){
		currenttopicno++
	}else{
		
	}*/
	questionNo++;
	questiondisplay();
	counterli();
	$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	$('.examcheckstatus').modal('hide');
}
function validateAIcasesforstage3()
{
	
	     if(jsondata.chapApproachAvailable ==true)
		 {   
			
	    	 if(keepenabledisableapproach == true){
				 if(consecutive_wrong_answers == 3 && consecutive_correct_answer == 0 && consecutive_unattempted == 0 )
				 {  
					 if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 )
							  {
						 showpopupforstage3('3',''); return true;
							  } 
					} 
				 if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 3 && consecutive_unattempted == 0)
				 {
					 if(approachlastque > 0 &&  approachlastsecques > 0 && approachlastthirdques > 0)
					 {
						 //showpopupforstage3('4',''); return true;
						 if($('#approachpresent').html().length == 0){
						return true;
					}else{
						showpopupforstage3('2',''); return true;
					}
					 }
				 }
				 if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 4 && consecutive_unattempted == 0)
				 {
					 if(approachlastque == 0 &&  approachlastsecques == 0 && approachlastthirdques == 0 && approachlastfourquest ==0)
					 {
						 //showpopupforstage3('5',''); return true;
						 if($('#approachpresent').html().length == 0){
						return true;
					}else{
						showpopupforstage3('2',''); return true;
					}
					 }
				 }
			 }else if(keepenabledisableapproach == false){
				 if(consecutive_wrong_answers == 3 && consecutive_correct_answer == 0 && consecutive_unattempted == 0 )
				 {  
					 
					 showpopupforstage3('1',''); return true;
							
					} 
				 if(consecutive_wrong_answers == 0 && consecutive_correct_answer == 4 && consecutive_unattempted == 0 )
				 {  
					if($('#approachpresent').html().length == 0){
						return true;
					}else{
						showpopupforstage3('2',''); return true;
					}
					  
							
					} 
			 } 
		 
		      
		 
		} // end of chapter approch is not there ( false)
	 
	
	 return false;
}
function showpopupforstage3(popupcase){
	 var Aimessage="";
	 var Aiimage="";
	 var color="";
	color = "#A349A4";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
	 var LoginData = getLoginData();
		var sname = LoginData.name;
	 switch(popupcase){
			case '1':
			/*color = "#A349A4";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';*/
			Aimessage = '<p>Hi '+sname+',  you are answering wrongly. </p>'+
			   '<p>Do you want me to enable the Approach!</p>'+
	   '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="enableappraoch(\'enableap\')">Yes</button>&nbsp'+
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">No</button>';
				break;
			case '2':
			/*color = "#ef698e";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';*/
				Aimessage = '<p>Hi '+sname+',I am disabling the approach as</p>'+
	   '<p>you are answering correctly</p>'+
	   '<p>Try without Approach help.</p>'+
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="enableappraoch(\'disableap\')">Okay Got it!</button>';	
				break;
			case '3':
			/*color = "#ef698e";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';*/
				Aimessage = '<p>Hi '+sname+', marking wrong answers consecutively.</p>'+
	   '<p>I suggest you to refer Approach of the Question and try to answer</p>'+
	'<p>Also Revise concepts &Formulas. </p>'+
	
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" class="close" data-dismiss="modal">Got it</button>';
			break;
			case '4':
			/*color = "#ef698e";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_pink.gif"  height="200px;">';*/
				Aimessage = '<p>Hi '+sname+', I am disabling the approach as.</p>'+
	   '<p>you are answering correctly.</p>'+
	    '<p>Try without Approach help.</p>'+
		 '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="enableappraoch(\'disableap\')">Okay Got it</button>';
			break;
			case '5':
			/*color = "#6fd697";
			Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_green.gif"  height="200px;">';*/
				Aimessage = '<p>Hi '+sname+', I am disabling the approach as</p>'+
	   '<p>you are answering correctly!</p>'+
	   '<p>Try without Approach help.</p>'+
	    '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="enableappraoch(\'disableap\')">Okay Got it</button>';
			break;
			
				}
		$('#chapterint').empty();
		 $("#modalcss").css("background-color",color);
		 $('#chapter_name').html(jsondata.chapterName); 
		 $('#robo_image').html(Aiimage);
		 $('#chapterint').html(Aimessage);
		$('#chapterint > p').css("color","#fff");
		  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
			 $(".examcheckstatus").modal('show');
			 resetAllAi();
		 //$("#examcheckstatus").modal({show:true});
			// alert(Aimessage);
			$('.timer').countimer('stop');
			
			 return true;
}
function enableappraoch(approachpresent){
	if(approachpresent == "disableap"){
		 keepenabledisableapproach = false;
		 $('#approachpresent').html('');
	}else{
		 if(jsondata.chapApproachAvailable ==true){
			 keepenabledisableapproach =true;
		 }else{
			 keepenabledisableapproach =false;
		 }
		 $('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\'\',\'\')">Approach</a>');
	}
	 $(".examcheckstatus").modal('hide');
}
function get_param_listforstage3(disable){
	
	$('.timer').countimer('stop');
	/*if(disable == "disable"){
		var closebtn = '<button type="button" class="close" data-dismiss="modal">&times;</button>';
		
	}else{
		var closebtn ='';
		
	}*/
	 if(disable == "disable" && clsebtn == false){
		 var closebtn ='<button type="button" class="close" data-dismiss="modal" onclick="closebtnonclick(\'disable\');">&times;</button>';
	 }else{
		 var closebtn ='<button type="button" class="close" data-dismiss="modal" onclick="closebtnonclick(\'enable\');">&times;</button>';
	 }
	
	var LoginData = getLoginData();
	var sname = LoginData.name;
	var topicsList = jsondata.topicsList;
	if(topicsList.length >= currenttopicno){
		if(currenttopicno > 0){
			/*if(jsondata.startIndex >0){
				if((jsondata.startIndex % 2) != 0){
					var session_one = topicsList[currenttopicno-1].studentAccuracy;
					
				}else {
					
					var session_one = 0;	
				}
				var session_one = topicsList[currenttopicno-1].studentAccuracy;
			}else{
				
			}*/
		var session_one = topicsList[currenttopicno-1].studentAccuracy;
			
		}else{
			var session_one = 0;
		}
		var session_two = topicsList[currenttopicno].studentAccuracy;
		var status="Poor";
		//80-100 excellent,60-80 good,40-60 average,<40 poor
		if(session_one <= 40 && session_two <=40){
			status="Poor";
		}else if(session_one >= 40 && session_two >=40 && session_one <= 60 && session_two <=60){
			status="Average";
		}else if(session_one >= 60 && session_two >=60 && session_one <= 80 && session_two <=80)
			{
			status="Good";
		   }else if(session_one >= 80 && session_two >=80)
			{
		    	status="Excellent";
		    	}	else if(session_one >= 60 || session_two >=60){
		    		status="Average";
		    	}
		var param_accuracy = (session_one+session_two)/2;
		var appenddata =  '<div class="col-md-4">';
	//if(topicsList[currenttopicno].noofcorrectintopic > 0 || topicsList[currenttopicno].noofwrongintopic > 0  ){
		appenddata+='<div class="col-md-12"  style="min-height: 220px;">'+
		  '<p class="parampopupp">'+topicsList[currenttopicno].topicName+'</p>';
		 if(disable == "disable" && clsebtn == false){
			 appenddata+='</div>'; 
		 }else{
			 appenddata+='<p>Your Performance is '+status+'</p>'+
		      
		        '<p style="color:green">Percentage-'+param_accuracy+'%</p>'+
		          '</div>'; 
		 }
		
		
	//}
	//currenttopicno = parseInt(currenttopicno+1);
	if(topicsList.length == currenttopicno){
		unattempted_topicarray=[];
		 checkifthistopicwrote();
		
		currenttopicno = unattempted_topicarray[0];
	}
	 else if(topicsList[currenttopicno].noOfAttemptedquestions >0  || topicsList[currenttopicno].notAnsweredCount > 0 || topicsList[currenttopicno].notVisitedCount >0){
		 //currenttopicno++;
		 //get_param_list();
		   unattempted_topicarray=[];
		 checkifthistopicwrote();
		currenttopicno = unattempted_topicarray[0];
	 }else{
		 if(topicsList[currenttopicno].questionsList.length > 0){
			 currenttopicno = currenttopicno; 
		 }else{
			   unattempted_topicarray=[];
			  checkifthistopicwrote();
			
		currenttopicno = unattempted_topicarray[0];
		 }	  
	 }
	 
	
	
       appenddata+= '<div class="col-md-12">'+
		 '<span class="paramhighlight">Now I would like to drive you on </span>'+
        '<p>'+topicsList[currenttopicno].topicName+'</p>';
       	 if(disable == "disable" && clsebtn == false){
			    appenddata+='';
		 }else{
			    appenddata+='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="gotocurrentparamstage3(\''+(currenttopicno)+'\');">Lets Go</button>';
		 }
    
          
       appenddata+= '</div></div>';
		  
		  appenddata+='<div class="col-md-3">'+
		  	'<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robot_parameter drive.gif"  >'+
		    '</div>';
            appenddata+='<div class="col-md-5">'+
			'<span class="paramhighlight">Tell me what is your interest</span>';
				var prev_param = jsondata.prevParameterName;
				var prev_mainskill = jsondata.prevMainSkills;
				var prevParameterIds = jsondata.prevParameterIds;
			if(prev_param.length > 0 && prev_mainskill.length >0  ){
				 for(var prev_param_name=0; prev_param_name<prev_param.length; prev_param_name++){
					
						 appenddata+='<div class="col-md-12">'+
						   '<p class="parampopupp">'+prev_param[prev_param_name].value+'</p>'+
						     '<p style="font-size:14px">Main Skills: '+prev_mainskill[prev_param_name].value+'</p>'+
							 '<span style="color:green;font-weight: bold">Acheived</span>'+
							  '<span style="cursor: pointer;float: right;color:blue;font-weight:bold;" data-param="'+prevParameterIds[prev_param_name]+'" data-chapter="'+jsondata.chapterId+'_'+jsondata.chapterName+'"  data-subid="'+jsondata.subjectId+'_'+jsondata.subjectName+'" onclick="getmorepractice(this);"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>More practice Qns</span>'+
						    '</div>';
						 prev_param_name++;
				 }
			}
		if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
				var topiclengthto_display = topicsList.length-2;
			}else{
				var topiclengthto_display = topicsList.length;
			}
			
   for(var param_name=0; param_name<topiclengthto_display; param_name++){
	   var acuracyavgfortwosessions = false;
	   if(param_name!=currenttopicno)
		   {
		     appenddata+='<div class="col-md-12">'+
					   '<p  class="parampopupp">'+topicsList[param_name].topicName+'</p>'+
					     '<p style="font-size:14px">Main Skills:'+topicsList[param_name].mainSkills+'</p>';
						 if(topicsList[param_name].noOfAttemptedquestions >0  || topicsList[param_name].notAnsweredCount > 0 || topicsList[param_name].notVisitedCount >0){
							 if(topicsList[param_name].studentAccuracy >= 60 &&  topicsList[param_name+1].studentAccuracy >= 60){
								 appenddata+=  '<span style="color:green;font-weight: bold;">Acheived</span>';
								  appenddata+=  '<span style="cursor: pointer;float: right;color:blue;font-weight:bold;"  data-param="'+topicsList[param_name].topicID+'" data-chapter="'+jsondata.chapterId+'_'+jsondata.chapterName+'"  data-subid="'+jsondata.subjectId+'_'+jsondata.subjectName+'" onclick="getmorepractice(this);" ><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>More practice Qns</span>';
							 }
							
						 }
						 else{
							 if(disable == "disable" && clsebtn == false){
								  appenddata+=  ''; 
							 }else{
								$(".getnext").show();
								 appenddata+=  '<button class="drivenow" onclick="gotocurrentparamstage3(\''+param_name+'\');" >Drive now</button>';  
							 }
							   
						 }
						 appenddata+='</div>';
						  }
	   param_name++;
			 }
	if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
   appenddata+='<div class="col-md-12">'+
   '<p class="paramhighlight">Chapter Target test</p>';
   if(disable == "disable" && clsebtn == false){
	   appenddata+='<button class="drivenow" >Take me</button>';
   }else{
	   appenddata+='<button class="drivenow" onclick="gotochapterytarget(\''+topiclengthto_display+'\');" >Take me</button>';
   }
   
	
    
   appenddata+='</div>';
	}
          appenddata+='</div>';
	$('#param_oreder_flow').empty();
	$('.parameterdrive > .modal-dialog').addClass('modal-lg');
	$('.parameterdrive > #chapter_name').empty(); $('.parameterdrive > #chapter_name').html('Hey ! '+sname);
	$('#paramdrive_close').html(closebtn);
$('#param_oreder_flow').html(appenddata);
if(firstshow_which_one == true){
	
}else{
	 show_param_list = false;
	 $('.examcheckstatus').modal('hide');
	 $('.parameterdrive').modal({backdrop: 'static', keyboard: false})  
	 $(".parameterdrive").modal('show');
}

	  $(".examcheckstatus").modal('hide');
	}
	$("#modalcss").css("background-color","#f79683");
}
 function gotocurrentparamstage3(current_param){
	$('.timer').countimer('resume');
	currentquestionno = 0; currenttopicno = parseInt(current_param);
	/*if(jsondata.topicsList[currenttopicno].studentAccuracy >=60){
		currenttopicno++
	}else{
		
	}*/
	 if(jsondata.chapApproachAvailable ==true){
		 keepenabledisableapproach =true;
	 }else{
		 keepenabledisableapproach =false;
	 }
	
				questionNo++;
	questiondisplay();
	counterli();
	$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	clsebtn = false;
	$('.parameterdrive').modal('hide');
}
 function gotochapterytarget(current_param){
	 $('.timer').countimer('resume');
	 var prevtopic = currenttopicno;
		currentquestionno = 0; currenttopicno = parseInt(current_param);
		if(currenttopicno == -1){ 
		 currenttopicno = prevtopic;
		 alertify.alert('Please Complete Previous Years Questions  before you write chapter target test');
		}else{
			 unattempted_topicarray=[];
		  checkifthistopicwrote();
		  if(unattempted_topicarray.length >0){
			  currenttopicno = prevtopic;
			  alertify.alert('Please Complete all params before you write chapter target test');
		  }else{
			/*  questionNo++;
				questiondisplay();
				counterli();
				$(".getsubmit").show();
				$(".skipstn").show();
				$(".getnext").hide();*/
				$('.parameterdrive').modal('hide');
			  var LoginData = getLoginData();
				var sname = LoginData.name;
				
				
				color = "#A349A4";
					Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
						Aimessage = '<p style="color:black">Hi '+sname+',</p>'+
			   '<p style="color:black">You have performed well in all parameters based questions.</p>'+
			   '<p style="color:black">Now, are you ready to take the Target Test of the chapter?</p>'+
			   '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="chaptertargettestfinalmsg();">Yes, I am Ready</button>';
				$('#chapterint').empty();
				 $("#modalcss").css("background-color",color);
				
				 $('#robo_image').html(Aiimage);
				 $('#chapterint').html(Aimessage);
				  $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
					 $(".examcheckstatus").modal('show');
				  $("#analytics").modal('hide');
					$('.timer').countimer('stop');
			  
		  }
		}
		
					
 }
 function chaptertargettestfinalmsg(){
	 questionNo++;
		questiondisplay();
		counterli();
		$(".getsubmit").show();
		$(".skipstn").show();
		$(".getnext").hide();
		$('.parameterdrive').modal('hide');
 }
function getmorepractice(elem){
	onFinishTestClick("more");
		var chapter = $(elem).attr("data-chapter");
		var subject = $(elem).attr("data-subid");	 
		var paramids= $(elem).attr("data-param");
		var examid = jsondata.examTypeId;
		if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
			var stage_btn = "stage-3";
		}else if(jsondata.currentCIStatus=="S2R1" ||jsondata.currentCIStatus=="S2R2"||jsondata.currentCIStatus=="S2R3"||jsondata.currentCIStatus=="S2R4")
				{
					var stage_btn = "stage-2";
				}
		 window.location = base_url+"jsp/student/Ainteractive/morepracticescreen.jsp?chapter="+chapter+"&subject="+subject+"&paramid="+paramids+"&stage_btn="+stage_btn+"&examid="+examid;
	 
 }
 var morestagego = "";
function morepractice(chapter,subject,paramid,stage_btn){
morestagego = stage_btn;
	
	var questionid = "";
	var comprehensionid= "";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	var sname = LoginData.name;	 
	
	questionNo=1;
    var sidname = subject.split("_");
	var cidname = chapter.split("_");
   	
	var appendtabpanel = "";
	var sidequesmenu = "";
	var appendsidequestion = "";
	var p = 0;
	

			var questionscr = {
					"studentId":sId,
					"subjectId":parseInt(sidname[0]),
					"chapterId":parseInt(cidname[0]),
					"chapterName":cidname[1],
					"subjectName":sidname[1],
					"currentCIStatus":"S1R1",
					"parameterId":paramid
			}
			
			
		
		
		var url = 'rest/chapterInteractive/parameterMoreRound';
			totalunatemptedQuestinStageRound=0;
			totalCorrectquestinStageRound=0;
			 totalwrong =0;
	var quesstr = JSON.stringify(questionscr);
		$.ajax({
		type : "POST",
		url : base_url + url,
		dataType : "json",
		contentType : 'application/json',
		data:quesstr,
		success : function(data) {

			jsondata = data;
			if(jsondata!=null){
      	
      	$('.timer').countimer('start');
					morequestiondisplay();
					
			}
			
			
			},
		error:function(data){
			
			alert("Getting questions error");
		}
	})
	
}

function morequestiondisplay(){
	var appendtabpanel = "";
	var sidequesmenu = "";
	var appendsidequestion = "";
	
	
	var topicsList = jsondata.topicsList;
		var questionlist = topicsList[currenttopicno].questionsList;
		
		if(topicsList[currenttopicno]==null || topicsList[currenttopicno].questionsList[currentquestionno]==null)
		{	
	alert("you reached end of practice");
	
	
	$("#finishtest").show();
		$(".getsubmit").hide();
		$(".skipstn").hide();
		$(".getnext").hide();
		return;
		}
			
if(currentquestionno == 0 && currenttopicno == 0){
					var classname = "active";
					}else{
						var classname="";
					}
					$('#imgsetting').html(jsondata.chapterName);

	
	$('.nextbtn').attr('onclick','moreonNextBtnClick("next");');
	$('.skpbtn').attr('onclick','moreonNextBtnClick("skip");');
	var popupicon = '';
	$('#present_stage').html('More Practice');


$('#Paramname').html(topicsList[currenttopicno].topicName+popupicon);
	var mainquestion = questionlist[currentquestionno].title;
	var removespace = questionlist[currentquestionno].questionType.replace(/ /g,'');
	is_this_last_que = questionlist[currentquestionno].questionId;
						if(questionlist[currentquestionno].questionType == 'Single correct'){
 sidequesmenu += '<li class="'+classname+'"  style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="singlequestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow singlebckground'+questionlist[currentquestionno].questionId+'" >'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+ questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){	 
								appendsidequestion +=  '<div class="singleopdiv'+questionlist[currentquestionno].questionId+' flowmiddle"><div class="col-sm-12 mb-20" id="singleoptiondiv'+optionspace[k].optionId+'"><label class=""><input type="radio" style="margin: 0 !important" name="singleradio'+questionlist[currentquestionno].questionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text singleoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span class="hide" style="float:right" id="correctanswer'+questionlist[currentquestionno].questionId+'" >Correct Answer</span><span class="hide" style="float:right" id="selectanswer'+questionlist[currentquestionno].questionId+'">Your Answer</span></div></div>'; 		

							}
							appendsidequestion +='<div class="row singlesolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}


						if(questionlist[currentquestionno].questionType == 'Multi correct'){
sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="multiquestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multibckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="multiopdiv'+questionlist[currentquestionno].questionId+' flowmiddle"><div class="col-sm-12 mb-20" id="multioptiondiv'+optionspace[k].optionId+'"><label class=""><input type="checkbox" name="multicheckbox'+questionlist[currentquestionno].questionId+'" class="option-input checkbox ads_Checkbox" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text multioptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>'; 
							}
							
							appendsidequestion +='<div class="row multisolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}



						if(questionlist[currentquestionno].questionType == 'Comprehension'){
                     sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].comprehensionId+'" id="comprequestiondiv'+questionlist[currentquestionno].comprehensionId+'"  style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].questionType+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow comprebckground'+questionlist[currentquestionno].comprehensionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].comprehensionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].comprehensionId+'"></p><p class="correct'+questionlist[currentquestionno].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlist[currentquestionno].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){

								appendsidequestion +=  '<div class="compreopdiv'+questionlist[currentquestionno].comprehensionId+'  flowmiddle"><div class="col-sm-12 mb-20" id="compreoptiondiv'+optionspace[k].optionId+'"><label class=""><input type="radio" style="margin: 0 !important" name="singlecomprehension'+questionlist[currentquestionno].comprehensionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text compreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>';  

							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row compresolution'+questionlist[currentquestionno].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';


						}


						if(questionlist[currentquestionno].questionType == 'Multi Comprehension'){

							sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].comprehensionId+'" id="multicomprequestiondiv'+questionlist[currentquestionno].comprehensionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multicomprebckground'+questionlist[currentquestionno].comprehensionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div id="question'+questionlist[currentquestionno].comprehensionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].comprehensionId+'"></p><p class="correct'+questionlist[currentquestionno].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlist[currentquestionno].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="multicompreopdiv'+questionlist[currentquestionno].comprehensionId+'  flowmiddle"><div class="col-sm-12 mb-20" id="multicompreoptiondiv'+optionspace[k].optionId+'"><label  class=""><input type="checkbox" name="multicheckbox'+questionlist[currentquestionno].comprehensionId+'" class="option-input checkbox" value='+optionspace[k].optionId+'><span style="height:30px" class="option_text multicompreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label></div></div>'; 
							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row multicompresolution'+questionlist[currentquestionno].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';

						}


						if(questionlist[currentquestionno].questionType == 'Integer'){
sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="intequestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].questionType+' data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow intebckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane '+classname+'" role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class=""><div class="flex-container"><div class="newCheckBox" ><span id="">';

							appendsidequestion +=  '<div class="row">'+
							 '<div class="col-md-8 col-md-push-4">'+
						       '<div class="calculator integer'+questionlist[currentquestionno].questionId+'">'+
						       '<div class="calc-row">'+
						         '<div class="intdispscreen  mainscreen'+questionlist[currentquestionno].questionId+'"></div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button backspace" data-question='+questionlist[currentquestionno].questionId+'>backspace</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>1</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>2</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>3</div>'+
						       '</div>'+
						        '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>4</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>5</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>6</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button" data-question='+questionlist[currentquestionno].questionId+'>7</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>8</div><div class="button" data-question='+questionlist[currentquestionno].questionId+'>9</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button zero" data-question='+questionlist[currentquestionno].questionId+'>0</div><div class="button decimal" data-question='+questionlist[currentquestionno].questionId+'>.</div>'+
						       '</div>'+
						       '<div class="calc-row">'+
						         '<div class="button clear-All" data-question='+questionlist[currentquestionno].questionId+'>Clear All</div>'+
						       '</div>'+
						     '</div>'+
						     '</div>'+
						      '</div>'

							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							
							appendsidequestion +='<div class="row intesolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div></div>';
						}


						if(questionlist[currentquestionno].questionType == 'Matrix'){

 sidequesmenu += '<li class="'+classname+'" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlist[currentquestionno].questionId+'" id="matrixquestiondiv'+questionlist[currentquestionno].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlist[currentquestionno].type+'  data-questionid='+questionlist[currentquestionno].questionId+' onclick= "clicktoseeques(this)" data-comprehensionid='+questionlist[currentquestionno].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow matrixbckground'+questionlist[currentquestionno].questionId+'">'+questionNo+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';

							appendsidequestion += '<div  id="question'+questionlist[currentquestionno].questionId+'" class="tab-pane" role="tabpanel '+classname+'"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+questionNo+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlist[currentquestionno].questionType+'</span><p class="select'+questionlist[currentquestionno].questionId+'"></p><p class="correct'+questionlist[currentquestionno].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlist[currentquestionno].title+'</div><div class="flex-container"><div class="newMatrixBox" ><span id="">';

							var optionspace = questionlist[currentquestionno].optionlist;
							for(var k=0;k<optionspace.length;k++){
								appendsidequestion +=  '<div class="matrixdiv'+questionlist[currentquestionno].questionId+'"><div class="col-sm-12 mb-20 " style="display:flex;width:50%"><span class="option_text">'+optionspace[k].optionId+')</span>&nbsp;&nbsp;<label class="Parray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="p">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">p</span></label><label  class="Qarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="q">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">q</span></label><label class="Rarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+' checkbox" value="r">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">r</span></label><label class="Sarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="s">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">s</span></label><label  class="Tarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlist[currentquestionno].questionId+'" class="option-input optioncheck'+(k+1)+'  checkbox" value="t">&nbsp;&nbsp;<span style="position:relative;bottom:-8px;padding-left:8px">t</span></label></div></div>'; 
							}
							//appendsidequestion +='<div class="col-sm-10 col-sm-offset-1" style="margin-top:20px;"><a href="#" onclick="seeapproach()"><img src="'+base_url+'/assets/images/students/chapter_wise_images/essay.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Approach</span></a><a href="#" onclick="seeconcept()"><span style="float:right"><img src="'+base_url+'/assets/images/students/chapter_wise_images/checked.svg" width="50px" height="40px"> &nbsp;&nbsp;<span style="vertical-align:super;">Concept</span></span></a></div>';
							appendsidequestion +='<div class="row matrixsolution'+questionlist[currentquestionno].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
						}

			

	$('#approachpresent').html('<a class="btn  hvr-approach-out appechbtn" onclick="seeapproach(\'\',\'\')">Approach</a>');
	

			
			$("#allQuestions").append(sidequesmenu);
			$("#Getallquestions").append(appendsidequestion);
			rendereelemntforkatext();
		
}
function moreonNextBtnClick(type){
	if(type == "skip"){
		totalunatemptedQuestinStageRound++;// to show in summary of stageround
	}
	if(currentquestionno+1 == jsondata.topicsList[currenttopicno].questionsList.length)
	{
	currenttopicno++;
		
					currentquestionno=0;
					   if(currenttopicno==jsondata.topicsList.length)
						{
						   
						   alert("You reached end of practice");
						   
						   
						   $("#pause_btn").hide();
						$("#finishtest").show();
						$(".getsubmit").hide(); // end of all topics reached
						$(".skipstn").hide();
						$(".getnext").hide();
						return;
						}else
							{
							
						questionNo++;
							}

		
		
		
	}else{
		currentquestionno++;
		
		
		questionNo++;
		$(".getsubmit").show();
	$(".skipstn").show();
	$(".getnext").hide();
	
	morequestiondisplay();
			    counterli();
	}
	scrolled=scrolled+80;
    
	$(".get_questions_list_div").animate({
	        scrollTop:  scrolled
	   });
}
function finishmorepractice(){
	var Aimessage="";
	 var Aiimage="";
	 var color="#A349A4";
	 
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		var examid = getParameterByName("examid");
		 var subject = getParameterByName("subject");
			var chapter = getParameterByName("chapter");
			 var paramid = getParameterByName("paramid");
				
		if(morestagego == "stage-3"){
			 var path =  base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&examid="+examid+"&stage_btn="+morestagego+"&user_wish=";
		}else if(morestagego == "stage-2"){
			 var path =  base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&stage_btn="+morestagego+"&user_wish=";
		}
			
			var path1 = base_url+"jsp/student/Ainteractive/morepracticescreen.jsp?chapter="+chapter+"&subject="+subject+"&paramid="+paramid+"&stage_btn="+morestagego+"&examid="+examid;
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			Aimessage += '<p>Hi '+sname+',  Are you eager to practice more..?.</p>';
  

	   Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="location.href=\''+path1+'\'" >Yes,Continue</button>&nbsp;'+
	   '<button class="btn btn-success" style="margin-top:20px;color:#fff;"  onclick="location.href=\''+path+'\'" >Exit</button>';
			$('#chapterint').empty();
			 $("#modalcss").css("background-color",color);
			 $('#chapter_name').html(jsondata.chapterName); 
			 $('#robo_image').html(Aiimage);
			 $('#chapterint').html(Aimessage);
			$('#chapterint > p').css("color","#fff");
			$("#clsebtn").remove();
			 $('.examcheckstatus').modal({backdrop: 'static', keyboard: false});
				 $(".examcheckstatus").modal('show');
				
				
			
				$('.timer').countimer('stop');
				
				 return true;
	
}
function showfinish(){
	var Aimessage="";
	 var Aiimage="";
	 var color="#A349A4";
	 if(jsondata.currentCIStatus == "S3R1" || jsondata.currentCIStatus == "S3R2" || jsondata.currentCIStatus == "S3R3" ||  jsondata.currentCIStatus == "S3R4" ){
			var stage_btn = "stage-3";
		}else if(jsondata.currentCIStatus=="S2R1" ||jsondata.currentCIStatus=="S2R2"||jsondata.currentCIStatus=="S2R3"||jsondata.currentCIStatus=="S2R4")
				{
					var stage_btn = "stage-2";
				}else if(jsondata.currentCIStatus=="S1R1" ||jsondata.currentCIStatus=="S1R2"||jsondata.currentCIStatus=="S1R3"||jsondata.currentCIStatus=="S1R4"){
					var stage_btn = "stage-1";
				}else if(jsondata.currentCIStatus =="expert"){
					var stage_btn = "stage-1 & stage2";
				}else if(jsondata.currentCIStatus =="learner"){
					var stage_btn = "stage-1";
				}else if(jsondata.currentCIStatus =="S3R6" || jsondata.currentCIStatus =="S3R5"){
					var stage_btn = "Chapter target- "+(jsondata.topicsList[currenttopicno].noofTimeTopicRepeated+1);
				}
	 var LoginData = getLoginData();
		var sname = LoginData.name;
		Aiimage = '<img src="'+base_url+'/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">';
			Aimessage += '<p>Hi '+sname+'!</p>'+
			'<p>You have finished the Round in '+stage_btn+'</p>'+
			'<p>click on Finish button to see the summary</p>';
  Aimessage +='<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="" class="close" data-dismiss="modal">okay</button>';
	   
			$('#chapterint').empty();
			 $("#modalcss").css("background-color",color);
			 $('#chapter_name').html(jsondata.chapterName); 
			 $('#robo_image').html(Aiimage);
			 $('#chapterint').html(Aimessage);
			$('#chapterint > p').css("color","#fff");
			$("#clsebtn").remove();
			 $('.examcheckstatus').modal({backdrop: 'static', keyboard: false})  
				 $(".examcheckstatus").modal('show');
				$('.timer').countimer('stop');
				
				 return true;		
}
function getRandomColor() {
	  var letters = '0123456789ABCDEF';
	  var color = '#';
	  for (var i = 0; i < 6; i++) {
	    color += letters[Math.floor(Math.random() * 16)];
	  }
	  return color;
	}
