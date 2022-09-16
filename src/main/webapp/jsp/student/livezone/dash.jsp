
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<%@include file="/jsp/student/student module/studenttraking.jsp" %>
 <link href="<%=request.getContextPath()%>/assets/css/parent/css/dash.css" rel="stylesheet">

  <link href="<%=request.getContextPath()%>/assets/css/parent/css/jQuery-plugin-progressbar.css" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
 
<!-- <body>  -->
<div class="page-wrapper">
<div class="container" id="container-verticalbar">
    <div class="row" id="tabrow">
     <div class="col-md-6 col-md-offset-3" id="toptab">
        <ul id="examtypesget">
           <!-- <li><a data-toggle="tab" href="#tab1">Mains</a></li>
            <li><a data-toggle="tab" href="#tab2">Jee Mains</a></li>
            <li><a data-toggle="tab" href="#tab3">BitSat</a></li>-->
        </ul>
     </div>
    </div>
    <!-- End of Tabs -->
    <div class="tab-content" id="dashboard">
<div class="tab-pane fade in active" id="tab1" role="tabpanel">
      <div class="row" id="topperrow-2">
        <div class="row testtaken" > 
		<div class="">
		<div class="col-md-6"><span style="color: #00a2e8;">Status till Date :</span></div></div>
		<div class="rightflo">
		<div class="col-md-12"><span>No. of Tests taken in Live Zone :</span><span id="testtakentill" style="font-size: 24px; color: deepskyblue;" ></span> </div></div>
		</div>
		<div class="row" id="topper-total">
		             <div class="col-md-4">
					   <div class="col-md-12 padd"><img width="25px" style="margin-right: 10px;" src="<%=request.getContextPath()%>/assets/landing/img/einsteinsubjectwise/eye.svg"> Total Viewed Qns :<span class="colr" id="ttlqns"></span></div>
					 </div>
					  <div class="col-md-4">
					   <div class="col-md-12 padd"><img width="25px" style="margin-right: 10px;" src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/attempted.png"> Attempted Qns :<span class="colr" id="attqns"></span></div>
					  </div>
					   <div class="col-md-4">
					    <div class="col-md-12 padd"><img width="25px" style="margin-right: 10px;" src="<%=request.getContextPath()%>/assets/images/students/summary/individual/view/Correct.png"> Correct Qns :<span class="colr" id="crtqns"></span></div>
					   </div>
		</div>
        <div class="row" id="topper-total">

		<div class=""><span style="color: #00a2e8;margin-left: 20px;font-weight: bold;">Best Ranks:</span></div>
             <div class="col-md-4">
                <div class="row center">
                 
                <img class="topperimg" src="<%=request.getContextPath()%>/assets/images/parents/Fullsyllabusrank.svg" alt="">
                <p style="position:absolute;top:15px;left:166px;font-size:25px;font-weight:bold;" id="fullSyllabusBestRank"></p>
                  <p style="position:absolute;top: 42px;left: 104px;font-size: 17px;font-weight:bold;" >Full Syllabus Rank</p>
                 </div>
             </div>
             <div class="col-md-4">
                    <div class="row center">
                      
                   <img class="topperimg" src="<%=request.getContextPath()%>/assets/images/parents/Mocktest.svg" alt="">
                   <p style="position:absolute;top:15px;left:166px;font-size:25px;font-weight:bold;" id="mockTestBestRank"></p>
                     <p style="position:absolute;top: 42px;left: 115px;font-size: 17px;font-weight:bold;">MockTest Rank</p>
                     </div>
                 </div>
                 <div class="col-md-4">
                        <div class="row center">
                          
                      <img src="<%=request.getContextPath()%>/assets/images/parents/Qualifiedtest.svg" style="position:relative" width="130px" height="105px" alt="">
                        <p style="position:absolute;top:42px;left:187px;font-size:25px;font-weight:bold;" id="fullSyllabusQualifiedTests"></p>
						<p style="font-size: 17px;font-weight: bold;" >Qualified Tests<span  style="font-size: 10px;vertical-align:middle">(In Full Syllabus)</span> </p>
                         </div>
                     </div>
        </div>
    </div>
    <!-- Topper section End -->
   

    <div class="row bar-row">
	<div class="" style="margin-top: 9px;"><span style="color: #00a2e8;margin-left: 20px;font-weight: bold;">Avg. Performance:</span></div>
        <div class="bar-height" id="barsprogress">
		
    <!-- <div class="progress-bar position"></div> -->
    <div class="col-md-4 col-sm-4 progress-bar position" data-duration="1000" data-color="#fff,skyblue" id="percentage"><span>Percentage</span></div>
    <div class="col-md-4 col-sm-4 progress-bar position accuracy"  data-duration="1000" data-color="#fff,yellow" id="accuracy"><span>Accuracy</span></div>
    <div class="col-md-4 col-sm-4 progress-bar position speed"  data-duration="1000" data-color="#fff,pink" id="speed" ><span>Speed</span></div>
	<!-- <div class="progress-bar position" data-percent="20" data-color="#fff,blue"></div> -->
    <!-- <input type="submit" value="reload"> -->
    </div>
    </div>
    <!-- End of circle progress bar -->
<div class="col-md-12 patchwise">
    
	<div class="col-md-8 col-md-offset-2" style="margin-top:50px" >
									<div id="progress" class="morris-chart"></div>

									

								</div></div>
								<div class="col-md-12 patchwise">
								<div class="col-md-8 col-md-offset-2" style="margin-top:50px" >
									<div id="progresslevelwise" class="morris-chart"></div>

									

								</div>
								</div>
								
								<!--<div class="col-md-2 col-md-offset-8" style="margin-top:50px" >
								<div class="col-sm-12" style="position: absolute;top: 54px;left: -30px;">
									
									  <div class="form-group" style="display: flex;justify-content: center;align-items: center;">
                                            <label class="control-label mb-5 bold" style="position: relative;z-index: 1;white-space: nowrap;left: -18px;">Months period</label>
								<select class="selectpicker" data-style="form-control btn-default btn-outline" id="monthsperiod" onchange="onChangechartgrphs(this.value)" tabindex="-98">
								</select>
							</div></div>
							</div>-->
							<div class="col-md-12 patchwise">
							<div class="col-md-8" style="margin-top: 17px;"><p id="avgdash_per"></p></div>
							<div class="col-sm-2">
									
									  <div class="form-group" style="display: flex;justify-content: center;align-items: center;">
                                            <label class="control-label mb-5 bold" style="position: relative;z-index: 1;white-space: nowrap;left: -18px;">Months period</label>
								<select class="selectpicker" data-style="form-control btn-default btn-outline" id="monthsperiod" onchange="onChangechartgrphs(this.value)" tabindex="-98">
								</select>
							</div></div>
								<div class="col-md-8 col-md-offset-2" style="" >
									<div id="container-graph" class=""></div>

									

								</div></div>
   
 </div>
 <!-- tab-1 -->
 
     <!-- tab-2 -->
     
</div>
</div>
<%@include file="/jsp/master/footer.jsp" %>


</div>
  
 <script src="<%=request.getContextPath()%>/assets/css/parent/js/jQuery-plugin-progressbar.js"></script>
 
 

  
 
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/dash.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/highcharts/highcharts.js"></script>


<script>
 		 $(document).ready(function() {
		showPopmsg("dashboard");
		/*  gettext();  */
		});
	</script> 

