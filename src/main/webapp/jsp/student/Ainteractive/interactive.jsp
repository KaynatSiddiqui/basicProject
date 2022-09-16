<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
<link href="<%=request.getContextPath()%>/assets/css/student/css/interactive.css" rel="stylesheet">


  <div class="page-wrapper comppage">
	<div class="container-fluid">
	<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="row">
						<div class="col-sm-3 col-md-3 col-xs-3 col-lg-3">
							<div class="mt-5">
								<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/InteractivePracticeAi.svg" width="250px">
							</div>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
						<div class="row" id="subjectsshow">
				
				
				
					</div>
						</div>
						<div class="col-sm-2 col-md-2 col-xs-2 col-lg-2 mt-10" >
							<div style="float:right">
								<img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif" class="imgg_robo_name_change" >
                                <p id="robodiv"></p>
							</div>
						</div>
						<div class="col-sm-1 col-md-1 col-xs-1 col-lg-1 mt-5">
							<div class="" style="float:right">
                              <p data-toggle="modal" data-target="#howitworks" id="interhow"><span> How it works  <i class="fa fa-question-circle" aria-hidden="true" style="color:#187ce4;font-size: 13px;"></i></span></p>
                                <p><button class="btn" style="margin-top:11px;color:#fff;background:#9c27b0;border-radius:50%" id="setgoalbtn" data-toggle="modal" data-target=".exampleModalCenter">Set Goal</button></p>
							</div>
						</div>
					</div>
					
  <div id="menu0" class="tab-pane fade in active">
        <div class="container">
        <div class="load col-md-12 col-md-offset-3" style="padding:150px"></div>
          <div class="row rowtop" id="tabsection">
          
           
           
           
           
          </div>
          </div>
          </div>
      </div>
      </div>      

</div>
</div>
</div>
         

<div class="modal fade bd-example-modal-lg exampleModalCenter"  tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document" style="width:1000px">
      <div class="modal-content">
        <div class="modal-header modelhead">
        <!-- <div class="li"></div> -->
          <button type="button" class="close" data-dismiss="modal" id="iconclose" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <h5 class="modal-title namemodel" id="exampleModalLongTitle">Hey Google!</h5>
        <h5 class="modal-title setgoal" id="exampleModalLongTitle">Set your Goal here</h5>
        <div class="modal-body modelbody">
         <div class="container">
             <div class="row">
                 <div class="col-md-3 text-center align-middle"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif" class="img-responsive" height="200px;" alt="goall"></div>
                 <div class="col-md-7 col8">
                        <!-- for 8 row -->
                     <h4 class="firstfocus">First Focus</h4>
                     <div class="row">
                        <div class="list-inline" id="singlefocus" data-id="1">
                       
                         <%-- <div class="col-sm-3 text-center focusfirst"  data-li-id="2"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Jee-mains</p></a></div>
                         <div class="col-sm-3 text-center focusfirst" data-li-id="3"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Bitsat</p></a></div> --%>
                         </div>
                     </div>
                     <h4 class="firstfocus">Parallel Focus</h4>
                     <div class="row">
                         <div class="list-inline" id="multiplefocus" data-id="2">
                        
<%--                          <div class="col-sm-3 text-center focusparallel" data-li-id="2"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Jee-mains</p></a></div>
                         <div class="col-sm-3 text-center focusparallel" data-li-id="3"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Bitsat</p></a></div> --%>
                         </div>
                     </div>
                      <!-- for 8 row -->
                 </div>
             </div>
         </div>
        </div>
         <div class="modal-footer modelfooter">
          <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
          <button type="button" class="btn btn-primary" style="color:#fff" onclick="goalsubmission()">Lets Start</button>
        </div> 
      </div>
    </div>
  </div>


<div class="modal fade examcheckstatus"  role="dialog">
    <div class="modal-dialog" >
      <div class="modal-content">
        <div class="modal-header" style="margin-left:20px">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <p id="chap_name_popup"></p>
        </div>
        <div class="modal-body">
        <div class="col-md-6">
          <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif"  height="200px;">
		 
		  
          </div>
            <div class="col-md-6" id="chapterint">
   <!-- <h5>Hi Kiran, what are you in this chapter?</h4>
   <p style="margin-top:15px"><input type="radio" name="status" style="zoom:1.5">&nbsp;&nbsp;<span style="font-size:16px">Begineer</span></p>
   <p><input type="radio" name="status" style="zoom:1.5">&nbsp;&nbsp;<span style="font-size:16px">Learner</span></p>
   <button class="btn btn-success" id="stdstatus" style="margin-top:20px;color:#fff;">Lets Go</button>-->
          </div>
        </div>
   <div class="modal-footer" style="border-top:none !important">

        </div>
      </div>
    </div>
</div>
  
  

		<div class="modal fade" id="cateselect" role="dialog" >
      <div class="modal-dialog" >
      <div class="modal-content" style="background:#a349a4">
        <div class="modal-header" style="border-bottom:none">
          <button type="button" class="close" id="quotaclose" data-dismiss="modal" style="color:#fff !important;opacity:0.9;">&times;</button>
          <h4 class="modal-title" style="color:gold;font-size:15px;font-weight:bold;padding-left:100px;">Hi,&nbsp;<span id="stuname"></span>!</h4>
        </div>
        <div class="modal-body">
        <div class="col-md-4 col-sm-4">
          <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif" >
          </div>
          <div class="col-md-8 colsm-8">
          <p style="color:#fff;font-weight:bold;">Select your Category to drive you...</p>
          <div style="margin-top:25px;padding-left:25px">
          <p style="color:#fff;font-size:15px;font-weight:bold"><span id="catshow"></span>&nbsp;(your category)</p>
          <p><a onclick="quotanext(this)"  id="realobs" style="color:#b5e61d;font-weight:bold;cursor:pointer;">Drive me</a></p>
          <p class="shomor" style="color:#b5e61d;font-weight:bold;padding-left:14px;">or</p>
          <p style="color:#fff;font-size:15px;font-weight:bold" class="shomor" >GENERAL</p>
          <p><a onclick="quotanext(this)" data-word="GENERAL" style="color:#b5e61d;font-weight:bold;cursor:pointer;" class="shomor">Drive me</a></p>
          </div>
          </div>
          </div>
          <div class="modal-footer" style="border-top:none"></div>
        </div>
      </div>
    </div>
	
	
	
	<div class="modal fade" id="afterselect" role="dialog" >
    <div class="modal-dialog" >
      <!-- Modal content-->
      <div class="modal-content" style="background:#a349a4">
        <div class="modal-header" style="border-bottom:none">
          <button type="button" class="close" data-dismiss="modal" style="color:#fff !important;opacity:0.9;">&times;</button>
        </div>
        <div class="modal-body">
        <div class="col-md-4 col-sm-4">
          <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/Robotrans.gif" >
          </div>
          <div class="col-md-8 colsm-8">
          <p style="color:#fff;font-size:15px;">Okay, I am going to drive based on the selected category.. </p>
          <div style="margin-top:25px">

          <p style="color:gold;font-size:15px;font-weight:bold"><span id="showingquota"></span></p>
          <p style="color:#fff;font-size:15px;">you can reset this one time.Make it sure...</p>
          </div>
          </div>
          <div class="col-md-12 col-sm-12" style="margin-top:15px;">
            <button class="btn" style="font-weight: bold;color: gold;font-size:15px;background: transparent;" id="backbtn" >Back</button>
            <a onclick="finalquota()"  ><button class="btn" style="color: gold;float:right;background: transparent;border: 1px solid gold;border-radius: 25px;font-weight: bold;">Alright, Let's go..</button></a>
          </div>
          </div>
          <div class="modal-footer" style="border-top:none"></div>
        </div>
      </div>
    </div>
	
  
  

<!-- collpase popups -->

 <div id="goaltime">
 <div class="modal fade goalsettime" tabindex="-1" role="dialog">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	      
	      </div>'
	      <div class="modal-body">
	        <div class="row" id="goal_time_set">
	         
			 </div></div>  
	      <div class="modal-footer">
	      </div></div></div></div>
 </div>
 
 
 
   <div class="modal fade" id="feedbackModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header headeroption">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <span class="col-md-3 modaltitle">Feedback</span>
          <span class="col-md-4 modaltitle" id="feedbackchapname"></span>
        </div>
        <div class="modal-body">
        <ul class="nav nav-tabs" id="maintabs" style="border-bottom:none !important;">

    <!-- <li class="active"><a href="#jeemains" data-toggle="tab">JEE MAINS(first focus)</a></li>
	<li><a href="#bitsat" data-toggle="tab">BITSAT</a></li>
    <li><a href="#eamcet" data-toggle="tab">TS-EAMCET</a></li>-->
  </ul>
  
  <div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="jeemains">
          <div class="container" style="margin-top:30px" >
		  <div class="row">
		  <div id="jeecontainer" style="width:500px; height: 400px;"></div>
		  </div>
          <div class="row">
          <p class="stage1">Stage-1</p>
          <p class="textfont">Goal:To gain ground Knowledge of all concepts of the chapter.</p>
          <p class="textfont">Your status:&nbsp;<span class="statusgood" id="stage1status"></span></p>
         <!-- <p class="textfont">Your status:&nbsp;<span class="statuspoor">Poor</span></p>-->
          </div>
          <div class="row">
          <p class="stage2">Stage-2</p>
          <p class="textfont">Goal:Acquiring the chapter specific skills & knowledge to understand and analyse the Target Exam-type Questions.</p>
          <p class="textfont">Your status:&nbsp;<span class="statusaverage" id="stage2status"></span></p>
         <!-- <p class="textfont">Your status:&nbsp;<span class="practisestatus">Practise going on...</span></p>-->
          </div>
            <div class="row">
          <p class="stage3">Target Exam</p>
          <p class="textfont">Goal:Makes you ready to analyse and solve any kind of new Question in the Target Exam perception.<br>Covers the chapter in all                  dimentions.</p>
          <p class="textfont">Your status:&nbsp;<span class="statusexcellent" id="stage3status"></span></p>
          </div>
        <div class="row">
         <p class="target" style="padding-left:200px">Chapter Target Test</p>
          <div class="col-md-4">
          <p class="textfont" id="chapdate1">Test-1</p>
          <p class="textfont" id="chapmsg1"></p>
           <p class="textfont" id="chappercent1"></p>
          <p class="textfont" id="avgtimeqns1"></p>
          </div>
              <div class="col-md-4">
         <p class="textfont" id="chapdate2">Test-1</p>
          <p class="textfont" id="chapmsg2"></p>
          <p class="textfont" id="chappercent2"></p>
        <p class="textfont" id="avgtimeqns2"></p>
          </div>
          </div>
        </div>
		</div>
		
		
		
		
		</div>
		
		
      </div>
      </div>
    </div>
  </div>
  
  
  			
	<div class="modal fade" id="howitworks" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="margin-top:20px">How does Interactive Practice module works?</h4>
            <p class="text-justify" style="margin-top:20px">Hi, this Robo driven Interactive Practice is powered by Artificial Intelligence.</p>
        <p class="text-justify" style="margin-top:20px">Robo will assist you through out the practice to make you perfect in the chapter. Check out the work flow below</p>
         
          <div class="contentbased text-center" style="margin-top:20px">
           <img src="/assets/images/students/chaptertargetimg/cihowit.png" width="350px">
          
        
          </div>
          <p>Just follow these steps</p>
<h4>Step-1: Practice Stage-1</h4>
<p>Here Robo will take you to revise all concepts at basic level. Achieve Good percentage in this.</p>
<h4>Step-2: Practice Stage-2</h4>
<p>Robo will take you to practice the fundamentals, Math skills and all other skills required to deal with the chapter. Achieve Good percentage in this.</p>
<h4>Step-3: Practice Target Exam</h4>
<p>Robo will guide you in the chapter practice, makes you perfect and will certify you in the chapter.</p>
<p>Now, you are ready to solve any question from the chapter at the time of your Target Exam.</p>
<p>All the best</p>
        </div>
      </div>
    </div>
  </div>
    
    <div id="chapbasic" style="color:#2f2b2b"></div>
     <div id="concepts" style="color:#2f2b2b"></div>
     <div id="formula" style="color:#2f2b2b"></div>
      <div id="ncert" style="color:#2f2b2b"></div>
     <div id="videos"></div>
     <div id="chapinfo"></div>
<!-- jQuery library -->
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/interactive.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/highchart.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/funnel.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/exporting.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/exportdata.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<script>

 $(document).ready(function(){
	 var subject = getParameterByName("subject");
	 showingsubjects(subject);
	  var studname = sessionStorage.getItem('stdname');
	    $("#stuname").html(studname);
})



 $(document).on('click', '.Modalvideo', function() {    
   var $if = $('#videopause').find('iframe');
   var src = $if.attr("src");
   $if.attr("src", '');
   $if.attr("src", src);
});
 
$("#setgoalbtn").on("click", function(){
	setgoalexamtypes();
});

 
 $(document).on("click", "#basicbutton", function(){
	  $(".modalbasic").hide();
 })
 
  $(document).on("click", "#infobutton", function(){
	  $(".modalinfo").hide();
 })
 
 
 $(document).on("click", "#backbtn",  function(){
	 $("#afterselect").modal("hide");
	 $("#cateselect").show();
 })
 
 function writetest(elem){
		
		var chapter = $(elem).attr("data-chapter");
		var subject = $(elem).attr("data-subid");	
	 
	interactivetestscreen(chapter,subject,"popup","");
	}
 
	 function stdstatus(elem){
	 var chapter = $(elem).attr("data-chapter");
		var subject = $(elem).attr("data-subid");
		var user_option = $("input[name='status']:checked").val();
		
	 $('#chapterint').empty();
	 var message = '<p style="color:black">I am assuming that at least you have some minimum knowledge on the chapter.</p>'+
     '<button class="btn btn-success" id="questa" style="margin-top:20px;color:#fff;"  data-chapter="'+chapter+'" data-subid="'+subject+'" onclick="chnagemessg(this,\''+user_option+'\');">Okay,got it</button>';
	 $('#chapterint').html(message);
	 }

 
 

	function chnagemessg(elem,user_option){
		var chapter = $(elem).attr("data-chapter");
			var subject = $(elem).attr("data-subid");
		 $('#chapterint').empty();
		 var path = "location.href='"+base_url+"jsp/student/Ainteractive/interactivetestscreen.jsp?chapter="+chapter+"&subject="+subject+"&user_wish="+user_option+"'";
		 var message = '<p style="color:black">Okay, Let me give you some questions to get Ground knowledge of the chapter.</p>'+
		   '<p style="color:black">Concentrate on Accurately answering.</p>'+
		   '<p style="color:black">You need to learn or perform at each question.</p>'+
		     '<button class="btn btn-success" style="margin-top:20px;color:#fff;" onclick="'+path+'">Lets go</button>';
		 $('#chapterint').html(message);
		
	}
	
$(document).on('click', ".downarrow" , function(){
	  var chapid = $(this).attr("data-id");
               	
               		 $(".collapsetab"+chapid).removeClass("hide").addClass("show").slideDown('2000');
               		 $("#slicdown"+chapid).hide();
               		 $("#slicup"+chapid).removeClass("hide").addClass("show");
      });
               	 
            	$(document).on('click', ".uparrow" ,function(){
            		  var chapid = $(this).attr("data-id");
               		 $("#slicup"+chapid).removeClass("show").addClass("hide");
               		 $(".collapsetab"+chapid).removeClass("show").addClass("hide").slideUp(2000);
               		 $("#slicdown"+chapid).show();
             });
      
       $(document).on('click', ".closebtn" ,function(){
    	   var chapid = $(this).attr("data-id");
    	   $(".collapsetab"+chapid).removeClass("show").addClass("hide").slideUp(2000);
    	   $("#slicup"+chapid).removeClass("show").addClass("hide");
    	   $("#slicdown"+chapid).show();
           });          	
            	
var selector = 'div #singlefocus .focusfirst';

$(document).on('click', selector, function(){
    $(selector).removeClass('firstactive');
    $(this).addClass('firstactive');
   
    var listId = 2;
    var listItemId = $(this).attr("data-li-id");
    $("#singlefocus > :not(.firstactive) > a > span").addClass("cc");
    $("#singlefocus > .firstactive > a > span").removeClass("cc");
    $("#singlefocus > :not(.firstactive) > a > p").css({"color":"black"});
    $("#singlefocus > .firstactive > a > p").css({"color":"red"});
    $("#multiplefocus[data-id=" + listId + "] > .focusparallel ").removeClass("disable");
    $("#multiplefocus[data-id=" + listId + "] > .focusparallel ").removeClass("parallelactive");
    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] ").addClass("disable");
    $("#multiplefocus[data-id=" + listId + "] >  [data-li-id=" + listItemId + "] > a > span").addClass("cc");
    $("#multiplefocus[data-id=" + listId + "] > .disable").removeClass("active");
    $("#multiplefocus[data-id=" + listId + "] > .disable > a > p").css({"color":"black"});
}); 


var multipleselector = 'div #multiplefocus .focusparallel';

$(document).on('click', multipleselector, function(){
	
	    $(this).addClass('parallelactive');
    $("#multiplefocus > :not(.parallelactive) > a > span").addClass("cc");
    $("#multiplefocus > .parallelactive > a > span").removeClass("cc");
    $("#multiplefocus > :not(.parallelactive) > a > p").css({"color":"black"});
    $("#multiplefocus > .parallelactive > a > p").css({"color":"red"});
    
})





</script>


<script>


</script>
