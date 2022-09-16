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
				<div class="heading">
					<div class="font-21 ribbon">Last Five Tests</div>
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