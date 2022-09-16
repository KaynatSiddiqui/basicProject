
	<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <title>Skygets</title>
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="google-site-verification" content="" />
      <meta name="author" content=""/>
      <!-- Favicon -->
      <link rel="shortcut icon" href="favicon.ico">
      <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo/favicon.ico" type="image/x-icon">
      
    
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/jquery-ui.css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fancy-buttons.css" rel="stylesheet" type="text/css">

      <!-- Custom CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/custom.css" rel="stylesheet" type="text/css">
      <!-- Fontawesome Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fontawesome.min.css" rel="stylesheet">
      <!-- Flat Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/flaticons/css/flaticon.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/default.css" rel="stylesheet" type="text/css">
 <link href="<%=request.getContextPath()%>/assets/css/student/css/chapterwise.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />

   </head>
   <body style="background:#fff">
			

<p class="loadershow" style="position: relative;top: 200px;left: 50%;z-index: 1;height:0"><img src="<%=request.getContextPath()%>/assets/images/students/spinner2.gif" width="100" height="100"></p>


	<!-- Main Content -->
	<div onkeydown="return (event.keyCode != 116)">
		<div class="container-fluid mt-10">
			

			
			<!-- Row -->
			<div class="row" id="topdiv">
			<div class="heading col-sm-4">

						    <p id="imgsetting" style="margin-left:5px;"></p>
								<p id="chapterwisesubj" style="margin-top:5px;margin-left:5px;"></p>
                 </div>
				<div class="col-sm-3">
					<div class="text-center">
						<p class="bold font-16 black"><img src="<%=request.getContextPath()%>/assets/images/students/chapter_wise_images/Time.svg" width="35px">&nbsp;&nbsp;<span style="vertical-align: super;">Time Spent: <span class="get_questions_timer timer" style="color:deepskyblue;font-size:20px"></span></span></p>
					
					</div>
				</div>
				<div class="col-sm-4" style="text-align:right;">
				     <div id="">
                     <div class="">
							<a onclick="finishtest()" id="finishtest" class="btn  hvr-rectangle-out">FINISH</a>
								
						</div>
						   
				     </div>
			    </div>
			    <div class="col-md-1 min-height">
				 <a  class="" id="maximize" onclick="max();"><img src="<%=request.getContextPath()%>/assets/images/students/chapter_wise_images/screenmax.png" width="30" height="30" alt=""></a>
				</div>
			</div>
			 <div class="tab-content" id="Questionsection">
			      
			      
				<div class="row">
			<div class="col-sm-3">
			<div class="get_questions_list_div" style="overflow-x:hidden;overflow-y:auto;margin-top:15px;box-shadow: 0px 0px 10px grey;
">
				<ul class="nav nav-tabs nav-stacked selected" id="allQuestions">
					
			   	</ul>
			</div>
					
			</div>  		

				<div class="col-sm-9">
					<div class="get_questions_top_div" style="margin-top:15px;box-shadow: 0px 0px 10px grey;">
						<div class="tab-content" id="Getallquestions">
							
							
						</div>
							</div>
							<div class="row mt-10" id="bottomdiv">
							   
								<div class="col-md-2 col-md-offset-1 getsubmit">
									<div class="">
										<a class="btn  hvr-submit-out subbtn">SUBMIT</a>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-5 getnext" style="display:none">
									<div class="">
										<a  class="btn  hvr-submit-out nextbtn">Next</a>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-3 skipstn">
									<div class="">
										<a onclick="skipQuestion()" class="btn hvr-skip-out skpbtn">SKIP</a>
									</div>
								</div>
							</div>
						</div>
						</div>
				   		
			    </div>
			</div>
			<!-- /Row -->
		</div>

	</div>
	 <div id="analytics"></div>

	<!-- /Main Content -->

	        

		<div class="modal fade" id="questionending" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog" role="document">
			<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
			<p class="text-center font-16" style="color:deepskyblue;font-weight:bold;position:relative;left:-46px;">Hey&nbsp;&nbsp;<span class="stname"></span>,</p>
			<p class="text-center font-16" style="color: deepskyblue;font-weight: bold;">You have viewed all questions</p>
			<p class="text-center font-16" style="font-weight:bold;color: deepskyblue;position:relative;left:-20px;">Go & Finish the practise</p>
			</div>
			</div>
			</div>
			</div>
		
          <div class="modal fade" id="questionempty" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog" role="document" style="margin-top:230px">
			<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" id="chapterclose" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
			<p class="text-center" style="font-weight:bold;color:black;font-size:17px;">Please select an option</p>
				<button class="btn btn-success btnstyle" id="chapternooption">Ok</button>
			</div>
			</div>
			</div>
			</div>
			
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	     <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/chapterwise.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/moment.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/countimer.js"></script>
   <script src="<%=request.getContextPath()%>/assets/js/testscreenjs/screenfull.min.js"></script>
          <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
	<script>
   

	
	 $(document).ready(function(){
		
		 GetallQuestionscreen();	
		
		 var bodyheight = $(document).height();
		 
		 var topdiv = $("#topdiv").outerHeight(true);
		 
		 var bottomdiv = $("#bottomdiv").outerHeight(true);
		 
		 var minusdiv = topdiv + bottomdiv;
		 
		 var totaldiv = bodyheight - minusdiv;
		 
		 var viewheight = parseInt(totaldiv) -40;
		 
		 $(".get_questions_list_div").css({height:viewheight});
		 
		 $(".get_questions_top_div").css({height:viewheight});
		 
		 sessionStorage.setItem("tabheight", viewheight);
		 
		 $(document).on('click', '.button',function(evt) {
			    var buttonPressed = $(this).html();
			   
			    var questionid = $(this).attr("data-question");
			    
			    if(buttonPressed == "backspace"){
			    
			    	    var el = $(".mainscreen"+questionid);
			    	    var the_value = el.text();
			    	    the_value = the_value.substring(0, the_value.length - 1);
			    	    el.text(the_value);
			    	
			    	
			    }else if(buttonPressed == "Clear All"){
			    	$('.mainscreen'+questionid).empty();
			    }else{
			    $('.mainscreen'+questionid).append(buttonPressed);
			    }
			  });
		
	
	

		$(document).on("click","#open" ,function(){
		   var subid = $(this).attr("data-id");
			window.location= base_url+"jsp/student/PreviousyearsPapers/chapterwise/chapterwisesubjects.jsp?examtypeid="+getParameterByName("examid")+"&subid="+subid;
		})
		
		$(document).on("click", "#close", function(){
			$("#modalclose").click();
			$('.timer').countimer('resume');
		})
			
		
			 
			 
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


	 $(function() {
    var print = function(msg) {
      alert(msg);
    };
	 }); 
    
	 
	 $("#chapternooption").on("click", function(){
		 $("#chapterclose").click(); 
	 })
   
    
 	jQuery(document).ready(function(){
		  jQuery(function() {
		        jQuery(this).bind("contextmenu", function(event) {
		            event.preventDefault();
		            
		        });
		    });
		});
    
 	
 	window.addEventListener("keydown", function(e) {
  	   // space and arrow keys
  	   if([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
  	       e.preventDefault();
  	   }
  	}, false);
 	
 	
 	 function max() {
		    var isInFullScreen = (document.fullscreenElement && document.fullscreenElement !== null) ||
		        (document.webkitFullscreenElement && document.webkitFullscreenElement !== null) ||
		        (document.mozFullScreenElement && document.mozFullScreenElement !== null) ||
		        (document.msFullscreenElement && document.msFullscreenElement !== null);

		    var docElm = document.documentElement;
		    if (!isInFullScreen) {


		        if (docElm.requestFullscreen) {
		            docElm.requestFullscreen();
		        } else if (docElm.mozRequestFullScreen) {
		            docElm.mozRequestFullScreen();
		        } else if (docElm.webkitRequestFullScreen) {
		            docElm.webkitRequestFullScreen();
		
		        } else if (docElm.msRequestFullscreen) {
		            docElm.msRequestFullscreen();
				
		        }
		        
		        var bodyheight = screen.availHeight;
				 
				 var topdiv = $("#topdiv").outerHeight(true);
				 
				 var bottomdiv = $("#bottomdiv").outerHeight(true);
				 
				 var minusdiv = topdiv + bottomdiv;
				 
				 var totaldiv = bodyheight - minusdiv;
				 
				 var viewheight = parseInt(totaldiv) - 10;
				 
				 $(".get_questions_list_div").css({height:viewheight})
				 $(".get_questions_top_div").css({height:viewheight})
				 
				 

		    } else {

				 
		        if (document.exitFullscreen) {
		            document.exitFullscreen();

		        } else if (document.webkitExitFullscreen) {
		            document.webkitExitFullscreen();

		        } else if (document.mozCancelFullScreen) {
		            document.mozCancelFullScreen();

		        } else if (document.msExitFullscreen) {
		            document.msExitFullscreen();
		        }
		        $("#maximize img").attr("src","<%=request.getContextPath()%>/assets/images/students/chapter_wise_images/screenmax.png");
		       

		        var totalheight = sessionStorage.getItem("tabheight");
				 
				 $(".get_questions_list_div").css({height:totalheight})
				 $(".get_questions_top_div").css({height:totalheight})
				 
				 
		    }
		}
	
 	
	</script>

	
	</body>
	</html>