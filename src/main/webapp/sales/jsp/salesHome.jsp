<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<link href="<%=request.getContextPath()%>/sales/css/salesHome.css" rel="stylesheet" type="text/css">

<style>
/* .card_phonecard{
box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;
} */
	.sendata{
		background:	#FFA500;
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
	

</style>
<div class="loader">
      
 </div>
<div class="container">
<section id="content-wrapper">
      <div class="row">
        <div class="col-lg-12">
        
        <div class="card card_phonecard" style="border-radius:20px;">
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
        
        
        </div>
      </div>
  </section>
 </div>
 
 
 <script src="<%=request.getContextPath()%>/sales/js/salesHome.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
 