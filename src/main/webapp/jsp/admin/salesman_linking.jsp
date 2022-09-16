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
						<div class="panel panel-default card-view" style="display:flex; justify-content:center;margin-top:50px;">
							<div class="panel-heading">
								
								<div class="col-md-5">
									<div class="form-group">
										<label class="control-label mb-5 bold">Sales Person</label>
										<select class="form-control"  id="salesmanId" style="width:220px;">
											
										</select>
									</div>	
								</div>
								<div class="col-md-5">
									<div class="form-group">
										<label class="control-label mb-5 bold">Supervisor</label>
										<select class="form-control" id="supervisorId" style="width:220px;">
											
										</select>
									</div>	
								</div>
								<div class="col-md-2">
									<a class="btn btn-primary mt-25" onclick="create_salesLinking();">Linking</a>	
								</div>
								
								<div class="clearfix"></div>
							</div>
						</div>
						
				</div>
				</div>
			<div style="display:flex; justify-content:center">
			<div class="table-responsive" style="width:75%">

	 <table id="myTables" class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
			<tr>
				<!-- <th>Id</th> -->
				 <th>Supervisor Id</th>
				<th>Supervisor</th>
				<!-- <th>Country</th>
				 <th>State</th> -->  
				  <th>links</th> 
				  <th>View</th>
				 <!--  <th>Actions</th>  -->
		</tr>
		</thead>
		<tbody id="tablebody">
		
		</tbody>
	
	</table>
	
	</div>
 </div> 
			
			
			
			<div id="salesDetail"></div>
			
			
			</div>
			</div>
			
	
	<!-- <div class="modal fade modalDialog" id="link_views" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			 <div class="modal-dialog" role="document">
			 <div class="modal-content">
			 	<div class="modal-body">
			<table class="table table-bordered">
				<thead>
				<tr>
				<th>Id</th>
				<th>Sales</th>			
				</tr>
				</thead>
				<tbody id="salesDetail">
				
				</tbody>
			
			</table>
			</div>
			</div>
			</div>
			</div> -->
			
			<!-- <div class="modal fade"  id="link_views" tabindex="-1" role="dialog" aria-labelledby="formulapopup">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											 <div class="modal-header">
											   <h4 class="fonkar">Chapter Formulae<span id="wstviewname"></span></h4>
											   </div>
											<div class="modal-body" id="">
											 <p class="wstedtxtclr" id ="formulas"  style="color:#2f2b2b"> </p>
											
											<div id="salesDetail"></div>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
			 -->
					
  <div class="modal fade modalDialog" id="link_views" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
									<div class="modal-dialog" role="document">
								<div class="modal-content">
								<div class="modal-body">
								<div class="table-responsive">
                     <table class="table table-bordered table-striped table-hover">
								<thead>
								<tr>
								<th>Id</th>
								<th>SalesMan</th>
								</tr>
								</thead>
								<tbody id="sald">
							
								
								</tbody>
								</table>
								
								</div>
							
								</div>
								
								</div>
								</div>
							
	
<input type="hidden" id="creationactive" value="Sales_zone"/>
<input type="hidden" id="ulactive" value="sales"/>
	
  
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  $("#SalesmanLinking").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
<script src="<%=request.getContextPath()%>/assets/js/linking.js"></script>

  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	</div>
    
