<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>


<%--   <link href="<%=request.getContextPath()%>/assets/css/dist/css/bootstrap.min.css" rel="stylesheet"> --%>
  <link href="<%=request.getContextPath()%>/assets/css/student/css/simplepractise.css" rel="stylesheet">




  <section id="headertop">
    <div class="heading">
      <div class="ribbon" contenteditable>SIMPLE PRACTISE</div>
    </div>
  </section>



  <section id="contentdisplay">

    <ul class="nav nav-tabs col-sm-12 listmodel" role="tablist">
      <li role="presentation" ><a href="#physics" aria-controls="home" role="tab" data-toggle="tab"><img
            src="<%=request.getContextPath()%>/assets/landing/img/physics.svg" width="50px" height="30px">
          <p class="pstyle">Physics</p>
        </a></li>
      <li role="presentation"><a href="#chemistry" aria-controls="profile" role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/flask.svg"
            width="62px" height="30px">
          <p class="pstyle">Chemistry</p>
        </a></li>
      <li role="presentation"><a href="#maths" aria-controls="messages" role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/mathematics.svg"
            width="35px" height="30px">
          <p class="pstyle">Maths</p>
        </a></li>
    </ul>

    <!-- Tab panes -->
    <div class="container">
      <div class="tab-content col-sm-12 col-sm-offset-2" style="margin-top:80px">
        <div role="tabpanel" class="tab-pane active" id="physics">

          <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;">
            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-1</span>
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
              </div>

            </div>
            <div class="row">
              <div class="col-md-12" style="margin-top:15px">

                <div class="col-md-3">
                  <p class="timeline"> Time Spent: 1Hr 30Min</p>
                </div>

                <div class="col-md-3">
                <p>Level-1</p>
                <p>
                    <div class="progress" style="border:1px solid #5cb85c !important">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                          69%
                        </div>
                      </div>

                </p>
                </div>

                <div class="col-md-3">
                  <p>Level-2</p>
                  <p>
                      <div class="progress" style="border:1px solid #f0ad4e !important">
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                            100%
                          </div>
                        </div>
                  </p>
                </div>

                <div class="col-md-3">
                  <p>Level-3</p>
                  <p>
                      <div class="progress" style="border:1px solid #5bc0de">
                          <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                            45%
                          </div>
                        </div>
                  </p>
                </div>
              </div>
            </div>
          </div>


          <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                  <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                  <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-2</span>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                  <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                </div>
  
              </div>
              <div class="row">
                <div class="col-md-12" style="margin-top:15px">
  
                  <div class="col-md-3">
                    <p class="timeline"> Time Spent: 1Hr 30Min</p>
                  </div>
  
                  <div class="col-md-3">
                  <p>Level-1</p>
                  <p>
                      <div class="progress" style="border:1px solid #5cb85c !important">
                          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:71%;">
                            71%
                          </div>
                        </div>
  
                  </p>
                  </div>
  
                  <div class="col-md-3">
                    <p>Level-2</p>
                    <p>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                              100%
                            </div>
                          </div>
                    </p>
                  </div>
  
                  <div class="col-md-3">
                    <p>Level-3</p>
                    <p>
                        <div class="progress" style="border:1px solid #5bc0de">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 0%;">
                              0%
                            </div>
                          </div>
                    </p>
                  </div>
                </div>
              </div>
            </div>

            
          <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                  <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                  <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-3</span>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                  <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                </div>
  
              </div>
              <div class="row">
                <div class="col-md-12" style="margin-top:15px">
  
                  <div class="col-md-3">
                    <p class="timeline"> Time Spent: 1Hr 30Min</p>
                  </div>
  
                  <div class="col-md-3">
                  <p>Level-1</p>
                  <p>
                      <div class="progress" style="border:1px solid #5cb85c !important">
                          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                            69%
                          </div>
                        </div>
  
                  </p>
                  </div>
  
                  <div class="col-md-3">
                    <p>Level-2</p>
                    <p>
                        <div class="progress" style="border:1px solid #f0ad4e !important">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                              100%
                            </div>
                          </div>
                    </p>
                  </div>
  
                  <div class="col-md-3">
                    <p>Level-3</p>
                    <p>
                        <div class="progress" style="border:1px solid #5bc0de">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                              45%
                            </div>
                          </div>
                    </p>
                  </div>
                </div>
              </div>
            </div>
  

            <div class="row">
                <div class="container-fluid" style="margin-top:40px;margin-bottom:30px">
                  <div class="col-sm-12 col-sm-offset-3">
                   <button class="btn btn-lg succ" >Back</button>
                   <button class="btn btn-lg dang" ><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simpledifficulty.jsp">Next</a></button>
                  </div>
                </div>
              </div>

        </div>
        
        <div role="tabpanel" class="tab-pane" id="chemistry">
            <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;">
                <div class="row">
                  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                    <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-1</span>
                  </div>
                  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                    <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                  </div>
    
                </div>
                <div class="row">
                  <div class="col-md-12" style="margin-top:15px">
    
                    <div class="col-md-3">
                      <p class="timeline"> Time Spent: 1Hr 30Min</p>
                    </div>
    
                    <div class="col-md-3">
                    <p>Level-1</p>
                    <p>
                        <div class="progress" style="border:1px solid #5cb85c !important">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                              69%
                            </div>
                          </div>
    
                    </p>
                    </div>
    
                    <div class="col-md-3">
                      <p>Level-2</p>
                      <p>
                          <div class="progress" style="border:1px solid #f0ad4e !important">
                              <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                100%
                              </div>
                            </div>
                      </p>
                    </div>
    
                    <div class="col-md-3">
                      <p>Level-3</p>
                      <p>
                          <div class="progress" style="border:1px solid #5bc0de">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                                45%
                              </div>
                            </div>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
    
    
              <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
                  <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                      <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                      <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-2</span>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                      <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                    </div>
      
                  </div>
                  <div class="row">
                    <div class="col-md-12" style="margin-top:15px">
      
                      <div class="col-md-3">
                        <p class="timeline"> Time Spent: 1Hr 30Min</p>
                      </div>
      
                      <div class="col-md-3">
                      <p>Level-1</p>
                      <p>
                          <div class="progress" style="border:1px solid #5cb85c !important">
                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:71%;">
                                71%
                              </div>
                            </div>
      
                      </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-2</p>
                        <p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                  100%
                                </div>
                              </div>
                        </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-3</p>
                        <p>
                            <div class="progress" style="border:1px solid #5bc0de">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 0%;">
                                  0%
                                </div>
                              </div>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
    
                
              <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
                  <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                      <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                      <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-3</span>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                      <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                    </div>
      
                  </div>
                  <div class="row">
                    <div class="col-md-12" style="margin-top:15px">
      
                      <div class="col-md-3">
                        <p class="timeline"> Time Spent: 1Hr 30Min</p>
                      </div>
      
                      <div class="col-md-3">
                      <p>Level-1</p>
                      <p>
                          <div class="progress" style="border:1px solid #5cb85c !important">
                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                                69%
                              </div>
                            </div>
      
                      </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-2</p>
                        <p>
                            <div class="progress" style="border:1px solid #f0ad4e !important">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                  100%
                                </div>
                              </div>
                        </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-3</p>
                        <p>
                            <div class="progress" style="border:1px solid #5bc0de">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                                  45%
                                </div>
                              </div>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                    <div class="container-fluid" style="margin-top:40px;margin-bottom:30px">
                      <div class="col-sm-12 col-sm-offset-3">
                       <button class="btn btn-lg succ" >Back</button>
                       <button class="btn btn-lg dang" ><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simpledifficulty.jsp">Next</a></button>
                      </div>
                    </div>
                  </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="maths">
            <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;">
                <div class="row">
                  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                    <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-1</span>
                  </div>
                  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                    <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                  </div>
    
                </div>
                <div class="row">
                  <div class="col-md-12" style="margin-top:15px">
    
                    <div class="col-md-3">
                      <p class="timeline"> Time Spent: 1Hr 30Min</p>
                    </div>
    
                    <div class="col-md-3">
                    <p>Level-1</p>
                    <p>
                        <div class="progress" style="border:1px solid #5cb85c !important">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                              69%
                            </div>
                          </div>
    
                    </p>
                    </div>
    
                    <div class="col-md-3">
                      <p>Level-2</p>
                      <p>
                          <div class="progress" style="border:1px solid #f0ad4e !important">
                              <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                100%
                              </div>
                            </div>
                      </p>
                    </div>
    
                    <div class="col-md-3">
                      <p>Level-3</p>
                      <p>
                          <div class="progress" style="border:1px solid #5bc0de">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                                45%
                              </div>
                            </div>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
    
    
              <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
                  <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                      <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                      <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-2</span>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                      <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                    </div>
      
                  </div>
                  <div class="row">
                    <div class="col-md-12" style="margin-top:15px">
      
                      <div class="col-md-3">
                        <p class="timeline"> Time Spent: 1Hr 30Min</p>
                      </div>
      
                      <div class="col-md-3">
                      <p>Level-1</p>
                      <p>
                          <div class="progress" style="border:1px solid #5cb85c !important">
                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:71%;">
                                71%
                              </div>
                            </div>
      
                      </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-2</p>
                        <p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                  100%
                                </div>
                              </div>
                        </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-3</p>
                        <p>
                            <div class="progress" style="border:1px solid #5bc0de">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 0%;">
                                  0%
                                </div>
                              </div>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
    
                
              <div class="row testzone_chapterwise_tests mt-30" style="opacity: 1;margin-top:30px">
                  <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                      <span><img src="<%=request.getContextPath()%>/assets/landing/img/icon.png" width="50px" height="50px" style="border-radius:25px"></span>&nbsp;&nbsp;
                      <span class="test_name_previous_years" style="vertical-align:top;font-weight: bold;font-size:19px">Chapter-3</span>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                      <span class="text-right" style="float:right;color:blue;font-weight: bold;">NCERT Qns.</span>
                    </div>
      
                  </div>
                  <div class="row">
                    <div class="col-md-12" style="margin-top:15px">
      
                      <div class="col-md-3">
                        <p class="timeline"> Time Spent: 1Hr 30Min</p>
                      </div>
      
                      <div class="col-md-3">
                      <p>Level-1</p>
                      <p>
                          <div class="progress" style="border:1px solid #5cb85c !important">
                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:69%;">
                                69%
                              </div>
                            </div>
      
                      </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-2</p>
                        <p>
                            <div class="progress" style="border:1px solid #f0ad4e !important">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 100%;">
                                  100%
                                </div>
                              </div>
                        </p>
                      </div>
      
                      <div class="col-md-3">
                        <p>Level-3</p>
                        <p>
                            <div class="progress" style="border:1px solid #5bc0de">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 45%;">
                                  45%
                                </div>
                              </div>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                    <div class="container-fluid" style="margin-top:40px;margin-bottom:30px">
                      <div class="col-sm-12 col-sm-offset-3">
                       <button class="btn btn-lg succ" >Back</button>
                       <button class="btn btn-lg dang" ><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simpledifficulty.jsp">Next</a></button>
                      </div>
                    </div>
                  </div>
        </div>
      </div>
    </div>
  </section>






<%-- 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/landing/js/bootstrap.min.js"></script> --%>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>