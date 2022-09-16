<%@page import="com.zomant.util.AppConstants"%>

	<title>Zomant Question Screen</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<%=request.getContextPath()%>/assets/css/csstestscreen/style1.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/csstestscreen/bootstrap.css" rel="stylesheet">
	
	<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/font-awesome.min.css"> --%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.check-text{
	position: relative;
    top: -32px;
    font-size: 16px;
	}	
	/* #header{
	    height: 5vh !important;
	} */
	.ol-instructions li{
		margin-bottom: 0.4vh;
	}
	.ul-instructions li{
	margin-bottom: 1.2vh
	}
	a:hover{
	cursor:pointer
	}
	#sidebox{padding: 0;border-bottom: 10px solid #8975c9;}
		.bestLuck{
		width: 100%;
	    height: 100%;
	    border: 20px solid #9a00fb14;
	    height: 43vh;
		}
		.backers{
		 /* padding: 12px; */
		letter-spacing: 1px;
        font-weight: 600;
	    background-color: #fd6f85;
	    color: white;
	    border: 1px solid #b1b1b1c7;
			
		}	
		.backers1{
		padding: 8px;
         font-weight: 600;
	    background-color: #8874c8;
	    color: white;
	    border: 1px solid #b1b1b1c7;
		
		}
		/*#sidebar {
			min-height: 500px;
		}*/
		
		#content {
			/*background-color: lightyellow;*/
			    border-bottom: 10px solid #8975c9;
			-webkit-transition: width 0.3s ease;
			-moz-transition: width 0.3s ease;
			-o-transition: width 0.3s ease;
			transition: width 0.3s ease;
			border: 1px solid grey;
			/* border-bottom: none; */
			
		}
		
		.col-md-9 .width-12,
		.col-md-12 .width-9 {
			display: none; /* just hiding labels for demo purposes */
		}
		/*sidebox {
			//background-color: lightgrey;
			
			-webkit-transition: margin 0.3s ease;
			-moz-transition: margin 0.3s ease;
			-o-transition: margin 0.3s ease;
			transition: margin 0.3s ease;
		}*/
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
		
		#question{
		overflow: scroll;
	    height: 53vh;
	    margin-right: -15px;
	    padding-right: 0;
	    overflow-x: hidden;
	    text-align: justify;
		}
		 .quesrow{
		 margin-left:4%;
		 }
		#sidebox .row3_2 .col-md-3{
		max-width: 15%;
	    margin-bottom: 20px;
	    margin-left: 20px;
		}
		.row4 .row:first-child{
		margin-bottom:10px;
		margin-top:10px
		}
		.row4 .row:last-child{
		margin-top:10px
		}
		#sidebox .row1 .col-md-3{
		margin-bottom: 0px;
	    margin-left: 0px;
		}}
	.dropbtn{
	   position:relative;
	
	}
	
	.dropdown-content {
    display: none;
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
   left: 19px;
   top: -3px;
   z-index: 1000;
   /*background-color: #92AD40;*/
   padding: 5px;
   color: white;
   font-weight: bold;
}
	.tag1 {
   float: left;
   position: absolute;
   left: 4px;
  
   z-index: 1000;
   /*background-color: #92AD40;*/
   padding: 5px;
   color: white;
   font-weight: bold;
}
	.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
.sideblockimages {
       padding-left: 3px;
       height: 24px;
}
.answerrr{
font-size: 13px; padding-left: 6px;
}
.not-active {
  pointer-events: none;
  cursor: default;
  text-decoration: none;
  color: black;
}

#checker{
width:20px;
height:18px;
}

	</style>
<body style="overflow-x: hidden; overflow-y: hidden;" onload="getstudentname();">
<div class="container-fluid" >
		<div class="row">
			<div class="col-xl-12">
				
				<!-- Header Part -->
			<div id="header" class="row">
					<div class="col-xl-12 headerhead">
						
					</div>
				</div>
				<!-- END Header Part -->
			</div>
			
		<div class="col-xl-12">
			<div class="row">
				<div class="col-md-9"  id="content" style="border-bottom: 10px solid #8975c9;">
					<p><span style="font-weight: bold;font-family: -webkit-pictograph;font-size: 3vh;border-bottom: 2px solid;font-weight:bold">General Instructions</span></p>
					<ol class="ol-instructions" style="list-style-type:decimal; margin-left: 15px; height:67vh;font-size: 18px;">
						<!-- <li>Total duration of examination is 180minutes.</li> -->
						<li>The clock will be set at the server. The countdown timer in the top right corner of screen will display the remaining time available for you to complete the examination. When the timer reaches zero, the examination will end by itself. You will not be required to end or submit your examination.</li>
						<li>The Question Palette displayed on the right side of screen will show the status of each question using one of the following symbols:
							<ul class="ul-instructions" style="list-style-type:none;">
								<li><img src="<%=request.getContextPath()%>/assets/images/exam/answered.png" width="25px">"Answered" - You have answered the question.</li>
								<li><img src="<%=request.getContextPath()%>/assets/images/exam/unanswered.png" width="25px">"Not Answered" - You have not answered the question.</li>
								<li><img src="<%=request.getContextPath()%>/assets/images/exam/notvisited.png" width="25px">"Not Visited"- You have not  visited the question yet.</li>
								<li><img src="<%=request.getContextPath()%>/assets/images/exam/review.png" width="25px">"Marked for Review" - You have NOT answered the question, but have marked the question for review.</li>
								<li><img src="<%=request.getContextPath()%>/assets/images/exam/ansreview.png" width="25px">"Answered and Marked for Review"- The question(s) "Answered and Marked for Review" will be considered for evaluation.</li>
								<li>&emsp;&emsp;The Marked for Review status for a question simply indicates that you would like to look at that question again.</li>
							</ul>
						</li>
						<li>You can click on the "&gt;" arrow which appears to the left of question palette to collapse the question palette thereby maximizing the question window. To view the question palette again, you can click on ">" which appears on the right side of question window.</li>
						<%-- <li>You can click on your "Profile" image on top right corner of your screen to change the language during the exam for entire question paper. On clicking of Profile image you will get a drop-down to change the question content to the desired language.</li>
						<li>You can click on <img src="<%=request.getContextPath()%>/assets/images/exam/ardown.png" width="25px"> to  navigate to the bottom and <img src="<%=request.getContextPath()%>/assets/images/exam/arup.png" width="25px"> to navigate to the top of the question area, without scrolling.</li>
					 --%></ol>
					<br/>
					
					
					<div class="col-xl-12">
					<p class="check-text" style="color:#e84562"><input type="checkbox" id="checker" checked> I have understood and read all the instructions....................................</p>
			            <div id="footer" class="row">
							<div class="col-md-10">
								<div class="row row1">
									<div class="col-md-1 offset-1"><a href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_active_full_mocks.jsp" class="backers btn"> Back</a></div>
									<div class="col-md-3 offset-3"><button  onclick="taketest();" id="examm" class="backers1 btn">I am ready to begin</button></div>
									<div class="col-md-1 offset-3"><a href="<%= AppConstants.BASE_URL %>student/livezone/live_zone_active_full_mocks.jsp" class="backers btn">Cancel</a></div>
								</div>
							
							</div>
							
					</div>				
					</div>
						
						
				</div>
					
			<div  id="sidebox" class="col-md-3">
					<div class="row row1">
						<div class="col-md-3 offset-1 ml-3 mt-3">
							<a href="#" data-toggle="collapse" data-target="#lang"><img id="img" src=""></a>
							<!-- <div id="#lang" class="collapse in">Change Language</div> -->
						</div>
						<div class="col-md-8 mt-4" style="font-size:3vh">
						<span id="nme"></span>		
						</div>
					</div>
					<img src="<%=request.getContextPath()%>/assets/images/exam/bstluck.png" class="bestLuck">
						
							<!-- <div class="row5">
								<a href="#" class="submit">Submit</a>							
							</div> -->
					</div>
					</div>		
</div>
</div>
			<!-- <div id="footer" class="row mar-clr">-->

			
		</div>
	
		
		
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/testscreenjs/bootstrap.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/popper.js"></script>
   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script>
function taketest(){
	var id = getParameterByName('testid');
	var studentid = getParameterByName('studentid');
	var status = getParameterByName('status');
	var missed = getParameterByName('missed');
	var encodedid = btoa(id);
	var encodedstuid = btoa(studentid);
	var checkBox = document.getElementById("checker");
	var examtypeMSF = getParameterByName('type');
	var encodedexamtypeMSF = btoa(examtypeMSF);
	console.log(encodedexamtypeMSF);
	 if (checkBox.checked == true){
		 
		 if(status=="true"){
				alert("already test was taken take another test");
				 window.location = base_url +"jsp/student/student module/live_zone_active_full_mocks.jsp";
				
			}else{
         if(missed !== "" && missed !==null&& missed !== undefined){
	window.location = base_url+"jsp/questionsscreen/screentest.jsp?id="+encodedid+"&studentid="+encodedstuid+"&missed="+missed+"&examType="+encodedexamtypeMSF;
	}else{
				window.location = base_url+"jsp/questionsscreen/screentest.jsp?id="+encodedid+"&studentid="+encodedstuid+"&examType="+encodedexamtypeMSF;
			}
           }
	 }else{
		alert('please accept all instructions to Write Exam');
	 }
	
}

/* $("#checker").click(function(){
	 var checkBox = document.getElementById("checker");
	    
	    if (checkBox.checked == true){
	    	$(".backers1").removeClass("disabled");
	    } else {
	    	$(".backers1").addClass("disabled");
	    }
	
		
	
})
 */
function getstudentname(){
	var studentid = getParameterByName('studentid');
	$.ajax({
		url: base_url+'rest/student/v1/getstudentdetails/'+studentid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			 $("#nme").html(data[0].name);
			 if(data[0].photo!==""){
				 $("#img").attr("src", data[0].photo); 
			 }else{
				 $("#img").attr("src","/assets/images/students/default.png"); 
			 }
			
			},
		error:function(data){
			alert("student details not founds");
		}
		});
	
}
</script>
		
	</body>


	</html>