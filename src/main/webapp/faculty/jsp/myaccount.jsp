	
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

	.containerBox {
  position: relative;
  display: inline-block;
}

.image-box {
  position: absolute;
  display:flex;
  justify-content:flex-end;

  width: 100%;
 
  top: 0px;
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
							<img src="../images/my_account.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>My account</strong></h3>
							</div>
							</div>
							
						
						<div class="" style="display:flex;justify-content:center">
						<div class="row" style="margin-top:50px;">
						
							<div class="col-md-5">
							<div class="form-group">
								<label>From Date</label>
								<input type="date" class="form-control" id="fromDate">
							</div>
							</div>
							<div class="col-md-5">
							<div class="form-group">
								<label>To Date</label>
								<input type="date" class="form-control" id="toDate">
							</div>
							</div>
							<div class="col-md-2">
							<button class="btn  text-white mt-5" onclick="SeachFacultyData()" style="margin-top:25px;background:#FFA500;color:white"> Submit</button>
							</div>
						
						</div>
						</div>	
						
			<div class="d-flex justify-content-end align-items-center" style="display:flex; justify-content:flex-end; align-items:center">
			 
			<div class="d-flex" style="display: flex;justify-content:flex-end">
			<h4 style="margin-right:10px;font-weight:bold">Total Amount  :</h4><h4  style="font-weight:bold"><img src="../images/rupee_img.png" style="margin-right:5px;width:15px;height:15px;"><span id="totalAmount"></span></h4>
			</div>
			</div>			
		
      <div class="row">
        <div class="col-lg-12">
        
          <div class="table-responsive" style="" >

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table" style="">
	
         
        <!--  <table class="table"> -->
  			<thead class="" style="background:#fd7e14;color:white">
		    <tr>
		      <th class="text-center">Doubt Id</th>
		      <!--  <th>Student Id</th> -->
		      <th class="text-center">Amount</th>
		      <th class="text-center">Student Rating</th>
		    <th class="text-center">Payment Status</th>
		    <th class="text-center">Solution Image</th>
		      <th class="text-center">Solution Video</th>
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
 


 <div class="modal fade" id="showImages" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fa fa-times-circle" aria-hidden="true"></i>
          </button>
           <h3 style="color:#FFA500" class="text-center">Solution Image</h3>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="imagsdATA">
       
      </div>
    </div>
  </div>
 
 </div>
  
  <div class="modal fade" id="showim" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document" style="width:780px;">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <i class="fa fa-times-circle" aria-hidden="true"></i>
          </button>
           <h3 style="color:#FFA500" class="text-center">Solution Video</h3>
          
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="">
       
       
       <div class="containerBox">

	<div id="imgs"></div>

  <div class='image-box'>
  <!--  <img src="https://www.netcetra.com/images/howto_images/picmonkey-logo.jpg" style="width:100px;height:100px;"> -->
  <h3 style="color:#FFA500;letter-spacing: 2px;"> Skyget<sup>®</sup></h3>
  </div>
  
    <div class='text-box'>
    <div style="width:200px;height:70px;padding:20px;" id="facultyTitle">
      
     
    </div>
  </div>
	</div>	
       	
       
       
      </div>
    </div>
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
  
  
  
  $(document).ready(function() {
	  // Gets the video src from the data-src on each button
	  var $videoSrc;
	  $(".video-btn").click(function() {
	    $videoSrc = $(this).attr("data-src");
	    console.log("button clicked" + $videoSrc);
	  });

	  // when the modal is opened autoplay it
	  $("#myModal").on("shown.bs.modal", function(e) {
	    console.log("modal opened" + $videoSrc);
	    // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
	    $("#video").attr(
	      "src",
	      $videoSrc + "?autoplay=1&showinfo=0&modestbranding=1&rel=0&mute=1"
	    );
	  });

	  // stop playing the youtube video when I close the modal
	  $("#myModal").on("hide.bs.modal", function(e) {
	    // a poor man's stop video
	    $("#video").attr("src", $videoSrc);
	  });

	  // document ready
	});
  
  </script>
  
  
<script src="<%=request.getContextPath()%>/faculty/js/myaccount.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/faculty/js/facultySession.js"></script>
	
 
 