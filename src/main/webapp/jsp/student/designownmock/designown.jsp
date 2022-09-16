

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<link href="<%=request.getContextPath()%>/assets/css/designown/designown.css" rel="stylesheet">
    <div class="container ">
        <div class="row" id="navrow">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#menu0"><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png"" alt=""></a></li>
                <li><a data-toggle="tab" href="#menu1"><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png" alt=""></a></a></li>
                <li><a data-toggle="tab" href="#menu2"><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png" alt=""></a></a></li>
                <li><a data-toggle="tab" href="#menu3"><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png" alt=""></a></a></li>
            </ul>
        </div>
        <!-- tab icon -->

        <div class="tab-content">
            <div class="row perfcatt">
                <div class="col-md-6">
                    <h6><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png" width="40" alt="img"> <a href="/jsp/student/designownmock/designprogress.jsp"> Perfromance</a></h6>
                </div>
                <div class="col-md-6">
                    <h6><img src="<%=request.getContextPath()%>/assets/landing/img/designownimg/bgcolor.png" width="40" alt="img"><a href="/jsp/student/designownmock/design2.jsp"> Attempted</a></h6>
                </div>
            </div>
            <div class="row selectchapter">
                <div class="col-md-6">
                    <h6> <span class="selectchap">Select chapetrs</span></h6>
                </div>
                <div class="col-md-6">
                    <h6>No.of Chapters Selected : <span class="count">10</span></h6>
                </div>
            </div>
            <div id="menu0" class="tab-pane fade in active">
                <div class="tabl">
                    <table id="designtable" class="table display pb-30">
                        <div id="loading">
                            <thead class="th_background">
                                <tr>
                                     <th></th>
                                    <th>Chapter <br> Name</th>
                                    <th>In Test <br> <i class="fa fa-exclamation-circle" aria-hidden="true"></i></th>
                                    <th>Viewd <br> Qns.</th>
                                    <th>Wrongly Answer <br> Qns.</th>
                                    <th>Avg.Accuracy <br> %</th>
                                    <th>Avg.Percentage <br> %</th>

                                </tr>
                            </thead>
                            <tbody id="designown">
                                <tr>
                                    <td> <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span></td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                </tr>
                                <tr>
                                    <td> <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span></td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                </tr>
                                <tr>
                                    <td> <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span></td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                    <td>Menu 0</td>
                                </tr>
                            </tbody>
                    </table>
                </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <div class="tabl">
                    <table id="designtable" class="table display pb-30">
                        <div id="loading">
                            <thead class="th_background">
                                    <tr>
                                            <th></th>
                                           <th>Chapter <br> Name</th>
                                           <th>In Test <br> <i class="fa fa-exclamation-circle" aria-hidden="true"></i></th>
                                           <th>Viewd <br> Qns.</th>
                                           <th>Wrongly Answer <br> Qns.</th>
                                           <th>Avg.Accuracy <br> %</th>
                                           <th>Avg.Percentage <br> %</th>
       
                                       </tr>
                            </thead>
                            <tbody id="designown">
                                    <tr>
                                            <td> <input type="checkbox" checked="checked">
                                                <span class="checkmark"></span></td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                        </tr>
                            </tbody>
                    </table>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div class="tabl">
                    <table id="designtable" class="table display pb-30">
                        <div id="loading">
                            <thead class="th_background">
                                    <tr>
                                            <th></th>
                                           <th>Chapter <br> Name</th>
                                           <th>In Test <br> <i class="fa fa-exclamation-circle" aria-hidden="true"></i></th>
                                           <th>Viewd <br> Qns.</th>
                                           <th>Wrongly Answer <br> Qns.</th>
                                           <th>Avg.Accuracy <br> %</th>
                                           <th>Avg.Percentage <br> %</th>
       
                                       </tr>
                            </thead>
                            <tbody id="designown">
                                    <tr>
                                            <td> <input type="checkbox" checked="checked">
                                                <span class="checkmark"></span></td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                        </tr>
                            </tbody>
                    </table>
                </div>
            </div>
            <div id="menu3" class="tab-pane fade">
                <div class="tabl">
                    <table id="designtable" class="table display pb-30">
                        <div id="loading">
                            <thead class="th_background">
                                    <tr>
                                            <th></th>
                                           <th>Chapter <br> Name</th>
                                           <th>In Test <br> <i class="fa fa-exclamation-circle" aria-hidden="true"></i></th>
                                           <th>Viewd <br> Qns.</th>
                                           <th>Wrongly Answer <br> Qns.</th>
                                           <th>Avg.Accuracy <br> %</th>
                                           <th>Avg.Percentage <br> %</th>
       
                                       </tr>
                            </thead>
                            <tbody id="designown">
                                    <tr>
                                            <td> <input type="checkbox" checked="checked">
                                                <span class="checkmark"></span></td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                            <td>Menu 0</td>
                                        </tr>
                            </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row next">
            <a href="/jsp/student/designownmock/designtake.jsp" class="btn  btn-primary" id="next">Next</a>
        </div>
        <!-- container div bottom -->
    </div>
    <input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
     <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/designown.js"></script>
    
</body>

</html>