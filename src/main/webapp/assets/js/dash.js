
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
				appenddata +='<li><a data-toggle="tab" href="#" onclick="getdashboardresult(\'' + data[i].id + '\')">'+data[i].name+'</a></li>';
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
function getdashboardresult(examtypeid){
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
	url : base_url + 'rest/student/getStudentDashboard',
	data : inputdata,
	success : function(data) {
		if(data.status == true){
			if(data.issubscribed){
				$(".bar-row, .patchwise").removeClass('mask');
			}else{
				$(".bar-row, .patchwise").addClass('mask');
			}
			$('#dashboard').removeClass('thickbox-open');
			 $('#monthsperiod').empty();
			 var monthperiod = '<option value="1_'+examtypeid+'" selected>1 Months</option><option value="3_'+examtypeid+'">3 Months</option><option value="6_'+examtypeid+'">6 Months</option>'+
								'<option value="9_'+examtypeid+'">9 Months</option><option value="12_'+examtypeid+'">12 Months</option>';
				$('#monthsperiod').append(monthperiod);
				 $('.selectpicker').selectpicker('refresh');
			$('#testtakentill').html(data.testTakenTillNow);
		$('#ttlqns').html(data.totalViewedQuestions);
		$('#attqns').html(data.attemptedQuestions);
		$('#crtqns').html(data.correctQuestions);
		$('#fullSyllabusQualifiedTests').html(data.fullSyllabusQualifiedTests);
		$('#mockTestBestRank').html(data.mockTestBestRank);
		$('#fullSyllabusBestRank').html(data.fullSyllabusBestRank);
		
		/*$('#percentage').attr('data-percent', data.percentage);
		$('#accuracy').attr('data-percent', data.accuracy);
		$('#speed').attr('data-percent',data.speed);
		$(".progress-bar").loading();*/
		$('#barsprogress').empty();
		 var progressvarsst = '<div class="col-md-4 col-sm-4 progress-bar position" data-percent="'+data.percentage+'" data-duration="1000" data-color="#fff,skyblue" id="percentage"><span>Percentage</span></div>'+
   '<div class="col-md-4 col-sm-4 progress-bar position accuracy"  data-duration="1000" data-percent="'+data.accuracy+'" data-color="#fff,yellow" id="accuracy"><span>Accuracy</span></div>'+
   '<div class="col-md-4 col-sm-4 progress-bar position speed"  data-duration="1000" data-percent="'+data.speed+'" data-color="#fff,pink" id="speed" ><span>Speed</span></div>';
		$('#barsprogress').append(progressvarsst);
	$(".progress-bar").loading();
		
		
		$( "#speed div>span ").replaceWith( "<span>"+data.speed+"</span>");
		var colors = ['#00A2E8', '#22B14C'];
		var levelcolors= ['#00BA85','#E6C458',	'#00A2E8']
		var subjectvsPercentageAccuracies = data.subjectvsPercentageAccuracies;
		  var alevel1 = []; var blevel2 = [];var clevel3 = []; var diffsub =[];
		  var subject=[]; var accuracy =[]; var pecentage =[];
		for(var i=0; i < subjectvsPercentageAccuracies.length; i++){
			subject.push(subjectvsPercentageAccuracies[i].subject);
			accuracy.push(Math.round(subjectvsPercentageAccuracies[i].accuracy));
			pecentage.push(Math.round(subjectvsPercentageAccuracies[i].percentage));
			}
			Highcharts.chart('progress', {
	   title: {  text: 'Subject wise performance' },
	    chart: {
	        type: 'column'
	    },
	   xAxis: {
				 categories: subject,
			   title: { text: ''  },
				labels: { x: -10 }
				},
													yAxis: {
														 labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
					  max: 100,
					  gridLineColor: 'transparent',
														allowDecimals: false,
														title: {
	            text: 'Percentage'
	        }
													},
													
	  
	   
		  credits: { enabled: false  },
		    plotOptions: {
					        pie: { //working here
					            colors: colors
					        },
					         column: {
					        	 pointWidth: 30,
					               borderRadius: 10,
					           
					           }
					    },
		   colors:colors,
		  series: [{
	        name: 'Accuracy',
	        data: accuracy,
	        tooltip: {
	          
	            valueSuffix: '%'
	        },
	    }, {
	        name: 'Percentage',
	        data: pecentage,
	        tooltip: {
		          
	            valueSuffix: '%'
	        },
	    }, ],
	   
	});
			var subjectvsDifficultyWises=data.subjectvsDifficultyWises;
			 for(var ij=0; ij < subjectvsDifficultyWises.length; ij++){
				 diffsub.push(subjectvsDifficultyWises[ij].subject);
						  var dificultylevel =  subjectvsDifficultyWises[ij].levels;
						 if(dificultylevel.length > 0){
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
								  }  } }
								 
					  for(var jk=0; jk < dificultylevel.length; jk++){
						  var dificult = dificultylevel[jk].level;
						 	if( dificult.toLowerCase()== "level 1"){
							alevel1.push(Math.round(dificultylevel[jk].percentage)); }
	                    if(dificult.toLowerCase() == "level 2"){
					blevel2.push(Math.round(dificultylevel[jk].percentage));
						   }
						 	if(dificult.toLowerCase() == "level 3"){
					clevel3.push(Math.round(dificultylevel[jk].percentage));
						  
						 }
						
	}}else{
		 alevel1.push(0); blevel2.push(0); clevel3.push(0);
		
	}
	}
					Highcharts.chart('progresslevelwise', {
	    data: {
	        table: 'datatable'
	    },
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'Difficulty Wise Performance'
	    },
	    yAxis: {
	    	 max: 100,
			 gridLineColor: 'transparent',
											 labels: {
					    formatter: function() {
					       return this.value+"%";
					    }
					  },
	        allowDecimals: false,
	        title: {
	            text: 'Percentage'
	        }
	    },
	    xAxis: {
	         allowDecimals: false,
	          categories: diffsub,
			   title: {
	            text: ''
	        }
	    },
		  plotOptions: {
					        pie: { //working here
					            colors: colors
					        },
					         column: {
					        	 pointWidth: 30,
					               borderRadius: 10,
					           
					           }
					    },
		colors:levelcolors,
	     series: [{
	        name: 'level1',
	        data: alevel1,
	        tooltip: {
		          
	            valueSuffix: '%'
	        },
	     
	    }, {
	        name: 'level2',
	        data: blevel2,
	        tooltip: {
		          
	            valueSuffix: '%'
	        },
	    },{
	        name: 'level3',
	        data: clevel3,
	        tooltip: {
		          
	            valueSuffix: '%'
	        },
	    }, ],
	});
	 var subwisecolors = ['#9c27b08f', 'orange','#009688','deepskyblue','#F2B701','#337ab7'];
	var subjectWisePerformance = data.subjectWisePerformance;
	var averageSubjectWisePercentages = subjectWisePerformance.averageSubjectWisePercentages;
	var avgdash_per =""; avgdash_per+='<span>Avg: </span>';
	for(var avg =0; avg <averageSubjectWisePercentages.length; avg++){
		
		avgdash_per+='<span style="color:'+subwisecolors[avg]+'">'+averageSubjectWisePercentages[avg].subject+':'+averageSubjectWisePercentages[avg].percentage+'%'+'  </span>';
	}
	$('#avgdash_per').empty();
	$('#avgdash_per').append(avgdash_per);
	var subjectsLists =subjectWisePerformance.subjectsLists;
var mnWisePerormances = subjectWisePerformance.monthWisePerormances;
	var months_weeks = [];
	var mnweek = mnWisePerormances[0].weekWisePerformances;
	for(var mnw=0; mnw < mnweek.length; mnw++ ){
		months_weeks.push(mnWisePerormances[0].monthName+'-'+mnweek[mnw].weekName);
		
	}
	var percentagepoints = [];
	  for(var pq=0; pq < subjectsLists.length; pq++){
		  var monthWisePerormances = subjectsLists[pq].monthWisePerormances;
		   var subres = {};
		    subres['name'] = subjectsLists[pq].subject;
			  var weekpercent =[];
		  for(var rs=0; rs < monthWisePerormances.length; rs++){
			 var weekWisePerformances =monthWisePerormances[rs].weekWisePerformances;
			
			 for(var mn =0; mn < weekWisePerformances.length; mn++){
			 //months_weeks.push(monthWisePerormances[rs].monthName+'-'+weekWisePerformances[mn].weekName);
				
				weekpercent.push(Math.round(weekWisePerformances[mn].percentage));
				
				
			 }
			   
		  }
		 subres['data'] = weekpercent;
		 percentagepoints.push(subres);
	 }
	 
	Highcharts.chart('container-graph', {

title: {
    text: 'Month wise Performance'
},

xAxis: {
        categories: months_weeks,
        
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

legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle'
},


colors:subwisecolors,
series: percentagepoints,
tooltip: {
    
    valueSuffix: '%'
},
responsive: {
    rules: [{
        condition: {
            maxWidth: 500
        },
        chartOptions: {
            legend: {
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom'
            }
        }
    }]
}

});
	$('#monthsperiod').val('1_'+examtypeid).trigger('change');	
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
function onChangechartgrphs(val){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var split = val.split("_");

var month = split[0];
var examtype = split[1];
	 
	var inputData = {
			"studentId":sId,
	"months":month,
	"examtypeId":examtype
};
var inputdata = JSON.stringify(inputData);

$.ajax({
	type : "POST",
	dataType : "json",
	contentType : 'application/json',
	url : base_url + 'rest/student/getStudentMonthWisePerformance',
	data : inputdata,
	success : function(data) {
		var subjectsLists = data.subjectsLists;
		var months_weeks = [];
		var mnmonthWisePerormances = data.monthWisePerormances;
		mnmonthWisePerormances = mnmonthWisePerormances.reverse();
		for(var mnth=0; mnth < mnmonthWisePerormances.length; mnth++){
			var mnweekWisePerformances = mnmonthWisePerormances[mnth].weekWisePerformances;
			for(var mnwp=0; mnwp< mnweekWisePerformances.length;mnwp++){
				
				months_weeks.push(mnmonthWisePerormances[mnth].monthName+'-'+mnweekWisePerformances[mnwp].weekName);
			}
			
		}
		
	var percentagepoints = [];
	  for(var pq=0; pq < subjectsLists.length; pq++){
		  var monthWisePerormances = subjectsLists[pq].monthWisePerormances;
		   var subres = {};
		    subres['name'] = subjectsLists[pq].subject;
			  var weekpercent =[];
		  for(var rs=0; rs < monthWisePerormances.length; rs++){
			 var weekWisePerformances =monthWisePerormances[rs].weekWisePerformances;
			
			 for(var mn =0; mn < weekWisePerformances.length; mn++){
			 //months_weeks.push(monthWisePerormances[rs].monthName+'-'+weekWisePerformances[mn].weekName);
				
				weekpercent.push(Math.round(weekWisePerformances[mn].percentage));
				
				
			 }
			   
		  }
		 subres['data'] = weekpercent;
		 percentagepoints.push(subres);
	 }
	 
	  var subwisecolors = ['#9c27b08f', 'orange','#009688','deepskyblue','#F2B701','#337ab7'];
	
	var averageSubjectWisePercentages = data.averageSubjectWisePercentages;
	var avgdash_per =""; avgdash_per+='<span>Avg: </span>';
	for(var avg =0; avg <averageSubjectWisePercentages.length; avg++){
		
		avgdash_per+='<span style="color:'+subwisecolors[avg]+'">'+averageSubjectWisePercentages[avg].subject+':'+averageSubjectWisePercentages[avg].percentage+'%'+'  </span>';
	}
	$('#avgdash_per').empty();
	$('#avgdash_per').append(avgdash_per);
	Highcharts.chart('container-graph', {

title: {
    text: 'Month wise Performance'
},

xAxis: {
        categories: months_weeks,
        
    },

yAxis: {
	allowDecimals: false,
	 labels: {
		    formatter: function() {
		       return this.value+"%";
		    }
		  },
    title: {
        text: 'percentage'
    }
	 
},

legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle'
},


 colors:subwisecolors,
series: percentagepoints,

responsive: {
    rules: [{
        condition: {
            maxWidth: 500
        },
        chartOptions: {
            legend: {
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom'
            }
        }
    }]
}

});
		},
	error : function(data) {
	 alert(data.responseJSON.errorMessage);
},

});
	
}
$(document).ready(function(){
	getdashexamtypes();
    $(".highcharts-button-normal, .highcharts-button-box, .highcharts-exporting-group").hide();
})