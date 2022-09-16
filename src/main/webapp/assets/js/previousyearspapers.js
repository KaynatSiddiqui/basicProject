
//paper wise test for getting exam types

function getPreviousYearExamTypes(){
	var appenddata ="";
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	$.ajax({
		type:"GET",
		url : base_url+'rest/student/v1/getStudentExamtypes/'+sId,
		data:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i < data.length; i++){
				var image = data[i].image;
				
				appenddata +=  	'<li class="col-md-2"><a href="#"  role="tab" data-toggle="tab"  onclick="showPreviousyearPapers('+data[i].id+');"><img src="'+image+'" width="70px" height="60px" style="border-radius:10px;"><p class="heit">'+data[i].name+'</p></a></li>';
			}
			 $("#papertab").empty();
			 $("#papertab").append(appenddata);
			 $('#papertab li:first-child a').click();
		},
	    
		error:function(data){
			 $("#papertab").empty();
			alert("no examtypes found");
			
		}
	})
	 
}

//previous year paper test functionality

function showPreviousyearPapers(ele){
	
	var appenddata ="";
	var tableappenddata="";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var exmid =ele;
	
	inputData ={
			"studentId":sId,
		     "examtypeId":exmid
			
	}
	
	var inputdata = JSON.stringify(inputData);
	
	 $.ajax({
		 type:"POST",
		 dataType:"json",
		 contentType:'application/json',
		 url:base_url+'rest/student/v1/getPaperWiseTests',
		 data:inputdata,
		 beforeSend: function() {
				$(".loadershow").show();
				},
		 success:function(data){
			 
				$(".loadershow").hide();
			 for (i=0;i<data.length;i++){
				 var testid = data[i].testId;
				 var tid  = btoa(data[i].testId);
				 var paperwisedata = data[i].paperWiseAnalyticsPojos;
				 
				 if(data[i].issubscribed){
					 
					 var mask = "unmask";
					
				 }else{
					 if(data[i].issubscribed == false && data[i].alreadyTaken){
						 var mask ="mask";
					 }
					
					 
				 }
			 appenddata += '<div class="row rwsstyles">';
					 
					 appenddata +=  '<div class="row rwstyle">'+
						             '<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7"><img src="'+base_url+'/assets/images/students/calender.png" width="65px"><span style="position: relative;top: -17px;font-size: 18px;left: -54px;">'+data[i].previousYear+'</span>'+
						'<span class="test_name_previous_years adjustname"> '+data[i].testName+' </span>'+
						'<span style="position:relative;left:-35px;">(<span>'+data[i].questionsCount+'Qns</span>, <span>'+data[i].testTime+'</span>, <span>'+data[i].testTotalMarks+' Marks</span>)</span>'+
					     '</div>'
					 
						
						 if(data[i].alreadyTaken == true){
							
						 appenddata += '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2" style="margin-top:10px">'+
		                    '<a href="'+base_url+'jsp/student/student module/student_analytics3.jsp?studentid='+sId+'&id='+tid+'" class="marf btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-placement="left" title="Test Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a>'+
		                    '</div>'+	
							 
							 
							 '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2" style="margin-top:10px">'+

							'<a href="'+base_url+'jsp/questionsscreen/general_instructions.jsp?studentid='+sId+'&testid='+testid+'" class="btn btn btn-danger setbtn">Take Again</a>'+
						'</div>'+
						 '</div>';	
						 }else{
							 appenddata +=	'<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2" style="margin-top:10px">'+
								'<a href="'+base_url+'jsp/questionsscreen/general_instructions.jsp?studentid='+sId+'&testid='+testid+'" class="btn btn btn-primary setbtn">Take</a>'+
							'</div>'+
							 '</div>';	 
							 
						 }
						 if(data[i].alreadyTaken == true){
						 appenddata += '<div class="row rwstyle">'+
				            '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">'+
				               '<div class="">'+
					           '<div class="table-responsive">'+
						'<table id="" class="table test" >'+
							'<thead class="">'+
								'<tr>'+
									'<th>Score</th>'+
									'<th>-Ve Marks</th>'+
									'<th>Unattempted Qns.</th>'+
									'<th>Over Time Qns.</th>'+
									'<th>Accuracy %</th>'+
									'<th>Percentage %</th>'+
									'<th>Speed Qns/hr</th>'+
									
								'</tr>'+
								'</thead>'+
							'<tbody id="paperwisetablebody">'+
						'<tr>'+
						'<td class="unmask"><a href="#" data-toggle="modal" data-target="#attemptedModal" data-id='+data[i].testId+' data-whatever='+data[i].testId+'  onclick="getAttemptedScore(this,1)"><span class="text_score">'+paperwisedata[0].scoredMark+'/ '+paperwisedata[0].totalMarks+'<br>('+paperwisedata[0].scoredQuestions+'Q/'+paperwisedata[0].totalScoredQuestions+'Q)</span></a></td>'+	
						
						'<td class='+mask+'><a class="" href="#" data-toggle="modal" data-target="#attemptedModal" data-id='+data[i].testId+' data-whatever='+data[i].testId+'  onclick="getAttemptedScore(this,55)"><span class="text_negative_score">'+paperwisedata[0].negativeMarks+'<br>('+paperwisedata[0].negativeQuestions+'Q)</span></a></td>'+
							
						'<td class='+mask+'><a href="#" data-toggle="modal" data-target="#attemptedModal" data-id='+data[i].testId+' data-whatever='+data[i].testId+' onclick="getAttemptedScore(this,2)"><span class="text_unattempted">'+paperwisedata[0].unattemptedQuestions+'Q</span></a></td>'+
							
							'<td class='+mask+'><a class="" href="#" data-toggle="modal" data-target="#attemptedModal" data-id='+data[i].testId+' data-whatever='+data[i].testId+'  onclick="getAttemptedScore(this,56)"><span class="text_time_taken">'+paperwisedata[0].overTimeQuestions+'Q</span></a></td>'+
						
							'<td class='+mask+'>'+paperwisedata[0].accuracy+'%</td>'+
							'<td class='+mask+'>'+paperwisedata[0].percentage+'%</td>'+
							'<td class='+mask+'>'+paperwisedata[0].speed+'</td>'+
							
								'</tr>'+
									'</tbody>'+
								'</table>'+
					'</div>'+
				'</div>'+
			'</div>'+
		'</div> ';
						

						 appenddata +=  '<div class="row rwstyle" >'+
			                '<div class="col-sm-4 '+mask+'">'+
			                 '<p>Last time taken on: <span>'+data[i].lastTimeTakenDate+'</span> <p>'+
			                '</div>'+
			                 '<div class="col-sm-4 col-sm-offset-4 '+mask+'">'+
			                 '<p>No.of times Taken: <span>'+data[i].noOfTimesTaken+'</span> <p>'+
			                 '</div>'+
			                  '</div> ';
						 }
							  
			 appenddata += '</div>';
			 
				 
				 }
			
			 $("#previousyearcontent").empty();
				$("#previousyearcontent").append(appenddata);
		
		
				 
			 },
			 error:function(data){
				 
					
				 $("#previousyearcontent").empty();
				 $("#previousyearcontent").html('<div class="centerVHWidth"><h5 class="center">No Tests Found :(</h5></div>');
				
			 }
		 
	 });
}
					
			