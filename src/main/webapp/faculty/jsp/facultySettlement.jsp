	
	
<%@include file="/faculty/jsp/facultysidebar.jsp" %>


<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<%-- <%@include file="/faculty/jsp/facultysidebar.jsp" %> --%>

<link href="<%=request.getContextPath()%>/sales/css/facultyHome.css" rel="stylesheet" type="text/css">


<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<!-- <link rel="stylesheet" href="./style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script> -->


<style>
<style>

.card_phonecard {
  background: white;
  padding: 25px;
  margin: 70px 0;
 /*  width:600px; */
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

	body{
	background-color: #f0f4f5;
	}
	
	.prefix{
	
	margin-right:5px;
}

</style>

<div class="container">
<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;margin-left:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Assigned Students</strong></h3>
							</div>
							</div> --%>
							<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/deal.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>Settlement</strong></h3>
							</div>
							</div>
		
      <div class="row">
        <div class="col-lg-12">
        
        <div class="card card_phonecard">
        	 <div class="table-responsive" style="" >

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="">
	
		<thead class=" text-center" style="background:#fd7e14;color:white">
			<tr>
			<!-- 	<th>State Id</th> -->
								<!-- <th>City Id</th> -->
									<th class="text-center">Faculty Id</th>
										<th class="text-center">Faculty Name</th>
								<th class="text-center">Proof Image</th>
							<th class="text-center">Period</th>
							<th class="text-center">Comment</th>
							<th class="text-center">Inserted Date</th>
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
 
 <div class="modal fade" id="proofImage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <!--   <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5> -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5>Proof Image</h5>
      </div>
      <div class="modal-body" id="salesman_student">
        
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
           <h4 style="color:#FFA500;" class="text-center">Comment</h4>
           </div>
    </div>
    
        <div class="modal-body" style="">
       
		<div id="doubtText"></div>
      </div>
    </div>
  </div>
 
 </div>
 
 </div>



<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
  <script>
  $("#settlement").addClass('active-page');
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} ); 
  
  </script>
  
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<script src="<%=request.getContextPath()%>/faculty/js/facultySettlement.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/faculty/js/facultySession.js"></script>
	
 