<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/paperwise.css" rel="stylesheet">


	<!-- Main Content -->
		<div class="page-wrapper" style="background:lemonchiffon">
            <div class="container-fluid">
				
<p class="loadershow" style="position: relative;top: 200px;left: 50%;z-index: 1;height:0"><img src="<%=request.getContextPath()%>/assets/images/students/spinner2.gif" width="100" height="100"></p>

				<!-- Row -->
				<div class="row mt-20">
					<div class="">
						<div class="panel panel-default setbg">
							<div class="panel-heading mb-10 getstached">
								<div class="col-sm-4 pull-left">
                          <section id="headertop">
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Past 40 years Questions-chapter-wise.svg"  width="330px">
						    </div>
						  </section>								</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen text-white font-24"></i>
									</a>
								</div>
								<div class="row">
											
											 <ul class="nav nav-tabs" id="papertab" role="tablist" style="display:flex;justify-content:center">
											
											
											 </ul>
											
									</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									
									 <div class="row mt-30">
										<div class="col-sm-8 col-sm-offset-2">
											<form> 
											
											
											   <div class="row " id="previousyearcontent">
													
													
													
													
													</div>
											 </form> 
									</div>
									</div> 
								</div>
							</div>
						</div>	
					</div>
				</div>
			<!-- /Row -->
				<%@include file="/jsp/master/footer.jsp"%>
			</div>
			<!-- for popups  -->
			<div class="modal fade" id="attemptedModal" tabindex="-1" role="dialog" aria-labelledby="attemptedModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="getname"></span></h4>
											   </div>
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="attemptedModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1">
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="subjectTabs">
																<li class="" role="presentation"></li>
																<li role="presentation" class="">Getting Subjects...</li>
																<li role="presentation" class=""></li>
															</ul>
															
															<div class="tab-content" id="questionsContent">
															
																
															
															</div>
															
														</div>
														
													</div>
														
												</div>
										   	</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							 </div>
						   </div>
	
	</div>
	<!-- /Main Content -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/previousyearspapers.js"></script>
     

<script>
$(document).ready(function (){
	getPreviousYearExamTypes();
});

$(function () {
	$('#datetimepicker1p').css("cursor","pointer");
    $('#datetimepicker1p').datetimepicker();
});
</script>

<script>
		$(document).ready(function(){
			
			$("form .rwsstyles").each(function(z){
				$(this).first().delay(600 * z).animate({'marginTop':'+=-20px','opacity':'1'},800);
			})
			
		})
	
	</script>
