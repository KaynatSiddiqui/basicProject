
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
								<h3>Rank Guarantee Program</h3>
									</div>
						</div>
						<!-- <div class="col-sm-2 pull-right">
							<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen  font-24"></i>
									</a>
            <a data-toggle="modal" data-target="#howitworks" id="sevntyhow"><span style="color: #c740c9;font-size: 17px;cursor: pointer;font-weight: 600;"><i class="fa fa-question-circle" aria-hidden="true" style="color:#187ce4;"></i>&nbsp;&nbsp; How it works  </span></a>
						</div> -->
					</div>
					
							 <div class="row" id="tabrow">
     <div class="col-md-6 col-md-offset-3" id="toptab">
     
    <ul id="examtypesget">
     <li class="active"><a data-toggle="tab" href="#" aria-expanded="true">JEE Mains</a></li>
	 <li class=""><a data-toggle="tab" href="#" aria-expanded="false">JEE Advanced</a></li>
	</ul>
    </div>
    </div>
					<div class="row mt-10 mb-10">
					<div class="col-sm-12 col-md-offset-1">
						
							<ul class="nav nav-tabs" role="tablist" id="summarytabs">
							
								<li class="active"><a href="#jeemainschedule" aria-controls="home" role="tab" data-toggle="tab">Program Schedule</a></li>
								<li><a href="#claimback" aria-controls="settings" role="tab" data-toggle="tab">Claim money back</a></li>
								<!-- <li class="col-md-offset-3"><a  onclick="getResult()">Claim money back</a></li> -->
								</ul>
						</div>
						</div>
					</div>
				 <div class="row" id="rankscheduler">
														<div class="col-sm-12">
														<div class="col-md-offset-2">
															<img src="<%=request.getContextPath()%>/assets/images/students/Rank Guaranty.png" width="550px">
														</div>
															
													
												</div>
											</div>
											<div class="tab-content" id="summarytabpane">
											<div role="tabpanel" class="tab-pane active" id="jeemainschedule">

                              <section class="special-area bg-white section-padding-80" id="about">
		<div class="special_description_area mt-100">
			<div class="container">
				<div class="row">

					<!-- Section Heading Area -->
					<div class="section-heading">
						<h2 align="center">JEE MAINS April 2020 -Rank Gaurantee
							Program-Tests Schedule</h2>
						<div class="line-shape"></div>
						<div style="margin-left: 15px">
							<h5>** Guess Pattern Test's is a mini test consist of 5 -10
								Qns.</h5>
							<h5>** Highly Predictive Test's consist of 180 Qns. as per
								JEE Mains pattern 2020</h5>
							<h5>** Final Grand Test's consist of 180 Qns. as per JEE
								Mains pattern 2020</h5>
						</div>
					</div>
				</div>
				<table border="2">
					<tr>
						<th>Posting Date</th>
						<th>Expiry date</th>
						<th>Test Type</th>
					</tr>

					<tr>
						<td>07-02-2020, 3.00am</td>
						<td>13-02-2020, 2.00am</td>
						<td>Highly Predictive Test-1 <br>Guess patterns Test-1 <br>Guess
							patterns Test-2
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>10-02-2020, 3.00am</td>
						<td>16-02-2020, 2.00am</td>
						<td>Highly Predictive Test-2 <br>Guess patterns Test-3
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>12-02-2020, 3.00am</td>
						<td>17-02-2020, 2.00am</td>
						<td>Highly Predictive Test-3 <br>Guess patterns Test-4
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>14-02-2020, 3.00am</td>
						<td>18-02-2020, 2.00am</td>
						<td>Highly Predictive Test-4 <br>Guess patterns Test-5
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>16-02-2020, 3.00am</td>
						<td>20-02-2020, 2.00am</td>
						<td>Highly Predictive Test-5 <br>Guess patterns Test-6
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>18-02-2020, 3.00am</td>
						<td>22-02-2020, 2.00am</td>
						<td>Highly Predictive Test-6 <br>Guess patterns Test-7
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>20-02-2020, 3.00am</td>
						<td>24-02-2020, 2.00am</td>
						<td>Highly Predictive Test-7 <br>Guess patterns Test-8
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>22-02-2020, 3.00am</td>
						<td>26-02-2020, 2.00am</td>
						<td>Highly Predictive Test-8 <br>Guess patterns Test-9
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>24-02-2020, 3.00am</td>
						<td>28-02-2020, 2.00am</td>
						<td>Highly Predictive Test-9 <br>Guess patterns Test-10
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>26-02-2020, 3.00am</td>
						<td>1-03-2020, 2.00am</td>
						<td>Highly Predictive Test-9 <br>Guess patterns Test-10
						</td>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					</tr>
					<tr>
						<td>28-03-2020, 3.00am</td>
						<td>04-03-2020, 2.00am</td>
						<td>Highly Predictive Test-11 <br>Guess patterns Test-12
						</td>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					</tr>
					<tr>
						<td>02-03-2020, 3.00am</td>
						<td>07-03-2020, 2.00am</td>
						<td>Highly Predictive Test-12 <br>Guess patterns Test-13
						</td>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					</tr>
					<tr>
						<td>05-03-2020, 3.00am</td>
						<td>10-03-2020, 2.00am</td>
						<td>Highly Predictive Test-13 <br>Guess patterns Test-14
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>08-03-2020, 3.00am</td>
						<td>13-03-2020, 2.00am</td>
						<td>Highly Predictive Test-14 <br>Guess patterns Test-15
						</td>
					</tr>

					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>10-03-2020, 3.00am</td>
						<td>20-03-2020, 2.00am</td>
						<td>Highly Predictive Test-15 <br>Guess patterns Test-16
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>12-03-2020, 3.00am</td>
						<td>20-03-2020, 2.00am</td>
						<td>Highly Predictive Test-16 <br>Guess patterns Test-17
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>14-03-2020, 3.00am</td>
						<td>20-03-2020, 2.00am</td>
						<td>Highly Predictive Test-17 <br>Guess patterns Test-18
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>16-03-2020, 3.00am</td>
						<td>20-03-2020, 2.00am</td>
						<td>Highly Predictive Test-18 <br>Guess patterns Test-19
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>18-03-2020, 3.00am</td>
						<td>21-03-2020, 2.00am</td>
						<td>Highly Predictive Test-19 <br>Guess patterns Test-20
						</td>
					</tr>
					<tr>
						<td rowspan="1"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>19-03-2020, 3.00am</td>
						<td>21-03-2020, 2.00am</td>
						<td>Highly Predictive Test-20</td>
					</tr>
					<tr>
						<td colspan="3" height="50px"></td>
					</tr>
					<tr>
						<td>22-03-2020, 3.00am</td>
						<td>24-03-2020, 2.00am</td>
						<td>Final Grand Test-1</td>
					<tr>
						<td colspan="3" height="50px"></td>
					</tr>
					<tr>
						<td>23-03-2020, 3.00am</td>
						<td>25-03-2020, 2.00am</td>
						<td>Final Grand Test-2</td>
					</tr>
					<tr>
						<td colspan="3" height="50px"></td>
					</tr>
					<tr>
						<td>25-03-2020, 3.00am</td>
						<td>27-03-2020, 2.00am</td>
						<td>Final Grand Test-3</td>

					</tr>
					<tr>
						<td colspan="3" height="50px"></td>
					</tr>
					<tr>
						<td>27-03-2020, 3.00am</td>
						<td>29-03-2020, 2.00am</td>
						<td>Final Grand Test-4</td>

					</tr>
					<tr>
						<td colspan="3" height="50px"></td>
					</tr>
					<tr>
						<td>29-03-2020, 3.00am</td>
						<td>1-03-2020, 2.00am</td>
						<td>Final Grand Test-5</td>
					</tr>
				</table>
			</div>
		</div>
		
	</section>

								</div>
											<div role="tabpanel" class="tab-pane" id="claimback">

                                <%@include file="/jsp/student/student module/claimmoneybackform.jsp"%>

								</div></div>
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
<script src="<%=request.getContextPath()%>/assets/js/ranksheetscheduler.js"></script>
<script>
$(document).ready(function(){
	getranksheetscheduler();
})

/*function getResult()
{

	window.location.assign("/jsp/student/student module/claimmoneybackform.jsp");
}*/
///jsp/student/student module/claimmoneybackform.jsp
</script>


