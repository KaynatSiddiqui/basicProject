<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/70%corner.css" rel="stylesheet">


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
					<div class="panel-heading mb-10">
						<div class="col-sm-4 pull-left">
								
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/70cornertitle.svg"  width="300px">
						    </div>
						
						</div>
						<div class="col-sm-4 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15"> <i
								class="zmdi zmdi-fullscreen text-white font-24"></i>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body setwhd">
							<div class="row">
								<div class="col-sm-12 col-sm-offset-3">
									<div class="button-list center">
										<div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/livezone/einstien70percentcornerlivezone.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/jeeMainsafter.svg" width="80px" height="80px"><p class="heit">IIT JEE - MAINS</p></a></div>
									    <div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/livezone/einstien70percentcornerlivezone.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/JEEadvafter.svg" width="80px" height="80px"><p class="heit">IIT JEE - ADVANCED </p></a></div>
										<div class="col-md-2"><a href="<%= AppConstants.BASE_URL %>student/livezone/einstien70percentcornerlivezone.jsp"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/Bitsatafter.svg" width="80px" height="80px"><p class="heit">BITSAT</p></a></div>
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


	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>