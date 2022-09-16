<%-- <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/assets/css/dist/js/init.js"></script> --%>


<!-- Row -->
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-default card-view">
			<div class="row">                  
         		<div class="col-sm-4 mb-30">
					<h6 class="panel-title txt-dark"><span class="main_heading_blue">Layout 7</span><span class="main_heading_theme_color"> Integer</span></h6>
				</div>
				<div class="col-sm-8 mb-30">
					<div class="btn-group pull-right">
						<button type="button" class="btn btn-default btn-outline">Step 1</button>
						<button type="button" class="btn btn-preview">Step 2</button>
						<button type="button" class="btn btn-default btn-outline">Step 3</button>
					</div>
				</div>
			</div>
			<div class="panel-heading">
				<div class="col-sm-4 pull-left">
					<h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Instructions</span></h6>
				</div>
				<div class="col-sm-4 pull-right right">
					<a href="#" class="right inline-block full-screen mr-15">
						<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-wrapper collapse in">
				<div class="panel-body">
					<form method="post">
					  <div class="form-group">
						<textarea class="ckeditor" id="Instructions" name="instructions" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea>
					  </div>
					</form>
				</div>
			</div>
		</div>
		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-4 pull-left">
					<h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Question</span></h6>
				</div>
				<div class="col-sm-4 pull-right right">
					<a href="#" class="right inline-block full-screen mr-15">
						<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-wrapper collapse in">
				<div class="panel-body">
					<form method="post">
					  <div class="form-group">
						<textarea class="ckeditor" id="question" name="question" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea>
					  </div>
					</form>
				</div>
			</div>
		</div>
		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-4 pull-left">
					<h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Answer</span></h6>
				</div>
				<div class="clearfix"></div>
			</div>
			<hr class="light-grey-hr mb-10">
			<div class="row">
				<div class="col-sm-12">
					<form>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row form-group">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div class="form-group">
										<input type="number" id="answer" name="answer" class="form-control numberonly" placeholder="Enter Answer">
											<!-- <select class="selectpicker" data-style="form-control btn-default btn-outline">
												<option>--- Select ---</option>
												<option>0</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
											</select> -->
										</div>
									</div>
								</div>	
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-4 pull-left">
					<h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Hint / Solution / Explanation</span></h6>
				</div>
				<div class="col-sm-4 pull-right right">
					<a href="#" class="right inline-block full-screen mr-15">
						<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-wrapper collapse in">
				<div class="panel-body">
					<form method="post">
					  <div class="form-group">
						<textarea class="ckeditor" id="hint" name="hint" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea>
					  </div>
					</form>
				</div>
			</div>
		</div>
		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-4 pull-left">
					<h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Concept</span></h6>
				</div>
				<div class="col-sm-4 pull-right right">
					<a href="#" class="right inline-block full-screen mr-15">
						<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-wrapper collapse in">
				<div class="panel-body">
					<form method="post">
					  <div class="form-group">
						<textarea class="ckeditor" id="concept" name="concept" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea>
					  </div>
					</form>
				</div>
			</div>
		</div>
		<div class="panel panel-default card-view">
			<div class="row">
				<div class="col-md-5 col-md-offset-5">
					<div class="button-list mt-10 mb-40">
						<a id="layout_back" class="btn btn-back" onclick="adminStep1();">Back</a>
						<a id="saveBtn2" class="btn btn-save" onclick="addQuestionStep2();">Save</a>
		                <a id="nextBtn2" class="btn btn-save_next" onclick="addQuestionStep2();" >Save & Next</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /Row -->



