<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="AdminType" value="student" scope="session" />


<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/student/css/collgepredictor.css" rel="stylesheet">

<style>
.navbar-fixed-top{
	display:none;
}

.fixed-sidebar-left{
	display:none;
}

</style>
<!-- Main Content -->
<div class="page-wrapper comppage" style="background-color: #f0f4f5"
	style="background-color:gray!important">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
		<div class="col-xs-12 left">
			<span class="studentmsg">Hey <span id="student-name" class="studentname"></span>, check your College prediction here..</span>
			</div> 
			<div class="col-sm-12">
				<div class="panel panel-default card-view"
					 style="background-color:#f0f4f5">
					<div class="panel-heading">
				
						<div class="clearfix"></div>
						
						<div class="row">
							 <div class="col-xs-12 right">
							 <a id="exit"  style="margin:0 auto;border-radius:20px;" class="btn btn-danger">EXIT</a>
							 </div>
							</div>
							</div>
							
						<div class="row mb-20">
						<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3  right">
						<a id="analyticsbtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/individualnewiconinactive.svg" class="img-responsive icon-btn" alt="logo" width="190px" ></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
						<a id="comparativebtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/comperativenewiconinactive.svg" class="img-responsive imgstyle2 icon-btn actives" width="195px" alt="logo"></a>
							</div>		
						<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
						<a id="toppersbtn" href=""><img src="<%=request.getContextPath()%>/assets/images/students/summary/Toppers_Only Inactive.svg" class="img-responsive icon-btn"  width="190px"
									alt="logo"></a>
							</div>
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left" id="Collegepreddiv">
								<a id="Collegepred" href="">
								<img src="<%=request.getContextPath()%>/assets/images/students/summary/College-predictor_Active_final.svg"
									class="img-responsive icon-btn"
									 width="190px"
									alt="logo"></a>
							</div>
						 </div>
						 
						 
						 
						 
						 
						 
						 	<div class="col-md-12 mt-20" id="getcoldetails">
							<ul class="nav nav-tabs adjust" role="tablist" id="Showtabs">
								
								
								
							</ul>
							
							<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="india">
					
					
					</div>
					<div role="tabpanel" class="tab-pane " id="homestate">
					
					</div>
					</div>
							
							</div>
						 
						 
						 
						 
						 
						 
						
						 
						 </div>
						 </div>
						 </div>
						 </div>
						 							
<div class="modal fade"  id="norankpopup" tabindex="-1" role="dialog" aria-labelledby="wasteexam">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="stdname"></span></h4>
											   </div>
											<div class="modal-body" id="hvrmsg">
											<p>You have got </p>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
						 </div>
						 
<div class="modal fade" id="collpopup" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have got <span class="rankmarks" style="color:orange;"></span> marks in this exam</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Rank not available for this Marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>
		  
		  
 <div class="modal fade" id="collpopup2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have got <span class="rankmarks" style="color:orange;">
</span> rank</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Top colleges not available for this marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>  				
		  
		<a href="#" id="collpopup" style="visibility: hidden" data-toggle="modal" data-target="#collegepredictormodal" data-backdrop="true">Check</a>	  
		  
		   <div  class="modal fade" id="collegepredictormodal" >
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														        <h4 class="fonkar">Hey,<span id="comparitvepopup"></span></h4>
														          <h4 class="modal-title text-center">College Predictor</h4>

														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupcomparitveerror" style="font-size:24px; color:darkcyan;">
														            <span>You have missed this test you can't view the Toppers please take active test to view toppers</span>
														            
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														         <button type="button" class="btn btn-danger" data-dismiss="modal" >Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>	
				 <div  class="modal fade" id="collegpremodal" >
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														        <h4 class="fonkar">Hey,<span class="studname"></span></h4>
														          <h4 class="modal-title text-center">College Predictor</h4>
														        <!--   <button type="button" class="close" data-dismiss="modal">&times;</button> -->
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="topperserror" >
														            <p style="line-height:1.8em;font-size:24px;color:darkcyan;">You have missed this test you can't view the college predictor Please take active test to view college predictor.</p>
														            
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														         <button type="button" class="btn btn-danger" data-dismiss="modal" >Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>											  
														  		 
			<%@include file="/jsp/master/footer.jsp"%>				 
						 
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>		
<script src="<%=request.getContextPath()%>/assets/js/collegepred.js"></script>	
    <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>

<script>

$(document).ready(function() {
	Showingtabs();
var stuname =  sessionStorage.getItem("stdname");
	var stuname =  sessionStorage.getItem("stdname");
	
	$(".studname").html(stuname)
	
	var stuquota =  sessionStorage.getItem("stdquota");
	
	$(".quota").html(stuquota)
	
	$(".studname").html(stuname)
	
	var stuquota =  sessionStorage.getItem("stdquota");
	
	$(".quota").html(stuquota)
	 var LoginData = getLoginData();
		$("#student-name").html(LoginData.name);
	$("#analyticsbtn").attr("href",base_url+"jsp/student/student module/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#comparativebtn").attr("href",base_url+"jsp/student/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#toppersbtn").attr("href",base_url+"jsp/student/student module/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#Collegepred").attr("href",base_url+"jsp/student/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	
	//AnalyAllindia();
	
	
	 
});

</script>				 