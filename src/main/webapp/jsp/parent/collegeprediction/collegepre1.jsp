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
					<div class="font-21 ribbon">College Prediction</div>
				</div>
			</section>
		</div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row" style="margin-top: 180px">
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
								<p class="space">Percentile</p>
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
							<!-- 	<li role="presentation" class="active"><a href="#india" class="fronk"
									aria-controls="home" role="tab" data-toggle="tab">All India
										</a></li>
								<li role="presentation"><a href="#homestate" class="fronk"
									aria-controls="profile" role="tab" data-toggle="tab">Home
										State</a></li> -->
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
<input type="hidden" id="exmid">
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
	if(percentile == "" && air == ""){
		alert("please enter either percentile or air value");
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
</script>