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
                        <div class=" col-md-12">
                            <form>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold">Engineering </label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5 bold fa fa-arr"> Advanced</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5" for="example-email">Standarad</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option selected="selected">11th</option>
                                                <option>12th</option>
                                                <option>11th & 12th</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5" for="example-email">Zone Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option selected="selected">Test Zone</option>
                                                <option>Practice Zone</option>
                                                <option>Live Zone</option>
                                                <option>Challenge Zone</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5" for="example-email">Test Type</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option selected="selected">Chapterwise Test</option>
                                                <option>Subjectwise Test</option>
                                                <option>Mock Test</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label mb-5" for="example-email">Special Group</label>
                                            <select class="selectpicker" data-style="form-control btn-default btn-outline">
                                                <option>--- Select ---</option>
                                                <option selected="selected">Section/Special Group</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-9 col-sm-offset-2">
                            <form>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Test Name</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="Test name here"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">No. of Question </label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="100"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Total Marks</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="100"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Time </label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="120"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Unique features of the test </label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="Unique features of the test"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Paper Designed by</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="Ramu"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Paper Designed by -Photo</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <div class="form-group mb-5">
                                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                        <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>
                                                        <input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Cut of Marks</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="65"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">*Subject Name</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="text" class="form-control" value="Mathematics"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Active Date</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                <div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" /> <span class="input-group-addon">																		<i class="fa fa-calendar"></i>																	</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Active Time</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="24 hrs Format"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Expiry Date</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                <div class="input-group">
                                                    <input class="form-control date-picker" name="interview_date" id="id-date-picker-1" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" /> <span class="input-group-addon">																		<i class="fa fa-calendar"></i>																	</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Expiry Time</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="24 hrs format"> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="row form-group">
                                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                <label class="control-label" for="example-email">Lock this Test</label>
                                            </div>
                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                                <div class="row radio radio-info">
                                                    <div class="col-sm-2">
                                                        <input type="radio" name="radio1" id="radio1" value="option1" checked="">
                                                        <label for="radio1"> Yes </label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <input type="radio" name="radio1" id="radio1" value="option1" checked="">
                                                        <label for="radio1"> No </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-30">
                                    <div class="col-md-7 col-md-offset-4">
                                        <div class="button-list mt-25"> <a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year_3.jsp" class="btn  btn-warning">Back</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year.jsp" class="btn  btn-primary">Post Test</a>
										<a href="<%= AppConstants.BASE_URL %>admin/test_post/previous_year.jsp" class="btn  btn-danger">Cancel</a> </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <!-- /Row -->
        <%@include file="/jsp/master/footer.jsp" %>
    </div>
</div>
<!-- /Main Content -->