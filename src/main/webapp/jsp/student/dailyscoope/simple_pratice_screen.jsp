<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/dist/css/animate.css" rel="stylesheet">
 <link href="<%=request.getContextPath()%>/assets/css/dist/css/dailydose.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />
<style>
.wrapper.theme-1-active .navbar.navbar-inverse, .wrapper.theme-1-active .fixed-sidebar-left .side-nav
	{
	display: none;
}

.fixed-sidebar-left {
	display: none;
}

.page-wrapper {
	padding-top: 0;
}
/* .testna{
    margin-left: 11px;
    font-weight: 500;
    font-size: initial;
    color: #222;
} */
#testname {
	color: cornflowerblue;
	text-transform: capitalize;
}

.markings {
	color: #8975c9 !important;
	text-transform: capitalize;
	font-weight: 700;
	/* letter-spacing: 1px;*/
}

.calculator {
	position: relative;
	display: block-inline;
	width: 288px;
	margin: 0 auto;
}

.calc-row {
	text-align: center;
}

.button {
	cursor: pointer;
}

.clear-All {
	
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

.button.backspace {
	border: none;
	width: 107px;
	background-color: #00a1ff;
	border-radius: 9px;
	color: white;
	padding: 5px;
}

.button.clear-All {
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

#optionspanelB label, #optionspanelA label {
	margin-bottom: 0px;
}

input[type="checkbox"] {
	display: inline-block;
	opacity: 0;
	position: relative;
	cursor: pointer;
	z-index: 3;
	zoom: 1.5;
	margin-left: 3px;
	vertical-align: top;
}
input[type=checkbox] + label:active:before{
    transform: scale(0);
}
input[type=radio] + label:active:before{
    transform: scale(0);
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
	transition: 0.3s;
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
	z-index: 3;
	zoom: 1.5;
	margin-left: 3px;
	vertical-align: top;
	top: 50%;
	transform: translateY(-50%);
}

.checkmarkr {
	/*  left: 13px;
    height: 20px;
    width: 20px;
    background-color: #ced4da;
   position: absolute;
    top: 50%;
    transform: translateY(-50%); */
    /*  border: 0.1em solid green; */
	content: "\2714";
	
	border-radius: 0.2em;
	display: inline-block;
	width: 1.6em;
	height: 1.6em;
	padding-left: 0.3em;
	margin-right: 10px;
	vertical-align: bottom;
	color: transparent;
	padding-bottom: 1.4em;
	background-color: #e0dbdb;
	left: 13px;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	transition: .3s;
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
	left: 8px;
	top: 2px;
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
	z-index: 999999;
	margin-left: 0px;
	vertical-align: top;
	zoom: 1.5;
	top: 50%;
	transform: translateY(-50%);
}

.checkmark1 {
	/* position: absolute;   top: 4px;*/
	left: 13px;
	height: 20px;
	width: 20px;
	background-color: #ced4da;
	border-radius: 50%;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	transition: .3s;
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
	top: 2.2px;
	left: 2px;
	width: 14px;
	height: 14px;
	border-radius: 50%;
	background: green;
}

.labelbox {
	display: block;
	position: relative;
	margin-bottom
}

.hidediv {
	display: none;
}

.blockdiv {
	display: block;
}

#questionenter {
	padding-left: 0;
	margin-bottom: 12px;
	margin-top: -22px;
}

#questiondisplay {
	color: #333;
	font-weight: 600;
	font-size: 16px;
}

#optionspanelB div {
	margin-bottom: 10px;
	font-size: initial;
}

#optionspanelB label {
	margin-left: 6px;
}

.question_answered_correct {
	height: 28px;
	padding: 4px;
	height: 26px;
}

.chat-data {
	font-size: 500;
	display: flex;
	white-space: nowrap;
	padding-left: 10px;
}

.chat-data:hover {
	background: #e8e5e5 !important;
	border-radius: 11px;
	padding: 10px !important;
}
.chatbg2{
   /* background: #e8e5e5 !important; */
   background: red !important;
}
.chatbg{
    background: #e8e5e5 !important;
    border-radius: 11px;
}
.get_questions_list_div {
	padding-left: 2px;
	    box-shadow: 0px 2px 6px 4px silver;
}

#optionspanelA .flexer {
	margin-bottom: 11px;
}

#optionspanelA .flexer label {
	margin-left: 12px;
	
}

#optionspanelA .flexer label .mr-1 {
	margin-right: 10px;
}

#optionspanelB .flexer label .mr-1 {
	margin-right: 10px;
}

.fa-bookmark {
	display: none;
}

.page-wrapper {
	margin-left: 0 !important;
}

.testna {
	font-weight: 700;
	font-size: large;
	padding-left: 29px;
	/* margin-left: 12px; */
}

/* #mainContentScroll {
	height: 362px;
} */
#mainContentScroll {
    height: 440px;
}
.get_questions_list_div{
 height: 440px!important;
}
#mainContentScroll::-webkit-scrollbar {
	width: 4px;
}

#mainContentScroll::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}

#mainContentScroll::-webkit-scrollbar-thumb {
	background-color: darkgrey;
	outline: 1px solid slategrey;
}

.contentBody {
	padding: 13px 0px;
}

#passage {
	margin-bottom: 17px;
}

.point {
	cursor: not-allowed;
}

.forCorrectAns {
	/* background: #b3f3b3;
	padding: 10px;
	border-radius: 39px;
	transition: .5s; */
}

.forWrongAns {
	/* background: #f5a6a6;
	padding: 10px;
	border-radius: 39px;
	transition: .5s; */
}

.integerbgcorrect {
	/* background: #b3f3b3 !important; */
}

.integerbgwrong {
	/* background: #f5a6a6 !important; */
}
.forWrongAnsMatrix {
	/* background: #f5a6a6;
	padding: 10px;
	border-radius: 39px;
	transition: .5s;
	padding-bottom: 0;
	padding-right: 0;
	margin-bottom: 10px; */
}
.forCorrectAnsMatrix {
	/* background: #b3f3b3;
	padding: 10px;
	border-radius: 39px;
	transition: .5s;
	padding-bottom: 0;
	padding-right: 0;
	margin-bottom: 10px; */
}

.forX {
	float: right;
	margin-right: 18px;
	font-weight: 700;
	color: red;
	font-size: medium;
}

.activatelink {
	pointer-events: auto;
	cursor: cursor;
}

.disablelink {
	pointer-events: none;
	cursor: wait;
}

.optionChecks1, .optionChecks2, .optionChecks3, .optionChecks4 {
	transition: .5s;
}


.question_not_answered {
	margin-right: 7px !important;
	margin-left: 4px;
	height: 26px;
}

.question_wrongs_answered {
	/* background: #f5a6a6; */
	background: #7EC0EE;
	border-radius: 14px;
	padding: 3px;
	color: #fff;
	font-weight: bold;
	margin-right: 7px !important;
	margin-left: 4px;
	height: 26px;
}
.question_corrects_answered {
	/* background: #b3f3b3; */
	background: #7EC0EE;
	border-radius: 14px;
	padding: 3px;
	color: #fff;
	font-weight: bold;
	margin-right: 7px !important;
	margin-left: 4px;
	height: 26px;
}
.custom-tab-1{
    margin-bottom: -8px;
    margin-top: 2px !important;
}
#fin{
margin-bottom: 14px;
}
.btnlist{
    float: right;
    margin-top: -13px;
}
#subjectt_section li{
   background: #e0dada;
    border-radius: 10px;
    margin-bottom: 10px;
    text-transform: capitalize;
        letter-spacing: 0.5px;
}
#mainContentScroll{
    box-shadow: 0px 2px 6px 4px silver;
}
.row.heading-bg{
  margin-top:0!important;
}
.activatelink{
	pointer-events: auto;
	cursor: cursor;
}
.disablelink{
	pointer-events: none;
	cursor: wait;
}
 .get_questions_top_divv {
    background: #fff;
    border-radius: 12px;
    overflow-x: hidden;
}
#maximize{
}
#maximize i{
	color:darkblue;
}
#topdiv .col-md-1{
    margin-top: 9px;
    text-align: right;
}
footer{
display:none;
}
body{
overflow: hidden;
}
.smallscreen{
	heigh: 440px;
}
.fullscreen{
	height: 511px;
}

.act:hover {
	transform: scale(1,1);
}

#subjectt_section li:hover {
	transform: scale(1.2, 1.2);
}
</style>
<div class="page-wrapper" style="height:auto;">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg" id="topdiv">
			            <!-- <div class="col-sm-4 col-sm-offset-8 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15" id="maximize" onclick="max();"> <i class="zmdi zmdi-fullscreen text-white font-24"></i>
							</a>
						</div> -->
				<div class="col-sm-3 testna">Test Name : <span id="testname"></span> </div>
				<div class="col-sm-3" style="text-align: right;">
					<div class="">
						<span class="bold font-16 black"><i class="fa fa-clock-o fa-lg"></i> Time Spent : <span class="get_questions_timer" id="timercount"></span></span>
					</div>
				</div>
				<div class="col-md-5" id="fin">
							<div class="button-list btnlist">
								<a href="#" class="btn btn-exam_submit btn-sm"  onclick="submitt()" id="finish">FINISH</a>
							</div>
				</div>
				<div class="col-md-1">
							<a href="#" class="right inline-block full-screen mr-15" id="maximize" onclick="max();"> <i class="zmdi zmdi-fullscreen text-white font-24"></i>
							</a>
			    </div>
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row">
				<div class="col-sm-3">
					
				</div>
				<div class="col-sm-9">
					<div class="get_questions_top_divv" id="scrollhorisub">
						<div  class="tab-struct custom-tab-1 mt-10">
							<ul role="tablist" class="nav nav-tabs get_questions_tabs" id="subjectt_section">
							<!--   <button onclick="scrollWin(100, 0)">Scroll right</button><br><br> -->
							<!-- 	<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" href="#Tab_1">Physics</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Maths</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false">Chemistry</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false">Biology</a></li>
								<li role="presentation" class="item"><a  data-toggle="tab" role="tab" href="#Tab_5" aria-expanded="false">Zoology</a></li> -->
                            <!--   <button onclick="scrollWin(-100, 0)">Scroll left</button><br><br> -->
							</ul>
						<div class="paddles">
							<button class="left-paddle paddle btn btn-success" id="next_nav"><</button>
							<button class="right-paddle paddle btn btn-success" id="next_nav2">></button>
						</div>
					</div>
					</div>
				</div>
			</div>
			
			<div class="row mt-20">
				<div class="col-sm-3">
					<div class="get_questions_list_div">
						<div class="chat-box-wrap">
							<div>
								<div class="chatapp-nicescroll-bar get_qs">
									<ul class="chat-list-wrap">
										<li class="chat-list">
											<div class="chat-body" id="questionLestList">
											<!-- <a  href="javascript:void(0)"><div class="chat-data"><div class="pull-left mr-20 question_answered_correct">&nbsp; 1 &nbsp;</div><div class="user-data"><span class="name block capitalize-font">How many numbers of five digits</span></div><div class="clearfix"></div></div></a> -->
												<!-- <a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_answered_correct">&nbsp; 1 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a>
												<a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_answered_correct">&nbsp; 2 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a>
												<a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_answered_wrong">&nbsp; 3 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a>
												<a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_answered_wrong">&nbsp; 4 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a>
												<a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_not_answered">&nbsp; 5 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a>
												<a  href="javascript:void(0)">
													<div class="chat-data">
														<div class="pull-left mr-20 question_not_answered">&nbsp; 6 &nbsp;</div>
														<div class="user-data">
															<span class="name block capitalize-font">How many numbers of five digits</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</a> -->
												
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-9">
					<div class="get_questions_top_div" id="mainContentScroll">
						<div class="tab-content" id="myTabContent_7">
							<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
								<div class="contentBody">
								<!--  -->
								<div class="col-md-12">
								<p id="passage"></p>
								  </div>
								<!--  -->
									<div class="row">
										<div class="col-sm-1">
											<span class="bold font-16 text-dark">Q.No.<span id="questionnumber"></span></span>
										</div>
										<div class="col-sm-5 col-sm-offset-6" style="text-align: right">
											<span class="bold font-16 get_questions_q_type questype"></span>
										</div>
										<div class="col-sm-1">
											<a href="#"><i class="fa fa-bookmark fa-lg bookmark_icon"></i></a>
										</div>
									</div>
									
									<div class="row mt-10">
										<div class="question_main_div">
											<div class="question_div">
												<div  class="col-md-12" id="questionenter">
						                             <p id="questiondisplay"></p>
						                              
						                            </div>
											</div>
											
											<div class="">
											<!-- from here Options -->
												<div class="row">
		          <div id="optionspanelA" class="hidediv">
		       				 <div class="col-md-12 flexer">
							
                         <input type="checkbox"  id="optvalA" class="optionChecks" value="" name="dd"/><label for="optvalA" id="opt1"></label><span class="checkmarkr"></span>
                             </div> 
                             <div class="col-md-12 flexer">
                              <input type="checkbox"  id="optvalB" class="optionChecks" value="" name="ddd"/><label  for="optvalB" id="opt2"></label><span class="checkmarkr"></span>
                               </div>
                                <div class="col-md-12 flexer"><input type="checkbox"  id="optvalC" class="optionChecks" value="" name="dddd"/><label  for="optvalC" id="opt3"></label><span class="checkmarkr"></span>
                             </div>
                              <div class="col-md-12 flexer"><input type="checkbox"  id="optvalD" class="optionChecks" value="" name="dddd"/><label  for="optvalD" id="opt4"></label><span class="checkmarkr"></span>
                            	
                            	</div>
           </div>
                 <div id="optionspanelB" class="hidediv">
       				 <div class="col-md-12 flexer">
					
                              <input type="radio"  id="optvalAr" class="optionChecks" value="" name="dd"/><label for="optvalAr" id="opt1r"></label><span class="checkmark1"></span>
                              </div>  
                              <div class="col-md-12 flexer"> 
                              <input type="radio"  id="optvalBr" class="optionChecks" value="" name="dd"/><label  for="optvalBr" id="opt2r"></label><span class="checkmark1"></span> 
                              </div> 
                                 <div class="col-md-12 flexer"><input type="radio"  id="optvalCr" class="optionChecks" value="" name="dd"/><label  for="optvalCr" id="opt3r"></label><span class="checkmark1"></span>
                              </div> 
                              <div class="col-md-12 flexer"><input type="radio"  id="optvalDr" class="optionChecks" value="" name="dd"/><label  for="optvalDr" id="opt4r"></label><span class="checkmark1"></span>
                            	
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
                            	<!-- from here Options end div-->
											</div>
										</div>
									</div>
									
								</div>
							</div>
							<!-- <div  id="Tab_2" class="tab-pane fade" role="tabpanel">
								<div>
									<div class="row">
										<div class="col-sm-3">
											<span class="bold font-16 text-dark">Question No: 5</span>
										</div>
										<div class="col-sm-5 col-sm-offset-3">
											<span class="bold font-16 get_questions_q_type">Multi correct(M= +4, -Ve= -2)</span>
										</div>
										<div class="col-sm-1">
											<a href="#"><i class="fa fa-bookmark fa-lg bookmark_icon"></i></a>
										</div>
									</div>
									
									<div class="row mt-10">
										<div class="question_main_div">
											<div class="question_div">
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
												<br/>
												<br/>
												<br/>
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
											</div>
											
											<div class="">
												<div class="checkbox checkbox-success">
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox1" value="">
														<label for="checkbox1" class="">
															<span class="option_text">&nbsp; A &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox2" value="">
														<label for="checkbox2" class="">
															<span class="option_text">&nbsp; B &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox3" value="">
														<label for="checkbox3" class="">
															<span class="option_text">&nbsp; C &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox4" value="">
														<label for="checkbox4" class="">
															<span class="option_text">&nbsp; D &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mt-20 pull-right">
															<div class="pull-right">
																<a href="" class="report_as_error"><i class="fa fa-times-circle fa-lg"></i> Report Q, as error</a>
															</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div> -->
							<!-- <div  id="Tab_3" class="tab-pane fade" role="tabpanel">
								<div>
									<div class="row">
										<div class="col-sm-3">
											<span class="bold font-16 text-dark">Question No: 5</span>
										</div>
										<div class="col-sm-5 col-sm-offset-3">
											<span class="bold font-16 get_questions_q_type">Multi correct(M= +4, -Ve= -2)</span>
										</div>
										<div class="col-sm-1">
											<a href="#"><i class="fa fa-bookmark fa-lg bookmark_icon"></i></a>
										</div>
									</div>
									
									<div class="row mt-10">
										<div class="question_main_div">
											<div class="question_div">
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
												<br/>
												<br/>
												<br/>
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
											</div>
											
											<div class="">
												<div class="checkbox checkbox-success">
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox1" value="">
														<label for="checkbox1" class="">
															<span class="option_text">&nbsp; A &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox2" value="">
														<label for="checkbox2" class="">
															<span class="option_text">&nbsp; B &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox3" value="">
														<label for="checkbox3" class="">
															<span class="option_text">&nbsp; C &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox4" value="">
														<label for="checkbox4" class="">
															<span class="option_text">&nbsp; D &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mt-20 pull-right">
															<div class="pull-right">
																<a href="" class="report_as_error"><i class="fa fa-times-circle fa-lg"></i> Report Q, as error</a>
															</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div> -->
							<!-- <div  id="Tab_4" class="tab-pane fade" role="tabpanel">
								<div>
									<div class="row">
										<div class="col-sm-3">
											<span class="bold font-16 text-dark">Question No: 5</span>
										</div>
										<div class="col-sm-5 col-sm-offset-3">
											<span class="bold font-16 get_questions_q_type">Multi correct(M= +4, -Ve= -2)</span>
										</div>
										<div class="col-sm-1">
											<a href="#"><i class="fa fa-bookmark fa-lg bookmark_icon"></i></a>
										</div>
									</div>
									
									<div class="row mt-10">
										<div class="question_main_div">
											<div class="question_div">
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
												<br/>
												<br/>
												<br/>
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
											</div>
											
											<div class="">
												<div class="checkbox checkbox-success">
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox1" value="">
														<label for="checkbox1" class="">
															<span class="option_text">&nbsp; A &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox2" value="">
														<label for="checkbox2" class="">
															<span class="option_text">&nbsp; B &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox3" value="">
														<label for="checkbox3" class="">
															<span class="option_text">&nbsp; C &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox4" value="">
														<label for="checkbox4" class="">
															<span class="option_text">&nbsp; D &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mt-20 pull-right">
															<div class="pull-right">
																<a href="" class="report_as_error"><i class="fa fa-times-circle fa-lg"></i> Report Q, as error</a>
															</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div> -->
							<!-- <div  id="Tab_5" class="tab-pane fade" role="tabpanel">
								<div>
									<div class="row">
										<div class="col-sm-3">
											<span class="bold font-16 text-dark">Question No: 5</span>
										</div>
										<div class="col-sm-5 col-sm-offset-3">
											<span class="bold font-16 get_questions_q_type">Multi correct(M= +4, -Ve= -2)</span>
										</div>
										<div class="col-sm-1">
											<a href="#"><i class="fa fa-bookmark fa-lg bookmark_icon"></i></a>
										</div>
									</div>
									
									<div class="row mt-10">
										<div class="question_main_div">
											<div class="question_div">
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
												<br/>
												<br/>
												<br/>
												How many numbers of five digits can be made having exactly two iden cal digits? <br/>
												How many of these will have the repeated digits in consecu ve places?<br />
												(Mains - 2016, EAMCET - 2000)
											</div>
											
											<div class="">
												<div class="checkbox checkbox-success">
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox1" value="">
														<label for="checkbox1" class="">
															<span class="option_text">&nbsp; A &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox2" value="">
														<label for="checkbox2" class="">
															<span class="option_text">&nbsp; B &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox3" value="">
														<label for="checkbox3" class="">
															<span class="option_text">&nbsp; C &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mb-20">
														<input type="checkbox" name="radio" id="checkbox4" value="">
														<label for="checkbox4" class="">
															<span class="option_text">&nbsp; D &nbsp;</span> <span class="">45360, 18144</span>
														</label>
													</div>
													<div class="col-sm-12 mt-20 pull-right">
															<div class="pull-right">
																<a href="" class="report_as_error"><i class="fa fa-times-circle fa-lg"></i> Report Q, as error</a>
															</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div> -->
							
						</div>
					</div>
					<div class="row mb-100" id="bottomdiv">
						<div class="col-md-2">
							<div class="button-list">
								<a href="#" class="btn btn-exam_submit btn-sm" id="submittques">SUBMIT & NEXT</a>
							</div>
						</div>
						<div class="col-md-2 col-md-offset-3">
							<!-- <div class="button-list">
								<a href="#" class="btn btn-primary" id="next" onclick="increment();">Next</a>
							</div> -->
						</div>
						<div class="col-md-2 col-md-offset-3">
							<div class="button-list">
								<a href="#" class="btn btn-exam_skip btn-sm" onclick="incrementskip();">SKIP</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Row -->
		</div>
				<%@include file="/jsp/master/footer.jsp"%>
	</div>


	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/dailydose/dailyscoope.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/dailydose/main.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
<script>
/* $("#submittques").click(function(){
    updatereconformscreen();
}); */
	$("#submittques").click(function(){
		//submitSingleQues();
		increment();
	})
$(document).ready(function(){
	 $("#optionspanelA").addClass("hidediv");
	 $("#optionspanelB").addClass("hidediv");
	 $("#optionspanelC").addClass("hidediv");
	getallquestions();
	 var studentid = getParameterByName('studentid');
	 var testPostId = getParameterByName('id');
	 
	 var bodyheight = $(document).height();
	 
	 var topdiv = $("#topdiv").outerHeight(true);
	 
	 var bottomdiv = $("#bottomdiv").outerHeight(true);
	 
	 var minusdiv = topdiv + bottomdiv;
	 
	 var totaldiv = bodyheight - minusdiv;
	 
	 var viewheight = parseInt(totaldiv) -40;
	 
	 //$(".get_questions_list_div").css({height:viewheight})
	 
	 //$(".get_questions_top_div").css({height:viewheight})
	 
      sessionStorage.setItem("tabheight", viewheight);
	 //console.log(studentid);
	 //console.log(testPostId);
}); 
$(function() {
	
    $('#next_nav').click(function () {
    	
       $( "#subjectt_section li:first-child" ).css('margin-left','-=100px');
       /* $( "#subjectlist li:first-child" ).css('transition','margin 700ms'); */
    });
    $('#next_nav2').click(function () {
       $( "#subjectt_section li:first-child" ).css('margin-left','+=100px');
    });
    $("#subjectt_section li").click(function(){
    	$( this ).removeClass('active');
    })
  /*  $(".full-screen").click(function(){
	   $(".container-fluid").toggleClass("fullscreen");
   }) */
  
});

function mar(){
	setTimeout(function(){
		 var sub =  $("#subjectt_section .background").length;
		  if(sub < 8 ){
			  $('#next_nav, #next_nav2').addClass('disablelink');
		  }/* else{
			  $('#next_nav, #next_nav2').addClass('activatelink');
		  } */
	}, 4000);
}
mar();
/* var screenCount = 1;
$(document).keyup(function(e) {
    if (e.key === "Escape" || e.keyCode == 27) { // escape key maps to keycode `27`
    	screenCount += 1;
    	if((screenCount % 2) == 0){
    	 $(".get_questions_list_div, #mainContentScroll").removeClass("smallscreen");
   		 $(".get_questions_list_div, #mainContentScroll").addClass("fullscreen");
    	}else{
    		 $(".get_questions_list_div, #mainContentScroll").removeClass("fullscreen");
    		 $(".get_questions_list_div, #mainContentScroll").addClass("smallscreen")
    	}
   }
}); */ 

function max() {
    var isInFullScreen = (document.fullscreenElement && document.fullscreenElement !== null) ||
        (document.webkitFullscreenElement && document.webkitFullscreenElement !== null) ||
        (document.mozFullScreenElement && document.mozFullScreenElement !== null) ||
        (document.msFullscreenElement && document.msFullscreenElement !== null);
    /* if (!window.screenTop && !window.screenY) {
        alert('Browser is in fullscreen');
    } */
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
		 
		 //$(".get_questions_list_div").css({height:viewheight})
		 //$(".get_questions_top_div").css({height:viewheight})
		 //$(".get_questions_top_div").css("cssText", "height","440px !important");
		 //$(".get_questions_list_div").css("height","496px");
		 //$(".get_questions_list_div").css("cssText", "height","440px !important");
		 
		 $(".get_questions_list_div, #mainContentScroll").removeClass("smallscreen");
		 $(".get_questions_list_div, #mainContentScroll").addClass("fullscreen");
		/*  .get_questions_list_div{440px
				height: 496px!important;
		 } */

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
        //$("#maximize img").attr("src","/zomanttesting/assets/images/students/chapter_wise_images/screenmax.png");
        var totalheight = sessionStorage.getItem("tabheight");
		 //$(".get_questions_list_div").css({height:totalheight});
		// $(".get_questions_top_div").css({height:totalheight}); 
		 //$(".get_questions_top_div").css("cssText", "height", "511px !important");
		 //$(".get_questions_list_div").css("cssText", "height", "511px !important");
		 $(".get_questions_list_div, #mainContentScroll").removeClass("fullscreen");
		 $(".get_questions_list_div, #mainContentScroll").addClass("smallscreen");
		
		 
		 
    }
}
</script>
