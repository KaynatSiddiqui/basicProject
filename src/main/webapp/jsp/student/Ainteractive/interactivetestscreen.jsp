
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
      
      <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.core.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.default.css">
       <link href="<%=request.getContextPath()%>/assets/css/student/css/interactive.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />
    
   </head>
   <body style=" background: #fff;">
			

	


	<!-- Main Content -->
	<div onkeydown="return (event.keyCode != 116)">
		<div class="container-fluid mt-10">
			
		
			
			<!-- Row -->
			<div class="row" id="topdiv">
			<div class="heading col-sm-4">

						 <span class="bold font-6 " id="imgsetting" style="margin-left:15px;"></span>
						 <p class="bold font-16 black" id="Paramname"  style="margin-left:15px"></p>
                 </div>
				<div class="col-sm-3">
					<div class="text-center">
					<img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Timespentchapter.svg" alt="" style="height: 24px;width: 24px;vertical-align: middle;">
						<span class="bold font-16 black"> Time Spent: <span class="get_questions_timer timer" style="color:deepskyblue;font-size:20px"></span></span>
					
					</div>
				</div>
				<div class="col-sm-1">
					<div class="text-center" id="paramiconin">
						
					</div>
				</div>
				<div class="col-sm-2">
					<div class="text-center">
						<span class="bold font-16 black"><span  style="color:deepskyblue;font-size:20px" id="present_stage" ></span></span>
					
					</div>
				</div>
				
				<div class="col-sm-1" style="text-align:right;">
				     <div id="">
                     <div class="">
							<a href="#" onclick="analytics('finish');"  id="finishtest" class="btn  hvr-rectangle-out" style="display:none">FINISH</a>
							<a href="#" onclick="analytics('pause');" class="btn" id="pause_btn" style="border-radius:15px;"><i class="fa fa-pause" ></i></a>
								
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
			<div class="get_questions_list_div" style="overflow-x:hidden;overflow-y:auto;margin-top:15px;box-shadow: 0px 0px 10px grey;;">
				<ul class="nav nav-tabs nav-stacked selected" id="allQuestions">
					
			   	</ul>
			</div>
					
			</div>  		

				<div class="col-sm-9">
					<div class="get_questions_top_div" style="margin-top:15px;box-shadow: 0px 0px 10px grey;;">
						<div class="tab-content" id="Getallquestions">
							
							
						</div>
							</div>
							<div class="row mt-10 text-center" id="bottomdiv">
							   
								<div class="col-md-3  getsubmit">
									<div class="">
										<a  onclick="onSubmitBtnClick();" class="btn  hvr-submit-out subbtn" >SUBMIT</a>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-1 getnext" style="display:none">
									<div class="">
										<a  class="btn  hvr-submit-out nextbtn">Next</a>
									</div>
								</div>
									<div class="col-md-2 col-md-offset-1 getnextnext" style="display:none">
									<div class="">
										<a  class="btn  hvr-submit-out newnextbtn">Continue practice</a>
									</div>
								</div>
								<div class="col-md-3  aaproachsee">
									<div class="" id="approachpresent">
										<!--  <a class="btn  hvr-approach-out appechbtn" onclick="seeapproach()">Approach</a>-->
									</div>
								</div>
								<div class="col-md-3 conceptsee">
									<div class="">
										<a class="btn  hvr-approach-out concept" onclick="seeconcept('','')">Concept</a>
									</div>
								</div>
								
								
								<div class="col-md-3  skipstn">
									<div class="">
										<a  class="btn hvr-skip-out skpbtn">Can't answer</a>
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
	<div class="modal fade examcheckstatus"  role="dialog">
    <div class="modal-dialog" >
      <div class="modal-content" id="modalcss">
        <div class="modal-header" style="margin-left:20px">
          <button type="button" class="close" id="clsebtn" data-dismiss="modal">&times;</button>
          <p id="chapter_name" style="font-weight: bold;color: white;"></p>
        </div>
        <div class="modal-body">
        <div class="col-md-6" id="robo_image">
          <!--<img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robot_New.gif"  height="200px;">-->
		 
		  
          </div>
            <div class="col-md-6" id="chapterint">
   
          </div>
        </div>
   <div class="modal-footer" style="border-top:none !important">

        </div>
      </div>
    </div>
</div>
<div class="modal fade concepts"  role="dialog">
    <div class="modal-dialog modal-lg" >
      <div class="modal-content">
        <div class="modal-header" style="margin-left:20px;border-bottom: 1px solid deepskyblue;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         <p id="chapter_name_con_app" style="font-weight: bold;color:deepskyblue"></p>
        </div>
        <div class="modal-body">
        
            <div class="col-md-12" id="chapterconcept">
   
          </div>
        </div>
   <div class="modal-footer" style="border-top:none !important">

        </div>
      </div>
    </div>
</div>
<!-- modal for analytics-->
	 <div class="modal fade" id="analytics">
    <div class="modal-dialog modal-sm" style="margin: 98px 65px 30px auto;">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="user_name"></h4>
         
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" id="question_test_status" style="font-weight:bold">
         <div class="col-md-12" ><div class="col-md-8"><span>Total Viewed Qns.</span></div><div class="col-md-1"><span>:</span></div><div class="col-md-2"><span id="total_no" ></span></div></div>
    <div class="col-md-12" style="color:>#81D800FF<"><div class="col-md-8"><span>Unattempted Qns.</span></div><div class="col-md-1"><span>:</span></div><div class="col-md-2"><span id="total_unattempted_no"></span></div></div>
    <div class="col-md-12" style="color:#00BA85"><div class="col-md-8"><span>Corrrect Qns.</span></div><div class="col-md-1"><span>:</span></div><div class="col-md-2"><span id="total_correct_no"></span></div></div>
    <div class="col-md-12"style="color:#FF0000"><div class="col-md-8"><span>Wrong Qns.</span></div><div class="col-md-1"><span>:</span></div><div class="col-md-2"><span id="total_wrong_no"></span></div></div>
        </div>
      
        
        <!-- Modal footer -->
        <div class="modal-footer" id="analytic_button">
		
        </div>
        
      </div>
    </div>
  </div>
	<!-- modal for analytics-->
<div class="modal fade parameterdrive"  role="dialog">
    <div class="modal-dialog" >
      <div class="modal-content" id="modalcss">
        <div class="modal-header" style="margin-left:20px" id="paramdrive_close" >
         
        
        </div>
        <div class="modal-body" id="param_oreder_flow">
      
        </div>
   <div class="modal-footer" style="border-top:none !important">

        </div>
      </div>
    </div>
</div>

      <div class="modal fade" id="questionempty" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog" role="document" style="margin-top:230px">
			<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" id="interactiveclose" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
 <div class="col-md-4">
          <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif" height="200px;"> 
          </div>
    <div class="col-md-6" style="margin-top: 40px">
			<p class="text-center" style="font-weight:bold;color:black;font-size:17px;">Please select an option</p>
			<button class="btn btn-success btnstyle" id="interactiveno">Ok</button>
    </div>
			</div>
			 <div class="modal-footer"></div>
			</div>
			</div>
	  </div>
	<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	     <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/interactive.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/moment.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/countimer.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/testscreenjs/alertify.min.js"></script>
   <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
	<script>
	

	 
	 $(document).ready(function(){
		 var subject = getParameterByName("subject");
			var chapter = getParameterByName("chapter");
			var user_wish = getParameterByName("user_wish");
			
				interactivetestscreen(chapter,subject,"",user_wish); 
			
			
		
		
		//questiondisplay();
		 var bodyheight = $(document).height();
			 
			 var topdiv = $("#topdiv").outerHeight(true);
			 
			 var bottomdiv = $("#bottomdiv").outerHeight(true);
			 
			 var minusdiv = topdiv + bottomdiv;
			 
			 var totaldiv = bodyheight - minusdiv;
			 
			 var viewheight = parseInt(totaldiv) -40;
			 
			 $(".get_questions_list_div").css({height:viewheight})
			 
			 $(".get_questions_top_div").css({height:viewheight})
			 
              sessionStorage.setItem("tabheight", viewheight);		
			 
			 $(document).on('click', '.button',function(evt){
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
    
	 function play(skygetaudio) {
		  var audio = new Audio(skygetaudio);
		  audio.play();
		}
	 
	 
	 $("#interactiveno").on("click", function(){
		 $("#interactiveclose").click();
	 })

   
	 
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
	
    
 /*    function disableF5(e) { if ((e.which || e.keyCode) == 116) e.preventDefault(); };
    $(document).on("keydown", disableF5);
     */
    
/*      var ctrlKeyDown = false;

     $(document).ready(function(){    
         $(document).on("keydown", keydown);
         $(document).on("keyup", keyup);
     });

     function keydown(e) { 

         if ((e.which || e.keyCode) == 116 || ((e.which || e.keyCode) == 82 && ctrlKeyDown)) {
             // Pressing F5 or Ctrl+R
             e.preventDefault();
         } else if ((e.which || e.keyCode) == 17) {
             // Pressing  only Ctrl
             ctrlKeyDown = true;
         }
     };

     function keyup(e){
         // Key up Ctrl
         if ((e.which || e.keyCode) == 17) 
             ctrlKeyDown = false;
     }; 
 */
 
 

	 
	</script>

	
	</body>
	</html>
