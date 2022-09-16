

<%@page import="com.zomant.util.AppConstants"%>


<style>

.modal-dialog {
  max-width: 800px;
  margin: 30px auto;
}

.modal-body {
  position: relative;
  padding: 0px;
}
.close {
 /*  position: absolute;
  right: -30px; */
  top: 0;
  z-index: 999;
  font-size: 2rem;
  font-weight: normal;
  color: #FFA500;
  opacity: 1;
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
									<h6 class="panel-title txt-dark"><span class="creations_heading">Faculty Payment</span></h6>
								</div>
							</div>
					</div>

		<div class="row">

			<div class="col-sm-12">

				<div class="my-5"
					style="display: flex; justify-content: Space-around; margin-top: 15px;">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="row">
					<div class="col-md-2">
										<div class="form-group">
											<label class="control-label mb-5 bold">From Date</label>
											<div class="input-group">
												<input class="form-control"
													name="interview_date" id="from" type="date" value=""
													placeholder="dd-mm-yyyy" /><!--  <span class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</span> -->
											</div>
										</div>
									</div>
							<div class="col-md-2">
												<div class="form-group">
													<label class="control-label mb-5 bold">To Date</label>
													<div class="input-group">
														<input class="form-control" name="interview_date" id="to" type="date" value="" placeholder="dd-mm-yyyy" />
														
													</div>
												</div>
											</div>				<div class="col-md-3 form-group">
						<lable class="bold mb-5">Faculty</lable>
								<select name="country" class="form-control" id="Faculty">

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
								<th>Doubt Id</th>
								<th>Faculty Id</th>
								
							     <th>Doubt</th>
								<th>Doubt Image</th>
								<th>Solution Video</th>
								<th>Solution Image</th>
								<th>Rating</th>
								<th>Main Rating</th>
								<th>Amount</th>
								<th>PaymentStatus</th>
							
								
							</tr>
						</thead>
						<tbody id="tablebody">

						</tbody>

					</table>


				
			</div>
		</div>

		 <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          </div>
        <div class="modal-body" id="">

          
          <!-- 16:9 aspect ratio -->
          <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="" id="video"
              allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>

        </div>

      </div>
    </div>
  </div>
  
   <div class="modal fade" id="payamnt" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
         <!--  <h3 class="text-center">Solution Video</h3> -->
          </div>
        <div class="modal-body" id="faclypmnt">

          
     
         
          </div>

        </div>

      </div>
    </div>
    
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

	 <div class="modal fade" id="showimg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          <h3 class="text-center">Solution Image</h3>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="imgsssss">
       
      </div>
    </div>
  </div>
 
 </div>
 
  <div class="modal fade" id="showVideo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document" style="width:785px;">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          <h3 class="text-center">Solution Video</h3>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="">
        
        
         <div class="containerBox">

	<div id="videoUrlData"></div>

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







<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
$("#facultypayment").addClass('active-page');
	$(document).ready(function() {

		$('#myTable').DataTable();

	});
	
	
	
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



<script src="<%=request.getContextPath()%>/assets/js/facultypayment.js"></script>


<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>

<!-- <script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script> -->
