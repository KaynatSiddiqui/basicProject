<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<link
	href="<%=request.getContextPath()%>/assets/css/student/css/collgepredictor.css"
	rel="stylesheet">


<!-- Main Content -->
<div class="page-wrapper">
<a href="#" id="colgpredictpopup" style="visibility: hidden" data-toggle="modal" data-target="#collegepredictemodal" data-backdrop="true">Check</a>
	<div class="container-fluid">

		<!-- Title -->
		
		<div class="row mb-20">
						<div class="col-sm-4">
							<div class="">
									<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/CollegePredictor.svg" width="300px">
							</div>
						</div>
					</div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row" style="margin-top: 50px">
			<div class="col-sm-12">

				<ul class="nav nav-tabs" role="tablist" id="mainlist">
					<li role="presentation" class="active "><a href="#predict" class="fronk"
						aria-controls="home" role="tab" data-toggle="tab">Predict Now</a></li>
					<li role="presentation"><a href="#lastfive" class="fronk"
						aria-controls="profile" role="tab" id="LastFive" data-toggle="tab">Last Five
							Test - Summary</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="predict">
					
					<div class="col-md-12 col-md-push-1" style="margin-top:40px">
					<ul class="nav nav-tabs focusing" id="Examtabs">
					 
					 
				    </ul>	
				  	</div>

                  <div id="perallscr">
						<div class="col-md-12 col-md-push-2"  style="margin-top: 40px">
							<div class="percentile col-md-4">
								<input type="text" id="percentile">
								<p class="space">Score</p>
							</div>
							<div class="col-md-2">
								<p style="color: orange; font-size: 18px">OR</p>
							</div>
							<div class="air col-md-4">
								<input type="text" id="air">
								<p class="space ">AIR</p>
							</div>
						</div>
						<div class="col-md-12"
							style="display: flex; justify-content: center;">
							<button class="btn btn-success respn">Go</button>
						</div>
                    </div>
                    
                    
                    
                    <div class="col-md-12 mt-20" id="getcoldetails">
							<ul class="nav nav-tabs adjust" role="tablist" id="Showtabs">
							
							
							</ul>
                    
                     <div class="tab-content knox" id="predic">
					<div role="tabpanel" class="tab-pane active" id="india">
					
					</div>
					<div role="tabpanel" class="tab-pane " id="homestate">
					
					</div>
					</div>
						</div>
						
						</div>
						

					<div role="tabpanel" class="tab-pane" id="lastfive">
				       
				       			<div class="col-md-12 col-md-push-1" style="margin-top:40px">
					<ul class="list-inline focusing" id="lastfiveexams">
			
			
				    </ul>	
					</div>
				
				
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
							 							
<div class="modal fade"  id="collegepredictemodal" tabindex="-1" role="dialog" aria-labelledby="wasteexam">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Hey,<span id="stdname"></span></h4>
											   </div>
											<div class="modal-body" id="hvrmsg">
											<p>You have got </p>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
						 </div>
<input type="hidden" id="exmid">
</div>



	   <div class="modal fade" id="collpopup" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have entered <span class="rankmarks" style="color:orange;"></span> marks</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Rank not available for this Marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>
		  
		  
  <div class="modal fade" id="collgrank" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have entered <span class="rankmarks" style="color:orange;"></span> Rank</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Rank not available for this Marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>


 <div class="modal fade" id="collgrank2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
		   <button type="button" class="close" data-dismiss="modal">&times;</button>
		<p style="font-weight:bold;color:blue;line-height:1.8em;letter-spacing:1px;">Hey&nbsp; <span class="studname"></span>!</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have entered <span class="rankmarks" style="color:orange;">
</span> Rank</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Top colleges not available for this marks in <span class="quota"></span> category</p>
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
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">you have entered <span class="rankmarks" style="color:orange;">
</span> marks</p>
		
		<p style="font-weight:bold;color:gray;padding-top:10px;line-height:1.8em;letter-spacing:1px;">Top colleges not available for this marks in <span class="quota"></span> category</p>
		  </div>
		  </div>
		  </div>
		  </div>  
<%@include file="/jsp/master/footer.jsp"%>


<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/collegepred.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>

$(document).ready(function(){
	
	GetExamtypes();
	
	var stuname =  sessionStorage.getItem("stdname");
	
	$(".studname").html(stuname)
	
	var stuquota =  sessionStorage.getItem("stdquota");
	
	$(".quota").html(stuquota)
	
	$("#perallscr").addClass('knox');
	
	$("#LastFive").on("click",function(){
		GetlastfiveExamtypes();
	})
	
})

$(".respn").on("click", function(){
	$("#getcoldetails").removeClass("knox").addClass("light");

	$("#predic").removeClass("knox").addClass("light");
	var percentile = $("#percentile").val();
	var air = $("#air").val();
	if(percentile != "" && air != ""){
		alertify.alert("please enter either percentile or air value");
	}
	else if(percentile == "" && air != ""){
		predicttabs();
	predictAllindia();
	}else{
		predicttabs();
		percentileallindia();
	}
})

	$(document).on("click", ".toseeperall", function(){
		$("#perallscr").removeClass("knox").addClass("light");
		
	})
	
		$(document).on("click", "#Examtabs li a", function(){
			var exmid = $(this).attr('data-id');
			$("#exmid").val(exmid);
		})
		
$(document).on("click",".safehome", function(){
	var percentile = $("#percentile").val();
	var air = $("#air").val();
	if(percentile == "" && air != ""){
	predictHomestate();
	}else{
		percentileHomestate();
	}
	})	
	
	$(document).on("click", ".myactiveclass", function(){
		$(".imgshow").removeClass("show");
		$(".imgshow").addClass("hide");
		var examid = $(this).attr("data-id");
		$("#settick"+examid).removeClass("hide");
		$("#settick"+examid).addClass("show");
		
	})
</script>