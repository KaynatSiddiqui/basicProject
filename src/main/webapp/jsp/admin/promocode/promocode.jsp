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
								<div class="col-sm-3 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Promocode</span></h6>
								</div>
								
								<div class="col-md-2 right">
									<a href="<%= AppConstants.BASE_URL %>admin/promocode/promocodeAdd.jsp" class="btn btn-success btn-xs">Add</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="promocode-table" class="table display pb-30" >
												<thead class="th_background">
													<tr>
													    <th>SI.No</th>
														<!-- <th>Category</th> -->
														<th>Dicount Type</th>
														<th>Promocode</th>
														<th>Purpose</th>
														<th>Discount</th>
														<th>Issue Date</th>
														<th>End Date</th>
														<th>Is From Offer Price</th>
														<th>Single/Multiple</th>

														<th>Status</th>
														<th>Inserted Date</th>
														<th>Updated Date</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody id="promocode-tbody">
													
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<!-- /Row -->
		</div>
 <input type="hidden" id="creationactive" value="promocode"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	 <input type="hidden" id="createdby"  value="${AdminType }" />
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <%--   <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> --%>
	      <script src="<%=request.getContextPath()%>/assets/js/promocode.js"></script>
<script>
$("#charcselect").addClass('active-page');
	$(document).ready(function() {
	getAllPromocodes();
 	});
  
 </script>
	<!-- /Main Content -->