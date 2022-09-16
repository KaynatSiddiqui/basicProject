

<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp"%>


<div class="page-wrapper">

	<div class="container-fluid">


		<div class="row heading-bg"></div>

		<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Assigned Students</span></h6>
								</div>
							</div>
					</div>
					
		<div class="row">

			<div class="col-sm-12">

				<div class="my-5"
					style="display: flex; justify-content: Space-around; margin-top: 15px;">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="row">
						
							<div class="col-md-3">
										<label class="control-label mb-5 bold">Sales Person</label>
										<select class="form-control"  id="salesmanId" style="width:220px;">
											
										</select>
							</div>
							<div class="col-md-2">
								<button class="btn btn-success" onclick="sendSalesmanData()" style="margin-top:25px;">Submit</button>
							</div>
						</div>

					</div>

				</div>
				<div class="table-responsive" style="margin-top: 40px">

					<table id="myTables" data-order='[[ 0, "desc" ]]'
						class="table table-bordered table-striped table-hover">

						<thead class=" text-center" style="color: white">
							<tr>
								<th>Id</th>
								<th>Student Name</th>
								<th>Mobile Number</th>
								<th>Views</th>
								
								<!-- <th>Country</th>
				 <th>State</th> -->

								<th>Contact Info</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>


				</div>
				<div class="row" style="margin-top: 30px">
					<div class="col-md-3">
						<button class="btn btn-danger" onclick="submit()">Delete Student</button>
					</div>

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



<div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
   
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="exampleModalLongTitle">Info</h4>
      </div>
      <div class="modal-body" id="salesman_comment">
        
      </div>
     
    </div>
  </div>
</div>
 


<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
$("#Assigned").addClass('active-page');
	$(document).ready(function() {

		$('#myTable').DataTable();

	});
</script>



<script src="<%=request.getContextPath()%>/assets/js/assigned_students.js"></script>


<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>

