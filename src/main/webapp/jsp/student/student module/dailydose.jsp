<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/animate.css">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/dailydose.css">
<!-- Main Content -->
		<div class="page-wrapper">
        <div class="container condaily">
    <!-- Title -->
		<div class="row heading-bg">
			<section id="headertop">
				<div class="heading">
					<div class="font-21 ribbon"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt="img" class="dailyicon"> Daily Quiz</div>
				</div>
			</section>
		</div>
		<!-- /Title -->
        <div class="dmain">
        <div class="row">
        	<div class="col-sm-4 col-sm-offset-8">
        	<select class="selectpicker" data-style="form-control btn-default btn-outline" id="sel">
            <option value="1">1 Month</option>
            <option value="2">3 Months</option>
            <option value="3">All</option>
          </select>
        	</div>
        </div>
        
         <ul class="nav nav-tabs uldaily">
            <li class="active"><a data-toggle="tab" href="#home">All</a></li>
            <li><a data-toggle="tab" href="#menu1">Physics</a></li>
            <li><a data-toggle="tab" href="#menu2">Chemistry</a></li>
            <li><a data-toggle="tab" href="#menu3">Math</a></li>
        </ul>
      </div>
 <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <div class="mainquiz  animated fadeInRight">
  <div class="row">
    <div class="col-sm-6">
      <p class="datemont">Apr 10th.</p>
      <div class="for">
       <div class="forbox">
        <div class="row">
            <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
            <div class="col-sm-4"><text class="physub">( Eg: All )</text></div>
            <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
        </div>
         <div class="mainfor">
              <div class="forrm"> 
                  w =	V/(hl)
                  =	12 / (2 × 2)
                  =	12 / 4
                  =	3</div>   
                
                 <div class="miss">Missed</div>
            </div>
          </div>
        <div class="row row2">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
            <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
        </div>
        <div class="row row3">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
            <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
        </div>
       </div>
      </div>
    <div class="col-sm-6">
      <p class="datemont">Apr 10th.</p>
      <div class="for">
       <div class="forbox">
        <div class="row">
            <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
            <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
            <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
        </div>
         <div class="mainfor">
              <div class="forrm">ZScore=x−x/σ</div>   
              
                 <div class="miss">Missed</div>
            </div>
          </div>
        <div class="row row2">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
            <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
        </div>
        <div class="row row3">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
            <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
        </div>
       </div>
      </div>
    <div class="col-sm-6">
      <p class="datemont">Apr 10th.</p>
      <div class="for">
       <div class="forbox">
        <div class="row">
            <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
            <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
            <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
        </div>
         <div class="mainfor">
              <div class="forrm">ZScore=x−x/σ</div>   
                 
                 <div class="miss">Missed</div>
            </div>
          </div>
        <div class="row row2">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
            <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
        </div>
        <div class="row row3">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
            <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
        </div>
       </div>
      </div>
    <div class="col-sm-6">
      <p class="datemont">Apr 10th.</p>
      <div class="for">
       <div class="forbox">
        <div class="row">
            <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
            <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
            <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
        </div>
         <div class="mainfor">
              <div class="forrm">ZScore=x−x/σ</div>   
                 
                 <div class="miss">Missed</div>
            </div>
          </div>
        <div class="row row2">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
            <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
        </div>
        <div class="row row3">
            <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
            <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
        </div>
       </div>
      </div>
      </div> <!-- rowdiv above -->
     
    </div>
     </div>
    <div id="menu1" class="tab-pane fade">
      
        <div class="mainquiz  animated fadeInRight">
            <div class="row">
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: Physics )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm"> 
                            w =	V/(hl)
                            =	12 / (2 × 2)
                            =	12 / 4
                            =	3</div>   
                          
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: Physics )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                        
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: Physics )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                           
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">( Eg: Physics )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                           
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
                </div> <!-- rowdiv above -->
               
              </div>
    </div>
    <div id="menu2" class="tab-pane fade">
      
        <div class="mainquiz  animated fadeInRight">
            <div class="row">
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm"> 
                            w =	V/(hl)
                            =	12 / (2 × 2)
                            =	12 / 4
                            =	3</div>   
                          
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                        
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                           
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
              <div class="col-sm-6">
                <p class="datemont">Apr 10th.</p>
                <div class="for">
                 <div class="forbox">
                  <div class="row">
                      <div class="col-sm-4"><text class="forhed">Formula Dose</text></div>
                      <div class="col-sm-4"><text class="physub">(Eg: All )</text></div>
                      <div class="col-sm-4"><text class="dat">Expired: 8:30 Pm</text></div>
                  </div>
                   <div class="mainfor">
                        <div class="forrm">ZScore=x−x/σ</div>   
                           
                           <div class="miss">Missed</div>
                      </div>
                    </div>
                  <div class="row row2">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> your Score : <text class="score">10</text></div>
                      <div class="col-sm-6 take"><button class="btn btn-success">Take</button></div>
                  </div>
                  <div class="row row3">
                      <div class="col-sm-6"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> Avg. Score : <text class="score">10</text></div>
                      <div class="col-sm-6 partic"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="25px" alt=""> participants : <text class="score">10</text></div>
                  </div>
                 </div>
                </div>
                </div> <!-- rowdiv above -->
               
              </div>
    </div>
    <div id="menu3" class="tab-pane fade">
     
      <p>Math ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
    </div>
		<input type="hidden" id="creationactive" value="creationside"/>
		<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
               <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>	
	      <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
         