<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/notificationview.css" rel="stylesheet">


<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading mb-10">
						<div class="col-sm-4 pull-left">
							<h6 class="panel-title txt-dark" style="margin-top:15px">
								<span ><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/notificatoins_header.svg"  width="240px">  </span>
							</h6>
						</div>
						<div class="clearfix"></div>
					</div>
					<hr class="light-grey-hr mb-10">
					<div class="row">
					             <a href="<%=AppConstants.BASE_URL%>student/notifications/notifications.jsp"
									class="btn btn-notifications_back btn-xss">Back</a>
									
									<div class="row" id="notification_preview">
									   
									   
					   
									   
									</div>
						
					</div>
					
					
					
				</div>
			</div>
			<div id="modal01" class="codal" onclick="this.style.display='none'">
				<span class="close">&times;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<div class="modalcontent">
					<img id="img01" style="height:555px">
				</div>
			</div>
		</div>
	</div>
	 <input type="hidden" id="creationactive" value="usefulside"/>
			<input type="hidden" id="ulactive" value="useful"/>
	<%@include file="/jsp/master/footer.jsp"%>
</div>
<!-- /Row -->

<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>

$(document).ready(function(){
	studentnotificationpreview();
})

</script>
<script>
function onClick(element) {
	  document.getElementById("img01").src = element.src;
	  document.getElementById("modal01").style.display = "block";
	}
</script>
