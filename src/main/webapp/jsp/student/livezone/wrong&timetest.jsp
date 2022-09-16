<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>


 <link href="<%=request.getContextPath()%>/assets/css/student/css/wrongtime.css" rel="stylesheet">

	<!-- Main Content -->
		<div class="page-wrapper" style="background:#f3df81;">
            <div class="container-fluid">
<p class="loadershow" style="position: relative;top: 200px;left: 50%;z-index: 1;height:0"><img src="<%=request.getContextPath()%>/assets/images/students/spinner2.gif" width="100" height="100"></p>
				
				<!-- Row -->
				<div class="row mt-20">
					<div class="col-sm-12">
						<div class="panel panel-default setbg">
							<div class="panel-heading mb-10 getstached">
								<div class="col-sm-4 pull-left">
								 <section id="headertop">
						    <div class="heading">
						      <section id="headertop">
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/WrongTitle.svg"  width="300px">
						    </div>
						  </section>
						    </div>
						  </section>
								</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen text-white font-24"></i>
									</a>
				 <a data-toggle="modal" data-target="#howitworks" id="wronghow"><span style="color: #c740c9;font-size: 16px;font-weight: 600;cursor: pointer;"> <i class="fa fa-question-circle" aria-hidden="true" style="color:#187ce4;"></i>&nbsp;&nbsp; How it works  </span></a>					
								</div>
								<div class="row">
											<div class="">
										    <ul class="nav nav-tabs" id="settabs" role="tablist" style="display:flex;justify-content:center;">
												
												
											</ul>
											</div>
									</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="load text-center" style="padding-top:20px"></div>
									<div class="row mt-10">
										<div class="col-sm-8 col-sm-offset-2" id="chapters">
														
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
			<!-- /Row -->
				</div>
				<div class="modal fade" id="correctansmodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title">Corrected Questions</h4>
			</div>
			<div class="modal-body" id="modalcorrect">
			
			
			</div>
			</div>
			</div>
			</div>
			
			
	<div class="modal fade" id="howitworks" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="margin-top:20px">How does wrong &over-time Qns helps? </h4>
            <p class="text-justify" style="margin-top:20px">This is a great module to get back to your mistakes and time eating questions</p>
          <p class="text-justify" style="margin-top:20px">All your wrong Qns. and Over-time spent Qns from all the Live Tests you have taken, you can practice here.</p>
          <p class="text-justify" style="margin-top:20px">Just click on coloured numbers</p>
          <p class="text-justify" style="margin-top:20px">Practice! Practice! Practice!</p>
          <p class="text-justify" style="margin-top:20px"> Learning from your mistakes will take you to next level.</p>
<p class="text-justify" style="margin-top:20px">All the best</p>
        </div>
      </div>
    </div>
  </div>
		
		
 <div class="modal fade" id="emptysubj" role="dialog">
    <div class="modal-dialog" style="position:relative;top:230px">
      <div class="modal-content">
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
          <p style="color:blue;font-weight:bold;margin-left:20px;">Hello&nbsp;<span class="stname"></span>!</p>
            <p style="color:blue;font-weight:bold;margin-top:5px;text-align:center;">Please take tests from LiveZone to view the questions.</p>
        </div>
      </div>
    </div>
  </div>			
			
		<%@include file="/jsp/master/footer.jsp"%>
	</div>
	<!-- /Main Content -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/wrongtime.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>
	$(document).ready(function(){
		wrongsubjectbyexamid();
		 
		var studentname = sessionStorage.getItem("stdname")
		
		$(".stname").html(studentname)
		

	})
	

	

</script>