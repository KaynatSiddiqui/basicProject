	
<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<style>

.card_phonecard {
  background: white;
  padding: 25px;
  margin: 70px 0;
 /*  width:600px; */
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}


</style>

<div class="container">
<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;margin-left:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Sales History</strong></h3>
							</div>
							</div> --%>
							<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/my_account.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>SalesMan History</strong></h3>
							</div>
							</div>
		
      <div class="row">
        <div class="col-lg-12">
        
        <div class="card card_phonecard">
        	 <div class="table-responsive" style="overflow-x:auto;" >

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="overflow-x:auto;width:1200px;">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>S.No</th>
				<th>Student Name</th>
				<th>Mobile Number</th>
				<th>Subscription</th>
				<th>Subscription Amount</th>
				<th>Percentage</th>
					<th>OfferType</th>
				 <th>Offer Amount</th>  
				<!--   <th>salesPersonId</th>  -->
				   <th>Offer Activated Date</th> 
				    <th>Offer Expired Date</th> 
				     <th>Validity In Hrs</th> 
		</tr>
		</thead>
		<tbody id="tablebody">
		
		</tbody>
	
	</table>
	
	
 </div> 
        </div>
      
        </div>
       </div>
 </section>
 </div>


 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} ); 
  
  </script>
<script src="<%=request.getContextPath()%>/sales/js/salesmanDetail.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
 