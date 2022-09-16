<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Automatic</span></h6>
							  </div>
							  <div class="col-sm-4 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row mt-40">
										<div class="col-sm-12">
											<div class="row form-group">
												<div class="col-lg-4 col-md-4 col-sm-5 col-xs-11">
													<label class="control-label" for="example-email">Test Name</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-7 col-md-7 col-sm-6 col-xs-11"  id = "testname">
														<!-- <input type="text" class="form-control"
															 id = "testname"> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-4 col-md-4 col-sm-5 col-xs-11">
													<label class="control-label" for="example-email">No. of Questions</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-7 col-md-7 col-sm-6 col-xs-11"  id ="noofques">
												<!-- <input type="text" class="form-control"  id="noofques"> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-4 col-md-4 col-sm-5 col-xs-11">
													<label class="control-label" for="example-email">Time</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-7 col-md-7 col-sm-6 col-xs-11" id="time">
													<!-- <input type="text" class="form-control" id="time"> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col-lg-4 col-md-4 col-sm-5 col-xs-11">
													<label class="control-label" for="example-email">Total Marks</label>
												</div>
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
												<div class="col-lg-7 col-md-7 col-sm-6 col-xs-11" id="totalmarks">
													<!-- <input type="text" class="form-control"  id="totalmarks"> -->
												</div>
											</div>
										</div>
									</div>
									<hr class="hr_sky_blue_1px mb-10">	
								
									
									
									
									<div class="row">
										<div class="col-sm-12">
											<div class="table-wrap mt-40">
												<div class="table-responsive">
													<table class="table table-hover table-bordered mb-0" id="manualprev_tbl">
														<thead>
															<tr>
															 
																<th>Subject</th>
																<th>Section</th>
																<th>Type of question</th>
																<th>No. of Questions</th>
																<th>Marks/Question</th>
																<th>-Ve marks/Question</th>
															<!--  	<th>-Partial Marks/Question</th>-->
															</tr>
														</thead>
														<tbody id="manualprev_tbody">
															
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12 mt-20">
											<div class="row form-group">
												<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
													<div class="main_heading_blue">Syllabus:<span class="sky_blue1 bold font-21"  id="standards"></span></div>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="main_heading_blue"> </div>
											<div class="panel panel-default card-view">
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
														<div class="panel-group accordion-struct"  role="tablist" aria-multiselectable="true" id="accord-main">
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row mb-30">
										<div class="col-md-7 col-md-offset-4">
											<div class="button-list mt-25">
											<a  id="auto6_preview_back" class="btn  btn-warning">Back</a> 
											<a class="btn  btn-primary" id="postnowquestion" >Post Now</a>
											<a class="btn  btn-danger"  id="postsssll" onclick="testPostStepFourLater();" >Post Later</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
						
					
			<!-- /Row -->
			<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>
				<%@include file="/jsp/master/footer.jsp" %>
			</div>
		</div>
        <!-- /Main Content -->
         <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
          <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
         <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
       <script>
    	$("#manualselect").addClass('active-page');
         $(document).ready(function(){
        	 var status =getParameterByName('status');
        	 if(status == "no"){
        		 var reffer = document.referrer;
            	 if(reffer.indexOf("test_post_history_all_posts.jsp") != -1){
            		$("#postnowquestion").hide();
            		$("#postsssll").hide();
            	} 
        	 }
        		
       var inputData ={
			"testPostId":getParameterByName('id')
	};
       
	inputData = JSON.stringify(inputData);
	
	var  appenddata="";
	var accorddata="";
	
	$.ajax({
	url:  base_url+'rest/testpost/v1/getTestPost',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	 success: function(data){
	
	                
					//	$("#testname").html("aravind");
						$("#noofques").html(data.numberOfQuestions);
						$("#testname").html(data.testName);
						$("#time").html(data.time);
						$("#totalmarks").html(data.totalMarks);

						
						//$("#time").html("replace");
	                   // $("#totalmarks").html(data[0].totalmarks);
	                    
	                    if(data.hasOwnProperty("testPostDetails")){
	                    	
	                    	   var questions = data.testPostDetails;
		    					/*    $("#categoryname").html(data.category);
		    			    	   $("#examtypename").html(data.examtype); */
		    			    	   var standArray=[];
		    		    		  for (var j = 0;j<questions.length;j++){
		    		    			 
		    		    			//  appenddata += "<tr><td>"+questions[j].standard+"</td>";
		    		    			  appenddata += "<tr><td>"+questions[j].subject+"</td>";
		    		    			  appenddata += "<td>"+questions[j].section+"</td>";
		    		    			  appenddata += "<td>"+questions[j].typeOfQuestion+"</td>";
		    		    			  appenddata += "<td>"+questions[j].numberOfQuestions+"</td>";
		    		    		
		    		    			  appenddata += "<td>"+questions[j].marks+"</td>";
		    		    			  appenddata += "<td>"+questions[j].negativeMarks+"</td></tr>";
		    		    			  
		    		    			  $("#noofques").val(questions[j].numberOfQuestions);
		    		    			  $("#totalmarks").val(questions[j].marks);
		    		    			  
		    		    			  if(!standArray.includes(questions[j].standard))
		    		    				 {
			    		    			 standArray.push(questions[j].standard );

		    		    				 }else{
		    		    					 console.log("Standard already exists "+questions[j].standard)
		    		    					 
		    		    				 }
		    		    			  
		    		    			  if(j == 0){
											accorddata += '<div class="panel panel-default"><div class="panel-heading" role="tab" ><a role="button" data-toggle="collapse" data-parent="#accord-main" href="#collapse_'+j+'" aria-expanded="true"><i class="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_'+j+'" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row">';
										}else{
											accorddata += '<div class="panel panel-default"><div class="panel-heading" role="tab" ><a role="button" data-toggle="collapse" data-parent="#accord-main" href="#collapse_'+j+'" aria-expanded="true"><i class="fa fa-plus-circle fa-lg"></i>'+questions[j].subject+'</a></div><div id="collapse_'+j+'" class="panel-collapse collapse in" role="tabpanel"><div class="panel-body pa-15"><div class="row">';
										}
			    		    			 
			    		    			 
			    		    			var testchapters = questions[j].chapters
			    		    			for(var k = 0; k < testchapters.length; k++){
			    		    				
			    		    				accorddata += '<div class="col-sm-12 col-xs-12">'+testchapters[k]+'</div>';
			    		    			}
			    		    			 
			    		    			 accorddata += "</div></div></div></div>";
			    		    			 
		    			    			//	appenddata += "<td>CH  "+j+"</td>";

		    		    			
		    		    			  
		    		    			 /*  appenddata += "<td>TYPE OF QUESTIONS "+j+"</td>";
		    		    			  appenddata += "<td>ID "+j+"</td>";
		    		    			 */
	                    	
	                    			}
		    		    		  var stda=standArray.join("&");
		    		    		  $("#standards").html(stda);
		    		    		  
		    		    		  $("#manualprev_tbody").empty();
			    				   $("#manualprev_tbody").append(appenddata);
			    				    $("#manualprev_tbl").DataTable();
			    				   
			    				   $("#accord-main").empty();
			    				   $("#accord-main").append(accorddata);
	                    }	
	    		    	   
	    	    		  
	    			  
	    				   
	    				   
	    				   
	                    
	},
	error: function(data){
		 alert("preview data not found");
	 }
	
	
	});
         });
         
         $("#postnowquestion").on("click",function(){
        	 var testpostid=getParameterByName('id');
        	 var testname = $('#testname').text();
        	 if(testname == null || testname == "" || testname == "undefined"){
        		 alert("Please fill Your test details and post");
        		 return false;
        		 window.location = base_url+"jsp/admin/test_post/manual_preview.jsp?id="+testpostid;
        	 }
        	 var conf = confirm('Do you Want Post the Test?');

        	 if(conf == true){
        		 
        		
        		 var questionCompleteStatus ="completed";
        		 var lockthetest =$("input[name='radio1']:checked").val();
        		 
        		 var inputData = {
   					"testPostId":testpostid,
   					"questionCompleteStatus":questionCompleteStatus,
   					"postLater":"no"
        		 };
        		 
       			 var inputData = JSON.stringify(inputData);
       			 var appenddata;

        		$.ajax({
	       			type: "POST",
	       			dataType: "json",
	       			contentType: 'application/json', 
	       			url: base_url+'rest/testpost/v1/create',
	       			data: inputData,
	       			success: function(data){
	       				postNowSendMail();
						alert("test posted success");
						  var timer;
						  window.clearTimeout(timer);
						  timer = window.setTimeout(function(){
							 window.location = base_url+"jsp/admin/test_post/manual.jsp";
							  },1000); 
        			},  
        			error: function (){
        				alert("Data not found!");
        			}
        			
        	 });

         }else{
        	 alert("Failed to Post Test!");
         }
         });
        
	</script>
<script>
function postNowSendMail(){
	var id = getParameterByName('id');
	$.ajax({
	url: base_url+'rest/automatic/sendmailaftertestpost/'+id,
	type:"GET",
	dataType:"json",
	contentType:'application/json',
	
	success:function(data){
		
		
	},
	error:function(data){
		alert("Before PostNow postNowSendMail");
	}
 })
}

</script>