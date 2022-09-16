<%@page import="com.zomant.util.AppConstants"%>



<div class="container-fluid">
<div id="mockfulltabs">
	<div class="col-md-12 col-md-offset-4" style="margin-top: 80px" id="ultabschap">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active mockfull" onclick="livezoneslabs('mock')"><a href="#mocktest"
				aria-controls="home" role="tab" data-toggle="tab" id="mockt"><%= AppConstants.MOCKTEST %></a></li>
			<li role="presentation" class="mockfull" onclick="livezoneslabs('full')"><a href="#fullsyllabus"
				aria-controls="profile" role="tab" data-toggle="tab" id="full"><%= AppConstants.FULLSYALLBUSMOCK %></a></li>

		</ul>
	</div>

	<div class="panel-body">
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane fade active in" id="mocktest">
				<div class="col-sm-5 col-sm-offset-7 mb-2 contcol">
					Missed Tests: <span class="missedcount font-18" id="missedtestmock"></span>
				</div>
				<div class="row">
					<div class="col-xs-12 colcls">

						<div class="box animated zoomIn">
							<table style="margin: 0 auto;">

								<tr>
									<td>No.of Mocks Test Appeared</td>
									<td><a href="#"
										class="btn btn_einstein_analytics_qualified btn-rounded btn-sm bttnstl" id="nooffulmarksappear" onclick="mockfulltesttype(6,'Mock Test',this)"></a></td>
								</tr>
								<tr>
									<td>No.of Qualified Tests</td>
									<td><a href="#"
										class="btn btn_einstein_analytics_qualified btn-rounded btn-sm bttnstl" id="qualifiedtest" onclick="mockfulltesttype(7,'Mock Test',this)"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Scored > 80%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(1,'Mock Test',this)" id="testscoredgre300"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 61% - 80%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored1 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(2,'Mock Test',this)" id="testscore300200"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 41% - 60%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_scored2 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(3,'Mock Test',this)" id="testscore200150"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 26% - 40%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored3 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(4,'Mock Test',this)" id="testscore150100"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score < 25%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_scored4  btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(5,'Mock Test',this)" id="testscore100"></a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="panel-body">
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane " id="fullsyllabus">
				<div class="col-sm-5 col-sm-offset-7 mb-2 contcol">
					Missed Tests: <span class="missedcount font-18" id="missedfull"></span>
				</div>
				<div class="row">
					<div class="col-xs-12 colcls">
						<div class="box animated zoomIn">
							<table style="margin: 0 auto;">

								<tr>
									<td>No.of Full Syllabus Mocks Appeared</td>
									<td><a href="#"
										class="btn btn_einstein_analytics_qualified btn-rounded btn-sm bttnstl" id="nooffulmarksappearfull" onclick="mockfulltesttype(6,'Full-Syllabus Mock',this)"></a></td>
								</tr>
								<tr>
									<td>No.of Qualified Tests</td>
									<td><a href="#"
										class="btn btn_einstein_analytics_qualified btn-rounded btn-sm bttnstl" id="qualifiedtestfull" onclick="mockfulltesttype(7,'Full-Syllabus Mock',this)"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Scored > 80%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(1,'Full-Syllabus Mock',this)" id="testscoredgre300full"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 61% - 80%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored1 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(2,'Full-Syllabus Mock',this)" id="testscore300200full"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 41% - 60%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_scored2 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(3,'Full-Syllabus Mock',this)"  id="testscore200150full"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score 26% - 40%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_slabs_scored3 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(4,'Full-Syllabus Mock',this)"  id="testscore150100full"></a></td>
								</tr>
								<tr>
									<td>No.of Tests Score < 25%</td>
									<td><a href="#"
										class="btn btn-outline btn_einstein_analytics_scored4 btn-rounded btn-sm bttnstl" onclick="mockfulltesttype(5,'Full-Syllabus Mock',this)"  id="testscore100full"></a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- chp view   -->
</div>
<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default card-view">
						<div class="panel-wrapper collapse in">
							<div class="panel-body tabboxshw"  style="background:#f0f4f5">
								
								<div class="table-wrap mb-10">
									<div class="table-responsive">
										<table id="slabview_table" class="table table-bordered display pb-30" >
											 <thead class="th_background" id="slabview_head">
												<tr id="trhead">
											    	<!-- <th>S.No</th>
													<th>Test Name</th>
													<th>Date</th>
													<th>Rank</th>
													<th>Total Score</th>
													<th>No. of Participants</th>
													<th>Top Score</th> -->
													<!-- <th>Full Analytics Details</th> -->
												</tr>
											</thead>
											<tbody id="slabview_body">
												<!--<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td>
														<a href="" class="btn btn-danger">View</a>
													</td>
												</tr>-->
												
											</tbody> 
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
<!-- view -->
<div class="modal" id="subwisescore">
														    <div class="modal-dialog modal-sm">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														  
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="subscore">
														        
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
</div>

<script>
$(document).ready(function(){
	//liveslabget();
})
  $("#mockt").click(function(){
	  $("#mocktest").show();
	  $("#fullsyllabus").hide();
	  
  })
  $("#full").click(function(){
	  $("#mocktest").hide();
	  $("#fullsyllabus").show();
	  
  })
</script>
