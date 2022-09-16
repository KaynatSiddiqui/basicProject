<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/chaptertarget.css" rel="stylesheet">
<body class="">
    <div class="container cont-chpt">
        <div class="row rowct1">
            <div class="col-sm-6">
                <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/active.svg" width="200">
            </div>
            <div class="col-sm-6">
                <h4 class="btn btn-info btn-lg hwtowrk" data-toggle="modal" data-target="#myModal">How it Work</h4>
            </div>
        </div>
    </div>

    <!-- navtabs -->
    <div class="row" id="navrow">
        <ul class="nav nav-tabs navtab">
            <li class="active"><a data-toggle="tab" href="#menu0"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg" width="60" alt=""></a></li>
            <li><a data-toggle="tab" href="#menu1"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/2.png" width="60" alt=""></a></a></li>
            <li><a data-toggle="tab" href="#menu2"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg" width="60" alt=""></a></a></li>
            <li><a data-toggle="tab" href="#menu3"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/2.png" width="60" alt=""></a></a></li>
            <li><a data-toggle="tab" href="#menu4"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg" width="60" alt=""></a></a></li>
        </ul>
    </div>
    <div class="row sumper">
        <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/performance.svg" width="50" alt=""><span class="sum">Summary</span></div>
        <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/performance.svg" width="50" alt=""><span class="per">Performance</span></div>
    </div>
    <div class="tab-content">
    
        <div id="menu0" class="tab-pane fade in active">
            <div class="container">
              <div class="row rowtop">
            
                <div class="col-sm-8 first">
                     <div class="row rowblock">
                         <div class="col-sm-6 rowblock1">
                             <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg"  width="40" alt=""><span class="kine">kinematics</span>
                             <br>
                             <i class="noti fa fa-info-circle" aria-hidden="true"></i>
                         </div>
                         <div class="col-sm-6 rowblock2">
                             <i class="fa fa-power-off power" aria-hidden="true"></i>
                         </div>
                     </div>
                </div>
                <div class="col-sm-2 righticons">
                 <div class="row"><i class="fa fa-line-chart antics" aria-hidden="true"></i></div>
                 <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                 <div class="row"><i class="fa fa-th-large th" aria-hidden="true"></i></div>
                </div>
            
              </div>
             <!-- second -->
             <div class="row rowtop">
            
                <div class="col-sm-8 first">
                     <div class="row rowblocksecond">
                         <div class="col-sm-6 rowblock1">
                             <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg"  width="40" alt=""><span class="kine">kinematics</span>
                             <br>
                             <i class="noti fa fa-info-circle" aria-hidden="true"></i>
                         </div>
                         <div class="col-sm-6 rowblock2">
                             <img class="stop" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="88" alt="">
                             <span class="settargt"> Set date target</span>
                         </div>
                     </div>
                </div>
                <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-line-chart antics" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-th-large th" aria-hidden="true"></i></div>
                    <!-- <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div> -->
                </div>
            <!-- combine -->
            <div class="col-sm-8 first">
                     <div class="row rowblockcombine">
                         <div class="hor">Last Pratice Test -24/10/2017</div>
                         <div class="col-sm-4 learnertest">
                             <span class="learntest">Learner Test - 3</span>
                                <button class="btn">Take</button>
                             <br>
                             <span class="noofpratc">No.of Pratice till - 7</span>
                         </div>
                         <div class="col-sm-4 col-sm-offset-3 rowblock2">
                             <div class="row">
                                 <div class="col-sm-5 rowround">
                                     <img class="stop round flo" width="35" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/percentage.png" alt="">
                                     <span class="per">50%</span>
                                 </div>
                                 <div class="col-sm-5">
                                     <img class="stop round flo" width="35" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/accuracy.png" alt="">
                                     <span class="per">47%</span>
                                 </div>
                                 <div class="col-sm-2 analtics">
                                    <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
                <!-- <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                </div> -->
            
              </div>
            
              <!-- skyblue color -->
              <div class="row rowtop">
            
                <div class="col-sm-8 first">
                     <div class="row rowblocksecond">
                         <div class="col-sm-6 rowblock1">
                             <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/2.png"  width="40" alt=""><span class="kine">kinematics</span>
                             <br>
                             <i class="noti fa fa-info-circle" aria-hidden="true"></i>
                         </div>
                         <div class="col-sm-6 rowblock2">
                             <img class="stop" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="88" alt="">
                             <span class="settargtdate"> 17th june <i class="fa fa-pencil" aria-hidden="true"></i></span>
                         </div>
                     </div>
                </div>
                <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-th-large th" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <!-- <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div> -->
                </div>
            <!-- combine -->
            <div class="col-sm-8 first">
                     <div class="row rowblockcombine2">
                         <div class="hor">Last Pratice Test -24/10/2017</div>
                         <div class="col-sm-4 learnertest">
                             <span class="learntest">Expert Test - 3</span>
                                <button class="btn">Take</button>
                             <br>
                             <span class="noofpratc">No.of Pratice till - 7</span>
                         </div>
                         <div class="col-sm-4 col-sm-offset-3 rowblock2">
                             <div class="row">
                                 <div class="col-sm-5 rowround">
                                     <img class="stop round flo" width="35" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/percentage.png" alt="">
                                     <span class="per">50%</span>
                                 </div>
                                 <div class="col-sm-5">
                                     <img class="stop round flo" width="35" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/accuracy.png" alt="">
                                     <span class="per">47%</span>
                                 </div>
                                 <div class="col-sm-2 analtics">
                                    <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
                <!-- <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                </div> -->
            
              </div>
              <!-- optics -->
              <div class="row rowtop">
            
                <div class="col-sm-8 first">
                     <div class="row rowblocksecond">
                         <div class="col-sm-6 rowblock1">
                             <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/1.svg"  width="40" alt=""><span class="kine">Optics</span>
                             <br>
                             <i class="noti fa fa-info-circle" aria-hidden="true"></i>
                         </div>
                         <div class="col-sm-6 rowblock2">
                             <img class="stop" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="88" alt="">
                             <span class="settargtdate"> 17th june <i class="fa fa-pencil" aria-hidden="true"></i></span>
                         </div>
                     </div>
                </div>
                <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-line-chart antics" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-th-large th" aria-hidden="true"></i></div>
                </div>
            <!-- combine -->
            <div class="col-sm-8 first">
                     <div class="row rowblockcombine3">
                         <div class="hor">Last Pratice Test -24/10/2017</div>
                         <div class="col-sm-4 learnertest">
                             <span class="learntest">Master - 6</span>
                                <button class="btn">Take</button>
                             <br>
                             <span class="noofpratc">No.of Pratice till - 7</span>
                         </div>
                         <div class="col-sm-4 col-sm-offset-3 rowblock2">
                             <div class="row">
                                 <div class="col-sm-5 rowround">
                                     <img class="stop round flo" width="33" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/percentage.png" alt="">
                                     <span class="per">50%</span>
                                 </div>
                                 <div class="col-sm-5">
                                     <img class="stop round flo" width="35" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/accuracy.png" alt="">
                                     <span class="per">47%</span>
                                 </div>
                                 <div class="col-sm-2 analtics">
                                    <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
                <!-- <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                </div> -->
            
              </div>
              <!-- congrats -->
              <div class="row rowtop">
            
                <div class="col-sm-8 first">
                     <div class="row rowblock">
                         <div class="col-sm-4 rowblock1">
                             <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/2.png" width="40" alt=""><span class="kine">kinematics</span>
                             <br>
                             <i class="noti fa fa-info-circle" aria-hidden="true"></i>
                         </div>
                         <div class="col-sm-4 rowblock2">
                             <img class="stop congrats" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/congrats.jpg" width="88" alt="">
                             <span class="congtext">Now you can crack any compatetitive4 exams on this chapter</span>
                         </div>
                         <div class="col-sm-4 rowblock2">
                             <img class="stop" src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="88" alt="">
                         </div>
                     </div>
                </div>
                <div class="col-sm-2 righticons">
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <!-- <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div>
                    <div class="row"><i class="fa fa-play play" aria-hidden="true"></i></div> -->
                </div>
            
              </div>
            </div>
        </div>
    </div>
    <!-- Model -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="row rowmodel">
                        <div class="col-sm-3">
                            <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="56" alt=""> <span class="learner">Learner</span>
                        </div>
                        <div class="col-sm-2"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                        <div class="col-sm-5">To crack State Level Exams</div>
                    </div>
                    <div class="row rowmodel">
                        <div class="col-sm-3">
                            <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="56" alt=""> <span class="expert">Expert</span>
                        </div>
                        <div class="col-sm-2"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                        <div class="col-sm-5">To crack Level - 1 National level exams</div>
                    </div>
                    <div class="row rowmodel">
                        <div class="col-sm-3">
                            <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/chapterflag.svg" width="56" alt=""> <span class="master">Master</span>
                        </div>
                        <div class="col-sm-2"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                        <div class="col-sm-5">To crack Level - 2 National level exams</div>
                    </div>

                </div>

            </div>

        </div>
    </div>
   <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
   
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script> 
	  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
</body>

</html>