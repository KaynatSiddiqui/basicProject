<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<!-- Main Content -->
<link href="<%=request.getContextPath()%>/assets/css/student/css/designowntest.css" rel="stylesheet">
<div class="page-wrapper">
	<div class="container-fluid">
		
		<!-- Title -->
		<div class="row heading-bg">
			
		</div>
		<!-- /Title -->
		
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading mb-20">
						<div class="col-sm-3" id="getspace">
							 <img src="<%=request.getContextPath()%>/assets/images/students/Attempted.svg" class="img-responsive">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="">
						<div class="row">
							
							<div class="col-sm-12">
								<div class="button-list center">
								
									<!-- Remove the images after making dynamic -->
									
									<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_1.jsp" class="examLinks btn">
										<img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/jeeMainsafter.svg" width="60" height="60" style="margin-bottom:12px;"/> <p class="subj_name">MAINS</p> 
									</a>
									<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_1.jsp" class="examLinks btn">
										<img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/JEEadvafter.svg" width="60" height="60" style="margin-bottom:12px;"/> <p class="subj_name">ADVANCED</p> 
									</a>
									<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_1.jsp" class="examLinks btn">
										<img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/Bitsatafter.svg" width="60" height="60" style="margin-bottom:12px;"/> <p class="subj_name">BITSAT</p>
									</a>
								</div>
							</div>
						</div>
						
						<%-- <div class="row">
							<div class="col-md-12">
								<div class="button-list mt-10">
									<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_1.jsp" class="btn  btn-primary ml-40">Next</a>
								</div>
							</div>
						</div> --%>
					</div>
					
				</div>
				
			</div>
		</div>
		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp" %>	
</div>
<!-- /Main Content -->
<script>
	$(document).ready(function(){
		$(".button-list a").each(function(z){
			$(this).first().delay(600 * z).animate({'opacity':"1"},800);
		})
	})
</script>
<script type="text/javascript">
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true,
	}); 
</script>