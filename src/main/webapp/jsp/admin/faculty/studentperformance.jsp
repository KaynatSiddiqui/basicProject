

<%@page import="com.zomant.util.AppConstants"%>


<div class="page-wrapper">
	<%@include file="/jsp/master/default.jsp"%>

	<div class="container-fluid">


		<div class="row heading-bg"></div>

<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Student Performance</span></h6>
								</div>
							</div>
					</div>

		<div class="row">

			<div class="col-sm-12">

				<div class="my-5"
					style="display: flex; justify-content: Space-around; margin-top: 15px;">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="row">
						
						<div class="col-md-3 form-group">
						<lable class="bold">State</lable>
								<select name="country" class="form-control" id="States">

								</select>
							</div>
							<div class="col-md-3 form-group">
						<lable class="bold">City</lable>
								<select name="country" class="form-control" id="City">

								</select>
							</div>
							<div class="col-md-3 mt-25">
								<button class="btn btn-primary" onclick="getall()">Submit</button>
							</div>
						</div>

					</div>

				</div>
				<div class="table-responsive" style="margin-top: 40px">

					<table id="myTables" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">

						<thead class=" text-center" style="color: white">
							<tr>
							
								<th>Student Id</th>
								<th>Student Name</th>
								<th>Total Doubts</th>
									
								<th>Subscription Status</th>
								<th>Subscription Plan</th>
								
						<th>State</th>
						<th>City</th>
								
							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>


				
			</div>
		<div class="pull-right mt-30">
									<a onclick="fnExcelReport('myTables')" class="btn btn-warning">Download in Excel</a>
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

<input type="hidden" id="creationactive" value="faculty_zone"/>
<input type="hidden" id="ulactive" value="faculty"/>







<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
$("#studentperformance").addClass('active-page');

	$(document).ready(function() {

		$('#myTable').DataTable();

	});
</script>



<script src="<%=request.getContextPath()%>/assets/js/studentperformance.js"></script>


<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
