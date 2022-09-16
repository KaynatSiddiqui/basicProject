

<%@page import="com.zomant.util.AppConstants"%>

<style>

.containerBox {
  position: relative;
  display: inline-block;
}

.image-box {
  position: absolute;
  display:flex;
  justify-content:flex-end;

  width: 100%;
 
  top: 10px;
  left:-25px;

}

.text-box {
  position: absolute;
  display:flex;
  justify-content:flex-start;

  width: 100%;
 
  bottom: 65px;
  right:-16px;
 
  

}

</style>
<div class="page-wrapper">
	<%@include file="/jsp/master/default.jsp"%>

	<div class="container-fluid">


		<div class="row heading-bg"></div>

		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-2 pull-left">
					<h6 class="panel-title txt-dark">
						<span class="creations_heading">Settlement</span>
					</h6>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col-sm-12">
			
			<div class="my-5" style="display:flex; justify-content:end;margin-top:15px;">
	
		<a href="settlement.jsp" class="btn btn-primary">Create Settlement</a>
		</div>

				<div class="my-5"
					style="display: flex; justify-content: Space-around; margin-top: 15px;">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-md-3">
							<label for="States">States</label>
								<select name="country" class="form-control" id="States">

								</select>
							</div>
							<div class="col-md-3">
							<label for="selectsalesman">Sales Person</label>
								<select name="country" class="form-control" id="selectsalesman">
								</select>
							</div>
							<div class="col-md-3">
								<button class="btn btn-primary" onclick="sendSettlement()">Submit</button>
							</div>
						</div>

					</div>
					

				</div>
				<div class="table-responsive" style="margin-top: 40px">

					<table id="myTables" data-order='[[ 0, "desc" ]]'
						class="table table-bordered table-striped table-hover">

						<thead class=" text-center" style="color: white">
							<tr>
								<!-- <th>State Id</th> -->
								<!-- <th>City Id</th> -->
									<th class="text-center">Sales Person Id</th>
										<th class="text-center">Sales Person Name</th>
								<th class="text-center">Proof Image</th>
							<th class="text-center">Period</th>
							<th class="text-center">Comment</th>
								
								<!-- <th>State</th>
								<th>City</th> -->

							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>



				</div>
			</div>

<div id="videorate"></div>

 
 <div class="modal fade" id="showim" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          <h3 class="text-center">Proof  Image</h3>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="imgs">
       
      </div>
    </div>
  </div>
 
 </div>
 <div class="modal fade" id="showStudenttext" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">
             <i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>
          </button>
          <div style="display:flex;">
          <!-- 	<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,</span></h6> -->
           <h4 style="color:#FFA500;" class="text-center">Doubt</h4>
           </div>
    </div>
    
        <div class="modal-body" style="">
       
		<div id="doubtText"></div>
      </div>
    </div>
  </div>
 
 </div>
 
	<input type="hidden" id="creationactive" value="faculty_zone" /> <input
		type="hidden" id="ulactive" value="faculty" />
 

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

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  $("#SalesmanLinking").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  


	<script src="<%=request.getContextPath()%>/assets/js/settlementtable.js"></script>


	<%@include file="/jsp/master/footer.jsp"%>
	<input type="hidden" id="createdby" value="${AdminType }" />
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>
