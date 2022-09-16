<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
  </head>
  

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
 -->

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
			</div>
			
	<div class="row">

	<div class="col-sm-12">
	
	<div class="my-5" style="display:flex; justify-content:space-between;margin-top:15px;">
	
	
						
									<div class="row">

									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label mb-5 bold">From Date</label>
											<div class="input-group">
												<input class="form-control"
													name="interview_date" id="datepicker1" type="date" value=""
													placeholder="dd-mm-yyyy" /><!--  <span class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</span> -->
											</div>
										</div>
									</div>

									<div class="col-md-3">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date</label>
													<div class="input-group">
														<input class="form-control" name="interview_date" id="datepicker2" type="date" value="" placeholder="dd-mm-yyyy" />
														
													</div>
												</div>
											</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label mb-5 bold">Withdrawal Type</label>
												<select class="selectpicker" id="withdraw"  data-style="form-control btn-default btn-outline">
													<option value="0">--- Select ---</option>
													<option value="1">Withdrawal</option>
													<option value="2">Buy-Product</option>
												</select>
											</div>	
										</div>
							
										<div class="col-md-3">
											<a class="btn btn-primary mt-25" onclick="studentpayment()">Submit</a>
										</div>
										
									</div>
									<div class="row">
									<div class="">
											<div style="display:flex;margin-top:33px;margin-right:30px;"><h4>GrandTotal:</h4><h4 class="text-info" id="offeredAmount"></h4></div>
										</div>
									
									</div>
								
							
	</div>
	
	<div class="table-responsive" >

	 <table id="myTables" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
												<tr>
													<th>Id</th>
													<th>Student Id</th>
													<th>Student Name</th>
													<th>Email Id</th>
													<th>Amount</th>
													<th>Transaction Id</th>
													<th>Mobile Number</th>
													<th>WithdrawDate</th>
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

 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
 <script src="<%=request.getContextPath()%>/assets/js/paymenttable.js"></script>
  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	    
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	</div>
    
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  