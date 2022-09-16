

<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp"%>

<div class="page-wrapper">
	

	<div class="container-fluid">


		<div class="row heading-bg"></div>

		<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Sales Link Report</span></h6>
								</div>
							</div>
					</div>
		

		<div class="row">

			<div class="col-sm-12">
<div class="panel panel-default card-view" style="display:flex; justify-content:center;margin-top:50px;">
							<div class="panel-heading">
								
								<div class="col-md-5">
									<div class="form-group">
					<select id="month" class="form-control">
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
					</div>							<div class="col-md-5">
									<div class="form-group">
								<select name="country" class="form-control" id="Salesmanid">

								</select>
							</div>
							</div>
							
							<div class="col-md-2">
								<button class="btn btn-primary" onclick="getall()">Submit</button>
							</div>
						</div>
						
						

					</div>

				</div>
				</div>
			
				<div style="display:flex; justify-content:center">
				
				<div class="table-responsive" style="width:1000px">

					<table id="myTables" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover"  style="width:1000px;">

						<thead class=" text-center" style="color: white">
							<tr>
								<th hidden>Id</th>
								<th>Supervisor Id</th>
								<th>SalesMan Id</th>
								<!-- <th>Total Subscription</th> -->
							
								<th>Amount</th>
								<th>Supervisor Amount</th>
								<!-- <th>Pending</th>
								<th>Paid</th> -->
								<th>Status</th>
							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>

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
<input type="number" id="rowid" hidden>
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






<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
$("#LinkingReport").addClass('active-page');
	$(document).ready(function() {

		$('#myTable').DataTable();

	});
</script>



<script src="<%=request.getContextPath()%>/assets/js/linking_report.js"></script>


<%@include file="/jsp/master/footer.jsp"%>

<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>
