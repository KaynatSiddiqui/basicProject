<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="AdminType" value="parent" scope="session" />


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
						 							

						 </div>
			<%@include file="/jsp/master/footer.jsp"%>				 
						 
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>		
<script src="<%=request.getContextPath()%>/assets/js/parentjs/collegepred.js"></script>	
    <script src="<%=request.getContextPath()%>/assets/js/parentjs/student.js"></script>

<script>

$(document).ready(function() {
	Showingtabs();

	 var LoginData = getLoginData();
		$("#student-name").html(LoginData.name);
	$("#analyticsbtn").attr("href",base_url+"jsp/parent/student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#comparativebtn").attr("href",base_url+"jsp/parent/companalytic/comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#toppersbtn").attr("href",base_url+"jsp/parent/student_analytics_toppers.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	$("#Collegepred").attr("href",base_url+"jsp/parent/collegeprediction/collegepredanaly.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype')+"&examid="+getParameterByName('examid')+"&from="+getParameterByName('from')+"&einsteinType="+getParameterByName('einsteinType'));
	
	AnalyAllindia();
	
	$(document).on("click",".safehome", function(){
		AnalyHomestate();
	})
	 
});
(function(){
		 var subwise =  getParameterByName('testtype');
		 if(subwise === "Mock Test" || subwise === "TW9jayBUZXN0"){
			 $("#Collegepreddiv").css("display","none");
		 }
	 })();
</script>				 