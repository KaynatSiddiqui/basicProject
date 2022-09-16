<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<style>

.card_phonecardd {
  background: white;
  padding: 25px;
  margin: 23px 0;
 /*  width:600px; */
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.sendata{
		background:	#FFA500;
	}
	.sendata:hover{
		background:	#32CD32;
		color:white;
	}
	
	.card_phonecardss{
	
	background-color: white;
    max-width: 520px;
    width: 100%;
    padding: 20px;
    margin: auto;
    border-radius: 2px;
    /* box-shadow: 0 1px 3px rgb(0 0 0 / 12%), 0 1px 2px rgb(0 0 0 / 24%); */
    box-shadow: 0 0 20px 0 rgb(0 0 0 / 20%), 0 5px 5px 0 rgb(0 0 0 / 24%);
	}
</style>

<div class="container">
<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Sales Payment</strong></h3>
							</div>
							</div> --%>
							<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/payment_method.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>My Account</strong></h3>
							</div>
							</div>
							
			<div class="row">
        <div class="card card_phonecardss">
	<div class="d-flex justify-content-center align-items-center">
			<form class="row">
			
					<div class="form-group col-md-6">
					<select id="gMonth2" class="form-control">
					    <option value="0">Select Month</option>
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
					<div class="col-md-6">
					<!-- <button class="btn rounded" type="button">Search</button> -->
					<a class="btn sendata btn-block"><div style="justify-content:center;align-items:center;display:flex;" onclick="searchMonth()"><i class="fa fa-search mr-3" aria-hidden="true" style="margin-right:10px;"></i>Search</div></a>
 				
					</div>
			</form>
		</div>
			</div>
	</div>
			

      <div class="row">
        <div class="col-lg-12">
	<div class="card card_phonecardd">
	
	<div class="" style="display:flex ; justify-content:space-between; align-items:center;margin-bottom:50px">
	
	<div class="d-flex" style="display:flex"><h5 style="">No Of Subscriptions :</h5><h5 style="font-weight:bold;" id="noOfsub"></h5></div>
	<!-- <div class="d-flex" style="display:flex"><h4 style="">Pending :</h4><h4 style="font-weight:bold;" id="pending"></h4></div>
	<div class="d-flex" style="display:flex"><h4 style="">Paid :</h4><h4 style="font-weight:bold;" id="paid"></h4></div> -->
	<div class="d-flex" style="display:flex"><h5 style="">Total Amount :</h5><h5 style="font-weight:bold;" id="tmount"></h5></div>
   
	
	</div>
	
	<div class="table-responsive" >

	 <table id="myTable" class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>S.No</th>
				<th hidden>Sales Id</th>
				<th>student Name</th>
				<th>Mobile Number</th>
				<th>Subscription Name</th>
				<th>Subscription Amount</th>
				<th>Offer Amount</th>
				<th>Student Paid</th> 
				<th>Sales Percentage</th> 
				<th>SalesMan Amount</th>
			    <th>Paid Status</th>
			    <th>Subscribed Date</th>
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
  

  <script src="<%=request.getContextPath()%>/sales/js/subscriptionDetail.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
 
 
