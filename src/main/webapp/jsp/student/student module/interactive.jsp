<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
<link href="<%=request.getContextPath()%>/assets/css/student/css/interactive.css" rel="stylesheet">


  <div class="page-wrapper comppage">
	<div class="container-fluid">
	<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="row mb-20">
						<div class="col-sm-4">
							<div class="">
								<img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/interactivelogo.jpg" width="250px">
							</div>
						</div>
						<div class="col-sm-4" style="margin-top:25px">
							<div class="text-center">
								<img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/robot.png" width="80px" height="75px" >
                                <p>Hey Iam Chitti</p>
							</div>
						</div>
						<div class="col-sm-4" style="margin-top:15px">
							<div class="" style="float:right">
                                <p><span style="color:#187ce4;font-size:20px" class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;<span>How it works</span></p>
                                <p><button class="btn" style="margin-top:11px;color:#fff;background:blue;border-radius:50%" data-toggle="modal" data-target=".exampleModalCenter">Set Goal</button></p>
							</div>
						</div>
					</div>
  <div id="menu0" class="tab-pane fade in active">
        <div class="container">
          <div class="row rowtop">
          
           <div class="col-md-12">
            <div class="first mb-20">
                 <div class="rowblock">
                   <div class="row">
                         <div class="col-md-3 sideheading">
                           <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/images.jpg" width="35px">&nbsp;&nbsp;
                          <span>Ray Optics</span>
                         </div>
                         <div class="col-md-6" style="display:flex;margin-top:10px">
                          <p class="cont">Stage-1</p>
                          <p class="cont1">Stage-2</p>
                          <div class="progress bar1">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:0%;">
                             
                            </div>
                          </div>
                        
                          <div class="progress bar2" style="width:150px;height:28px">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                              
                            </div>
                          </div>
                          <button class="setbtn">Go</button>
                         </div>
                         <div class="col-md-3" style="position:relative;right:-45px">
                          <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                          <span>Feedback</span>
                         </div>
                   </div>
    
    
                   <div class="row">
                     <div class="col-md-9" style="display:flex;justify-content:center">
                             
                                  <p style="font-weight:bold;font-size:15px">First focus</p>
                               
                               
                                  <p style="margin-left:20px;color:green;font-weight:bold;font-size:15px">MAIN</p>
                                  
                                  <p>
                                   <div id="rayopticsmain" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:-17px;color:gray"></i></span>
                                  </p>
                                  
                                  <p><button class="setbtn">Go</button></p>
                                  <p style="margin-left:10px" data-toggle="modal" data-target=".exampleModalCenter"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Set Goal Time)</p>
                                  
                     </div>
                   </div>
                   <div class="row">
                    <div class="col-md-9 " style="display:flex;justify-content:center">
                            
                                 <p style="font-weight:bold;font-size:15px">Parallel focus</p>
                              
                              
                                 <p style="margin-left:20px;color:blue;font-weight:bold;font-size:15px">EAMCET</p>
                                 
                                 <p>
                                <div id="rayopticsparallel" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:4px;color:gray"></i></span>
                                 </p>
                                 
                                 
                                 <p><button class="setbtn">Go</button></p>
                                 <p style="margin-left:10px" data-toggle="modal" data-target=".exampleModalCenter"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Set Goal Time)</p>
                                 
                    </div>
                   <!--  <div class="col-md-4 raypos">
                        <h5 style="color:gray;font-weight:bold">Chapter Involved - Active Tests</h5>
                        <p>Subject-wise : <span style="color:gold;font-weight: bold">3</span></p>
                        <p>Mock Tests: <span style="color:green;font-weight: bold">2</span></p>
                    </div> -->
                     <div class="col-sm-12" style="display:flex;justify-content:flex-end">
                  
                  <div class="arrow bounce rayoptics" style="position:relative;top:-63px">
				  <a class="fa fa-arrow-circle-down fa-2x slicdown" ></a>
				  <a class="fa fa-arrow-circle-up fa-2x slicup" ></a>
				</div>
				        
                  </div>
                  </div>
            
                 </div>

                 <div class="col-sm-9  first raycollapse" style="display:none;position:relative;top:-53px;background:rgba(128, 128, 128, 0.4);padding:15px;border-radius:7px;width:800px;color:#fff;font-size:15px;margin-left: 28px;">
                 <button class="btn" style="background:none !important;color:#fff;float:right;"><i class="fa fa-times closebtn" aria-hidden="true" style="font-size:20px"></i></button>
                        <div class="row col-sm-12 col-sm-push-1 mb-10">
                            <div class="col-sm-4">
                <p data-toggle="modal" data-target=".basicModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Chapter Basics</p>
                
                            </div>
                            <div class="col-sm-4">
                                    <p data-toggle="modal" data-target=".conceptModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Concepts</p>
                                </div>
                                <div class="col-sm-4">
                <p data-toggle="modal" data-target=".ncertModal" style="cursor:pointer"><img src="assests/dweded">&nbsp;&nbsp;<span>NCERT</span></p>
                                
                            </div>
                        </div>
                        <div class="row col-sm-12 col-sm-push-1" style="margin-top:5px">
                                <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".formulaModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Formulae</p>
                    
                                </div>
                                <div class="col-sm-4">
                                        <p data-toggle="modal" data-target=".videoModal" style="cursor:pointer"><i class="fa fa-play play" aria-hidden="true"></i>&nbsp;&nbsp;<span style="vertical-align:super">videos</span></p>
                                    </div>
                                    <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".infoModal" style="cursor:pointer"><span style="color:#187ce4;font-size:20px" class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;<span>Info</span></p>
                                    
                                </div>
                            </div>
                        </div>
            </div>
       </div>
    
           
    
    
            <div class="col-md-12">
            <div class="first mb-20">
                <div class="thermoblock">
                  <div class="row">
                        <div class="col-md-3 sideheading1">
                          <img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/thermo.jpg" width="50px">&nbsp;&nbsp;
                         <span>Thermodynamics</span>
                        </div>
                        <div class="col-md-6" style="display:flex;margin-top:10px">
                         <p class="cont">Stage-1</p>
                         <p class="cont1">Stage-2</p>
                         <div class="progress bar1">
                           <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:100%;">
                            
                           </div>
                         </div>
                       
                         <div class="progress bar2" style="width:150px;height:28px">
                           <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;border-top-left-radius: 0px;">
                             
                           </div>
                         </div>
                         <button class="setbtn">Go</button>
                        </div>
                        <div class="col-md-3" style="position:relative;right:-45px">
                         <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                         <span>Feedback</span>
                        </div>
                  </div>
    
    
                  <div class="row">
                    <div class="col-md-9" style="display:flex;justify-content:center">
                            
                                 <p style="font-weight:bold;font-size:15px">First focus</p>
                              
                              
                                 <p style="margin-left:20px;color:green;font-weight:bold;font-size:15px">MAIN</p>
                                 
                                 <p>
                                  <div id="thermomain" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:-32px;color:gray"></i></span>
                                 </p>
                                 
                                 <p><button class="setbtn">Go</button></p>
                                 <p style="margin-left:10px"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(1:20 Hrs/10:00 Hrs)</p>
                                 
                    </div>
                  </div>
                  <div class="row">
                   <div class="col-md-9" style="display:flex;justify-content:center">
                           
                                <p style="font-weight:bold;font-size:15px">Parallel focus</p>
                             
                             
                                <p style="margin-left:20px;color:blue;font-weight:bold;font-size:15px">EAMCET</p>
                                
                                <p>
                                 <div id="thermoparallel" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:4px;color:gray"></i></span>
                                </p>
                                
                                <p><button class="setbtn">Go</button></p>
                                <p style="margin-left:10px" data-toggle="modal" data-target=".exampleModalCenter"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Set Goal Time)</p>
                                
                   </div>
               <!--     <div class="col-md-4 thermopos">
                       <h5 style="color:gray;font-weight:bold">Chapter Involved - Active Tests</h5>
                       <p>Subject-wise : <span style="color:gold;font-weight: bold">1</span></p>
                       <p>Mock Tests: <span style="color:green;font-weight: bold">0</span></p>
                   </div> -->
                    <div class="col-sm-12" style="display:flex;justify-content:flex-end">
                  
                  <div class="arrow bounce thermo" style="position:relative;top:-63px">
				  <a class="fa fa-arrow-circle-down fa-2x slicdown" ></a>
				  <a class="fa fa-arrow-circle-up fa-2x slicup" ></a>
				</div>
				        
                  </div>
                 </div>
               
                </div>
                <div class="col-sm-9  first thermooptics" style="display:none;position:relative;top:-53px;background:rgba(128, 128, 128, 0.4);padding:15px;border-radius:7px;width:800px;color:#fff;font-size:15px;margin-left:28px">
                   <button class="btn" style="background:none !important;color:#fff;float:right;"><i class="fa fa-times closebtn" aria-hidden="true" style="font-size:20px"></i></button>
                        <div class="row col-sm-12 col-sm-push-1 mb-10">
                            <div class="col-sm-4">
                <p data-toggle="modal" data-target=".basicModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Chapter Basics</p>
                
                            </div>
                            <div class="col-sm-4">
                                    <p data-toggle="modal" data-target=".conceptModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Concepts</p>
                                </div>
                                <div class="col-sm-4">
                <p data-toggle="modal" data-target=".ncertModal" style="cursor:pointer"><img src="assests/dweded">&nbsp;&nbsp;<span>NCERT</span></p>
                                
                            </div>
                        </div>
                        <div class="row col-sm-12 col-sm-push-1" style="margin-top:5px">
                                <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".formulaModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Formulae</p>
                    
                                </div>
                                <div class="col-sm-4">
                                        <p data-toggle="modal" data-target=".videoModal" style="cursor:pointer"><i class="fa fa-play play" aria-hidden="true"></i>&nbsp;&nbsp;<span style="vertical-align:super">videos</span></p>
                                    </div>
                                    <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".infoModal" style="cursor:pointer"><span style="color:#187ce4;font-size:20px" class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;<span>Info</span></p>
                                    
                                </div>
                            </div>
                        </div>
           </div>
           </div>

        <div class="col-md-12">
           <div class="first mb-20">
                <div class="thermoblock">
                  <div class="row">
                        <div class="col-md-3 sideheading2">
                         <span>Sound waves and Acoustics</span>
                        </div>
                        <div class="col-md-6" style="display:flex;margin-top:10px">
                         <p class="cont">Stage-1</p>
                         <p class="cont1">Stage-2</p>
                         <div class="progress bar1">
                           <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:100%;border-top-right-radius: 0px;border-bottom-right-radius: 0px;">
                            
                           </div>
                         </div>
                       
                         <div class="progress bar2" style="width:150px;height:28px">
                           <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;background:#eac324">
                             
                           </div>
                         </div>
                         <button class="setbtn">Go</button>
                        </div>
                        <div class="col-md-3" style="position:relative;right:-45px">
                         <i class="fa fa-line-chart antics" aria-hidden="true"></i>
                         <span>Feedback</span>
                        </div>
                  </div>
    
    
                  <div class="row">
                    <div class="col-md-9" style="display:flex;justify-content:center">
                            
                                 <p style="font-weight:bold;font-size:15px">First focus</p>
                              
                              
                                 <p style="margin-left:20px;color:green;font-weight:bold;font-size:15px">MAIN</p>
                                 
                                 <p>
                                 <div id="container" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:-17px;color:green"></i></span>
                                 </p>
                                 <p><button class="setbtn">Go</button></p>
                                 <p style="margin-left:10px"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(Practise more)</p>
                                 
                    </div>
                  </div>
                  <div class="row" >
                   <div class="col-md-9" style="display:flex;justify-content:center">
                           
                                <p style="font-weight:bold;font-size:15px">Parallel focus</p>
                             
                             
                                <p style="margin-left:20px;color:blue;font-weight:bold;font-size:15px">EAMCET</p>
                                
                                 <p>
                                <div id="soundwaves" style="min-width: 70px; max-width: 70px; height: 70px;position:relative;top:-20px"></div>
                                 <span class="flagpy"><i class="fa fa-flag" aria-hidden="true" style="position:relative;top:-37px;left:-13px;color:green"></i></span>
                                 </p>
                                   
                                <p><button class="setbtn">Go</button></p>
                                <p style="margin-left:10px"><i class="fa fa-pencil" aria-hidden="true" style="color:blue"></i>(1:20 Hrs/10:00 Hrs)</p>
                                
                   </div>
  <!--                  <div class="col-md-4 thermopos">
                       <h5 style="color:gray;font-weight:bold">Chapter Involved - Active Tests</h5>
                       <p>Subject-wise : <span style="color:gold;font-weight: bold">1</span></p>
                       <p>Mock Tests: <span style="color:green;font-weight: bold">0</span></p>
                   </div> -->
                    <div class="col-sm-12" style="display:flex;justify-content:flex-end">
                  
                  <div class="arrow bounce soundwaves" style="position:relative;top:-63px">
				  <a class="fa fa-arrow-circle-down fa-2x slicdown" ></a>
				  <a class="fa fa-arrow-circle-up fa-2x slicup" ></a>
				</div>
				        
                  </div>
                 </div>
                </div>
                <div class="col-sm-9  first soundoptics" style="display:none;position:relative;top:-53px;background:rgba(128, 128, 128, 0.4);padding:15px;border-radius:7px;width:800px;color:#fff;font-size:15px;margin-left:28px">
                   <button class="btn" style="background:none !important;color:#fff;float:right;"><i class="fa fa-times closebtn" aria-hidden="true" style="font-size:20px"></i></button>
                        <div class="row col-sm-12 col-sm-push-1 mb-10">
                            <div class="col-sm-4">
                <p data-toggle="modal" data-target=".basicModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Chapter Basics</p>
                
                            </div>
                            <div class="col-sm-4">
                                    <p data-toggle="modal" data-target=".conceptModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Concepts</p>
                                </div>
                                <div class="col-sm-4">
                <p data-toggle="modal" data-target=".ncertModal" style="cursor:pointer"><img src="assests/dweded">&nbsp;&nbsp;<span>NCERT</span></p>
                                
                            </div>
                        </div>
                        <div class="row col-sm-12 col-sm-push-1" style="margin-top:5px">
                                <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".formulaModal" style="cursor:pointer"><span class="glyphicon glyphicon-th-large" style="color: #c9313c;border: 1px solid #c9313c;padding: 4px 5px;background:#fff;border-radius: 8px;"></span>&nbsp;&nbsp;Formulae</p>
                    
                                </div>
                                <div class="col-sm-4">
                                        <p data-toggle="modal" data-target=".videoModal"><i class="fa fa-play play" aria-hidden="true"></i>&nbsp;&nbsp;<span style="vertical-align:super">videos</span></p>
                                    </div>
                                    <div class="col-sm-4">
                    <p data-toggle="modal" data-target=".infoModal" style="cursor:pointer"><span style="color:#187ce4;font-size:20px" class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;<span>Info</span></p>
                                    
                                </div>
                            </div>
                        </div>
           </div>
           </div>
           
          </div>
          </div>
          </div>
      </div>
      </div>      

</div>
</div>
</div>
         
        




<div class="modal fade bd-example-modal-lg exampleModalCenter"  tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document" style="width:1000px">
      <div class="modal-content">
        <div class="modal-header modelhead">
        <!-- <div class="li"></div> -->
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <h5 class="modal-title namemodel" id="exampleModalLongTitle">Hey Google!</h5>
        <h5 class="modal-title setgoal" id="exampleModalLongTitle">Set your Goal here</h5>
        <div class="modal-body modelbody">
         <div class="container">
             <div class="row">
                 <div class="col-md-3 text-center align-middle"><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/goal.jpeg" class="img-responsive" width="200px;" alt="goall"></div>
                 <div class="col-md-7 col8">
                        <!-- for 8 row -->
                     <h4 class="firstfocus">First Focus</h4>
                     <div class="row">
                        <div class="list-inline" id="singlefocus" data-id="1">
                         <div class="col-sm-3 text-center focusfirst" data-li-id="1"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Eamcet<p></a></div>
                         <div class="col-sm-3 text-center focusfirst"  data-li-id="2"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Jee-mains</p></a></div>
                         <div class="col-sm-3 text-center focusfirst" data-li-id="3"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Bitsat</p></a></div>
                         </div>
                     </div>
                     <h4 class="firstfocus">Parallel Focus</h4>
                     <div class="row">
                         <div class="list-inline" id="multiplefocus" data-id="2">
                         <div class="col-sm-3 text-center focusparallel" data-li-id="1"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Eamcet</p></a></div>
                         <div class="col-sm-3 text-center focusparallel" data-li-id="2"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Jee-mains</p></a></div>
                         <div class="col-sm-3 text-center focusparallel" data-li-id="3"><a href="#" class="text-center"><span class="checkmark cc"></span><img src="<%=request.getContextPath()%>/assets/images/students/chaptertargetimg/bgcolor.png" width="50px" alt=""> <p>Bitsat</p></a></div>
                         </div>
                     </div>
                      <!-- for 8 row -->
                 </div>
             </div>
         </div>
        </div>
         <div class="modal-footer modelfooter">
          <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
          <button type="button" class="btn btn-primary" style="color:#fff">Lets Start</button>
        </div> 
      </div>
    </div>
  </div>


<!-- collpase popups -->

  <div class="modal fade infoModal" role="dialog">
    <div class="modal-dialog modal-lg" style="width:1000px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Kinematics Info</h4>
        </div>
        <div class="modal-body" style="padding:25px;text-align:justify">
          <p style="font-size:15px">Kinematics derives its name from the Greek word for “motion”, kinema. Kinematics provides us with the language and the mathematical tools to describe motion, whether the motion of a particle moving under the effect of gravity or a particle performing circular motion. Kinematics is most intimately connected with dynamics; while kinematics describes motion, dynamics explains the causes for this motion.

Motion is change in position of an object with time. For describing how the position changes with time, the concepts of velocity and acceleration were developed.

Rate of change of position is described as velocity. If the velocity is constant, the motion of a particle is described as uniform motion and particle moves on a straight path.

When a particle moves on a curved path, a description of its position becomes more complicated and requires two or three dimensions. Velocity and acceleration have direction as well as magnitude. Velocity is always tangent to the path, while acceleration has two components – one tangent to the path and the other perpendicular to the tangent.</p>
        </div>
      </div>
      
    </div>
  </div>


<div class="modal fade formulaModal"  role="dialog">
    <div class="modal-dialog modal-lg" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Formulaes</h4>
        </div>
        <div class="modal-body forspace" style="padding:25px;text-align:center">
          <p>
            1.v=v0+at
          </p>
          <p> 2.Δx=(v+v0/2)t</p>
          <p>3.Δx=v0t+1/2at <sup>2</sup></p>
          <p>4.v2=v0<sup>2</sup>+2aΔx</p>
        </div>
      </div>
      
    </div>
  </div>
  

<div class="modal fade basicModal"  role="dialog">
    <div class="modal-dialog modal-lg" style="width:1000px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Chapter Basics</h4>
        </div>
        <div class="modal-body" style="padding:25px;text-align:justify">
          <p>
            Kinematics is the study of the motion of points, objects, and groups of objects without considering the causes of its motion.
          </p>
          <p> Key Points <br>
1)To describe motion, kinematics studies the trajectories of points, lines and other geometric objects.<br>
2)The study of kinematics can be abstracted into purely mathematical expressions.<br>
3)Kinematic equations can be used to calculate various aspects of motion such as velocity, acceleration, displacement, and time.</p>
          <p>Kinematics is the branch of classical mechanics that describes the motion of points, objects and systems of groups of objects, without reference to the causes of motion (i.e., forces ). The study of kinematics is often referred to as the “geometry of motion.”</p>
          <p>Objects are in motion all around us. Everything from a tennis match to a space-probe flyby of the planet Neptune involves motion. When you are resting, your heart moves blood through your veins. Even in inanimate objects there is continuous motion in the vibrations of atoms and molecules. Interesting questions about motion can arise: how long will it take for a space probe to travel to Mars? Where will a football land if thrown at a certain angle? An understanding of motion, however, is also key to understanding other concepts in physics. An understanding of acceleration, for example, is crucial to the study of force.</p>
        </div>
      </div>
      
    </div>
  </div>
  
  
  
  <div class="modal fade conceptModal"  role="dialog">
    <div class="modal-dialog modal-lg" style="width:1000px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Kinematics</h4>
        </div>
        <div class="modal-body" style="padding:25px;text-align:justify">
       <div class="card card-1">
       <h4>Introduction to Motion in One Dimension</h4>
       <p>A body
A certain amount of matter limited in all directions and consequently having a finite size, shape and occupying some definite space is called a body.

Particle
A particle is defined as a portion of matter infinitesimally small in size so that for the purpose of investigation, the distance between its different parts may be neglected. Thus, a particle has only a definite position, but no dimension. In the problems we are going to discuss, we will consider a body to be a particle for the sake of simplicity.</p>
       </div>
        <div class="card card-1">
       <h4>Motion Under Gravity</h4>
       <p>Whenever a body is released frrom a height, it travels vertically downward towards the surface of earth.This is due to the force of gravitational attraction exerted on body by the eareth. The acceleration produced by this force is called acceleration due to gravity and is denoted by ‘g’. Value of ‘g’ on the surface of earth is taken to the 9.8 m/s2 and it is same for all the bodies. It means all bodies (whether an iron ball or a piece of paper), when dropped (u=0) from same height shoulfd fall with same rapidity and should take same time to reach the earth. Our daily observation is contrary to this concept. We find that iron ball falls more rapidlly than piece of paper. This is due to the presence of air which offers different resistance to them. In the absence of air both would have taken same time to reach the surface of earth.</p>
       </div>
       <div class="card card-1">
       <h4>Motion in a Straight Line with Acceleration</h4>
       <p>Velocity of a body is defined as the time rate of displacement, where as acceleration is defined as the time rate of change of velocity. Acceleration is a vector quantity. The motion may be uniformly accelerated motion or it may be non-uniformly accelerated, depending on how the velocity changes with time.

Uniform Acceleration 
The acceleration of a body is said to be uniform if its velocity changes by equal amounts in equal intervals.

Non-Uniform Acceleration
The acceleration of a body is said to be non-uniform if its velocity changes by unequal amounts in equal intervals of time.

Average velocity<br>
Illustration:<br>

A particle having initial velocity is moving with a constant acceleration 'a' for a time t.

(a)Find the displacement of the particle in the last 1 second.

(b)Evaluate it for u = 2 m/s, a = 1 m/s2 and t = 5 sec.</p>
       </div>
        </div>
      </div>
      
    </div>
  </div>


<div class="modal fade ncertModal"  role="dialog">
    <div class="modal-dialog modal-lg" style="width:1000px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">NCERT Questions</h4>
        </div>
        <div class="modal-body" style="padding:25px">
        <div class="questionston">
          <p>1.Which of the following is a large blood vessel that carries blood away from the heart?</p>
          <p>A) Vein</p>
          <p>B) Artery</p>
          <p>C) Capillary</p>
            <p>D) Nerve</p>
            </div>
<div class="questionston">
          <p>2.Which of the following is a large blood vessel that carries blood away from the heart?</p>
          <p>A) Vein</p>
          <p>B) Artery</p>
          <p>C) Capillary</p>
            <p>D) Nerve</p>
            </div>
            <div class="questionston">
          <p>3.Which of the following is a large blood vessel that carries blood away from the heart?</p>
          <p>A) Vein</p>
          <p>B) Artery</p>
          <p>C) Capillary</p>
            <p>D) Nerve</p>
            </div>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <div class="modal fade videoModal"  role="dialog">
    <div class="modal-dialog  modal-lg" style="width:1000px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;Chapter related videos</h4>
        </div>
        <div class="modal-body">
        <div class="col-sm-12">
        	   <div class="panel panel-default">
						<div class="panel-body">
							 <div class="row">
          <div class="col-md-8">
          <iframe  src="https://www.youtube.com/embed/K_a09clEnlA" width="530px" height="315px" id="youtubeembad" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          <div class="col-md-4" style="height:347px;">
          <div class="panel-body">
          <div class="row">
          <div id="style-2" style="height:300px;">
          <div class="col-md-12 col-sm-6 co-xs-12">
          <div class="box">
          <div class="item res-video" style="background-image: url('https://img.youtube.com/vi/K_a09clEnlA/0.jpg');width:225px; height:110px;padding-left:0px;" onclick="viedomaindisplay('https://www.youtube.com/embed/K_a09clEnlA');">
		   </div>
          <a  onclick="viedomaindisplay('https://www.youtube.com/embed/K_a09clEnlA');">Kinematics - One Shot -Complete Chapter - Kinematics Full Chapter Revision I Class 11/JEE MAINS/NEET</a>
          </div>
          <div class="clearfix"></div>
          </div>
          <div class="col-md-12 col-sm-6 co-xs-12">
          <div class="box">
           <div class="item res-video" style="background-image: url('https://img.youtube.com/vi/DtFnZb4bGA4/0.jpg');width:225px; height:110px;padding-left:0px;" onclick="viedomaindisplay('https://www.youtube.com/embed/DtFnZb4bGA4');">
		   </div>
             <a onclick="viedomaindisplay('https://www.youtube.com/embed/DtFnZb4bGA4');">Kinematics of Physics for JEE Main & Advanced by NKC Sir (Etoosindia.com)</a>
            </div>
             <div class="clearfix"></div>
          </div>
          <div class="col-md-12 col-sm-6 co-xs-12">
          <div class="box">
          <div class="item res-video" style="background-image: url('https://img.youtube.com/vi/o8J9t7uERYg/0.jpg');width:225px; height:110px;padding-left:0px;" onclick="viedomaindisplay('https://www.youtube.com/embed/o8J9t7uERYg');">
		   </div>
                <a onclick="viedomaindisplay('https://www.youtube.com/embed/o8J9t7uERYg');">Graphical Method to Calculate Velocity and Acceleration of Four Bar Chain Problem 1</a>
                </div>
              
              <div class="clearfix"></div>
          </div>
           <div class="col-md-12 col-sm-6 co-xs-12">
          <div class="box">
          <div class="item res-video" style="background-image: url('https://img.youtube.com/vi/XIJAZM5G5Fg/0.jpg');width:225px; height:110px;padding-left:0px;" onclick="viedomaindisplay('https://www.youtube.com/embed/XIJAZM5G5Fg');">
		   </div>
                   <a onclick="viedomaindisplay('https://www.youtube.com/embed/XIJAZM5G5Fg');">Class 11 Physics Chapt 03 : KINEMATICS : Motion in a Straight Line 01: Introduction || Average Speed</a>
               </div>
                <div class="clearfix"></div>
          </div>
          </div>
          </div>
          </div>
          </div>
          </div>
          </div>
          </div>
          </div>
        </div>
        <div class="modal-footer">
    
        </div>
      </div>
      </div>
    </div>
<!-- jQuery library -->
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/highchart.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/funnel.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/exporting.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/highchartfiles/exportdata.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/chapinteractivedown.js"></script>
