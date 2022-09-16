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
                <div class="">
                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="col-sm-6 col-xs-12 pull-left">
                                <h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Manual</span></h6> </div>
                            <div class="col-sm-1 col-xs-6 pull-right right">
                                <a href="#" class="right inline-block full-screen mr-15"> <i class="zmdi zmdi-fullscreen theme_color font-24"></i> </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="table-wrap mt-30">
                                        <div class="table-responsive">
                                            <table id="manual_post_Table" class="table table-bordered display pb-30">
                                                <thead class="th_background">
                                                    <tr> <th>S.no</th>
													 <th>Question ID</th>
                                                        <th>Category</th>
                                                        <th>Exam Type</th>
                                                        <th>Standard</th>
                                                        <th>Subject</th>
                                                        <th>Chapter Name</th>
                                                        <th>Section</th>
<!--                                                         <th>Questions</th>
 -->                                                        <th>Type of
                                                            <br>Question</th>
                                                        <th>Passage
                                                            <br>Type Q-link</th>
                                                        <th>Add/Modify
                                                            <br>Questions</th>
                                                        <th>Preview
                                                            <br>Questions</th>
															 <th>Questions status</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="manual_post_body">
                                                  
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-10 mb-30">
                                    <div class="col-md-6 col-md-offset-4">
                                        <div class="button-list mt-25"> <a  id="manaul_view_back" class="btn  btn-primary">Back</a> <a  id="nextBtnPost" class="btn btn-info">Show Paper</a> <a href="#" class="btn  btn-primary">Cancel</a> </div>
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


 		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
            <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	        <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
			<script>
		 	$("#manualselect").addClass('active-page');
				 $(document).ready(function() {
				manualPostById();
					
					 $("#nextBtnPost").attr('href',base_url+'jsp/admin/test_post/automatic_5.jsp?id='+getParameterByName('id'));
				    });
	     
	      </script>

