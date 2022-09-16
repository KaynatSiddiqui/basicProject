<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/assets/css/student/css/subscriptionstu/subscriptionstu.css">
<style>
#wallets{
position: relative;
    left: 30px;
    top: -28px;
    }
 #radio{
    display:block;
    float: left;
    position: relative;
    top: 4px;
 }
 
 #contentstyle{
     font-weight: 500;
    padding-left: 20px;
    color: black;
    font-size: 16px;
 }

.header_img{

	/* background-image: url(../../../assets/images/students/Price_Orange.svg); */
	background-image: url(../../../assets/images/students/jee_2krank.svg);
	
	background-repeat: no-repeat;
 	background-size: cover;
	background-position: center;
	/* height:100px;
	width:385px; */
	height: 99px;
    width: 393px;
   
   /*  margin: 10px; */
}

.header_imgBlue{

	background-image: url(../../../assets/images/students/jee_rankbooster.svg) ;
	background-repeat: no-repeat;
 	background-size: cover;
	background-position: center;
	/* height:100px;
	width:385px; */
	height: 99px;
    width: 393px;
   
   /*  margin: 10px; */
}


.subcr_img{

	/* background-image: url(../../../assets/images/students/Subscription_pay.png) ; */
	background-image: url(../../../assets/images/students/Subscription_jee.svg) ;
	
	background-repeat: no-repeat;
 	background-size: cover;
	background-position: center;
	/* height:320px;
	width:280px; */
	
	height: 290px;
    width: 328px;
}

.subcr_jeeimg{

	 background-image: url(../../../assets/images/students/Subscription_pay.png) ; 
	/* background-image: url(../../../assets/images/students/Subscription_jee.svg) ; */
	
	background-repeat: no-repeat;
 	background-size: cover;
	background-position: center;
	/* height:320px;
	width:280px; */
	/* height: 190px;
    width: 170px; */
    height: 299px;
    width: 269px;
}
.buybtn_img{

	background-image: url(../../../assets/images/students/Orange_Button.svg) ;
	
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
   /*  height: 78px;
    width: 197px; */
    height: 47px;
    width: 119px;
}

.header_imggs{
	/* background-image: url(../../../assets/images/students/Price_Blue.svg) ; */
	background-image: url(../../../assets/images/students/Price_Green.svg) ;
	
	background-repeat: no-repeat;
 	background-size: cover;
	background-position: center;
	/* height:320px;
	width:280px; */
	height: 99px;
    width: 393px;
}

.buybtn_imgges{
/* background-image: url(../../../assets/images/students/Blue_Button.svg) ; */
background-image: url(../../../assets/images/students/Orange_Green.svg) ;
	
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
   /*  height: 78px;
    width: 197px; */
    height: 47px;
    width: 119px;
}
.buybtnnn_imgges{
 background-image: url(../../../assets/images/students/Blue_Button.svg) ; 
/* background-image: url(../../../assets/images/students/Orange_Green.svg) ; */
	
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
   /*  height: 78px;
    width: 197px; */
    height: 47px;
    width: 119px;
}


.imageonplus {
  position: relative;
  text-align: center;
  color: white;
}


.top-right {
    position: absolute;
    top: 252px;
    right: 16px;
    color: #fd7e14;
    /* #DA70D6 */
}



	#subscriptionfutures{
	background-color:rgba(0,0,0,0.6);
	margin-top:-45px;
	}
 .modalfullscreen .modalcontent {
  background: transparent;
  border: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
}


</style>

<div class="page-wrapper">

<p class="mainheading"><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Buy.svg" width="40px">&nbsp;&nbsp; <span style="vertical-align:super">Buy Now &amp; Get Access</span></p>

<button class="btn btn-primary exitbtn" id="keepexit">Exit</button>
 <!-- <div class="jumbotron jumbo"> -->
     
 			<div class="row">
       			 <div class="container-fluid">
        				<div class="col-md-12">
        				<div  style="display:flex; justify-content:center">
        				<div id="subscriptionPay" style="display:flex; flex-wrap:wrap">
        				
        				</div>
        				</div>
        					
       			 </div>
       		 </div>
 
 		</div>
 		<!-- </div> -->
 		
 		
 		<!-- 	view subscription details -->

	<div class="modal fade" id="viewemi" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      
      <div class="modal-content" style="border-radius: 10px;">
      
<!--         <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div> -->
        
        <div class="modal-body" id="showofferdetails">
        
        </div>
        <div class="modal-footer">
         <!--  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
         <button type="button" class="btn" data-dismiss="modal" style="color:white;background-image: linear-gradient( 
	45deg, #FC4A1A, #F7B733);">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="modal modalfullscreen fade" id="subscriptionfutures" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content modalcontent" style="border-radius:8px">
     <!--  <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <i class="fa fa-times-circle" aria-hidden="true"  style="color:#fd7e14"></i>
        </button>
        <h4 class="modal-title" style="color:#fd7e14" id="studentModalLabel"></h4>
      </div> -->
      <div class="modal-body">
      	<div class="card text-center" style="background:white; padding:10px 25px;;margin:5px;">
      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <!-- <span aria-hidden="true">&times;</span> -->
          <i class="fa fa-times-circle" aria-hidden="true"  style="color:#fd7e14"></i>
        </button>
        <h4 class="modal-title" style="color:#fd7e14" >Skyget - Highend features</h4>
      		
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Artificial Intelligence Robo Mentored Practice</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Skyget Models (Unique Videos Driving towards Rank)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Rank Oriented Micro Videos</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Live Classes (Full & Crash Course)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Skyget Rank Engine</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* No More Weak Area Strategy for You.</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* 365 days All India Live Tests (Full Paper, Partial Paper. Chapterwise Guess Pattern)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* World Best Analytics Driving towards Rank. </h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* Daily Recall - Important Model Questions </h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* All India Rank Prediction, Future College & many more...</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;margin:5px;border-left: 8px solid #fd7e14;">
       	<h5>* 40 Years Chapter Wise & Previous Year Papers.</h5>	
       </div>
       
       
      </div>
    </div>
  </div>
</div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 		
 		
  </div>
  
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/subscriptionstudent.js"></script>
     
      <script src="<%=request.getContextPath()%>/assets/js/subscriptionpay1.js"></script>
  <script>
  	$(document).ready(function(){
  		/* getAllTabWiseSubscription();
  		getExamTypeFeatures();
  		//getAllTabWiseExamtypes();
  		wallet();
  		 */
  		$(document).on("click", "#keepexit", function(){
  			window.location = base_url + "jsp/student/student module/studenthome.jsp";
  	 }) 
  	})
  </script>
