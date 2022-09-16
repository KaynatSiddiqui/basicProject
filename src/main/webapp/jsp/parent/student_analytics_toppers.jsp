<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="AdminType" value="parent" scope="session" />


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

</style>

	<!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			<div class="row heading-bg">
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Student Analytics</span><span class="main_heading_theme_color"> TOP 10 TOPPER</span></h6>
							</div>
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
							<div class="col-xs-12 right">
								<a style="margin: 0 auto; border-radius: 20px;" id="exit" class="btn btn-danger">EXIT</a>
							</div>
							<div class="row mt-20" id="act">
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
						 <div class="row">
							<div class="col-md-12 tab-top col-md-offset-5">
								<ul class="nav nav-tabs" id="nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#overall"
										aria-controls="home" role="tab" data-toggle="tab">Overall</a></li>
									<li role="presentation"><a href="#subjecttab" id="subtab" aria-controls="profile" role="tab" data-toggle="tab">Subject</a></li>
								
								</ul>
							</div>
						</div>
						
						</div>
						 <div class="tab-content">
					    <div id="overall" class="tab-pane fade in active">
					     <div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="table-wrap">
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
								<div class="table-wrap">
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
													<th>Unattempted</th>
													<th>Percentage %</th>
													<th>Percentile</th>
													<th>Qns./ Hr.</th>
													
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
			<!-- /Row -->
			</div>
				<%@include file="/jsp/master/footer.jsp"%>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/parentjs/analytics.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/parentjs/student.js"></script>
    <script>
    $(document).ready(function() {
		getoveraltoppers();
		$( "#subtab" ).click(function() {
  getsubwise();
});
		/* $("#analyticsbtn").prop("href","student_analytics3.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid'));
		$("#comparativebtn").prop("href","comparitive_analytics.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid')); */
    				
		$("#analyticsbtn").attr("href",base_url+"jsp/parent/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#comparativebtn").attr("href",base_url+"jsp/parent/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#toppersbtn").attr("href",base_url+"jsp/parent/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
				$("#Collegepred").attr("href",base_url+"jsp/parent/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));

	});
    
 (function(){
	 var subwise =  getParameterByName('testtype');
	 if(subwise === "Mock Test" || subwise === "TW9jayBUZXN0"){
		 $("#Collegepreddiv").css("display","none");
	 }
 })();
    </script>
	