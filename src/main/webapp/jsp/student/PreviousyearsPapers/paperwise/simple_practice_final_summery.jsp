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
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-4  col-sm-offset-5">
								<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading1">Practice Summary</span></h6>
							</div>
							<div class="col-sm-2 pull-right right">
								<a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="row mt-20 mb-20">
									<div class="col-sm-3">
										<span class="txt-dark panel-title"><b>Total Questions :</b><span class="sky_blue1 bold"> 30</span></span><br/><br/>
										<span class="txt-dark panel-title"><b>Score :</b><span class="text-success bold"> 30/90</span></span>
									</div>
								<div class="col-sm-3">
									<span class="txt-dark panel-title"><b>Difficulty :</b><span class="text-danger bold"> Hard</span></span><br/><br/>
									<span class="txt-dark panel-title"><b>-Ve Marks :</b><span class="text-danger  bold"> -15</span></span>
								</div>
								<div class="col-sm-6">
									<div class="row">
										<div class="col-sm-4 center">
											<div class="dashboard_percentage">
												<span class="bold font-12">Percentage</span><br/>
												<span class="bold font-16">65%</span>
											</div>
										</div>
										<div class="col-sm-4 center">
											<div class="dashboard_accuracy">
												<span class="bold font-12">Accuracy</span><br/>
												<span class="bold font-20">40%</span>
											</div>
										</div>
										<div class="col-sm-4 center">
											<div class="dashboard_speed">
												<span class="bold font-12">Speed</span><br/>
												<span class="bold font-16">55</span>
											</div>
										</div>
									</div>
								</div>
								</div>
								<div class="row mt-40 mb-20">
									<div class="col-sm-4">
										<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading2">Subject - wise</span></h6>
									</div>
								</div>
								<div class="row mt-20 mb-20">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th class="center">Subject</th>
														<th class="center">Marks</br>
														(Correct Qns.)</th>
														<th class="center">-Ve Marks</br>
														(Wrong Qns.)</th>
														<th class="center">Accuracy %</th>
														<th class="center">Percentage %</th>
														<th class="center">Speed</br>
														(Qns./Hr)</th>
														<th class="center">UnAttempeted</th>
														<th class="center">Over Time Qns.</th>
														
													</tr>
												</thead>
												<tbody>
													<tr class="center">
														<td>Physics</td>
														<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_score">20 / 60 <br /> (10Q/30Q)</a></td>
														<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="text_negative_score">-20 <br>(10Q)</a></td>
														<td>30%</td>
														<td>35%</td>
														<td>31</td>
														<td><span class="text_unattempted">7</span></td>
														<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper"  class="text_time_taken">2</a></td>
													</tr>
													<tr>
													
														<td class="txt-dark panel-title" colspan="8"><strong>Total</strong></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="row mt-40 mb-20">
									<div class="col-sm-4">
										<h6 class="panel-title txt-dark"><span class="simple_practice_summary_heading3">Chapter - wise</span></h6>
									</div>
								</div>
								<div class="row mt-20 mb-20">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th class="center">Subject</th>
														<th class="center">Chapter Name</th>
														<th class="center">Total Qns.</th>
														<th class="center">Correctly</br>Answered Qns.</th>
														<th class="center">Wrongly</br>Answered Qns.</th>
														<th class="center">Unattempted</br>Qns.</th>
														<th class="center">Time Take</br>Qns.</th>
														<th class="center">View</br>Qns.</th>
													</tr>
												</thead>
												<tbody>
													<tr class="center">
														<td>Physics</td>
														<td>Chapter - 1</td>
														<td>10</td>
														<td>3</td>
														<td>3</td>
														<td>2</td>
														<td>2</td>
														<td>
														<a href="<?php echo base_url();?>student/practice_zone/view_full_paper" class="view_questions ">View</a>
														</td>
													</tr>
													<tr>
													
														<td class="txt-dark panel-title" colspan="8"><strong>Total</strong></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="row mt-20 mb-20">
									<a class="btn btn-primary pull-right" href="<?php echo base_url();?>student/practice_zone/view_full_paper">View Full Paper</a>
								</div>
							</div>
						</div>
						
					</div>
					
				</div>
			</div>
			<!-- /Row -->
			</div>
			<?php echo $footer;?>
	</div>
	<!-- /Main Content -->
	
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>