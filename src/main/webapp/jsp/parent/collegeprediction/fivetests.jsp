<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<link
	href="<%=request.getContextPath()%>/assets/css/student/css/collgepredictor.css"
	rel="stylesheet">


<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg">
			<section id="headertop">
				<div class="heading">
					<div class="font-21 ribbon">Last Five Tests</div>
				</div>
			</section>
		</div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row" style="margin-top: 180px">
			<div class="col-sm-12">
			
			
			<div class="col-md-12 col-md-push-1" style="margin-top:40px" id="lastfiveexam">
					<%--  <div class="col-md-2" style="text-align:center" >
					 <img src="<%=request.getContextPath()%>/assets/landing/img/jeeMainsafter.svg" width="160px" height="80px" style="border-radius:15px">
					 <p>Jee Mains</p>
					  
					 </div> --%>
		    </div>
					 
					 
			<div class="col-md-12 mt-20" id="getcoldetails">
					 					 	
	   <p style="font-size:20px;color:gray;margin-top:20px;margin-left:50px" id="subname"></p>
					 					 	
							<ul class="nav nav-tabs adjust" role="tablist" id="lastfivetabs">
								<!-- <li role="presentation" class="active"><a href="#india" class="fronk"
									aria-controls="home" role="tab" data-toggle="tab">All India
										</a></li>
								<li role="presentation"><a href="#homestate" class="fronk"
									aria-controls="profile" role="tab" data-toggle="tab">Home
										State</a></li> -->
							</ul>
							
				  <div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="india">
					    







					</div>
					<div role="tabpanel" class="tab-pane " id="homestate">
					
					
					
					
					</div>
					</div>

						</div>	
			
			
			
			
			</div>
			</div>
			</div>
			</div>

			
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/collegepred.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>
$(document).ready(function(){
	lastfiveexamnameshow();
	$.urlParam = function(name){
		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		if (results==null){
		  return null;
		}
		else{
		  return results[1] || 0;
		}
		}
	
	var resplace =  $.urlParam('testname').replace(/%20/g, " ");
	$("#subname").text(resplace);
	getFiveAllindia();
	
	$(document).on("click",".safehome", function(){
		getFiveHomestate();
	})
})
</script>
   <script src="//fast.wistia.net/labs/fresh-url/v1.js" async></script>