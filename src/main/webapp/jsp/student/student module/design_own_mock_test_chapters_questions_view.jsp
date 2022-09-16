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
                    <div class="panel-heading mb-20">
                        <div class="col-sm-4 pull-left">
							<h6 class="panel-title txt-dark"><span class="design_revision_test_heading">Design Own Mock Test </span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
					<div class="row">
						<div class="row mt-5">
							 <div class="col-sm-4 ml-20">
								<div class="">
									<span class="no_of_questions_distribution">Number of Questions distribution</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-md-offset-3">
							<div class=" pull-right">
								<span>No.of Chapters Selected: </span><span class="sky_blue1">10</span>
							</div>
						</div>
					</div>
                    <div class="row panel-wrapper collapse in">
						
                        <div class="col-md-10 col-md-offset-1 panel-body">
                            <div class="table-wrap">
                                <div class="table-responsive">
                                    <table id="" class="table design_revision_test_br display pb-30">
                                        <thead class="th_background">
                                            <tr>
                                                <th>Subject Name</th>
                                                <th>Chapter Name</th>
                                                <th>Single Correct Qns.</th>
                                                <th>Multi Correct Qns.</th>
                                                <th>Matching Qns.</th>
                                                <th>Total No. of Qns.</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Physics</td>
                                                <td>Chapter - 1</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>10</td>
                                            </tr>
                                            <tr>
                                                <td>Physics</td>
                                                <td>Chapter - 1</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>10</td>
                                            </tr>
											<tr>
                                                <td>Physics</td>
                                                <td>Chapter - 1</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>10</td>
                                            </tr>
											<tr>
                                                <td>Physics</td>
                                                <td>Chapter - 1</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>10</td>
                                            </tr>
										</tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="button-list mt-5  pull-right">
								<a href="#" class="btn  btn-danger center">Refresh</a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 col-md-offset-4">
							<div class="button-list mt-25 mb-30">
								<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_parameters.jsp" class="btn  btn-warning">Back</a>
								<a href="<%= AppConstants.BASE_URL %>student/student module/design_revision_test_summary.jsp" class="btn  btn-primary">Next</a>
								<a href="<%= AppConstants.BASE_URL %>student/student module//design_own_mock_test.jsp" class="btn  btn-info">Cancel</a>
							</div>
						</div>
					</div>
                </div>

            </div>
        </div>
        <!-- /Row -->
    </div>
       <%@include file="/jsp/master/footer.jsp" %>


</div>
<!-- /Main Content -->