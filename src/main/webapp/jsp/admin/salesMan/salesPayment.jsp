

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		
		<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Sales Payment</span></h6>
								</div>
							</div>
					</div>

		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view"
					style="display: flex; justify-content: center;">
					<div class="panel-heading">

						<div class="col-md-5">
							<div class="form-group">
								<label class="control-label mb-5 bold">Month</label> <select
									id="gMonth2" class="form-control" style="width: 200px;">
									<option value="0">--Select Month--</option>
									<option value="1">Janaury</option>
									<option value="2">February</option>
									<option value="3">March</option>
									<option value="4">April</option>
									<option value="5">May</option>
									<option value="6">June</option>
									<option value="7">July</option>
									<option value="8">August</option>
									<option value="9">September</option>
									<option value="10">October</option>
									<option value="11">November</option>
									<option value="12">December</option>
								</select>
							</div>
						</div>
						<div class="col-md-5">
							<div class="form-group">
								<label class="control-label mb-5 bold">Sales Person</label> <select
									class="form-control" id="salesId" style="width: 220px;">

								</select>
							</div>
						</div>
						<div class="col-md-2">
							<a class="btn btn-primary mt-25" onclick="searchMonth();">Search</a>
						</div>

						<div class="clearfix"></div>
					</div>
				</div>


				<!-- <table class="table table-bordered"> -->
				


						<div class="" style="display: flex; justify-content: space-between; align-items: center; margin: 30px">

							<div class="d-flex" style="display: flex">
								<h5 style="">No Of Subscriptions :</h5>
								<h5 style="font-weight: bold;" id="noOfsub"></h5>
							</div>
							<!-- <div class="d-flex" style="display:flex"><h4 style="font-weight:bold;padding:10px">Pending :</h4><h4 style="font-weight:bold;padding:10px" id="pending"></h4></div>
	<div class="d-flex" style="display:flex"><h4 style="font-weight:bold;padding:10px">Paid :</h4><h4 style="font-weight:bold;padding:10px" id="paid"></h4></div>
	
 -->
							<div class="d-flex" style="display: flex">
								<h5 style="">Total Amount :</h5>
								<h5 style="font-weight: bold;" id="tmount"></h5>
							</div>



						</div>

					
				
				<div class="table-responsive">

					<table id="myTables" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">

						<thead class=" text-center" style="color: white">
							<tr>
								<th>S.No</th>
								<th hidden>Id</th>
								<th>student Name</th>
								<th>Mobile Number</th>
								<!-- <th>Offer Type</th>
				<th>Amount</th>  -->
								<th>Subscription</th>
								<th>Subscription Amount</th>

								<th>Offer Amount</th>
								<th>Student Paid Amount</th>
									<th>Subscribed Date</th>
									<th>Percentage</th>
								<th>SalesMan Amount</th>
								<th>Status</th>

							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>

				</div>
			
</div>
</div>

</div>
</div>
</div>
 <div class="modal fade" id="paystatus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header" style="border:0px">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          </div>
    
        <div class="modal-body text-center" style="" id="payss">
        
  </div>
  </div>
  </div>
  </div>
<input type="hidden" id="creationactive" value="Sales_zone"/>
	<input type="hidden" id="ulactive" value="sales"/>



<!-- <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
$("#salespayment").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script> -->
  
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
  <script>
  $("#salespayment").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );

</script>

<script src="<%=request.getContextPath()%>/assets/js/salesPayment.js"></script>



<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>
