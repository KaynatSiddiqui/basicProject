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
				<div class="heading" style="margin-top:40px;margin-left:20px">
					<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/LastFiveYears.svg" width="300px">
				</div>
			</section>
		</div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row" style="margin-top: 180px">
			<div class="col-sm-12">
			
			
			<div class="col-md-12 col-md-push-1" style="margin-top:40px" id="lastfiveexam">
					
					
		    </div>
					 
					 
			<div class="col-md-12 mt-20" id="getcoldetails">
					 					 	
	   <p style="font-size:20px;color:gray;margin-top:20px;margin-left:50px" id="subname"></p>
					 					 	
							<ul class="nav nav-tabs adjust" role="tablist" id="lastfivetabs">
								
								
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
			
  <div class="modal fade" id="collpopup" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have got <span class="rankmarks" style="color:orange;"></span> marks in this exam</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Rank not available for this Marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>
		  
		  
 <div class="modal fade" id="collpopup2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have got <span class="rankmarks" style="color:orange;">
</span> rank</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Top colleges not available for this marks in <span class="quota"></span> category</p>
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
	
var stuname =  sessionStorage.getItem("stdname");
	
	$(".studname").html(stuname)
	
	var stuquota =  sessionStorage.getItem("stdquota");
	
	$(".quota").html(stuquota)
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