<%@page import="com.zomant.util.AppConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="AdminType" value="student" scope="session" />


<%@include file="/jsp/master/default.jsp"%>

<style>

#comparitivemodal tbody,#comparitivemodal tfoot,#comparitivemodal thead,#comparitivemodal tr,#comparitivemodal th,#comparitivemodal td,#showmoreModal tbody,#showmoreModal tfoot,#showmoreModal thead,#showmoreModal tr,#showmoreModal th,#showmoreModal td {
	border: 1px solid #777;
}

#correctModal tbody,#correctModal tfoot,#correctModal thead,#correctModal tr,#correctModal th,#correctModal td{
border: 1px solid #777;
}
.fonkar{
color:black;
font-size:19px;
}
.comppage{
margin-left:0 !important;
min-height:0 !important;
}
.txtmrks{
font-size:large;
font-weight:bolder;
color:grey;
}
.percentile-inbar{
position: absolute;
    right: 354px;
    top: 99px;
    font-size:large;
    color:grey;

}
@media screen and (max-width:768px) {
	.students_analytics_summery_air_div {
		margin-bottom: 15px !important;
	}
	.students_analytics_summery_air_div2 {
		margin-bottom: 15px !important;
	}
}

@media screen and (min-width:768px) and (max-width:1024px) {
	.students_analytics_summery_air_div {
		width: 180px;
	}
	.students_analytics_summery_air_div2 {
		width: 180px;
	}
	
	.students_analytics_summery_air_div3 {
		width: 180px;
	}
}
#idbefaft2{
	background-color: red;
   padding: 20px;
   border-radius: 0 0 27px 27px;
   position: relative;
   top: -12px;
   background-image: linear-gradient(to right, #feab0b, #f87006);
   color: white;
 font-size: 18px;
}
#idbefaft2:before{
	content: "";
    position: absolute;
    top: 0px;
    
    left: -12px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 7px 0px 5px;
}
#idbefaft2:after{
	content: "";
	transform:rotate(90deg);
    position: absolute;
    top: -2px;
    /* left: 155px; */
   left: 320px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 8px 0px 4px;
}
.zmdi{display:none;}
 .slimScrollDiv{display:none;} 
 .fixed-sidebar-left{display:none;} 
 .navbar-fixed-top{display:none;}
  

#idbefaft3{
	background-color: red;
   padding: 20px;
   border-radius: 0 0 27px 27px;
   position: relative;
   top: -8px;
   background-image: linear-gradient(to right, #feab0b, #f87006);
   color: white;
   font-size:28px;
}
#idbefaft3:before{
	content: "";
    position: absolute;
    top: 0px;
    
    left: -12px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 7px 0px 5px;
}
#idbefaft3:after{
	content: "";
	transform:rotate(90deg);
    position: absolute;
    top: -2px;
    /* left: 155px; */
    left:155px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 8px 0px 4px;
}


#idbefaft{
	background-color: red;
   padding: 20px;
   border-radius: 0 0 27px 27px;
   position: relative;
   top: -10px;
   background-image: linear-gradient(to right, #feab0b, #f87006);
   color: white;
   font-size:20px;
}
.sevnty-stds-icons li{
list-style-type: none;
  float: left;
}	
#idbefaft:before{
	content: "";
    position: absolute;
    top: 0px;
    
    left: -12px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 7px 0px 5px;
}
#idbefaft:after{
	content: "";
	transform:rotate(90deg);
    position: absolute;
    top: -2px;
    /* left: 155px; */
    left:  279px;
    width: 0;
    height: 0;
    border-color: transparent #d48a04 transparent transparent;
    border-style: solid;
    border-width: 8px 8px 0px 4px;
}
#qualified{
    position: relative;
    bottom: -10px;
}
.mt-12{
margin-bottom:12px;
}

.mt-set{
margin-bottom:12px;
margin-top:12px;
}

table th{
color:black;
font-weight:bold;
}
.avg-stdsimgs-style{
height:40px;
width:40px;
}

.avg-stds-icons li{
vertical-align: middle;
}

 @media screen and (max-width:767px){
 .avg-students-res{
 padding-top:20px;
 }
  .avg-students-res-2{
 padding-top:20px;
 }
 
 }
 @media screen and (min-width:768px) and (max-width:900px){
  .avg-students-res-2{
 margin-left:14px;
 }
 .colon-style{
 margin-left:100px;
 }
 
 
 
 }
 @media screen and (max-width:400px){
 .res-size{
 font-size:10px;
 }
 }
 @media screen and (min-width:1024px) and (max-width:1120px){
 .colon-style{
 margin-left:15px;
 }
 .sevtyulstyle{
 padding-left: 250px;
 }
 }
 /* .70-corner .sevetycont{
 list-style-type: none;
  
 } */
 
 .sevety-corner li{
 display: inline-flex;
 vertical-align:middle;
 }
 .sevety-side{
 padding-left:5px;
 }
 
  .actives, .icon-btn:actives {
    box-shadow: 0 1px 20px grey;
    border-radius: 24px;
    animation: fadeOut 1s;
    width: 231px !important;
}
.imgstyle{
width:190px;
}
.imgstyle2{
width:195px;
}
.sevtyulstyle{
    padding-left: 350px;
    padding-top: 3px;
} 
.sevty-li-side{
padding-left:10px;
color:#fff;
font-size:28px;
}

.sevety-corner-main{
padding-top:20px;
}

@media screen and (max-width:767px){

.sevtyulstyle{
    padding-left: 70px;
}
}

@media screen and (min-width:768px) and (max-width:900px){
.sevtyulstyle{
 padding-left: 210px;
 }
 
}
@media screen and (min-width:1024){
.dots{
padding-left:60px;
}
}

.tbl {
    border-collapse: collapse;
        margin: 0 auto;
            border-bottom: 1px solid lightgray;
}
 
.tbl tr th{
   border-bottom:1px solid lightgray;
   white-space:nowrap;
    padding:10px;
    color:#6DC8F3;
    text-align: center;
}
.tbl #score_tbody tr td {
text-align:center;
padding:10px;
color:#7D818B;
border-bottom: 0.5px solid transparent;
}
#score_tbody{
text-align:center;
}
.panel-body-pro{
     border-radius: 10px;
    background: #fff;
    padding: 10px 22px;
    box-shadow: 0 0 0.9 black;
    box-shadow: 3px 5px 40px grey;
 }
 
 .modal{
 	border-radius:15px !important;
 }
/*  .seventy{
    margin-left: 10px;
    margin-right: -144px;
 } */
 
 
 .dots{
 padding-left:60px;
 }
 .imgstyle-3{
height:25px;
width:25px;
}
.close{
  font-size: 21px;
    color: red;
   opacity: 0.6 !important;
   border: 1px solid red !important;
    padding: 4px 6px !important;
    border-radius: 25px;
    }
 .close:hover{color:red;}
.modal-header {
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
}   
.h6-model{
	text-align:center;
	    font-size: 14px;
    font-weight: bold;
    margin-bottom: 15px;
    margin-top: -18px;
}
.content-body{
	width: 787px;
}

@media screen and (min-width:768px) and (max-width:1023px){
.avgstdsres{
padding-right:60px;
}
.text-size-responsive{
font-size:10px;
}
}
 @media screen and (min-width:320px) and (max-width:425px){
.avg-std{
padding-left:120px;
}
}  


/* fixed bar css */
#freeaccess_btn {
padding: 5px 12px 5px 25px;
    font-size: 20px;
    background-color: #fb397d;
    text-decoration: none;
   /*  border-radius: 0 15px 15px 0; */
     border-top-left-radius: 30px;
    border-bottom-left-radius:30px;
    color: white;
    box-shadow: -4px 4px 7px 0px rgba(0,0,0,0.75);
}
#freeaccess_div {
   /*  position: fixed;
    left: -20px;
    top: 55%;
    z-index: 2; */
    position: fixed;
    right: 0px;
    top: 55%;
    z-index: 2;
}
.slideInRight {
    -webkit-animation-name: slideInRight;
    animation-name: slideInRight;
}

.animated {
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}

.attemptqns{
color:#9932CC;
font-size:bold;
}
.correctqns{
color:#9932CC;
font-size:bold;
}
.icnstyle{
color:#E9967A;
font-size:20px;
}

.studentname{
font-size:20px;
color: #09a275;
}
.studentmsg{
font-size:15px;
color:#FF7F27;
}

.unattmptcount{
color:#9c67ef;
font-size:bold;
}
.notcrctcount{
color:#ff0000;
font-size:bold;
}
.crctcunt{
color: #8fc83f;
font-size:bold;
}

.sevetypercenticons{
    display: flex;
    justify-content: center;
}

.avgstdscountstyle{
font-weight:bold;
font-size:20px;
color:grey;
}
.pd-5{
	padding: 5px 0;
}
.optionswrap p{
	display: inline-block;
}

.nav-tabs > li.active > a{
color:deepskyblue !important;
border-bottom:2px solid deepskyblue !important;
}
</style>

<!-- Main Content -->
<div class="page-wrapper comppage" style="background-color: #f0f4f5"
	style="background-color:gray!important">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
		<div class="col-xs-12 left">
			<span class="studentmsg">Hey <span id="student-name" class="studentname"></span>, check your Test analytics here..</span>
			</div> 
			<div class="col-sm-12">
				<div class="panel panel-default card-view"
					 style="background-color:#f0f4f5">
					<div class="panel-heading">
				
						<div class="clearfix"></div>
						
						<div class="row">
							 <div class="col-xs-12 right">
							 <a onclick = "exit();" style="margin:0 auto;border-radius:20px;" class="btn btn-danger">EXIT</a>
							 </div>
							</div>
						<div class="row mb-20">
						<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 col-xs-offset-3 right">
						<a id="analyticsbtn" href="<%=request.getContextPath()%>/jsp/student/student module/student_analytics3.jsp"><img src="<%=request.getContextPath()%>/assets/images/students/summary/individual/individaulbutton.svg" class="img-responsive imgstyle icon-btnn" alt="logo"  ></a>
							</div>	
							<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
						<a id="comparativebtn" href="<%=request.getContextPath()%>/jsp/student/student module/comparitive_analytics.jsp"><img src="<%=request.getContextPath()%>/assets/images/students/summary/Comparitive-Analytics white.png" class="img-responsive imgstyle2 icon-btnn actives" alt="logo"></a>
							</div>		
							 <div class="col-lg-3 col-sm-3 col-md-3 col-xs-3 left">
								<a id="toppersbtn"
									href="student_analytics_top_ten_toppers_subjects.jsp"><img
									src="<%=request.getContextPath()%>/assets/images/students/summary/toppers.png"
									class="img-responsive icon-btn"
									style="box-shadow: 0 1px 20px lightgray; width: 135px; height: 70px; border-radius: 20px;"
									alt="logo"></a>
							</div> 
						 </div>
						 
						 </div>
						 	
					
					    <div class="row">
							<div class="col-md-12 col-md-offset-4">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#summary"
										aria-controls="home" role="tab" data-toggle="tab">Summary</a></li>
									<li role="presentation"><a href="#Questionwise"
										aria-controls="profile" role="tab" data-toggle="tab">Question-Wise</a></li>
									<li role="presentation"><a href="#subjectvsdifficulty"
										aria-controls="profile" role="tab" data-toggle="tab">Subject
											vs Difficulty</a></li>
									<li role="presentation"><a href="#statecity"
										aria-controls="profile" role="tab" data-toggle="tab">State
											& City Rank</a></li>
								</ul>
							</div>
						</div>
						 
						 	<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="summary">
						 
						<div class="row mb-0" style="padding:30px;">
						
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Test Name : <span id="testname"></span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Test type : <span id="testtype"></span></span>
							</div>
							
							<div class="col-xs-4" style="text-align:center">
							<span style="color: grey; font-weight:bold;" class="font-12">Date : <span id="testdate"></span></span>
							</div>
							
						</div>
				
						
					
					
					 <div class="row mb-0"  style="padding: 30px; margin-top: 25px">
							<div class="col-xs-12  center">
							
							<i class="fa fa-thumbs-up" aria-hidden="true" style ="color:#09a275; font-size: xx-large;"></i> &nbsp; <span class=" txtmrks">Your Marks: <span class=" sky_blue1 font-16"><span id="yurmarks"></span>/<span id="totalms"></span></span></span>
						</div>
						</div>
						  <div class="wow slideInRight" data-wow-duration="1s" id="freeaccess_div" style="visibility: visible; animation-duration: 1s; animation-name: slideInRight;">
            <a href="#" class="wobble-horizontal" id="freeaccess_btn" data-toggle="modal" data-target="#showmoreModal" data-backdrop="true">Show Paper</a>
        </div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">
							<div class="row mt-20 pb-40">
								<div class="col-sm-2 col-sm-offset-2">
									<div class="center">
										<div class="students_analytics_summery_air_div gapdown">
											<p class="students_analytics_summery_green">AIR</p>
											<p class="students_analytics_summery_rank"id="allindiarank"></p>
											<p class="students_analytics_summery_text">out of <span  id="outofallindiarank"> </span></p>
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-sm-offset-1">
									<div class="center">
										<div class="students_analytics_summery_air_div2 gapdown">
											<p class="students_analytics_summery_green">State</p>
											<p class="students_analytics_summery_rank" id="staterank"></p>
											<p class="students_analytics_summery_text">out of  <span  id="outofallstaterank"> </span></p>
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-sm-offset-1">
									<div class="center">
										<div class="students_analytics_summery_air_div3 gapdown">
											<p class="students_analytics_summery_green">City</p>
											<p class="students_analytics_summery_rank" id="cityrank"></p>
											<p class="students_analytics_summery_text">out of  <span  id="outofallcityrank"> </span></p>
										</div>
									</div>
								</div>
							</div>
					
								<div class="row mt-40  mb-30" style="background-color: #f0f4f5;">
									<div class="col-sm-8 col-sm-offset-2">
										<div  class="panel-body-pro">
											<span class="txtmrks">Cut-off : <span class="text_time_taken font-16" id="cutoff"></span> <span class="pull-right txtmrks">Your Marks: <span class=" sky_blue1 font-16"><span id="yourmarks"></span>/<span id="totalmarks"></span></span></span></span>
											<div class="progress progress-lg mt-10">
												<div class="progress-bar progress-bar-success" style="width: 75%;" role="progressbar" id="pgbar"></div>
											</div>
											<span class=" txtmrks">No.of Students Qualified: <span class="text_negative_score font-16" id="no-ofstdsqualified">N/A</span><span class="percentile-inbar">Percentile : <span id="comparitive-percentile"></span></span><span class="pull-right bold font-16 text-success" id="qualified"></span></span>
										</div>
									</div>
								</div>
							<br />
			
			                            
			                        <div class="col-sm-6 col-sm-offset-3">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 5px 40px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;">
											<div class="">
												<div class="center">
													<i id="idbefaft2" ><img src="<%=request.getContextPath()%>/assets/images/students/AllIndiaSlabwisePerformance.svg" alt="logo" class="imgstyle-3">  All India Slab-wise Performance</i>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
												   <div class="row mt-set">
												   <div class="table-responsive">
												<table class="table table-hover" id="all-india-table">
												<thead>
												   <tr>
												   <td> percentage % - slab</td>
												    <td>No.of Students</td>
												    <td>Your position</td>
												   <!--  <td>status</td> -->
												   </tr>
												   </thead>
												   <tbody id="all-india-table-body">
												   
												    </tbody>
												</table>
												</div>
											     </div>						
												</div>
											</div>
										</div>
									</div>    
			
								
		
							
							<br/>
							
							
							<div class="row">
							 <div class="col-sm-6 col-sm-offset-3" style="padding-top:50px;">
							<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 5px 40px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;">
											<div class="">
												<div class="center">
													<!-- <i id="idbefaft" >All India Slab-wise Performance</i> -->
													<span id="idbefaft3"  ><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/70percentcorner/Cornerheader.svg" alt="logo" class="imgstyle-3"> Corner </span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
												   <div class="row mt-set " style="margin-right:0px; margin-left:0px;">
												   <!-- comparitive analytics changes by clients -->
											<div class="row mt-20">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left:-73px;
																    margin-right: -9px;
																     width:210px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					    /*  padding-bottom: 60px;  */
																					    border-top: 25px solid #f9dca9;
																					    border-radius: 25px;
																					    border-left: 25px solid #f9dca9;">
											  <span class="sevetypercenticons"><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/70percentcorner/Number of Students.png" class="avg-stdsimgs-style img-responsive" alt="logo" ></span>
												<p>No. of Students scored more than 70% Marks</p>
													<button class="" data-toggle="modal"   data-target="#showmoredetails" onclick= "getScoredMore()" style="background: white;border: none;"><span class="performance-txt" data-toggle="tooltip" title="Click To Check students scored more than 70% marks" style="font-size:50px; line-height:60px; color:#fbaa19;" id="more-than-seventy"></span></button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;
																    width:210px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style=" padding-top: 20px;
                                                                                  /* padding-bottom: 60px; */
                                                                             border-top: 25px solid #c3d4aa;
                                                                                      border-radius: 25px;
                                                                         border-right: 25px solid #c3d4aa;">
                                               <span class="sevetypercenticons"><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/70percentcorner/Correct.png" class="avg-stdsimgs-style img-responsive" alt="logo" ></span>                          
												<p>70% <span class="crctcunt">(<span id="crctanswercount"></span>)</span> students correctly answered Qns.</p>
													<!-- <a href="" data-toggle="modal" data-target="#correct-answer-qns-Modal"><p style="font-size:50px; line-height:60px; color:#ffa026;"> 62 </p></a> -->
												<button class="" data-toggle="modal"   data-target="#correct-answer-qns-Modal" onclick= "getStudentSeventyCorrectAnswer()" style="background: white;border: none;"><span class="performance-txt" data-toggle="tooltip" title="Click To Check students correctly answered Qns." style="font-size:50px; line-height:60px; color:#8fc83f;" id="correctly-answered"></span></button>	
												</div>
											</div>
										</div>
										
									</div>
								</div>
										<div class="row mb-30">
									<div class="col-sm-3 col-sm-offset-3">
										<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 0 15px 15px;
																    margin-left: -74px;
																    margin-right: -9px;
																     width:210px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					   /*  padding-bottom: 40px; */
																					    border-bottom: 25px solid #f5b4cb;
																					    border-radius: 25px;
																					    border-left: 25px solid #f5b4cb;">
												
													<!-- <a href="" data-toggle="modal" data-target="#not-correct-answer-qns"><p style="font-size:50px; line-height:60px; color:#433f4e;"> 62 </p></a> -->
													<button class="" data-toggle="modal"   data-target="#not-correct-answer-qns" onclick= "getStudentSeventyNotCorrectAnswer()" style="background: white;border: none;"><span class="performance-txt" data-toggle="tooltip" title="Click To Check students not correctly answered Qns." style="font-size:50px; line-height:60px; color:#ff0000;" id="notcorrectly"></span></button>	
													<p>70%<span class="notcrctcount">(<span id="notcrctanswercount"></span>)</span> students not correctly answered Qns.</p>
													<span class="sevetypercenticons"><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/70percentcorner/wrong.png" class="avg-stdsimgs-style img-responsive" alt="logo" ></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-3 " >
										
											<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 10px 47px grey;
																    padding: 0 15px 15px;
																    margin-left: -9px;
																    margin-right: -9px;
																    width:210px;">
																											
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body center" style="padding-top: 20px;
																					   /*  padding-bottom: 40px; */
																					    border-bottom: 25px solid #dac7f7;
																					    border-radius: 25px;
																					    border-right: 25px solid #dac7f7;">
												
													<!-- <a href="" data-toggle="modal" data-target="#unattempted-qns"><p style="font-size:50px; line-height:60px; color:#4babb9;"> 62 </p></a> -->
													<button class="" data-toggle="modal"   data-target="#unattempted-qns" onclick= "getStudentSeventyunattempted()" style="background: white;border: none;"><span class="performance-txt" data-toggle="tooltip" title="Click To Check students un attempted answered Qns." style="font-size:50px; line-height:60px; color:#9c67ef;" id="unattempted"></span></button>	
													<p>70%<span class="unattmptcount">(<span id="unattemptedanswercount"></span>)</span> students Unattempted Questions.</p>
													<span class="sevetypercenticons"><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/70percentcorner/Unattempted.png" class="avg-stdsimgs-style img-responsive" alt="logo" ></span>
												</div>
											</div>
										</div>
										
									</div>
								</div>		
												
											     </div>						
												</div>
											</div>
										</div>
							
							</div>
							<br />
							

			


							<div class="row mt-60">
							 <div class="col-sm-6 col-sm-offset-3" style="padding-top:50px;">
								
								
									<div class="panel" style="background: #fff;
																    margin-bottom: 12px;
																    border-radius: 12px;
																    box-shadow: 3px 5px 40px grey;						
																    padding: 15px 15px 0;
																    margin-left: -9px;
																    margin-right: -9px;">
											<div class="">
												<div class="center">
													
													<span id="idbefaft"  ><img src="<%=request.getContextPath()%>/assets/images/students/avgstud.svg" class="imgstyle-3"> Average of All Students </span>
												</div>
												<div class="clearfix"></div>
											</div>
											<div  class="panel-wrapper collapse in">
												<div  class="panel-body">
												  <div class="row mt-20 avgstdsres" style="white-space:nowrap;">
												<div class="col-sm-2 col-sm-offset-1">
													<div class="avg-std">
													<ul class="avg-stds-icons">
													<li><span id="avg-score" class="avgstdscountstyle"> </span></li>
													<li class="text-size-responsive">Score</li>
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Score.png" class="avg-stdsimgs-style img-responsive"></li>
													</ul>
														
													</div>
												</div>
												<div class="col-sm-2 avg-students-res">
													<div class="avg-std">
													<ul class="avg-stds-icons">
													<li><span id="avg-negitive" class="avgstdscountstyle"> </span></li>
													<li class="text-size-responsive">-Ve Marks</li>
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/marks.png" class="avg-stdsimgs-style img-responsive"></li>
													</ul>
														
													</div>
												</div>
												<div class="col-sm-2 avg-students-res">
													<div class="avg-std">
													<ul class="avg-stds-icons">
													<li><span id="avg-accuracy" class="avgstdscountstyle"> </span></li>
													<li class="text-size-responsive">Accuracy%</li>
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Accuracy.png" class="avg-stdsimgs-style img-responsive"></li>
													</ul>
													</div>
												</div>
												<div class="col-sm-2 avg-students-res">
													<div class="avg-std">
													<ul class="avg-stds-icons">
													<li><span id="avg-percentage" class="avgstdscountstyle"> </span></li>
													<li class="text-size-responsive">Percentage%</li>
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/percentage.png" class="avg-stdsimgs-style img-responsive"></li>
													</ul>
													</div>
												</div>
												<div class="col-sm-2 avg-students-res-2">
													<div class="avg-std">
													<ul class="avg-stds-icons">
													<li><span id="avg-speed" class="avgstdscountstyle"> </span></li>
													<li class="text-size-responsive">Speed(Qns/hr)</li>
													<li><img src="<%=request.getContextPath()%>/assets/images/students/summary/comparitive/Speed.png" class="avg-stdsimgs-style img-responsive"></li>
													</ul>
													</div>
												</div>
											</div>	
												</div>
											</div>
										</div>
								
							</div>

</div>

						</div>
					</div>
				</div>
				
				</div>
				
				   <div role="tabpanel" class="tab-pane" id="Questionwise">
				   
                            <%@include file="/jsp/student/companalytic/questionwise.jsp"%>
					</div>

							<div role="tabpanel" class="tab-pane" id="subjectvsdifficulty">
                            <%@include file="/jsp/student/companalytic/difficultywise.jsp"%>
							</div>

						


						<div role="tabpanel" class="tab-pane" id="statecity">
                            <%@include file="/jsp/student/companalytic/citystaterank.jsp"%>
						</div>
				</div>
				
				
				
			</div>
		</div>

		<!-- /Row -->
	</div>
	
	 <div class="modal fade" id="showmoredetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
								<div class="modal-dialog" role="document">
									<div class="modal-content content-body">
										<div class="modal-header">
										 <h4 class="fonkar">Hey,<span id="compsevetyperstd"></span></h4>
										 <h4 class="modal-title text-center"><span>No. of Students scored more than 70% Marks</span></h4>
									          <button type="button" class="close" data-dismiss="modal">X</button>
									         
									        </div>
										<div class="modal-body" id="comparitvepopuptable">
											  <div class="">
											   <h6 class="modal-title h6-model">No. of Students scored more than 70% Marks</h6>
											  <table class="table tbl table-responsive" id="table-score" style="border: 2px solid lightgray;">
											  
												  <tr>
												    <th >Photo</th>
												    <th>Student Name</th>
												    <th>Student ID</th>
												    <th>Score</th>									   
												    <th>Percentage %</th>
												    <th>State</th>
												    <th>City</th>
												  </tr>
												  
												  <tbody id="score_tbody">
												 <!--  <tr>
												    <td>Photo</td>
												    <td>Sridhar</td>
												    <td>007</td>
												    <td>90</td>
												    <td>90%</td>
												    <td>Telangana</td>
												    <td>Hyderabad</td>
												  </tr>
												  <tr>
												    <td>Photo</td>
												    <td>Sridhar</td>
												    <td>007</td>
												    <td>90/100</td>
												    <td>90%</td>
												    <td>Telangana</td>
												    <td>Hyderabad</td>
												  </tr>
												   <tr>
												    <td>Photo</td>
												    <td>Sridhar</td>
												    <td>007</td>
												    <td>90/100</td>
												    <td>90%</td>
												    <td>Telangana</td>
												    <td>Hyderabad</td>
												  </tr> -->
												  </tbody>
												</table>
																								
												</div>
										</div>
										<!-- <div class="modal-footer">
											<a type="button" class="btn btn-default" data-dismiss="modal">Close</a>
											</div> -->
									</div>
								</div>
							</div> 
							<div class="modal" id="correct-answer-qns-Modal">
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														         <h4 class="fonkar">Hey,<span id="compcrct"></span></h4>
														          <h4 class="modal-title text-center"><span>Correctly Answered Questions </span></h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupcorrecetanswerqns">
														        
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
														  
														  <div class="modal" id="not-correct-answer-qns">
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														         <h4 class="fonkar">Hey,<span id="compnotcrct"></span></h4>
														          <h4 class="modal-title text-center"><span >Not Correctly Answered Questions </span></h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupnotcorrectanswerqns">
														        
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
														  
														  
														   <div class="modal" id="unattempted-qns">
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														        <h4 class="fonkar">Hey,<span id="compunattmpt"></span></h4>
														          <h4 class="modal-title text-center"><span>Un Attempted Questions</span> </h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="comparitiveunattemptedqns">
														        
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
														  
														  
														  	<div class="modal fade" id="showmoreModal" tabindex="-1" role="dialog" aria-labelledby="showmoreModal">
							  <div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
											  
												 <div class="modal-header">
														        <h4 class="fonkar">Hey,<span id="compshowpaper"></span></h4>
														        
														          
														        </div>		        
									<div class="modal-body">
										<div class="panel-body">
											<div class="panel-group accordion-struct" id="showmoreModal_tbody" role="tablist" aria-multiselectable="true">
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1">
														
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs" id="shopepertabs">
																<li class="" role="presentation"></li>
																<li role="presentation" class="">Getting Subjects...</li>
																<li role="presentation" class=""></li>
															</ul>
															
															<div class="tab-content" id="questionsContents">
															
																
															
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
						   
						   
						   <div class="modal" id="comparitivemodal" >
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														        <h4 class="fonkar">Hey,<span id="comparitvepopup"></span></h4>
														          <h4 class="modal-title text-center">Comparitive Analytics</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupcomparitveerror" style="font-size:30px; color:darkcyan;">
														            
														            
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>																
							
	<%@include file="/jsp/master/footer.jsp"%>
</div>
</div>
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>

<script>
	$(document).ready(function() {
		/*  $(window).on('load',function(){
		        $('#comparitivemodal').modal('show');
		    }); */
		
	   
		
		var LoginData = getLoginData();
		$("#student-name").html(LoginData.name); 
		$("#compshowpaper").html(LoginData.name);
		$("#compunattmpt").html(LoginData.name);
		$("#compnotcrct").html(LoginData.name);
		$("#compsevetyperstd").html(LoginData.name);
		$("#comparitvepopup").html(LoginData.name);
		$("#compcrct").html(LoginData.name);
		getStudentComparitiveAnalytics();
		getScoredMore();
		showpaperques();
		
		//$( "#tabs" ).tabs();
		/* $("#analyticsbtn").prop("href","student_analytics3.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid'));
		$("#comparativebtn").prop("href","comparitive_analytics.jsp?id="+getParameterByName('id')+"&stid="+getParameterByName('stid')); */
		 $("#analyticsbtn").prop("href","student_analytics3.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype'));
			$("#comparativebtn").prop("href","comparitive_analytics.jsp?id="+getParameterByName('id')+"&exm="+getParameterByName('exm')+"&testtype="+getParameterByName('testtype'));
		
	});
</script>
<script>
// Add active class to the current button (highlight it)
/* var header = document.getElementById("act");
var btns = header.getElementsByClassName("icon-btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("actives");
    current[0].className = current[0].className.replace(" actives", "");
    this.className += " actives";
  });
}
$('[data-toggle="tooltip"]').tooltip();   */
</script>