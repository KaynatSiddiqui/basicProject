
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
                        <div class="col-sm-6 col-xs-12 pull-left">
                            <h6 class="panel-title txt-dark"><span class="main_heading_blue">Tweeking Student </span><span class="main_heading_theme_color"> Data</span></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="light-grey-hr mt-30 mb-10">
                  
                </div>
                <div class="panel panel-default card-view">
                    <div class="panel-heading">
                        <div class="col-sm-4 pull-right right">
                            <a href="#" class="right inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
								</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-wrapper collapse in">
                        <div class="panel-body">
                            <div class="table-wrap">
                                <div class="table-responsive">
                                    <table id="twekstudent_table" class="table table-bordered display pb-30">
                                        <thead class="th_background">
                                           <tr>
                                                <th>Student ID </th>
                                                <th>Student Name </th>
                                                <th>State</th>
                                                <th>City</th>
												<th>Gender</th>
                                                <th>Phone</th>
                                                <th>Email ID</th>
												<th>Account Verification</th>
                                           
                                            </tr>
                                        </thead>
                                        <tbody id="twekstudent_details">
                                           

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <input type="hidden" id="creationactive" value="stdlogin"/>
			</div>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
		<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
         <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
		 <script>
	 
	$(document).ready(function(){
		tweekingstudentdata();
	})
	</script>