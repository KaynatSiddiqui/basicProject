<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<link
	href="<%=request.getContextPath()%>/assets/css/student/css/collgepredictor.css"
	rel="stylesheet">


<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg">
			<section id="headertop">
				<div class="heading" style="margin-top:40px;margin-left:20px">
					<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/LastFiveYears.svg" width="300px">
				</div>
			</section>
		</div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row" style="margin-top: 180px">
			<div class="col-sm-12">

			
			 		<div class="col-md-12 col-md-push-1" style="margin-top:40px" id="examname">
					 

					 </div>
					 
					 <div class="col-md-12" style="margin-top:30px" >
				    <div class="Showdetails col-md-12" id="examdetails">
					 
					    
					 
					    
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
<script src="<%=request.getContextPath()%>/assets/js/collegepred.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>
$(document).ready(function(){
getallIndia();
})
</script>