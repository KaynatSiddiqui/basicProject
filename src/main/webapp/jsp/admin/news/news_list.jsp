<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>



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
					<div class="panel-heading">
						<div class="col-sm-6 col-xs-12 pull-left">
							<h6 class="panel-title txt-dark">
								<span class="creations_heading">Created News list</span>
							</h6>
						</div>
						<div class="col-sm-4 col-xs-6 right">
							<a href="addnews.jsp" class="btn btn-add_btn btn-xs">Add</a>
						</div>
						<div class="col-sm-1 col-xs-6 pull-right right">
							<a href="#" class="right inline-block full-screen mr-15"> <i
								class="zmdi zmdi-fullscreen theme_color font-24"></i>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">
							<div class="row" style="margin-top:30px">
								<div class="col-sm-12 col-sm-offset-2">

									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-10">
										<label class="control-label" for="example-email">Examtypes
										</label>
									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
										<select class="selectpicker"
											data-style="form-control btn-default btn-outline"
											id="examtype">
											
										</select>
									</div>
								</div>
								 <div class="col-sm-3 col-sm-offset-5" style="margin-top:30px">
                                 <button class="btn btn-success" onclick="gettingnewsfilter()">Submit</button>
                                 </div>
							</div>


							<div class="table-wrap" style="margin-top: 50px">
								<div class="table-responsive">

									<table id="news_table" class="table display pb-30">

										<thead class="th_background">
											<tr>
												<th>S.No</th>
												<th>Exam Type</th>
												<th>News Heading</th>
												<th>Actions</th>
											</tr>
										</thead>

										<tbody id="news_tbody">




										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<input type="hidden" id="creationactive" value="newsactive"/>
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>

<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	
<script>

$(document).ready(function(){
	
	getExamTypeByName();
})

</script>