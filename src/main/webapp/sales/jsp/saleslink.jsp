<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<style>

.card_phonecar {
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
	
	.card_phonecardsss{
	
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

<div class="page-wrapper">
	<div class="container">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/affiliate.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>Linking Amount</strong></h3>
							</div>
							</div>
	
 		<div class="row">
        <div class="card card_phonecardsss">
	<div class="d-flex justify-content-center align-items-center">
			<form class="row">
			
					<div class="form-group col-md-6 ">
					
								<label class="control-label bold">Month</label> 
								<select id="gMonth2" class="form-control">
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
					
						
							<div class="col-md-6" style="margin-top:22px">
					<!-- <button class="btn rounded" type="button">Search</button> -->
					<a class="btn sendata btn-block">
					<div style="justify-content:center;align-items:center;display:flex;" onclick="searchMonth()">
					<i class="fa fa-search mr-3" aria-hidden="true" style="margin-right:8px;"></i>Search</div></a>
 				
					</div>
				</form>
				</div>

</div>
</div>

				<!-- <table class="table table-bordered"> -->
				


					<!-- 	<div class="" style="display: flex; justify-content: space-between; align-items: center; margin: 30px">

							<div class="d-flex" style="display: flex">
								<h5 style="">No Of Subscriptions :</h5>
								<h5 style="font-weight: bold;" id="noOfsub"></h5>
							</div>
							<div class="d-flex" style="display:flex"><h4 style="font-weight:bold;padding:10px">Pending :</h4><h4 style="font-weight:bold;padding:10px" id="pending"></h4></div>
	<div class="d-flex" style="display:flex"><h4 style="font-weight:bold;padding:10px">Paid :</h4><h4 style="font-weight:bold;padding:10px" id="paid"></h4></div>
	

							<div class="d-flex" style="display: flex">
								<h5 style="">Total Amount :</h5>
								<h5 style="font-weight: bold;" id="tmount"></h5>
							</div>



						</div>

					 -->
				<div class="card card_phonecar">
					 <div class="table-responsive" style="">

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="">
	
		<thead class="text-center" style="background-color:#f0f4f5">

					
							<tr>
									<th>Id</th>
								<th>Supervisor Id</th>
								<th>Salesman Id</th>
								<th>Salesman Amount</th>
								<th>Supervisor Amount</th>
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


 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} ); 
  
  </script>
<script src="<%=request.getContextPath()%>/sales/js/saleslink.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
 