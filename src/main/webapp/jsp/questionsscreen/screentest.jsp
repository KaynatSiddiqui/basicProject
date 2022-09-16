<!DOCTYPE html>
<%@page import="com.zomant.util.AppConstants"%>

	<title>Zomant Question Screen</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1" />
<link href="<%=request.getContextPath()%>/assets/css/csstestscreen/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/csstestscreen/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.core.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.default.css" id="toggleCSS" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />
		<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.10.2/dist/katex.min.css" integrity="sha384-yFRtMMDnQtDRO8rLpMIKrtPCD5jdktao2TV19YiZYWMDkUR5GQZR/NOVTdquEx1j" crossorigin="anonymous"> -->
	
<style>
@import url(https://fonts.googleapis.com/css?family=Droid+Sans+Mono|Pacifico|Oxygen);
#name1{
	font-weight:500;
}

.markings{
	    color: #8975c9 !important;
	    text-transform: capitalize;
        font-weight: 700;
       /* letter-spacing: 1px;*/
}
.calculator {
  position: relative;
  display: block-inline;
  width: 288px;
 
  }

.calc-row {
  text-align: center;
}
.button{
cursor:pointer;
}
.clear-All{

}
.calc-row div.intdispscreen {
    font-family: Droid Sans Mono;
    display: table;
    width: 100%;
    min-height: 80px !important;
    /* background-color: #aaa; */
    text-align: center;
    font-size: 2em;
    min-height: 1.2em;
    margin-left: 0.5em;
    padding-right: 0.5em;
    border: 1px solid #888;
    color: #333;
    font-weight: bold;
    border: 1px solid #555;
    background-color: white;
    padding: 18px 0;
    margin: 7px 5px;
    border-radius: 0;
}

.button.backspace{
	border: none;
    width: 107px;
    background-color: #00a1ff;
    border-radius: 9px;
    color: white;
    padding: 5px;
}
.button.clear-All{
    width: 80px;
    border: none;
    border-radius: 5px;
    color: white;
    background-color: #7d02bb;
    padding: 0;
}
.calc-row div {
  display: inline-block;
    font-weight: bold;
    border: 1px solid #555;
    /* background-color: #eee; */
    padding: 10px 0;
    margin: 7px 5px;
    border-radius: 50%;
    /* box-shadow: 2px 2px 1px 1px #222; */
    width: 45px;
    box-shadow: -2px -2px 5px grey;
}

.fullscreen{
overflow-x: hidden; overflow-y: hidden;
	}
	.hidediv{display:none;}
	.blockdiv{display:block; }
	.not-active {
  pointer-events: none;
  cursor: default;
  text-decoration: none;
  color: black;
}
		
		
		#content {
			
			
			-webkit-transition: width 0.3s ease;
			-moz-transition: width 0.3s ease;
			-o-transition: width 0.3s ease;
			transition: width 0.3s ease;
		}
		
		.col-md-9 .width-12,
		.col-md-12 .width-9 {
			display: none; /* just hiding labels for demo purposes */
		}
		
		.collapsed {
			display: none; /* hide it for small displays */
		}
		@media (min-width: 992px) {
			.collapsed {
				display: block;
				margin-right: -25%; /* same width as sidebar */
			}
		}
		@media (min-width: 992px) {
		#sidebox{
		max-width:24%;
		margin-left:0%;
		
		}
	
		
		#sidebox .row3_2 .col-md-3{
		/* max-width: 11%;
	    margin-bottom: 20px;
	    margin-left: 20px; */
	    max-width: 13%;
	    margin-bottom: 20px;
	    padding-right: 12.5%;
	 
		}
		.row4 .row:first-child{
		margin-bottom:10px;
		margin-top:10px
		}
		.row4 .row:last-child{
	
		}
		#sidebox .row1 .col-md-3{
		margin-bottom: 0px;
	    margin-left: 0px;
		}}
	.dropbtn{
	padding-left: 3px;
	   position:relative;
	
	}
	
	.dropdown-content {
    display: none;
	border-radius: 15px;
    position: fixed;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.tag {
    float: left;
    position: absolute;
    top: 50%;
    left: 24%;
    transform: translate(-50%, -50%);
    color: white;
    font-weight: bold;
}

#answeredtag{
top:53%;
}
#unansweredtag{
left: 17%;
top:40%;
}
#reviewtag{
left: 17%;
}
#ansreviewtag{
left: 10%;
}

.questag {
   float: left;
   position: absolute;
     top: 50%;
    left: 67%;
    transform: translate(-50%, -50%);

   color: white;
   font-weight: bold;
}
.tag1 #submenu_ans_1_1{
  
}
	.tag1 {
   float: left;
   position: absolute;
   left: 17px;
  
   z-index: 1000;
  
   color: white;
   font-weight: bold;
}
	.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;padding: 10px;font-weight: bold;}
.markings:hover .dropdown-content {display: block;padding: 10px;font-weight: 500; color: black !important;}

.sideblockimages {
       padding-left: 3px;
       height: 24px;
}
.answerrr{
font-size: 13px; padding-left: 6px;
}
.secimage{
padding-left: 3px;height: 28px;
margin-right: 9px;
}
#optionspanelB label, #optionspanelA label{
	margin-bottom:0px;
}
input[type="checkbox"] {
	display: inline-block;
    opacity: 0;
    position: relative;
    cursor: pointer;
	z-index:3;
	zoom:1.5;
	margin-left:3px;
	vertical-align:top;
}

.checkmark {
   position: absolute;
    top: 4px;
    left: 13px;
    background-color: #ced4da;
    height: 20px;
    width: 20px;
}

input:checked ~ .checkmark {
    background-color: green;
}
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}
input:checked ~ .checkmark:after {
    display: block;
}
.checkmark:after {
   left: 6px;
   
    width: 8px;
    height: 14px;
	border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}
#optionspanelA input[type="checkbox"] {
	display: inline-block;
    opacity: 0;
    position: absolute;
    cursor: pointer;
	z-index:3;
	zoom:1.5;
	margin-left:3px;
	vertical-align:top;
	top: 50%;
    transform: translateY(-50%);
}
.checkmarkr {
   left: 13px;
    height: 20px;
    width: 20px;
    background-color: #ced4da;
   position: absolute;
    top: 50%;
    transform: translateY(-50%);
	
	
}


input:checked ~ .checkmarkr {
    background-color: green;
}
.checkmarkr:after {
    content: "";
    position: absolute;
    display: none;
}
input:checked ~ .checkmarkr:after {
    display: block;
}
.checkmarkr:after {
   left: 6px;
   
    width: 8px;
    height: 14px;
	border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}

input[type="radio"] {
	display: inline-block;
    opacity: 0;
    position: absolute;
    cursor: pointer;
	z-index:999999;
	margin-left:0px;
	vertical-align:top;
	zoom:1.5;
	top: 50%;
    transform: translateY(-50%);
}

.checkmark1 {
   /* position: absolute;   top: 4px;*/
    left: 13px;
    height: 20px;
    width: 20px;
    background-color:#ced4da;
    border-radius: 50%;
	 position: absolute;
    top: 50%;
    transform: translateY(-50%);
}

input:checked ~ .checkmark1 {
   background-color: white;
    border: 1px solid green;
	
}
.checkmark1:after {
    content: "";
    position: absolute;
    display: none;
}
input:checked ~ .checkmark1:after {
    display: block;
	border: 1px solid green;
}
.checkmark1:after {
   top: 2px;
	left: 2px;
	width: 14px;
	height: 14px;
	border-radius: 50%;
	background: green;
}

.labelbox{
display:block;
position:relative;
margin-bottom
}
.flexer{
display:inline-flex;
margin-bottom: 18px;
}
.responsive {
       width: 38px;
       height: 28px;
}
.responsive-circle{
        width: 39px;
       height: 37px;
}
.row4-2 .col-md-5{
	white-space: nowrap;
}
.test1{
	color:yellow;
	left:36px;
}
.test2{
	color:red;
	left:31px;
}
.test3{
	color:brown;
	left:27px
}

#summerypage{
     padding-right: 0px !important; 
     padding-left: 0px !important;
}
	</style>
<body class="fullscreen" id="full">
<div class="container-fluid" id="screentestpage">
		<div class="row" id="row-heigh">
			<div class="col-xl-12">
				
				<!-- Header Part -->
			<div id="header" class="row">
					<div class="col-xl-12 headerhead">
						<div class="row no-gutters">
							<div class="col-md-9 timer">
    <div class="row">
    <div class="col-md-6 ">
						<div class="pt-2" id="testname" style="padding-left: 9px;font-size:19px;"></div>
   </div>
<div class="col-md-6">
<div class="pt-2" style="padding-left: 9px; color:#c2c2c2">Time Left: <span id="timercount"></span></div>
</div>
							</div></div>
							<div class="col-md-3 ">
								<div class="row quesrow">
									<div class="col-md-5 quesins">
										<button class="btn" id="ques" data-toggle="modal" data-target="#myModal" ><i class="fa fa-file-text-o text-danger"></i> QuestionPaper</button>
											<!--<a href="#" class="quesbtn"><i class="fa fa-file-text-o " aria-hidden="true">&nbsp;QuestionPaper</i></a>-->
										
									</div>
									<div class="col-md-4 ins-height">
										<button class="btn" id="ins" data-toggle="modal" data-target="#instructions"><i class="fa fa-info-circle text-danger"></i> Instructions</button>
								
								</div>
									<div class="col-md-1 min-height">
										<a href="#" class="" id="maximize" onclick="max();"><img src="<%=request.getContextPath()%>/assets/images/images/imageedit.png" width="30" height="30"  alt=""></a>
									</div>
								</div>
							</div>
						</div>						
					</div>
				</div>
				<!-- END Header Part -->
</div>
<div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
         
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" id="popupquestions">
        		 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="row">
        		<div id="elempopup" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="container-fluid" id="subject_popupp">
 
  </div>

</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
  <div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="mainsection" >
												
												</div></div>
        
        </div> </div></div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  <div class="modal" id="instructions">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">General Instructions</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body questions">
        <ol style="list-style-type:decimal; margin-left: 15px; font-size:14px;">
						<li>The clock will be set at the server. The countdown timer in the top right corner of screen will display the remaining time available for you to complete the examination. When the timer reaches zero, the examination will end by itself. You will not be required to end or submit your examination.</li>
						<li>The Question Palette displayed on the right side of screen will show the status of each question using one of the following symbols:
							<ul>
								<li style="line-height: 45px;"><img src="<%=request.getContextPath()%>/assets/images/exam/notvisited.png" width="30px">&emsp;"Not Visited"- You have not  visited the question yet.</li>
								<li style="line-height: 45px;"><img src="<%=request.getContextPath()%>/assets/images/exam/unanswered.png" width="30px">&emsp;"Not Answered" - You have not answered the question.</li>
								<li style="line-height: 45px;"><img src="<%=request.getContextPath()%>/assets/images/exam/answered.png" width="30px">&emsp;"Answered" - You have answered the question.</li>
								<li style="line-height: 45px;"><img src="<%=request.getContextPath()%>/assets/images/exam/review.png" width="30px">&emsp;"Marked for Review" - You have NOT answered the question, but have marked the question for review.</li>
								<li style="line-height: 45px;"><img src="<%=request.getContextPath()%>/assets/images/exam/ansreview.png" width="30px">&emsp;"Answered and Marked for Review"- The question(s) "Answered and Marked for Review" will be considered for evaluation.</li>
								<li>&emsp;&emsp;The Marked for Review status for a question simply indicates that you would like to look at that question again.</li>
							</ul>
						</li>
						<li>You can click on the "&gt;" arrow which appears to the left of question palette to collapse the question palette thereby maximizing the question window. To view the question palette again, you can click on "&gt;" which appears on the right side of question window.</li>
						</ol>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div> 
      </div>
    </div>
  </div>
  
 
  
  <div class="modal" id="qinst">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Instructions</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="instques" >
												
												</div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div> 
      </div>
    </div>
  </div>
<div class="col-xl-12 screen-width">
<div class="row qcscre" style="padding-left: 17px;padding-top: 0;padding-right: 1px;transform:scaleY(0.93)">
<div class="col-md-9" style="border: 1px solid silver;height:82vh;border-radius:10px"; id="content">
<div class="row">
					<div id="elem" class="col-xs-12">
<div class="container-fluid" id="subjectt_section">
  </div>
</div>
<div class="col-md-12 questype">
							<!-- <span class="markings" id="typeq" data-id=""  onmouseover="instruction(this)" ></span>-->
					</div>
<div class="col-md-12">
						<!-- <a href="#"><i class="fa fa-arrow-circle-down fa-2x"></i></a> -->
						<i id="arrowbutton" class="fa fa-chevron-right toggle-sidebar" style="z-index:9;"></i>
							</div>
<div class="col-md-12">
									
      <div class="row scrscreen"><div class="col-md-12">
      <div class="row">
      <div class="col-md-12">
       
<p id="passage"></p>
      </div>
      	<div class="col-md-6" style="font-weight:500">Q.No.<span id="questionnumber"></span></div>
      	<div class="col-md-12" id="question">
							<div class="row">
							<!-- <div  class="col-md-12" id="questionenter" style="height: 100%;overflow-y: scroll;"> -->
							<div  class="col-md-12" id="questionenter" style="color:#2f2b2b">
                             <p id="questiondisplay"></p>
                              
                            </div>	
                           
                            <div class="col-md-11" style="color:#2f2b2b">
    <div class="">
          <div id="optionspanelA" class="hidediv">
       				 <div class="col-md-12 flexer">
							
                         <input type="checkbox"  id="optvalA" class="optionChecks" value="" name="dd"/><span class="optionsname">A)</span><label for="optvalA" id="opt1"></label><span class="checkmarkr"></span>
                             </div> 
                             <div class="col-md-12 flexer">
                              <input type="checkbox"  id="optvalB" class="optionChecks" value="" name="ddd"/><span class="optionsname">B)</span><label  for="optvalB" id="opt2"></label><span class="checkmarkr"></span>
                               </div>
                                <div class="col-md-12 flexer"><input type="checkbox"  id="optvalC" class="optionChecks" value="" name="dddd"/><span class="optionsname">C)</span><label  for="optvalC" id="opt3"></label><span class="checkmarkr"></span>
                             </div>
                              <div class="col-md-12 flexer"><input type="checkbox"  id="optvalD" class="optionChecks" value="" name="dddd"/><span class="optionsname">D)</span><label  for="optvalD" id="opt4"></label><span class="checkmarkr"></span>
                            	
                            	</div>
           </div>
                 <div id="optionspanelB" class="hidediv">
       				 <div class="col-md-12 flexer">
					
                             <input type="radio"  id="optvalAr" class="optionChecks" value="" name="dd"/><span class="optionsname">A)</span><label for="optvalAr" id="opt1r"></label><span class="checkmark1"></span>
                              </div>  
                              <div class="col-md-12 flexer"> 
                             <input type="radio"  id="optvalBr" class="optionChecks" value="" name="dd"/><span class="optionsname">B)</span><label  for="optvalBr" id="opt2r"></label><span class="checkmark1"></span> 
                              </div> 
                                 <div class="col-md-12 flexer"><input type="radio"  id="optvalCr" class="optionChecks" value="" name="dd"/><span class="optionsname">C)</span><label  for="optvalCr" id="opt3r"></label><span class="checkmark1"></span>
                              </div> 
                              <div class="col-md-12 flexer"><input type="radio"  id="optvalDr" class="optionChecks" value="" name="dd"/><span class="optionsname">D)</span><label  for="optvalDr" id="opt4r"></label><span class="checkmark1"></span>
                            	
                            	</div>
           </div>             	
                <div class="calculator hidediv" id="optionspanelC" >
				    <div class="calc-row">
				    <div class="intdispscreen">0123456789</div>
				  </div>
				  
				  <div class="calc-row">
				    <div class="button backspace">backspace</div>
				  </div>
				 
				 
				  <div class="calc-row">
				    <div class="button">1</div><div class="button">2</div><div class="button">3</div>
				  </div>
				  
				   <div class="calc-row">
				    <div class="button">4</div><div class="button">5</div><div class="button">6</div>
				  </div>
				  
				   
				  <div class="calc-row">
				    <div class="button">7</div><div class="button">8</div><div class="button">9</div>
				  </div>
				  
				  
				  <div class="calc-row">
				    <div class="button minus">-</div><div class="button zero">0</div><div class="button decimal">.</div>
				  </div>
				  
				  <div class="calc-row">
				    <div class="button clear-All">Clear All</div>
				  </div>
				</div>             	
               <!--  //////////////matrix question     -->       	
                  
						  <div id="optionspanelD" class="hidediv">
						<div class="row">	
							
							 <div class="col-md-12">
							 <div class="row">
							 <div class="col-md-2">
							<span style="font-weight: bold; float: right;">A)</span>
							</div>
							 <div class="col-md-2">
                       <input id="checkbox1P" value="P" class="optionChecks1" type="checkbox">
												<label for="checkbox1P">
													<span>P</span>
												</label>
												<span class="checkmark"></span>
                             </div>
							  <div class="col-md-2">
                        <input id="checkbox1Q" value="Q" class="optionChecks1" type="checkbox">
												<label for="checkbox1Q">
												<span>Q</span>
												</label>
												<span class="checkmark"></span>
                             </div>
							  <div class="col-md-2">
							 <input id="checkbox1R" value="R" class="optionChecks1" type="checkbox">
												<label for="checkbox1R">
												<span>R</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  <div class="col-md-2">
							 <input id="checkbox1S" value="S" class="optionChecks1" type="checkbox">
												<label for="checkbox1S">
													<span>S</span>
												</label>
												<span class="checkmark"></span>
							  </div><div class="col-md-2">
							  <input id="checkbox1T" value="T" class="optionChecks1" type="checkbox">
												<label for="checkbox1T">
													<span>T</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  </div>
							 </div> 
							 <div class="col-md-12">
							 <div class="row">
							 <div class="col-md-2">
							<span style="font-weight: bold; float: right;">B)</span>
							</div>
							 <div class="col-md-2">
                        <input id="checkbox2P" value="P" class="optionChecks2" type="checkbox">
												<label for="checkbox2P">
													<span>P</span>
												</label>
												<span class="checkmark"></span> </div>
							  <div class="col-md-2">
                        	<input id="checkbox2Q" value="Q" class="optionChecks2" type="checkbox">
												<label for="checkbox2Q">
													<span>Q</span>
												</label>
												<span class="checkmark"></span></div>
							  <div class="col-md-2">
							<input id="checkbox2R" value="R" class="optionChecks2" type="checkbox">
												<label for="checkbox2R">
													<span>R</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  <div class="col-md-2">
							 <input id="checkbox2S" value="S" class="optionChecks2" type="checkbox">
												<label for="checkbox2S">
													<span>S</span>
												</label>
												<span class="checkmark"></span>
							  </div><div class="col-md-2">
							   <input id="checkbox2T" value="T" class="optionChecks2" type="checkbox">
												<label for="checkbox2T">
													<span>T</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  </div>
							 </div> 
							 <div class="col-md-12">
							 <div class="row">
							 <div class="col-md-2">
							<span style="font-weight: bold; float: right;">C)</span>
							</div>
							 <div class="col-md-2">
                       <input id="checkbox3P" value="P" class="optionChecks3" type="checkbox">
												<label for="checkbox3P">
													<span>P</span>
												</label>
												<span class="checkmark"></span>  </div>
							  <div class="col-md-2">
                       <input id="checkbox3Q" value="Q" class="optionChecks3" type="checkbox">
												<label for="checkbox3Q">
													<span>Q</span>
												</label>
												<span class="checkmark"></span>  </div>
							  <div class="col-md-2">
							  	<input id="checkbox3R" value="R" class="optionChecks3" type="checkbox">
												<label for="checkbox3R">
													<span>R</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  <div class="col-md-2">
							  <input id="checkbox3S" value="S" class="optionChecks3" type="checkbox">
												<label for="checkbox3S">
													<span>S</span>
												</label>
												<span class="checkmark"></span>
							  </div><div class="col-md-2">
							  <input id="checkbox3T" value="T" class="optionChecks3" type="checkbox">
												<label for="checkbox3T">
													<span>T</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  </div>
							 </div> 
							 <div class="col-md-12">
							 <div class="row">
							 <div class="col-md-2">
							<span style="font-weight: bold; float: right;">D)</span>
							</div>
							 <div class="col-md-2">
                       <input id="checkbox4P" value="P" class="optionChecks4" type="checkbox">
												<label for="checkbox4P">
													<span>P</span>
												</label>
												<span class="checkmark"></span> </div>
							  <div class="col-md-2">
                       	<input id="checkbox4Q" value="Q" class="optionChecks4" type="checkbox">
												<label for="checkbox4Q">
													<span>Q</span>
												</label>
												<span class="checkmark"></span></div>
							  <div class="col-md-2">
							  <input id="checkbox4R" value="R" class="optionChecks4" type="checkbox">
												<label for="checkbox4R">
													<span>R</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  <div class="col-md-2">
							  <input id="checkbox4S" value="S" class="optionChecks4" type="checkbox">
												<label for="checkbox4S">
													<span>S</span>
												</label>
												<span class="checkmark"></span>
							  </div><div class="col-md-2">
							  <input id="checkbox4T" value="T" class="optionChecks4" type="checkbox">
												<label for="checkbox4T">
													<span>T</span>
												</label>
												<span class="checkmark"></span>
							  </div>
							  </div>
							 </div> 
							 </div>
						
							
						
					     	</div>
                            	</div>			   						
						</div>	
                         		 </div>			   						
						</div>
      </div>
   
   </div>
</div>                   					   						
						</div>
						<!-- <div class="report" >
							<a href="#"><i class="fa fa-arrow-circle-up fa-2x"></i></a>
				
						  <a href="" class="reportque" id="reportanerror"><i class="fa fa-window-close-o" aria-hidden="true"></i>&nbsp;Report Question as error</a>
						</div> -->
						
					
					</div>
					</div>
			<div  id="sidebox" class="col-md-3"  style="border: 1px solid silver;border-radius: 10px;border-left: 0;height: 82vh;" >
					<div class="row row1">
							<div class="col-md-3">
								<a href="#" data-toggle="collapse" data-target="#lang"><img id="img1" src=""></a>
								<!-- <div id="#lang" class="collapse in">Change Language</div> -->
							</div>
						<div class="col-md-6" style="margin-top: 21px;">
						<span id="namel"></span>		
							</div>
						</div>

						<div class="row" style="background-color: #8975c9; padding: 2%;">
							<p style="width: 100%;background-color: white;border-radius: 10px;padding: 7px;margin-bottom: 0%;font-weight: 400;color: #8975c9;" id="section_namedisplay">Section Name</p>	
						</div>
						<div class="row row3">
						<div class="row3_1"> Choose a Question</div><br>
						<div class="row3_2">
						<div class="row" id="section_ques_btn">
							</div>				
							</div>
							<div class="row4">
							
								 	<div class="row row4-1">
										<div class="col-md-5"><div class="tag" id="answeredtag"></div><img class="sideblockimages responsive" src="<%=request.getContextPath()%>/assets/images/exam/answered.png"><span class="answerrr">Answered</span></div>
										<div class="col-md-7"><div class="tag" id="unansweredtag"></div><img class="sideblockimages responsive" src="<%=request.getContextPath()%>/assets/images/exam/unanswered.png"><span class="answerrr">Not Answered</span></div>
																		 	
								 	</div>
								 	<div class="row row4-2">
										<div class="col-md-5"><div class="tag" id="notvisitedtag"></div><img class="sideblockimages responsive" src="<%=request.getContextPath()%>/assets/images/exam/notvisited.png"><span class="answerrr">Not Visited</span></div>
										<div class="col-md-7"><div class="tag" id="reviewtag"></div><img class="sideblockimages responsive responsive-circle" src="<%=request.getContextPath()%>/assets/images/exam/review.png"><span class="answerrr">Marked for Review</span></div>
								 	</div>
								 	<div class="row row4-3">
										<div class="col-md-12"><div class="tag" id="ansreviewtag"></div><img class="sideblockimages responsive responsive-circle" src="<%=request.getContextPath()%>/assets/images/exam/ansreview.png"><span class="answerrr">Answered and Marked for review</span></div>
										
																		 	
								 	</div>
								
								
								
							</div>
							<div class="row5">
								<a href="#" class="submit" id="submittques" >Submit</a>							
							</div>
					</div>
					</div>		
</div>
</div>
			<!-- <div id="footer" class="row mar-clr">-->

			<div class="col-9 col-sm-9 col-md-9 col-lg-9 col-xl-9">
				
				<div class="row" style="margin-bottom:6px;">
					<div class="col-5 col-lg-5 col-sm-5 col-xs-4 markk"><a href="#" class="button1" onclick="markNext()">Mark for Review & Next</a></div>
						<div class="col-4 col-lg-4 col-sm-4 col-xs-4 next"><a href="#" class="button3" id="savenext" onclick="increment()">Save & Next</a></div>
					<div class="col-3 col-lg-3 col-sm-3 col-xs-4 clear"><a href="#" class="button2" onclick="clearResponse()" style="/*float: right;*/">Clear Response</a></div>
				
				</div><br>
			</div>
			</div>
			
		<div class="row row-mar-bottom"><p></p></div>
			</div>
			<div class="container-fluid hidediv" id="summerypage">
    <div class="header"></div>
    <div class="container">
        <!-- header -->            
        <div id="header">
            <ul>
                <li><h3>Hello <span id="name2"> </span></h3></li>
                <li><img id="img2"  src=""></li>
            </ul>
            
        </div>
        </div>
        
        <!-- header -->

        <!-- table -->
       
            <div class="container" style="height: 75vh";>
        <div id="displaytable" >
         

        </div>
        <!-- table -->

        <!-- buttons informations -->
        <div id="infobtns">
 
           <table width="100%">
                <tr>
                    <td><img src="<%=request.getContextPath()%>/assets/images/exam/answered.png" alt=""><span class="centerText" id="totAns">8</span></td>
                    <td class="btndetails"><span>Answered</span></td>
                    <td><img src="<%=request.getContextPath()%>/assets/images/exam/unanswered.png" alt=""><span class="centerText" id="totunAns">18</span></td>
                    <td class="btndetails"><span>Not Answered</span></td>
                    <td><img src="<%=request.getContextPath()%>/assets/images/exam/notvisited.png" alt=""><span class="centerText" id="totnotvisited">28</span></td>
                    <td class="btndetails"><span>Not Visited</span></td>
                    <td><img src="<%=request.getContextPath()%>/assets/images/exam/review.png" alt=""><span class="centerText" id="totreview">8</span></td>
                    <td class="btndetails"><span>Marked for Review</span></td>
                    <td><img src="<%=request.getContextPath()%>/assets/images/exam/ansreview.png" alt=""><span class="centerText" id="totAnsreview">83</span></td>
                    <td class="btndetails"><span>Answered  and Marked For Review (will be considered for evaluation)</span></td>
                </tr>
            </table>
        </div>
        <!-- buttons informations -->

        <!-- final buttons -->
        <div id="buttons">
             <li><button id="backtoscreen" class="backers2 btn">Resume</button></li>
            <li><button class="btn" id="disableafter" onclick="submitt();">Submit And Confirm</button></li>
            <li><button class="btn" onclick="pauseTimer()">Pause and Save</button></li>
        </div>

        <br>
        
        <!-- final buttons -->
    </div>

<div class="footerStrip"></div>
<div class="modal" id="loader">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
       
        
        <!-- Modal body -->
        <div class="modal-body">
       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center" id="loaderimage" >
												
												</div>
        </div>
        
        <!-- Modal footer -->
        
      </div>
    </div>
  </div>
</div>
		
		
		</body>
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script> 
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/main.js"></script>

 <script src="<%=request.getContextPath()%>/assets/js/testscreenjs/screenfull.min.js"></script> 
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/testscreenjs/alertify.min.js"></script>
 <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>


<script>
 var name= "";
$(document).ready(function(){
	
	 
	/////// 
	 $("#optionspanelA").addClass("hidediv");
	 $("#optionspanelB").addClass("hidediv");
	 $("#optionspanelC").addClass("hidediv");
	getallquestions();
	
	
	 

	
	var studentid = atob(getParameterByName('studentid'));
			 var testPostId = atob(getParameterByName('id'))

	
	
	$.ajax({
		type:"GET",
	  dataType: "json",
	  contentType:'application/json', 
	  
	  url: base_url+'rest/student/v1/getstudentdetails/'+studentid,
	  success: function(data){ 
		  $("#namel").html(data[0].name);
		  $("#name2").html(data[0].name);
		   name= data[0].name;
		  if(data[0].photo!==""){
				 $("#img1").attr("src", data[0].photo); 
				 $("#img2").attr("src", data[0].photo); 
			 }else{
				 $("#img1").attr("src","<%=request.getContextPath()%>/assets/images/students/default.png"); 
				 $("#img2").attr("src","<%=request.getContextPath()%>/assets/images/students/default.png"); 
			 }
	  },
	  error:function(data){
		  alert("Getting student name failed!")
	  }
	}); 
	
	});
var direction = true;
$(".toggle-sidebar").click(function () {
	
	$("#sidebox").toggleClass("collapsed");
	
		//$("#arrowbutton").removeClass("fa-chevron-right");

	$("#content").toggleClass("col-md-12 col-md-9");
	$("#outer").css("width","1295px");
	$("#left-button").css("right","0%");
	$(".button2").css("left","140%");
	$(".button3").css("left","50%");
	$("#content").css("transition","width 2s");
	
	if(direction){
		$("#arrowbutton").removeClass("fa-chevron-right");
		$("#arrowbutton").addClass("fa-chevron-left");
		direction = false;
	} else{
		$("#outer").css("width","959px");
		$("#left-button").css("right","24.8%");
		$(".button2").css("left","0%");
		$(".button3").css("left","0%");
		$("#arrowbutton").removeClass("fa-chevron-left");
		$("#arrowbutton").addClass("fa-chevron-right");
		direction = true;
	}
	
	return false;
});
//
//
  $(function() {
       var print = function(msg) {
         alert(msg);
       };

       var setInvisible = function(elem) {
         elem.css('visibility', 'visible');
       };
       var setVisible = function(elem) {
         elem.css('visibility', 'visible');
       };

       var elem = $("#elem");
       var items = elem.children();

       // Inserting Buttons
      elem.prepend('<div id="right-button" style="visibility: visible;"><a href="#"><i class="fa fa-caret-left fa-2x" style="color: gray;" aria-hidden="true"></i></a></div>');
       elem.append('  <div id="left-button"><a href="#"><i class="fa fa-caret-right fa-2x" style="color: gray;" aria-hidden="true"></i></a></div>');

       // Inserting Inner
    items.wrapAll('<div id="inner" />'); 

       // Inserting Outer
       //debugger;
       elem.find('#inner').wrap('<div id="outer"/>');

       var outer = $('#outer');

       var updateUI = function() {
         var maxWidth = outer.outerWidth(true);
         var actualWidth = 0;
         $.each($('#inner >'), function(i, item) {
           actualWidth += $(item).outerWidth(true);
         });

         if (actualWidth <= maxWidth) {
           setVisible($('#left-button'));
         }
       };
       updateUI(); 
       
       
   

         $('#right-button').click(function() {
         var leftPos = outer.scrollLeft();
         outer.animate({
           scrollLeft: leftPos - 200
         }, 800, function() {
           //debugger;
           if ($('#outer').scrollLeft() <= 0) {
             setInvisible($('#right-button'));
           }
         });
       });

       $('#left-button').click(function() {
         setVisible($('#right-button'));
         var leftPos = outer.scrollLeft();
         outer.animate({
           scrollLeft: leftPos + 200
         }, 800);
       });

       $(window).resize(function() {
         updateUI();
       }); 
     }); 
 
  
  $(function() {
      var print = function(msg) {
        alert(msg);
      };

      var setInvisible = function(elem) {
    	  elempopup.css('visibility', 'visible');
      };
      var setVisible = function(elem) {
    	  elempopup.css('visibility', 'visible');
      };

      var elempopup = $("#elempopup");
      var itemspopup = elempopup.children();

      // Inserting Buttons
     elempopup.prepend('<div id="right-buttonpopup" style="visibility: visible;"><a href="#"><i class="fa fa-caret-left fa-2x" style="color: gray;" aria-hidden="true"></i></a></div>');
     elempopup.append('  <div id="left-buttonpopup"><a href="#"><i class="fa fa-caret-right fa-2x" style="color: gray;" aria-hidden="true"></i></a></div>');

      // Inserting Inner
   itemspopup.wrapAll('<div id="innerpopup" />'); 

      // Inserting Outer
      //debugger;
      elempopup.find('#innerpopup').wrap('<div id="outerpopup"/>');

      var outerpopup = $('#outerpopup');

      var updateUI = function() {
        var maxWidth = outerpopup.outerWidth(true);
        var actualWidth = 0;
        $.each($('#innerpopup >'), function(i, item) {
          actualWidth += $(item).outerWidth(true);
        });

        if (actualWidth <= maxWidth) {
          setVisible($('#left-buttonpopup'));
        }
      };
      updateUI(); 
      
      
  

        $('#right-buttonpopup').click(function() {
        var leftPos = outerpopup.scrollLeft();
        outerpopup.animate({
          scrollLeft: leftPos - 200
        }, 800, function() {
          //debugger;
          if ($('#outerpopup').scrollLeft() <= 0) {
            setInvisible($('#right-buttonpopup'));
          }
        });
      });

      $('#left-buttonpopup').click(function() {
        setVisible($('#right-buttonpopup'));
        var leftPos = outerpopup.scrollLeft();
        outerpopup.animate({
          scrollLeft: leftPos + 200
        }, 800);
      });

      $(window).resize(function() {
        updateUI();
      }); 
    }); 

  
	


	 </script>
	 
	 <script>
	
		$("#submittques").click(function(){
			
		 
		    updatereconformscreen();
		});

		$("#backtoscreen").click(function(){
			  $("#screentestpage").removeClass("hidediv");
			 $("#summerypage").addClass("hidediv");
			 $("body").addClass("fullscreen");
			    $("body").scrollTop(0);
			    resumetimerflag();
			
			   
		}); 
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
			        $("#maximize img").attr("src","<%=request.getContextPath()%>/assets/images/images/image.png");
			        $(".row3").css("height","87%");
			        
	
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
			        $("#maximize img").attr("src","<%=request.getContextPath()%>/assets/images/images/imageedit.png");
			        $(".row3").css("height","77%");
			         
		         
		   
			    }
			}
	</script>