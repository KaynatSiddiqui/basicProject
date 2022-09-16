<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
   <style>
   #image, #imaged {
padding: 10px;
background: #b10058;
color: #fff;
}

input[type="file"] {
display: none;
}
   </style>
	
		<div class="slimScrollBar"
			style="background: rgb(135, 135, 135); width: 4px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px; height: 447.184px;"></div>
		<div class="slimScrollRail"
			style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
	    </div>
		</div>
		<!-- /Left Sidebar Menu -->
		<!-- Main Content -->
		<div class="page-wrapper" style="min-height: 290px;">
			<div class="container-fluid">

				<!-- Title -->
				<div class="row heading-bg"></div>
				<!-- /Title -->

				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark">
										<span class="main_heading_blue">Test Post</span><span
											class="main_heading_theme_color"> Manual</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
					
							<div class="row">
								<div class="col-sm-9 col-sm-offset-2">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group center">
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<span class="sky_blue1 bold font-21" id="categoryspan"></span> <i
															class="fa fa-arrow-right green"></i>
													</div>
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
													    <select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98"  id="standard" onchange="getSelectedexams(this.value);">
																
																</select>
														<!-- <span class="sky_blue1 bold font-21" id="examtype"></span> --> 
														<!-- <i class="fa fa-arrow-right green"></i> -->
													</div>
												 	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
												 		<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98"  id="examtype">
																
																</select>
													<!-- 	<span class="sky_blue1 bold font-21" id="standard-div">
															 </span> <i class="fa fa-arrow-right green"></i> -->
													</div> 
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
														<div class="btn-group bootstrap-select show-tick">
															<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id="zoneType" onchange="getTestPostExamTypes(this.value)">
																<option>--- Select Zone---</option>
																<option><%= AppConstants.TESTZONE %></option>
																<option><%= AppConstants.PRACTICEZONE %></option>
																<option><%= AppConstants.LIVEZONE %></option>
																<%-- <option><%= AppConstants.CHALLENGE %></option> --%>
																<option><%= AppConstants.PREVIOUSYEAR %></option>
																<option id="dailyquiz"><%= AppConstants.DAILYQUIZ %></option>
															</select>
														</div>
													</div>
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4" id="hideselect">
														<div class="btn-group bootstrap-select show-tick">
															<select  class="selectpicker"
																data-style="form-control btn-default btn-outline"
																tabindex="-98" id="testType">
																<%-- <option>--- Select ---</option>
																<option><%= AppConstants.FULLSYALLBUSMOCK %></option>
																<option><%= AppConstants.SUBJECTWISE_MOCK %></option>
																<option><%= AppConstants.MOCKTEST %></option> --%>
															</select>
														</div>
													</div>
													<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 hide" id="yearprev">
														
													</div>
												
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> Test Name</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"
															 id = "testnames" placeholder ="Test Name here">
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> No. Of Questions </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="noofques" disabled>
														<input type="hidden" class="form-control"  id="catinp" value="">
														<input type="hidden" class="form-control"  id="examinp" value="">
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> Total Marks</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="totalmarks" disabled>
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> Time (Minutes)</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control"  id="time" placeholder="Enter Test Time">
													</div>
												</div>
											</div>
									
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
                                                      <div class="row form-group">                                            
                                                      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
                                                       <label class="control-label" for="example-email">Unique features of the test </label>                                           
                                                        </div>                                            
                                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                         
                                                           <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
                                                            <input type="text" class="form-control" id="uniquefeatures"> </div>                                       
                                                             </div>                                  
                                                               </div>   
                                                               
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
                                                      <div class="row form-group">                                            
                                                      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
                                                       <label class="control-label" for="example-email">No of Suggestions </label>                                           
                                                        </div>                                            
                                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                         
                                                           <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
                                                           <textarea name="editor1" class="ckedit form-control" id="editor1" style="height:300px;width:600px;"></textarea>
                                                            </div>                                       
                                                             </div>                                  
                                                               </div> 
                                                                                               
                                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                      
                                                                  <div class="row form-group">                                           
                                                                   <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
                                                                     <label class="control-label" for="example-email">Paper Designed by</label>                                          
                                                                       </div>                                            
                                                                       <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                           
                                                                        <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                              
                                                       <input type="text" class="form-control" id="paperdesigned"> </div>                                     
                                                       </div>                                   
                                                                        </div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">
													Paper Designer Photo </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"> <input type="hidden"
													id="base67manualphotos" value=""> <label id="image">Upload
													Profile image <input type="file" id="manualpreviewimage">
												</label>

											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="dailyscoopeimage">

										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">
													Daily Scoope Photo </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="imgd" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"> <input type="hidden"
													id="base67manualphotosdail" value=""> <label id="imaged">Upload
													Daily Scoope image <input type="file" id="manualpreviewdailyimage">
												</label>

											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                       
                               <div class="row form-group">                                           
                             <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
                                 <label class="control-label" for="example-email"><span class="red">*</span> Cut of Marks</label>                                          
                                               </div>                                          
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                          
       <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
        <input type="text" class="form-control" id="cutoff"> </div>                                       
         </div>                                    
         </div>                                    
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                        
    
             
             
             
               <div class="row form-group">                                            
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                               
         <label class="control-label" for="example-email">Level</label>                                            
         </div>                                            
         <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                           
          <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                               
           <input type="text" class="form-control" id="level"> 
           </div>                                       
            </div> 
             

											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> Active Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker" name="example-email" class="form-control"/>
															
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email"><span class="red">*</span> Active Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="z-index:1;">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker1" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email"><span class="red">*</span> Expiry Date</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<div class="btn-group bootstrap-select">
															<input type="email" id="datepicker1" name="example-email" class="form-control"/>
														
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email"><span class="red">*</span> Expiry Time</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="z-index:1;">
												<div class="input-group bootstrap-timepicker timepicker">
                                                  
                                                   <input id="timepicker2" type="text" class="form-control input-small">
															  <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                    
                                                </div>
											</div>
										</div>	
											</div>
										</div>
										
			  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                       
                       	  <div class="row form-group">    
                       	  
                        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">                                              
      	                    <label class="control-label" for="example-email"><span class="red">*</span> Lock this Test</label>                                          
      	                      </div>                                          
      	                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>                                          
      	                          <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">                                             
      	                             <div class="row radio radio-info">                                                   
      	                              <div class="col-sm-2">                                                      
      	                                <input type="radio" name="radio1" id="radio1" value="true" >                           
      	                                <label for="radio1"> Yes </label>                                    
      	                               </div>                                             
      	                                <div class="col-sm-2">                     
      	                                                                                                                      
      	                               <input type="radio" name="radio1" id="radio1" value="false">                                                       
      	                                <label for="radio1"> No </label>                                                  
      	                                  </div>                                               
      	                                   </div>                                          
      	                                     </div>                                       
      	                                      </div>                                  
      	                                        </div>         
                       																	                                                         	                                        							
										                                      
									
										<div class="row mb-30">
											<div class="col-md-7 col-md-offset-3">
												<div class="button-list mt-25">
													<a id="manual_preview_back" class="btn  btn-warning">Back</a> 
											        <a id="preview_automatic" class="btn  btn-primary" onclick="testPostStepFour();" >Preview</a>  	
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /Row -->

	<input type="hidden" value="" id="category" />
  <input type="hidden" value="" id="testPostId" />
			</div>
		</div>
		<input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>
			   <%@include file="/jsp/master/footer.jsp" %>
		<!-- /Main Content -->
	</div>
	
		  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
           <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	       <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>

	     <script type="text/javascript">
	  	$("#manualselect").addClass('active-page');
          $('#timepicker1').timepicker();
          $('#timepicker2').timepicker();
         <%--  $("#zoneType").change(function(){
        	  var daily = <%= AppConstants.DAILYQUIZ %>;
        	  var daily = $("#dailyquiz").text();
        	  //var dailystr = daily.toString();
        	  
        	  var valof =  $( "#zoneType option:selected" ).val();
        	  if(valof === daily){
		    	  $("#testType").prop("disabled",true);
		      }else{
		    	  $("#testType").prop("disabled",false);
		      }
          })
            .trigger( "change" ); --%>
          </script>
	    <script>
	   
	    
	    $(document).ready(function(){
	    	$("#dailyscoopeimage").hide();
	    	$("#datepicker, #datepicker1" ).datepicker({dateFormat:'dd-mm-yy'});
			
	
			var testpostid=getParameterByName('id');
			var questionCompleteStatus ="pending";
	    	var inputData ={
    			"testPostId":testpostid,
    			"questionCompleteStatus":questionCompleteStatus
	    	};
	    	inputData = JSON.stringify(inputData);
	    	var appenddata;
	    	var accorddata="";
	    	
	    	$.ajax({
	    		url:  base_url+'rest/testpost/v1/getTestPost',
	    		type:"POST",
	    		 dataType: "json",
	    		  contentType: 'application/json',
	    		  data:inputData,
	    		  success: function(data){
	    			  
	    			  $("#loading").hide();
	    			  
	    			  var questions = data.testPostDetails;
	    			  
	    			  $("#categoryspan").html(data.category);
	    			  $("#category").val(data.categoryId);
	    			  $("#catinp").val(data.categoryId);
	    			  
	    			  $("#examinp").val(data.examtypeid);
	    			 
	    			  //getting standards in dropdowns and setting if standard value present
	    			  getstandardsbtcat(data.categoryId, function(){
	    				  if(questions[0].standard != "" || questions[0].standard != null){
	  	    			    $("#standard").val(data.standardId);
	  	    			    $('.selectpicker').selectpicker('refresh');
	  	    			    
	  	    			    
	  	    			//getting examtypes in dropdowns and setting if examtype value present
	  	    			  getSelectedexams(data.standardId,undefined, function(){
	  	    				  if(questions[0].examtype != "" || questions[0].examtype != null){
	  	  	    			    $("#examtype").val(data.examtypeid);
	  	  	    			    $('.selectpicker').selectpicker('refresh');
	  	  	    			  }
	  	    			  });
	  	    			  }
	    			  });
	    			  
	    			  /* $("#examtype").append('<option value="">--- Select ---</option><option value="'+data.examType+'">'+data.examtypeid+'</option>');
					  $("#examtype").val(data.examtypeid); */
					  
			    
			    	  $("#noofques").val(data.numberOfQuestions);
			    	  $("#totalmarks").val(data.totalMarks);
			    	  
			    	  var standArray=[];
			    	  
			    	  $("#zoneType").val(data.zoneType)
			    	  if(data.zoneType === "Daily Scoop"){
			    		  
			    		  $("#dailyscoopeimage").show();
			    	  }else{
			    		  $("#dailyscoopeimage").hide();
			    	  }
			    	  $("#testType").val(data.testtype);
			    	  $("#time").val(data.time);
			    	  $("#testnames").val(data.testName);
			    	  
			    	  
                      $("#uniquefeatures").val(data.uniquefeature);
					  $(".ckedit").val(data.noOfSuggestions); 
					  $("#paperdesigned").val(data.paperDesignedBy);
					  
					  if(data.paperDesignerPhoto == "" || data.paperDesignerPhoto == null){
						  $("#img").attr('src','http://via.placeholder.com/150x150');
					  } else{ 
					      $("#img").attr('src',data.paperDesignerPhoto);
					  }
					  if(data.testImage == "" || data.testImage == null){
						  $("#imgd").attr('src','http://via.placeholder.com/150x150');
					  } else{ 
					      $("#imgd").attr('src',data.testImage);
					  }
					  $("#cutoff").val(data.cutoffMarks);
					  $("#level").val(data.level);
					  $("#prevsyear").val(data.previousYear);
					  $("#datepicker").val(data.activeDate);
					  $("#timepicker1").val(data.activeTime);
					  $("#datepicker1").val(data.expiryDate);
					  $("#timepicker2").val(data.expiryTime);
					  
					  $('input:radio[value="'+data.lockTest+'"]').prop("checked",true);
					    
				      $('.selectpicker').selectpicker('refresh');
				      
	    		 },
    			 error: function(data){
    				 alert(data.responseJSON.errorMessage);
    			 }
	    		 	
	       });

	    });
	    
	    </script>
	      
	     <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
	     <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	     <script>
	       $( document ).ready( function() {
           $('#editor1').ckeditor();  
    
          });
	     </script>
	
	
	   <script>
			document.getElementById("manualpreviewimage").addEventListener("change", readFile);
			function readFile() {
			 
			 if (this.files && this.files[0]) {
			   
			   var FR= new FileReader();
			   
			   FR.addEventListener("load", function(e) {
			     document.getElementById("img").src = e.target.result;
			     document.getElementById("base67manualphotos").value = e.target.result;
			   }); 
			   
			   FR.readAsDataURL( this.files[0] );
			 }
			 
			}
			//
				document.getElementById("manualpreviewdailyimage").addEventListener("change", subFile);
			function subFile() {
			 
			 if (this.files && this.files[0]) {
			   
			   var FR= new FileReader();
			   
			   FR.addEventListener("load", function(e) {
			     document.getElementById("imgd").src = e.target.result;
			     document.getElementById("base67manualphotosdail").value = e.target.result;
			   }); 
			   
			   FR.readAsDataURL( this.files[0] );
			 }
			 
			}
		</script>