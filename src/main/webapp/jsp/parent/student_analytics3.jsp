<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="parent" scope="session"  />

<%@include file="/jsp/master/default.jsp" %>
  <link href="<%=request.getContextPath()%>/assets/css/student/css/studentanalyatics.css" rel="stylesheet">
 <!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row" >
			<div class="col-xs-12 left">
			<span class="studentmsg">Hey <span id="student-name" class="studentname"></span>, check your Test analytics here..</span>
			</div> 
				<div class="col-sm-12">
					<div class="panel panel-default card-view" style="background-color:#f0f4f5">
						<div class="panel-heading">
							
							<div class="clearfix"></div>
							
							<div class="row" id="attemptexit">
							 <div class="col-xs-12 right">
							<a style="margin:0 auto;border-radius:20px;" id="exit" class="btn btn-danger">EXIT</a>
							
							 </div>
							</div>
							
							<div class="row" id="paperwiseexit" style="display:none;">
							 <div class="col-xs-12 right">
							<a href="<%=request.getContextPath()%>/jsp/student/PreviousyearsPapers/paperwise/paper-wise.jsp" style="margin:0 auto;border-radius:20px;" id="exit" class="btn btn-danger">EXIT</a>
							 </div>
							</div>  
							
						<div class="row mb-20" id="act">
						<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3  right" id="indiva">
						<a id="analyticsbtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/individualnewiconactive.svg" class="img-responsive icon-btn actives" style="width: 195px;border-radius: 20px;" alt="logo" ></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="compbtnhide">
						<a id="comparativebtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/comperativenewiconinactive.svg" class="img-responsive icon-btn" style="box-shadow: 0 1px 20px lightgray;width: 195px;border-radius: 20px;" alt="logo" ></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="topbtn">
								<a id="toppersbtn"
									href=""><img
									src="<%=request.getContextPath()%>/assets/images/students/summary/Toppers_Only Inactive.svg"
									class="img-responsive icon-btn"
									style="width: 217px; height: 70px; border-radius: 20px;"
									alt="logo"></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="collegepredit">
<a id="Collegepred" href="">
<img src="<%=request.getContextPath()%>/assets/images/students/summary/College predictor_Inactive_final.svg"
class="img-responsive icon-btn"
style="width: 217px; height: 70px; border-radius: 20px;"
alt="logo"></a>
</div>
						 </div>
						 <div class="row">
							<div class="col-md-12 col-md-offset-5">
								<ul class="nav nav-tabs keep" role="tablist">
									<li role="presentation" class="active"><a href="#summary"
										aria-controls="home" role="tab" data-toggle="tab">Summary</a></li>
								
										<li role="presentation"><a href="#subjectvsdifficulty"
										aria-controls="profile" role="tab" data-toggle="tab" onclick="getchapterwisesummery();">Chapter-Wise</a></li>
								</ul>
							</div>
						</div>
						 
						 <div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="summary">
						 
							<div class="row mb-0" style="padding:20px;">
								
								<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Test Name : <span id="testname"></span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Test type : <span id="testtype"></span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Date : <span id="testdate"></span></span>
							</div>
							</div>
							<!-- <div class="row mb-0" >
							<div class="col-xs-12  center">
							
							<span class=" bold">Your Marks: <span class=" sky_blue1 font-16"><span id="omarkss"></span>/<span id="totalms"></span></span></span>
						</div>
						</div> -->
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								 <div class="row mb-0" >
							<div class="col-xs-12  center">
							
							<i class="fa fa-thumbs-up" aria-hidden="true" style ="color:#09a275; font-size:xx-large;"></i> &nbsp; <span class=" txtmrks">Your Score: <span class=" sky_blue1 font-16"><span id="omarkss"></span>/<span id="totalms"></span></span></span>
						</div>
						</div>
								<div class="row mt-40  mb-30" style="background-color: #f0f4f5;">
									<div class="col-sm-8 col-sm-offset-2">
										<div  class="panel-body-pro">
											<span class="txtmrks">Cut-off : <span class="text_time_taken font-20" id="cutoff"></span> <span class="pull-right txtmrks">Your Score: <span class=" sky_blue1 font-16"><span id="omarks"></span>/<span id="totalm"></span></span></span></span>
											<div class="progress progress-lg mt-10">
												<div class="progress-bar progress-bar-success" style="width: 75%;" role="progressbar" id="pgbar"></div>
											</div>
											<!-- <span class="font-12 head-font txt-dark bold">No.of Students Qualified: <span class="text_negative_score font-16">N/A</span> -->
											<!-- <span class="pull-right bold font-16 text-success" id="qualified"></span> -->
											<div id="qualified"><p></p></div>
										</div>
									</div>
								</div>
								<br />
							
								  <div class="wow slideInRight" data-wow-duration="1s" id="freeaccess_div" style="visibility: visible; animation-duration: 1s; animation-name: slideInRight;">
            <a href="#" class="wobble-horizontal" id="freeaccess_btn" data-toggle="modal" data-target="#showmoreModal" data-backdrop="true">Show Paper</a>
        </div>
								
								
								<div class="row  mb-20 mt-20" >
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6  col-md-offset-2" id="performancediv">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																  box-shadow: 3px 5px 40px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height:418px;">
																   
											<div class="">
												<div class="center">
												
													<span id="idbefaft"  ><img src="<%=request.getContextPath()%>/assets/images/students/Performance.svg" alt="logo" class="imgstyle-2">  Performance</span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in performance-body">
												<div  class="panel-body">
													
													<div  class="row mb-20 ">
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Score.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Score</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><span class="performance-ele-txt"  id="totalMarks"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/-ve-Marks.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">-Ve marks</span></li>
													<li><span class="per-elem-style-sides-2">:</span></li>
													<li><span class="performance-ele-txt" id="negative"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Accuracy.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Accuracy %</span></li>
													<li><span class="per-elem-style-2">:</span></li>
													<li><span class="performance-ele-txt" id="accuracy"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/percentage.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Percentage</span></li>
													<li><span class="per-elem-style-2">:</span></li>
													<li><span class="performance-ele-txt" id="percentage"> </span></li>
													</ul>
													</div>
												
													<div  class="row mb-20">
														
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/Speed.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Speed</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><span class="performance-ele-txt" id="speed"> </span> <span class="per-elem-style"> Qns./Hr</span></li>
													</ul>
													</div>
													
													
													
												</div>
											</div>
											
											
											
										</div>
									</div>
									<div class= "col-lg-4 col-md-4 col-sm-6 col-xs-6 " id="viewqnshide">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																 box-shadow: 3px 5px 40px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height: 418px;">
											<div class="">
												<div class="center">
												<span id="idbefaft1"><img src="<%=request.getContextPath()%>/assets/images/students/ViewQuestions.svg" alt="logo" class="imgstyle-2">  View Questions</span>
													
												</div>
												<div class="clearfix"></div>
											</div>
											
													
													
													
													
											
													
														<div  class="panel-wrapper collapse in performance-body">
												<div  class="panel-body">
												<table>
											       <tr>
											       <td class="tblspc1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/attempted.png" class="avg-stdsimgs-style img-responsive"></td>
											       <td class="tblspc per-elem-style">Attempted</td>
											       <td class="tblspc">:</td>
											       <td class="tblspc"><span class="viewqnstext"><button class="btn attbtn" data-toggle="modal" data-target="#correctModal" onclick= "getCorrectQns(this,4,'')"><span   data-toggle="tooltip" title="Click To Check Your Attempted Questions"  id="attempted"></span></button></span></td>
											       </tr>
											       <tr>
											       <td class="tblspc1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Correct.png" class="avg-stdsimgs-style img-responsive"></td>
											       <td class="tblspc per-elem-style">Correct</td>
											       <td class="tblspc">:</td>
											       <td class="tblspc"><span class="viewqnstext"><button class="btn corrbtn" data-toggle="modal" data-target="#correctModal" onclick= "getCorrectQns(this,3,'')"><span   data-toggle="tooltip" title="Click To Check Your Correct Questions"  id="correctqns"></span></button></span></td>
											       </tr>
											       <tr>
											       <td class="tblspc1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Wrong.png" class="avg-stdsimgs-style img-responsive"></td>
											       <td class="tblspc per-elem-style">Wrong</td>
											       <td class="tblspc">:</td>
											       <td class="tblspc"><span class="viewqnstext"><button class="btn wrngbtn" data-toggle="modal" data-target="#correctModal" onclick= "getCorrectQns(this,11,'')"><span   data-toggle="tooltip" title="Click To Check Your wrong Questions"  id="wrongqns"></span></button></span></td>
											       </tr>
											       <tr>
											       <td class="tblspc1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Unattempted.png" class="avg-stdsimgs-style img-responsive"></td>
											       <td class="tblspc per-elem-style">UnAttempted</td>
											       <td class="tblspc">:</td>
											       <td class="tblspc"><span class="viewqnstext"><button class="btn unattbtn" data-toggle="modal" data-target="#correctModal" onclick= "getCorrectQns(this,5,'')" ><span   data-toggle="tooltip" title="Click To Check Your UnAttempt Questions"  id="unAttempted"></span></button></span></td>
											       </tr>
											        <tr>
											       <td class="tblspc1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/overtime.png" class="avg-stdsimgs-style img-responsive"></td>
											       <td class="tblspc per-elem-style">Over time Questions</td>
											       <td class="tblspc">:</td>
											       <td class="tblspc"><span class="viewqnstext"><button class="btn wrngbtn" data-toggle="modal" data-target="#correctModal" onclick= "getCorrectQns(this,6,'')"><span   data-toggle="tooltip" title="Click To Check Your Over time Questions"  id="overtime"></span></button></span></td>
											       </tr>
													</table>
												</div>
											</div>	
													
												
										</div>
									</div>
								</div>
								<div class="row mt-60">
									<div class="col-sm-8 col-sm-offset-2" style="padding-top: 30px;
																					background:#fff;	
																				   box-shadow: 3px 5px 40px grey;
																				    border-radius: 30px;">
										<div class="row">
										<div class="">
												<div class="center">
													<!-- <i id="idbefaft3" >Performance</i> -->
													<span id="idbefaft4"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/Difficulty-wise.png" alt="logo" class="imgstyle-2">  Difficulty Wise- Accuracy% &amp; Percentage%</span>
												</div>
												<div class="clearfix"></div>
											</div>
												
											<div class="col-lg-5 col-md-12 col-xs-12 col-sm-12">
											
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
														<div id="highcharts" class="morris-chart"></div>
													</div>
												</div>
											</div>
											 <div class="col-lg-7 col-md-12 col-xs-12 col-sm-12 diff-table">
											
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
												<table class="difftbl">
												  <tr>
												     <th></th>
												    <th style="border-top: 4px solid #FF69B4 " ><i class="fa fa-caret-down stripstyle-total" aria-hidden="true"></i><span >Total <br> Qns</span></th>
												    <th style="border-top: 4px solid #00a2e8;"><i class="fa fa-caret-down stripstyle-attmpt" aria-hidden="true"></i><span >Attempted <br> Qns</span></th>
												    <th style="border-top: 4px solid #3F48CC;"><i class="fa fa-caret-down stripstyle-unattmpt" aria-hidden="true"></i><span >UnAttempted <br> Qns</span></th>
												    <th style="border-top: 4px solid #FF6899;"><i class="fa fa-caret-down stripstyle-wrngqns" aria-hidden="true"></i><span >Wrong <br> Qns</span></th>
												    <th style="border-top: 4px solid #22B14C;"><i class="fa fa-caret-down stripstyle-crctqns" aria-hidden="true"></i><span >Correct <br> Qns</span></th>
												  </tr>
												
												  <tbody id="diffiTbody">
												  
												  </tbody>
												
												 
												</table>
												
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-30 mt-60" style="color:white; background-color: #f0f4f5;">
									<div class="col-sm-8 col-sm-offset-2" style="padding: 30px;
									    								background-color: #fff;
																				 box-shadow: 3px 5px 40px grey;
																				  border-radius: 30px;">
																				  
													<div class="">
												<div class="center">
												<span id="idbefaft-sub-wise"><img src="<%=request.getContextPath()%>/assets/images/students/Subject Wise-Performance.svg" alt="logo" class="imgstyle-2">  Subject-wise performance</span>
													
												</div>
												<div class="clearfix"></div>
											</div>							  
										<div class="table-wrap">
											<div class="table-responsive tblbrdrdius">
												<table id="std-summary-table" class="table display pb-30" >
													<thead style=" border: 2px solid #f5d164; color: #fff; background:#f5d164;">
														<tr>
															<td>Subject Name</td>
															<td>Score <br>(Attempted Qns)</td>
															<td>-Ve Marks<br> (Wrong Qns.)</td>
															<td>Unattempted <br>(Qns.)</td>
															<td>Over Time <br>(Qns.)</td>
															<td>Percentage %</td>
															<td>Accuracy %</td>
															<td>Speed (Qns./Hr.)</td>
															
														</tr>
													</thead>
													<tbody id="std-summary-tablebody" style="color: #333;font-weight: 500;">
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="row  mb-30 mt-60" id="timespenthide">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																   box-shadow: 3px 5px 40px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;">
																   
											<div class="">
												<div class="center">
													<!-- <i id="idbefaft3" >Performance</i> -->
													<span id="idbefaft3"  ><img src="<%=request.getContextPath()%>/assets/images/students/timespent.svg" alt="logo" class="imgstyle-2">  Time Spent on Each Subject</span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
											
													<div class="table-wrap">
									<div class="table-responsive">          
										  <table id="table-timespent" class="table borderless table-score">
										    <thead id="tablehead-timespent">
										      <tr>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Physics</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Chemistry</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Maths</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Biology</th>
										      </tr>
										    </thead>
										    <tbody id="timespent-tablebody" style="border-top: 3px solid #fff;">
										     <!--  <tr>
										        <td class="time1" >50min</td>
										        <td class="time2">60min</td>
										        <td class="time3">60min</td>
										        <td class="time4">100min</td>
										      </tr> -->
										    </tbody>
										  </table>
								   </div>
								   </div>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
						</div>
						
						
						       
						<div role="tabpanel" class="tab-pane" id="subjectvsdifficulty">
                            <%@include file="/jsp/parent/studentanalaytic_chapterwise.jsp"%>
							</div>
						</div>
					</div>	
				</div>
			</div>
			
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
			
			
			
			 <div class="modal fade" id="showmoredetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										
										<div class="modal-body">
											<form class="livezone_show_model">
												<div class="row mt-30">
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Number of Questions</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="noofquestions"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Test Time</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="testtime"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Unique Features of The Test</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="uniquefeau"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Paper Designed By</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="paperdesi"></p>
														</div>
													</div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
											</div>
									</div>
								</div>
							</div> 
							
														  
										<!-- view questions correct ans modal -->				  
														  
														  <div class="modal fade" id="correctModal" tabindex="-1" role="dialog" aria-labelledby="correctModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
											   <!-- <div class="modal-header">
														          <h4 class="modal-title"> Correct Questions</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div> -->
														   <div class="modal-header">
														        <h4 class="fonkar">Hey, <span id="individualallpopups"></span></h4>    
														        </div>      
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="attemptedModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1">
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="subjectsTabs">
																<li class="" role="presentation"></li>
																<li role="presentation" class="">Getting Subjects...</li>
																<li role="presentation" class=""></li>
															</ul>
															
															<div class="tab-content" id="CorrectquestionsContent">
															
																
															
															</div>
															
														</div>
														
													</div>
														
												</div>
										   	</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							 </div>
						   </div>
														  
														  
				
					<div class="modal fade" id="showmoreModal" tabindex="-1" role="dialog" aria-labelledby="showmoreModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
											  
												 <div class="modal-header">
														        <h4 class="fonkar">Hey, <span id="individualshowpaper"></span></h4>    
														        </div>		        
														        
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="showmoreModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1" >
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs">
															 <li class="" role="presentation"></li>
																<li role="presentation" class="">Getting...</li>
																<li role="presentation" class=""></li> 
															</ul>
															
															<div class="tab-content" id="questionsContents">
															
																
															
															</div>
															
														</div>
														
													</div>
														
												</div>
										   	</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							 </div>
						   </div>																
							
	</div>
	</div>
	
	<!-- /Main Content -->
	

	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
	 <!--<script src="<%=request.getContextPath()%>/assets/js/highcharts/export-data.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/highcharts/exporting.js"></script>-->
	 <script src="<%=request.getContextPath()%>/assets/js/highcharts/highcharts.js"></script>
	<script>
		$(document).ready(function(){
		
			  var LoginData = getLoginData();
			$("#student-name").html(LoginData.name); 
			$("#individualallpopups").html(LoginData.name);
			$("#individualshowpaper").html(LoginData.name);
			getStudentAnalyticsSummary();
			//getchapterwisesummery();
			showpaperques();
			var from = getParameterByName("from");
			var einsteinType = "";
			/*var ein = document.referrer;
			var parentredirect = base_url + "jsp/parent/einsteinanalaytics/einsteinsummary.jsp";
			var studentredirect = base_url + "jsp/student/einsteinanalaytics/einsteinsummary.jsp";
			var ps = document.referrer;
			var einsteinType = "";
			  if(ps === parentredirect || getParameterByName('einsteinType') === "parent"){
				  einsteinType="parent";
			  }else if(ps === studentredirect || getParameterByName('einsteinType') === "student"){
				  einsteinType="student";
			  }*/
			//$("#shopepertabs li").click();
			//$( "#tabs" ).tabs();
	if(einsteinType === ""){
		$("#analyticsbtn").attr("href",base_url+"jsp/parent/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid'));
		$("#comparativebtn").attr("href",base_url+"jsp/parent/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid'));
		$("#toppersbtn").attr("href",base_url+"jsp/parent/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid'));
		$("#Collegepred").attr("href",base_url+"jsp/parent/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid'));
	} else{
	$("#analyticsbtn").attr("href",base_url+"jsp/parent/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+from);
	$("#comparativebtn").attr("href",base_url+"jsp/parent/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+from);
	$("#toppersbtn").attr("href",base_url+"jsp/parent/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+from);
	$("#Collegepred").attr("href",base_url+"jsp/parent/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+from);
	}		

		});
			
(function(){
	var indiv = $("#indiva");
	var compbtnhide =$("#compbtnhide");
	var collegepredit = $("#collegepredit");
	var topbtn =$("#topbtn");
	var subwise =  getParameterByName('testtype');
	//var testtakenform = getParameterByName('type');
	if(subwise === "Subject-Wise Test" || subwise === "U3ViamVjdC1XaXNlIFRlc3Q="){
		topbtn.css("display","none");
		collegepredit.css("display","none");
	    compbtnhide.removeClass("col-lg-3 col-sm-3 col-md-3 col-xs-3").addClass("col-lg-6 col-sm-6 col-md-6 col-xs-6");
	    indiv.removeClass("col-lg-3 col-sm-3 col-md-3 col-xs-3").addClass("col-lg-6 col-sm-6 col-md-6 col-xs-6");
	    $("#analyticsbtn img").css("float","right");
	}else if(subwise === "Mock Test" || subwise === "TW9jayBUZXN0"){
		collegepredit.css("display","none");
		indiv.removeClass("col-lg-3 col-sm-3 col-md-3 col-xs-3").addClass("col-lg-4 col-sm-4 col-md-4 col-xs-4");
		compbtnhide.removeClass("col-lg-3 col-sm-3 col-md-3 col-xs-3").addClass("col-lg-4 col-sm-4 col-md-4 col-xs-4");
		topbtn.removeClass("col-lg-3 col-sm-3 col-md-3 col-xs-3").addClass("col-lg-4 col-sm-4 col-md-4 col-xs-4");
		$("#analyticsbtn img").css("float","right");
		$("#comparativebtn img").css("margin-left","120px");
	}
})();		
			
		
	</script>
	<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("act");
var btns = header.getElementsByClassName("icon-btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("actives");
    current[0].className = current[0].className.replace(" actives", "");
    this.className += " actives";
  });
}
//data-toggle for numbr

    $('[data-toggle="tooltip"]').tooltip();   

</script>
