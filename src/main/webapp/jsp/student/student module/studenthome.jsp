<!DOCTYPE html>
<%@page import="com.zomant.util.AppConstants"%>

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
<link
	href="<%=request.getContextPath()%>/assets/css/student/css/studenthome.css"
	rel="stylesheet">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/student/css/good-share.min.scss"> --%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/landing/js/good-share.min.css">

<link rel='stylesheet'
	href='https://npmcdn.com/flickity@2/dist/flickity.css'>
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />
<!-- 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css">
  -->
	
<style>

/* .page-wrapper{
  z-index: -1;
} */
.vertical-alignment-helper {
	display: table;
	height: 100%;
	width: 100%;
}

.vertical-align-center {
	/* To center vertically */
	display: table-cell;
	vertical-align: middle;
}

body {
	background: #ededed;
}

.panel {
	display: block;
}


.freeBird	 {
margin-top: 50px;
} 

.small-text {
	font-size: 12px;
}

.scrolling-wrapper {
	overflow-x: scroll;
	overflow-y: hidden;
	white-space: nowrap;
	.
	panel
	{
	display
	:
	inline-block;
}

}
.scrolling-wrapper-flexbox {
	display: flex;
	flex-wrap: nowrap;
	overflow-x: auto; . panel { flex : 0 0 auto;
	margin-right: 3px;
}

}
.scrolling-wrapper, .scrolling-wrapper-flexbox {
	width: 100%;
	-webkit-overflow-scrolling: touch;
	&::
	-webkit-scrollbar
	{
	display
	:
	none;
}

}
.androidimg {
	margin: 0;
	padding: 0;
	background-image:
		url(../../../assets/images/students/homepage_img.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	    border-radius: 120px 119px 0px 0px;
	/*   text-indent: -9999px; */
	/* background-position: center; */
}

.daily_recal {
	margin: 0;
	padding: 0;
	background-image: url(../../../assets/images/students/daily_r.png);
	background-repeat: no-repeat;
	background-size: cover;
	/*   text-indent: -9999px; */
	background-position: center;
}

/* .real_allIndia{

margin: 0;
    padding: 0;
background-image: url(../../../assets/images/students/Live_Tests.svg) ;
background-repeat: no-repeat;
 background-size: cover;
 /*   text-indent: -9999px; */
/*  background-position: center; */
}
* /

#prives {
	margin: 0;
	padding: 0;
	background-image:
		url(../../../assets/images/students/Previous_green.png) !important;
	background-repeat: no-repeat;
	background-size: cover;
	/*   text-indent: -9999px; */
	background-position: center;
	/* width: 380px;
	height: 250px; */
	width:340px;
	height:225px;
	/* cursor: pointer;
  box-shadow: 0px 12px 30px 0px rgba(0, 0, 0, 0.2);
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
 */
}

.py {
	margin: 0;
	padding: 0;
	background-image: url(../../../assets/images/students/p_image.png)
		!important;
	background-repeat: no-repeat;
	background-size: cover;
	/*   text-indent: -9999px; */
	background-position: center;
	/* width: 380px;
	height: 250px; */
	width:340px;
	height:225px;

	/* cursor: pointer;
  box-shadow: 0px 12px 30px 0px rgba(0, 0, 0, 0.2);
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
 */
}

.pygreen {
	margin: 0;
	padding: 0;
	background-image:
		url(../../../assets/images/students/Previous_green.png) !important;
	background-repeat: no-repeat;
	background-size: cover;
	/*   text-indent: -9999px; */
	background-position: center;
	width: 340px;
	height: 225px;

	/* cursor: pointer;
  box-shadow: 0px 12px 30px 0px rgba(0, 0, 0, 0.2);
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
 */
}

/* .plogin{
margin: 0;
    padding: 0;
background-image: url(../../../assets/images/students/parentLogin.svg)!important ;
background-repeat: no-repeat;
 background-size: cover;

   background-position: center;
   width:350px;
   height:400px;
    


} */
.raise:hover, .raise:focus {
	box-shadow: 0 0.5em 0.5em -0.4em var(- -hover);
	transform: translateY(-0.25em);
}

.share_btn {
	font-size: 36px;
	cursor: pointer;
}

.share_links {
	list-style: none;
}

.share_links li {
	display: inline-block;
	background-color: black;
	margin: 15px;
	border-radius: 50%;
	background: #000;
}

.share_icon {
	color: white;
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	text-decoration: none;
	font-size: 32px;
	height: 80px;
	width: 80px;
}

.share_links .bg_fb:hover {
	color: #fff;
	background: #3b5998;
}

.share_links .bg_insta:hover {
	color: #fff;
	background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%,
		#d6249f 60%, #285AEB 90%);
}

.share_links .bg_whatsapp:hover {
	color: #fff;
	background: #25D366;
}

.share_links li:hover  .share_icon {
	color: #fff;
}

.flex-container {
	display: flex;
	justify-content: center;
	margin-top: 1%;
	/* background-color: Dodger#212121; */
}

.flex-container>div {
	/*  background-color: #f1f1f1;
  width: 100px;
  margin: 10px;
  text-align: center;
  line-height: 75px;
  font-size: 30px; */
	
}

.detail:hover {
	color: white;
}

.scrolling-wrapper::-webkit-scrollbar {
	display: none;
}

.subscri {
	/*  border-color: #ff9800; */
	color: white;
	background: #884bdf;
}

.subscri:hover {
	/* background: #FF7F50; */
	color: white;
	border-color: white;
}

.widthdr:hover {
	background: #212121;
	color: white;
}

.widthdr {
	color: #212121;
}

@
-webkit-keyframes blinker {
	from {opacity: 1.0;
}

to {
	opacity: 0.0;
}

}
.blink {
	text-decoration: blink;
	-webkit-animation-name: blinker;
	-webkit-animation-duration: 0.6s;
	-webkit-animation-iteration-count: infinite;
	-webkit-animation-timing-function: ease-in-out;
	-webkit-animation-direction: alternate;
}

.cardhover:hover {
	/* 
 border: 1px solid; 
 box-shadow: 2px 2px 2px 2px #888888; */
	/*  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
	/* box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2); */
	/*  0 0 5px 0 rgba(0, 0, 0, 0.2); */
}

/* .cardhover {
	/* box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2); */
	/* box-shadow: 0px 4px 7px rgb(0 0 0/ 50%); */
/* 	    box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);

}
 */
/* .cardItem:hover {
	cursor: pointer;
	box-shadow: 0px 12px 30px 0px rgba(0, 0, 0, 0.2);
	transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
} */

	 .cardhover{
	 	box-shadow: 0 0 20px 0 rgb(0 0 0 / 20%), 0 5px 5px 0 rgb(0 0 0 / 24%) !important;
	 	
	 	/* box-shadow: 0 2px 8px 0 rgb(0 0 0 / 7%); */
	 }
	 .cardhover:hover {
	 box-shadow: 0 0 20px 0 rgb(0 0 0 / 20%), 0 5px 5px 0 rgb(0 0 0 / 24%) !important;
	 }
	 .cardItem{
	 box-shadow:0 10px 20px 0 rgb(0 0 0 / 5%) !important
	 }
	 
	 .cardItem:hover {
	 box-shadow:0 10px 20px 0 rgb(0 0 0 / 5%) !important
	 }
 
	hr{
    margin-top: 10px;
    /* margin-bottom: 35px; */
    border-top: 2px solid #fd7e14 !important;
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
	
	#modalSubscriptionForm{ 
 background: rgba(0,0,0,0.5); 
 }
 
	#card {
  position: relative;
 /*  top: 110px; */
  width: 320px;
  display: block;
  margin: auto;
  text-align: center;
  font-family: 'Source Sans Pro', sans-serif;
}

#upper-side {
  padding: 2em;
  background-color: #8BC34A;
  display: block;
  color: #fff;
  border-top-right-radius: 8px;
  border-top-left-radius: 8px;
}

#checkmark {
  font-weight: lighter;
  fill: #fff;
  margin: -3.5em auto auto 20px;
}

#status {
  font-weight: lighter;
  text-transform: uppercase;
  letter-spacing: 2px;
  font-size: 1em;
  margin-top: -.2em;
  margin-bottom: 0;
}

#lower-side {
  padding: 2em 2em 5em 2em;
  background: #fff;
  display: block;
  border-bottom-right-radius: 8px;
  border-bottom-left-radius: 8px;
}

#message {
  margin-top: -.5em;
  color: #757575;
  letter-spacing: 1px;
}

#contBtn {
  position: relative;
  top: 1.5em;
  text-decoration: none;
  background: #8bc34a;
  color: #fff;
  margin: auto;
  padding: .8em 3em;
  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
  border-radius: 25px;
  -webkit-transition: all .4s ease;
		-moz-transition: all .4s ease;
		-o-transition: all .4s ease;
		transition: all .4s ease;
}

#contBtn:hover {
  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
  -webkit-transition: all .4s ease;
		-moz-transition: all .4s ease;
		-o-transition: all .4s ease;
		transition: all .4s ease;
}

.alertify {
   
    border: 10px solid #fd7e14 !important;
}

.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus {
    background-color: #fd7e14 !important;
    border: 1px solid #fd7e14 !important;
    margin: 10px !important;
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
	#statusSubscription{
	background-color:rgba(0,0,0,0.6);
	}
</style>
</head>
<body>
	<div class="page-wrapper">
		<%@include file="/jsp/master/default.jsp"%>
		<%@include file="/jsp/student/student module/studenttraking.jsp" %>
		<div class="container-fluid">

			<p class="loadershow"
				style="position: relative; top: 200px; left: 50%; z-index: 1; height: 0px; display: none;">
				<img src="/assets/images/students/spinner2.gif" width="100"
					height="100">
			</p>
			<!-- Title -->
			<div class="row heading-bg"></div>
			<!-- partial:index.partial.html -->
			<div class="androidimg p-5" style="height: 470px;">

				<div class="flex-container">
					<div class="container" style="padding: 20px;">
					
					<div class="row">
					
					<div class="col-md-7" style="display:flex; justify-content:center">
			<div style="margin-left:110px;">			
						<h4 class="" style="color: white;font-family: Raleway;margin-top: 33px !important;font-size: 32px;font-weight: 900;margin-left: 10px;margin-top: 10px;line-height: 1.23;">
							Promising</h4>

						<h2 id="examtypeee" class="text-white" style="font-family: Raleway;margin-top:42px;font-weight: bold;/* text-shadow: 0 2px 4px rgba(0, 0, 0, 0.16); */font-size: 49px;"></h2>
						<h4 class="text-white" style="font-family: Raleway;color: black;margin-top: 25px !important;font-size: 24px;font-weight: 900;margin-left: 9px;margin-top: 20px;line-height: 1.23;">
							(*Promising on bond paper)</h4>

						<div class="" style="display: flex;align-items: center;margin-top: 40px;">
							<!-- <div></div> -->
							<!-- <div style="display: flex; ">

								<h4 class="">
									<a class="text-white detail" data-toggle="modal" data-target="#exampleModalLong" style="border-bottom: 1px solid white;color: white;font-family: Raleway;margin-right: 20px;margin-bottom: 47px !important;font-weight: bold;text-shadow: 0 2px 4px rgba(0, 0, 0, 0.16);" href="#">* Click Here</a>
								</h4>
								 -->
								<a href="<%=AppConstants.BASE_URL%>student/student module/subscriptionpay1.jsp" class="btn btn-lg  waves-effect waves-light" style="font-family: Raleway;background-image: linear-gradient(45deg, #FC4A1A, #F7B733);border-radius: 13px;/* background:white; *//* border: 1px solid white; */color: white;-webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0 rgba(0, 0, 0, .12);">
									Subscription</a>

                            <!-- </div> -->			</div>

						</div>

					</div>
				<div class="col-md-5">
					<!-- <img src="/assets/images/students/Sudher_img.svg" style="height: 355px;width: 400px;"> -->
				</div>
				</div>
				
				
				
				</div>
			</div>

			<!-- <main class="freeBird"> -->
				<%-- <div class="container">
					<div style="display: flex; justify-content: center">
						<div class="panel cardhover"
							style="border-radius: 10px; padding: 0px 0px; width: 550px;">
							<div class="panel-body">
								<div
									style="display: flex; justify-content: space-around; align-items: center">
									<div class="" style="display: flex; align-items: center">
										<!-- <img src="/assets/images/students/Android - Home Page/3.Refer & Earn image/32px.png" class="ml-2"> -->
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/ReferEarnimage/wh64PX.png"
											class="ml-2" style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%);">
										<div style="margin: 10px 10px">
											<h5 class=""
												style="text-align: justify; text-justify: inter-word; text-shadow: 0 2px 4px rgb(0 0 0/ 16%);">
												<strong>Refer & Earn</strong>
											</h5>
											<h5 class=""
												style="text-align: justify; text-justify: inter-word; color: #fc6200; font-weight: bold; text-shadow: 0 2px 4px rgb(0 0 0/ 16%);">
												Rs. <span id="amount"></span>
											</h5>
										</div>
									</div>

									<div class="" style="display: flex; align-items: center">
										<!-- <img src="/assets/images/students/Android - Home Page\3.Refer & Earn image\32px.PNG" class="ml-2"> -->
										<!-- <i class="fa fas fa-share-alt fa-2x" style="color:dark#212121"></i> -->

										<!-- <a class="share_btn" data-toggle="modal" data-target="#shareIcon"><i  class="fa fas fa-share-alt fa-1x" style="color:dark#212121"></i></a>
							 -->
										<div style="margin: 20px 40px">
											<!-- <button style="border-radius:10px;display:flex; align-items:center;color: #fc6200; border: 1.75px solid #fc6200;" class="btn waves-effect cardItem bg-white btn-white" data-toggle="modal" data-target="#myModal" onclick="widthdraw()"><h6>Withdraw</h6><img src="/assets/images/students/wh32PX.png" style="margin-left:3px;"> </button>
							 -->

											<button
												style="border-radius: 10px; display: flex; align-items: center; font-size: 1.2rem; font-weight: bold; box-shadow: 0 2px 6px 0 rgb(0 0 0/ 25%); color: #fc6200; border: 1.75px solid #884bdf; cursor: pointer;"
												class="btn waves-effect cardItem bg-white btn-white"
												data-toggle="modal" data-target="#myModal"
												onclick="widthdraw()">
												<h6>Withdraw</h6>
												<img src="/assets/images/students/wh32PX.png"
													style="margin-left: 3px;">
											</button>



											<h4 class="" style="margin-left: 20px; margin-top: 10px;">
												<a class=""
													style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%); color: #fc6200;"
													href="<%=AppConstants.BASE_URL%>/student/student module/referandearndetails.jsp">
													My Earnings</a>
												<div class="line-shape"></div>
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
 --%>
			<!-- </main> -->


			<!-- Live videos -->
		<main class="freeBird">
			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px;">

					<div class="panel-body">

						<h4 class="text-center mb-5"
							style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%); color: #fc6200; font-weight: bold; font-size: 40px;">
							<!-- <span> Free</span>
							<div class="line-shape" style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%)"></div> -->
						</h4>

						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<h3
								style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%); font-weight: bold;">
								<strong>Live Classes</strong>
							</h3>
							<div
								style="display: flex; align-items: center; text-shadow: 0 2px 4px rgb(0 0 0/ 16%); font-weight: bold;">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/Viewallicon/wh32PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/viewallvideos.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<!-- Title -->
						<!-- <div class="row">
	<div class="col-md-6">
    		
 	 </div>
<div class="col-md-6">
    		<div class="panel panel-default my_panel">
    			<div class="panel-body bg-dark" style="height:200px">
      				<img src="http://placehold.it/150x150" alt="" class="img-responsive center-block imgs" />
            	
            	
            	</div>
            	
            	<div class="panel-" style="display:flex ;justify-content:space-between; align-items:center; border:none;margin-right:10px">
            	<div style="padding:20px;">
            	<span class="text-primary">Biology</span>
            	<div>Respiration in Plants - Neet Botany Special</div>
				</div>
				<div>
				<a href="#" class="btn btn-primary btn-rounded  " style="border-radius:10px">Join Now</a>
				</div>
    			</div>
   			</div>
 	 </div>
</div> -->
						<hr>
						<div id="getAllLivevideo" style="margin-top: 10px"></div>


					</div>
				</div>
			</div>
		</main>
			<!-- Live videos End -->
			
		<div class="container ">

				<div class=""style="border-radius: 8px; padding: 0px 0px 20px">

					<div class="" style="">
		<div onclick="schlp()">
		<img src="<%=request.getContextPath()%>/assets/images/students/Web-site-homeAdd.jpg" style="width:100%;box-shadow: 0 10px 20px -6px #000;">
		</div>
		
		</div>
		</div>
		</div>
			
			<!-- Real - All India Live Exams -->
			<div class="container ">

				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body" style="">

						<h4 class="text-center mb-5"
							style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%); color: #fc6200; font-weight: bold; font-size: 40px;">
							<!-- <span> Free</span>
							<div class="line-shape"
								style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%)"></div>
 -->				
 		</h4>

						<div
							style="display: flex; justify-content: space-between; align-items: center">

							<div class="d-flex align-items-center"
								style="display: flex; align-items: center">

								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/Liveicon/wh64PX.png">
								<div style="margin-left: 10px">
									<h4 class="mt-3 ml-2"
										style="display: flex; align-items: center">
										<strong>Real - All India Live Exams</strong>
										<div class="blink"style="width: 17px; height: 17px; border-radius: 50px; border: 1px solid #E74C3C; background: #E74C3C; margin-left: 10px;"></div>

									</h4>
									<h6>
										<strong>Know your - All India Rank</strong>
									</h6>
								</div>
							</div>

							<div style="display: flex; align-items: center">
								<a
									href="<%=AppConstants.BASE_URL%>/student/livezone/live_zone_active_full_mocks.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>Explore</strong></a>
							</div>

						</div>



						<!-- <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn card bg-dark p-4" style="border-radius:10px">
  <h5 class="card-body">
  <h5 class="card-text text-white">
 <div class="d-flex justify-content-start">Fully Syllabus Test - 15</div><div class="d-flex justify-content-start">Live Exams</div></h5></h5>
</button>
 
  </div>
   <div class="col-md-4">
  <button class="col-md-12 btn card p-4 bg-dark align-bottom" style="border-radius:10px">
   <h5 class="card-body">
  <h5 class="card-text text-white">
 <div class="d-flex justify-content-start"> Mock Test - 4</div><div class="d-flex justify-content-start"> Live Exams</div></h5></h5></button>
   
  </div>
   <div class="col-md-4">
  <button class="col-md-12  btn  card p-4 bg-dark align-bottom" style="border-radius:10px">
  <h5 class="card-body">
  <h5 class="card-text text-white"> <div class="d-flex justify-content-start">Fully Syllabus Test - 16 </div><div class="d-flex justify-content-start">Live Exams</div></h5></h5></button>
  
  </div>
  
  </div> -->
						<%-- <div style="display:flex; justify-content:center">
  	<img src="<%=request.getContextPath()%>/assets/images/students/Live_Tests.svg">
  </div> --%>


						<div id="realAllIndiaLiveExams" class=""></div>
					</div>
				</div>
			</div>


			<!-- Real - All India Live Exams END-->

			

		
			
			<!-- Doubts-->
			
<div class="container">			
<div class="panel panel-default cardhover" style="border-radius:8px; padding:0px 0px;">

  <div class="panel-body">
	<div style="display:flex;justify-content: space-between; align-items:center">
			<h4><strong>Ask Any JEE Main Doubt</strong></h4>
			<div style="display:flex;align-items:center;"><a href="<%= AppConstants.BASE_URL %>student/student module/doubts.jsp" style="border-bottom:solid 2px #00008b;color:#00008b;margin-left:5px"><strong>View Posted doubts</strong></a></div>

	</div>
	<div class="row" style="margin-top:30px">
							
									<form>
										<div class="row">
										<div class="col-md-6">
									
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email" style="font-weight: bold;">Select Subject</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="form-control" id="regarding" style="" data-style="form-control btn-default btn-outline">
															
														</select>
													</div>
												</div>	
											</div>
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" style="font-weight: bold;" for="example-email">Type Your Doubt</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															 <textarea name="editor1" class="form-control" id="editor1" class="reply" placeholder="Type Your Doubt" style="height:150px;background: border-box; "></textarea>
															</div>
														</div>	
													</div>
										</div>
										<div class="col-md-6">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												
												<div class="row form-group">
												
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Doubt Image </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															<img id="myImg" src="http://via.placeholder.com/150x150" style="width:150px;height:150px;border-radius:100px;"><br>
													<input type='file' id="fileUpload" style="margin-top:20px;margin-left:80px;" />
															</div>
													
                                  			</div>
                                  			
											</div>
											</div>
											</div>
										<div class="row mb-20">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="#" onclick="addfeedback()" data-toggle='modal' data-target='#showimgss' class="btn  btn-primary">Submit</a>
												</div>
											</div>
										</div>
									</form>
								</div>-
							</div>
</div>
</div>
			
			
			<!-- Doubts END-->
			
			<!-- After Class - Practice Strategy -->
			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px;">

					<div class="panel-body">

						<div class="d-flex align-items-center"
							style="display: flex; align-content: center; justify-content: space-between">
							<div class="d-flex align-items-center"
								style="display: flex; align-content: center">

								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/Dailyrecallicon/wh64PX.png">
								<div class="ml-2 mt-3"
									style="display: flex; align-content: center">
									<h4 class="">
										<strong>After Class - Practice</strong>
									</h4>

								</div>
							</div>
							<div style="display: flex; align-items: center">
								<a
									href="<%=AppConstants.BASE_URL%>/student/dailyscoope/dailyscoope-examtype.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>Explore</strong></a>
							</div>

						</div>



						<!--  <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn panel bg-dark p-4" style="border-radius:10px">
  <div class="panel-body mt-3">
  <div class="panel-text">
 <h5 class="d-flex justify-content-start m-0 text-white">Daily Dose Patch</h5>
<div class="d-flex justify-content-start text-white">Short Exams</div>
</div></div>
</button>
 </div>
  <div class="col-md-4">
  <button class="col-md-12 btn panel bg-dark p-4" style="border-radius:10px">
  <div class=" panel-body mt-3">
  <div class=" panel-text text-white">
 <h5 class="d-flex justify-content-start m-0 text-white">Daily Dose Patch</h5>

</div><div class="d-flex justify-content-start text-white">Short Exams
</div></div>
</button>
 </div>
  <div class="col-md-4">
  <button class="col-md-12 btn  panel bg-dark p-4" style="border-radius:10px">
   <div class=" panel-body mt-3">
  <div class="panel-text text-white">
 <h5 class="d-flex justify-content-start m-0 text-white">Daily Dose Patch</h5>

</div><div class="d-flex justify-content-start text-white">Short Exams
</div></div>
</button>
 </div>
  </div> -->


						<div id="dailyQuizResponse" class=""></div>

					</div>
				</div>
			</div>

			<!-- After Class - Practice Strategy END-->

			<!-- JEE - Crash Course -->
			<div class="container" id="crashneet">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">
						<h4 class="text-center mb-5"
							style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%); color: #fc6200; font-weight: bold; font-size: 40px;">
							<!-- <span> Free</span>
							<div class="line-shape"
								style="text-shadow: 0 2px 4px rgb(0 0 0/ 16%)"></div> -->
						</h4>
						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>JEE - Crash Course</strong>
							</h4>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/MotivationalVideos/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Crash Course"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<div id="crashCourse" style="margin-top: 10px"></div>
					</div>
				</div>
			</div>

			<!-- JEE - Crash Course END -->
			
			
	
			<!-- Rank Guarantee Practice robot Driven -->

			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">
						<div class="d-flex align-items-center"
							style="display: flex; align-items: center">

							<img
								src="<%=request.getContextPath()%>/assets/images/students/WebHome/RobotIcon/wh128PX.png">

							<div class="mt-3 ml-2" style="margin: 10px 10px">
								<h4>
									<strong>Rank Guarantee Practice Robot Driven</strong>
								</h4>
							</div>
						</div>
						<div class="row mt-4 d-flex" style="margin-top: 10px">
							<%-- <div class="col-md-4">

								<a class=""
									href="<%=AppConstants.BASE_URL%>student/Ainteractive/interactive.jsp">
									<button class="col-md-12 btn btn-warning p-3 cardItem"
										style="border-radius: 20px">

										<div class="d-flex justify-content-center">
											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/Physics/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2" id="">Physics
										</div>
									</button>
								</a>
							</div> --%>
							
							
							<%-- <div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/Ainteractive/interactive.jsp">
									<button class="col-md-12 btn btn-info p-3 cardItem"
										style="border-radius: 20px">
										<div class="d-flex justify-content-center">
											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/CHemistry/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">Chemistry
										</div>
									</button>
								</a>
							</div> --%>
							
							
							<%-- <div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/Ainteractive/interactive.jsp">
									<button class="col-md-12 btn btn-success p-3 cardItem"
										style="border-radius: 20px">
										<div class="d-flex justify-content-center">
											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/maths/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">Maths</div>
									</button>
								</a>
							</div> --%>
							
							
						</div>
					</div>
					<h6 class="d-flex justify-content-center"
						style="display: flex; justify-content: center">
						<strong>I will train you to get expertise in less time-
							Powered by Artificial Intelligence </strong>
					</h6>
				</div>
			</div>

			<!-- Rank Guarantee Practice robot Driven END-->

			<!-- Weak Area Strategy Practice -->
			<div class="container">

				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px"">

					<div class="panel-body">
						<div class="d-flex align-items-center"
							style="display: flex; align-items: center">

							<img
								src="<%=request.getContextPath()%>/assets/images/students/WebHome/YourMistakesRocketicon/wh64PX.png">
							<div class="ml-2 mt-3">
								<h4 class="">
									<strong>Weak Area Strategy Practice</strong>
								</h4>
								<h6 class="text-muted">Fix Weak Area in Easy way</h6>
							</div>

						</div>
						<div class="row mt-4 d-flex"
							style="margin-top: 20px; margin-bottom: 20px">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>/student/livezone/wrong&overtime.jsp">
									<button class="col-md-12 btn  p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">

										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(55%) sepia(23%) saturate(4966%) hue-rotate(359deg) brightness(101%) contrast(107%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/Physics/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Physics </strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>/student/livezone/wrong&overtime.jsp">
									<button class="col-md-12 btn p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(38%) sepia(83%) saturate(7419%) hue-rotate(289deg) brightness(93%) contrast(134%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/CHemistry/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Chemistry </strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>/student/livezone/wrong&overtime.jsp">
									<button class="col-md-12 btn p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(47%) sepia(96%) saturate(5744%) hue-rotate(200deg) brightness(108%) contrast(101%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/maths/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Maths</strong>
										</div>
									</button>
								</a>
							</div>
						</div>


					</div>
				</div>
			</div>
			<!-- Your Mistakes END-->


			<!-- Rank+ -->
			<div class="container">

				<div class="panel panel-default cardhover"
					style="border-radius: 0px; padding: 0px 0px">

					<div class="panel-body">



						<div class="d-flex align-items-center mt-3" style="display: flex; align-items: center">

							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/RankIcon/wh64PX.png">
							<div class="ml-3 mt-3">
								<h4 class="">
									<strong>Rank Jump Practice</strong>
								</h4>
								<h6 class="text-muted">Jump Rank Quickly & Easily</h6>
							</div>

						</div>
						<div class="row mt-4 d-flex"
							style="margin-top: 20px; margin-bottom: 20px">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>/student/seventycorner/seventypercentexamtypes.jsp">
									<button class="col-md-12 btn  p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">

										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(55%) sepia(23%) saturate(4966%) hue-rotate(359deg) brightness(101%) contrast(107%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/Physics/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Physics </strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class="cardItem"
									href="<%=AppConstants.BASE_URL%>/student/seventycorner/seventypercentexamtypes.jsp">
									<button class="col-md-12 btn p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(38%) sepia(83%) saturate(7419%) hue-rotate(289deg) brightness(93%) contrast(134%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/CHemistry/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Chemistry </strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>/student/seventycorner/seventypercentexamtypes.jsp">
									<button class="col-md-12 btn p-3 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 20px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<div class="d-flex justify-content-center">
											<img
												style="filter: invert(47%) sepia(96%) saturate(5744%) hue-rotate(200deg) brightness(108%) contrast(101%);"
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Physics_Maths_Chemistry_Icons/maths/wh128PX.png">
										</div>
										<div class="d-flex justify-content-center mt-2">
											<strong style="color: black">Maths</strong>
										</div>
									</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Rank+ END -->
			



			<!-- Get all Videos doubt , real world  -->
			<div class="container">

				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">
					<div style="display: flex; justify-content: space-between; align-items: center">
							<div>
							<h4>
								<strong>Concept Scorers</strong>
							</h4>
							<!-- <div>Any Concept in 5minutes</div> -->
							<h6><strong>- to solve any level-1 Qns.</strong></h6>
							</div>
							<div style="display: flex; align-items: center">
								<%-- <img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png">
									 --%>
									<a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Concepts - in Real world applications"
									style="border-bottom: solid 2px #212121; margin-left: 5px">
									<strong>View All</strong></a>
							</div>

					</div>
						<hr>
						<div id="realworldconcepts" style="margin-top: 10px"></div>
					<%-- 	<div style="display: flex; justify-content: space-between; align-items: center">
							<!-- <h4>
								<strong>Tricks & Logics</strong>
							</h4>
							<div>To solve Qns. in less than a minute</div> -->
							<div>
							<h4>
								<strong>Tricks & Logics</strong>
							</h4>
							<!-- <div>Any Concept in 5minutes</div> -->
							<h6><strong>To solve Qns. in less than a minute</strong></h6>
							</div>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/tricks_logics.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="examhacking" style="margin-top: 10px"></div> --%>
						
						<div style="display: flex; justify-content: space-between; align-items: center">
							<div>
							 <h4>
								<strong>Skyget Thunders</strong>
							</h4>
							<!-- <div>Rank driving videos</div>  -->
							<h6><strong>- to solve any level-2 & level-3 Qns.</strong></h6>
							</div>
							<div style="display: flex; align-items: center">
								<%-- <img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png">
									 --%>
									<a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Methods to Solve"
									style="border-bottom: solid 2px #212121; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="methodtosolve" style="margin-top: 10px"></div>
						
						
				<%-- 		
						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<div>
							<h4>
								<strong>Doubt Clearance</strong>
							</h4>
							<!-- <div>By IITians & Other Top Faculty</div> -->
							<h6><strong>By IITians & Other Top Faculty</strong></h6>
							</div>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Doubts Videos"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="clearanydoubt" style="margin-top: 10px"></div>
						 --%>
						
						
					<!-- 	//new Video type -->
					
					
					
					
					 <div
							style="display: flex; justify-content: space-between; align-items: center">
							<div>
							<h4>
								<strong>No More Mistakes</strong>
							</h4>
							<h6><strong>- no negative marks at all</strong></h6>
							</div>
							<div style="display: flex; align-items: center">
			<%-- 					<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png">
									 --%>
									<a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Fit Formulae"
									style="border-bottom: solid 2px #00008b; margin-left: 5px">
									<strong>View All</strong></a>
							</div>

						</div>
						<hr>
						<div id="fitformulae" style="margin-top: 10px"></div>
						
						<%-- <div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>Confusions & Misconceptions</strong>
							</h4>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/allLiveVideos.jsp?allVideo=Confusions & Misconceptions"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="confusionsmis" style="margin-top: 10px"></div>
					 --%>
					
						<%-- <div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>Fit formulae</strong>
							</h4>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/tricks_logics.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="fitformulae" style="margin-top: 10px"></div> --%>
						
						<%-- <div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>Confusions & Misconceptions</strong>
							</h4>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/AllTricksandLogicIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/tricks_logics.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>

						</div>
						<hr>
						<div id="confusionsmis" style="margin-top: 10px"></div> --%>
					
					
					</div>

				</div>

			</div>

			<!-- Get all Videos doubt , real world end -->
			
			
			<!-- Attempted - Live Tests-->
			<div class="container ">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">

						<div
							style="display: flex; justify-content: space-between; align-items: center">

							<div class="d-flex align-items-center mt-3"
								style="display: flex; align-items: center;">

								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/Attemptedtesticon/wh64PX.png">
								<div class="ml-2 mt-3">
									<h4 class="">
										<strong>Attempted - Live Tests</strong>
									</h4>
									<!-- <p class="text-muted">Self & Comparative Analytics</p> -->
								</div>

							</div>
							<div style="display: flex; align-items: center">
								<a
									href="<%=AppConstants.BASE_URL%>/student/livezone/live_zone_attempted_full_mocks.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>Explore</strong></a>
							</div>

						</div>
						<div class="row" style="margin-top: 20px; margin-bottom: 20px">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/livezone/live_zone_attempted_full_mocks.jsp">

									<button
										class="btn  btn-rounded waves-effect col-md-12 btn cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 10px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Topic wise_Full_Syllabus_Mocktestsicons/Topic Wise/wh128PX.png">
										<div class="my-3">
											<strong style="color: black">Top Guess Patterns</strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/livezone/live_zone_attempted_full_mocks.jsp">
									<button
										class="btn btn-outline-info btn-rounded waves-effect col-md-12 btn p-2 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 10px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Topic wise_Full_Syllabus_Mocktestsicons/Full Syllabus/wh128PX.png">
										<div class="my-3">
											<strong style="color: black">Full Syllabus Tests</strong>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/livezone/live_zone_attempted_full_mocks.jsp">
									<button
										class="btn btn-outline-info btn-rounded waves-effect col-md-12 btn p-2 cardItem"
										style="border: 2px solid #c3e6fc; border-radius: 10px; background: linear-gradient(#ffffff, #f3fafe, #e7f5fe)">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Topic wise_Full_Syllabus_Mocktestsicons/Mock Tests/wh128PX.png">
										<div class="my-3">
											<strong style="color: black">Mock Tests </strong>
										</div>
									</button>
								</a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Attempted - Live Tests END-->

			<!-- Test Series -->
			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">


						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<div class="d-flex align-items-center mt-3"
								style="display: flex; align-items: center">

								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/TestSeries_missedicon/wh64PX.png">
								<div class="ml-2 mt-3">
									<h4 class="">
										<strong>Test Series</strong>
									</h4>
									<h6 class="text-muted">Missed Live Tests</h6>
								</div>

							</div>

							<div style="display: flex; align-items: center">
								<a
									href="<%=AppConstants.BASE_URL%>/student/livezone/live_zone_missed_full_mocks.jsp"
									style="border-bottom: solid 2px #212121; margin-left: 5px"><strong>Explore</strong></a>
							</div>

						</div>
						<!-- <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn card bg-dark p-4" style="border-radius:10px">
  <h5 class="card-body">
  <h5 class="card-text text-white">
 <div class="d-flex justify-content-start">Mock Test - 12
</div><div class="d-flex justify-content-start">Live Exams</div></h5></h5>
</button>
 </div>
  <div class="col-md-4">
  <button class="col-md-12 btn card bg-dark p-4" style="border-radius:10px">
  <h5 class="card-body">
  <h5 class="card-text text-white">
 <div class="d-flex justify-content-start">Mock Test - 13
</div><div class="d-flex justify-content-start">Live Exams</div></h5></h5>
</button>
 </div>
  <div class="col-md-4">
  <button class="col-md-12 btn card bg-dark p-4" style="border-radius:10px">
  <h5 class="card-body">
  <h5 class="card-text text-white">
 <div class="d-flex justify-content-start">Mock Test - 14
</div><div class="d-flex justify-content-start">Live Exams</div></h5></h5>
</button>
 </div>
  </div> -->

						<div id="missedTest" class=""
							style="margin-top: 10px; margin-bottom: 10px"></div>


						<div class="row d-flex justify-content-center mt-3"
							style="margin-top: 10px; display: flex; justify-content: center">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/livezone/live_zone_upcoming_full_mocks.jsp">

									<button class="col-md-12 d-flex btn cardItem"
										style="border-radius: 20px; display: flex; align-items: center; justify-content: center; background-color: #212121">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/UpcomingLeader_Board/Upcoming\wh64PX.png">
										<div class="mt-3 ml-2" style="margin-left: 15px; color: white">
											<div>Upcoming</div>
											<div>Live Tests</div>
										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/student module/live_zone_toppers.jsp">

									<button class="col-md-12 d-flex btn cardItem"
										style="border-radius: 20px; display: flex; align-items: center; justify-content: center; background-color: orange">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/UpcomingLeader_Board/LeaderBoard\wh64PX.png">
										<div class="mt-3 ml-2" style="margin-left: 15px; color: white">
											<div class="">Leader Board</div>
										</div>
									</button>
								</a>

							</div>
						</div>
					</div>
				</div>
			</div>




			<!-- Test Series  END -->

			<!-- DASH BOARD -->

			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">

						<%--  <div class="" style="display:flex; justify-content:space-around;align-items:center">
							<div class="">
							<button class="btn btn-success" style="display:flex;align-items:center;border-radius:10px;box-shadow: 0 0 11px rgba(33,33,33,.2); "><img src="<%=request.getContextPath()%>/assets/images/students/WebHome/Dashboardicon/wh32PX.png"><a href="<%= AppConstants.BASE_URL %>student/livezone/dash.jsp" style="margin-left:5px;color:white ">Dashboard</a></button>
							</div>
							<div class="">
							<button class="btn btn-warning" style="border-radius:10px;display:flex;align-items:center;box-shadow: 0 0 11px rgba(33,33,33,.2); "><img src="<%=request.getContextPath()%>/assets/images/students/WebHome/EinsteinAnalyticsIcon/wh32PX.png"><a href="<%= AppConstants.BASE_URL %>student/einsteinanalaytics/einsteinsummary.jsp" style="margin-left:5px;color:white ">Einstein Analytics</a></button>
							</div>
						</div> --%>


						<div class="row d-flex justify-content-center mt-3"
							style="margin-top: 10px; display: flex; justify-content: center">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/livezone/dash.jsp">

									<button class="col-md-12 d-flex btn cardItem"
										style="border-radius: 20px; display: flex; align-items: center; justify-content: center; background-color: #ADFF2F; padding: 20px">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Dashboardicon/wh32PX.png">
										<h5 class="mt-3 ml-2" style="margin-left: 9px; color: white">
											<strong>Dashboard</strong>
										</h5>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/einsteinanalaytics/einsteinsummary.jsp">

									<button class="col-md-12 d-flex btn btn-warning cardItem"
										style="border-radius: 20px; display: flex; align-items: center; justify-content: center; padding: 20px">
										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/EinsteinAnalyticsIcon/wh32PX.png">
										<h5 class="mt-3 ml-2" style="margin-left: 9px; color: white">
											<strong>Einstein Analytics</strong>
										</h5>
									</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- DASH BOARD END-->

			

			
			
			
			
			
			
			
			


			<!-- 
<div class="panel panel-default" style="border-radius:20px;padding:20px 20px">

  <div class="panel-body">
  
	 
<div class="d-flex align-items-center justify-content-between" style="display:flex;align-items:center ;justify-content:space-between">
  <h4><strong>Method to solve any Qns</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3"  style="display:flex;align-items:center">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\17.All Tricks and Logic's Icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">View All</a>
</strong></h4>
 
  </div>
  
  </div>
  
   <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0 text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
  <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 </div>

<hr>
    
<div class="d-flex align-items-center justify-content-between" style="display:flex ;align-items:center; justify-content:space-between">
  <h4><strong>Real world Concepts</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\17.All Tricks and Logic's Icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">View All</a>
</strong></h4>
 
  </div>
  
  </div>
  
   <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0 text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
  <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 </div>

   
  <hr>
	
  
  
  
<div class="d-flex align-items-center justify-content-between" style="display:flex ;align-items:center; justify-content:space-between">
  <h4><strong>Clear any Doubt</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\17.All Tricks and Logic's Icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">View All</a>
</strong></h4>
 
  </div>
  
  </div>
  
   <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0 text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
  <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start m-0  text-white">Thermodynamics</h5>
 <div class="d-flex justify-content-start  text-white">Doubt</div></div>
</button>
 </div>
<hr>
   
<div class="d-flex align-items-center justify-content-between mt-3" style="display:flex ;align-items:center; justify-content:space-between">
  <h4><strong>Exam Hacking & Tricks</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\17.All Tricks and Logic's Icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">All Tricks & Logics
</a>
</strong></h4>
 
  </div>
  
  </div>
  
   <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
  <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start  text-white">Guessing Tricks </h5></div>
</button>
 
  <div class="col-md-4">
  <button class="col-md-12 btn  bg-dark p-5" style="border-radius:10px">
 <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start  text-white">Math Tricks</h5></div>
</button>

  <div class="col-md-4">
  <button class="col-md-12 btn bg-dark p-5" style="border-radius:10px">
   <i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 <h5 class="d-flex justify-content-start  text-white">physics</h5></div>
</button>

  </div>
  
 </div>
</div>


 -->

			<!-- Previous Year  -->
			<div class="container">

				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">

						<div class="d-flex align-items-center justify-content-start"
							style="display: flex; align-items: center; justify-content: start; margin-bottom: 40px;">
							<h4>
								<strong>Previous Year Practice & Analytics</strong>
							</h4>
						</div>
						<div
							style="display: flex; justify-content: space-around; align-items: center">
							<div>
								<div class="pygreen"
									style="display: flex; align-items: center; justify-content: space-around">
									<!-- <div class="d-flex align-items-center justify-content-around" > -->
									<a
										href="<%=AppConstants.BASE_URL%>student/PreviousyearsPapers/chapterwise/chapter-wise.jsp"
										style="display: flex; align-items: center; justify-content: around">
										<img
										src="<%=request.getContextPath()%>/assets/images/students/WebHome/Chapter-wise_QNSCollegePredictorIcons/Years/wh64PX.png">
										<h4 class="text-white">
											<strong>40 Years
												<div>Chapter-Wise QNS</div>
											</strong>
										</h4>
										<div class="btn btn-dark rounded-circle waves-effect p-3">
											<i class="fa fas fa-arrow-right fa-2x"></i>
										</div>

									</a>

								</div>
							</div>

							<div>
								<div class="py"
									style="display: flex; align-items: center; justify-content: space-around">

									<a
										href="<%=AppConstants.BASE_URL%>student/PreviousyearsPapers/paperwise/paper-wise.jsp"
										style="display: flex; align-items: center; justify-content: around">
										<img
										src="/assets/images/students/WebHome/Chapter-wise_QNSCollegePredictorIcons/PreviousPapers/wh64PX.png">
										<h4 class="text-white">
											<strong>Previous Year
												<div>Papers</div>
											</strong>
										</h4>
										<div>
											<div class="btn btn-dark rounded-circle waves-effect p-3">
												<i class="fa fas fa-arrow-right fa-2x"></i>
											</div>
										</div>


									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- Previous Year end -->

			<!-- All India Rank & Home State  -->
			<div class="container">
				<div class="bg-primary cardhover cardItem"
					style="border-radius: 8px; padding: 20px 0px; margin-bottom: 20px;">

					<a
						href="<%=AppConstants.BASE_URL%>student/collegeprediction/collegepre1.jsp">

						<div class="" style="display: flex; align-items: center; justify-content: space-around">

							<img
								src="<%=request.getContextPath()%>/assets/images/students/WebHome/Chapter-wise_QNSCollegePredictorIcons/CollegePrediction/wh64PX.png">
							<div>
								<h4 class="text-white">
									<strong>College Predictor</strong>
								</h4>
								<div class="text-white">All India Rank & Home State</div>
							</div>
							<div>
								<div class="btn btn-dark rounded-circle waves-effect p-3">
									<i class="fa fas fa-arrow-right fa-2x"></i>
								</div>
							</div>
						</div>
					</a>
				</div>



			</div>

			<!-- Formuls and concepts ncrt-->
<%-- 
			<div class="container">
				<div class="panel panel-default cardhover p-3 mt-4"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">

						<div class="d-flex align-items-center justify-content-start"
							style="">
							<h4>
								<strong>Study Zone</strong>
							</h4>
						</div>
						<div class="row mt-3"
							style="margin-top: 20px; margin-bottom: 20px">
							<div class="col-md-4">

								<a
									href="<%=AppConstants.BASE_URL%>student/student module/studyfcn.jsp?allData=Formulas"
									class="col-md-12 btn p-4 cardItem"
									style="border-radius: 20px; background: #FFE4C4; padding: 20px;">
									<div class="d-flex align-items-center justify-content-around "
										style="display: flex; align-items: center; justify-content: space-around">

										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Formulas/wh64PX.png">
										<h4 class="text-warning">
											<strong>Formulas</strong>
										</h4>
										<div class="btn btn-warning rounded-circle waves-effect p-3"
											style="border-radius: 18px; padding: 8px 8px">
											<i class="fa fas fa-arrow-right"></i>
										</div>
									</div>
								</a>


							</div>
							<div class="col-md-4">



								<a
									href="<%=AppConstants.BASE_URL%>student/student module/studyfcn.jsp?allData=Concepts"
									class="col-md-12 btn p-4 cardItem"
									style="border-radius: 20px; background: #E6E6FA; padding: 20px;">
									<div class="d-flex align-items-center justify-content-around"
										style="display: flex; align-items: center; justify-content: space-around">

										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Concepts/wh64PX.png">
										<h4 class="" style="color: #20B2AA">
											<strong>Concept </strong>
										</h4>
										<div class="btn  rounded-circle waves-effect p-3"
											style="border-radius: 18px; padding: 8px 8px; background: #20B2AA">
											<i class="fa fas fa-arrow-right"></i>
										</div>
									</div>
								</a>

							</div>
							<div class="col-md-4">


								<a
									href="<%=AppConstants.BASE_URL%>student/student module/studyfcn.jsp?allData=NCERT"
									class="col-md-12 btn p-4 cardItem"
									style="border-radius: 20px; background: #DDA0DD; padding: 20px;">
									<div class="d-flex align-items-center justify-content-around"
										style="display: flex; align-items: center; justify-content: space-around">

										<img
											src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/NCERT/wh64PX.png">
										<h4 class="" style="color: #8B008B">
											<strong>NCERT </strong>
										</h4>
										<div class="btn  rounded-circle waves-effect p-3"
											style="border-radius: 18px; padding: 8px 8px; background: #8B008B">
											<i class="fa fas fa-arrow-right"></i>
										</div>
									</div>
								</a>

							</div>
						</div>

					</div>
				</div>

			</div>
 --%>
			<!-- Formuls and concepts ncrt end-->

			<!-- feedback -->
			<div class="container">
				<div class="panel panel-default cardhover p-3 mt-4"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">

						<div class="row mt-3"
							style="margin-top: 20px; margin-bottom: 20px; display: flex; justify-content: center">

							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/student module/feedbacks.jsp">
									<button class="col-md-12 btn p-4 cardItem"
										style="border-radius: 20px; padding: 20px; background: #DCDCDC">
										<div class="d-flex align-items-center justify-content-around"
											style="display: flex; align-items: center; justify-content: space-around">

											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Feedback/wh64PX.png">
											<h4 class="text-primary">
												<strong>Feedback</strong>
											</h4>

										</div>
									</button>
								</a>
							</div>
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/student module/referandearn.jsp">
									<button class="col-md-12 btn p-4 cardItem"
										style="border-radius: 20px; padding: 20px; background: #DCDCDC"">
										<div class="d-flex align-items-center justify-content-around"
											style="display: flex; align-items: center; justify-content: space-around">

											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Wallet/wh64PX.png">
											<h4 class="text-primary">
												<strong>Wallet</strong>
											</h4>

										</div>
									</button>
								</a>
							</div>
						</div>

						<div class=""
							style="display: flex; justify-content: center; align-items: center">
							<div class="col-md-4">
								<a class=""
									href="<%=AppConstants.BASE_URL%>student/parentlogins/parent_logins.jsp">
									<button class="col-md-12 btn p-4 cardItem"
										style="border-radius: 20px; padding: 20px; background: #DCDCDC"">
										<div class="d-flex align-items-center"
											style="display: flex; align-items: center; justify-content: space-around">

											<img
												src="<%=request.getContextPath()%>/assets/images/students/WebHome/Formulas_Feedback_Wallet_Icons/Parent/wh64PX.png">
											<h4 class="text-primary">
												<strong>Parent Login</strong>
											</h4>
											<div class="btn btn-dark rounded-circle waves-effect p-3">
												<i class="fa fas fa-arrow-right fa-2x"></i>
											</div>

										</div>
									</button>
								</a>
							</div>

						</div>


					</div>
				</div>

			</div>


			<!-- feedback  end-->

			<!-- 
    <div class="panel panel-default" style="border-radius:20px;padding:20px 20px">
 <div class="panel-body" style="">
  <div class="plogin">
  
  </div>
  
   </div>
  </div>
   -->

			<!-- </div> -->


			<!--  <div class="container">
  
  <div class="panel panel-default" style="border-radius:20px;padding:20px 20px">
 <div class="panel-body" style="">

<h1>Flickity - contain</h1>

Flickity HTML init
<div class="carousel"
  data-flickity='{ "contain": true }'>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
  <div class="carousel-cell"></div>
</div>
</div> 
 </div>

</div>  -->

			<!-- Motivational Videos and News & Update -->

			<%-- <div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">
						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>Motivational Videos</strong>
							</h4>
							<div style="display: flex; align-items: center;">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/MotivationalVideos/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/motiv_news.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>
						</div>
						<hr>
						<div id="motivational" style="margin-top: 10px"></div>
						
						<div
							style="display: flex; justify-content: space-between; align-items: center">
							<h4>
								<strong>News & Update</strong>
							</h4>
							<div style="display: flex; align-items: center">
								<img
									src="<%=request.getContextPath()%>/assets/images/students/WebHome/NewsIcon/wh64PX.png"><a
									href="<%=AppConstants.BASE_URL%>student/student module/news_updates.jsp"
									style="border-bottom: solid 2px #00008b; color: #00008b; margin-left: 5px"><strong>View
										All</strong></a>
							</div>
						</div>
						<hr>
						<div id="newsupdates" style="margin-top: 10px"></div>

					</div>
				</div>
			</div> --%>

			<!-- Motivational Videos and News & Update end -->


			<!--  <div class="panel panel-defalut p-3 mt-4" style="border-radius:20px;padding:20px 20px">

  <div class="panel-body">
  
<div class="d-flex align-items-center justify-content-between" style="display:flex ;align-items:center ;justify-content:space-between">
  <h4><strong>Motivational Videos</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3" style="display:flex ;align-items:center ;">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\20.Motivational Videos View all icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">View All</a>
<
 
  </div>
  
  </div>
  
   <div class="row"  style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content:center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  <div class="col-md-4">
 
  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content:center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  <div class="col-md-4">
 
  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content:center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  </div>
    
<div class="d-flex align-items-center justify-content-start mt-5">
  <h5><strong>Excellent</strong>
 <div class="d-flex mt-4">
 <div class="d-flex" style="color:yellow"><i class="mx-2 fa fas fa-star fa-2x"></i><i class="mx-2 fa fas fa-star fa-2x"></i><i class="mx-2 fa fas fa-star fa-2x"></i><i class="mx-2 fa fas fa-star fa-2x"></i><i class="mx-2 fa fas fa-star fa-2x"></i></div>
 <button class="btn btn-primary ml-3" style="border-radius:20px">Rate Us</button>
 </div> 
</h5>
 </div>
  
<div class="d-flex align-items-center justify-content-between mt-2" style="display:flex; align-items:center; justify-content:space-between">
  <h4><strong>News & Update</strong>
</h4>

 <div class="d-flex align-items-center ml-2 mt-3">
  
<img class="mr-2" src="/assets/images/students/Android - Home Page\21.News Icon\64px.png">
<a href="#" class="" style="border-bottom:solid 2px #212121">View All</a>
</strong></h4>
 
  </div>
  
  </div>
  
   <div class="row" style="margin-top:20px;margin-bottom:20px">
 <div class="col-md-4">
  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content::center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  <div class="col-md-4">

  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content:center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  <div class="col-md-4">
  
  <button class="col-md-12 btn  bg-dark p-5 d-flex justify-content-center" style="border-radius:10px;display:flex ;justify-content:center">
  
<i class="fa far fa-play-circle fa-2x text-white" style="font-size:40px"></i>
 

</button>
 </div>
  </div>
   -->

		<!-- 	Refer frirnd -->

		<%-- 	<div class="container">

				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 10px 0px; background: #AFEEEE;">

					<div class="panel-body">
						<div
							class="d-flex align-items-center justify-content-around good-share"
							style="display: flex; align-items: center; justify-content: space-around"
							data-share-title="Hi!"
							data-share-url="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN"
							data-share-text="Skyget is specialized in IIT-JEE Main.By using my referral code:SOW692, Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.">

							<img
								src="<%=request.getContextPath()%>/assets/images/students/WebHome/ShareIcon/wh64PX.png"
								style="filter: invert(58%) sepia(78%) saturate(2116%) hue-rotate(359deg) brightness(99%) contrast(104%);"
								class="good-share " data-share-title="Hi!"
								data-share-url="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN"
								data-share-text="Skyget is specialized in IIT-JEE Main.By using my referral code:SOW692, Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.">

							<div>
								<h4 class="" style="color: #FF8C00">
									<strong class="good-share " data-share-title="Hi!"
										data-share-url="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN"
										data-share-text="Skyget is specialized in IIT-JEE Main.By using my referral code:SOW692, Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.">
										Share with Friends &amp; Earn Money</strong>
								</h4>
								<div style="color: black" class="text-center">
									<strong class="good-share " data-share-title="Hi!"
										data-share-url="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN"
										data-share-text="Skyget is specialized in IIT-JEE Main.By using my referral code:SOW692, Get Rs.10 withdrawal amount by Signup the Skyget app.Download now.">Help
										your Friends to improve the Rank</strong>
								</div>

							</div>
							<div class="">
								<a href="#"
									class="btn rounded-circle waves-effect p-3 good-share"
									style="border-radius: 20px; background: #FF8C00"><i
									data-share-title="Hi!
			Skyget is specialized in IIT-JEE Main."
									data-share-text="By using my referral code: PRA919 , Get Rs.10 withdrawal amount by Signup the Skyget app.Download now."
									data-share-url="https://play.google.com/store/apps/details?id=com.skyget&amp;hl=en_IN"
									class="fa fas fa-arrow-right good-share"></i></a>
							</div>
						</div>

					</div>
				</div>
			</div>
 --%>
 
 
 		<!-- END 	Refer frirnd -->
 		
 		
 		<!-- Subscription text -->
 		
			<div class="container">
				<div class="panel panel-default cardhover"
					style="border-radius: 8px; padding: 0px 0px">

					<div class="panel-body">
						<div class="d-flex align-items-center justify-content-start mt-5"
							style="margin-top: 20px; margin-bottom: 20px">
							<h4>
								<strong>Skyget Subscription</strong>
							</h4>
						</div>
						<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner"></div>

							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div> -->
						
						<!-- new subscription design -->
						
						<div  style="display:flex; justify-content:center">
        				<div id="subscriptionPay" style="display:flex; flex-wrap:wrap">
        				
        				</div>
        				</div>

					</div>
				</div>
			</div>
			
			
			
			<!-- new dynamic subscriptiuom -->
			
			
			
			
			
			
			
			
			
			


			<div class="modal fade" id="myModal" role="dialog"
				style="color: #212121;">
				<div class="modal-dialog">

					<!-- Modal content-->

					<div class="vertical-alignment-helper">
						<div class="modal-dialog vertical-align-center">
							<div class="modal-content"
								style="background-color: #9900cc; color: white; padding: 30px">
								<div class="" style="border: none;">

									<!--    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
       </button> -->
								</div>
								<div class="modal-body" style="">

									<div class="with text-center" style="color: white"></div>
								</div>


							</div>
						</div>

					</div>
				</div>

			</div>
			
			<div id="statusSubscripition"></div>
			
			<div class="modal fade" id="myModal1" role="dialog"
				style="color: #212121;">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="vertical-alignment-helper">
						<div class="modal-dialog vertical-align-center">
							<div class="modal-content"
								style="background-color: #9900cc; color: white; padding: 30px">
								<div class="" style="border: none;">

									<!--  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
       </button> -->
								</div>
								<div class="modal-body" style="">
									<div class="with1" style="color: white"></div>
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>


			<div id="shareIcon" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="text-center text-info">Do you like this? Share
								with your friends!</h3>
						</div>
						<div class="modal-body text-center">

							<div class="mt-5">
								<ul class="share_links">
									<li class="bg_fb"><a
										href="https://www.facebook.com/dialog/share?app_id={app_id}&display={page_type}&href={url}&redirect_uri={redirect_url}"
										target="_blank" class="share_icon" rel="tooltip"
										title="Facebook"><i class="fa fa-facebook"></i></a></li>

									<li class="bg_insta"><a href="#" class="share_icon"
										rel="tooltip" title="Instagram"><i
											class=" fa fa-instagram"></i></a></li>
									<li class="bg_insta"><a
										href="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSHxjTTjkqqgmsgZjktsVfsbvVcbPzgBtkhWkKfTptkCZHQZZgndlsrVgZVbstSkVbFztFFB"
										target="_blank" class="share_icon" rel="tooltip" title="Gmail"><i
											class=" fa fa-envelope-o"></i></a></li>
									<li class="bg_fb"><a
										href="https://twitter.com/share?url=https://codepen.io/patrickkahl&amp;text=Share popup on &amp;hashtags=codepen"
										target="_blank" class="share_icon" rel="tooltip"
										title="Twitter"><i class=" fa fa-twitter"></i></a></li>

									<li class="bg_whatsapp"><a href="#" class="share_icon"
										rel="tooltip" title="Whatsapp"><i class="fa fa-whatsapp"
											aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 


sub:homepage

 -->
			<!-- Modal -->
			<div class="modal fade" id="exampleModalLong" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLongTitle"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content text-white"
						style="background-color: #9900cc">
						<div class="modal-header" style="border: none; color: #66ff66">

							<!-- <button type="button" class="close bg-white" data-dismiss="modal" aria-label="Close">
          <span style="color:white" aria-hidden="true">&times;</span>
        </button> -->
							<div style="display: flex; justify-content: flex-end"
								class="close" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-times-circle" style="color: white"
									aria-hidden="true"></i>
							</div>
							<h4 class="text-center" style="color: #7CFC00">
								<strong>Rank Guarantee & 100% Money back</strong>
							</h4>
						</div>
						<div class="modal-body" style="border: none;">
							<div class="body-message" style="color: white">
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Live
											Classes </span><span style="color: white"> -Covers entire
											syllabus with JEE Main problem Solving in 45 Days. The other
											35 days, Revision of JEE MAIN models, Feb, Mar, Apr 2021
											question papers solving, time saving Tricks &Logics</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">After
											Class Practice </span><span style="color: white"> -Every day
											practice Sessions after class a Practice, submit, check
											Performance, AIR</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Live
											Tests </span><span style="color: white"> -Every week- 3
											Guess pattern tests, 2 Full Syllabus -All India Mocks, 2
											Partial Syllabus All India Mock Tests </span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Analytics,
											AIR </span><span style="color: white"> -After Live Test
											submission, deep individual and Comparative Analysis, All
											India Rank, State-wise Rank</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Rank
											Accelerators </span><span style="color: white"> -Student can
											cover weak areas of all Subject, these are the Rank jumping
											modules.</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Personal
											Assistance </span><span style="color: white"> -Student can
											attend four personal assistance sessions every month</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #7CFC00">Doubt
											Solving </span><span style="color: white"> -Student can
											clear the doubts through WhatsApp chat.</span></strong>
								</h6>
								<h6 style="padding: 10px;">
									<strong><span class="" style="color: #FFA07A">
											Money Back Policy:</span><span style="color: white"> Student
											is supposed to fulfill the Crash course criteria to claim
											100% money back, if he/she do not get Rank in between
											1-250000.</span></strong>
								</h6>


							</div>

						</div>
						<div class="modal-footer"
							style="border: none; display: flex; justify-content: center;">

							<button type="button" class="btn" data-dismiss="modal"
								style="border: solid 3px #7CFC00; border-radius: 20px; background-color: #9900cc; color: #7CFC00;">ok</button>
						</div>
					</div>
				</div>
			</div>
			
			
			
			<!-- skyget features -->
			
			
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
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Artificial Intelligence Robo Mentored Practice</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Skyget Models (Unique Videos Driving towards Rank)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Rank Oriented Micro Videos</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Live Classes (Full & Crash Course)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Skyget Rank Engine</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* No More Weak Area Strategy for You.</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* 365 days All India Live Tests (Full Paper, Partial Paper. Chapterwise Guess Pattern)</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* World Best Analytics Driving towards Rank. </h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* Daily Recall - Important Model Questions </h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* All India Rank Prediction, Future College & many more...</h5>	
       </div>
       <div class="card" style="background:white; padding:10px 25px;;margin:5px;">
       	<h5>* 40 Years Chapter Wise & Previous Year Papers.</h5>	
       </div>
       
       
      </div>
    </div>
  </div>
</div>
  


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

				
			  
 <!--  Scholarship program modal -->
  
  	<div class="modal fade" id="modalSubscriptionForm"  data-aos="zoom-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center" style="padding:20px;background-image: linear-gradient( 45deg , #FC4A1A, #F7B733);">
       <!--  <h4 class="modal-title w-100 font-weight-bold">Subscribe</h4> -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h2 class="modal-title w-100 font-weight-bold" style="color:white;">100 Crores Mega scholarship</h2>
      </div>
      <div class="modal-body mx-3">
       
       <form style="padding: 30px 30px 0px;" >
							<div class="row" id="profile">

								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Name</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input type="text" id="nameinfo" style="background: white"class="form-control" disabled>
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Phone Number</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input type="text" id="phone_number" style="background: white"
												class="form-control" disabled>
										</div>
									</div>
								</div>


								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Standard</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<select class="form-control" id="standard" required>
												<option value="">Select Standard</option>
												<option value="10th">10<sup>th</sup></option>
												<option value="11th">11<sup>th</sup></option>
												<option value="12th">12<sup>th</sup></option>
												<option value="12+">12<sup>+</sup></option>
											</select>
											
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">School / College
											Name</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="School/ College Name" type="text"
										id="SchoolCollege"class="form-control">
										</div>
									</div>
								</div>

								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">10<sup>th</sup>% or CGPA</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="" type="text" id="tenth"
												class="form-control">
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">11<sup>th</sup>% or CGPA</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<input placeholder="" type="text" id="levnth"
												class="form-control">
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">City</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7">
										<div class="form-group">
											<textarea rows="3" cols="3" id="city" class="form-control" placeholder="Enter City"></textarea>
										</div>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<div class="col-md-4">
										<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
										<label class="control-label mb-5 bold">Parent Number</label>
									</div>
									<div class="col-md-1">:</div>
									<div class="col-md-7" id="stdname">
										<div class="form-group">
											<input  type="tel" id="parentnumber"
												class="form-control" placeholder="Mobile number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />										</div>
									</div>
								</div>
								

							</div>
						</form>
						
						<div class="text-center">
									<label class="control-label mb-5 bold text-center">* Terms &
										Conditions apply</label>
						</div>

						<div class="form-group" style="display:flex; justify-content:center">
							<button class="btn text-white" onclick="create_scholshipInfo()" id="submited"
								 style="background-image: linear-gradient( 45deg , #FC4A1A, #F7B733);width: 400px;font-weight:bold">Submit</button>
						</div>


      </div>
      
    </div>
  </div>
</div>

	
 <!--  Scholarship program SUCCESS modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" style="display:flex; justify-content:center">
    <div class="modal-content" style="width: 320px;">
      
      <div class="">
      <div id='card' class="animated fadeIn">
  <div id='upper-side'>
    <?xml version="1.0" encoding="utf-8"?>
      <!-- Generator: Adobe Illustrator 17.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
      <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
      <svg version="1.1" id="checkmark" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" xml:space="preserve">
        <path d="M131.583,92.152l-0.026-0.041c-0.713-1.118-2.197-1.447-3.316-0.734l-31.782,20.257l-4.74-12.65
	c-0.483-1.29-1.882-1.958-3.124-1.493l-0.045,0.017c-1.242,0.465-1.857,1.888-1.374,3.178l5.763,15.382
	c0.131,0.351,0.334,0.65,0.579,0.898c0.028,0.029,0.06,0.052,0.089,0.08c0.08,0.073,0.159,0.147,0.246,0.209
	c0.071,0.051,0.147,0.091,0.222,0.133c0.058,0.033,0.115,0.069,0.175,0.097c0.081,0.037,0.165,0.063,0.249,0.091
	c0.065,0.022,0.128,0.047,0.195,0.063c0.079,0.019,0.159,0.026,0.239,0.037c0.074,0.01,0.147,0.024,0.221,0.027
	c0.097,0.004,0.194-0.006,0.292-0.014c0.055-0.005,0.109-0.003,0.163-0.012c0.323-0.048,0.641-0.16,0.933-0.346l34.305-21.865
	C131.967,94.755,132.296,93.271,131.583,92.152z" />
        <circle fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="10" cx="109.486" cy="104.353" r="32.53" />
      </svg>
      <h3 id='status'>
      Success
    </h3>
  </div>
  <div id='lower-side'>
  	<h4 style="padding: 0px 0px 20px;font-size: 45px;line-height: 30px;#757575;">
     Thanks !
    </h4>
    <p id='message'>
  <!--   Results will be Announced in 20 days.  -->
  Take Scholarship test between 3rd May to 10th May.
    </p>
    <a href="#" id="contBtn" data-dismiss="modal">Ok</a>
  </div>
</div>
      </div>
     
    </div>
  </div>
</div>
	
	


  
  
  
  
			
		











			<!--  <div class="modal fade" id="joinNow" role="dialog" style="color: #212121; display: flex; align-items: center;">
    <div class="modal-dialog modal-lg" style="width:900px;">
    
      <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
    
        <div class="modal-header">
       
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         
        </button>
      </div>
        <div class="modal-body " id="JoinNow">
       	<div class="" id="JoinNow"></div> 
        </div>
        
      </div>
      
    </div>
  </div>
  
  </div>  -->

 
		
  <div class="modal fade" id="showimgss" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog" role="document">
      <div class="modal-content" id="imagsss">
		
         
    </div>
  </div>
 
 </div>

			<div class="modal fade" id="myModal2" role="dialog" style="">
				<div class="modal-dialog" style="width: 900px;">

					<div class="modal-body" style="padding: 20px">
						<div class="with2" style="color: white"></div>
					</div>

				</div>

			</div>
			<div id="modelview"></div>
		</div>

	</div>
	
				<input type="hidden" id="studentid" value="">
		 <input type="hidden" id="stdname" value="">
	<!--  <div class="modal fade" id="joinNow1" role="dialog" style="color: #212121; display: flex; align-items: center;">
    <div class="modal-dialog">
    
      Modal content
      <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-cesnter">
      <div class="modal-content" style="background-color:#212121;color:white">
         
        <div class="modal-body" style="padding:40px">
       
           <div class="modal-body">
       	<div class="" id="JoinNow"></div> 
        </div>

        </div>
        </div>
      </div>
      
    </div>
  </div>
  
  </div>
   -->
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
	
	</div>



	<script>

	</script>
		 <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
	
	<script src="https://sdk.amazonaws.com/js/aws-sdk-2.357.0.min.js"></script>
		<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
	
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/studenthome.js"></script>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/landing/js/good-share.min.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/dailydose/dailyscoope.js"></script>
	  <!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/contrib/auto-render.min.js"></script>
	<script>
	renderMathInElement(document.body);
	</script> -->
	<%-- 
		
		
		 <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
		 --%>
	<script>
		$(document).ready(function() {
		showPopmsg("LandingPage")
		})
		</script>

	<!--  <script src='https://npmcdn.com/flickity@2/dist/flickity.pkgd.js'></script><script  src="./script.js"></script> -->
</body>
