<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<!-- Main Content -->
<div class="page-wrapper">
    <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg"> </div>
        <!-- /Title -->
        <!-- Row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default card-view">
                    <div class="panel-heading">
                        <div class="col-sm-4 pull-left">
                            <h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Manual</span></h6>
						</div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="row mt-20 mb-20">
                        <div class="col-sm-12">
                            <form>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Category</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getstandardsbtcat(this.value)" id="category" >
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Standard</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="getSelectedexams();" id="standard" disabled>
                                              
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Exam Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedSubjects(this.value);getSelectedByExamSec(this.value);" id="examtype" disabled>
                                              
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Subject</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="getLayoutsByName(this.value);" id="subject" disabled>
                                             
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2" id="section-dv">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Section's</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="" id="section" >
                                              
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Type of Questions</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType">
                                              
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">No.of Questions</label>
                                            <input type="text" id="numberofquestion" name="numberofquestion" class="form-control" placeholder="Enter No.of Questions" id="numberofquestion"> 
                                            <span class="infotxt"></span>
                                        </div>
                                    </div>
                                   
                                    
                                     
                                   </div> 
                                   <div class="row" id="getmorefields">
                                    	
                                    	
                                    </div>
                                    <div class="row">
	                                    <div class="col-md-12">
	                                        
	                                         <div class="add_com_button right"><a id="addmore"><i class="fa fa-plus-circle fa-3x green"></i></a></div>
	                                    </div>
                                    </div>
                                    
                                 
                                <!-- <div class="center">(Or)</div> -->
                                </br>
                                </br>
                             <!--    <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Exam Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option>Engineering</option>
                                                <option>Medical</option>
                                                <option>Foundation</option>
                                                <option>Govt.jobs</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Category</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option>Mains</option>
                                                <option>NEET</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Standard</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option>10th</option>
                                                <option>11th</option>
                                                <option>12th</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Subject</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option>Physics</option>
                                                <option>Chemistry</option>
                                                <option>Maths</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Type of Questions</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option>Single Integer</option>
                                                <option>Multi Correct</option>
                                                <option>Passage</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">No.of Questions</label>
                                            <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter No.of Questions"> </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="center"><a class="btn btn-primary">Add More</a></div>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-5">
                                        <div class="button-list mt-25"> <a class="btn  btn-primary" onclick="manualPost();">Next</a> <a href="<%= AppConstants.BASE_URL %>admin/test_post/manual.jsp" class="btn  btn-danger">Cancel</a> </div>
                                    </div>
                                </div>
                                <input type="hidden" value="" id="testPostId" />
                            </form>
                        </div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10"> </div>
                    
                    <input type="hidden" value="" id="countFields" />
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
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
		
		<script>
	 	$("#manualselect").addClass('active-page');
		  $(document).ready(function() {
			  
				//getQuestionTypeByCategoryName();
				
			  var testPostId = getParameterByName('id');
			  
			  var fieldsToAdd;
			  var questions;
			  
			  if(testPostId !=='' && testPostId !== null) {
				  
				  sessionStorage.setItem("testPosteditmode", true);
				  $("#testPostId").val(testPostId);
				  
				  manualPostByIdv1(function(testPostData){
					  
					  questions = testPostData.testPostDetails;
					  fieldsToAdd = questions.length;
					  
					  addMoreFields(1,1,fieldsToAdd-1, function(){	
						  
						  for(var iff=0;iff<fieldsToAdd;iff++){
							  
							  if(iff==0){
								  
								  $("#category").append('<option value="">--- Select ---</option><option value="'+testPostData.category+'">'+testPostData.category+'</option>');
							 	  $("#category").val(testPostData.category);
							 	  $("#category").prop('disabled',true);
							 	  
								  $("#standard").append('<option value="">--- Select ---</option><option value="'+questions[iff].standard+'">'+questions[iff].standard+'</option>');
								  $("#standard").val(questions[iff].standard);
								  $("#standard").prop('disabled',true);
								  
								  $("#examtype").append('<option value="">--- Select ---</option><option value="'+questions[iff].examType+'">'+questions[iff].examType+'</option>');
								  $("#examtype").val(questions[iff].examType);
								  $("#examtype").prop('disabled',true);
								  
								  $("#subject").append('<option value="">--- Select ---</option><option value="'+questions[iff].subject+'">'+questions[iff].subject+'</option>');
								  $("#subject").val(questions[iff].subject);
								  $("#subject").prop('disabled',true);
								  
								  if(!questions[iff].hasOwnProperty("section") || questions[iff].section === "" || questions[iff].section === null || questions[iff].section === 0){
									  $("#section-dv").hide();
								  } else{
									  $("#section").append('<option value="">--- Select ---</option><option value="'+questions[iff].section+'">'+questions[iff].section+'</option>');
									  $("#section").val(questions[iff].section);
									  $("#section").prop('disabled',true);
								  }
								  
								  
								  $("#questionType").append('<option value="">--- Select ---</option><option value="'+questions[iff].layoutName+'">'+questions[iff].layoutName+'</option>');
								  $("#questionType").val(questions[iff].layoutName);
								  $("#questionType").prop('disabled',true);
								  
								  $("#numberofquestion").val(questions[iff].numberOfQuestions);
								  $("#numberofquestion").prop('disabled',true);
							  } else{
								  
								  $("#category"+iff).append('<option value="">--- Select ---</option><option value="'+testPostData.category+'">'+testPostData.category+'</option>');
							 	  $("#category"+iff).val(testPostData.category);
							 	  $("#category"+iff).prop('disabled',true);
							 	  
								  $("#standard"+iff).append('<option value="">--- Select ---</option><option value="'+questions[iff].standard+'">'+questions[iff].standard+'</option>');
								  $("#standard"+iff).val(questions[iff].standard);
								  $("#standard"+iff).prop('disabled',true);
								  
								  $("#examtype"+iff).append('<option value="">--- Select ---</option><option value="'+questions[iff].examType+'">'+questions[iff].examType+'</option>');
								  $("#examtype"+iff).val(questions[iff].examType);
								  $("#examtype"+iff).prop('disabled',true);
								  
								  $("#subject"+iff).append('<option value="">--- Select ---</option><option value="'+questions[iff].subject+'">'+questions[iff].subject+'</option>');
								  $("#subject"+iff).val(questions[iff].subject);
								  $("#subject"+iff).prop('disabled',true);
								  
								  if(!questions[iff].hasOwnProperty("section") || questions[iff].section === "" || questions[iff].section === null || questions[iff].section === 0){
									  $("#section-dv-"+iff).hide();
								  } else{
									  $("#section"+iff).append('<option value="">--- Select ---</option><option value="'+questions[iff].section+'">'+questions[iff].section+'</option>');
									  $("#section"+iff).val(questions[iff].section);
									  $("#section"+iff).prop('disabled',true);
								  }

								  $("#questionType"+iff).append('<option value="">--- Select ---</option><option value="'+questions[iff].layoutName+'">'+questions[iff].layoutName+'</option>');
								  $("#questionType"+iff).val(questions[iff].layoutName);
								  $("#questionType"+iff).prop('disabled',true);
								  
								  $("#numberofquestion"+iff).val(questions[iff].numberOfQuestions);
								  $("#numberofquestion"+iff).prop('disabled',true);
								  
							  }
						  }
						  
						  
						  
						  $('.selectpicker').selectpicker('refresh');
					      
						  
					  });
					  
				  });
				  
			  } else {
				  getCategoriesByName();
				  sessionStorage.setItem("testPosteditmode", false);
				  
			  }
				
	    	});
	     
</script>
