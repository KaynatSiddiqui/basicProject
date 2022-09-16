

//constants
var fullMockConstant = $("#fullMockConstant").val();
var mockConstant = $("#mockTestConstant").val();
var subjectWiseConstant = $("#subjectWiseConstant").val();

function resolveToToppersId(v){
	switch(v){
		case 'full':
			return "fullMockToppersWrap";
		case 'mock':
			return "mockToppersWrap";
		case 'subject':
			return "subjectWiseToppersWrap";	
    }
}

function getToppers(val,whichBlock){
	
	var input = {
		"testType":val
	};
	
	var blockID = $("#"+resolveToToppersId(whichBlock));
	
	var inputdata = JSON.stringify(input);
	
	$.ajax({
		url: base_url+'rest/student/v1/getToppers',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    beforeSend: function(){
	    	$(blockID).empty();
			$(blockID).html('<div class="center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
	    },
	    success: function(data){
	    	
	    	var testName = data.testName;
	    	var examType = data.examType;
	    	var examDate = data.date;
	    	var allToppers = data.topperDetails;
	    	
	    	switch(val){
	    		case fullMockConstant:
	    			$("#fullMockName").html(testName);
	    			$("#fullMockExamType").html(examType);
	    			$("#fullMockExamDate").html(examDate);
	    			
	    			setTopperCard(allToppers,'full');
	    			break;
	    		case mockConstant:
	    			$("#mockName").html(testName);
	    			$("#mockExamType").html(examType);
	    			$("#mockExamDate").html(examDate);
	    			
	    			setTopperCard(allToppers,'mock');
	    			break;
	    		case subjectWiseConstant:
	    			$("#subjectWiseName").html(testName);
	    			$("#subjectWiseExamType").html(examType);
	    			$("#subjectWiseExamDate").html(examDate);
	    			
	    			setTopperCard(allToppers,'subject');
	    			break;
	    	}
	    	
	    	
	    	
	    	
	    },
		error:function(data){
			$(blockID).empty();
			$(blockID).html('<div class="center"><h2>No Toppers Found! :(</h2></div>');
		}
		
	})

}



function setTopperCard(topperData,type){
	var currType = resolveToToppersId(type);	
	var currDiv = $("#"+currType);
	if(topperData === null || topperData === undefined){
		//No toppers data
		$(currDiv).empty();
		$(currDiv).html('<div class="center"><h3>Toppers Data not available yet!</h3></div>');
		$(currDiv).owlCarousel({
            nav: false,
            center: true,
            dots: true,
            navText: ['<span class="ti-arrow-left"></span>', '<span class="ti-arrow-right"></span>']
        });
	} else{
		var len = topperData.length;
		
		
		if(len>0){
				
			
			var appendData = "";
			
			for(var tp=0;tp<len;tp++){
				
				var topperImage = topperData[tp].topperImage;
				var rank = topperData[tp].rank;
				var topperName = topperData[tp].topperName;
				var topperState = topperData[tp].topperState;
				var topperCity = topperData[tp].topperCity;
				var studentScored = topperData[tp].studentScored;
				var totalScore = topperData[tp].totalScore;
				
				appendData += '<div><div class="t1 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.2s">';
				appendData += '<div id="ribbon"><div class="inset"></div><div class="container"><div class="base rank'+rank+'">'+rank+'</div>';
				appendData += '<div class="left_corner rank'+rank+'"></div><div class="right_corner rank'+rank+'"></div></div></div>';
				appendData += '<span class="sp'+rank+'"></span>';
				
				if(topperImage === "" || topperImage === null || topperImage === undefined){
					//default image to display
					appendData += '<img src="'+base_url+'assets/images/students/default.png">';
				} else{
					appendData += '<img src="'+topperImage+'">';
				}
				
				appendData += '<div class="namesec"><p class="t2">'+topperName+'</p><p class="t3"> '+ studentScored +' / '+totalScore+'</p><div class="namesec2">';
				appendData += '<span class="stateName">'+topperState+'</span><span class="cityName">'+topperCity+'</span>';
				appendData += '</div></div></div></div>';
				
			}
			
			$(currDiv).empty();
			$(currDiv).append(appendData);
					
			if(len>3){
				
				$(currDiv).owlCarousel({
					nav: false,
					center: true,
					loop: true,
					autoplay: true,
					dots: true,
					navText: ['<span class="ti-arrow-left"></span>', '<span class="ti-arrow-right"></span>'],
					responsive: {
						0: {
							items: 1
						},
						768: {
							items: 3
						}
					}
				});
				
			} else{
				$(currDiv).owlCarousel({
					nav: false,
					center: true,
					dots: true,
					navText: ['<span class="ti-arrow-left"></span>', '<span class="ti-arrow-right"></span>'] 
				});
			}
			
			
		} else{
			//No toppers data
			$(currDiv).empty();
			$(currDiv).html('<div class="center"><h3>Toppers Data not available yet!</h3></div>');
			$(currDiv).owlCarousel({
				nav: false,
				center: true,
				dots: true,
				navText: ['<span class="ti-arrow-left"></span>', '<span class="ti-arrow-right"></span>']
			});
		}
	}
	
	
	
	
}

$(document).ready(function(){

	$(window).load(function () {
		$(".loaded").fadeOut();
		$(".preloader").delay(1000).fadeOut("slow");
		
		
		/*$(".portfolio-loader").delay(1000).fadeOut("slow");*/
		
	});

	
	getToppers(fullMockConstant,"full");
	getToppers(mockConstant,"mock");
	getToppers(subjectWiseConstant,"subject");
	
	$(".examboxlinks").hover(function(){
			var findi = $(this).find(".single-icon > i");
			var findh4 = $(this).find(".single-special > h4");
			$(findi).css("color","#fb397d");
			$(findh4).css("color","#5b32b4");
	}, function(){
		var findi = $(this).find(".single-icon > i");
		$(findi).css("color","grey");
		var findh4 = $(this).find(".single-special > h4");
		$(findh4).css("color","grey");
	});

/*	var $mainNav2 = $("#nav");


	 $mainNav2.append("<li id='magic-line-two'></li>");
    
    var $magicLineTwo = $("#magic-line-two");
    
    $magicLineTwo
        .width($(".current_page_item_two").width())
        .height($mainNav2.height())
        .css("left", $(".current_page_item_two a").position().left)
        .data("origLeft", $(".current_page_item_two a").position().left)
        .data("origWidth", $magicLineTwo.width())
        .data("origColor", $(".current_page_item_two a").attr("rel"));
                
    $("#nav a").hover(function() {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
        $magicLineTwo.stop().animate({
            left: leftPos,
            width: newWidth,
            backgroundColor: $el.attr("rel")
        })
    }, function() {
        $magicLineTwo.stop().animate({
            left: $magicLineTwo.data("origLeft"),
            width: $magicLineTwo.data("origWidth"),
            backgroundColor: $magicLineTwo.data("origColor")
        });    
    });
    
 
    $(".current_page_item_two a").mouseenter();*/


    $("#cssmenu ul li").click(function(){
        $("#cssmenu ul li").not(this).removeClass("active");
        $(this).addClass("active");
    });

    $(".info-item .btn2").click(function(){
  $(".container2").toggleClass("log-in");
});
$(".container-form .btn2").click(function(){
  $(".container2").addClass("active");
});

$("#regbtn").click(function(){
    $(".container2").addClass("log-in");
});
$("#logbtn").click(function(){
    $(".container2").removeClass("log-in");
});


$('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
});


function getstatesall() {
	var appenddata;
	$.ajax({
		type : "GET",
		url : base_url + 'rest/admin/v1/getnotificationstates',
		dataType : "json",
		contentType : 'application/json',

		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				  if(i !== 0){
				var statename = data[i].name;
				var stateid = data[i].id;
				//var zoneidis = data.zones[i].id;
				appenddata += '<option value="'+stateid+'">' + statename
						+ '</option>';
				  }
			}
			$("#state").prop("disabled", false);
			$("#state").empty("");
			$("#state").append(
					'<option value="">--- Select States---</option>');
			$("#state").append(appenddata);

			$('.selectpicker').selectpicker('refresh');

		},
		error : function(data) {

			alert("States not found!");

		}

	});
}
function getallSelectedcities(element, event) {

	var appenddata = "";

	var cities = [];

	for (var i = 0; i < element.options.length; i++) {
		if (element.options[i].selected) {
			cities.push(element.options[i].value);
		}
	}

	var inputData = {
		"state" : cities
	};
	var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/admin/v1/getnotificationcities',
		data : inputdata,
		beforeSend : function() {
			$("#loading").show();
		},
		success : function(data) {
			$("#loading").hide();
			for (var i = 0; i < data.length; i++) {
				appenddata += '<option value="'+data[i].id+'" >'
						+ data[i].name + '</option>';
			}

			$("#city").empty("");
			$("#city").append('<option value="">--- Select ---</option>');
			$("#city").append(appenddata);

			$('.selectpicker').selectpicker('refresh');
			$("#city").prop("disabled", false);

		},
		error : function(data) {
			$("#loading").hide();
			alert("Cities not found!");

		},

	});

}

function detectmob() {
	  /* if(window.innerWidth <= 800 && window.innerHeight <= 600) {
	     //alert('mobile screen');
	     window.location = base_url +"jsp/student/student module/applinks.jsp";
	   } else {
	     //return false;
		   //alert('Web screen');
	   }*/
	    if( navigator.userAgent.match(/Android/i)
|| navigator.userAgent.match(/webOS/i)
|| navigator.userAgent.match(/iPhone/i)
|| navigator.userAgent.match(/iPad/i)
|| navigator.userAgent.match(/iPod/i)
|| navigator.userAgent.match(/BlackBerry/i)
|| navigator.userAgent.match(/Windows Phone/i)
){
window.location = base_url +"jsp/student/student module/applinks.jsp";
return true;

}
else {
return false;
}
	} 