	
<%@include file="/faculty/jsp/facultysidebar.jsp" %>


<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<%-- <%@include file="/faculty/jsp/facultysidebar.jsp" %> --%>

<%-- <link href="<%=request.getContextPath()%>/sales/css/facultyHome.css" rel="stylesheet" type="text/css">
 --%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<!-- <link rel="stylesheet" href="./style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script> -->


<style>
body{
	background-color: #f0f4f5;
	}
	/* .modal-dialog {
  max-width: 800px;
  margin: 30px auto;
}

.modal-body {
  position: relative;
  padding: 0px;
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
/* .alertify-button{
	visibility: hidden;
	} */
	
	progress[value] {
    height: 40px;
    width: 100%;
    margin-top:5px;
	}
 

</style>

<div class="container" id="load">

<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;margin-left:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Assigned Students</strong></h3>
							</div>
							</div> --%>
							<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/Assigned_Student.svg" style="margin-left:20px;height:32px;width:32px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;"><strong>Taken Doubts</strong></h3>
							</div>
							</div>
							
							
					<h4 class="" style="display:flex;justify-content:flex-end;color:#C70039;font-weight:bold;margin-right:0px;">If you don't solve within 3hr , doubt will be expire</h4>
				 
							
		
      <div class="row mt-4">
        <div class="col-lg-12">
        
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
 
 
 	
		<div class="container">
 <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button> -->
          
          <div class="modal-header">
          
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <i class="fa fa-times-circle" aria-hidden="true"></i>
          </button>
          <h3 style="color:#FFA500" class="text-center">Doubt Image</h3>    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center">
        <div class="" style="padding:20px;">
        
        <div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Solution Image </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<img id="myImg" src="http://via.placeholder.com/150x150" style="width:150px;height:150px;border-radius:100px;"><br>
														<input type='file' id="fileUpload" style="margin-top:20px;" />

													</div>
												</div>	
											</div>
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Solution Video</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															<video id="myImag" src="http://via.placeholder.com/150x150" controls style="width:350px;height:150px;" muted autoplay loop playsinline></video><br>
															<input type='file' id="fileU_load" style="margin-top:20px;" />
															
															<!-- <progress max=”100” value=”0”></progress>
				 -->
				 											
															</div>
														</div>	
											</div>
											
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Solution Text</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															 <textarea name="editor1" class="form-control" id="facultyans" class="reply" placeholder="Enter Solution text ..." style="height:100px;background: border-box; "></textarea>
															</div>
														</div>	
											</div>
				</div>
	
        <div style="display:flex; justify-content:center">
         <button class="btn  text-white btn-block  p-2" style="font-weight:bold;padding:15px;background:green;color:white" id="submited" onclick="s3uploadVideo()" style="margin-top:10px;style="background:#fd7e14;">Submit</button>
        </div>
      
		</div>
        </div>
        </div>

      </div>
    </div>
  </div>

</div>
 

 
 </div>


 
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
    
    <div id="overlay">
  <div class="cv-spinner">
    <span class="spinner"></span>
  </div>
</div>
  </div>
 
 </div>

  

  

	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
 
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
   $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} ); 

  
  </script>
   <script src="https://sdk.amazonaws.com/js/aws-sdk-2.357.0.min.js"></script>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
   <script type="text/javascript">

   

   window.addEventListener('load', function() {
     document.getElementById('fileUpload').addEventListener('change', function() {
         if (this.files && this.files[0]) {
             var img = document.getElementById('myImg');
             img.onload = () => {
                 URL.revokeObjectURL(img.src);  // no longer needed, free memory
             }

             img.src = URL.createObjectURL(this.files[0]); // set src to blob url
         }
     });
   });

   window.addEventListener('load', function() {
     document.getElementById('fileU_load').addEventListener('change', function() {
         if (this.files && this.files[0]) {
             var img = document.getElementById('myImag');
             img.onload = () => {
                 URL.revokeObjectURL(img.src);  // no longer needed, free memory
             }

             img.src = URL.createObjectURL(this.files[0]); // set src to blob url
         }
     });
   });
   
   
   
//Bucket Configurations

 var bucketName = "doubtsvideos";
 var bucketRegion = "ap-south-1";
 var IdentityPoolId = "ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a";
 //var IdentityPoolId = "ap-south-1:00ad6d2b-fd7b-48d1-812b-196b94449348";
AWS.config.region = 'ap-south-1'; // Region
AWS.config.credentials = new AWS.CognitoIdentityCredentials({
    IdentityPoolId: 'ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a',
});

            var s3 = new AWS.S3({
                apiVersion: '2014-06-30',
                params: {Bucket: bucketName}
        });
</script>
   
 
  
  
<script src="<%=request.getContextPath()%>/faculty/js/takendoubts.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/faculty/js/facultySession.js"></script>
	
 
 
 