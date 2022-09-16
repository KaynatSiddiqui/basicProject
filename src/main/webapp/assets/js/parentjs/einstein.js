
function getdashexamtypes(){
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
				appenddata +='<li><a data-toggle="tab" href="#" onclick="geteinstienanalytics(\'' + data[i].id + '\')">'+data[i].name+'</a></li>';
			}
			$("#examtypesget").empty();
			$("#examtypesget").append(appenddata);

			$('#examtypesget li:first-child a').click();
		},

		error:function(data){
			$("#examtypesget").empty();
			alert(data.responseJSON.errorMessage);

		}
	})

}
var click=true;
function geteinstienanalytics(examtypeid){
	if(examtypeid != ""){
		$("#exmtypeid").val(examtypeid);
	}
	$('#summarytabs li:nth-child(1) a').click();


}
function getsummery(){
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;

	var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid
	};
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getEinsteinAnalyticsSummery',
		data : inputdata,
		success : function(data) {
			if(data.status == true){
				$('#summary').removeClass('thickbox-open');
				$('#monthsperiod').empty();
				var monthperiod = '<option value="1_'+examtypeid+'" selected>1 Month</option><option value="3_'+examtypeid+'">3 Months</option><option value="6_'+examtypeid+'">6 Months</option>'+
				'<option value="9_'+examtypeid+'">9 Months</option><option value="12_'+examtypeid+'">12 Months</option>';
				$('#monthsperiod').append(monthperiod);
				$('.selectpicker').selectpicker('refresh');

				var subjectWisePerformance = data.subjectWisePerformance;
				//var averageSubjectWisePercentages = subjectWisePerformance.averageSubjectWisePercentages;
				var avgper = []; 	var avgacu = []; 	var avgspeed = [];



				var subjectsLists =subjectWisePerformance.subjectsLists;
				var mnWisePerormances = subjectWisePerformance.monthWisePerormances;
				var months_weeks = [];
				var mnweek = mnWisePerormances[0].weekWisePerformances;
				for(var mnw=0; mnw < mnweek.length; mnw++ ){
					months_weeks.push(mnWisePerormances[0].monthName+'-'+mnweek[mnw].weekName);

				}
				var percentagepoints = []; var acuracypoints = [];  var speedpoints = [];
				for(var pq=0; pq < subjectsLists.length; pq++){
					avgper.push(subjectsLists[pq].subject+':'+subjectsLists[pq].percentage+'%');
					avgacu.push(subjectsLists[pq].subject+':'+subjectsLists[pq].accuracy+'%');
					avgspeed.push(subjectsLists[pq].subject+':'+subjectsLists[pq].speed+'%');
					var monthWisePerormances = subjectsLists[pq].monthWisePerormances;
					var subres = {};  var accuracyres = {};  var speedres = {};
					subres['name'] = subjectsLists[pq].subject;
					accuracyres['name'] = subjectsLists[pq].subject;  speedres['name'] = subjectsLists[pq].subject;
					var weekpercent =[];   var weekaccuracy =[];   var weekspeed =[];  
					for(var rs=0; rs < monthWisePerormances.length; rs++){
						var weekWisePerformances =monthWisePerormances[rs].weekWisePerformances;

						for(var mn =0; mn < weekWisePerformances.length; mn++){
							//months_weeks.push(monthWisePerormances[rs].monthName+'-'+weekWisePerformances[mn].weekName);
							weekpercent.push(parseInt(weekWisePerformances[mn].percentage));
							weekaccuracy.push(parseInt(weekWisePerformances[mn].accuracy));
							weekspeed.push(parseInt(weekWisePerformances[mn].speed));

						}

					}
					subres['data'] = weekpercent;  accuracyres['data'] = weekaccuracy;  speedres['data'] = weekspeed;
					percentagepoints.push(subres);  acuracypoints.push(accuracyres);  speedpoints.push(speedres);
				}
				$('#pecenavg').html("Avg "+avgper.join()); $('#acuracyavg').html("Avg "+avgacu.join()); $('#sppedavg').html("Avg "+avgspeed.join());
				var colors = ['#9c27b08f', '#ffeb3bba','#009688'];
				Highcharts.chart('chartmin', {
					title: {  text: 'Subject wise Performance' },
					xAxis: {  categories: months_weeks,    },
					yAxis: { 
						labels: {
							formatter: function() {
								return this.value+"%";
							}
						},allowDecimals: false,
						title: { text: 'percentage'   } },
						credits: { enabled: false  },
						legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
						colors:colors,
						series: percentagepoints,
						responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
						}]
						}
				});

				Highcharts.chart('chartmin1', {
					title: {  text: 'Subject wise Performance' },
					xAxis: {  categories: months_weeks,    },
					yAxis: { 
						labels: {
							formatter: function() {
								return this.value+"%";
							}
						},allowDecimals: false,
						title: { text: 'Accuracy'   } },
						credits: { enabled: false  },
						legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
						colors:colors,
						series: acuracypoints,
						responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
						}]
						}
				});

				Highcharts.chart('chartmin3', {
					title: {  text: 'Subject wise Performance' },
					xAxis: {  categories: months_weeks,    },
					yAxis: { labels: {
						formatter: function() {
							return this.value+"%";
						}
					},
					allowDecimals: false,
					title: { text: 'Speed'   } },
					credits: { enabled: false  },
					legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
					colors:colors,
					series: speedpoints,
					responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
					}]
					}
				});
				var subbtable ="";
				var subjectvsDifficultyWises = data.subjectvsDifficultyWises;

				for(var ij=0; ij < subjectvsDifficultyWises.length; ij++){
					var alevel1 = [];
					subbtable+='<tr class="center">';
					subbtable+='<td>'+subjectvsDifficultyWises[ij].subject+'</td>';
					var checkleve11 =false; var checkleve11 =false; var checkleve11 =false;
					var level1data =""; var level2data=""; var level3data="";
					var dificultylevel =  subjectvsDifficultyWises[ij].levels;
					if(dificultylevel.length > 0){


						for(var jk=0; jk < dificultylevel.length; jk++){
							var dificult = dificultylevel[jk].level;
							if( dificult.toLowerCase()== "level 1"){
								checkleve11=true;
								level1data+='<td>'+dificultylevel[jk].percentage+'</td>';
								level1data+='<td>'+dificultylevel[jk].accuracy+'</td>';
								/*level1data+='<td>'+dificultylevel[jk].speed+'</td>';*/
							}
							if(dificult.toLowerCase() == "level 2"){
								checkleve12=true;
								level2data+='<td>'+dificultylevel[jk].percentage+'</td>';
								level2data+='<td>'+dificultylevel[jk].accuracy+'</td>';
								/*level2data+='<td>'+dificultylevel[jk].speed+'</td>';*/

							}
							if(dificult.toLowerCase() == "level 3"){
								checkleve13=true;
								level3data+='<td>'+dificultylevel[jk].percentage+'</td>';
								level3data+='<td>'+dificultylevel[jk].accuracy+'</td>';
								/*level3data+='<td>'+dificultylevel[jk].speed+'</td>';*/
							}
						}
						if(level1data !=""){
							subbtable+=level1data; 
						}else{
							subbtable+='<td>0</td><td>0</td>';
						}
						if(level2data !=""){
							subbtable+=level2data;
						}else{
							subbtable+='<td>0</td><td>0</td>';
						}if(level3data !=""){
							subbtable+=level3data;
						}else{
							subbtable+='<td>0</td><td>0</td>';
						}

					}else{
						subbtable+='<td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>';

					}
					subbtable+='<td>'+subjectvsDifficultyWises[ij].speed+'</td>';
					subbtable+='</tr>';
				}

				$('#allsubavgs').html(subbtable);
				var months_year=[];
				var percentageyears = []; var acuracyyears = [];
				var pacolor = ['#9c27b08f', '#ffeb3bba'];
				var monthyearPerformances = data.monthWisePerformances;

				for(var my=0; my < monthyearPerformances.length; my++){
					months_year.push(monthyearPerformances[my].month);
					percentageyears.push(parseInt(monthyearPerformances[my].percentage));
					acuracyyears.push(parseInt(monthyearPerformances[my].accuracy));
				}

				Highcharts.chart('container', {
					title: {  text: 'Monthwise Performance' },
					xAxis: {  categories: months_year,    },
					yAxis: { labels: {
						formatter: function() {
							return this.value+"%";
						}
					},
					gridLineColor: 'transparent',
					allowDecimals: false,
					title: { text: 'Percentage'   } },
					credits: { enabled: false  },
					legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
					colors:pacolor,
					series: [{
						name: 'Percentage',
						data: percentageyears

					},{
						name: 'Accuracy',
						data: acuracyyears

					},],
					responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
					}]
					}
				});


			}else{
				alertify. alert("No Dashboard details");
				$('#dashboard').addClass('thickbox-open');
			}
		},
		error : function(data) {
			alert(data.responseJSON.errorMessage);
		},

	});


}
function geteinsteinsubject(chp){
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata ="";
	var chpappend ="";
	var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid
	};
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getSubjectsBasedOnExamType',
		data : inputdata,
		success : function(data) {
			for(var i=0; i < data.length; i++){
				var image = data[i].image;
				if(chp === "subwise"){
					if(data[i].id === -1){
						continue;
					}
					appenddata +='<li><a data-toggle="tab" href="#" onclick="getsinstiensubjectwise(\'' + data[i].id + '\')">'+data[i].name+'</a></li>';
				}else if(chp === "chpwise"){
					if(data[i].id === -1){
						continue;
					}
					chpappend +='<li><a data-toggle="tab" href="#Tabchpwise_'+data[i].id+'" href="#" onclick="geteinstienchapterwise(\'' + data[i].id + '\')">'+data[i].name+'</a></li>';
				}
			}
			$("#subjecttabs").empty();
			$("#subjecttabs").append(appenddata);
			$('#subjecttabs li:first-child a').click();
			$("#chapterwisetab").empty();
			$("#chapterwisetab").append(chpappend);
			$('#chapterwisetab li:first-child a').click();

		},
		error:function(data){
			$("#subjecttabs").empty();
			alert(data.responseJSON.errorMessage);

		}
	})

}
function getsinstiensubjectwise(id){
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata ="";
	var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid,"subjectId":id
	};
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/getEinsteinSubjectWisePerformance',
		data : inputdata,
		success : function(data) {
			var subjectLists = data.subjectLists;
			for(var ij=0; ij < subjectLists.length; ij++){
				appenddata +='<div class="panel-wrapper collapse in  mb-20">'+
				'<div class="panel-body">'+
				'<div class="row">'+
				'<div class="col-sm-12 subwisegr">'+
				'<p class="col-sm-6 col-sm-offset-2"><span><img src="'+subjectLists[ij].subjectIcon+'" width="60px" height="60px"> </span>&nbsp;&nbsp;<span style="color:deepskyblue;position:relative;top:-25px;font-weight:bold;font-size:18px">'+subjectLists[ij].subject+'</span></p>'+
				'<div class="col-sm-10 col-sm-offset-2">'+
				'<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/landing/img/einsteinsubjectwise/eye.svg" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Total Viewed Qns:<span style="color:blue">'+subjectLists[ij].totalViewedQuestions+'</span></span></p></div>'+
				'<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/images/students/summary/individual/view/attempted.png" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Attempted Qns:<span style="color:deepskyblue">'+subjectLists[ij].attemptedQuestions+'</span></span></p></div>'+
				'<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/images/students/summary/individual/view/Correct.png" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Correct Qns:<span style="color:green">'+subjectLists[ij].correctQuestions+'</span></span></p></div>'+
				'</div>'+
				'<div class="col-sm-10 col-sm-offset-2" style="">'+
				'<div class="row bar-row">'+
				'<div class="bar-height">'+
				'<div class="progress-bar position" data-duration="1000" data-color="#fff,deepskyblue" id="" data-percent="'+subjectLists[ij].percentage+'"><span>Percentage</span></div>'+
				' <div class="progress-bar position accuracy"  data-duration="1000" data-color="#fff,violet" id="" data-percent="'+subjectLists[ij].accuracy+'"><span>Accuracy</span></div>'+
				'<div class="progress-bar position speed"  data-duration="1000" data-color="#fff,blue" id="" data-percent="'+subjectLists[ij].speed+'"><span>Speed</span></div>'+
				'</div>'+
				'</div></div>'+
				'<div class="col-sm-8 col-sm-offset-2" style="margin-top:40px">'+
				'<div id="mnthpercent'+ij+'" style="min-width: 310px; height: 400px; margin: 0 auto"></div>'+								
				'</div>'+
				'<div class="col-sm-8 col-sm-offset-2" style="margin-top:40px">'+
				'<div id="lvlbar'+ij+'" style="min-width: 310px; height: 400px; margin: 0 auto"></div>'+								
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>';



			}
			$("#Subjectcards").empty();
			$("#Subjectcards").append(appenddata);
			$(".progress-bar").loading();
			for(var bg=0; bg < subjectLists.length; bg++){
				var months_year=[];
				var percentageyears = []; 
				var pacolor = ['#9c27b08f'];
				var monthyearPerformances = subjectLists[bg].monthWisePerformances;

				for(var my=0; my < monthyearPerformances.length; my++){
					months_year.push(monthyearPerformances[my].monthName);
					percentageyears.push(parseInt(monthyearPerformances[my].percentage));

				}
				var mnthpercent = 'mnthpercent'+bg;
				Highcharts.chart(mnthpercent, {
					title: {  text: 'Percentage' },
					xAxis: {  categories: months_year,    },
					yAxis: { labels: {
						formatter: function() {
							return this.value+"%";
						}
					},
					gridLineColor: 'transparent',
					max: 100,
					allowDecimals: false,
					title: { text: 'Percentage'   } },
					credits: { enabled: false  },
					legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
					colors:pacolor,
					series: [{
						name: 'Percentage',
						data: percentageyears

					}],
					responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
					}]
					}
				});
				var difficultyWisePerformances = subjectLists[bg].difficultyWisePerformances;
				var  perlevel = []; var acclevel = [];
				for(var pa=0; pa < difficultyWisePerformances.length; pa++){
					var dificult = difficultyWisePerformances[pa].level;
					if(dificult.toLowerCase()== "level 1"){
						perlevel.push(parseInt(difficultyWisePerformances[pa].percentage));
						acclevel.push(parseInt(difficultyWisePerformances[pa].accuracy));
					}else if(dificult.toLowerCase()== "level 2"){
						if(perlevel.length == 0 && acclevel == 0){
							perlevel.push(0); 
							acclevel.push(0);
						}

						perlevel.push(parseInt(difficultyWisePerformances[pa].percentage));
						acclevel.push(parseInt(difficultyWisePerformances[pa].accuracy));

					}else if(dificult.toLowerCase()== "level 3"){
						if(perlevel.length == 0 && acclevel == 0){
							perlevel.push(0,0);acclevel.push(0,0);
						}

						perlevel.push(parseInt(difficultyWisePerformances[pa].percentage));
						acclevel.push(parseInt(difficultyWisePerformances[pa].accuracy));
					}


				}
				if(perlevel.length == 1 && acclevel == 1){
					perlevel.push(0,0);  acclevel.push(0,0);
				}else if(perlevel.length == 2 && acclevel == 2){
					perlevel.push(0); acclevel.push(0);
				}
				var colors = ['#00A2E8', '#22B14C'];
				var lvlbar = 'lvlbar'+bg
				Highcharts.chart(lvlbar, {
					chart: {
						type: 'column'
					},
					title: {
						text: ''
					},
					xAxis: {
						categories: ['Level 1', 'Level 2', 'Level 3']
					},
					yAxis: {
						max: 100,
						allowDecimals: false,
						labels: {
							formatter: function() {
								return this.value+"%";
							}
						},
						title: {
							text: 'Percentage'
						}

					},
					credits: {
						enabled: false
					},
					plotOptions: {
						column: {
							pointWidth: 30,
							borderRadius: 10,

						}
					},
					exporting: { 
						enabled: false 
					},
					colors:colors,
					series: [{
						name: 'percentage',
						data: perlevel
					}, {
						name: 'accuracy',
						data: acclevel
					}]
				}); 
			}

		},
		error:function(data){
			$("#Subjectcards").empty();
			alert(data.responseJSON.errorMessage);

		}
	})

}
$(document).ready(function(){
	getdashexamtypes();

	$(".highcharts-button-normal, .highcharts-button-box, .highcharts-exporting-group").hide();
})

function geteinstienchapterwise(id){
	var appenddata="";
	var appendtotal ="";
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var subId = id;
	var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid,
			"subjectId":subId
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'rest/student/getEinsteinChapterWisePerformance',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			appenddatatrhead += '<div id="Tabchpwise_'+subId+'" class="tab-pane  fade chapterwise" role="tabpanel">'+
			'<div>'+
			'<div class="row">'+
			'<div class="col-sm-8 col-sm-offset-2">'+
			'<div class="table-wrap">'+
			'<div class="table-responsive">'+
			'<table id="chapwise_table" class="table table-bordered display pb-30" >'+
			'<thead class="th_background">'+
			'<tr>'+
			'<th class="iconchp" id="iconimg">Icon</th>'+
			'<th>Chapter Name</th>'+
			'<th>Total Viewed Qns.</th>'+
			'<th>Attempted</th>'+
			'<th>Correct</th>'+
			'<th>Avg. Percentage %</th>'+
			'<th>Avg. Accuracy %</th>'+
			'<th>Avg Speed Qns./Hr.</th>'+
			'</tr>'+
			'</thead>'+
			'<tbody id="chapwise_body">'+
			'</tbody>'+
			'</table>'+
			'</div>'+
			'</div>'+
			'</div>'+
			'</div>'+
			'</div>'+
			'</div>';
			var dataof = data.chaptersLists;
			for(var i=0;i<dataof.length;i++){
				if(dataof[i].chapterId === -1){
					appendtotal += '<tr>';
					if(dataof[i].chapterIcon === null || dataof[i].chapterIcon === ""){
						appendtotal += "<td class='geticon'><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
					}else{
						appendtotal += "<td class='geticon'><img src='"+dataof[i].chapterIcon+"' width='50px' style='border-radius:25px'></td>";
					}
					appendtotal += '<td>'+dataof[i].chapter+'</td>'+
					'<td>'+dataof[i].totalViewedQuestions+'</td>'+
					'<td>'+dataof[i].attempted+'</td>'+
					'<td>'+dataof[i].correct+'</td>'+
					'<td>'+dataof[i].percentage+'</td>'+
					'<td>'+dataof[i].accuracy+'</td>'+
					'<td>'+dataof[i].speed+'</td>'+
					'</tr>';
				}else{
				/*'<tr>';*/
				if(dataof[i].chapterIcon === null || dataof[i].chapterIcon === ""){
					appenddata += "<tr><td class='geticon'><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				}else{
					appenddata += "<tr><td class='geticon'><img src='"+dataof[i].chapterIcon+"' width='50px' style='border-radius:25px'></td>";
				}
				appenddata += '<td>'+dataof[i].chapter+'</td>'+
				'<td>'+dataof[i].totalViewedQuestions+'</td>'+
				'<td>'+dataof[i].attempted+'</td>'+
				'<td>'+dataof[i].correct+'</td>'+
				'<td>'+dataof[i].percentage+'</td>'+
				'<td>'+dataof[i].accuracy+'</td>'+
				'<td>'+dataof[i].speed+'</td>'+
				'</tr>';
			  }
			}
			$("#chapwisecontent").empty();
			$("#chapwisecontent").append(appenddatatrhead);
			$("#chapwisecontent #chapwise_body").append(appenddata);
			$("#chapwise_body:last-child").append(appendtotal);
			$("#chapwisecontent .chapterwise:first-child").addClass("active in");
			$(".page-wrapper").css("padding-top","0px");
			$("#chapter .page-wrapper .container-fluid .row .col-sm-12 .card-view").css({
				"position":"relative",
				"top":"-44px"
			})
			$(".chapterwise div .row").css({
				"position":"relative",
				"left":"-143px",
				"margin-right":"-118px"
			})
			$(".chapterwise div div .col-sm-8.col-sm-offset-2").css("padding","0px");
			$(".chapterwise div div div div .table-responsive").css({"box-shadow":"1px 4px 15px grey","border-radius":"25px"});
			$(".iconchp").css("visibility","hidden");
			$(".geticon").css({
				"border":"3px solid #f0f4f5",
				"border-right":"1px solid rgba(33, 33, 33, 0.1)"
			});

		},
		error:function(data){
			if(data.responseJSON.status == false){
				$("#chapwisecontent").empty();
			}
			alert(data.responseJSON.errorMessage);
		}
	})
}
$(window).resize(function(){
	if($(window).width() <= 1024){
		$(".chapterwise div .row").css({"margin-right":"-15px","left":"0"});
	}else{
		$(".chapterwise div .row").css({"margin-right":"-118px","left":"-143px"});
	}
	
})
function mockfullc(typefrom){
	if(typefrom == undefined){
		return "";
	}
	else if(typefrom.id == "full"){
		return "Full-Syllabus Mock";
	}else{
		return "Mock Test";
	}

}
function livezoneslabs(typep){
	//slabsummry//
	$("#mockfulltabs").css("display","block");
	$("#slabview_table").css("display","none");
	$("#slabssummarytab").text("Live-Zone slabs");
	$("#slabssummarytab").css("cursor","pointer");
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var type = "";
	if(typep === "slabsummry"){
		type = "Mock Test";
		$("#mocktest").removeClass("active");
		$("#mocktest").addClass("active");
	}else if(typep === "full"){
		type ="Full-Syllabus Mock";
	}else{
		type = "Mock Test";
	}
	var inputData = {
			"studentId":sId,
			"testType":type,
			"examtypeId":examtypeid
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url :base_url+'rest/student/getEinsteinAnalyticsLiveZoneSlabsResponse',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			if(type === "Mock Test"){
				$("#missedtestmock").text(data.missedTestsCount);
				$("#nooffulmarksappear").text(data.numOfTestsAppeared);
				$("#qualifiedtest").text(data.numOfQualifiedTests);
				$("#testscoredgre300").text(data.numOfTestsScoredMoreThan300);
				$("#testscore300200").text(data.numOfTestsScoredBetween300And200);
				$("#testscore200150").text(data.numOfTestsScoredBetween200And150);
				$("#testscore150100").text(data.numOfTestsScoredBetween150And100);
				$("#testscore100").text(data.numOfTestsScoredLessThan100);
			}else{
				$("#missedfull").text(data.missedTestsCount);
				$("#nooffulmarksappearfull").text(data.numOfTestsAppeared);
				$("#qualifiedtestfull").text(data.numOfQualifiedTests);
				$("#testscoredgre300full").text(data.numOfTestsScoredMoreThan300);
				$("#testscore300200full").text(data.numOfTestsScoredBetween300And200);
				$("#testscore200150full").text(data.numOfTestsScoredBetween200And150);
				$("#testscore150100full").text(data.numOfTestsScoredBetween150And100);
				$("#testscore100full").text(data.numOfTestsScoredLessThan100);
			}
		},
		error: function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function mockfulltesttype(type,test){
	$("#slabssummarytab").text(test+ " - Live-Zone");
	$("#mockfulltabs").css("display","none");
	$("#slabview_table").css("display","inline-table");
	$("#slabssummarytab").css("cursor","pointer");
	var testt = test;
	var appenddata="";
	var appenddatahead="";
	var appendtrhead =""
		var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData = {
			"studentId":sId,
			"testType":test,
			"examtypeId":examtypeid,
			"type":type
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url :base_url+'rest/student/getLiveZoneSlabsViewResponse',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			appendtrhead += '<th>S.No</th>'+
			'<th>Test Name</th>'+
			'<th>Date</th>'+
			'<th>Rank</th>'+
			'<th>Total Score</th>'+
			'<th>No. of Participants</th>'+
			'<th>Top Score</th>'+
			'<th>Full Analytics Details</th>';
			var test = data.testsLists;
			var subNameArr =[];
			for(var i=0;i<test.length;i++){
				var sublist = test[i].subjectMarksLists;
				for(var ss=0;ss<sublist.length;ss++){

					if(subNameArr.indexOf(sublist[ss].subjectName)<0){
						subNameArr.push(sublist[ss].subjectName);
						appenddatahead += "<th>"+sublist[ss].subjectName+" Score</th>";
					}
				}
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+test[i].testName+"</td>";
				appenddata += "<td>"+test[i].testTakenDate+"</td>";
				appenddata += "<td>"+test[i].rank+"</td>";
				appenddata += "<td>"+test[i].totalMarks+"</td>";
				for(var t=0;t<sublist.length;t++){
					appenddata += "<td>"+sublist[t].subjectScore+"</td>";
				}
				var  testpostid = btoa(test[i].testId);
				appenddata += "<td>"+test[i].numOfParticipents+"</td>";
				appenddata += "<td>"+test[i].topScore+"</td>";
				appenddata += '<td><a href="'+base_url+'jsp/parent/student_analytics3.jsp?id='+testpostid+'&testtype='+testt+'&stid='+data.studentId+'&from=einstein" class="marf btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-placement="left" title="Test Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a></td></tr>';
				//appenddata += '<td><a href="'+base_url+'jsp/parent/student_analytics3.jsp?id='+testpostid+'&testtype='+testt+'&stid='+data.studentId+'&from=einstein" class="btn btn-danger">View</a></td></tr>';
			}
			$("#trhead").empty();
			$("#trhead").append(appendtrhead);
			$("#slabview_head > tr > th:nth-child(5)").after(appenddatahead);
			$("#slabview_body").empty();
			$("#slabview_body").append(appenddata);
			/*$("#summarytabs li").removeClass("active");
			$("#slabview").addClass("active");
			$("#summarytabpane .tab-pane").removeClass("active");*/
			$("#livezoneslabsview .page-wrapper").css("margin-left","0px");
			/*$("#livezoneslabsview").addClass("active");*/
			$("#slabview_table").fadeIn();
		},
		error: function(data){
			alert(data.responseJSON.errorMessage);
		}
	})

}
