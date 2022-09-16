
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
//var monthh = [];
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
			if(data.subscribed){
				$(".lvltbl, .lastpatch").removeClass('mask');
				$("#subjectwise").removeClass('mask');
				$("#chapter").removeClass('mask');
				$("#livezoneslabs").removeClass('mask');
				$("#weekwisetests").removeClass('mask');
			}else{
				$(".lvltbl, .lastpatch").addClass('mask');
				$("#subjectwise").addClass('mask');
				$("#chapter").addClass('mask');
				$("#livezoneslabs").addClass('mask');
				$("#weekwisetests").addClass('mask');
			}
			$('#summary').removeClass('thickbox-open');
			 $('#monthsperiod').empty();
			 $('#monthsperiod2').empty();
			 //$('#monthsperiod3').empty();
			 var monthperiod = '<option value="0_'+examtypeid+'">Select months</option><option value="1_'+examtypeid+'" selected>1 Months</option><option value="3_'+examtypeid+'" >3 Months</option><option value="6_'+examtypeid+'">6 Months</option>'+
								'<option value="9_'+examtypeid+'">9 Months</option><option value="12_'+examtypeid+'">12 Months</option>';
				$('#monthsperiod').append(monthperiod);
				$('#monthsperiod2').append(monthperiod);
			//	$('#monthsperiod3').append(monthperiod);
				 $('.selectpicker').selectpicker('refresh');
			 //monthh.push(monthperiod);
	
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
	var colors = ['#9c27b08f', 'orange','#009688','deepskyblue','#F2B701','#337ab7' ];
	var percentagepoints = []; var acuracypoints = [];  var speedpoints = [];
	  for(var pq=0; pq < subjectsLists.length; pq++){
		  avgper.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].percentage+'%</span>');
			avgacu.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].accuracy+'%</span>');
			avgspeed.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].speed+'</span>');
		  var monthWisePerormances = subjectsLists[pq].monthWisePerormances;
		   var subres = {};  var accuracyres = {};  var speedres = {};
		    subres['name'] = subjectsLists[pq].subject;
			accuracyres['name'] = subjectsLists[pq].subject;  speedres['name'] = subjectsLists[pq].subject;
			  var weekpercent =[];   var weekaccuracy =[];   var weekspeed =[];  
		  for(var rs=0; rs < monthWisePerormances.length; rs++){
			 var weekWisePerformances =monthWisePerormances[rs].weekWisePerformances;
			
			 for(var mn =0; mn < weekWisePerformances.length; mn++){
			 //months_weeks.push(monthWisePerormances[rs].monthName+'-'+weekWisePerformances[mn].weekName);
				weekpercent.push(Math.round(weekWisePerformances[mn].percentage));
				weekaccuracy.push(Math.round(weekWisePerformances[mn].accuracy));
				if(weekWisePerformances[mn].speed > 200){
					weekspeed.push(Math.round(200));	
				}else{
					weekspeed.push(Math.round(weekWisePerformances[mn].speed));	
				}
				
				
			 }
			   
		  }
		 subres['data'] = weekpercent;  accuracyres['data'] = weekaccuracy;  speedres['data'] = weekspeed;
		 percentagepoints.push(subres);  acuracypoints.push(accuracyres);  speedpoints.push(speedres);
	 }
		$('#pecenavg').html("<span>Avg:</span>"+avgper.join(',  ')); $('#acuracyavg').html("<span>Avg:</span>"+avgacu.join(',  ')); $('#sppedavg').html("<span>Avg:</span>"+avgspeed.join(',  '));
		
	Highcharts.chart('chartmin', {
title: {  text: 'Subject wise Performance' },
xAxis: {  categories: months_weeks,     },
yAxis: { 
 labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },allowDecimals: false,
    title: { text: 'Percentage'   },  min: 0,max: 100 },
	 credits: { enabled: false  },
legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
  colors:colors,
series: percentagepoints,
tooltip: {
    
    valueSuffix: '%'
},
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
    title: { text: 'Accuracy'   }, min: 0, max: 100 },
	 credits: { enabled: false  },
legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
  colors:colors,
series: acuracypoints,
tooltip: {
    
    valueSuffix: '%'
},
responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
    }]
}
});
	 
	Highcharts.chart('chartmin3', {
title: {  text: 'Subject wise Performance' },
xAxis: {  categories: months_weeks,    },
yAxis: { labels: {
					    formatter: function() {
					       return this.value;
					    }
					  },
allowDecimals: false,
    title: { text: 'Speed'   } ,  min: 0,max: 200},
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
	percentageyears.push(Math.round(monthyearPerformances[my].percentage));
	acuracyyears.push(Math.round(monthyearPerformances[my].accuracy));
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
    title: { text: 'Percentage'   },
    min: 0,  max:100 ,},
	 credits: { enabled: false  },
legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
  colors:pacolor,
series: [{
    name: 'Percentage',
    data: percentageyears,
    tooltip: {
        
        valueSuffix: '%'
    },
  
},{
    name: 'Accuracy',
    data: acuracyyears,
    tooltip: {
        
        valueSuffix: '%'
    },
  
},],
responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
    }]
}
});
																
		$('#monthsperiod').val('1_'+examtypeid).trigger('change');	
		$('#monthsperiod2').val('3_'+examtypeid).trigger('change');															
		}else{
			alertify. alert("No details");
			$('#dashboard').addClass('thickbox-open');
		}
	},
	error : function(data) {
	 alert(data.responseJSON.errorMessage);
},

});

	
}
//
$("#monthsperiod").change(function(){
	
	pecenavg.innerHTML = "";
	acuracyavg.innerHTML = "";
	sppedavg.innerHTML = "";
	var value = $(this).val();
	var text = $(this).val();
	var textspi = text.split("");
	var tex = textspi[0];
	var valspli = value.split("_");
	var val = valspli[0];
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			    "studentId":sId,
			    "examtypeId":examtypeid,
			    "months":val
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/getStudentMonthWiseDropDownPerformance',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			//var subjectWisePerformance = data.subjectWisePerformance;
			var subjectWisePerformance = data;
			//var averageSubjectWisePercentages = subjectWisePerformance.averageSubjectWisePercentages;
			var avgper = []; 	var avgacu = []; 	var avgspeed = [];
			

			
			var subjectsLists =subjectWisePerformance.subjectsLists;
		    var mnWisePerormances = subjectWisePerformance.monthWisePerormances;
		    mnWisePerormances =  mnWisePerormances.reverse();
			var months_weeks = [];
			for(var mnth = 0; mnth < mnWisePerormances.length;mnth++){
				var mnweek = mnWisePerormances[mnth].weekWisePerformances;
				for(var mnw=0; mnw < mnweek.length; mnw++ ){
					months_weeks.push(mnWisePerormances[mnth].monthName+'-'+mnweek[mnw].weekName);
				}
			}
			var colors = ['#9c27b08f', 'orange','#009688','deepskyblue','#F2B701','#337ab7' ];
			var percentagepoints = []; var acuracypoints = [];  var speedpoints = [];
			  for(var pq=0; pq < subjectsLists.length; pq++){
				  avgper.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].percentage+'%</span>');
					avgacu.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].accuracy+'%</span>');
					avgspeed.push('<span style="color:'+colors[pq]+'">'+subjectsLists[pq].subject+':'+subjectsLists[pq].speed+'</span>');
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
						if(weekWisePerformances[mn].speed > 200){
							weekspeed.push(Math.round(200));
						}else{
							weekspeed.push(Math.round(weekWisePerformances[mn].speed));
						}
						
						
					 }
					   
				  }
				 subres['data'] = weekpercent;  accuracyres['data'] = weekaccuracy;  speedres['data'] = weekspeed;
				 percentagepoints.push(subres);  acuracypoints.push(accuracyres);  speedpoints.push(speedres);
			 }
				$('#pecenavg').html("<span>Avg:</span>"+avgper.join(',  ')); $('#acuracyavg').html("<span>Avg:</span>"+avgacu.join(',  ')); $('#sppedavg').html("<span>Avg:</span>"+avgspeed.join(',  '));
				
			Highcharts.chart('chartmin', {
		title: {  text: 'Subject wise Performance' },
		xAxis: {  categories: months_weeks,     },
		yAxis: { 
		 labels: {
							    formatter: function() {
							       return this.value+"%";
							    }
							  },allowDecimals: false,
		    title: { text: 'Percentage'   },  min: 0,max: 100 },
			 credits: { enabled: false  },
		legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
		  colors:colors,
		series: percentagepoints,
		tooltip: {
		    
		    valueSuffix: '%'
		},
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
		    title: { text: 'Accuracy'   }, min: 0, max: 100 },
			 credits: { enabled: false  },
		legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
		  colors:colors,
		series: acuracypoints,
		tooltip: {
		    
		    valueSuffix: '%'
		},
		responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
		    }]
		}
		});
			 
			Highcharts.chart('chartmin3', {
		title: {  text: 'Subject wise Performance' },
		xAxis: {  categories: months_weeks,    },
		yAxis: { labels: {
							    formatter: function() {
							       return this.value;
							    }
							  },
		allowDecimals: false,
		    title: { text: 'Speed'   } ,  min: 0,max: 200},
			 credits: { enabled: false  },
		legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
		  colors:colors,
		series: speedpoints,
		tooltip: {
		    
		    valueSuffix: '%'
		},
		responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
		    }]
		}
		});
			//
		},
		error : function(data) {
		 alert(data.responseJSON.errorMessage);
	  }
	})
})
//
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
	var subId= id
	var appenddata ="";
		var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid,"subjectId":subId
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
									 '<div class="col-sm-10 col-md-10 col-xs-10 col-lg-10 col-sm-offset-1">'+
									  '<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/landing/img/einsteinsubjectwise/eye.svg" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Total Viewed Qns:<span style="color:blue;font-size: 22px;">'+subjectLists[ij].totalViewedQuestions+'</span></span></p></div>'+
									  '<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/images/students/summary/individual/view/attempted.png" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Attempted Qns:<span style="color:deepskyblue;font-size: 22px;">'+subjectLists[ij].attemptedQuestions+'</span></span></p></div>'+
									  '<div class="col-sm-4"><p><span><img src="'+base_url+'/assets/images/students/summary/individual/view/Correct.png" width="35px" height="35px"> </span>&nbsp;&nbsp;<span class="font21" style="position:relative;top:-13px;font-size:15px;font-weight:600;color:black">Correct Qns:<span style="color:green;font-size: 22px;">'+subjectLists[ij].correctQuestions+'</span></span></p></div>'+
									  '</div>'+
									  '<div class="col-sm-12 col-md-12 col-xs-12 col-lg-12" style="">'+
									 '<div class="row bar-row">'+
        '<div class="bar-height">'+
   '<div class="progress-bar position" data-duration="1000" data-color="#fff,deepskyblue" id="" data-percent="'+subjectLists[ij].percentage+'"><span>Percentage</span></div>'+
   ' <div class="progress-bar position accuracy"  data-duration="1000" data-color="#fff,violet" id="" data-percent="'+subjectLists[ij].accuracy+'"><span>Accuracy</span></div>'+
    '<div class="progress-bar position speed'+ij+'"  data-duration="1000" data-color="#fff,blue" id="speed'+ij+'" data-percent="'+subjectLists[ij].speed+'"><span>Speed</span></div>'+
	 '</div>'+
    '</div></div>'+
									'<div class="col-sm-8 col-sm-offset-2 seperateblock">'+
									'<div class="col-sm-3 col-md-3 col-lg-3 col-xs-3 col-sm-offset-8">'+
									'<select class="selectpicker"  data-style="form-control btn-default btn-outline" onchange="changemnthwiseper(this.value,\''+subjectLists[ij].subjectId+'\',\''+ij+'\')">'+
									'<option value="3" selected>3 Months</option><option value="6">6 Months</option>'+
								'<option value="9">9 Months</option><option value="12">12 Months</option>'+
									'</select>'+
									'</div>'+
									
									'<div id="mnthpercent'+ij+'" class="mnthpercent"></div>'+
									
									'</div>'+
                                
									 
									'<div class="col-sm-8 col-sm-offset-2 seperateblock1" >'+
									'<div id="lvlbar'+ij+'" class="mnthpercent"></div>'+								
									'</div>'+
									'</div>'+
								'</div>'+
							'</div>'+
						'</div>';
				
		 
		 
		 }
		 $("#Subjectcards").empty();
		 $("#Subjectcards").append(appenddata);
		 $(".progress-bar").loading();
		  $('.selectpicker').selectpicker('refresh');
		  $("select .selectpicker").change(changemnthwiseper(3,subjectLists[0].subjectId,0));
		
		 for(var perrem=0; perrem < subjectLists.length; perrem++){
			 var id = "speed"+perrem;
			 if(subjectLists[perrem].speed != null && subjectLists[perrem].speed !=undefined){
				 $("#"+id+" div>span ").replaceWith( "<span>"+subjectLists[perrem].speed+"</span>");
				 }else{
				 $("#"+id+" div>span ").replaceWith( "<span>0</span>");
			 }
			
			 
		 }
		 
		  for(var bg=0; bg < subjectLists.length; bg++){
		 var months_year=[];
		var percentageyears = []; 
		 var pacolor = ['#9c27b08f'];
var monthyearPerformances = subjectLists[bg].monthWisePerformances;

for(var my=0; my < monthyearPerformances.length; my++){
	months_year.push(monthyearPerformances[my].monthName);
	percentageyears.push(Math.round(monthyearPerformances[my].percentage));
	
}
var mnthpercent = 'mnthpercent'+bg;
		Highcharts.chart(mnthpercent, {
title: {  text: 'Month wise performance' },
xAxis: {  categories: months_year,    },
yAxis: { labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
					   gridLineColor: 'transparent',
					   min: 0, max: 100,
allowDecimals: false,
    title: { text: 'Percentage'   } },
	 credits: { enabled: false  },
legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
  colors:pacolor,
series: [{
    name: 'Percentage',
    data: percentageyears,
    tooltip: {
        
        valueSuffix: '%'
    },
  
}],
responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
    }]
}
});
		 var difficultyWisePerformances = subjectLists[bg].difficultyWisePerformances;
		 var  perlevel = []; var acclevel = [];
		var checkleve11 =false; var checkleve12 = false;
		 for(var pa=0; pa < difficultyWisePerformances.length; pa++){
			 var dificult = difficultyWisePerformances[pa].level;
			 if(dificult.toLowerCase()== "level 1"){
				  checkleve11 =true;
				  perlevel.push(Math.round(difficultyWisePerformances[pa].percentage));
			  acclevel.push(Math.round(difficultyWisePerformances[pa].accuracy));
			 }else if(dificult.toLowerCase()== "level 2"){
				
				 if(checkleve11 == false){
					  perlevel.push(0); acclevel.push(0);
					}
				 checkleve12 =true;
				 perlevel.push(Math.round(difficultyWisePerformances[pa].percentage));
			  acclevel.push(Math.round(difficultyWisePerformances[pa].accuracy));
				 
			 }else if(dificult.toLowerCase()== "level 3"){
				  if(checkleve11 == false && checkleve12 == false){
					  perlevel.push(0,0);acclevel.push(0,0);
					}else if(checkleve11 == true && checkleve12 == false){
						  perlevel.push(0);  acclevel.push(0);
					}
				
				  perlevel.push(Math.round(difficultyWisePerformances[pa].percentage));
			  acclevel.push(Math.round(difficultyWisePerformances[pa].accuracy));
			 }
			
			 
		 }
		 /*if(perlevel.length == 1 && acclevel == 1){
			 perlevel.push(0,0);  acclevel.push(0,0);
		 }else if(perlevel.length == 2 && acclevel == 2){
			  perlevel.push(0); acclevel.push(0);
			  }*/
			  var colors = ['#00A2E8', '#22B14C'];
			  var lvlbar = 'lvlbar'+bg
		Highcharts.chart(lvlbar, {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Difficulty wise performance'
    },
    xAxis: {
        categories: ['Level 1', 'Level 2', 'Level 3']
    },
	 yAxis: {
		 min: 0,
        max: 100,
	allowDecimals: false,
	 labels: {
		    formatter: function() {
		       return this.value+"%";
		    }
		  },
    title: {
        text: ''
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
        data: perlevel,
        tooltip: {
            
            valueSuffix: '%'
        },
    }, {
        name: 'accuracy',
        data: acclevel,
        tooltip: {
            
            valueSuffix: '%'
        },
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

function getweekwisetests(){
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata ="";
		var inputData = {
			"studentId":sId,
			"examtypeId":examtypeid
};
var inputdata = JSON.stringify(inputData);
$.ajax({
	type : "POST",
	dataType : "json",
	contentType : 'application/json',
	url : base_url + 'rest/student/getStudentWeekWiseEinsteinPerformance',
	data : inputdata,
	success : function(data) {
		appenddata +='<div class="col-sm-5 col-sm-offset-7 mb-2">'+
		'<img src="'+base_url+'/assets/landing/img/einsteinsubjectwise/eye.svg" width="35px" height="35px"><span class="ttt">Total Tests taken:</span> <span class="ttt font-18">'+data.totalTestsTaken+'</span>'+
												'</div>';
												var monthsLists = data.monthsLists;
			for(var i=0; i < monthsLists.length; i++){
				if(monthsLists[i].monthName == "January" || monthsLists[i].monthName == "February" || monthsLists[i].monthName == "March" || monthsLists[i].monthName == "April"){
					var color = "jan";}
					if(monthsLists[i].monthName == "May" || monthsLists[i].monthName == "June" || monthsLists[i].monthName == "July" || monthsLists[i].monthName == "August"){
					var color = "jan1";}
					if(monthsLists[i].monthName == "September" || monthsLists[i].monthName == "October" || monthsLists[i].monthName == "November" || monthsLists[i].monthName == "December"){
					var color = "dec1";}
					
				appenddata +='<div class="col-md-4">'+
			'<div class="calender-nov '+color+'"><div class="circle1"><div class="circle-line1"></div></div>'+monthsLists[i].monthName+'<br> '+monthsLists[i].year+'<div class="circle2"><div class="circle-line1"></div></div></div>'+
				'<div class="row calender-week">'+
				'<div class="row"><div class="noof">No. of Tests</div></div>';
				var weekLists = monthsLists[i].weekLists;
				for(var j=0; j < weekLists.length; j++){
				appenddata+='<div class="col-md-5">'+weekLists[j].weekName+'</div>'+
					  '<div class="col-md-1">-</div>';
					  if(weekLists[j].studentAttemptedTests == "0"){
						  appenddata+='<div class="col-md-5" style="color:red">'+weekLists[j].studentAttemptedTests+'/'+weekLists[j].totalTests+'</div>';
						}else if(weekLists[j].studentAttemptedTests == weekLists[j].totalTests ){
							appenddata+='<div class="col-md-5"><span style="color:green">'+weekLists[j].studentAttemptedTests+'</span>/<span>'+weekLists[j].totalTests+'</span></div>';
						}else if(weekLists[j].studentAttemptedTests < weekLists[j].totalTests){
							appenddata+='<div class="col-md-5"><span style="color:blue">'+weekLists[j].studentAttemptedTests+'</span>/<span>'+weekLists[j].totalTests+'</span></div>';
						}
					  
				}
				appenddata+='</div>';
    appenddata+='</div>';
				}
			 $("#week_wise_tests").empty();
			 $("#week_wise_tests").append(appenddata);
			
			
		},
	    error:function(data){
			 $("#week_wise_tests").empty();
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
	var appenddatatrhead="";
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
			'<div class="col-sm-12">'+
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
			//'<th>Avg Speed Qns./Hr.</th>'+
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
					/*if(dataof[i].chapterIcon === null || dataof[i].chapterIcon === ""){
						appendtotal += "<td class='geticon'><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
					}else{
						appendtotal += "<td class='geticon'><img src='"+dataof[i].chapterIcon+"' width='50px' style='border-radius:25px'></td>";
					}*/
					if(dataof[i].chapterIcon === null || dataof[i].chapterIcon === ""){
						appendtotal += "<td class='geticon'></td>";
					}else{
						appendtotal += "<td class='geticon'></td>";
					}
					appendtotal += '<td>'+dataof[i].chapter+'</td>'+
					'<td>'+dataof[i].totalViewedQuestions+'</td>'+
					'<td>'+dataof[i].attempted+'</td>'+
					'<td>'+dataof[i].correct+'</td>'+
					'<td>'+dataof[i].percentage+'</td>'+
					'<td>'+dataof[i].accuracy+'</td>'+
					//'<td>'+dataof[i].speed+'</td>'+
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
				//'<td>'+dataof[i].speed+'</td>'+
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
				"top":"-35px"
			})
			$(".chapterwise div .row").css({
				"position":"relative",
				"left":"0%",
				"top": "20px;",
				"margin-right":"-118px",
				"padding": "30px",
				"border-radius":"59px",
				"box-shadow":"0px 2px 16px grey",
				"background":"#fff",
				"width":"100%"
			})
			$(".chapterwise div div .col-sm-8.col-sm-offset-2").css("padding","0px");
			$(".chapterwise div div div div .table-responsive").css({
				/*"box-shadow":"1px 4px 15px grey",
				"box-shadow":"1px 4px 15px grey",*/
				"border-radius":"25px"
					});
			$(".iconchp").css("visibility","hidden");
			$(".geticon").css({
				"border":"3px solid #fff",
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
		$(".chapterwise div .row").css({"margin-right":"-118px","left":"0px"});
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
	$(".tabboxshw").css("display","none");
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

var testresponse = '';
function mockfulltesttype(type,test,elem){
	var text = parseInt($(elem).text());
	if(text == 0){
		return false;
	}
	$(".tabboxshw").css("display","block");
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
	var pId = LoginData.parentId;
	var parent_id ="";
	if(pId == null || pId == undefined){
		parent_id ="";
	}else{
		parent_id = pId;
	}
	var tdsub = [];     
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
			'<th>Sub wise Score</th>'+
			'<th>No. of Participants</th>'+
			'<th>Top Score</th>'+
			'<th>Full Analytics Details</th>';
			var test = data.testsLists;
			testresponse = data.testsLists;
			var subNameArr =[];
				
			/*for(z=0;z<test.length;z++){
				
				var sublist2 = test[z].subjectMarksLists;
				for(var su=0;su<sublist2.length;su++){
					
					//tdsub.push(sublist2[su].subjectName);
					if(subNameArr.indexOf(sublist2[su].subjectName)<0){
						
						subNameArr.push(sublist2[su].subjectName);
						appenddatahead += "<th>"+sublist2[su].subjectName+" Score</th>";
					}
				}
			}*/
		
					
			for(var i=0;i<test.length;i++){
				//var empty = {};
			var sublist = test[i].subjectMarksLists;
					
				
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+test[i].testName+"</td>";
				appenddata += "<td>"+test[i].testTakenDate+"</td>";
				appenddata += "<td>"+test[i].rank+"</td>";
				appenddata += "<td>"+test[i].totalMarks+"</td>";
				appenddata += "<td><i class='fa fa-eye fa-2x' style='color: lightskyblue;' data-toggle='modal' data-target='#subwisescore' onclick='gesubscore("+i+")'></i></td>";

					/*for(var l=0;l<sublist.length;l++){
						
						//for(var d=0;d<sublist.length;d++){
							
						//}
						//for(k=0;k<subNameArr.length;k++){
							if(subNameArr.includes(sublist[l].subjectName) ){
								
								appenddata += "<td>"+sublist[l].subjectScore+"</td>";
							}else{
								appenddata += "<td>-</td>";
							}
					//	}
						//break;
					}*/
					
					
				var  testpostid = btoa(test[i].testId);
				appenddata += "<td>"+test[i].numOfParticipents+"</td>";
				appenddata += "<td>"+test[i].topScore+"</td>";
              if(parent_id !="" && parent_id !=undefined && parent_id !=null){
					
					appenddata += '<td><a href="'+base_url+'jsp/parent/student_analytics3.jsp?id='+testpostid+'&testtype='+testt+'&stid='+data.studentId+'&from=einstein" class="marf btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-placement="left" title="Test Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a></td></tr>';
				}else{
				appenddata += '<td><a href="'+base_url+'jsp/student/student module/student_analytics3.jsp?id='+testpostid+'&testtype='+testt+'&stid='+data.studentId+'&from=einstein" class="marf btn btn-details btn-icon-anim btn-circle" data-toggle="tooltip" data-placement="left" title="Test Analytics"><i class="fa fa-line-chart font-18 mt-10"></i></a></td></tr>';
				}
//appenddata += '<td><a href="'+base_url+'jsp/student/student module/student_analytics3.jsp?id='+testpostid+'&testtype='+testt+'&stid='+data.studentId+'&from=einstein" class="btn btn-danger">View</a></td></tr>';
			}
			$("#trhead").empty();
			$("#trhead").append(appendtrhead);
			//$("#slabview_head > tr > th:nth-child(5)").after(appenddatahead);
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
function gesubscore(indexid){
	var appendscore = '';
	var subjectscore = testresponse[indexid].subjectMarksLists;
	for(var d=0;d<subjectscore.length;d++){
						appendscore +='<p style="color:'+getRandomColor()+'">'+subjectscore[d].subjectName+': '+subjectscore[d].subjectScore+'</p>';	
						}
						$("#subscore").empty();
					$("#subscore").append(appendscore);	
}
function getRandomColor() {
	  var letters = '0123456789ABCDEF';
	  var color = '#';
	  for (var i = 0; i < 6; i++) {
	    color += letters[Math.floor(Math.random() * 16)];
	  }
	  return color;
	}
$("#monthsperiod2").change(function(){
	
	pecenavg.innerHTML = "";
	acuracyavg.innerHTML = "";
	sppedavg.innerHTML = "";
	var value = $(this).val();
	var text = $(this).val();
	var textspi = text.split("");
	var tex = textspi[0];
	var valspli = value.split("_");
	var val = valspli[0];
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			    "studentId":sId,
			    "examtypeId":examtypeid,
			    "months":val
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/getMonthWiseEinsteinSummeryResponse',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			
			//  $('#allsubavgs').html(subbtable);
				var months_year=[];
				var percentageyears = []; var acuracyyears = [];
				 var pacolor = ['#9c27b08f', '#ffeb3bba'];
	/*	var monthyearPerformances = data.monthWisePerformances;*/

		for(var i=0; i < data.length; i++){
			months_year.push(data[i].month);
			percentageyears.push(Math.round(data[i].percentage));
			acuracyyears.push(Math.round(data[i].accuracy));
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
		    title: { text: 'Percentage'   },
		    min: 0,  max:100 ,},
			 credits: { enabled: false  },
		legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
		  colors:pacolor,
		series: [{
		    name: 'Percentage',
		    data: percentageyears,
		    tooltip: {
		        
		        valueSuffix: '%'
		    },
		  
		},{
		    name: 'Accuracy',
		    data: acuracyyears,
		    tooltip: {
		        
		        valueSuffix: '%'
		    },
		  
		},],
		responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
		    }]
		}
		});
																		
																	
				/*else{
					alertify. alert("No Dashboard details");
					$('#dashboard').addClass('thickbox-open');
				}*/
			},
			error : function(data) {
			 alert(data.responseJSON.errorMessage);
		},

		
	})
		})
		
		
/*$(document).on("change","#monthsperiod3", function(){
	var mn = $("#monthsperiod3 option:selected").val();
	var subid = $(this).attr("data-id");
	console.log(mn);
	pecenavg.innerHTML = "";
	acuracyavg.innerHTML = "";
	sppedavg.innerHTML = "";
	var value = $(this).val();
	var text = $(this).val();
	var textspi = text.split("");
	var tex = textspi[0];
	var valspli = value.split("_");
	var val = valspli[0];
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			    "studentId":sId,
			    "examtypeId":examtypeid,
			    "subjectId":subid,
			    "months":val
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/getEinsteinMonthWiseSubjectPerformance',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			
			 var months_year=[];
				var percentageyears = []; 
				 var pacolor = ['#9c27b08f'];
		

		for(var my=0; my < data.length; my++){
			months_year.push(data[my].monthName);
			percentageyears.push(parseInt(data[my].percentage));
			
		
	var mnthpercentt = 'mnthpercent'+my;
		//var mnthpercent = my;
				Highcharts.chart(mnthpercentt, {
		title: {  text: 'Month wise performance' },
		xAxis: {  categories: months_year   },
		yAxis: { labels: {
							    formatter: function() {
							       return this.value+"%";
							    }
							  },
							   gridLineColor: 'transparent',
							   min: 0, max: 100,
		allowDecimals: false,
		    title: { text: 'Percentage'   } },
			 credits: { enabled: false  },
		legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
		  colors:pacolor,
		series: [{
		    name: 'Percentage',
		    data: percentageyears,
		    tooltip: {
		        
		        valueSuffix: '%'
		    },
		  
		}],
		responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
		    }]
		}
		});
		}
		},
	error:function(data){
		 alert(data.responseJSON.errorMessage);
		},
	})
		})*/
		
		function changemnthwiseper(val,subid,subindex){
				
	var examtypeid= $("#exmtypeid").val();
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData ={
			    "studentId":sId,
			    "examtypeId":examtypeid,
			    "subjectId":subid,
			    "months":val
	}
	
		var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/getEinsteinMonthWiseSubjectPerformance',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			
			 var months_year=[];
				var percentageyears = []; 
				 var pacolor = ['#9c27b08f'];
		

		for(var my=0; my < data.length; my++){
			months_year.push(data[my].monthName);
			percentageyears.push(Math.round(data[my].percentage));
		}
		
	var mnthpercent = 'mnthpercent'+subindex;
		Highcharts.chart(mnthpercent, {
title: {  text: 'Month wise performance' },
xAxis: {  categories: months_year,    },
yAxis: { labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
					   gridLineColor: 'transparent',
					   min: 0, max: 100,
allowDecimals: false,
    title: { text: 'Percentage'   } },
	 credits: { enabled: false  },
legend: {   layout: 'vertical', align: 'right', verticalAlign: 'middle' },
  colors:pacolor,
series: [{
    name: 'Percentage',
    data: percentageyears,
    tooltip: {
        
        valueSuffix: '%'
    },
  
}],
responsive: {   rules: [{ condition: {  maxWidth: 500   }, chartOptions: {  legend: { layout: 'horizontal',  align: 'center', verticalAlign: 'bottom'   }   }
    }]
}
});
		
		},
	error:function(data){
		 alert(data.responseJSON.errorMessage);
		},
	})
		}
	