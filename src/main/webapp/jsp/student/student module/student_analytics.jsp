
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  /><%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<style>
.difficulty_wise_graph_div1{
border:none!important;
box-shadow: 0 1px 10px lightgray!important;
}
.prple{
position: relative;
   /*  bottom: 20px; */
    color: #A349A4;
    padding-left: 20px;
}
.prples{
position: relative;
   /*  bottom: 10px; */
    color: #999;
    /* padding-left: 20px; */
    vertical-align:middle;
     padding-left: 20px; 
}
.prpless{
position: relative;
   /*  bottom: 10px; */
    color: #999;
    /* padding-left: 20px; */
    vertical-align:middle;
     padding-left: 30px; 
}
.imgstyle{
height:30px;
widht:30px;
 vertical-align:middle;
}
.imgstyle-4{
height:33px;
widht:33px;
 vertical-align:middle;
}
.imgstyle-3{
height:25px;
widht:25px;
 vertical-align:middle;
}
.imgstyle-2{
height:45px;
widht:30px;
 vertical-align:middle;
}
.pple{
position: relative;
   /*  bottom: 10px; */
    color: #fff;
    /* padding-left: 20px; */
    vertical-align:middle;
    padding-left: 20px;
}
.score{
padding-top:30px;
}

.panel-outer-1{
background: #fff;
  margin-bottom: 12px;
 border-radius: 12px;
 box-shadow: 0px 1px 17px lightgrey;
 padding: 15px 15px 0;
 float:right;
  margin-right: -7px;
 width:250px;

}
.panel-body-1{
 padding-top: 20px;
	   border-top: 25px solid #dc4638;
	 border-radius: 25px;
 border-left: 25px solid #dc4638;
 }																				   
.panel-outer-2{
background: #fff;
   margin-bottom: 12px;
 border-radius: 12px;
box-shadow: 0px 1px 17px lightgrey;
padding: 15px 15px 0;
margin-left: -9px;
margin-right: -9px;
width:250px;
}	
.panel-body-2{
padding-top: 20px;
    /* padding-bottom: 60px; */                                                                              
  border-top: 25px solid #ffa026;
  border-radius: 25px;
  border-right: 25px solid #ffa026;
  }	
  
  .panel-outer-3{
  background: #fff;
    margin-bottom: 12px;
	border-radius: 12px;
 box-shadow: 0px 1px 17px lightgrey;
 padding: 0 15px 15px;
float:right;
margin-right: -7px;
width:250px;
  }		
  .panel-body-3{
  padding-top: 20px;
  border-bottom: 25px solid #433f4e;
  border-radius: 25px;
  border-left: 25px solid #433f4e;
  }
  .panel-outer-4{
   background: #fff;
    margin-bottom: 12px;
	border-radius: 12px;
 box-shadow: 0px 1px 17px lightgrey;
 padding: 0 15px 15px;
margin-left: -8px;
margin-right: -9px;
width:250px;
  }			
  .panel-body-4{
  padding-top: 20px;
 /*  padding-bottom: 40px; */
 border-bottom: 25px solid #4babb9;
border-radius: 25px;
 border-right: 25px solid #4babb9;
  }			
 .panel-body-pro{
     border-radius: 10px;
    background: #fff;
    padding: 10px 22px;
    box-shadow: 0 0 0.9 black;
    box-shadow: 0px 1px 10px lightgray;
 }
.time1{
	color:red !important;
    padding-top: 0px !important;
}
.time2{
	color:green !important;
	 padding-top: 0px !important;
}
.time3{
	color:yellow !important;
	 padding-top: 0px !important;
}
.time4{
	color:hotpink !important;
	 padding-top: 0px !important;
}
 .table-1 th {
   text-align: center;
}

.table {
   border-radius: 5px;
   
   float: none;
}
.table-score{
   margin:0 auto;
}
.table-score{
text-align:center;
   background: #fff;
}
.table-score th{
text-align:center;
   padding-bottom: 0px;
}
.table-score th i{
margin-right: 5px;
}
.borderless td, .borderless th {
   border: none;
}
.pad{
   padding-bottom: 0px !important;
} 
  
  
  @media screen and (min-width:1024px) and (max-width:1300px){
  
  .panel-outer-1{
background: #fff;
    margin-bottom: 12px;
    border-radius: 12px;
    box-shadow: 3px 10px 47px grey;
    padding: 15px 15px 0;
    margin-left: -18px;
    margin-right: -9px;
    width: 250px;

}
.panel-outer-3 {
    background: #fff;
    margin-bottom: 12px;
    border-radius: 12px;
    box-shadow: 3px 10px 47px grey;
    padding: 0 15px 15px;
    margin-left: -18px;
    margin-right: -9px;
    width: 250px;
}
.panel-outer-2{
background: #fff;
   margin-bottom: 12px;
 border-radius: 12px;
box-shadow: 3px 10px 47px grey;
padding: 15px 15px 0;
margin-left: -9px;
margin-right: -9px;
width:250px;
}
 .panel-outer-4{
   background: #fff;
    margin-bottom: 12px;
	border-radius: 12px;
 box-shadow: 3px 10px 47px grey;
 padding: 0 15px 15px;
margin-left: -8px;
margin-right: -9px;
width:250px;
  }			
  }	
  
   @media screen and (min-width:1440px){
   
   .panel-outer-1{
   background: #fff;
    margin-bottom: 12px;
    border-radius: 12px;
    box-shadow: 3px 10px 47px grey;
    padding: 15px 15px 0;
       margin-left: 57px;
   margin-right: -9px;
    width: 250px;
   }	
   
   .panel-outer-3 {
    background: #fff;
    margin-bottom: 12px;
    border-radius: 12px;
    box-shadow: 3px 10px 47px grey;
    padding: 0 15px 15px;
    margin-left: 57px;
    margin-right: -9px;
    width: 250px;
}
   }
   
   .effect:hover{
    box-shadow: 3px 10px 47px grey;
    border-radius: 25px;
   }	
   
    .active, .icon-btn:active {
    box-shadow: 0 1px 20px grey;
    border-radius: 24px;
    animation: fadeOut 1s;
    width: 231px !important;
}
@keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Firefox < 16 */
@-moz-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}
   
   .avg-stdsimgs-style{
height:35px;
width:35px;
}	
.performance-stds-icons li{
list-style-type: none;
  float: left;
}	
.per-elem-style{
padding-left:15px;
}	
.per-elem-style-2{
padding-left:13px;

}	
.per-elem-style-side-2{
padding-left:45px;
}		
.per-elem-style-sides-2{
padding-left:22px;
}	
.performance-body{
padding-top:18px;
padding-left:60px;
}	
.performance-ele-txt{
padding-left:30px;
} 
@media screen and (min-width:768px) and (max-width:900px){
.performance-body{
    padding-left: 15px;
}
}
.view-correct{
padding-left:63px;
}
.view-wrong{
padding-left:68px;
}
.view-unattempted{
padding-left:25px;
}
.btn-attempt{
		    background: #ffffff;
		    color: greenyellow;
		    font-weight: bold;
		    margin-top: -8px;
            padding-left: 0px !important;
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
			<div class="row" >
				<div class="col-sm-12">
					<div class="panel panel-default card-view" style="background-color:#f0f4f5">
						<div class="panel-heading">
							<div class="col-sm-4 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
							<%-- <div class="row mb-20">
								<div class="col-xs-6 col-sm-5 col-md-5 col-lg-5 center">
									<div class="mt-15">
										<!-- <h3 style="color:white">Individual Analytics</h3> -->
										<img src="<%=request.getContextPath()%>/assets/images/students/summary/Button style edit.png" class="img-responsive" alt="logo" >
										
									</div>
								</div>
								<div class="col-xs-6  col-sm-5 col-md-5 col-lg-5 center">
									<div class="mt-15">
										<!-- <h3 style="color:white">Individual Analytics</h3> -->
										<img src="<%=request.getContextPath()%>/assets/images/students/summary/Button style edit.png" alt="logo" >
										
									</div>
								</div>
							</div> --%>
						<div class="row mb-20" id="act">
						<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 col-xs-offset-3 right">
						<a href="student_analytics3.jsp"><img src="<%=request.getContextPath()%>/assets/images/students/summary/Individual-Analytics white.png" class="img-responsive icon-btn active" style="box-shadow: 0 1px 20px lightgray;width: 195px;border-radius: 20px;" alt="logo" ></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
						<a href="comparitive_analytics.jsp"><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Comparativeanalyticsbutton.svg" class="img-responsive icon-btn" style="box-shadow: 0 1px 20px lightgray;width: 195px;border-radius: 20px;" alt="logo" ></a>
							</div>		
						 </div>
							<div class="row mb-0" style="padding:20px;">
								<!-- <div class="col-sm-3">
									<span style="color:grey" class="font-12">Test Name :</span><br/>
									<span style="color:grey" class="font-12">Test type :</span><br/>
									<span style="color:grey" class="font-12">Date :</span>
								</div> -->
								<div class="col-xs-4" style="text-align:center">
							<span style="color: grey" class="font-12">Test Name :<span id="testname"><span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey" class="font-12">Test type :<span id="testtype"><span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey" class="font-12">Date :<span id="testdate"><span></span>
							</div>
							</div>
							<!-- <div class="row mb-0" >
							<div class="col-xs-12  center">
							
							<span class=" bold">Your Marks: <span class=" sky_blue1 font-16"><span id="omarkss"></span>/<span id="totalms"></span></span></span>
						</div>
						</div> -->
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								 <div class="row mb-0" >
							<div class="col-xs-12  center">
							
							<span class=" bold">Your Marks: <span class=" sky_blue1 font-16"><span id="omarkss"></span>/<span id="totalms"></span></span></span>
						</div>
						</div>
								<div class="row mt-40  mb-30" style="background-color: #f0f4f5;">
									<div class="col-sm-8 col-sm-offset-2">
										<div  class="panel-body-pro">
											<span class="font-12 head-font txt-dark bold">Cutoff : <span class="text_time_taken font-16" id="cutoff"></span> <span class="pull-right bold">Your Marks: <span class=" sky_blue1 font-16"><span id="omarks"></span>/<span id="totalm"></span></span></span></span>
											<div class="progress progress-lg mt-10">
												<div class="progress-bar progress-bar-success" style="width: 75%;" role="progressbar" id="pgbar"></div>
											</div>
											<span class="font-12 head-font txt-dark bold">No.of Students Qualified: <span class="text_negative_score font-16">N/A</span><span class="pull-right bold font-16 text-success">N/A</span></span>
										</div>
									</div>
								</div>
								<br />
								<!-- <div class="row mt-20 mb-30">
									<div class="col-sm-4 col-sm-offset-2">
										<div class="panel panel-success card_view_performance">
											<div class="card_view_performance_heading">
												<div class="center">
													<h6 class="panel-title txt-light"><i class="fa fa-bar-chart rounded_icon_white"></i> Performance</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class="purple"><i class="fa fa-bar-chart rounded_icon_purple"></i> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="panel panel-success card_view_view">
											<div class="card_view_view_heading">
												<div class="center">
													<h6 class="panel-title txt-light"><i class="fa fa-bar-chart rounded_icon_white"></i> View</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 mt-30">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Attempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="attempted_border" href="#" id="attempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Correct </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="correct_border" href="#" id="correct" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Wrong </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="wrong_border" href="#" id="wrong" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Unattempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="unattempted_border" href="#" id="unAttempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-40">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Over Time Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="time_taken_border" href="#" id="overtime" target="_blank"></a></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
								
								
								
								<div class="row  mb-20 mt-20">
									<div class="col-sm-4 col-sm-offset-2">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 0px 1px 17px lightgrey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height:418px;">
																   
											<div class="">
												<div class="center">
													<!-- <i id="idbefaft" >Performance</i> -->
													<span id="idbefaft"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/performance Header.png" alt="logo" class="imgstyle-2">  Performance</span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in performance-body">
												<div  class="panel-body">
													
													<div  class="row mb-20 ">
														<%-- <div  class="col-sm-6">
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prple"> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div> --%>
													<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Score.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">score</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><span class="performance-ele-txt"  id="totalMarks"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!--  <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>-->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-minus-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> -Ve marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/-ve-Marks.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">-Ve marks</span></li>
													<li><span class="per-elem-style-sides-2">:</span></li>
													<li><span class="performance-ele-txt" id="negative"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-target-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Accuracy % </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Accuracy.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Accuracy %</span></li>
													<li><span class="per-elem-style-2">:</span></li>
													<li><span class="performance-ele-txt" id="accuracy"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-percentage-50.png" alt="logo"class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/percentage.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Percentage</span></li>
													<li><span class="per-elem-style-2">:</span></li>
													<li><span class="performance-ele-txt" id="percentage"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-racism-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/percentile.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Percentile</span></li>
													<li><span class="per-elem-style-sides-2">:</span></li>
													<li><span class="performance-ele-txt" id="percentile"> </span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-running-rabbit-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Speed </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/Speed.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Speed</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><span class="performance-ele-txt" id="speed"> </span></li>
													</ul>
													</div>
													
													
													
												</div>
											</div>
											
											
											
										</div>
									</div>
									<div class="col-sm-4">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 0px 1px 17px lightgrey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    height: 418px;">
											<div class="">
												<div class="center">
												<span id="idbefaft1"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/View Questions Header.png" alt="logo" class="imgstyle-2">  View</span>
													
												</div>
												<div class="clearfix"></div>
											</div>
											<!-- <div  class="panel-wrapper collapse in">
												<div  class="panel-body"> -->
												
												
													<!-- <div  class="row mb-20 mt-30">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Attempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="attempted_border" href="#" id="attempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Correct </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="correct_border" href="#" id="correct" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Wrong </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="wrong_border" href="#" id="wrong" target="_blank"></a></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Unattempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="unattempted_border" href="#" id="unAttempted" target="_blank"></a></div>
													</div>
													<div  class="row mb-40">
														<div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Over Time Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><a class="time_taken_border" href="#" id="overtime" target="_blank"></a></div>
													</div> -->
													
													
													
													
													
											<%-- 		<div  class="row mb-20 score">
														<div  class="col-sm-6">
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/(26-26)_Red_(Circle)-svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Attempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span><span id="totalMarks"></span></span></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!--  <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>-->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Yeld_ICON_(Square)-290318_1_svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Correct </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Red_ICON_(Square_reverse)-290318_2_svg.svg" alt="logo" class="imgstyle-3"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Wrong </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Yeld_ICON_(Square)-290318_2_svg.svg" alt="logo"class="imgstyle-4"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Unattempted </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/03-(14-14)_Red_ICON_(Square)-290318_1_svg.svg" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prpless"> Over Time Qns. </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div>
													</div> --%>
													
														<div  class="panel-wrapper collapse in performance-body">
												<div  class="panel-body">
													
													<div  class="row mb-20 ">
														<%-- <div  class="col-sm-6">
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prple"> Score </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10"><span class="purple"><span id="marksObtained"></span>/<span id="totalMarks"></span></span></div> --%>
													<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/attempted.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Attempted</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><button class="btn btn-attempt" data-toggle="modal" data-target="#myModal"><span class="performance-ele-txt" id="attempted"></span></button></li>
													</ul>
													</div>
													<div class="modal" id="myModal">
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														          <h4 class="modal-title">Attempeted Questions </h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupattempetedquestions">
														        
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!--  <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> -Ve Marks </span>-->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-minus-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> -Ve marks </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="negative"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Correct.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Correct</span></li>
													<li><span class="view-correct">:</span></li>
													<li><span class="performance-ele-txt" id="correct"></span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Accuracy % </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-target-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Accuracy % </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="accuracy"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Wrong.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Wrong</span></li>
													<li><span class="view-wrong">:</span></li>
													<li><span class="performance-ele-txt" id="wrong"></span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentage </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-percentage-50.png" alt="logo"class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentage </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentage"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Unattempted.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">UnAttempted</span></li>
													<li><span class="view-unattempted">:</span></li>
													<li><span class="performance-ele-txt" id="unAttempted"></span></li>
													</ul>
													</div>
													<div  class="row mb-20">
														<%-- <div  class="col-sm-6">
															<!-- <span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Percentile </span> -->
															<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-racism-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Percentile </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="percentile"></div> --%>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/overtime.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Over Time Qns</span></li>
													<li><span class="per-elem-style-sides-2">:</span></li>
													<li><span class="performance-ele-txt" id="overtime"></span></li>
													</ul>
													</div>
													<%-- <div  class="row mb-20">
														<div  class="col-sm-6">
														<!-- 	<span class=""><i class="fa fa-bar-chart rounded_icon_purple"></i> Speed(Qns/hr) </span> -->
														<span ><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-running-rabbit-50.png" alt="logo" class="imgstyle"><!-- <i class="fa fa-bar-chart rounded_icon_purple"></i> --></span><span class="prples"> Speed </span>
														</div>
														<div  class="col-sm-1 mt-10">:</div>
														<div  class="col-sm-4 mt-10" id="speed"></div>
														<ul class="performance-stds-icons">
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/performance/Speed.png" class="avg-stdsimgs-style img-responsive"></li>
													<li><span class="per-elem-style">Speed</span></li>
													<li><span class="per-elem-style-side-2">:</span></li>
													<li><span class="performance-ele-txt">text</span></li>
													</ul>
													</div> --%>
													
													
													
												</div>
											</div>	
													
												
										</div>
									</div>
								</div>
								<div class="row mt-60">
									<div class="col-sm-8 col-sm-offset-2" style="    padding-top: 30px;
																					background:#fff;	
																				    box-shadow: 0 1px 17px lightgrey;
																				    border-radius: 30px;">
										<div class="row">
										<div class="">
												<div class="center">
													<!-- <i id="idbefaft3" >Performance</i> -->
													<span id="idbefaft4"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/Difficulty-wise.png" alt="logo" class="imgstyle-2">  Difficulty Wise- Accuracy% &amp; Percentage%</span>
												</div>
												<div class="clearfix"></div>
											</div>
												
											<div class="col-sm-5 col-sm-offset-3 ">
											
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
														<div id="morris_bar_chart" class="morris-chart"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-30 mt-60" style="color:white; background-color: #f0f4f5;">
									<div class="col-sm-8 col-sm-offset-2" style="padding: 30px;
									    								background-color: #fff;
																				  box-shadow: 0 1px 10px lightgrey;
																				  border-radius: 30px;">
																				  
													<div class="">
												<div class="center">
												<span id="idbefaft-sub-wise"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/View Questions Header.png" alt="logo" class="imgstyle-2">  Subject-wise performance</span>
													
												</div>
												<div class="clearfix"></div>
											</div>							  
										<div class="table-wrap">
											<div class="table-responsive">
												<table id="std-summary-table" class="table display pb-30" >
													<thead style=" border: 2px solid silver; /*color: #fff; background: #999;*/">
														<tr>
															<td>Subject Name</td>
															<td>Score</td>
															<td>-Ve Marks<br> (Wrong Qns.)</td>
															<td>Unattempted <br>(Qns.)</td>
															<td>Over Time <br>(Qns.)</td>
															<td>Percentage %</td>
															<td>Accuracy %</td>
															<td>Speed (Qns./Hr.)</td>
															
														</tr>
													</thead>
													<tbody id="std-summary-tablebody">
														<!-- <tr>
															<td>Physics</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Chemistry</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Maths</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														<tr>
															<td>Total</td>
															<td><a class="" href="#" target="_blank"><span class="text_score">N/A <br /> (N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_negative_score">N/A <br>(N/A)</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_unattempted">N/A</span></a></td>
															<td><a class="" href="#" target="_blank"><span class="text_time_taken">N/A</span></a></td>
															<td>N/A</td>
															<td>N/A</td>
															<td>N/A</td>
														</tr>
														 -->
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- 
								<div class="row mt-20">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel panel-outer-1"> 
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center panel-body-1" >
												<p>No. of Students scored more than 70% Marks</p>
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#dc4638;"> 62 </p></a>
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel panel-outer-2" >
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center panel-body-2" >
												<p>70%(290) students correctly answered Qns.</p>
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#ffa026;"> 62 </p></a>
													
												</div>
											</div>
										</div>
										
									</div>
								</div>
								<div class="row mb-30">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel panel-outer-3" >
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center panel-body-3" >
												
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#433f4e;"> 62 </p></a>
													<p>70%(290) students not correctly answered Qns.</p>
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel panel-outer-4" >
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center panel-body-4" >
												
													<a href="" data-toggle="modal" data-target="#showmoredetails"><p style="font-size:50px; line-height:60px; color:#4babb9;"> 62 </p></a>
													<p>70%(290) students Unattempted Questions.</p>
												</div>
											</div>
										</div>
										
									</div>
								</div>
								 -->
								
								<div class="row  mb-30 mt-60">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 0px 1px 17px lightgrey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;">
																   
											<div class="">
												<div class="center">
													<!-- <i id="idbefaft3" >Performance</i> -->
													<span id="idbefaft3"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/time-spent.png" alt="logo" class="imgstyle-2">  Time Spent on Each Subject</span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
											<%-- 	<div  class="panel-body">
													
													<div  class="row mb-20 score">
														<div  class="col-sm-4 col-xs-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Physics<span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													
													<div  class="col-sm-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Chemistry <span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													</div>
													<div  class="row mb-20">
														<div  class="col-sm-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Maths <span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													
													<div  class="col-sm-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Biology <span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													</div>
													
													<div  class="row mb-20">
														<div  class="col-sm-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Social Science <span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													
													<div  class="col-sm-4">
															<p class="prple"><img src="<%=request.getContextPath()%>/assets/images/students/summary/icons8-scoreboard-50.png" alt="logo" class="imgstyle">Economics <span class="right">:</span></p>
														</div>
														
														<div class="col-sm-2">
															<p class="purple">03:30</p></div>
													</div>
													
													</div> --%>
													<div class="table-wrap">
									<div class="table-responsive">          
										  <table id="table-timespent" class="table borderless table-score">
										    <thead id="tablehead-timespent">
										      <tr>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Physics</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Chemistry</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Maths</th>
										        <th align="center" class="pad"><i class="fa fa-bar-chart rounded_icon_purple"></i>Biology</th>
										      </tr>
										    </thead>
										    <tbody id="timespent-tablebody" style="border-top: 3px solid #fff;">
										     <!--  <tr>
										        <td class="time1" >50min</td>
										        <td class="time2">60min</td>
										        <td class="time3">60min</td>
										        <td class="time4">100min</td>
										      </tr> -->
										    </tbody>
										  </table>
								   </div>
								   </div>
												</div>
											</div>
										</div>
									</div>
								<!-- <div class="row mt-60">
									<div class="col-sm-10 col-sm-offset-1">
										<div class="row difficulty_wise_graph_div1">
											<div class="col-sm-12">
												<div class="center"><span class="time_spent_each_subject">Time Spent on each Subject</span></div>
													<div class="row mt-20">
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Chemistry <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Maths <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
														<div class="col-sm-2">
															<div class="analytic_subjects_time">
																<i class="fa fa-clock fa-4x sky_blue1"></i>
																<div class="ml-10 mt-10 bold">
																	Physics <br><span class="sky_blue1">N/A</span>
																</div>
															</div>
														</div>
													</div>
											</div>
										</div>
									</div>
								</div>-->
								
								<!-- <div class="row mt-60">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="panel panel-success card_view_overall_feedback">
											<div class="card_view_overall_feedback_heading">
												<div class="center">
													<h6 class="panel-title txt-light">Overall Feedback</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
													<div  class="row mb-20 mt-30">
														<div class="col-sm-8 col-sm-offset-2">
															<ul class="">
															<li>- N/A</li>
																<li>- Good in Accuracy & Speed</li>
																<li>- Need to improve score to get qualified</li>
																<li>- Improve score & -Ve marks in Chemistry</li>
																<li>- Improve Accuracy in Hard level</li>
															</ul>
														</div>
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								 -->
								
							</div>
						</div>
					</div>	
				</div>
			</div>
			
			<!-- /Row -->
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
			
			
			
			 <div class="modal fade" id="showmoredetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										
										<div class="modal-body">
											<form class="livezone_show_model">
												<div class="row mt-30">
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Number of Questions</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="noofquestions"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Test Time</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="testtime"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Unique Features of The Test</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="uniquefeau"></p>
														</div>
													</div>
													<div class="col-md-12 form-group">
														<div class="col-md-5">
															<label class="control-label mb-5">Paper Designed By</label>
														</div>
														<div class="col-md-1">:</div>
														<div class="col-md-6">
															<p id="paperdesi"></p>
														</div>
													</div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
											</div>
									</div>
								</div>
							</div> 
	</div>
	<!-- /Main Content -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<%-- <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> --%>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	
	<script>
		$(document).ready(function(){
			
			getStudentAnalyticsSummary();
			
			//attempeted questions
			var appendata = "";
			
			var LoginData = getLoginData();
			var sId = LoginData.studentid;
			 var testPostId = atob(getParameterByName('id'));
             
			 
			var inputData = {
					 
						"testPostId": testPostId,
						"studentId":sId
					}

	var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		 url: base_url+'rest/student/getSummeryAttemptedQuestions',
		 type:"POST",
	     dataType: "json",
	     data: inputdata,
	     contentType:'application/json', 
		 success: function(data){
		  var passage = "";	
		  var k=0;
		 
		  
		  for(var j=0; j<data.length;j++){
			  passage = data[j].passagequestions;
			  if(passage == null){
				  
				  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
				   "<label><span>Q. ("+ (k += 1) +") : </span></label><label><span style='color: #FF4043;'>"+data[j].question+"</span></label></div>"+
				     "<div class='col-md-12'>"+
				    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+data[j].option1+"</span></label></div>"+
				"<div class='col-md-12'>"+
				    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+data[j].option2+"</span></label>"+

				"</div><div class='col-md-12'>"+
				    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+data[j].option3+"</span></label>"+

				"</div><div class='col-md-12'>"+
				    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+data[j].option4+"</span></label>"+
	            "</div></div></div>";
				  
		    	 
			  }
			  else{
				  appendata += "<div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+data[j].question+"</p></b></div></div>"
				 
				  for(i=0;i<passage.length;i++){
					  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
					   "<label><span>Q. ("+(k += 1)+") : </span></label><label><span style='color: #FF4043;'>"+passage[i].question+"</span></label></div>"+
					     "<div class='col-md-12'>"+
					    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option1+"</span></label></div>"+
					"<div class='col-md-12'>"+
					    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option2+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option3+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option4+"</span></label>"+
		            "</div></div></div>";
					  
			    	    }
				
				  
			  }	  
		  }
		  
		  
		  
		  $("#popupattempetedquestions").empty();
		  $("#popupattempetedquestions").append(appendata);
		 
		  
	  },
	  error:function(data){
		  alert("Getting Attempeted all questions failed!")
	  }
	}); 
			
			
			
			//attempeted questions
		});
		Morris.Bar({
			  element: 'morris_bar_chart',
			  data: [
			    { y: 'Easy', a: 100, b: 90 },
			    { y: 'Medium', a: 75,  b: 65 },
			    { y: 'Hard', a: 50,  b: 40 },
			    
			  ],
			  xkey: 'y',
			  ykeys: ['a', 'b'],
			  labels: ['Accuracy%', 'Percentage%']
			});
	</script>
	<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("act");
var btns = header.getElementsByClassName("icon-btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
