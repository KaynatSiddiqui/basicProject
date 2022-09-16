
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/einsteinanlaytics.css" rel="stylesheet">
 <link href="<%=request.getContextPath()%>/assets/css/parent/css/jQuery-plugin-progressbar.css" rel="stylesheet">
<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="row mb-20">
						<div class="col-sm-4">
							<div class="">
								<img src="/zomanttesting/assets/images/students/Einstein_Analytics.svg" width="300px">
							</div>
						</div>
					</div>
					
							 <div class="row" id="tabrow">
     <div class="col-md-6 col-md-offset-3" id="toptab">
        <ul id="examtypesget">
           
        </ul>
     </div>
    </div>
					<div class="row mt-10 mb-10">
						<div class="col-sm-12 col-sm-offset-2">
						<input type="hidden" id="exmtypeid" value="">
							<ul class="nav nav-tabs" id="summarytabs" role="tablist">
								<li class="active"><a href="#summary" onclick="getsummery()" aria-controls="home" role="tab" data-toggle="tab">Summary</a></li>
								<li><a href="#subjectwise" aria-controls="profile" role="tab" onclick="geteinsteinsubject('subwise')" data-toggle="tab" >Subject wise</a></li>
								<li><a href="#chapter" aria-controls="messages" role="tab" onclick="geteinsteinsubject('chpwise')" data-toggle="tab">Chapter Wise</a></li>
								<li><a href="#livezoneslabs" id="slabssummarytab" aria-controls="settings" role="tab" onclick="livezoneslabs('slabsummry')" data-toggle="tab">Live-Zone slabs</a></li>
								<!-- <li  id="slabview" ><a href="#livezoneslabsview" aria-controls="settings" role="tab" data-toggle="tab">Live-Zone slabs View</a></li> -->
								<li><a href="#weekwisetests" aria-controls="settings" role="tab" data-toggle="tab" onclick="getweekwisetests()">Week wise tests</a></li>
								
							</ul>
						</div>
					</div>
					<div class="panel-wrapper collapse in  mb-20" style="padding: 10px">
						<div class="panel-body">

							<div class="tab-content" id="summarytabpane">
								<div role="tabpanel" class="tab-pane active thickbox-open" id="summary">

									<div class="row">
										<div class="col-md-12">
											<div class="col-md-12">
												<!--<div class="row">
													<div class="col-sm-2 col-sm-offset-8">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="monthsperiod">
														
														</select>
													</div>
												</div>-->
												<div class="row">
													<div class="col-sm-12">
														<div class="tab-struct custom-tab-1 mt-40 patchwise">
														<div class="col-md-6 col-md-offset-2">
															<ul role="tablist" class="nav nav-tabs sky_blue_tabs"
																id="myTabs_7">
						<li class="active" role="presentation"><a aria-expanded="true" data-toggle="tab" role="tab" href="#Tab_1">Percentage</a></li>
						<li role="presentation" class=""><a data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false">Accuracy</a></li>
						<li role="presentation" class=""><a data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false">Speed (Qns/Hr)</a></li>
															</ul>
															</div>
															<div class="col-sm-2">
															<select class="selectpicker" data-style="form-control btn-default btn-outline" id="monthsperiod">
														
														</select></div>
														<!--	<p class="segtbla">
																Avg <span>Physics:45%</span>&nbsp;&nbsp;<span>Chemistry:54%</span>&nbsp;&nbsp;<span>Maths:60%</span>
															</p>-->
															<div class="tab-content" id="myTabContent_7">
																<div id="Tab_1" class="tab-pane fade active in" role="tabpanel">
																
																	<div>
																		<div class="row">
																		<div class="col-sm-12">
																		<div class="col-sm-4 col-md-offset-8">
																		<p id="pecenavg" class="avgpsub"></p>
																		</div>
																		</div>
																			<div class="col-sm-12">
																				<div id="chartmin"></div>
																			</div>
																		</div>
																	</div>
																</div>
																<div id="Tab_2" class="tab-pane fade" role="tabpanel">
																	<div>
																		<div class="row">
																			<div class="col-sm-12">
																		<div class="col-sm-4 col-md-offset-8">
																		<p id="acuracyavg" class="avgpsub"></span></p>
																		</div>
																		</div>
																			<div class="col-sm-12">
																				<div id="chartmin1"></div>
																			</div>
																		</div>
																	</div>
																</div>
																
																<div id="Tab_4" class="tab-pane fade" role="tabpanel">
																	<div>
																		<div class="row">
																			<div class="col-sm-12">
																		<div class="col-sm-4 col-md-offset-8">
																		<p id="sppedavg" class="avgpsub"></span></p>
																		</div>
																		</div>
																			<div class="col-sm-12">
																				<div id="chartmin3"></div>
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

									<div class="row lvltbl">
										<div class="col-sm-12 mb-5">
											<div class="table-wrap" style="box-shadow: 0px 0px 18px grey;background-color: white;border-radius: 30px;padding: 20px;">
 <h5 class="text-center" style="color: deepskyblue;">Subject Vs Difficulty Performance</h5>
												<div class="table-responsive">
													<table id="" class="table table-bordered display pb-30">
														<thead class="th_background">
															<tr>
																<th rowspan="2" class="center">Subject</th>
																<th colspan="2" class="center"><span class="easy_text">Level 1</span></th>
																<th colspan="2" class="center"><span class="medium_text">Level 2</span></th>
																<th colspan="2" class="center"><span class="hard_text">level 3</span></th>
																<th rowspan="2" class="center"><span class="hard_text">Avg Speed(Qns./Hr.)</span></th>
															</tr>
															<tr>
																<th class="center">Avg. Percentage %</th>
																<th class="center">Avg. Accuracy %</th>
																<!--<th class="center">Avg. Speed (Qns./Hr.)</th>-->

																<th class="center">Avg. Percentage %</th>
																<th class="center">Avg. Accuracy %</th>
																<!--<th class="center">Avg. Speed (Qns./Hr.)</th>-->

																<th class="center">Avg. Percentage %</th>
																<th class="center">Avg. Accuracy %</th>
																<!--<th class="center">Avg. Speed (Qns./Hr.)</th>-->
															</tr>

														</thead>
														<tbody id="allsubavgs">
															
														

														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>


                                   <div class="col-md-12  row lastpatch" style="margin-top:40px ; margin-left: 118px;margin-right: auto;width: 1000px;">
                                   <div class="col-md-8" style="margin-top: 17px;"><p id="avgdash_per"></p>
                                   <div  id="container" ></div>
                                   	</div>
                                   <div class="col-sm-2">
															<select class="selectpicker" data-style="form-control btn-default btn-outline" id="monthsperiod2">
														
														</select></div>
													
                                   </div>

								</div>
								<div role="tabpanel" class="tab-pane" id="subjectwise">

									<%@include file="/jsp/student/einsteinanalaytics/einsteinsubjectwise.jsp"%>

								</div>
								<div role="tabpanel" class="tab-pane" id="chapter">
								
								<%@include file="/jsp/student/einsteinanalaytics/einsteinchapterwise.jsp"%>
								
								</div>
								<div role="tabpanel" class="tab-pane" id="livezoneslabs">
									<%@include file="/jsp/student/einsteinanalaytics/einsteinlivezoneslabs.jsp"%>
								</div>
								<%-- <div role="tabpanel" class="tab-pane" id="livezoneslabsview">
									<%@include file="/jsp/student/einsteinanalaytics/einsteinlivezoneslabsview.jsp"%>
								</div> --%>
								<div role="tabpanel" class="tab-pane" id="weekwisetests">

                                <%@include file="/jsp/student/einsteinanalaytics/week_wise_test.jsp"%>

								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>

<script src="<%=request.getContextPath()%>/assets/css/parent/js/jQuery-plugin-progressbar.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/einstein.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/highcharts/highcharts.js"></script>

