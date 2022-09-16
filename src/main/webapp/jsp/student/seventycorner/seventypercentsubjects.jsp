<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/seventycorner.css" rel="stylesheet">

	<!-- Main Content -->
		<div class="page-wrapper" style="background:#9dc0f1">
            <div class="container-fluid" > 
		
		<p class="loadershow" style="position: relative;top: 200px;left: 50%;z-index: 1;height:0"><img src="<%=request.getContextPath()%>/assets/images/students/spinner2.gif" width="100" height="100"></p>
				
				<!-- Row -->
				<div class="row mt-20">
					<div class="">
						<div class="panel panel-default card-view setbg">
							<div class="panel-heading mb-10 getstached" style="margin:3px">
								<div class="col-sm-4 pull-left">
                             
						    <div class="heading">
						      <img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/70cornertitle.svg"  width="300px">
						    </div>
												</div>
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen text-white font-24"></i>
									</a>
            <a data-toggle="modal" data-target="#howitworks" id="sevntyhow"><span style="color: #c740c9;font-size: 17px;cursor: pointer;font-weight: 600;"><i class="fa fa-question-circle" aria-hidden="true" style="color:#187ce4;"></i>&nbsp;&nbsp; How it works  </span></a>
								</div>
								<div class="row" style="margin-bottom:20px">
											<div class="">
										    <ul class="nav nav-tabs" id="settabs" role="tablist" style="display:flex;justify-content:center">


											</ul>
											</div>
									</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="load text-center" style="padding-top:20px"></div>
									<div class="row mt-10" style="display:flex;justify-content:center">
										<div class="col-sm-7" id="subjdetails">
												
	
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
          <h4 style="margin-top:20px">Seventypercent Corner-How it works?</h4>
          
          <div class="contentbased text-center" style="margin-top:20px">
          <img src="https://dummyimage.com/600x400/000/fff" width="350px">
          <p>Benefits as a designer:</p>
          
          <p class="text-justify" style="margin-top:20px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.t has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
     <div class="modal fade" id="emptysubj" role="dialog">
    <div class="modal-dialog" style="position:relative;top:230px">
      <div class="modal-content">
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
          <p style="color:blue;font-weight:bold;margin-left:20px">Hello&nbsp;<span class="stname"></span>!</p>
            <p style="color:blue;font-weight:bold;margin-top:5px;text-align:center">Please take tests from LiveZone to view the questions.</p>
        </div>
      </div>
    </div>
  </div>
		<%@include file="/jsp/master/footer.jsp"%>
	</div>
	<!-- /Main Content -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/seventycorner.js"></script>
<script>

$(document).ready(function(){
	seventysubjectbyexamid();
	
	var studentname = sessionStorage.getItem("stdname")
	
	$(".stname").html(studentname)
})

</script>