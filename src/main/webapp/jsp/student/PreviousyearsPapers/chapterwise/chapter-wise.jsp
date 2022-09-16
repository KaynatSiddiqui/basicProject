<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/chapterwise.css" rel="stylesheet">


<div class="page-wrapper">
	<div class="container-fluid">
<p class="loadershow" style="position: relative;top: 200px;left: 50%;z-index: 1;height:0"><img src="<%=request.getContextPath()%>/assets/images/students/spinner2.gif" width="100" height="100"></p>

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
						      <img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Previous Year Papers.svg" width="300px">
						    </div>
						  </section>

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
									<div class="button-list center" id="examtypechapter" style="display:flex;justify-content:center;">
									 
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>


	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/chapterwise.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>

	$(document).ready(function(){
		getchapterexamtypes();
	});
	
</script>