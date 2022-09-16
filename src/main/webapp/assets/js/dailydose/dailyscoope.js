function getStudentExamtype(){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata = "";
	$.ajax({
		url:base_url+'rest/student/v1/getStudentExamtypes/'+sId,
		type:"GET",
		datatype:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += '<li class="col-md-2"><a href="'+base_url+'jsp/student/dailyscoope/dailyscoop.jsp?eid='+data[i].id+'">';
				if(data[i].image == "" || data[i].image == null){
					appenddata += "<img src='http://via.placeholder.com/150x150' width='80px' height='80px' style='border-radius:25px'>";
				}else{
					appenddata += "<img src='"+data[i].image+"' width='80px' height='80px' style='border-radius:25px'>";
				}
				appenddata += '<p class="heit">'+data[i].name+'</p></a></li>';
			}

			$("#ulse").empty();
			$("#ulse").append(appenddata);
			$("#ulse").addClass("animated fadeInRight");
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function getDailyScoope(val){
	var appenddata="";
	var appenddataModel="";
	var modelappend ="";
	var seledopt = $("#sel option:selected").val();
		console.log(seledopt);
		monthload = seledopt;
	var examTypeId = getParameterByName('eid');
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var name = LoginData.name;
	var mont = val;
	var month = "";
	if(typeof mont === "undefined" || mont === null){
		 //month = 1;
		month = parseInt(seledopt);
	}else{
		 month = mont;
	}
	
	var inputData = {
			"studentId":sId,
			"examtypeId":examTypeId,
			"months":month
	}
	var outputData = JSON.stringify(inputData);

	$.ajax({
		url:base_url+'rest/student/getDailyScoopResponse',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			if(data.status === true){
				var test = data.tests;

				for(var i=0;i<test.length;i++){
					var testmissoract = test[i].testStatus;
					var encodedid = btoa(test[i].testId);
					var encodedstuid = btoa(sId);
					var encodedexamType = btoa(examTypeId);
			
				appenddata += '<div class="col-sm-6">'+
					'<p class="datemont">'+test[i].date+'</p>'+
					'<div class="for">'+
					'<div class="forbox">'+
					'<div class="row">'+
					/*'<div class="col-sm-1"><text class="forhed"></text></div>'+*/
					'<div class="col-sm-6 on"><text class="physub">Test Name : '+test[i].testName+'</text></div>'+
					'<div class="col-sm-6 tw" style="text-align:right"><img src="'+base_url+'assets/images/icons/Syllabus.svg" data-toggle="modal" data-target="#getactivesyllabus"  data-id="'+test[i].testId+'" onclick="syllabusDailyScoop(this);" width="25px" alt=""></div>'+
					'<div class="col-sm-6 thre" style="text-align:left"><text class="dat">'+test[i].questions+' Qns. / '+test[i].time+' Min</text></div>';
				if(testmissoract === "wrote" && test[i].missedWrote === false){
					appenddata += '<div class="col-sm-6 fou" style="text-align:right"><text class="dat">Rank : <span id="rank1">'+test[i].studentRank+'</span></text></div>';
				}else if(testmissoract === "missed"){
					appenddata += '<div class="col-sm-6 fou" style="text-align:right"><text class="dat"> <span id="rank1" class="miss">Missed Test</span></text></div>';
				}else{
					appenddata += '<div class="col-sm-6 fou" style="text-align:right"><text class="dat">Rank : <span id="rank1"></span></text></div>';
				}
				
				appenddata +=	'<div class="col-sm-6 fiv" style="text-align:left"><text class="dat">Expiry : '+test[i].expiredDate+'</text></div>'+
					'</div>'+
					'<div class="mainfor">'+
					' <div class="forrm"> ';

					if(test[i].testImage =="" || test[i].testImage == null){
						appenddata += '<img src="http://via.placeholder.com/150x150" width="400px" height="100px" style="border-radius:25px"></div>';
					}else{
						appenddata += '<img src='+test[i].testImage+' width="400px" height="100px"></div>';
					}
					if(testmissoract === "missed"){
						appenddata += '<div class="miss" style="visibility:hidden;">'+test[i].testStatus+' Test</div>';
					}else if(testmissoract === "active"){
						appenddata += '<div class="miss activegreen" >'+test[i].testStatus+'</div>';
					}else if(testmissoract === "wrote" && test[i].missedWrote === false && test[i].calculatedComparativeAnalytics === true || test[i].calculatedComparativeAnalytics === false){
						appenddata += '<div class="miss misswrote" ></div>';
						//$("#rank1").text(test[i].studentRank);
						/*appenddata += '<div class="miss" style="visibility:hidden">'+test[i].testStatus+'</div>';*/
					}
					appenddata +='</div>'+
					             '</div>'+
					'<div class="row row2">';
					if(testmissoract ==="active" && test[i].missedWrote === false){
						appenddata += '<div class="col-sm-6" style="display:none;"><img src="'+base_url+'assets/images/students/summary/comparitive/Score.png" width="25px" alt=""> your Score : <text class="score">'+test[i].yourScore+'/'+test[i].totalScore+'</text></div>';
					}else if(testmissoract === "missed" && test[i].missedWrote === false){
						appenddata += '<div class="col-sm-6" style="visibility:hidden;"><img src="'+base_url+'assets/images/students/summary/comparitive/Score.png" width="25px" alt=""> your Score : <text class="score">'+test[i].yourScore+'/'+test[i].totalScore+'</text></div>';
					}else{
						appenddata += '<div class="col-sm-6"><img src="'+base_url+'assets/images/students/summary/comparitive/Score.png" width="25px" alt=""> your Score : <text class="score">'+test[i].yourScore+'/'+test[i].totalScore+'</text></div>';
					}
					
					if(testmissoract === "missed"){
						if(testmissoract === "missed" && test[i].missedWrote){
							appenddata += '<div class="col-sm-6 take"><div id="freeaccess_div"><button class="btn btn-primary" id="viewclick'+test[i].testId+'" onclick="getsummarycwupa('+sId+','+test[i].testId+')" data-toggle="modal" data-target="#showmoreModal'+test[i].testId+'">view</button></div></div>';
							appenddataModel +='<div class="modal fade" id="showmoreModal'+test[i].testId+'"  tabindex="-1" role="dialog" aria-labelledby="showmoreModal">'+
							  '<div class="modal-dialog modal-lg" role="document">'+
								'<div class="modal-content">'+
												 '<div class="modal-header">'+
														        '<h4 class="fonkar">Hey, <span id="individualshowpaper">'+name+'</span></h4>'+ 
														        '<div class="row">'+
													            '<div class="col-sm-2 col-sm-offset-1 whsp"><img  data-toggle="modal" data-id='+test[i].testId+' src="'+base_url+'assets/images/students/summary/individual/view/Correct.png" width="25px" alt=""> Correct : <text id="correct'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Unattempted.png" width="25px" alt=""> UnAttempted  : <text id="unattempt'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Wrong.png" width="25px" alt=""> Wrong  : <text id="wrong'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/comparitive/Accuracy.png" width="25px" alt=""> Accuracy  : <text id="accuracy'+test[i].testId+'"></text>% </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Percentage  : <text id="percentage'+test[i].testId+'"></text>%</div>'+
												               '</div>'+
														     '</div>	'+//23-4-2019 for comparative in popup
									'<div class="modal-body">'+
										'<div class="panel-body">'+
											'<div class="panel-group accordion-struct" id="showmoreModal_tbody'+test[i].testId+'" role="tablist" aria-multiselectable="true">'+
												'<div class="row">'+
													'<div class="col-sm-12">'+
														'<div class="tab-struct custom-tab-1" >'+
															'<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs'+test[i].testId+'">'+
															 '<li class="" role="presentation"></li>'+
																'<li role="presentation" class="">Getting...</li>'+
																'<li role="presentation" class=""></li> '+
															'</ul>'+
															'<div class="tab-content" id="questionsContents'+test[i].testId+'">'+
															'</div>'+
														'</div>'+
													'</div>'+
												'</div>'+
										   	'</div>'+
										'</div>'+
									'</div>'+
									'<div class="modal-footer">'+
										'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
									'</div>'+
								'</div>'+
							 '</div>'+
						   '</div>';
							/*showpaperquesD(test[i].testId);
							$("#modelview").empty();
							$("#modelview").append(appenddataModel);*/
						}else{
					/*	appenddata += '<div class="col-sm-6 take"><a href="'+base_url+'jsp/student/dailyscoope/simple_pratice_screen.jsp?testid='+test[i].testId+'&studentid='+sId+'&type=type"><button class="btn btn-success">Take</button></a></div>';*/
						appenddata += '<div class="col-sm-6 take"><a href="'+base_url+'jsp/student/dailyscoope/simple_pratice_screen.jsp?id='+encodedid+'&studentid='+encodedstuid+'&missed='+testmissoract+'&examType='+encodedexamType+'"><button class="btn btntake">Take</button></a></div>';
						}
					}else if(testmissoract === "active"){
						if(testmissoract ==="active" && test[i].missedWrote === false){
							appenddata += '<div class="col-sm-6 take" style="float:right;"><a href="'+base_url+'jsp/student/dailyscoope/simple_pratice_screen.jsp?id='+encodedid+'&studentid='+encodedstuid+'&examType='+encodedexamType+'"><button class="btn btntake">Take</button></a></div>';
						}else{
							appenddata += '<div class="col-sm-6 take"><a href="'+base_url+'jsp/student/dailyscoope/simple_pratice_screen.jsp?id='+encodedid+'&studentid='+encodedstuid+'&examType='+encodedexamType+'"><button class="btn btntake">Take</button></a></div>';
						}
						
					}
					else if(testmissoract === "wrote"){//in active wrote but not expired show rank
					  if(testmissoract === "wrote" && test[i].missedWrote === false && test[i].calculatedComparativeAnalytics === true){
						appenddata += '<div class="col-sm-6 take"><div id="freeaccess_div"><button class="btn btn-primary" id="viewclick'+test[i].testId+'" onclick="getsummarycwupa('+sId+','+test[i].testId+')" data-toggle="modal" data-target="#showmoreModal'+test[i].testId+'">view</button></div></div>';
						appenddataModel +='<div class="modal fade" id="showmoreModal'+test[i].testId+'"  tabindex="-1" role="dialog" aria-labelledby="showmoreModal">'+
						  '<div class="modal-dialog modal-lg" role="document">'+
							'<div class="modal-content">'+
											 '<div class="modal-header">'+
													        '<h4 class="fonkar">Hey, <span id="individualshowpaper">'+name+'</span></h4>'+ 
													        '<div class="row indiv">'+
													        '<div class="col-sm-2 yourperf"> Your Performance :	</div>'+
												            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+' src="'+base_url+'assets/images/students/summary/individual/view/Correct.png" width="25px" alt=""> Correct : <text id="correct'+test[i].testId+'"></text> </div>'+
												            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Unattempted.png" width="25px" alt=""> UnAttempted  : <text id="unattempt'+test[i].testId+'"></text> </div>'+
												            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Wrong.png" width="25px" alt=""> Wrong  : <text id="wrong'+test[i].testId+'"></text> </div>'+
												            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/comparitive/Accuracy.png" width="25px" alt=""> Accuracy  : <text id="accuracy'+test[i].testId+'"></text>% </div>'+
												            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Percentage  : <text id="percentage'+test[i].testId+'"></text>%</div>'+
											               '</div>'+
											               '<div class="row comparativ">'+
											               '<div class="col-sm-2"> <span>Comparative Performance : </span></div>'+
											               '<div class="col-sm-2"><text class="rankpop">Rank : <span id="rankpop"></span></text></div>'+
											               '<div class="col-sm-2"><text class="popyourscore">Your Score : <span id="popyourscore">'+test[i].yourScore+'</span></text></div>'+
											               '<div class="col-sm-2"><text class="popavgscore">Avg Score : <span id="popavgscore"></span></text></div>'+
											               '<div class="col-sm-2"><text class="popparticipants">Participants : <span id="popparticipants">'+test[i].participants+'</span></text></div>'+
											               '</div>'+
													     '</div>'+
								'<div class="modal-body">'+
									'<div class="panel-body">'+
										'<div class="panel-group accordion-struct" id="showmoreModal_tbody'+test[i].testId+'" role="tablist" aria-multiselectable="true">'+
											'<div class="row">'+
												'<div class="col-sm-12">'+
													'<div class="tab-struct custom-tab-1" >'+
														'<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs'+test[i].testId+'">'+
														 '<li class="" role="presentation"></li>'+
															'<li role="presentation" class="">Getting...</li>'+
															'<li role="presentation" class=""></li> '+
														'</ul>'+
														'<div class="tab-content" id="questionsContents'+test[i].testId+'">'+
														'</div>'+
													'</div>'+
												'</div>'+
											'</div>'+
									   	'</div>'+
									'</div>'+
								'</div>'+
								'<div class="modal-footer">'+
									'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
								'</div>'+
							'</div>'+
						 '</div>'+
					   '</div>';
					  }else if(testmissoract === "wrote" && test[i].calculatedComparativeAnalytics === false){
						  appenddata += '<div class="col-sm-6 take"><div id="freeaccess_div"><button class="btn btn-primary" id="viewclick'+test[i].testId+'" onclick="getsummarycwupa('+sId+','+test[i].testId+')" data-toggle="modal" data-target="#showmoreModal'+test[i].testId+'">view</button></div></div>';
							appenddataModel +='<div class="modal fade" id="showmoreModal'+test[i].testId+'"  tabindex="-1" role="dialog" aria-labelledby="showmoreModal">'+
							  '<div class="modal-dialog modal-lg" role="document">'+
								'<div class="modal-content">'+
												 '<div class="modal-header">'+
														        '<h4 class="fonkar">Hey, <span id="individualshowpaper">'+name+'</span></h4>'+ 
														        '<div class="row">'+
													            '<div class="col-sm-2 col-sm-offset-1 whsp"><img  data-toggle="modal" data-id='+test[i].testId+' src="'+base_url+'assets/images/students/summary/individual/view/Correct.png" width="25px" alt=""> Correct : <text id="correct'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Unattempted.png" width="25px" alt=""> UnAttempted  : <text id="unattempt'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/view/Wrong.png" width="25px" alt=""> Wrong  : <text id="wrong'+test[i].testId+'"></text> </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/comparitive/Accuracy.png" width="25px" alt=""> Accuracy  : <text id="accuracy'+test[i].testId+'"></text>% </div>'+
													            '<div class="col-sm-2 whsp"><img  data-toggle="modal" data-id='+test[i].testId+'  src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Percentage  : <text id="percentage'+test[i].testId+'"></text>%</div>'+
												               '</div>'+
														     '</div>	'+//23-4-2019 for comparative in popup
									'<div class="modal-body">'+
										'<div class="panel-body">'+
											'<div class="panel-group accordion-struct" id="showmoreModal_tbody'+test[i].testId+'" role="tablist" aria-multiselectable="true">'+
												'<div class="row">'+
													'<div class="col-sm-12">'+
														'<div class="tab-struct custom-tab-1" >'+
															'<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs'+test[i].testId+'">'+
															 '<li class="" role="presentation"></li>'+
																'<li role="presentation" class="">Getting...</li>'+
																'<li role="presentation" class=""></li> '+
															'</ul>'+
															'<div class="tab-content" id="questionsContents'+test[i].testId+'">'+
															'</div>'+
														'</div>'+
													'</div>'+
												'</div>'+
										   	'</div>'+
										'</div>'+
									'</div>'+
									'<div class="modal-footer">'+
										'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
									'</div>'+
								'</div>'+
							 '</div>'+
						   '</div>';
					  }
					}
					appenddata += 	'</div>'+
					'<div class="row row3">';
					if(test[i].missedWrote === true ){
						appenddata += '<div class="col-sm-6" style="visibility:hidden;"><img src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Avg. Score : <text class="score">'+test[i].avgScore+'</text></div>'+
						'<div class="col-sm-6 partic" style="visibility:hidden;"><img src="'+base_url+'assets/images/students/summary/individual/performance/participates.png" width="25px" alt=""> participants : <text class="score">'+test[i].participants+'</text></div>';
					}else if(testmissoract === "active" && test[i].missedWrote === false){
						appenddata += '<div class="col-sm-6" style="display:none;"><img src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Avg. Score : <text class="score"></text></div>'+
						'<div class="col-sm-6 partic" style="display:none;"><img src="'+base_url+'assets/images/students/summary/individual/performance/participates.png" width="25px" alt=""> participants : <text class="score"></text></div>';
					}else if(testmissoract === "wrote" && test[i].missedWrote === false){
						appenddata += '<div class="col-sm-6"><img src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Avg. Score : <text class="score">'+test[i].avgScore+'</text></div>'+
						'<div class="col-sm-6 partic"><img src="'+base_url+'assets/images/students/summary/individual/performance/participates.png" width="25px" alt=""> participants : <text class="score">'+test[i].participants+'</text></div>';
					}else if(testmissoract === "missed" && test[i].missedWrote === true || test[i].missedWrote === false){
						appenddata += '<div class="col-sm-6" style="visibility:hidden;"><img src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Avg. Score : <text class="score"></text></div>'+
						'<div class="col-sm-6 partic" style="visibility:hidden;"><img src="'+base_url+'assets/images/students/summary/individual/performance/participates.png" width="25px" alt=""> participants : <text class="score">'+test[i].participants+'</text></div>';
					}else{
						appenddata += '<div class="col-sm-6"><img src="'+base_url+'assets/images/students/summary/individual/performance/percentage.png" width="25px" alt=""> Avg. Score : <text class="score"></text></div>'+
						'<div class="col-sm-6 partic"><img src="'+base_url+'assets/images/students/summary/individual/performance/participates.png" width="25px" alt=""> participants : <text class="score"></text></div>';
					}
					appenddata += '</div>'+
					'</div>'+
					'</div>';
				}
				
				$("#rowdailyScoop").empty();
				$("#rowdailyScoop").append(appenddata);
				$("#modelview").empty();
				$("#modelview").append(appenddataModel);
				$("#shopepertabs li:first-child").click();
			}else{
				alert(data.message);
			}
		},
		error:function(data){
			
			/*if(data.responseJSON.status == false && seledopt == 1){
				getDailyScoope(2);
				$("#sel option[value="+1+"]").removeProp("selected");
				$("#sel option[value="+2+"]").attr("selected",true);
				return;
			}else if(data.responseJSON.status == false && seledopt == 2){
				getDailyScoope(3);
				$("#sel option[value="+2+"]").removeProp("selected");
				$("#sel option[value="+3+"]").attr("selected",true);
				return;
			}else{*/
			if(data.responseJSON.status == false){
				//alert(data.responseJSON.errorMessage);
				 $("#rowdailyScoop").empty();	
				 $("#rowdailyScoop").html('<div class="centerVHWidth"><h5 class="center" style="font-size:20px;font-weight:bold;">No Tests Found :(</h5></div>');
				return;
			}
			
			
			
		}
	})

}
//filter month
$("#sel").change(function(){
	var seledopt = $("#sel option:selected").val();
	getDailyScoope(seledopt);
});

function syllabusDailyScoop(elem){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var name = LoginData.name;
	var testId = $(elem).attr('data-id');
	var appenddata = "";
	$.ajax({
		type:"GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/student/v1/getLivezonesyllabus/'+testId,
		success:function(data){
			var testPostDetails = data.testPostDetails;
			for(var i=0;i<testPostDetails.length;i++){

				appenddata +=  "<div class='panel panel-default'>"+
				"<div class='panel-heading' role='tab'>"+
				"<a role='button' data-toggle='collapse' class='actcollap' data-parent='#activesyllabus_tbody' href='#collapse_"+i+"' aria-expanded='true' ><i class='fa fa-plus-circle fa-lg'></i>&nbsp;"+testPostDetails[i].subject+"</a>"+
				"</div>"+
				"<div id='collapse_"+i+"' class='panel-collapse collapse in' role='tabpanel'>"+
				"<div class='panel-body pa-15'>"+
				"<div class='row'>"+
				"<div class='col-sm-12 col-xs-12'>";
				for(var j=0;j<testPostDetails[i].chapters.length;j++){

					var chapter = testPostDetails[i].chapters[j];
					var chaptersplit = chapter.split(",");
					var chapterjoin = chaptersplit.join();
					appenddata += "<div class='mb-10'>"+chapterjoin+"</div>";
				}
				appenddata += "</div></div></div></div></div>";

			}
			$("#activesyllabus_tbody").empty();
			$("#activesyllabus_tbody").append(appenddata);
			$("#activename").text(name);
			//$("#actcollap").addClass('activestate');
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})

}
$(".actcollap").click(function(){
	if($(this).parentElement.classList.contains('actcollap')){
		$(this).parentElement.toggle('actcollap');
	}
})
function getsummarycwupa(sid,testid){
	var sid = sid;
	var testid = testid;
	var appenddataModel ="";
	var LoginData = getLoginData();
	//var sId = LoginData.studentid;
	var name = LoginData.name;
	var inputData = {
			"studentId":sid,
			"testPostId":testid
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/v1/getsummery',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			
			
			
			//$("#modelview").append(appenddataModel);
			$("#correct"+testid).text(data[0].correct);
			$("#unattempt"+testid).text(data[0].unAttempted);
			$("#wrong"+testid).text(data[0].wrong);
			$("#accuracy"+testid).text(data[0].accuracy);
			$("#percentage"+testid).text(data[0].percentage);
			$("#rankpop").text(data[0].countryLevelRank);
			$("#popavgscore").text(data[0].avgScore);
			//$("#rankpop").text(data[0].countryLevelRank);
			 showpaperquesD(testid);
			$("#shopepertabs"+testid+" li").removeClass('active');
			
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//analytics showpaper for getting subjects
var showpaperdata ="";

function showpaperquesD(elem){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var Id = parseInt(atob(getParameterByName('id')));
	if(typeof Id != "undefined"){
		Id = elem;
	}
	var inputData ={
			"testPostId":Id,
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
			$("#questionsContents"+Id).empty();
			$("#questionsContents"+Id).html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		  success:function(data){
			showpaperdata = data;
			//getpaperSubjects(showpaperdata);
			for(var i=0; i < showpaperdata.subjectslist.length; i++ ){
				
			 for(var k=0; k < showpaperdata.subjectslist[i].sectionlist.length; k++) {
				 
				 if(showpaperdata.subjectslist[i].sectionlist[k].section !=""){
					 if(k>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'" onclick="getShowPaperd(this,'+Id+')">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						} else{
							subFirst = showpaperdata.subjectslist[i].sectionlist[k].section;
							appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'"  onclick="getShowPaperd(this,'+Id+')">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						}
				
				  }else{
					 if(k>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaperd(this,'+Id+')">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 } else{
						subFirst = showpaperdata.subjectslist[i].subject;
						appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaperd(this,'+Id+')">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 }
				}
			 }
			 
			}
			
			
			setTimeout(function() {
				$("#shopepertabs"+Id).empty();
				$("#shopepertabs"+Id).append(appenddata);
				rendereelemntforkatext();
				var shp = $('#shopepertabs'+Id+' li:first-child a');
				$('#shopepertabs'+Id+' li:first-child a').trigger('click');
				 
				
			}, 500);
		 
		 
		
		},
		error:function(){
			
			setTimeout(function() {
				$("#questionsContents"+Id).empty();
				$("#questionsContents"+Id).html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');	
			}, 500);
			
			//alert("Subjects not found");
		}
	});
	
}

function getShowPaperd(elem,id){
	var testid = id;
	
	$('#shopepertabs'+testid+' li').removeClass('active');
	$('#shopepertabs'+testid+' li:first-child').addClass('active');
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
		   
		   appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+questions[j].title +
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
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						 } else{
							
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
							  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
							  '</div></div></div>';
						 }
						 
					 } else{
						//single correct
						 
						 if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						 } else{
								
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
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
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer.indexOf(options[l].optionId) > -1){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 } else{
						 //single correct
						 
						 if(studentanswer === options[l].optionId && answerrsult === options[l].optionId){
							//your answer is correct
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
							  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
							  '</div></div></div>';
								
						 } else if(answerrsult === options[l].optionId){
							//correct answer
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
							  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
							  '</div></div></div>';
						 } else if(studentanswer === options[l].optionId){
							//wrong answer
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
							  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
							  '</div></div></div>';
						 }else{
								
							appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
							  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
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
			  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ questions[j].solution+
			  '</div></div></div></div>';
			 
			 //Total students count for attempted and correctly answerred
			 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
			               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
			               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
			 
			 if(questions[j].overtime){
				 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
			 } else{
				 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
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
		   
		  appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+questions[j].title+
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
		  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap" style="color:#2f2b2b">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
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
		 appendqqq +=  '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+questions[j].title+
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
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span> <span class="below-icon-text">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span class="below-icon-text">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text red"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Time Taken -</span> <span class="below-icon-text"> '+questions[j].timespent+'</span></div>'; 
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
			  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12" style="color:#2f2b2b">'+questions[j].passage+
			  '</div></div></div>';
			  
		}
		
       } else{
			appendqqq += '<div class="">'+
			  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
			  '<div class="row pd-5">'+
			  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
			  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
			  '<span>&nbsp; : &nbsp;</span></div>'+
			  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+questions[j].passage+
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
           
		  appendqqq += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+questions[j].title+
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
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 }else{
						 //single correct
						 
						 if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
						  } else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
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
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult.indexOf(options[l].optionId) > -1){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer.indexOf(options[l].optionId) > -1){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
								  '<span class=" ml-30"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+'</span>'+
								  '</div></div></div>';
							}
					 } else{
						 //single correct
						 
						 if(studentanswer === options[l].optionId && answerrsult === options[l].optionId){
								//your answer is correct
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 correct-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="green">(Your Selection, Correct Answer)</span></span>'+
								  '</div></div></div>';
								
							} else if(answerrsult === options[l].optionId){
								//correct answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 ocorrect-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="ocorrect">(Correct Answer)</span></span>'+
								  '</div></div></div>';
							} else if(studentanswer === options[l].optionId){
								//wrong answer
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 wrong-pop" style="color:#2f2b2b">'+
								  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10"> <span class="optionKey">'+options[l].optionId+') </span>'+options[l].option+' <span class="red">(Your Selection, Wrong Answer)</span></span>'+
								  '</div></div></div>';
							}else{
								
								appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
								  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 neutral-pop" style="color:#2f2b2b">'+
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
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 questionswrap" style="color:#2f2b2b">'+ questions[j].solution+
		  '</div></div></div></div>';
		 
		//Total students count for attempted and correctly answerred
		 appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3 qnscount ">'+
		               '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text"> Students Attempted -</span> <span class="below-icon-text" style="color:#2f2b2b">'+questions[j].totalStudentsAttended+'</span></div>'+
		               '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text"> Students Correctly Answered -</span> <span class="below-icon-text" style="color:#2f2b2b">'+questions[j].totalStudentsAnsweredCorrectly+'</span></div>';
		 
		 if(questions[j].overtime){
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text red"> Time Taken -</span> <span class="below-icon-text red" style="color:#2f2b2b"> '+questions[j].timespent+'</span></div>';
		 } else{
			 appendqqq += '<div class="col-md-4"><i class="fa fa-hourglass-half overtime-icon"></i><span class="below-icon-text"> Time Taken -</span> <span class="below-icon-text" style="color:#2f2b2b"> '+questions[j].timespent+'</span></div>'; 
		 }
		                
		 appendqqq += '</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
		 
		 /*appendqqq += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div></div></div></div>';*/
		 
		 
	}
}



		$("#questionsContents"+testid).empty();
		$("#questionsContents"+testid).append(appendqqq);
		rendereelemntforkatext();
}
