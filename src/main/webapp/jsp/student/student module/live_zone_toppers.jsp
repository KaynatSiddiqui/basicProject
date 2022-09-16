	<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>
.fixed-sidebar-left .side-nav > li > a.active{
	background-color: #eac757 !important;
}
#getspace{
position:relative;
   
    width:300px;
    
}

.gold{
color:gold;	
}

#fntsez{
font-size:12px;
}

#settfont{
position: absolute;
 right: 0px;
 padding-left: 19px;
 border-left: 3px solid gold;
}
.centered {
  position: absolute;
     top: 50%;
    left: 71%;
    font-size: large;
	color: black;
  transform: translate(-50%, -50%);
}
.livezone_toppers {
  position: relative;
  display: inline-block;
  /* border-bottom: 1px dotted black; */
}

.tooltiptext {
   visibility: hidden;
    /* width: 133px; */
    /* background-color: #bb92f7; */
    color: #333;
    border-radius: 34px;
    /* border: 1px solid #ddd; */
    text-align: center;
    border-radius: 37px;
    padding: 5px 5px;
    position: absolute;
    z-index: 1;
    top: 27px;
    white-space: nowrap;
    left: -122px;
    font-weight: 500;
    color: #333;
}

.livezone_toppers:hover .tooltiptext {
  visibility: visible;
}

#examtypeslist > a{
background: #d3ad0f;
 color: #fff !important;
 border: 1px solid goldenrod;
}

#examtypeslist > a.btn-outline{
background: #fff;
 color: black !important;
 border: 1px solid goldenrod;
}


</style>

	<!-- Main Content -->
	<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
				
			</div>
			<!-- /Title -->
			
			<!-- Row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view livezone_toppers_bg">
						<div class="panel-heading livezone_toppers_header_bg">
							<div class="row">
								<div class="col-sm-2" id="getspace">
								<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/TOPPERS_Title.svg" class="img-responsive">
									<!--<h6 class="panel-title txt-dark change_color"><span class="sky_blue1 font-16"><div class="ribbon"><span id="fntsez">Live zone</span></div></span><span class="font-15 gold">LIVEZONE TOPPERS</span><span id="settfont"><i class="fa fa-user fa-2x mr-20" aria-hidden="true"></i></span></h6>-->
								</div>
								<div class="col-sm-4">
									<div class="button-list" id="examtypeslist">
										
									</div>
								</div>
								<div class="col-sm-2">
									<span class="livezone_toppers_years" id="year"></span>
								</div>
								<div class="col-sm-4 pull-right">
									<div  class="tab-struct custom-tab-1">
										<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="myTabs_7">
											</ul>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="tab-content" id="myTabContent_7">
							
						</div>
								
					</div>
					
				</div>
			</div>
			<!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="liveside"/>
			<input type="hidden" id="ulactive" value="livezone"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script type="text/javascript">
	$("#topperslive").addClass('active-page');
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
		$(document).ready(function(){
	toppers_heading();
	 
  });

		
	</script>
	
	