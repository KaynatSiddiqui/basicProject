

<%@page import="com.zomant.util.AppConstants"%>


<div class="page-wrapper">
	<%@include file="/jsp/master/default.jsp"%>

	<div class="container-fluid">


		<div class="row heading-bg"></div>

		<div class="panel panel-default card-view">
			<div class="panel-heading">
				<div class="col-sm-2 pull-left">
					<h6 class="panel-title txt-dark">
						<span class="creations_heading">Not Taken Doubts</span>
					</h6>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col-sm-12">

		
				<div class="table-responsive" style="margin-top: 40px">

					<table id="myTables" data-order='[[ 0, "desc" ]]'
						class="table table-bordered table-striped table-hover">

						<thead class=" text-center" style="color: white">
							<tr>
								<th>Doubt Id</th>
								<th>Doubt</th>
								 <th>Doubt Image</th>
								<!-- <th>Solution Video</th -->
								<th>Insert Date</th>

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
          <h3 class="text-center">Doubt Image</h3>
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
           <h6 style="color:#FFA500;" class="text-center">Doubt</h6>
           </div>
    </div>
    
        <div class="modal-body" style="">
       
		<div id="doubtText"></div>
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

	<input type="hidden" id="creationactive" value="faculty_zone" /> <input
		type="hidden" id="ulactive" value="faculty" />







	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

	<script>
	$("#notTakenDoubts").addClass('active-page');
		$(document).ready(function() {

			$('#myTable').DataTable();

		});
	</script>



	<script src="<%=request.getContextPath()%>/assets/js/notTakenDoubts.js"></script>


	<%@include file="/jsp/master/footer.jsp"%>
	<input type="hidden" id="createdby" value="${AdminType }" />
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>
