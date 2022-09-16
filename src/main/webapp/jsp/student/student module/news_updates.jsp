

<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>

<style>
/* .nav-tabs > li > a.hover{

 
  color: #ff4b4c;
  
} */
/* 
#nav a:active, #nav a:focus, #nav a:hover {
	color:red; 
} */
#nav a.highlite {
color: orange;
border-bottom:2px solid orange
	
}
/* 
a {
  text-decoration: none;
}

div#top_nav{
	text-align: center;
}

div#top_nav li{
	display: inline;
	padding: 15px;
}



div#top_nav a {

display: inline-block;
position: relative;

}

div#top_nav a:hover{
	color: orange;
}

a:active{
color: orange;
}


div#top_nav a:before{

  content: "";
  position: absolute;
  width: 100%;
  height: 2px;
  bottom: -3px;
  left: 0;
  background-color: orange;
  visibility: hidden;
  -webkit-transform: scaleX(0);
  transform: scaleX(0);
  -webkit-transition: all 0.15s ease-in-out 0s;
  transition: all 0.15s ease-in-out 0s;

}

div#top_nav a:hover:before , div#top_nav a.active:before {
  visibility: visible;
  -webkit-transform: scaleX(1);
  transform: scaleX(1);
}

.active {
	color: orange;
}

div#top_nav.active a{
    color: orange;
}
 
</style>
		<div class="page-wrapper">
            <div class="container-fluid">
            
            	<div class="row heading-bg"></div>
            	
            	
            	<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							
							<div class="row">
								<div class="col-sm-12" style="background: #f0f4f5;">
									<div  class="tab-struct vertical-tab custom-tab-1">
										<h3 style="min-height: 40px;display:flex;justify-content:center">News & Updates</h3>
									<!-- <div class="row" style="margin-bottom:10px" id="top_nav">
											<ul role="tablist" id="nav" class="nav nav-tabs" style="min-height: 40px;display:flex;justify-content:center">
											<li role="presentation" class="nav_item mainMenu-itemLevel1"><a href="#" class="nav_link highlite" id="default" onclick="physics(this);highlight(this)">PHYSICS</a></li>
											<li role="presentation" class="nav_item mainMenu-itemLevel1"><a href="#" class="nav_link" onclick="chemistry(this);highlight(this)">CHEMISTRY</a></li>
											<li role="presentation" class="nav_item mainMenu-itemLevel1"><a href="#"  class="nav_link" onclick="maths(this);highlight(this)">MATHS</a></li>
											</ul>
									</div>
									 -->
									
									
	
										<div id="liveVideoFilte"></div>
									</div>
								</div>
							</div>
						
													

						</div>
						</div>
						</div>
            	
            	</div>
				
    	</div>
    
	<%@include file="/jsp/master/footer.jsp" %>
	
	<script type="text/javascript">


	var current = document.getElementById('default');

	function highlight(el){
	 if (current != null)
	     {
	         current.className = "";
	     }
	     el.className = "highlite";
	     current = el;
	  };

</script> 

	
 <script src="<%=request.getContextPath()%>/assets/landing/js/news_updates.js"></script>

    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	
