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
                                    <h6 class="panel-title txt-dark"><span class="test_post_title_first">Test Post</span><span class="test_post_title_second"> - Previous Year</span></h6> </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="row mt-40">
                                <div class="col-sm-12">
                                    <form>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                                <label class="control-label" for="example-email">Test Name</label>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter Test Name" value="Test - 1"> </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                                <label class="control-label" for="example-email">Maximum Questions</label>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Enter No. of Questions"> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class=" row form-group">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                    <div class="main_heading_blue"><b>Post Single paper</b></div>
                                                </div>
                                            </div>
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
                                                    <div class="center"><a href="<%= AppConstants.BASE_URL %>test_posts/previous_paper_post.jsp" class="btn btn-primary">Submit & Next</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" row center">
                                            <div class="col-md-12">(Or)</div>
                                        </div>
                                        </br>
                                        </br>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class=" form-group">
                                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                        <div class="main_heading_blue"><b>Post Combinative paper</b></div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-sm-12">
                                                        <div class="button-list"> <a href="#" class="btn btn-danger">MAINS</a> <a href="#" class="btn btn-danger btn-outline fancy-button btn-0">BITSAT</a> <a href="#" class="btn btn-danger btn-outline fancy-button btn-0">NEET</a> <a href="#" class="btn btn-danger btn-outline fancy-button btn-0">AIIMS</a> <a href="#" class="btn btn-danger btn-outline fancy-button btn-0">JIMPER</a> </div>
                                                    </div>
                                                </div>
                                                <hr class="light-grey-hr mb-10"> </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="row form-group">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
                                                                <label class="control-label" for="example-email">Previous Year Questions (Mains)</label>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                <select class="selectpicker" multiple data-style="form-control btn-default btn-outline">
                                                                    <option>--- Select ---</option>
                                                                    <option selected="selected">2017</option>
                                                                    <option>2016</option>
                                                                    <option>2015</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-10">
                                                                <label class="control-label" for="example-email">Other Competitive-CET's</label>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                                    <option>--- Select ---</option>
                                                                    <option selected="selected">KCET</option>
                                                                    <option>EAMCET</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-10">
                                                                <label class="control-label" for="example-email">Other Competitive-CET's</label>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                <select class="selectpicker" multiple data-style="form-control btn-default btn-outline">
                                                                    <option>--- Select ---</option>
                                                                    <option selected="selected">2017</option>
                                                                    <option>2016</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12"> <a href="#" class="test_post_add_more">Add more</a> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-30">
                                            <div class="col-md-6 col-md-offset-4">
                                                <div class="button-list mt-25"> <a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year_1.jsp" class="btn  btn-primary">Submit & Next</a> </div>
                                            </div>
                                        </div>
                                    </form>
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
        <script>
	 	$("#testprev").addClass('active-page');
	 	</script>