<%@include file="/faculty/jsp/facultysidebar.jsp" %>

<link href="<%=request.getContextPath()%>/sales/css/facultyHome.css" rel="stylesheet" type="text/css">


<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel="stylesheet" href="./style.css">
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script> -->


<style>
body{
	background-color: #f0f4f5;
	}
	.sendata:hover{
		background:	#32CD32;
		color:white;
	}
	
	/* .card_student{
	 box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	 background-color: white;
	max-width: 680px;
	} */
	
	.close {
 /*  position: absolute;
  right: -30px; */
  top: 0;
  z-index: 999;
  font-size: 2rem;
  font-weight: normal;
  color: #FFA500;
  opacity: 1;
  border: 1px solid #FFA500;
    border-radius: 1000px;
    width: 20px;
    height: 20px;
}
	

</style>
<div class="loader">
      
 </div>
<div class="container mt-4">
<section id="content-wrapper">
      <div class="row">
        <div class="col-lg-12">
        
        <!-- <div class="card card_phonecard" style="border-radius:20px;">
 				<div class="form-group" style="display:flex;justify-content:center;align-items:center">
 				<div class="inputWithIcon">
  						<input type="text" placeholder="Enter Student Mobile Number to view the details" id="sendmobile_number">
  					<i class="fa fa-phone fa-lg fa-fw" aria-hidden="true"></i>
				</div>
				
 				<div style="margin-left:5px;"><div class="sendata" style="border-radius:50px;width:50px;height:50px;justify-content:center;align-items:center;display:flex;" onclick="mobliNmuber()"><i class="fa fa-arrow-right" aria-hidden="true"></i></div></div>
 				</div>
  		
			</div>
        
        <div  id="studentProfile_card" style="margin-top:30px;">	
        </div>
         -->
         
          <div class="table-responsive" style="margin-top:50px;" >

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table" style="">
	
         
        <!--  <table class="table"> -->
  			<thead class="" style="background:#fd7e14;color:white">
		    <tr>
		      <th class="text-center">Doubt Id</th>
		      <!--  <th>Student Id</th> -->
		      <th class="text-center">Doubt</th>
		      <th class="text-center">Doubt Image</th>
		     <th class="text-center">Taken</th>
		    </tr>
		  </thead>
		  <tbody id="allDoubts">
		   
		  </tbody>
		</table>
        </div>
        </div>
      </div>
  </section>



  
 <div class="modal fade" id="showim" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <i class="fa fa-times-circle" aria-hidden="true"></i>
          </button>
          <h3 style="color:#FFA500" class="text-center">Doubt Image</h3>
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


  
 <!--  <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm">Small modal</button>
 -->
<!-- <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm modal-dialog-centered" style="background:#fd7e14;border-radius:50px;">
    <div class="modal-content" style="background:#fd7e14;border-radius:50px;">
    
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:white">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body  text-white" id="takendoubt" style="color:white">
      
    </div>
    </div>
  </div>
</div> -->
  
 </div>
 
 
 
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} ); 
  
  </script>
  
  
<script src="<%=request.getContextPath()%>/faculty/js/facultyHome.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/faculty/js/facultySession.js"></script>
 