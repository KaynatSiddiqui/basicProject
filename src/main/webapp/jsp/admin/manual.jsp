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
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedExamType(this.value)" id="category" >
                                                <!-- <option>--- Select ---</option>
                                                <option>Engineering</option>
                                                <option>Medical</option>
                                                <option>Foundation</option>
                                                <option>Govt.jobs</option> -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Exam Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange ="getSelectedStandards(this.value);getSelectedByExamSec(this.value);" id="examtype" disabled>
                                               <!--  <option>--- Select ---</option>
                                                <option>Mains</option>
                                                <option>NEET</option> -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Standard</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="getSelectedSubject(this.value);" id="standard" disabled>
                                               <!--  <option>--- Select ---</option>
                                                <option>10th</option>
                                                <option>11th</option>
                                                <option>12th</option> -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Subject</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline"  onchange="" id="subject" disabled>
                                              <!--   <option>--- Select ---</option>
                                                <option>Maths</option>
                                                <option>Physics</option>
                                                <option>Chemistry</option> -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Section's</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getQuestionTypeByCategoryName();" id="section" >
                                               <option>--- Select ---</option>
                                                <option>Section - 1</option>
                                                <option>Section - 2</option>
                                                <option>Section - 3</option>
                                                <option>Section - 4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Type of Questions</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="questionType">
                                                <!-- <option>--- Select ---</option>
                                                <option>Single Integer</option>
                                                <option>Multi Correct</option>
                                                <option>Passage</option> -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">No.of Questions</label>
                                            <input type="email" id="numberofquestion" name="numberofquestion" class="form-control" placeholder="Enter No.of Questions" id="numberofquestion"> </div>
                                    </div>
                                   
                                    
                                     
                                   </div> 
                                   <div class="row" id="getmorefields">
                                    	
                                    	
                                    </div>
                                    <div class="row">
	                                    <div>
	                                        <div class="form-group">
	                                            <div class="center"><a class="btn btn-primary" id="addmore">Add More</a></div>
	                                        </div>
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
                                        <div class="button-list mt-25"> <a href="#" class="btn  btn-primary" onclick="manualPost();">Next</a> <a href="<%= AppConstants.BASE_URL %>admin/test_post/manual.jsp" class="btn  btn-danger">Cancel</a> </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10"> </div>
            </div>
        </div>
        <!-- /Row -->
       <%@include file="/jsp/master/footer.jsp" %>
    </div>
</div>
<!-- /Main Content -->
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
		
		<script>
		  $(document).ready(function() {
				getQuestionTypeByCategoryName();
				
	    	});
	     
</script>
