<%@page import="com.zomant.util.AppConstants"%>

	<title>Zomant Question Screen</title>
<link href="<%=request.getContextPath()%>/assets/css/csstestscreen/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet">
	<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/font-awesome.min.css"> --%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12">
				
				<!-- Header Part -->
			<div id="header" class="row">
					<div class="col-xl-12 headerhead">
						<div class="row headRow no-gutters">
							<div class="col-md-4">
								<div class="pt-2 mock">Mock Test - 1</div>
							</div>
							<div class="col-md-5">
								<div class="pt-2 timer">Time Left:- 179:59</div>
							</div>
							<div class="col-md-3 ">
								<div class="row quesrow">
									<div class="col-md-3 pt-2 pb-1 ">
										<div>
											<a href="#" class="quesbtn"><i class="fa fa-file-text-o" aria-hidden="true">&nbsp;QuestionPaper</i></a>
										</div>
									</div>
									<div class="col-md-3 offset-2 pt-2 pb-1">
									<div>
										<a href="#" class="instbtn"><i class="fa fa-info-circle text-danger" aria-hidden="true">&nbsp;Instructions</i></a>
									</div>
								</div>
									<!-- <div id="maximize" class="col-md-3 offset-1 pt-1 pb-1">
										<a href="#" class="" id="minmax"><img src="images/fullscreen.png" width="15" height="15" alt=""></a>
									</div> -->
								</div>
							</div>
						</div>						
					</div>
				</div>
				<!-- END Header Part -->


				
				<div class="row" id="padtop">
					<!-- Main Box -->
					<div  id="mainbox" class="col-md-9">
					<div id="elem">
<div class="container-fluid">
  <label class="background  "> <a href="#" class="hvrclr">PHY SEC1</a><i class="fa fa-info-circle" aria-hidden="true"></i> </label>
 
  <label class="background"> <a href="#" class="hvrclr" >PHY SEC1</a> <i class="fa fa-info-circle" aria-hidden="true"></i></label>
   
  <label class="background">  <a href="#" class="hvrclr">PHY SEC3</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
 
	
  <label class="background" ><a href="#" class="hvrclr">CHEM SEC1</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
   
  <label class="background"> <a href="#" class="hvrclr">CHEM SEC2</a><i class="fa fa-info-circle" aria-hidden="true"></i></label> 
 
  <label class="background"> <a href="#" class="hvrclr">CHEM SEC3</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
	
  <label class="background"><a href="#" class="hvrclr">MATH SEC1</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
 
  <label class="background"><a href="#" class="hvrclr">MATH SEC2</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
  
	 <label class="background"><a href="#" class="hvrclr">MATH SEC3</a><i class="fa fa-info-circle" aria-hidden="true"></i></label>
</div>
</div>
						
						<div class="questionNo">
							Question No&nbsp;&nbsp;<span id="questionnumber"></span>
							<span class="markings">Multi Correct (M= +4, -Ve= -2)&emsp;<a href="#"><i class="fa fa-bookmark" style="width: 20px; color: #3c489a"></i></a>&emsp;</span>
							
						</div>
						<div>
								
								<a href="#b"><i class="fa fa-arrow-down"></i></a>
							</div><br>

							<div class="question">
							<div id="questionenter" >
                             <span id="questiondisplay"></span>
                            </div>		
                           <div class="options">
                              <p ><input type="checkbox" name="checkbox"><span id="opt1"></span></p>
                              <p ><input type="checkbox" name="checkbox"><span id="opt2"></span></p>
                              <p ><input type="checkbox" name="checkbox"><span id="opt3"></span></p>
                              <p ><input type="checkbox" name="checkbox"><span id="opt4"></span></p>
                            </div>						   						
						</div>
						<div class="report" >
							<a href="#"><i class="fa fa-arrow-up"></i></a>
				
						  <a href="" class="reportque"><i class="fa fa-window-close-o" aria-hidden="true"></i>&nbsp;Report Question as error</a>
						</div>
						<div></div>
					</div>
					<!-- Main Box Ends here -->
					<!-- Side Box -->
					<div id="sidebox" class="col-md-3">
	 					
						<div class="row row1">
							<div class="col-md-3">
								<a href="#" data-toggle="collapse" data-target="#lang"><img src="/assets/images/images/dummy.jpg"></a><br>
								<div id="#lang" class="collapse in">Change Language</div>
							</div>
							<div class="col-md-9">
								<span>Vijay Chauhan</span>
							</div>
						</div>

						<div class="row row2">
							<p>Section Name</p>	
						</div>

						<div class="row row3">
							<div class="row3_1">Choose a question</div><br>
							<div class="row3_2">
								
								<div class="row">

<div class="col-md-3"><a href="#" class="btn btn-secondary" style="margin-bottom: 5px;">1</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">2</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">3</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">4</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">5</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary" style="margin-bottom: 5px;">6</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">7</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">8</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">2</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">3</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">4</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">5</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary" style="margin-bottom: 5px;">6</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">7</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">2</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">3</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">4</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary"  style="margin-bottom: 5px;">5</a></div>
<div class="col-md-3"><a href="#" class="btn btn-secondary" style="margin-bottom: 5px;">6</a></div>
								
											
							</div>
					</div>
							<div class="row4">
								<table>
									<tr>
										<td><img>Answered</td>
										<td><img>Not Answered</td>
									</tr>
									<tr>
										<td><img>Not Visited</td>
										<td><img>Marked for Review</td>
									</tr>
									<tr>
										<td><img>Answered and Marked for review</td>
									</tr>
								</table>
							</div>
							<div class="row5">
								<a href="#" class="submit">Submit</a>							
							</div>
						</div>
					</div>
					<!-- Side Box Ends here-->
				</div>			
			</div>
		</div>
		<div id="footer" class="row mar-clr">

			<div class="col-md-10">
				
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><a href="#" class="button1">Mark for Review & Next</a></div>
					<div class=" col-lg-3 col-md-3 col-sm-3 col-xs-3"><a href="#" class="button2">Clear Response</a></div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 offset-3"><a href="#" class="button3" onclick="increment()">Save & Next</a></div>
				</div>
			
			</div>
				<div class="col-md-2 pt-3 ">
					&copy; 2018 Zomant
				</div>
		</div>				
	</div>

<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/main.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/popper.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/screenfull.min.js"></script>


<script>

$(document).ready(function(){
	getallquestions();
	});
	
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
       elem.prepend('<div id="right-button" style="visibility: hidden;"><a href="#"><i class="fa fa-caret-left" aria-hidden="true"></i></a></div>');
       elem.append('  <div id="left-button"><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i></a></div>');

       // Inserting Inner
       items.wrapAll('<div id="inner" />');

       // Inserting Outer
       debugger;
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
           debugger;
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
	 </script>
