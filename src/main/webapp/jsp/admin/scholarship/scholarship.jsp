
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
			
			
	<div class="row">

	<div class="col-sm-12">
	
	<div class="my-5" style="display:flex; justify-content:end;margin-top:15px;">
	
		<button class="btn btn-primary" onclick="registration()">Scholarship</button>
	</div>
	
	
	 <div class="table-responsive mt-30">

	 <table id="myTables"  data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
			<tr>
				<th>Name</th>
			<!-- 	 <th>Email Id</th> -->
				<th>Mobile Number</th>
			<!-- 	 <th>Address</th>  -->
			
				  <th>Standard</th>
				  <th>College</th>
				  <th>10th Percentage</th> 
				   <th>11th Percentage</th> 
				    <th>City</th> 
				     <th>Parent Mobile</th> 
				    
		</tr>
		</thead>
		<tbody id="tablebody">
		
		</tbody>
	
	</table>
	
	
 </div> 
 </div>
   
</div>
	
	
</div>



  
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  $("#salescreate").addClass('active-page');
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
<script src="<%=request.getContextPath()%>/assets/js/scholarship.js"></script>

  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
