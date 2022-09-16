<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/sublist.css">
<style>
/* .navbar.navbar-inverse.navbar-fixed-top {
	display: block !important;
}

.fixed-sidebar-left {
	display: block !important;
}



.cons {
	margin-top: 48px;
}
 */
 .page-wrapper {
	background: #eeeeee !important;
}
#subdetailsempty .modal-dialog {
	width: 100% !important;
	top: 39% !important;
	left: 25% !important;
}
#nameinsubdetails{
color: #6b64ea;
}
.gain{
	color: blue!important;
}
#keepexit{
   float: right;
   padding: 10px 25px !important;
}
.close{
margin-top: -11px!important;
}
.exitbtn {
    border-radius: 25px;
    float: right;
    font-size: 17px;
    background: #884bdf !important;
    outline: none;
        border: 0px!important;
}

</style>
<!-- Main Content -->
		<div class="page-wrapper">
          <div class="container cons">
          <!-- Title -->
		<div class="row heading-bg">
			<section id="headertop">
				<div class="heading">
				<div class="row">
					<div class="col-sm-6 font-21 ribbon"><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/My Subscriptionheader.svg" width="200px"></div>
					<div class="col-sm-6"><button class="btn btn-primary exitbtn" id="keepexit">Exit</button></div>
				</div>
					<!-- <div class="font-21 ribbon">Subscription List</div> -->
				</div>
			</section>
		</div>
		<!-- /Title -->
		<!-- Main div append -->
		<div id="sublistdetails">
          <!-- <div class="main">
           <div class="first"></div>
           <div class="second">
               <h5 class="valdate"><text class="valtex">Validity : </text> <span class="date">26-02-2019</span></h5>
               <h5 class="subsbd"><text class="substext">Subscribed : </text><span class="excolor">Eamcet , AIEEE</span></h5>
              <div class="stcat"><text class="stand">Standard : </text><span class="standtext">11th</span>
              <text class="stand stand2">Category : </text><span class="cattext">Engineering</span>
              </div>
              <hr>
              <div class="row row2">
              <div class="col-sm-4">Original Price : <text>200Rs</text></div>
              <div class="col-sm-4">Offer Price : <text>200Rs</text></div>
              <div class="col-sm-4">Amount Paid : <text>200Rs</text></div>
              </div>
              <div class="gain">Gain</div>
              <div class="row row3">
                  <div class="col-sm-4">Wallet : <text>200Rs</text></div>
                  <div class="col-sm-4">By Promo Code : <text>200Rs</text></div>
                  <div class="col-sm-4 viewdetails" data-toggle="modal" data-target="#myModal">View Details</div>
              </div>
           </div>
       </div> -->
      </div>
       
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">
               <div class="modal-content">
        
                <div class="modal-body">
                 <p>Some text in the modal.</p>
               </div>
             </div>
      
            </div>
          </div> 
         <!--  in subscription details if not subscribed or empty --> 
            <button type="button" style="visibility:hidden" id="ifsubdetailsempty" class="btn btn-info btn-lg" data-toggle="modal" data-target="#subdetailsempty"></button>

  <!-- Modal -->
  <div class="modal fade" id="subdetailsempty" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        <div class="modal-body">
          <h3>Hello <span id="nameinsubdetails"></span>!</h3>
          <h3>Please Subscribe to access the full product.</h3>
        </div>
        
      </div>
      
    </div>
  </div>
  
    </div>
		<input type="hidden" id="creationactive" value="creationside"/>
		<input type="hidden" id="ulactive" value="creation_dr"/>
		<%-- <%@include file="/jsp/master/footer.jsp" %> --%>
		</div>
        <!-- /Main Content -->
                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
               <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	
	      <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
         <script src="<%=request.getContextPath()%>/assets/js/subscriptionstudent.js"></script>
        <script>
		  		$(document).ready(function(){
		  			getStudentSubscDetails();
		  		});
		  		$(document).on("click", "#keepexit", function(){
		  			window.location = base_url + "jsp/student/student%20module/subscriptionpay1.jsp";
		  		})
		  </script> 