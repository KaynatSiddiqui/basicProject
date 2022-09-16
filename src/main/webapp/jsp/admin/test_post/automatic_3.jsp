<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
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
								<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Automatic</span></h6>
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
							<div class="container mt-40">
							      <div class="table-responsive">
										<table id="" class="table table-bordered display pb-30" >
											<thead class="th_background">
												<tr>
													<th>Subject Name</th>
													<th>Chapter name</th>
												    <th>Single correct Qns</th>
													<th>Multi correct Qns.</th>
													<th>Matching Qns.</th>
													<th>TotalNo. of Qns.</th>
													
						                       </tr>
											 </thead>
											 <tbody>
												<tr>
													<td>Physics</td>
													<td>Chapter - 1</td>
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td></td>
												</tr>
											   <tr>
													<td>Chemistry</td>
													<td>Chapter - 1</td>
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td></td>
												</tr>
												<tr>
													<td>Physics</td>
													<td>Chapter - 3</td>
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td></td>
												</tr>
												<tr>
													<td>Chemistry</td>
													<td>Chapter - 1</td>
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td></td>
												</tr>
												<tr>
													<td>Physics</td>
													<td>Chapter - 3</td>
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td>
														<input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter"> 
													</td> 
													<td></td>
												</tr>
											 
												<tr class="bold">
													<td>Total</td>
													<td></td>
													<td>20</td>
													<td>18</td>
													<td>20</td>
													<td>200</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p>**It can be editable for Admin/ Teacher for posting</p>
									<div class="row text-center mb-20">
									   <a href="#" class="btn btn-danger">Refresh</a>
                                   </div>
								   <p class="text-center mb-20"><span class="blue">Total Marks</span> : 250 (*should be Autofilled depending type of Question & its marks)
                                 </p>
								 
								 <div class="row mb-30">
									<div class="col-md-7 col-md-offset-4">
										<div class="button-list mt-25">
											<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_2.jsp" class="btn  btn-warning">Back</a>
											<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic_4.jsp" class="btn  btn-primary">Next</a>
											<a href="<%= AppConstants.BASE_URL %>admin/test_post/automatic.jsp" class="btn  btn-danger">Cancel</a>
										</div>
									</div>
								</div>
							    
						</div>
					  </div>	
					</div>
				</div>
				</div>
				
				<!-- /Row -->
			
				<%@include file="/jsp/master/footer.jsp" %>
			</div>
		</div>
        <!-- /Main Content -->