<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/dist/css/animate.css" rel="stylesheet">
 <link href="<%=request.getContextPath()%>/assets/css/dist/css/dailydose.css" rel="stylesheet">

<style>
.wrapper.theme-1-active .navbar.navbar-inverse, .wrapper.theme-1-active .fixed-sidebar-left .side-nav{
	display:none;
}
.fixed-sidebar-left{
	display:none;
}
</style>
	


	<!-- Main Content -->
	<div style="margin-top:30px;margin-left:50px;margin-right:50px" onkeydown="return (event.keyCode != 116)">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				  
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row">
			<div class="heading col-sm-3">

						    <span id="imgsetting"></span>
								<span style='padding-left:30px' id="wrongtimesubj"></span>
                 </div>
				<div class="col-sm-4">
					<div class="text-center">
						<span class="bold font-16 black"><i class="fa fa-clock-o fa-lg"></i> Time Spent: <span class="get_questions_timer timer" style="color:deepskyblue;font-size:20px"></span></span>
					
					</div>
				</div>
				<div class="col-sm-5" style="position:relative;top:-15px;">
				     <div id="">
                     <div class="button-list">
							<a onclick="finishtest()" id="finishtest" class="btn  hvr-rectangle-out">FINISH</a>
								<span id="spanfinishtest" class="btn  hvr-rectangle-out" style="display: none;">FINISH</span>
						</div>
						   
				     </div>
			    </div>
			</div>
			 <div class="tab-content" id="Questionsection">
			      
			      
				<div class="row">
			<div class="col-sm-3">
			<div class="get_questions_top_div" id="scrollhorisub">
						<div  class="tab-struct custom-tab-1 mt-10">
							<ul role="tablist" class="nav nav-tabs get_questions_tabs" id="subjectlist">
							<!--   <button onclick="scrollWin(100, 0)">Scroll right</button><br><br> -->
								<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">Physics</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Maths</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">Chemistry</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false">Biology</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_5" aria-expanded="false">Zoology</a></li>
                            <!--   <button onclick="scrollWin(-100, 0)">Scroll left</button><br><br> -->
							</ul>
						<div class="paddles">
							<button class="left-paddle paddle btn btn-success" id="next_nav"><</button>
							<button class="right-paddle paddle btn btn-success" id="next_nav2">></button>
						</div>
					</div>
					</div>
					
			</div>  		

				<div class="col-sm-9">
					<div class="get_questions_top_div" style="margin-top:30px;height:380px">
						<div class="tab-content" id="Getallquestions">
							
							
						</div>
							</div>
							<div class="row mt-20 mb-30">
							   
								<div class="col-md-2 col-md-offset-1 getsubmit">
									<div class="button-list">
										<a class="btn  hvr-rectangle-out subbtn">SUBMIT</a>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-1 getnext" style="display:none">
									<div class="button-list">
										<a  class="btn  hvr-rectangle-out nextbtn">Next</a>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-3 skipstn">
									<div class="button-list">
										<a onclick="skipQuestion()" class="btn hvr-rectangle-out skpbtn">SKIP</a>
									</div>
								</div>
							</div>
						</div>
						</div>
				   		
			    </div>
			</div>
			<!-- /Row -->
		

	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/dailydose/dailyscoope.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/dailydose/main.js"></script>
<script>
$(function() {
    $('#next_nav').click(function () {
       $( "#subjectlist li:first-child" ).css('margin-left','-=100px');
       /* $( "#subjectlist li:first-child" ).css('transition','margin 700ms'); */
    });
    $('#next_nav2').click(function () {
       $( "#subjectlist li:first-child" ).css('margin-left','+=100px');
    });
});

	 
	 $(document).ready(function(){
		
		  Getseventycornertestscreen(); 
			 $("#spanfinishtest").hide();
		 $(document).on("click",".digits",function(){
			 
			 var integerid = $(this).attr("data-inteid");
		  	  var oldvalue= $(".result"+integerid).val();
		  	  
		  	 var newvalue= $(this).val();
		  	 
		  	 if(!isNaN($(this).text()) ){

		  		$(".result"+integerid).val(oldvalue +$(this).val());
		  	  }
		  	  else{
		  	  if(jQuery(this).text()=="." )
		  	  {
		  		$(".result"+integerid).val(oldvalue +$(this).val());
		  	  }
		  	  
		  	}  
		  });
	

		
			
			 $(document).on("click","#clearButton",function(){
				var integerid = $(this).attr("data-inteid");
			 $(".result"+integerid).val("");
		  	});

			 $(document).on("click",".backspace",function(){
					var integerid = $(this).attr("data-inteid");
		  		var displayvalue = $(".result"+integerid).val();
		  		
		  		var convertstring = displayvalue.toString();
		  		  var slice = convertstring.slice(0.1, -1);
		  		  var parsing = parseInt(slice);
		  	  
		  		$(".result"+integerid).val(parsing);
		  	});
			 
			 
	}); 
    

		 
	 
	 var time = $('.timer').countimer();

	 $('.timer').countimer({



enableEvents: false,


autoStart : true,

useHours : true,


minuteIndicator: '',


secondIndicator: '',


separator : ':',


leadingZeros: 2,


initHours : 0,
initMinutes : 0,
initSeconds: 0

});




	 $('.timer').countimer('stop');


/* 	 $i('.timer').countimer('resume');


	 $i('.timer').countimer('stopped');


	 $i('.timer').countimer('current'); */



	 $(function() {
    var print = function(msg) {
      alert(msg);
    };
	 }); 
    
   
    
 	jQuery(document).ready(function(){
		  jQuery(function() {
		        jQuery(this).bind("contextmenu", function(event) {
		            event.preventDefault();
		            
		        });
		    });
		});
    
 	
 	
 /* 	history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    }; */
    
var counter = 0;
    
    $(".subbtn").on("click" , function(){
    	submitquestion();
    	$(".getsubmit").hide();
    	$(".skipstn").hide();
    	$(".getnext").show();
    });
    
    
    $(".nextbtn").on("click", function(){
    	counterli();
    	$(".getsubmit").show();
    	$(".skipstn").show();
    	$(".getnext").hide();
    	
    })
    
    
    
    function counterli(){
    	counter++;
    	 $('#allQuestions li:eq('+counter+') a').click(); 
    	 
    }
    

	 
	</script>
