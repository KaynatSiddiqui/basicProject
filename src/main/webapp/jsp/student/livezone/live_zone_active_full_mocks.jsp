<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" rel="stylesheet">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


 <link href="<%=request.getContextPath()%>/assets/css/student/css/livezoneactive.css" rel="stylesheet">
<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<input type="hidden" id="studenactive" value="livezoneactive"/>
			<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/sidebaractive/active_reverse.png"/>
				<!-- Title -->
				<div class="row heading-bg">
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							
							<div class="row">
								<div class="col-sm-12" style="background: #f0f4f5;">
									<div  class="tab-struct vertical-tab custom-tab-1">
									<div class="row" style="margin-bottom:10px">
										<div class="panel-heading">
											<div class="col-sm-2" id="getspace">
											<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Active.svg" class="img-responsive">
											</div>
											
										</div>
										<ul role="tablist" class="nav nav-tabs" id="myTabs_8">
											<li class="active" role="presentation"><a aria-expanded="true"   data-toggle="tab" role="tab" id="Tab1_1" href="#Tab_1"><%= AppConstants.ALL %></a></li>
											<li role="presentation" class=""><a id="Tab3_3"  data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false"><%= AppConstants.SUBJECTWISE_MOCK %></a></li>
											<li role="presentation" class=""><a id="Tab2_2"  data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false"><%= AppConstants.MOCKTEST %></a></li>
											<li role="presentation" class=""><a id="Tab4_4"  data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false"><%= AppConstants.FULLSYALLBUSMOCK %></a></li>
										</ul>
										</div>
										<div class="tab-content" id="myTabContent_8">
											<div  id="Tab_1" class="tab-pane fade active in animated bounceInUp leftsetop" role="tabpanel">
												<div class="row">
													
												</div> 
											</div>
											<div  id="Tab_2" class="tab-pane fade animated bounceInUp leftsetop" role="tabpanel">
												<div class="row" >
													
													</div> 
											</div>
											<div  id="Tab_3" class="tab-pane fade animated bounceInUp leftsetop" role="tabpanel">
												 <div  class="row">
													
												</div>
											</div>
											<div  id="Tab_4" class="tab-pane fade animated bounceInUp leftsetop" role="tabpanel">
												 <div  class="row">
													
												</div> 
											</div>
										</div>
									</div>
								</div>
							</div>
						
													

						</div>
						
						<div class="modal fade" id="getactivesyllabus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
									<div class="modal-content">
											<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="activename"></span></h4>
											</div>
									<div class="modal-body">
									<div class="panel-body">
									<div class="panel-group accordion-struct" id="activesyllabus_tbody" role="tablist" aria-multiselectable="true">
											
								   </div>
									</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>

										
										<div class="modal fade" id="getsuggestion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2">
										<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="suggname"></span></h4>
											</div>
											<div class="modal-body" id="suggestionpend">
									   
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
										</div>
										</div>
										</div>
										
											
										<div class="modal fade" id="uniquefeat" tabindex="-1" role="dialog" aria-labelledby="exampleModalab2">
										<div class="modal-dialog" role="document">
										<div class="modal-content">
										<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="uniname"></span></h4>
											</div>
										<div class="modal-body" >
									  <p><label for="tas">Unique Features:</label>&nbsp;&nbsp;&nbsp;<span style="color:black" id="setuniquefeat"></span></p>
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
										</div>
										</div>
										</div>
										
										<div class="modal fade" id="catnotget" tabindex="-1" role="dialog" aria-labelledby="catnotget">
										<div class="modal-dialog" role="document">
										<div class="modal-content">
										<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="styname"></span>!</h4>
											</div>
										<div class="modal-body" >
									  <p style="color:black;font-size:15px;">Please select category,standard and examtypes above dashboard to get the tests.</p>
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
										</div>
										</div>
										</div>
										
										
										 <div class="modal fade" id="exampleModalSuggest" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
										<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="suggsull"></span></h4>
											</div>
											<input type="hidden" id="idvalue" value="">
											<div class="modal-body">
													<div class="panel-body">
														<div class="titleModal">
															<strong>You're in - </strong>   <strong>Examtype&emsp;:</strong> <span id="examtypemodel"></span>&emsp; <strong>Standard&emsp;:</strong> <span id="standmodel"></span>&emsp; &emsp;<strong>Subject&emsp;:</strong> <span id="subjectmodel"></span><br><br>
															
															<div class="row">
																
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Subject</label>
							                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject"  onchange="getSelectedUnit(this.value);">
							                                             
							                                            </select>
							                                        </div>
							                                    </div>
							                                   <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Unit</label>
							                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getSelectedChapter(this.value);">
							                                            
							                                            </select>
							                                        </div>
							                                    </div> 
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Chapter</label>
							                                            <select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="chapter">
							                                               
							                                            </select>
							                                        </div>
							                                    </div>
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Comment</label>
							                                            <input type="text" data-style="form-control btn-default btn-outline" id="comment" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                            
							                                              <input type="hidden" id="examtype" value=""/>
							                                              <input type="hidden" id="standard" value=""/>
							                                              <input type="hidden" id="category" value=""/>
							                                        </div>
							                                    </div>
															</div>
																														
                                   						</div>
														</div>
												   
														<div id="addspace">
														     
														
														 </div>
														 <span class="add_com_button right"><a id="addmore" class="plus-icon"><i class="fa fa-plus-circle fa-3x green"></i></a></span>
														 <br><br>
														
														<i><strong>Most suggested Chapters will be considered as Live Test Syllabus</strong></i>
													</div>
													
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success" data-dismiss="modal" data-id="all" onclick="activeSuggestSyllabus(this);">Submit</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
									<div class="modal fade" id="fullexampleModalSuggest" tabindex="-1" role="dialog" aria-labelledby="fullexampleModalSuggest">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
										<div class="modal-header">
												<h4 class="fonkar">Hey,<span id="suggsull"></span></h4>
											</div>
											<input type="hidden" id="idvalue" value="">
											<div class="modal-body">
													<div class="panel-body">
														<div class="titleModal">
															<strong>You're in - </strong>   <strong>Examtype&emsp;:</strong> <span id="examtypemodel"></span>&emsp; <strong>Standard&emsp;:</strong> <span id="standmodel"></span>&emsp; &emsp;<strong>Subject&emsp;:</strong> <span id="subjectmodel"></span><br><br>
															
															<div class="row">
															
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Comment</label>
							                                            <input type="text" data-style="form-control btn-default btn-outline" id="comment" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                            
							                                              <input type="hidden" id="examtype" value=""/>
							                                              <input type="hidden" id="standard" value=""/>
							                                              <input type="hidden" id="category" value=""/>
							                                               <input type="hidden" id="subject" value="0"/>
							                                              <input type="hidden" id="unit" value="0"/>
							                                             
							                                        </div>
							                                    </div>
															</div>
																														
                                   						</div>
														</div>
												   
														
														<br><br>
														
														<i><strong>Most suggested Chapters will be considered as Live Test Syllabus</strong></i>
													</div>
													
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success" data-dismiss="modal" data-id="full" onclick="activeSuggestSyllabus(this);">Submit</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>	
								<div class="modal" id="testtakenmodal">
														    <div class="modal-dialog modal-lg">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														          <h4 class="modal-title">Test Taken</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body" id="popupunattempetedquestions">
														              <span class="testtaken-usrname">Hey</span> <span id ="username" class="testtaken-usrname"></span> <span class="testtaken-usrname">!!</span>
														            <h6> you have already taken this test. Please check in 'Attempted'.</h6>
														            
														        </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-danger" data-dismiss="modal">Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>
<div class="modal" id="subscribmodel">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Take Test</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body" id="popupunattempetedquestions">
								<span class="testtaken-usrname">Hey</span> <span id="username"
									class="testtaken-usrname"></span> <span
									class="testtaken-usrname">!!</span>
								<h6>you have not Subscribed this ExamType Please Subscribe.</h6>

							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<a href="<%= AppConstants.BASE_URL %>student/student module/subscriptionpay.jsp"><button type="button" class="btn buycolor"
									data-dismiss="modal">Ok Got It!</button></a>
							</div>

						</div>
					</div>
				</div>														  
										
					</div>
				</div>
				<!-- /Row -->
    </div>
     <input type="hidden" id="creationactive" value="liveside"/>
			<input type="hidden" id="ulactive" value="livezone"/>
	<%@include file="/jsp/master/footer.jsp" %>
		<%@include file="/jsp/student/student module/studenttraking.jsp" %> 
</div>
<!-- /Main Content -->
    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	 <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async></script>
	<script>
  var OneSignal = window.OneSignal || [];
  OneSignal.push(function() {
    OneSignal.init({
     // appId: "d80114af-dc27-4d8b-b166-e2b503d4e0f1", //zomant standard
     appId: "4156b6a7-1ec1-46e2-9b75-49b0fb4dbbd7",
      autoRegister: true
      
    });
    OneSignal.registerForPushNotifications();
  });
</script>
	<script type="text/javascript">
	
	OneSignal.push(function() {
		
		  OneSignal.sendTags(pushobject).then(function(tagsSent) {
		    // Callback called when tags have finished sending
		    //console.log(tagsSent);   
		  });
		});
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('liveactive');
	   $("#activetext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#livegreyactive").attr("src",icon); 
	</script>
	<script>
	
	 $(document).ready(function(){
		 
		 showPopmsg("livetests");
		 
		 var LoginData = getLoginData();
		 var categoryname = LoginData.categoryName;
		 var studname = sessionStorage.getItem('stdname');
		 $("#styname").text(studname);
		 if(categoryname == "" || categoryname == null){
			 $("#catnotget").modal('show');
		 }
		 var reload = sessionStorage.getItem('reload');
		 if(reload == "false"){
			 location.reload();
			 sessionStorage.setItem('reload',true);
		 }
		 activeexams("All");
	 });
	 

	
	</script>



	<script>
	$('.fancyButton').hover(function() {
		  $(this).fadeIn('slow').css('background', '#FF8F00');
		}, function() {
		  $(this).fadeIn('slow').css('background', '#06afce');
		});
	
	</script>
	<script>
	function testtaken(){
		
		var LoginData = getLoginData();
		//var sname = LoginData.name;
		/* $.toast({
		    text: "you are already taken the test,please check attempted tests", // Text that is to be shown in the toast
		    heading: "Hey&nbsp"+sname+"!" , // Optional heading to be shown on the toast
		    icon: 'success', // Type of toast icon
		    showHideTransition: 'plain', // fade, slide or plain
		    allowToastClose: true, // Boolean value true or false
		    hideAfter: 5000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		    position: 'top-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		    
		    
		    
		    textAlign: 'left',  // Text alignment i.e. left, right or center
		    loader: true,  // Whether to show loader or not. True by default
		    loaderBg: '#FF7F27',  // Background color of the toast loader
		    beforeShow: function () {}, // will be triggered before the toast is shown
		    afterShown: function () {}, // will be triggered after the toat has been shown
		    beforeHide: function () {}, // will be triggered before the toast gets hidden
		    afterHidden: function () {}  // will be triggered after the toast has been hidden
		}); */
		//alert(sname +"! ,you are already taken the test,please check attempted tests");
		
		$("#username").html(LoginData.name);
	}
    
    

    $('#uniquefeat').on('show.bs.modal', function (event) {
    	  var button = $(event.relatedTarget);
    	  var recipient = button.data('whatever');
 
    	   $('#setuniquefeat').html(recipient);
    	})
    
	var LoginData = getLoginData();
    
  $("#suggname").html(LoginData.name);
    	 
  $("#uniname").html(LoginData.name);
  
  $("#activename").html(LoginData.name);

  $("#suggsull").html(LoginData.name);
   $("#addmore").click(function(){
	         $(this).removeClass("plus-icon");
	         $(this).addClass("plus-icon2");  
	    }); 
	</script>
<script>
var activetabnumber = 1;
$("#Tab1_1").click(function(){
	activetabnumber = 1;
	var tab = $(this).text();
	activeexams(tab);
	
	
});

$("#Tab2_2").click(function(){
	activetabnumber = 2;
	var tab = $(this).text();
	activeexams(tab);
});
 	
 
//live-zone attempeted

$("#Tab3_3").click(function(){
	activetabnumber = 3;
	var tab = $(this).text();
	activeexams(tab);
});
$("#Tab4_4").click(function(){
	
	activetabnumber = 4;
	var tab = $(this).text();
	activeexams(tab);
});
/* var category; 
var standard; */
function activeexams(tab){
	
	var appenddata="";
	var id="";
	var brcolor="";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
			var inputData = 
	          {
			  "testType":tab,
			  "studentId":sId
			  }
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		url   :  base_url+'rest/student/v1/getliveactivetest',
		type  : "POST",
		dataType: "json",
		contentType:'application/json',
		data: inputdata,
		success: function(data){
				
			for(var i=0; i < data.length; i++){ 
				if(data.length > 0 ){
					examtype = data[i].examTypeId;
					 $("#standard").val(data[i].standardId); $("#category").val(data[i].categoryId);
				}
					if(data[i].testType == "Subject-Wise Test" ){
						var examt = "subjectnumeric";
						var background = "subjectwisey";
							var testname = "subjectstress1";
							var border = "scheduler-bordersubj";
							var mocktype ="scheduler-border1";
						var noofsuggim = base_url+"/assets/images/icons/livezoneactive/Numberyellow.svg";
						}
                        if(data[i].testType == "Mock Test" ){
                        	var examt = "mocknumeric";
    						var background = "mocky";
    							var testname = "mockstress1";
    							var border = "scheduler-bordermock";
    							var mocktype ="scheduler-border1mock";
							var noofsuggim = base_url+"/assets/images/icons/livezoneactive/Numbergreen.svg";
						}if(data[i].testType == "Full-Syllabus Mock" ){
							
							var examt = "numeric";
							var background = "y";
								var testname = "stress1";
								var border = "scheduler-border";
								var mocktype ="scheduler-border1";
								var noofsuggim = base_url+"/assets/images/icons/livezoneactive/Numberpink.svg";
						}
						var topperss = data[i].toppers;
						if(topperss.length > 0){
							var topscore = topperss[0].topScore;
							var topername = topperss[0].studentName;
							if(topperss[0].studentImage =="" || topperss[0].studentImage == null){
								var toperimage = base_url +"/assets/images/students/default.png";
								
							}else{
								var toperimage = topperss[0].studentImage;
							}
						}else{
							var topscore = "";
							var topername = "";
							var toperimage = base_url +"/assets/images/students/default.png";
						}
						
						/* if(alreadyTaken == "true"){
					var taketest = "<a href='' onclick='taketest();' class='button bttn1 btnPush btnBlueGreen'>TAKE TEST</a>";
						}else{
							var taketest =	"<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"' class='button bttn1 btnPush btnBlueGreen'>TAKE TEST</a>";
						} */
						appenddata += "<div class='col-md-6 no-padding col-sm-6 col-lg-6 adjust' >"+
						"<div class='totalbox'>"+
				  "<div class='"+background+"'></div>"+
				"<div class='col-md-12 col-sm-12  col-lg-12'>"+
				"<div class='col-md-12 col-sm-12  col-lg-12 boxbg' onmouseover='mouseHover(this)' onmouseout='mouseOut(this)' style='width: 481px;background:#fff;'>"
				/*  if(data[i].alreadyTaken){
					 appenddata += "";
				 }else{
					 appenddata += "<span style='color: blue;position: absolute;top: 7px;left: 145px;font-weight: 500;'><i class='fa fa-angle-double-left' aria-hidden='true' style='font-size: 20px;'></i>  Take Test, Earn Rs.150</span>"+
						"<fieldset class='"+border+" properties-fSet'>";
				 }
				 */
				 if(data[i].testType == "Subject-Wise Test" && !data[i].alreadyTaken ){
					 appenddata += "<span style='color: #00a2e8;position: absolute;top: 7px;left: 145px;font-weight: 500;'><img src='"+base_url+"/assets/images/students/Rupee.svg' width='12px'>&nbsp;&nbsp;   <span style='vertical-align:top'> Take Test, Earn Rs.<%= AppConstants.LIVEZONE_SUBTEST_AMT %></span></span>"
				 }else if(data[i].testType == "Mock Test" && !data[i].alreadyTaken ){
					 appenddata += "<span style='color: #00a2e8;position: absolute;top: 7px;left: 145px;font-weight: 500;'><img src='"+base_url+"/assets/images/students/Rupee.svg' width='12px'>&nbsp;&nbsp;  <span style='vertical-align:top'> Take Test, Earn Rs.<%= AppConstants.LIVEZONE_MOCKTEST_AMT %></span></span>"
				 }else if(data[i].testType == "Full-Syllabus Mock" && !data[i].alreadyTaken ){
					 appenddata += "<span style='color: #00a2e8;position: absolute;top: 7px;left: 145px;font-weight: 500;'><img src='"+base_url+"/assets/images/students/Rupee.svg' width='12px'>&nbsp;&nbsp;   <span style='vertical-align:top'> Take Test, Earn Rs.<%= AppConstants.LIVEZONE_FULLTEST_AMT %></span></span>"
				 }else{
					 appenddata += "";
				 }
				 
				 appenddata += "<fieldset class='"+border+" properties-fSet'>"+
					
				"<legend class='scheduler-border'><span>"+data[i].examType+"</span></legend>"+
				"<div class='innerbox'>"+
				        "<legend class='scheduler-border2'><div class='"+examt+"'>"+data[i].standard+"<sup>th</sup></div></legend>"+
				"<legend class='"+mocktype+"'>"+data[i].testType+"</legend>"+
				"<div class='col-md-12 col-sm-12  col-lg-12' style='text-align:center'>"+
														"<span class='"+testname+"'>"+data[i].testName+"</span>"+
															"<p class='stresss2'>"+data[i].numofquestions+"Q/"+data[i].marks+"M/"+data[i].testTime+"min</p></div>"+
															
				"<div class='col-md-12 col-sm-12  col-lg-12' style='text-align:center;margin-bottom: 18px'>"+
														"<span class='stresss3'>"+data[i].subjects+"</span>"+
															"<p class='stresss'>"+data[i].openingDate+" - "+data[i].closingDate+"</p>"+
						"</div>"+
						"<div class='col-md-12 col-sm-12 col-lg-12'>"+
						"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6 col-lg-6'>"+
										"<label class='stresss3' for='example-email'>No.of suggestions<span class='span-1'>:</span></label>"+
									"</div>"+
									"<div class='col-md-6 col-sm-6  col-lg-6 stresss3'  data-toggle='modal' data-target='#getsuggestion' data-id='"+data[i].id+"' onclick='getsuggestion(this)'><img src='"+noofsuggim+"' class='btn-icon' style='width: 30px;height: 29px;'></div>"+
								"</div>"+
							"</div>"+
							
						"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6  col-lg-6'>"+	
										"<label class='stresss3' for='example-email'>syllabus<span class='span-1'>:</span></label>"+
									"</div>"+
										
											"<div class='col-md-6 col-sm-6 col-lg-6 stresss3'  data-toggle='modal' data-target='#getactivesyllabus' onclick='getActivesyllabus(this)' data-whatever='@mdo' data-id='"+data[i].id+"'><img src='<%=request.getContextPath()%>/assets/images/icons/Syllabus.svg' class='btn-icon' alt='Smiley face' style='width: 30px;height: 29px;'></div>"+
								"</div>"+
						"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6  col-lg-6'>"+	
										"<label class='stresss3' for='example-email'>unique Features<span class='span-1'>:</span></label>"+
									"</div>"+
									"<div class='col-md-6 col-sm-6 col-lg-6 stresss3 uniq' data-toggle='modal' data-target='#uniquefeat' data-whatever='"+data[i].uniquefeature+"'  ><img src='<%=request.getContextPath()%>/assets/images/icons/Unique features.svg' alt='Smiley face'  class='btn-icon' style='width: 30px;height: 29px;'></div>"+
								"</div>"+
								"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
									"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6 col-xs-6 col-lg-6'>"+	
										"<label class='stresss3' for='example-email'>No.of.aspirants(till now)<span class='span-1'>:</span></label>"+
									"</div>"+
										"<div class='col-md-6 col-sm-6 col-lg-6 stresss3'><span class='boldset'>"+data[i].numberOfAspirants+"</span></div>"+
								"</div>"+
								"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6  col-lg-6'>"+	
										"<label class='stresss3' for='example-email'>Top score(till now) <span class='span-1'>:</span></label>"+
									"</div>"+
											
											"<div class='col-md-6 col-sm-6 col-lg-6 stresss3'>"+topscore+"</div>"+
								"</div>"+
								"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='col-md-6 col-sm-6  col-lg-6'>"+
										"<label class='stresss3' for='example-email'>Topper Name(till now)<span class='span-1'>:</span></label>"+
									"</div>"+
										
											"<div class='col-md-6 col-sm-6  col-lg-6 stresss3'>"+topername+"<img src='"+toperimage+"' class='topper-img'></div>"+
								"</div>"+
								"</div>"+
										"<div class='col-md-12 col-sm-12 col-lg-12 height'>"+
								"<div class='center'>";
								 if(data[i].alreadyTaken){
									 appenddata += 	"<a href='#' onclick='testtaken();' data-toggle='modal' data-target='#testtakenmodal'  class='buttontest'>TEST TAKEN </a>";
								 }else
									 {
									 appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									/*  if(data[i].subscribedExamType){
									     appenddata +=  "<a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].id+"&studentid="+sId+"&status="+data[i].alreadyTaken+"&type="+data[i].testType+"' class='button'>TAKE TEST</a>";
									 }else{
										 appenddata += 	"<a href='#' onclick='subscripexamtype();' data-toggle='modal' data-target='#subscribmodel'  class='button'>TAKE TEST </a>"; 
									 } */
								}
								
										
								 appenddata += 	"</div>"+
								"<div class='col-md-12 col-sm-12  col-lg-12'>"+
								"<div class='row form-group'>"+
									"<div class='LASTTEXT'>";
									var subjectiddropdown=[];
									var subjectdnameropdown =[];
									var sub =data[i].subjectIdList;
									 for(var j=0; j < sub.length; j++){ 
										var id =sub[j].id;
										var name = sub[j].name;
										subjectiddropdown.push(id);
										subjectdnameropdown.push(name);
									} 
									 subjectiddropdown = subjectiddropdown.join();
									 subjectdnameropdown = subjectdnameropdown.join();
									//subjectiddropdown = data[i].subjectIdList;
									if(data[i].testType == "Full-Syllabus Mock"){
										 appenddata += 	"<a href='#'  onclick='suggestFields()' class='fullnxtexam fields' data-toggle='modal' data-id='"+data[i].id+"_"+data[i].examType+"_"+data[i].standard+"_"+examtype+"_"+subjectdnameropdown+"' data-target='#fullexampleModalSuggest'>Suggestions are welcome </a>";
									}else{
										 appenddata += 	"<a href='#'  onclick='suggestFields()' class='nxtexam fields' data-toggle='modal' data-id='"+data[i].id+"_"+data[i].examType+"_"+data[i].standard+"_"+subjectiddropdown+"_"+subjectdnameropdown+"_"+examtype+"' data-target='#exampleModalSuggest'>Suggest syllabus for next exam </a>";
									}
									
									 appenddata +="</div>"+
								"</div>"+
								"</div>"+
						"</div>"+
						"</div>"+
				"</fieldset></div></div></div>	</div> ";
					
			
			
				
			}
			
			$("#Tab_"+activetabnumber+" .row").empty();
			$("#Tab_"+activetabnumber+" .row").append(appenddata); 
			//getSelectedStandards();
			//getSelectedSubject();
		},
			error:function(data){
				alertify.alert(data.responseJSON.errorMessage);
			}
				
				
				
			});
	
}

$(document).on("click", ".nxtexam", function () {
	var appenddata="";
	var exm="";
	var sub="";
	var stand="";
    var id = $(this).data('id');
    var live = id.split("_");
   	exm = live[1];
   
   	stand = live[2];
   subid=live[3];
   subid = subid.split(',');
   subjectss= live[4];
   subjectss = subjectss.split(',');
   $('#exampleModalSuggest').find("#examtype").val(live[5]); 
   $('#exampleModalSuggest').find("#examtypemodel").html(exm);
   $('#exampleModalSuggest').find("#subjectmodel").html(live[4]);
   $('#exampleModalSuggest').find("#standmodel").html(stand);
   $('#exampleModalSuggest').find("#subject").empty();
   $('#exampleModalSuggest').find("#unit").empty();
   $('#exampleModalSuggest').find("#chapter").empty();
   $('#exampleModalSuggest').find("#comment").val('');
  for(var k=0; k < subid.length; k++){
   // var subjects = subj[i];
   
     appenddata += '<option value="'+subid[k]+'">'+subjectss[k]+'</option>';
       
     $('#exampleModalSuggest').find("#subject").empty();
 
     $('#exampleModalSuggest').find("#subject").append('<option value="">--- Select ---</option>');
 
     $('#exampleModalSuggest').find("#subject").append(appenddata);
 
}

    $(".selectpicker").selectpicker('refresh');
    
    $('#exampleModalSuggest').find("#idvalue").val(live[0]);
 
        
          
   });
$(document).on("click", ".fullnxtexam", function () {
	var appenddata="";
	var exm="";
	var sub="";
	var stand="";
    var id = $(this).data('id');
    var live = id.split("_");
   	exm = live[1];
   
   	stand = live[2];
  /*  subid=live[3];
   subid = subid.split(',');
   subjectss= live[4];
   subjectss = subjectss.split(','); */
   $('#fullexampleModalSuggest').find('#examtype').val(live[3]); 
 
    $("#fullexampleModalSuggest").find('#examtypemodel').html(exm);
    $('#fullexampleModalSuggest').find("#subjectmodel").html(live[4]);
    $("#fullexampleModalSuggest").find('#standmodel').html(stand);
   
    $("#fullexampleModalSuggest").find('#comment').val('');
 

    $(".selectpicker").selectpicker('refresh');
    
    $("#fullexampleModalSuggest").find('#idvalue').val(live[0]);
  });
</script>
<script>
 function mouseHover(h){
	 h.style.position = "relative";
	 h.style.top = "23px";
	 h.style.right = "-10px";
	 h.style.boxShadow = "0 0 12px 1px grey";
	 h.style.transitionDuration = ".3s";
	 h.style.transitionDelay = ".1s";
 }
function mouseOut(h){
	 h.style.position = "relative";
	 h.style.top = "46px";
	 h.style.right = "-35px";
	 h.style.boxShadow = "0 0 0px 0px grey";
	 h.style.transitionDuration = ".3s";
	 h.style.transitionDelay = ".3s";
 }
  
</script>