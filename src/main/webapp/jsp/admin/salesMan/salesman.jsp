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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
</script>
<%@page import="com.zomant.util.AppConstants"%>


<div class="page-wrapper">
<%@include file="/jsp/master/default.jsp" %>

		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
			</div>
			
			
			
			
			<!-- <div class="row" style="display:flex ; justify-content:flex-start">
			
			<div class="col-md-2" style="display:flex; justify-content:end;margin-top:15px;">
	
		<button class="btn btn-primary" onclick="registration()">Create Sales Person</button>
	</div>
	<div class="col-md-2" style="display:flex; justify-content:end;margin-top:15px;">
	
		<a href="salesPayment.jsp" class="btn btn-primary" onclick="registration()">Sales Payment</a>
		</div>
	
			
			
			</div> -->
			
	<div class="row">

	<div class="col-sm-12">
	
	<div class="my-5" style="display:flex; justify-content:end;margin-top:15px;">
	
		<button class="btn btn-primary" onclick="registration()">Create Sales Man</button>
	</div>
	
	
	 <div class="table-responsive" >

	 <table id="myTables"  data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
			<tr>
				<th>Id</th>
				 <th>Sales Person Name</th>
				<th>Mobile Number</th>
				<!-- <th>Country</th>
				 <th>State</th> -->  
				  <th>City</th> 
				  <th>View</th>
				  <th>Actions</th> 
		</tr>
		</thead>
		<tbody id="tablebody">
		
		</tbody>
	
	</table>
	
	
 </div> 
 </div>
   
</div>
	
	<!-- <div  id="salesDetail"></div> -->
	
	<div class="modal fade modalDialog" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true"> 
	<div class="modal-dialog" role="document"><div class="modal-content">
	<div class="modal-body" id="salesDetail">
	</div>
	</div>
	</div>

</div>
</div>

<!-- <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body" >
      	 <div class="body-message">
      </div>
     
    </div>
  </div>
  </div>
</div> -->
<input type="hidden" id="creationactive" value="Sales_zone"/>
	<input type="hidden" id="ulactive" value="sales"/>



  
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  $("#salescreate").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
<script src="<%=request.getContextPath()%>/assets/js/salesman.js"></script>

  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
