<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/dist/css/animate.css" rel="stylesheet">
 <link href="<%=request.getContextPath()%>/assets/css/dist/css/dailydose.css" rel="stylesheet">


<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div
					class="panel panel-default card-view setback">
					<div class="panel-wrapper collapse in">
					<div class="col-sm-4 pull-left">
						  <section id="headertop">
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/dailyscoope2.svg" width="300px">
						    </div>
						  </section>
<!-- 							<h6 class="panel-title">
								<span class="font-21 headi blinking">Previous Year Questions</span>
							</h6> -->
						</div>
						<div class="col-sm-4 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15"> <i
								class="zmdi zmdi-fullscreen text-white font-24"></i>
							</a>
						</div>
						<div class="clearfix"></div>
						<div class="panel-body setwhd">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list center" id="examtypeStudent" style="display:flex;justify-content:center;">
									   <%--  <div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/PreviousyearsPapers/chapterwise/chapterwisesubjects.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/JEEadvafter.svg" width="80px" height="80px"><p class="heit">IIT JEE - ADVANCED </p></a></div>
										<div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/PreviousyearsPapers/chapterwise/chapterwisesubjects.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/Bitsatafter.svg" width="80px" height="80px"><p class="heit">BITSAT</p></a></div>
										<div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/PreviousyearsPapers/chapterwise/chapterwisesubjects.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/chapterwiseques/othercompetative-svg.png" width="80px" height="80px" style="border-radius:15px"><p class="heit">Other Competitive</p></a></div> --%>
									</div>
								</div>
							</div>
							<ul id="ulse">
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
	<%@include file="/jsp/student/student module/studenttraking.jsp" %>
</div>


	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/dailydose/dailyscoope.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>

	$(document).ready(function(){
		showPopmsg("dailyscoop");
		getStudentExamtype();
	});
	
/* 	$("#ulse li").each(function(z){
		$(this).first().delay(600 * z).animate({'marginTop':'+=-20px','opacity':'1'},800);
	}) */
</script>