<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="AdminType" value="student" scope="session" />


<%@include file="/jsp/master/default.jsp"%>

<style>
nav, .fixed-sidebar-left{
display:none;
}
.zmdi{display:none;}
 .slimScrollDiv{display:none;} 
 .fixed-sidebar-left{display:none;} 
 .navbar-fixed-top{display:none;}
#nav-tabs .active a{
color: black;
    border-bottom: 2px solid deepskyblue;
    font-weight: 500;
}
.studentname{
font-size:20px;
color: #09a275;
}
.studentmsg{
font-size:15px;
color:#FF7F27;
}

.thickbox-open{

	 -webkit-filter: blur(2px);
  -moz-filter: blur(2px);
  -ms-filter: blur(2px);
  -o-filter: blur(2px);
  filter: blur(2px); 
   pointer-events: none;
}
</style>

	<!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			
			
			<div class="row">
			<div class="col-xs-6 left">
			<span class="studentmsg">Hey <span id="student-name" class="studentname"></span>, check your Test analytics here..</span>
			</div> 
			 <div class="col-xs-6 right">
							 <a id="exit"  style="margin:0 auto;border-radius:20px;" class="btn btn-danger">EXIT</a>
							 </div>
				<div class="col-sm-12">
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							
							
							<div class="clearfix"></div>
							
							<div class="row" id="act">
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3  right">
								<a id="analyticsbtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/individualnewiconinactive.svg" class="img-responsive icon-btn" style="width: 195px; border-radius: 20px;" alt="logo"></a>
							</div>
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="compbtnhide">
								<a id="comparativebtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/comperativenewiconinactive.svg" class="img-responsive icon-btn" style=" width: 195px; border-radius: 20px;" alt="logo"></a>
							</div>
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
								<a id="toppersbtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/Toppers_Only Active.svg" class="img-responsive icon-btn actives" style="width: 217px;margin-bottom: 27px;height: 70px;" alt="logo" title=""></a>
							</div>
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="Collegepreddiv">
								<a id="Collegepred" href=""> <img
									src="<%=request.getContextPath()%>/assets/images/students/summary/College predictor_Inactive_final.svg"
									class="img-responsive icon-btn"
									style="width: 217px; height: 70px; border-radius: 20px;"
									alt="logo"></a>
							</div>
						</div>
							 <div  id="blur"> 
						
						 <div class="row">
							<div class="col-md-12 tab-top col-md-offset-5">
								<ul class="nav nav-tabs" id="nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#overall"
										aria-controls="home" role="tab" data-toggle="tab">Overall</a></li>
									<li role="presentation"><a href="#subjecttab" id="subtab" aria-controls="profile" role="tab" data-toggle="tab">Subject</a></li>
								
								</ul>
							</div>
						</div>
						
					
						 <div class="tab-content">
					    <div id="overall" class="tab-pane fade in active">
					     <div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="table-wrap" style="box-shadow: 0px 0px 18px grey;background-color: white;border-radius: 30px;padding: 20px;margin-top:20px;">
									<div class="table-responsive">
										<!-- <table id="datable_1" class="table display pb-30" >table-striped -->
										<table id="overalltable" class="table display pb-30" >
											
												
											
											
												
												
										
										</table>
									</div>
								</div>
							</div>
							
						</div>
					    </div>
						    <div id="subjecttab" class="tab-pane fade in">
							<div class="panel-wrapper collapse in">
							<div class="panel-body">
							<ul class="nav nav-tabs" role="tablist" id="tabsub" style="padding-bottom: 8px;">
										<!--<li role="presentation" class="active"><a href="#all"
											aria-controls="home" role="tab" data-toggle="tab">All</a></li>
										<li role="presentation"><a href="#Physics"
											aria-controls="profile" role="tab" data-toggle="tab">Physics</a></li>
										<li role="presentation"><a href="#Chemistry"
											aria-controls="profile" role="tab" data-toggle="tab">Chemistry</a></li>
										<li role="presentation"><a href="#Maths"
											aria-controls="profile" role="tab" data-toggle="tab">Maths</a></li>-->
									</ul>
								<div class="table-wrap" style="box-shadow: 0px 0px 18px grey;background-color: white;border-radius: 30px;padding: 20px;margin-top:20px;">
									<div class="table-responsive">
										
										<table id="" class="table display pb-30" >
											<thead class="th_background">
												<tr>
												<th></th>
												    <th>Photo</th>
													<th>Student Name</th>
													<th>Subject RANK</th>
													<th>AIR</th>
													<th>Total Marks</th>
													<th>-ve Marks</th>
													<th>Unattempted (qns)</th>
													<th>Percentage %</th>
													<th>Accuracy</th>
													<th>Percentile</th>
													<th>speed <br>(Qns./ Hr.)</th>
													
												</tr>
											</thead>
											<tbody id="subtoppers">
												
												
												
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
			</div>
			<!-- /Row -->
			</div>
				<%@include file="/jsp/master/footer.jsp"%>
				
					<a href="#" id="toperpopup" style="visibility: hidden" data-toggle="modal" data-target="#toppersmodal" data-backdrop="true">Check</a>
				 <div  class="modal fade" id="toppersmodal" >
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														        <h4 class="fonkar">Hey,<span id="topperspopup"></span></h4>
														          <h4 class="modal-title text-center">Toppers</h4>
														        <!--   <button type="button" class="close" data-dismiss="modal">&times;</button> -->
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="topperserror" style="font-size:24px; color:darkcyan;">
														            
														            
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														         <button type="button" class="btn btn-danger" data-dismiss="modal" >Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script>
    $(document).ready(function() {
		 var LoginData = getLoginData();
		$("#student-name").html(LoginData.name); 
		getoveraltoppers();
		$( "#subtab" ).click(function() {
  getsubwise();
 
});
		/* $("#analyticsbtn").prop("href","student_analytics3.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid'));
		$("#comparativebtn").prop("href","comparitive_analytics.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid')); */
    				
		$("#analyticsbtn").attr("href",base_url+"jsp/student/student module/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#comparativebtn").attr("href",base_url+"jsp/student/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#toppersbtn").attr("href",base_url+"jsp/student/student module/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#Collegepred").attr("href",base_url+"jsp/student/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));

	});
    
 (function(){
	 var subwise =  getParameterByName('testtype');
	 if(subwise === "Mock Test" || subwise === "TW9jayBUZXN0"){
		 $("#Collegepreddiv").css("display","none");
	 }
 })();
 
 $(".livezone_toppers").hover(function(){
	 $(".tooltiptext").css("visibility","visible");
 })
 $(".livezone_toppers").hover(function(){
	 $(".tooltiptext").css("visibility","hidden");
 })
    </script>
	