$( ".rayoptics" ).click(function() {
  $( ".raycollapse" ).slideToggle( "2000", function() {
    });
});

$( ".thermo" ).click(function() {
  $( ".thermooptics" ).slideToggle( "2000", function() {
    });
});

$( ".soundwaves" ).click(function() {
  $( ".soundoptics" ).slideToggle( "2000", function() {
    });
});

$(".closebtn").on("click", function(){
	$(".raycollapse").slideUp();
	$(".soundoptics").slideUp();
	$(".thermooptics").slideUp();
	 $(".slicup").hide();
	 $(".slicdown").show();
})

      function viedomaindisplay(url){
$("#youtubeembad").attr("src", "");
$("#youtubeembad").attr("src", url);
e.preventDefault();
}
      
 $(".slicup").hide();
      
 $(".slicdown").on("click",function(){
	 $(".slicup").show();
	 $(".slicdown").hide();
 })
 
 $(".slicup").on("click",function(){
	 $(".slicup").hide();
	 $(".slicdown").show();
 })
      
var selector = 'div#singlefocus .focusfirst';

$(selector).on('click', function(){
    $(selector).removeClass('active');
    $(this).addClass('active');
   
    var listId = 2;
    var listItemId = $(this).attr("data-li-id");
    $("#singlefocus > :not(.active) > a > span").addClass("cc");
    $("#singlefocus > .active > a > span").removeClass("cc");
    $("#singlefocus > :not(.active) > a > p").css({"color":"black"});
    $("#singlefocus > .active > a > p").css({"color":"red"});
    $("#multiplefocus[data-id=" + listId + "] > .focusparallel ").removeClass("disable");
    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] ").addClass("disable");
    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] > a > span").addClass("cc");
    $("#multiplefocus[data-id=" + listId + "] > .disable").removeClass("active");
    $("#multiplefocus[data-id=" + listId + "] > .disable > a > p").css({"color":"black"});
}); 


var multipleselector = 'div#multiplefocus .focusparallel';

$(multipleselector).on('click', function(){
	
	  $(selector).removeClass('active');
	    $(this).addClass('active');
    $("#multiplefocus > :not(.active) > a > span").addClass("cc");
    $("#multiplefocus > .active > a > span").removeClass("cc");
    $("#multiplefocus > :not(.active) > a > p").css({"color":"black"});
    $("#multiplefocus > .active > a > p").css({"color":"red"});
    
})

$(function(){
$('rect[class="highcharts-background"]').css('fill', 'none');
});



$("#focusrow .col-sm-4").click(function(){
    if($(this).hasClass("checkmark")){
        $(this).removeClass("checkmark");
    }else{
        $(this).addClass("checkmark");
    }
    var text = $(".checkmark").text();
    var len = text;
   var spli =  text.split(" ");
    
   var b = [];
   for(var i=0;i<spli.length;i++){
       if(b.indexOf(spli[i]) == -1){
           b.push(spli[i]);
       }else{
           console.log("already Exist");
       }
   }
   b.shift();
  
   console.log(b);
})



var gainedMarks = 50;
var totalMarks = 0;

Highcharts.chart('rayopticsmain', {
  chart: {
    type: 'pyramid'
  },
  colors: ['gray', 'yellow'],
  tooltip: { enabled: false },
  title: {
	text: '',
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{
     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});



var gainedMarks = 50;
var totalMarks = 0;

Highcharts.chart('rayopticsparallel', {
  chart: {
    type: 'pyramid'
  },
  colors: ['gray', 'yellow'],
  tooltip: { enabled: false },
  title: {
	text: '',
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{

     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});



var gainedMarks = 50;
var totalMarks = 0;

Highcharts.chart('thermomain', {
  chart: {
    type: 'pyramid'
  },
  colors: ['gray', 'yellow'],  
  tooltip: { enabled: false },
  title: {
  text: '',	  
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{
     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});



var gainedMarks = 50;
var totalMarks = 0;

Highcharts.chart('thermoparallel', {
  chart: {
    type: 'pyramid'
  },
  colors: ['gray', 'yellow'],
  tooltip: { enabled: false },
  title: {
   text: '',	  
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{
     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});


var gainedMarks = 100;
var totalMarks = 0;

Highcharts.chart('container', {
  chart: {
    type: 'pyramid'
  },
  colors: ['green', 'yellow'],
  tooltip: { enabled: false },
  title: {
    text: '',	  
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{
     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});



var gainedMarks = 100;
var totalMarks = 0;

Highcharts.chart('soundwaves', {
  chart: {
    type: 'pyramid'
  },
  colors: ['green', 'yellow'],
  tooltip: { enabled: false },
  title: {
	text: '',	  
    x: -50
  },
  plotOptions: {
    series: {
      dataLabels: {
        enabled: false,
        format: '<b>{point.name}</b> ({point.y:,.0f})',
        format: '{y} %',
        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green',
        softConnector: true
      },
      center: ['50%', '50%'],
      width: '35%',
      height:'35%'
    }
  },
  
  legend: {
    enabled: false
  },
  series: [{
     data: [['GainedMarks',gainedMarks],['TotalMarks',totalMarks]] 
  }]
});