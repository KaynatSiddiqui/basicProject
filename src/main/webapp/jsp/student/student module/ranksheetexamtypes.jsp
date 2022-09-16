<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/einsteinanlaytics.css" rel="stylesheet">
 <link href="<%=request.getContextPath()%>/assets/css/parent/css/jQuery-plugin-progressbar.css" rel="stylesheet">
 

<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg">
			  
		</div>
		<!-- /Title -->
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div
					class="panel panel-default card-view setback">
					<div class="panel-heading mb-10">
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
								<div class="col-sm-12 ">
									<div class="button-list center"  style="display:flex;justify-content:center" id="ranksheetexamtypes">
										
										
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
<script src="<%=request.getContextPath()%>/assets/js/ranksheetexamtypes.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>

<script>
$(document).ready(function(){
	  
	  getranksheetexamtypes();
	 
})
</script>
