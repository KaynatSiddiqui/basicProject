
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
</script>
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<div class="page-wrapper">


		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
			</div>
			
			
			
			
	<div class="row">

	<div class="col-sm-12">
	<!-- 
	<div class="my-5" style="display:flex; justify-content:end;margin-top:15px;">
	
		<button class="btn btn-primary" ></button>
	</div> -->
	<div class="col-sm-6 col-xs-12 pull-left my-2" style="margin:10px;">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Robo Learning</span></h6>
								</div>
								<div class="col-sm-4 col-xs-6 right my-2" style="margin-top:20px;">
									<a href="#" onclick="registration()" class="btn btn-add_btn btn-xs">Add</a>
								</div>
								
								</div>
								</div>
	
	 <div class="table-responsive" style="margin-top:20px;">

	 <table id="myTables"  data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
			<tr>
				<th>Id</th>
				 <th>Screen</th>
				<th>Message</th>
				<th>No of days</th>
				 <th>Layout</th>  
				 <th>Repeated time count</th>
				  <th>Speech available</th> 
				   <th>Message Display</th> 
				    <th>Status </th>
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

<!-- 
<input type="hidden" id="creationactive" value="Sales_zone"/>
	<input type="hidden" id="ulactive" value="sales"/> -->
</div>


  
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
 // $("#robolearning").addClass('active-page');
 
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
<script src="<%=request.getContextPath()%>/assets/js/robolearningtable.js"></script>

  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		
		
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
