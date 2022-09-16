var jsondata = {};
var currentsubjectindex ="";
var currentquestionlistindex ="";
var eachquestiontime;
var questionstatus = "";
var myarray = [];
var comprehensionarray = [];

function getchapterexamtypes(){

	var appendata = "";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;

	$.ajax({
		type : "GET",
		url : base_url + 'rest/student/getStudentChapterWiseExamtypes/'+sId,
		dataType : "json",
		contentType : 'application/json',
		success:function(data){
        
			for(var i=0;i<data.length;i++){

				appendata += "<div class='col-md-2 fade-in two'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/chapterwisesubjects.jsp?examtypeid="+data[i].id+"' ><img src="+data[i].image+" width='80px' height='80px' ><p class='heit'>"+data[i].name+"</p></a></div>";
			}


			$("#examtypechapter").append(appendata);
			 $(".loadershow").hide()
		},
		error:function(data){
			 $(".loadershow").hide()
			alert("Failed to get examtypes");
		}
	})
}


function getchapterwisesubjects(elem){
	var appendata = "";
	var currenturl = "";
	var examid = getParameterByName('examtypeid');
	var subid = getParameterByName('subid');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;

	if(examid == -1){
		currenturl = base_url + 'rest/student/getPreviousYearSubjectsBasedonCat/'+examid+'/'+studid
	}else{
		currenturl = base_url + 'rest/student/getPreviousYearSubjects/'+examid
	}

	$.ajax({
		type : "GET",
		url : currenturl,
		dataType : "json",
		contentType : 'application/json',
		  beforeSend: function(){
		    	$("#chaptertab").empty();
	         	$(".load").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"  >');			
				$(".load").show();
			},
		success : function(data) {
			
			$(".load").hide();
	
			var nthchild = '';
			for(var i=0;i<data.length;i++){
			
				if(subid == "" || subid == null || subid == undefined){
				   nthchild = 1;
			}else{
				 if(subid == data[i].id){
					 nthchild = i + 1;
				 }
			}

				if(i == 0){
					appendata += "<li class='active' style='text-align:center;'><a href='#subject"+data[i].id+"' data-id="+data[i].id+" role='tab' data-toggle='tab' style='box-shadow: 0px 0px 18px grey'   onclick='getsubjectcontent(this)' ><img src="+data[i].subjectIcon+" width='50px' height='50px'><p class='heit'>"+data[i].name+"</p></a></li>";	
				}else{
					appendata += "<li style='text-align:center;'><a href='#subject"+data[i].id+"' data-id="+data[i].id+"  role='tab' data-toggle='tab' style='box-shadow: 0px 0px 18px grey'  onclick='getsubjectcontent(this)' ><img src="+data[i].subjectIcon+" width='50px' height='50px'><p class='heit'>"+data[i].name+"</p></a></li>";					   
				}
			}
			
			$("#chaptertab").append(appendata);
			$("#chaptertab li:nth-child("+parseInt(nthchild)+") a").trigger("click");
			
		},
		error:function(data){
			$("#subjectsempty").modal("show");
        	
		}
	})
}


function getsubjectcontent(elem){

	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var subjectid = $(elem).attr('data-id');	
	var examid = getParameterByName('examtypeid');
	var appendata = "";
	var subjecont = {
			"studentId":sId,
			"subject":subjectid,
			"examtypeId":examid
	}

	var subjstr = JSON.stringify(subjecont);
	var wrongques = "wrong";
	var unattemptedques = "unAttempted";
	var activename;
	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/getChapterWiseQuestions',
		dataType : "json",
		contentType : 'application/json',
		data:subjstr,
	    beforeSend: function(){
	    	$("#subjectcontent").empty();
         	$(".load").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"  >');			
			$(".load").show();
		},
		success : function(data) {

			$(".load").hide();

			for(var i=0;i<data.length;i++){
				if(data.issubscribed){
					var mask = "unmask";
				}else{
					if(i<=0){
						var mask = "unmask";
					}else{
						var mask = "mask";
					}
				}
				
				if(i == 0){
					activename = "active";
				}else{
					activename = "";
				}
				
				if(data[i].alreadyWrote == true){
				
						if(data[i].unAttemptedCount == 0 && data[i].wrongQuestionsCount != 0 && data[i].correctQuestionsCount == 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' data-id="+data[i].chapterId+" style='color:#00BA85;position:relative;left:30px;' >"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+wrongques+"' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";
						}else if(data[i].unAttemptedCount != 0 && data[i].wrongQuestionsCount == 0 && data[i].correctQuestionsCount != 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+unattemptedques+"' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#00BA85;position:relative;left:30px;' data-id="+data[i].chapterId+" onclick='showCorrectanswer(this)' data-toggle='modal' data-target='#correctansmodal'>"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";	
						}else if(data[i].unAttemptedCount == 0 && data[i].wrongQuestionsCount == 0 && data[i].correctQuestionsCount == 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#00BA85;position:relative;left:30px;' data-id="+data[i].chapterId+" >"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";		
						}else if(data[i].unAttemptedCount == 0 && data[i].wrongQuestionsCount != 0 && data[i].correctQuestionsCount != 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#00BA85;position:relative;left:30px;' data-id="+data[i].chapterId+" onclick='showCorrectanswer(this)' data-toggle='modal' data-target='#correctansmodal'>"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+wrongques+"' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";							
						}else if(data[i].unAttemptedCount != 0 && data[i].wrongQuestionsCount != 0 && data[i].correctQuestionsCount == 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+unattemptedques+"' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#00BA85;position:relative;left:30px;' data-id="+data[i].chapterId+" >"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+wrongques+"' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";							
						}else if(data[i].unAttemptedCount == 0 && data[i].wrongQuestionsCount == 0 && data[i].correctQuestionsCount != 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span>&nbsp;&nbsp;&nbsp;&nbsp;</p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' data-id="+data[i].chapterId+" onclick='showCorrectanswer(this)' data-toggle='modal' data-target='#correctansmodal' style='color:#00BA85;position:relative;left:30px;'>"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";
						}else if(data[i].unAttemptedCount != 0 && data[i].wrongQuestionsCount == 0 && data[i].correctQuestionsCount == 0){
							appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+unattemptedques+"' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span>&nbsp;&nbsp;&nbsp;&nbsp;</p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' data-id="+data[i].chapterId+" onclick='showCorrectanswer(this)' data-toggle='modal' data-target='#correctansmodal' style='color:#00BA85;position:relative;left:30px;'>"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";
						}else{
						appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;box-shadow: 0px 0px 18px grey;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests mt-30' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row'><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div><div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'><span style='float:right;position:relative;top:-12px;color:black;'>last practised on:<span style='font-size:15px;margin-left:4px;'>"+data[i].lastPractisedDate+"</span></span></div></div><div class='row' style='margin-top:15px;'><div class='col-md-12 col-md-offset-1'><div class='col-md-4'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+unattemptedques+"' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"<a></span></p></div><div class='col-md-4'><p style='color:black'>Correct Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='#' style='color:#00BA85;position:relative;left:30px;' data-id="+data[i].chapterId+" onclick='showCorrectanswer(this)' data-toggle='modal' data-target='#correctansmodal'>"+data[i].correctQuestionsCount+"</a></span></p></div><div class='col-md-4'><p style='color:black'>Wrong Qns</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+wrongques+"' style='color:#DB5A7C;position:relative;left:30px;'>"+data[i].wrongQuestionsCount+"</a></span></p></div></div></div></div></div>";
						}
					
				}else{
						appendata += "<div role='tabpanel "+mask+"' class='tab-pane "+activename+" ' style='margin-bottom:20px;' id='subject"+data[i].chapterId+"'><div class='row testzone_chapterwise_tests' style='padding:20px;box-shadow: 0px 0px 18px grey;'><div class='row' style='margin-top:15px;'><div class='col-lg-8 col-md-8 col-sm-8 col-xs-6'><span><img src="+data[i].chapterIcon+" width='40px' height='40px' style='border-radius:25px'></span>&nbsp;&nbsp;<span class='test_name_previous_years' style='position:relative;top:-15px;'>"+data[i].chapter+"</span></div></div><div class='row'><div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'><div class='col-md-6 col-md-offset-3'><p style='color:black'>Total Qns&nbsp;&nbsp;(unattempted)</p><p><span style='font-size:15px;font-weight:bold;'><a href='"+base_url+"jsp/student/PreviousyearsPapers/chapterwise/simple_practice_get_questions.jsp?chapterid="+data[i].chapterId+"&examid="+examid+"&subjecttypeid="+subjectid+"&questiontype="+unattemptedques+"' style='color:#C16CB9;position:relative;left:60px;'>"+data[i].unAttemptedCount+"</a></span></p></div></div></div></div><div>";               			  
				}
			}			

			
			$("#subjectcontent").html(appendata);
		},
		error:function(){
			$("#chaptersempty").modal("show");
			$(".loadershow").hide();
		}
	})	
}


var quesarray = [];

function GetallQuestionscreen(){
	var questionid = "";
	var comprehensionid= "";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var chapterid = getParameterByName('chapterid');
	var examtypeid = getParameterByName("examid")
	var subject = getParameterByName("subjecttypeid")
	var questiontype = getParameterByName("questiontype");
	var questionscr = {
			"studentId":sId,
			"subjectId":subject,
			"examtypeId":examtypeid,
			"chapterId":chapterid,
			"questionType":questiontype
	}

	var quesstr = JSON.stringify(questionscr);

	var appendtabpanel = "";
	var sidequesmenu = "";
	var appendsidequestion = "";
	var appendsubjects = "";
	var p = 0;
	var imgappend = "";
	var activename;	
	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/getChapterWiseExamPaper',
		dataType : "json",
		contentType : 'application/json',
		data:quesstr,
		success : function(data) {
			$(".loadershow").hide();
			jsondata = data;
			var subjectnames = data.subjectslist;
			imgappend += '<span style="font-size:16px;font-weight:bold;">'+data.examName+'</span>'
			if(questiontype == "unAttempted"){
				appendsubjects += "<span><a aria-expanded='true' style='cursor:pointer;font-weight:bold;font-size:16px;' >40Years - Total Qns(unattempted)</a></span>";	

			}else{
				appendsubjects += "<span><a aria-expanded='true' style='cursor:pointer;font-weight:bold;font-size:16px;' >40Years - Wrong&nbsp;Qns</a></span>";	
			}
				for(var i=0;i<subjectnames.length;i++){
																		
					
					appendtabpanel += '<div role="tabpanel" class="tab-pane active" id="subject'+subjectnames[i].subjectId+'">';
					var questionlisttype = subjectnames[i].questionlist;
					
					currentsubjectindex = i;

					 
					for(var j=0;j<questionlisttype.length;j++){
					
					
						 
						if(j == 0){
							activename = "active";
						}else{
							activename = "";
						}
							 currentquestionlistindex = j;
							  
							if(questionlisttype[j].type == 'Single correct'){
								
							
								var removespace = questionlisttype[j].type.replace(/ /g,'');
								
								 var mainquestion = questionlisttype[j].title;
									var cuttingquestion = mainquestion.slice(0,30);
									var pusharray = quesarray.push(questionlisttype[j].questionId);
										
								    	sidequesmenu += '<li class='+activename+'  id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].questionId+'" onclick="onactiveques(this)" id="singlequestiondiv'+questionlisttype[j].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow singlebckground'+questionlisttype[j].questionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';			
								    	appendsidequestion += '<div id="question'+questionlisttype[j].questionId+'" class="tab-pane '+activename+' " role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].questionId+'"></p><p class="correct'+questionlisttype[j].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+ questionlisttype[j].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';
										
										var optionspace = questionlisttype[j].optionlist;
										 for(var k=0;k<optionspace.length;k++){
											 appendsidequestion +=  '<div class="singleopdiv'+questionlisttype[j].questionId+' flowmiddle"><div class="col-sm-12 mb-20 optionsimg" id="singleoptiondiv'+optionspace[k].optionId+'"><label  class=""><input type="radio" style="margin: 0 !important" name="singleradio'+questionlisttype[j].questionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text singleoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span style="float:right" class="select'+questionlisttype[j].questionId+'"></span><span style="float:right" class="correct'+questionlisttype[j].questionId+'"></span></div></div>'; 
										 }
										
										 appendsidequestion +='<div class="row singlesolution'+questionlisttype[j].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
								
							}
							
							
							if(questionlisttype[j].type == 'Multi correct'){
								
								var removespace = questionlisttype[j].type.replace(/ /g,'');
								
								 var mainquestion = questionlisttype[j].title;
								var cuttingquestion = mainquestion.slice(0,30);
							  var pusharray = quesarray.push(questionlisttype[j].questionId);
							
							  sidequesmenu += '<li class='+activename+' id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].questionId+'" onclick="onactiveques(this)" id="multiquestiondiv'+questionlisttype[j].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multibckground'+questionlisttype[j].questionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';
								
								appendsidequestion += '<div id="question'+questionlisttype[j].questionId+'" class="tab-pane '+activename+' " role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].questionId+'"></p><p class="correct'+questionlisttype[j].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlisttype[j].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';
									
								var optionspace = questionlisttype[j].optionlist;
								 for(var k=0;k<optionspace.length;k++){
									 appendsidequestion +=  '<div class="multiopdiv'+questionlisttype[j].questionId+' flowmiddle"><div class="col-sm-12 mb-20 optionsimg" id="multioptiondiv'+optionspace[k].optionId+'"><label class=""><input type="checkbox" style="margin:0 !important" name="multicheckbox'+questionlisttype[j].questionId+'" class="option-input checkbox ads_Checkbox" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text multioptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span style="float:right" class="select'+questionlisttype[j].questionId+'"></span><span style="float:right" class="correct'+questionlisttype[j].questionId+'"></span></div></div>'; 
								 }
								 appendsidequestion +='<div class="row multisolution'+questionlisttype[j].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
					    	}
							
							
							if(questionlisttype[j].type == 'Comprehension'){
								
						

		                           var mainquestion = questionlisttype[j].title;
									
									var cuttingquestion = mainquestion.slice(0,30);
									
									var pusharray = quesarray.push(questionlisttype[j].questionId);
									
									
									sidequesmenu += '<li class='+activename+' id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].comprehensionId+'" onclick="onactiveques(this)" id="comprequestiondiv'+questionlisttype[j].comprehensionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlisttype[j].type+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow comprebckground'+questionlisttype[j].comprehensionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';
									
									appendsidequestion += '<div  id="question'+questionlisttype[j].comprehensionId+'" class="tab-pane '+activename+' " role="tabpanel"><div><div class="row"><div class="col-sm-3"></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].comprehensionId+'"></p><p class="correct'+questionlisttype[j].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlisttype[j].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span><div class="question_div">'+questionlisttype[j].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';
										
									var optionspace = questionlisttype[j].optionlist;
									 for(var k=0;k<optionspace.length;k++){
										 appendsidequestion +=  '<div class="compreopdiv'+questionlisttype[j].comprehensionId+' flowmiddle"><div class="col-sm-12 mb-20 optionsimg" id="compreoptiondiv'+optionspace[k].optionId+'"><label class=""><input type="radio" style="margin: 0 !important" name="singlecomprehension'+questionlisttype[j].comprehensionId+'" class="option-input radio" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text compreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span style="float:right" class="select'+questionlisttype[j].comprehensionId+'"></span><span style="float:right" class="correct'+questionlisttype[j].comprehensionId+'"></span></div></div>';  
									 }
									 appendsidequestion +='<div class="row compresolution'+questionlisttype[j].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
						
						}
							
							
							if(questionlisttype[j].type == 'Multi Comprehension'){

							
								var removespace = questionlisttype[j].type.replace(/ /g,'');
							    var mainquestion = questionlisttype[j].title;
								
								var cuttingquestion = mainquestion.slice(0,30);
								var pusharray = quesarray.push(questionlisttype[j].questionId);
								
								 sidequesmenu += '<li class='+activename+' id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].comprehensionId+'" onclick="onactiveques(this)" id="multicomprequestiondiv'+questionlisttype[j].comprehensionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+removespace+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+'  data-toggle="tab"><div class="round round-sm hollow multicomprebckground'+questionlisttype[j].comprehensionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';
									
									appendsidequestion += '<div id="question'+questionlisttype[j].comprehensionId+'" class="tab-pane '+activename+' " role="tabpanel"><div><div class="row"><div class="col-sm-3"></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].comprehensionId+'"></p><p class="correct'+questionlisttype[j].comprehensionId+'"></p></div></div><div class="row mt-10"><div class="col-sm-12 passagequestion"><p>'+questionlisttype[j].passage+'</p> </div></div><div class="row mt-10"><div class="question_main_div"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span><div class="question_div">'+questionlisttype[j].title+'</div><div class="flex-container"><div class="newCheckBox" ><span id="">';
										
									var optionspace = questionlisttype[j].optionlist;
									 for(var k=0;k<optionspace.length;k++){
										 appendsidequestion +=  '<div class="multicompreopdiv'+questionlisttype[j].comprehensionId+'  flowmiddle"><div class="col-sm-12 mb-20 optionsimg" id="multicompreoptiondiv'+optionspace[k].optionId+'"><label  class=""><input type="checkbox" style="margin:0 !important" name="multicomprehension'+questionlisttype[j].comprehensionId+'" class="option-input checkbox" value='+optionspace[k].optionId+'>&nbsp;&nbsp;&nbsp;<span style="height:30px" class="option_text multicompreoptions'+optionspace[k].optionId+'">'+optionspace[k].optionId+')</span><span style="position:relative;bottom:-5px;padding-left:8px;height:30px;vertical-align:super;">'+optionspace[k].option+'</span></label><span style="float:right" class="select'+questionlisttype[j].comprehensionId+'"></span><span style="float:right" class="correct'+questionlisttype[j].comprehensionId+'"></span></div></div>'; 
									 }
									 appendsidequestion +='<div class="row multicompresolution'+questionlisttype[j].comprehensionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
							
					   	}
							
							 if(questionlisttype[j].type == 'Integer'){
						            
								
		     						
								    var mainquestion = questionlisttype[j].title;
									
									var cuttingquestion = mainquestion.slice(0,30);
									
									sidequesmenu += '<li class='+activename+' id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].questionId+'" onclick="onactiveques(this)" id="intequestiondiv'+questionlisttype[j].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlisttype[j].type+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow intebckground'+questionlisttype[j].questionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';
									
									appendsidequestion += '<div  id="question'+questionlisttype[j].questionId+'" class="tab-pane '+activename+'  " role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].questionId+'"></p><p class="correct'+questionlisttype[j].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlisttype[j].title+'</div><div class=""><div class="flex-container"><div class="newCheckBox" ><span id="">';
										
									appendsidequestion +=  '<div class="row">'+
								    '<div class="col-md-8 col-md-push-4">'+
								       '<div class="calculator integer'+questionlisttype[j].questionId+'">'+
								       '<div class="calc-row">'+
								         '<div class="intdispscreen   mainscreen'+questionlisttype[j].questionId+'"></div>'+
								       '</div>'+
								       '<div class="calc-row">'+
								         '<div class="button backspace" data-question='+questionlisttype[j].questionId+' >backspace</div>'+
								       '</div>'+
								       '<div class="calc-row">'+
								         '<div class="button"  data-question='+questionlisttype[j].questionId+'>1</div><div class="button" data-question='+questionlisttype[j].questionId+'>2</div><div class="button" data-question='+questionlisttype[j].questionId+'>3</div>'+
								       '</div>'+
								        '<div class="calc-row">'+
								         '<div class="button"  data-question='+questionlisttype[j].questionId+'>4</div><div class="button" data-question='+questionlisttype[j].questionId+'>5</div><div class="button" data-question='+questionlisttype[j].questionId+'>6</div>'+
								       '</div>'+
								       '<div class="calc-row">'+
								         '<div class="button" data-question='+questionlisttype[j].questionId+'>7</div><div class="button" data-question='+questionlisttype[j].questionId+'>8</div><div class="button" data-question='+questionlisttype[j].questionId+'>9</div>'+
								       '</div>'+
								       '<div class="calc-row">'+
								         '<div class="button zero" data-question='+questionlisttype[j].questionId+'>0</div><div class="button decimal" data-question='+questionlisttype[j].questionId+'>.</div>'+
								       '</div>'+
								       '<div class="calc-row">'+
								         '<div class="button clear-All" data-question='+questionlisttype[j].questionId+'>Clear All</div>'+
								       '</div>'+
								     '</div>'+
								     '</div>'+
								      '</div>'
			 		
									      appendsidequestion +='<div class="row intesolution'+questionlisttype[j].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div></div>';
									}
							 
							 
						      if(questionlisttype[j].type == 'Matrix'){
						    	  
						    	
		     						
		 						    var mainquestion = questionlisttype[j].title;
		 							
		 							var cuttingquestion = mainquestion.slice(0,30);
		 							
		 							sidequesmenu += '<li class='+activename+' id="sidesett" style="white-space:nowrap;overflow:hidden;"><a href="#question'+questionlisttype[j].questionId+'" onclick="onactiveques(this)" id="matrixquestiondiv'+questionlisttype[j].questionId+'" style="cursor:pointer;height:52px;min-width:220px;display:flex;" data-type='+questionlisttype[j].type+' data_id='+j+' data-questionid='+questionlisttype[j].questionId+' data-comprehensionid='+questionlisttype[j].comprehensionId+' data-toggle="tab"><div class="round round-sm hollow matrixbckground'+questionlisttype[j].questionId+'">'+(j+1)+'</div>&nbsp;&nbsp;&nbsp;&nbsp;<span>'+mainquestion+'<span></a></li>';
		 							
		 							appendsidequestion += '<div  id="question'+questionlisttype[j].questionId+'" class="tab-pane '+activename+' " role="tabpanel"><div><div class="row"><div class="col-sm-3"><span class="bold font-16 text-dark">Question No:'+(j+1)+'</span></div><div class="col-sm-9"><span class="bold font-16 get_questions_q_type" style="float:right">'+questionlisttype[j].type+'</span><p class="select'+questionlisttype[j].questionId+'"></p><p class="correct'+questionlisttype[j].questionId+'"></p></div></div><div class="row mt-10"><div class="question_main_div"><div class="question_div">'+questionlisttype[j].title+'</div><div class="flex-container"><div class="newMatrixBox" ><span id="">';
		 								
		 							var optionspace = questionlisttype[j].optionlist;
									 for(var k=0;k<optionspace.length;k++){
										 appendsidequestion +=  '<div class="matrixdiv'+questionlisttype[j].questionId+'"><div class="col-sm-12 mb-20 " style="display:flex;width:50%"><span class="option_text">'+optionspace[k].optionId+')</span>&nbsp;&nbsp;<label class="Parray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlisttype[j].questionId+'" class="option-input optioncheck'+(k+1)+questionlisttype[j].questionId+' checkbox" value="P">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">P</span></label><label  class="Qarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlisttype[j].questionId+'" class="option-input optioncheck'+(k+1)+questionlisttype[j].questionId+' checkbox" value="Q">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">Q</span></label><label class="Rarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlisttype[j].questionId+'" class="option-input optioncheck'+(k+1)+questionlisttype[j].questionId+' checkbox" value="R">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">R</span></label><label class="Sarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlisttype[j].questionId+'" class="option-input optioncheck'+(k+1)+questionlisttype[j].questionId+' checkbox" value="S">&nbsp;&nbsp;<span style="position:relative;bottom:-5px;padding-left:8px">S</span></label><label  class="Tarray'+(k+1)+'"><input type="checkbox" name="matxix'+questionlisttype[j].questionId+'" class="option-input optioncheck'+(k+1)+questionlisttype[j].questionId+' checkbox" value="T">&nbsp;&nbsp;<span style="position:relative;bottom:-8px;padding-left:8px">T</span></label></div></div>'; 
									 }
		 							 appendsidequestion +='<div class="row matrixsolution'+questionlisttype[j].questionId+'" style="margin-bottom:60px;"></div></span></div></div></div></div></div></div>';
		 						  }
							
				    }
				}
		
		    $("#chapterwisesubj").append(appendsubjects); 
			$("#Questionsection").append(appendtabpanel);
			$("#allQuestions").html(sidequesmenu);
			$("#imgsetting").append(imgappend);
			$("#Getallquestions").html(appendsidequestion);
			rendereelemntforkatext();
			$('.timer').countimer('start');
		},
		error:function(data){
			alert("Getting questions error");
		}
	})
}


function updateAnstoJson()
{
	var oc = 0;
	var optionChecksValues = [];
	var seclectedmatrix="";
	var questionAnsweredflag= false;

	var questionid = $('#allQuestions').find('li.active a').attr('data-questionid');
	var comprehension = $('#allQuestions').find('li.active a').attr('data-comprehensionid');
	var questiontype = $('#allQuestions').find('li.active a').attr('data-type');
	var queslistarray = jsondata.subjectslist[currentsubjectindex].questionlist;

	var currentindex = $("#allQuestions li.active").index();
	
	var fetchtime = $(".get_questions_timer").text();

	eachquestiontime = "00:00:00";

	var splitfetchtime = fetchtime.split(":");

	var spliteachquestime = eachquestiontime.split(":");

	var integrating = parseInt(splitfetchtime[0]) - parseInt(spliteachquestime[0]);

	var integrating1 = parseInt(splitfetchtime[1]) - parseInt(spliteachquestime[1]);

	var integrating2 = parseInt(splitfetchtime[2]) - parseInt(spliteachquestime[2]);

	var hourssec = parseInt(integrating) * 60;

	var minsec = parseInt(integrating1) * 60 * 60;

	var finaltime = hourssec+minsec+parseInt(integrating2);

	eachquestiontime = parseInt(finaltime);

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
			optionChecksValues=$('.mainscreen'+questionid).text();
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

			$('.optioncheck3'+questionid+':checked').each(function () {
				optionChecksValues[oc++] = $(this).val();
				questionAnsweredflag=true;
			});
			optionChecksValues = optionChecksValues.join(',');
			seclectedmatrix+= optionChecksValues+"|";
			optionChecksValues = [];
			oc=0;
			$('.optioncheck4'+questionid+':checked').each(function () {
				optionChecksValues[oc++] = $(this).val();
				questionAnsweredflag=true;
			});

			optionChecksValues = optionChecksValues.join(',');
			seclectedmatrix+= optionChecksValues;

			optionChecksValues=seclectedmatrix;
			oc=0;

			questionstatus = 1;
		}



	}

	jsondata.subjectslist[currentsubjectindex].questionlist[currentindex].answer= optionChecksValues;
	jsondata.subjectslist[currentsubjectindex].questionlist[currentindex].questionWiseTimeSpent = eachquestiontime;
	jsondata.subjectslist[currentsubjectindex].questionlist[currentindex].questionStatus = questionstatus;
	

	for(var i = 0;i<queslistarray.length;i++){
		if(questionid == queslistarray[i].questionId){
			jsondata.subjectslist[currentsubjectindex].questionlist[i].questionserialId = (i+1);
		}
	}
	console.log(jsondata);

}


function onactiveques(elem){
	
	var questionid = $(elem).attr("data-questionid");
	var comprehensionid = $(elem).attr("data-comprehensionid");
	var answer = sessionStorage.getItem("answerstatus");

	if(answer == "" || answer == "undefined"){
		$(".getsubmit").show();
		$(".skipstn").show();
		$(".getnext").hide();
	}else if(myarray.indexOf(questionid) != -1 && comprehensionid == 0){
		$(".getsubmit").hide();
		$(".skipstn").hide();
		$(".getnext").show();
	}else if(comprehensionarray.indexOf(comprehensionid) != -1 && comprehensionid != 0){
		$(".getsubmit").hide();
		$(".skipstn").hide();
		$(".getnext").show();
	}else{
		$(".getsubmit").show();
		$(".skipstn").show();
		$(".getnext").hide();
	}
	
}



function submitquestion(){


	

	var question = $('#allQuestions').find('li.active a').attr('data-questionid');
	var comprehension = $('#allQuestions').find('li.active a').attr('data-comprehensionid');
	var rdiovalue = $(".newCheckBox input[name='singleradio"+question+"']:checked").val();
	var comprevalue = $(".newCheckBox input[name='singlecomprehension"+comprehension+"']:checked").val();
	var integervalue = $(".mainscreen"+question).html();
	var multicorrectchekvalue = $(".newCheckBox input[name='multicheckbox"+question+"']:checked").val();
	var multicomprehenchekvalue = $(".newCheckBox input[name='multicomprehension"+comprehension+"']:checked").val();
	var matrixlayout = $(".matrixdiv"+question+" input[type=checkbox]:checked").val();
	var examtypeid = getParameterByName("examid");
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

		$('.optioncheck1'+question+':checked').each(function () {
			favorite.push($(this).val());
		});
		favorite = favorite.join(',');
		var selectedmatrix1= favorite+"|";

		$('.optioncheck2'+question+':checked').each(function () {
			favorite1.push($(this).val());
		});
		favorite1 = favorite1.join(',');
		var selectedmatrix2= favorite1+"|";

		$('.optioncheck3'+question+':checked').each(function () {
			favorite2.push($(this).val());
		});
		favorite2 = favorite2.join(',');
		var selectedmatrix3 = favorite2+"|";

		$('.optioncheck4'+question+':checked').each(function () {
			favorite3.push($(this).val());
		});
		favorite3 = favorite3.join(',');
		var selectedmatrix4 = favorite3;

		var concatinate = selectedmatrix1.concat(selectedmatrix2, selectedmatrix3, selectedmatrix4);

		value = concatinate.toUpperCase();
	}

	sessionStorage.setItem("answerstatus", value);

	var answer =  value;	

	if(answer == "" || answer == null){
		$("#questionempty").modal("show");
		return false;
	}else{
		myarray.push(question);
		comprehensionarray.push(comprehension);
	}

	var questionAnsweredflag = updateAnstoJson();
	
	
	var questionanswer = {
			"questionId":question,
			"comprehensionQuestionId":comprehension,
			"studentAnswer":answer,
			"examtypeId":examtypeid
	}	

	var questionstr = JSON.stringify(questionanswer);
	var appenddata = "";
	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/checkQuestion',
		dataType : "json",
		contentType : 'application/json',
		data:questionstr,
		success : function(data) {


			
		for(var k=0;k<data.length;k++){	
			appenddata += '<div class="col-sm-12" style="margin-top:35px;margin-left:10px;"><p class="bold font-16" style="color:deepskyblue">Solution:</p><div class="col-sm-12 solcontent"><div style="display:block;padding:20px 20px;color:#2f2b2b;">'+data[k].solution+'</div></div><div class="col-sm-10" style="margin-top:20px;"><i class="fa fa-child below-popup-icon-attempt"></i> &nbsp;&nbsp;<span style="vertical-align:super;font-style:italic;">Attempted:<span style="color:blueviolet;font-size:17px;font-weight:bold;margin-left:4px;">'+data[k].totalStudentsAttended+'</span></span><span style="float:right" ><i class="fa fa-check-circle below-popup-icon"></i> &nbsp;&nbsp;<span style="vertical-align:super;font-style:italic">Correctly Answered:<span style="color:green;font-size:17px;font-weight:bold;margin-left:4px;">'+data[k].totalStudentsAnsweredCorrectly+'</span></span></span></div></div>';

				var spacestudentoption = data[k].studentSelectedOption;
				var spaceansweroption = data[k].answer;

				if(spaceansweroption.indexOf("|") != -1){


					var rarray = spaceansweroption.split("|");
					var sarray = spacestudentoption.split("|");

					for(var sx = 0;sx<sarray.length;sx++){
						var px = sarray[sx].split(",");
						var qx = rarray[sx];

						for(var jk = 0;jk<px.length;jk++){
							if(qx.indexOf(px[jk]) != -1){
								var selet = px[jk];

								/*$(".matrixdiv"+question+" input[value='" + selet + "']").prop('checked', true);*/
								$(".matrixdiv"+question+" ."+selet+"array"+(sx+1)+"").css({"background":"#cbf5d8","color":"darkgreen","padding-bottom":"8px"});

							}else{
								$(".matrixdiv"+question+" ."+px[jk]+"array"+(sx+1)+"").css({"background":"#ffe8f0","color":"red","padding-bottom":"8px"});
								

							}
						}

						var ansx = rarray[sx].split(",");
						for(var sk = 0;sk<ansx.length;sk++){

							if(qx.indexOf(ansx[sk]) != -1){
								var answ = ansx[sk];

								/*$(".matrixdiv"+question+" input[value='" + answ + "']").prop('checked', true);*/
								$(".matrixdiv"+question+" ."+answ+"array"+(sx+1)+"").css({"background":"#cbf5d8","color":"darkgreen","padding-bottom":"8px"});

							}
						}
					}
					
					if(data[k].correctQuestion == true){
						$("#matrixquestiondiv"+question).find(".matrixbckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					}else{
						 $("#matrixquestiondiv"+question).find(".matrixbckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
					}
					
					 $(".matrixdiv"+question).find(".option-input").prop("disabled",true);
						$(".matrixsolution"+question).html(appenddata);
						rendereelemntforkatext();
		
			}else if( spaceansweroption.indexOf(",") != -1 || spacestudentoption.indexOf(",") != -1){
				
				var spacestudentoption = data[k].studentSelectedOption;
				var spaceansweroption = data[k].answer;
				
				 
				var splitstudentoption = spacestudentoption.split(",");
				var splitansweroption = spaceansweroption.split(",");
				

							
				
						for(var m=0;m<splitstudentoption.length;m++){
							var studentbreak = spacestudentoption.split(",");
							if(spaceansweroption.indexOf(studentbreak[m]) != -1){
								//multi correct
								$(".multiopdiv"+question).find(".multioptions"+studentbreak[m]).css({"color":"black"});
								$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid #22b14c"});
								$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"background":"#cbf5d8","padding-bottom":"8px"});
							    $(".multiopdiv"+question+" #multioptiondiv"+studentbreak[m]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
								
								 
								 //multi comprehension
								$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+studentbreak[m]).css({"color":"black"});
								$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid #22b14c"});
							    $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"background":"#cbf5d8","padding-bottom":"8px"});
							    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+studentbreak[m]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    
							    
									 
							 
									 
							}else{
								//multi correct
								$(".multiopdiv"+question).find(".multioptions"+studentbreak[m]).css({"color":"black"});
								$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid red"});
								$(".multiopdiv"+question).find("#multioptiondiv"+studentbreak[m]).css({"background":"#ffe8f0","padding-bottom":"8px"});
							    $(".multiopdiv"+question+" #multioptiondiv"+studentbreak[m]).find(".select"+question).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
								
								
								//multi comprehension

								$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+studentbreak[m]).css({"color":"black"});
								$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"border-bottom":"1.2px solid red"});
								 $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+studentbreak[m]).css({"background":"#ffe8f0","padding-bottom":"8px"});
								$(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+studentbreak[m]).find(".select"+comprehension).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    								 
								 
								 
									
							}
						}
						
						
						if(data[k].correctQuestion == true){
							$("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
							$("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
						}else{
							$("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
							$("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
						}
						
						 $(".multiopdiv"+question).find(".option-input").prop("disabled",true);
							$(".multisolution"+question).html(appenddata);
							 $(".multicompreopdiv"+comprehension).find(".option-input").prop("disabled",true);
								$(".multicompresolution"+comprehension).html(appenddata);
								rendereelemntforkatext();
					
						for(var js=0;js<splitansweroption.length;js++){
							//multi correct
							
							$(".multiopdiv"+question).find(".multioptions"+splitansweroption[js]).css({"color":"black"});
							$(".multiopdiv"+question).find("#multioptiondiv"+splitansweroption[js]).css({"background":"#cbf5d8","padding-bottom":"8px"});
							$(".multiopdiv"+question).find("#multioptiondiv"+splitansweroption[js]).css({"border-bottom":"1.2px solid #22b14c"});
							$(".multiopdiv"+question+" #multioptiondiv"+splitansweroption[js]).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
							
							//multi comprehension
							$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+splitansweroption[js]).css({"color":"black"});
							$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+splitansweroption[js]).css({"border-bottom":"1.2px solid #22b14c"});
						    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+splitansweroption[js]).find(".correct"+comprehension).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 							    
							$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+splitansweroption[js]).css({"background":"#cbf5d8","padding-bottom":"8px"});
							
						 }
						
						
			
			}else{
				
				var spacestudentoption = data[k].studentSelectedOption;
				var spaceansweroption = data[k].answer;
				
										
						if(spaceansweroption == spacestudentoption){
						//single
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
						
						$(".multiopdiv"+question).find(".multioptions"+spaceansweroption).css({"color":"black"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					    $(".multiopdiv"+question+" #multioptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
					    $("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					    $(".multiopdiv"+question).find(".option-input").prop("disabled",true);
						$(".multisolution"+question).html(appenddata);
						
						
						 //multi comprehension
						$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+spaceansweroption).css({"color":"black"});
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					    $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});		
					    $("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
					    $(".multicompreopdiv"+comprehension).find(".option-input").prop("disabled",true);
						$(".multicompresolution"+comprehension).html(appenddata);
						
						rendereelemntforkatext();
						
					
						}else {						
						//single 
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
						
						$(".multiopdiv"+question).find(".multioptions"+spaceansweroption).css({"color":"black"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					    $(".multiopdiv"+question+" #multioptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});
						
						$(".multiopdiv"+question).find(".multioptions"+spacestudentoption).css({"color":"black"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spacestudentoption).css({"border-bottom":"1.2px solid red"});
						$(".multiopdiv"+question).find("#multioptiondiv"+spacestudentoption).css({"background":"#ffe8f0","padding-bottom":"8px"});
					    $(".multiopdiv"+question+" #multioptiondiv"+spacestudentoption).find(".select"+question).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});								 
					    $(".multiopdiv"+question).find(".option-input").prop("disabled",true);
					    $("#multiquestiondiv"+question).find(".multibckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
						$(".multisolution"+question).html(appenddata);
						
						
						$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+spaceansweroption).css({"color":"black"});
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spaceansweroption).css({"border-bottom":"1.2px solid #22b14c"});
					    $(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spaceansweroption).css({"background":"#cbf5d8","padding-bottom":"8px"});
					    $(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+spaceansweroption).find(".correct"+question).text("Correct Answer").css({"color":"#37d096","padding-bottom":"8px","font-size":"16px","font-weight":"600"});	
			

						$(".multicompreopdiv"+comprehension).find(".multicompreoptions"+spacestudentoption).css({"color":"black"});
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spacestudentoption).css({"border-bottom":"1.2px solid red"});
						$(".multicompreopdiv"+comprehension).find("#multicompreoptiondiv"+spacestudentoption).css({"background":"#ffe8f0","padding-bottom":"8px"});
						$(".multicompreopdiv"+comprehension+" #multicompreoptiondiv"+spacestudentoption).find(".select"+comprehension).text("Your Answer").css({"color":"red","padding-bottom":"8px","font-size":"16px","font-weight":"600"});		
						$("#multicomprequestiondiv"+comprehension).find(".multicomprebckground"+comprehension).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
						$(".multicompreopdiv"+comprehension).find(".option-input").prop("disabled",true);
					    $(".multicompresolution"+comprehension).html(appenddata);
						
						rendereelemntforkatext();
		            }
						
						
					if(data[k].correctQuestion == true){
						//integer
						$(".integer"+question).find(".mainscreen"+question).css({"background":"#cbf5d8","color":"darkgreen"});
						$(".integer"+question).find(".button").prop("disabled",true);
						$("#intequestiondiv"+question).find(".intebckground"+question).css({"background":"#cbf5d8","color":"black","box-shadow":"0px 0px 0px 3px rgb(203, 245, 216)"});
						$(".intesolution"+question).html(appenddata);
						rendereelemntforkatext();
					}else{
						//integer
						$(".integer"+question).find(".mainscreen"+question).css({"background":"#ffe8f0","color":"red"});
						$(".integer"+question).find(".button").prop("disabled",true);
						$("#intequestiondiv"+question).find(".intebckground"+question).css({"background":"#ffe8f0","color":"black","box-shadow":"0px 0px 0px 3px rgb(255, 232, 240)"});
						$(".intesolution"+question).html(appenddata);
						rendereelemntforkatext();
					}	
	    	}
			
		}
		
		
		},
		error:function(){
			alert("Submitting the question is failed");	
		}
	})

}


function skipQuestion(){
	var currentindex = $("#allQuestions li.active").index();
	jsondata.subjectslist[currentsubjectindex].questionlist[currentindex].questionStatus = 2;
	  counterli();
	scrolled=scrolled+80;
	    
		$(".get_questions_list_div").animate({
		        scrollTop:  scrolled
		   });
}


function finishtest(){
	

	var totaltime = $(".get_questions_timer").text();
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;

	var examid = getParameterByName("examid");
	
	var splittime = totaltime.split(":");

	var hoursec = parseInt(splittime[0]) * 360;

	var minsec = parseInt(splittime[1]) * 60;
	
	var millsec = parseInt(splittime[2]);

	var finaltime = hoursec+minsec+millsec;

	jsondata.timeSpent  = parseInt(finaltime);
	
	jsondata.studentId = studid;
	      
	jsondata.source = 'web';
	
	var inputdata = jsondata; 

	var stringfy = JSON.stringify(inputdata);

	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/submitChapterWiseQuestions',
		dataType : "json",
		contentType : 'application/json',
		data:stringfy,
         beforeSend: function(){
           $(".loadershow").show();		
		},
		success : function(data) {
			$('.timer').countimer('stop');
			yearsquestionsanalytics();
		},
		error:function(){
			alert("Failed to submit data");
		}

	})
}




function optionsAddingModal(iData,resolvedAnswer,answer,resolvedSelected){
	var appendData = "";


	
	if(iData["option1"] === "" && iData["option2"] === ""){
	  //integer layout
		
	  if(iData.roundedAnswer === iData["roundedStudentSelectedOption"] && iData["roundedStudentSelectedOption"] !== "" && iData["roundedStudentSelectedOption"] !== 0){
		  //Correct Answer
		  appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-td-20">'+
		  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 wi-100"><label class="control-label" for="example-email"><span class="green bold">Your Answer </span></label><span class="rightPosa">&nbsp; : &nbsp;</span>'+
		  '</div>'+
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="green bold keyStyle">'+iData["studentSelectedOption"]+' <i class="fa fa-check fa-lg green"></i> (Correct Answer)</span>'+
		  '</div></div></div>';
		  
	  } else if(iData["roundedStudentSelectedOption"] === "" || iData["roundedStudentSelectedOption"] === 0){
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
		  '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12"><span class="red bold keyStyle"> '+iData["studentSelectedOption"]+' <i class="fa fa-close fa-lg red"></i> (Wrong Answer)</span>'+
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
      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b">  Students Attempted -</span>  <span style="color:blueviolet;font-size:17px;font-weight:bold;font-style:italic;">'+iData.totalStudentsAttended+'</span></div>'+
      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span style="color:green;font-size:17px;font-weight:bold;font-style:italic;">'+iData.totalStudentsAnsweredCorrectly+'</span></div>';
      
	  
      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
	  
	} 	else {
		
		for(var jk=1;jk<=4;jk++){
			//looping through four options
			
			if(answer.indexOf("|") != -1){
				// matrix layout
				
				var studentSelected = iData.studentSelectedOption;
				var studentSplit = studentSelected.split('|');
				
				var correctAnswer_d = answer;
				var correctAnswerSplit = correctAnswer_d.split('|');
							
			
				var optVal = ["P","Q","R","S","T"];

				appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
				'<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow neutral-pop"><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span>';
					
			    var sas = correctAnswerSplit[jk-1].split(',');
			    var sss;

			    if(iData.unattempted == true){
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
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow ocorrect-pop">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div><span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					}  else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow neutral-pop">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div></span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question

					if(join_resolvedAnswer.indexOf(jk) > -1 && join_resolvedSelected.indexOf(jk) > -1){
						//Correct Answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow correct-pop">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedAnswer.indexOf(jk) > -1){
						//Correct Answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow ocorrect-pop">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(join_resolvedSelected.indexOf(jk) > -1){
						//Wrong answer and Selected
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow tabshadow wrong-pop">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else {
						//Neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow neutral-pop">'+
						  '<span class=" ml-30"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div></span>'+
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
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow ocorrect-pop">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow neutral-pop">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div></span>'+
						  '</div></div></div>';
					}
					
				} else{
					//Attempted Question
					
					
					if(resolvedAnswer===jk && stdselected === jk){
						//your answer is correct
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow correct-pop">'+
						  '<i class="fa fa-check fa-lg green"></i><span class=" ml-10"> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div><span class="green">(Your Selection, Correct Answer)</span></span>'+
						  '</div></div></div>';
						
					} else if(resolvedAnswer===jk){
						//correct answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow ocorrect-pop">'+
						  '<i class="fa fa-check fa-lg ocorrect"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="ocorrect">(Correct Answer)</span></span>'+
						  '</div></div></div>';
					} else if(stdselected===jk){
						//wrong answer
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow wrong-pop">'+
						  '<i class="fa fa-close fa-lg red"></i><span class=" ml-10 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div> <span class="red">(Your Selection, Wrong Answer)</span></span>'+
						  '</div></div></div>';
					} else{
						//neutral, neither correct nor wrong
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 optionswrap pdrt-60"><div class="row pd-5">'+
						  '<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 mg-30 tabshadow neutral-pop">'+
						  '<span class=" ml-30 "> <span class="optionKey">'+idResolverToABCD(jk)+') </span><div style="display:inline-block;color:#2f2b2b">'+iData["option"+jk]+'</div></span>'+
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
	      '<div class="center"><div class="col-md-4"><i class="fa fa-child below-popup-icon-attempt"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Attempted -</span>  <span style="color:blueviolet;font-size:17px;font-weight:bold;font-style:italic;">'+iData.totalStudentsAttended+'</span></div>'+
	      '<div class="col-md-4"><i class="fa fa-check-circle below-popup-icon"></i><span class="below-icon-text" style="color:#2f2b2b"> Students Correctly Answered -</span> <span style="color:green;font-size:17px;font-weight:bold;font-style:italic;">'+iData.totalStudentsAnsweredCorrectly+'</span></div>';
	      
		 
		  
	      appendData +='</div></div><div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3"><hr id="divider"></div>';
			
	}
	
	//returns option html append data
        return appendData;
        rendereelemntforkatext();
   
}



function showCorrectanswer(elem){

	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var examid = getParameterByName('examtypeid');
	
	var chapterid = $(elem).attr("data-id");

	var correctcheck = {
			"chapterId":chapterid,
			"studentId":studid,
			"examtypeId":examid
	}

	var strcorrect = JSON.stringify(correctcheck);

	var appendData = '<div id="tab_1" class="tab-pane fade active in col-lg-12 col-sm-12 col-md-12" role="tabpanel"><div><div class="row mt-10" style="background:#fff">';
	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/getchapterWiseCorrectQuestions',
		dataType : "json",
		contentType : 'application/json',
		data:strcorrect,
		 beforeSend: function(){
				$("#modalcorrect").empty();
				$("#modalcorrect").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
			},
		success : function(data) {

for(var i=0;i<data.length;i++){
 				
 				var resolvedAnswer, resolvedSelected;
 				var answer,studentSelectedOption;
 				var x = i+1;
 				
 				var passageType = data[i].passageQuestion;
 				if(passageType == true){
 				
 						var answer= data[i].answer;
 						
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
 						
 						studentSelectedOption = data[i].studentSelectedOption;
 						
 					
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
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].passage +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+x+'</span></label>'+
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
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad" style="color:#2f2b2b">'+data[i].question +
						  '</div></div></div>';
 						
 						
 						appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
 						
 						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
 						
 				
 					
 	
 					
 				} else{
 					
 					var answer= data[i].answer;
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
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number" >'+x+'</span></label>'+
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
				$("#modalcorrect").empty();
				$("#modalcorrect").html(appendData);
				rendereelemntforkatext();
			}, 500);
			
		},
		error:function(){
			setTimeout(function() {
				$("#modalcorrect").empty();
				$("#modalcorrect").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
			}, 500);	
		}

	});

}


function yearsquestionsanalytics(){

	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var chapid = getParameterByName('chapterid');
	
	var subid = jsondata.subjectslist[currentsubjectindex].subjectId;
	
	var analy = {
			 "chapterId": chapid,
			 "studentId":studid
			}
	
	var stranlay = JSON.stringify(analy);
	var appendata = "";
	$.ajax({
		type : "POST",
		url : base_url + 'rest/student/getChapterWiseResults',
		dataType : "json",
		contentType : 'application/json',
		data:stranlay,
	    beforeSend: function(){
	           $(".loadershow").hide();	
	           $("#analytics").empty();
			},
		success:function(data){
			
			appendata += '<div class="modal fade" id="myModal" role="dialog">'+
			    '<div class="modal-dialog">'+
		      '<div class="modal-content">'+
		        '<div class="modal-header">'+
		          '<button type="button" class="close" id="modalclose" data-dismiss="modal">&times;</button>'+
		          '<h4 class="modal-title text-center">Hello <span class="stname"></span></h4>'+
		        '</div>'+
		        '<div class="modal-body">'+
		         '<div class="row">'+
/*		         '<div class="col-md-12 text-center">'+
		         '<p class="col-md-6 col-sm-6" style="color:gray;font-weight:bold;">Total Viewed Qns.</p>'+
		         '<p class="col-md-6 col-sm-6"style="color:gray;font-weight:bold;" ><a>'+data.viewedQuestionsCount+'</a></p>'+
		         '</div>'+*/
		         '<div class="col-md-12 text-center">'+
		         '<p class="col-md-6 col-sm-6" style="color:gray;font-weight:bold;">Unattempted Qns.</p>'+
		         '<p class="col-md-6 col-sm-6" style="color:gray;font-weight:bold;"><a>'+data.unattemptedQuestionsCount+'</a></p>'+
		         '</div>'+
		         '<div class="col-md-12 text-center">'+
		         '<p class="col-md-6 col-sm-6" style="color:green;font-weight:bold;">Correct Qns.</p>'+
		         '<p class="col-md-6 col-sm-6" style="color:green;font-weight:bold;" ><a >'+data.correctQuestionsCount+'</a></p>'+
		         '</div>'+
		         '<div class="col-md-12 text-center">'+
		         '<p class="col-md-6 col-sm-6" style="color:red;font-weight:bold;">Wrong</p>'+
		         '<p class="col-md-6 col-sm-6" style="color:red;font-weight:bold;"><a>'+data.wrongQuestionsCount+'</a></p>'+
		         '</div>'+
		         '</div>'+
		         '<hr>'+
		         '<div class="row">'+
		     '<div class="col-md-12" style="position:relative;top:-10px;">'+
		              '<div class="col-md-6 col-md-push-1">'+
		               '<img src="/assets/images/students/summary/individual/performance/Speed.png" class="avg-stdsimgs-style img-responsive" width="50px" height="50px">'+
		               '<div style="position:relative;top:-47px;left:55px;">'+
		               '<p>'+data.speed+'</p>'+
		               '<p>Speed(Qns/Hr)</p>'+
		               '</div>'+
		           '</div>'+
		          '<div class="col-md-6 col-md-push-1">'+
		               '<img src="/assets/images/students/summary/comparitive/Accuracy.png" class="avg-stdsimgs-style img-responsive" width="50px" height="50px">'+
		               '<div style="position:relative;top:-47px;left:55px;">'+
		               '<p>'+data.accuracy+'%</p>'+
		               '<p>Accuracy%</p>'+
		               '</div>'+
		           '</div>'+
		         '</div>'+
		         '<div class="row">'+
		          '<div class="col-md-12 text-center" style="position:relative;top:-30px;">'+
		          '<p style="font-weight:bold;">Do you want end the practise session?<p>'+
		          '<a href="#" id="open" data-id='+subid+' ><button class="btn btn-success"  style="background:transparent !important;color:green;border-radius:25px;">Yes</button></a>'+
		            '<a href="#" id="close" ><button class="btn btn-danger"   style="background:transparent !important;color:red;border-radius:25px;margin-left:15px;">No</button></a>'+
		           '</div>'+
		         '</div>'+
		         '</div>'+
		      '</div>'+
		    '</div>'+
		  '</div>'
		  
		  
		  $("#analytics").html(appendata);
			$(".stname").html(sessionStorage.getItem("stdname"));
		  $("#myModal").modal("show");
			
		},
		error:function(){
		 alert("Failed to get analytics");	
		}
	})
}



var counter = 0;
var scrolled = 0;
$(".subbtn").on("click" , function(){
	submitquestion();
	
	var answer = sessionStorage.getItem("answerstatus");

	if(answer == "" || answer == "undefined"){
		$(".getsubmit").show();
		$(".skipstn").show();
		$(".getnext").hide();
	}else{
		$(".getsubmit").hide();
		$(".skipstn").hide();
		$(".getnext").show();
	}
});


$(".nextbtn").on("click", function(){

	counterli();

	
	scrolled=scrolled+80;
    
	$(".get_questions_list_div").animate({
	        scrollTop:  scrolled
	   });
})


function counterli(){
	
		  var index = $("#allQuestions li.active a").attr("data_id");
        var munfd = parseInt(index) + 1;
		
		 if(munfd == jsondata.subjectslist[currentsubjectindex].questionlist.length){
			$(".stname").html(sessionStorage.getItem("stdname"));
			$("#questionending").modal("show");
		}else{
		$( "#allQuestions li.active" ).next().show();
        $('.nav-tabs a[data_id="' + munfd + '"]').tab('show');
		}		 
		 
			
			var questionid = $("#allQuestions li.active a").attr("data-questionid");
			var comprehensionid = $("#allQuestions li.active a").attr("data-comprehensionid"); 
			var answer = sessionStorage.getItem("answerstatus");

			if(answer == "" || answer == "undefined"){
				$(".getsubmit").show();
				$(".skipstn").show();
				$(".getnext").hide();
			}else if(myarray.indexOf(questionid) != -1 && comprehensionid == 0){
				$(".getsubmit").hide();
				$(".skipstn").hide();
				$(".getnext").show();
			}else if(comprehensionarray.indexOf(comprehensionid) != -1 && comprehensionid != 0){
				$(".getsubmit").hide();
				$(".skipstn").hide();
				$(".getnext").show();
			}else{
				$(".getsubmit").show();
				$(".skipstn").show();
				$(".getnext").hide();
			}
	
}

