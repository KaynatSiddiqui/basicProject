<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>


 
.green{
  color: blue;
}

.red{
  color: red;
}


</style>

<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
	
	<div class="row">
					<div class="col-sm-12">
							<div class="" style="display:flex;margin:20px;box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Formulas/wh64PX.png">
							<h3 class=" text-warning" id="videoTypes" style=";margin-left:5px;"></h3>
							</div>
							</div>
	<div class="row">
	<div class="col-md-8">
	<input  id="vidid" hidden>
	<div class="" id="leftviewVideo"></div>

					
						<div class="">
						
							<ul
								style="display: flex; justify-content: flex-end; align-items: center">
							
								<li  style="padding: 10px;">
									<div id="watch" style="margin-right:3px"></div>
									<div>Views</div>
								</li>
								<li style="padding: 10px;"><div id="greens"
										onclick="green()">
										<i class="fa fa-thumbs-up fa-2x" aria-hidden="true"
											style="margin-right: 5px;"></i>
									</div>
									<div class="s">0</div></li>
								<li style="padding: 10px;"><div id="reds" onclick="red()">
										<i class="fa fa-thumbs-down fa-2x" aria-hidden="true"
											style="margin-right: 5px;"></i>
									</div>
									<div class="ss">0</div></li>
								<li style="padding: 10px;" data-toggle="modal"
									data-target="#myModal"><div>
										<i class="fa fa-share fa-2x" aria-hidden="true"
											style="color: #808080; margin-right: 5px;"></i>
									</div>
									<div>0</div></li>
								<li style="padding: 10px;">
								    <div>
										<i class="fa fa-comments fa-2x" aria-hidden="true"
											style="color: #808080; margin-right: 5px;"></i>
									</div>
									<div>0</div>
								</li>
							</ul>
							
						</div>
					
					</div>
	<div class="col-md-4">
	<div class="" id="rightview" style=""></div>
	<div class="" id="rightviewVideo" style="margin-top:15px;"></div>
	</div>
	
	
	</div>	
<!-- 	 <div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <div class="modal-content">
		      <div class="modal-header" style="display:flex;justify-content:space-between">
		       <h5>Do you like this? Share with your friends!</h5>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      <div class="modal-body text-center">
		        <div class="mt-5">
		        <ul class="share_links">
		        
		          <li class="bg_fb"><a href="https://www.facebook.com/sharer/sharer.php?u=&t" target="_blank" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(Hi! By using my referral code: PRA919 , Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.) + '&t=' + encodeURIComponent(https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN)); return false;" class="share_icon"  rel="tooltip" title="Facebook" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(document.URL) + '&t=' + encodeURIComponent(document.URL)); return false;"><i class="fa fa-facebook"></i></a></li>

		           <li class="bg_mail"><a href="mailto:?subject=&body=:%20" target="_blank" onclick="window.open('mailto:?subject=' + encodeURIComponent(Hi! By using my referral code: PRA919 , Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.) + '&body=' + encodeURIComponent(https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN)); return false;" class="share_icon" rel="tooltip" title="Mail"><i class="fa far fa-envelope"></i></a></li>

		          <li class="bg_whatsapp"><a href="whatsapp://send?text=" onclick="window.open('whatsapp://send?text="Hi! By using my referral code: PRA919 , Get Rs.10 withdrawal amount by Signup the Skyget app.Download now." + encodeURIComponent(https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN)); return false;" class="share_icon" rel="tooltip" title="Whatsapp"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li></ul>
		       </div>
		      </div>
		    </div>
	  
</div>
</div> -->


 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/landing/js/liveyout.js"></script>
	