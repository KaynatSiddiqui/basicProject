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
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="creations_heading">Wrong & Time Taken Questions</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						
						<div class="">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="#" class="btn btn-student_pzone_wrong_time_tabs"><i class="fa fa-flag black font-21 mr-10"></i> PRACTICE ZONE </a>
										<a href="#" class="btn btn-student_pzone_wrong_time_tabs_1"><i class="fa fa-book blackk font-21 mr-10"></i>  TEST ZONE </a>
									</div>
								</div>
							</div>
							<div class="row mt-50 mb-50">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="#" class="btn btn-student_testzone_tabs">JEE-MAINS </a>
										<a href="#" class="btn btn-student_testzone_tabs btn-outline fancy-button btn-0">JEE-ADVANCED </a>
										<a href="#" class="btn btn-student_testzone_tabs btn-outline fancy-button btn-0">BITSAT</a>
									</div>
								</div>
							</div>
							<div class="row mt-50 mb-50">
								<div class="col-sm-12">
									<div class="button-list center">
										<a href="#" class="btn btn-standards btn-rounded">11th  </a>
										<a href="#" class="btn btn-standards btn-rounded btn-outline fancy-button btn-0">12th </a>
										<a href="#" class="btn btn-standards btn-rounded btn-outline fancy-button btn-0">11th & 12th </a>
									</div>
								</div>
							</div>
							<div class="radio radio-info mb-10">
								<div class="col-sm-3 col-sm-offset-3">
									<input type="radio" name="radio" id="radio1" value="option1" checked="">
									<label for="radio1">
									<span class="bold font-12 calibri_font">Only Wrong Answered Questions</span>
									</label>
								</div>
								<div class="col-sm-3">
									<input type="radio" name="radio" id="radio1" value="option1" checked="">
									<label for="radio1">
									<span class="bold font-12 calibri_font">Only Time Taken Questions</span>
									</label>
								</div>
							</div>
							<div class="row mb-30">
								<div class="col-md-5 col-md-offset-5">
									<div class="button-list mt-10">
										<a href="<?php echo base_url();?>student/practice_zone/wrong_time_taken_questions_1" class="btn  btn-primary ml-40">Next</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Row -->
		</div>
			
	</div>
	<!-- /Main Content -->
	<script type="text/javascript">
		$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
	</script>