<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
.page-wrapper {
	min-height: 89.2vh;
}
.footer .row .col-sm-12{
	background: #f0f4f5;
	margin-left: -12px;
}
</style>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/animate.css">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/dailydose.css">
<!-- Main Content -->
		<div class="page-wrapper">
        <div class="container condaily">
    <!-- Title -->
		<div class="row heading-bg">
			<section id="headertop">
				<div class="heading">
					<div class="font-21 ribbon"><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/dailyscoope2.svg" width="245px" alt="img" class="dailyicon"></div>
				</div>
			</section>
		</div>
		<!-- /Title -->
        <div class="dmain">
        <div class="row">
        	<div class="col-sm-2 col-sm-offset-10">
        	<select class="selectpicker" data-style="form-control btn-default btn-outline" id="sel">
            <option value="1">1 Month</option>
            <option value="2">2 Months</option>
            <option value="3">3 Months</option>
             <option value="4">4 Months</option>
            <option value="5">5 Months</option>
          </select>
        	</div>
        </div>
        
         <!-- <ul class="nav nav-tabs uldaily">
            <li class="active"><a data-toggle="tab" href="#home">All</a></li>
            <li><a data-toggle="tab" href="#menu1">Physics</a></li>
            <li><a data-toggle="tab" href="#menu2">Chemistry</a></li>
            <li><a data-toggle="tab" href="#menu3">Math</a></li>
        </ul> -->
      </div>
      <div class="mainquiz  animated fadeInRight">
  <div class="row" id="rowdailyScoop">
   
   
      </div> <!-- rowdiv above -->
     
    </div>
   <div id="modelview"></div>
   <!-- view questions correct ans modal -->				  
	<div>
	<!--show paper  -->
	
	
	
	
						   <!--  -->
	</div>							
    </div>
<!-- syllabus popup -->
						<div class="modal fade" id="getactivesyllabus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
									<div class="modal-content">
											<div class="modal-header">
												<h4 class="fonkar">Hey <span id="activename"></span> <i class="fa fa-exclamation" aria-hidden="true"></i></h4>
											</div>
									<div class="modal-body">
									<div class="panel-body">
									<div class="panel-group accordion-struct" id="activesyllabus_tbody" role="tablist" aria-multiselectable="true">
											
								   </div>
									</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
<!-- syllabus popup  -->
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
	<input type="hidden" id="creationactive" value="creationside"/>
		<input type="hidden" id="ulactive" value="creation_dr"/>
		</div>
		<%@include file="/jsp/master/footer.jsp" %>
		
        <!-- /Main Content -->
                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
               <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	
               <script src="<%=request.getContextPath()%>/assets/js/dailydose/dailyscoope.js"></script>
	           <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	           <script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
	      
	      <script>
	      	(function(){
	      		getDailyScoope();
	      		//getsummarycwupa();
	      		/* attemptedshowpaperques(); */
	      	})();

	      </script>
         