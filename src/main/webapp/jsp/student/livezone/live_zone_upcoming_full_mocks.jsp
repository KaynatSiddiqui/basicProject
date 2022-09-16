
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/livezoneupcoming.css" rel="stylesheet">
<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
				</div>
				<!-- /Title -->
				<input type="hidden" id="studenactive" value="livezoneupcoming"/>
				<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/sidebaractive/upcomingp.png"/>
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2"  id="getspace">
								<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Upcoming.svg" class="img-responsive">
<!-- 									<h6 class="panel-title txt-dark change_color"><span class="sky_blue1 font-16"><div class="ribbon"><span id="fntsez">Live zone</span></div></span><span class="font-15 gold">UPCOMING TESTS</span><span id="settfont"><i class="fa fa-share fa-2x mr-20" aria-hidden="true"></i></span></h6>
 -->								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div  class="tab-struct vertical-tab custom-tab-1 mt-20">
										<ul role="tablist" class="nav nav-tabs sky_blue_tabs_right ver-nav-tab" id="myTabs_9">
											<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="Tab1_1" href="#Tab_1"><%= AppConstants.ALL %></a></li>
											<li role="presentation" class=""><a id="Tab3_3" data-toggle="tab" role="tab" href="#Tab_3" aria-expanded="false"><%= AppConstants.SUBJECTWISE_MOCK %></a></li>
											<li role="presentation" class=""><a id="Tab2_2" data-toggle="tab" role="tab" href="#Tab_2" aria-expanded="false"><%= AppConstants.MOCKTEST %></a></li>
											<li role="presentation" class=""><a id="Tab4_4" data-toggle="tab" role="tab" href="#Tab_4" aria-expanded="false"><%= AppConstants.FULLSYALLBUSMOCK %></a></li>
										</ul>
										<div class="tab-content" id="myTabContent_8">
											<div  id="Tab_1" class="tab-pane fade active in" role="tabpanel">
												<div class="row">
													 
												</div>
											</div>
											<div  id="Tab_2" class="tab-pane fade" role="tabpanel">
												<div class="row">
													
												</div>
											</div>
											<div  id="Tab_3" class="tab-pane fade " role="tabpanel">
												<div class="row">
													
												</div>
											</div>
											<div  id="Tab_4" class="tab-pane fade" role="tabpanel">
												<div class="row">
													 
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
										  <div class="modal-header">
														 <h4 class="fonkar">Hey,<span id="syllname"></span></h4>
												   </div>
											<input type="hidden" id="idvalue1" value="">
											<div class="modal-body">
												
												<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Syllabus </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" id="viewsyllabus">
												
											</div>
										</div>	
									</div>
												
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
							</div>
							 <div class="modal fade" id="exampleModalSuggest" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											 <div class="modal-header">
														 <h4 class="fonkar">Hey,<span id="suggname"></span></h4>
												   </div>
												  	<input type="hidden" id="idvalue" value="">
											<div class="modal-body">
													<div class="panel-body">
														<div class="titleModal">
															<strong>You're in - </strong>   <strong>Examtype&emsp;:</strong> <span id="examtypemodel"></span>&emsp; <strong>Standard&emsp;:</strong> <span id="standmodel"></span>&emsp; &emsp;<strong>Subject&emsp;:</strong> <span id="subjectmodel"></span><br><br>
															
															<div class="row row-content">
																
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Subject</label>
							                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="subject" onchange="getSelectedUnit(this.value)" >
							                                              
							                                            </select>
							                                        </div>
							                                    </div>
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Unit</label>
							                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getSelectedChapter(this.value)">
							                                               
							                                            </select>
							                                        </div>
							                                    </div>
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Chapter</label>
							                                            <select class="selectpicker" data-style="form-control btn-default btn-outline" id="chapter" multiple>
							                                            </select>
							                                        </div>
							                                    </div>
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Comment</label>
							                                            <input type="text" data-style="form-control btn-default btn-outline" id="comment" style="width:259px; height:40px; border: 1px solid #e4e4e4;">
							                                              <input type="hidden" id="examtype" value=""/>
							                                              <input type="hidden" id="standard" value=""/>
							                                              <input type="hidden" id="category" value=""/>
							                                             
							                                        </div>
							                                    </div>
															</div>
															
															
                                   						</div>
														</div>
												   
														<div id="addspace">
														     
														
														 </div>
														 <span class="add_com_button right"><a id="addmore" class="plus-icon"><i class="fa fa-plus-circle fa-3x green"></i></a></span>
														<br><br>
														<i>Most suggested Chapters will be considered as Live Test Syllabus</i>
													</div>
													
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success" data-dismiss="modal" data-id="all" onclick="getstudentsugsyllabus(this);">Submit</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
										</div>
									</div>
									<div class="modal" id="fullexampleModalSuggest">
														    <div class="modal-dialog">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														          <h4 class="modal-title">Suggest syllabus</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        <input type="hidden" id="idvalue" value="">
														        <!-- Modal body -->
														        <div class="modal-body">
														      <div class="panel-body">
														<div class="titleModal">
															<strong>You're in - </strong>   <strong>Examtype&emsp;:</strong> <span id="examtypemodel"></span>&emsp; <strong>Standard&emsp;:</strong> <span id="standmodel"></span>&emsp; &emsp;<strong>Subject&emsp;:</strong> <span id="subjectmodel"></span><br><br>
															
																<div class="row">
															
							                                    <div class="col-md-4">
							                                        <div class="form-group">
							                                            <label class="control-label mb-5 bold">Comment</label>
							                                            <input type="text" data-style="form-control btn-default btn-outline" id="comment" style="width:259px; height:40px;border: 1px solid #e4e4e4;">
							                                            
							                                              <input type="hidden" id="examtype" value=""/>
							                                              <input type="hidden" id="standard" value=""/>
							                                              <input type="hidden" id="category" value=""/>
							                                               <input type="hidden" id="subject" value="0"/>
							                                              <input type="hidden" id="unit" value="0"/>
							                                             
							                                        </div>
							                                    </div>
															</div>
															
															
                                   						</div>
														</div>
														         </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-success" data-dismiss="modal" data-id="full" onclick="getstudentsugsyllabus(this);">Submit</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>		
				
							
							
						</div>
					</div>
				</div>
				<!-- /Row -->
    </div>
     <input type="hidden" id="creationactive" value="liveside"/>
			<input type="hidden" id="ulactive" value="livezone"/>
   
	<%@include file="/jsp/master/footer.jsp" %>
	<%@include file="/jsp/student/student module/studenttraking.jsp" %>
</div>
<!-- /Main Content -->
    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/livezone.js"></script>
	
	<script type="text/javascript">
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('liveupcominmg');
	   $("#upcomingtext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#livegreyupcoming").attr("src",icon); 
	</script>
	<script>
	
	 $(document).ready(function(){
		 showPopmsg("upcoming")
		 var reload = sessionStorage.getItem('reload');
		 if(reload == "false"){
			 location.reload();
			 sessionStorage.setItem('reload',true);
		 }
		 activeUpcoming("All");
	 });

	</script>
		<script>
	var activeTab = 1;
	$("#Tab1_1").click(function(){
		activetabnumber = 1;
		var tab = $(this).text();
		activeUpcoming(tab);
		
		
	});

	$("#Tab2_2").click(function(){
		activeTab = 2;
		var tab = $(this).text();
		activeUpcoming(tab);
	});
	 	

	$("#Tab3_3").click(function(){
		activeTab = 3;
		var tab = $(this).text();
		activeUpcoming(tab);
	});
	$("#Tab4_4").click(function(){
		
		activeTab = 4;
		var tab = $(this).text();
		activeUpcoming(tab);
	});
	</script>
	
	
	<script>
	function activeUpcoming(tab){
		var appenddata="";
		var id="";
		var brcolor="";
		/* category = "";
		examtype = "";
		liveid = ""; */
		/* var sId = getParameterByName('id'); */
		var LoginData = getLoginData();
	    var sId = LoginData.studentid;
				var inputData = 
		          {
				  "testType":tab,
				  "studentId":sId
				  }
		var inputdata = JSON.stringify(inputData);
				
		$.ajax({
			url   :  base_url+'rest/student/v1/getlivezones',
			type  : "POST",
			dataType: "json",
			contentType:'application/json',
			data: inputdata,
			success: function(data){
				if(data.length > 0 ){
					examtype = data[0].examTypeId;
					 $("#standard").val(data[0].standardId); $("#category").val(data[0].categoryId);
				}
				for(var i=0; i < data.length; i++){ 
					if(data[i].testType == "Subject-Wise Test" ){
						    var bgcolor = "div_subjectwise_upacoming";
						    var noofsuggim = base_url+"/assets/images/icons/Subjectwise Upcoming.svg";
						    var testtype ="subjectwise_exam_title";
						    var bordercolor = "livezone_Exam_title_upacoming_subjectwise";
						}
                        if(data[i].testType == "Mock Test" ){
                        	var bgcolor = "div_full_mocks_upacoming";
                        	var noofsuggim = base_url+"/assets/images/icons/Mock Upcoming.svg";
                        	var testtype = "mockwise_exam_title";
                        	var bordercolor = "livezone_Exam_title_upacoming_full_mocks";
    					
						}if(data[i].testType == "Full-Syllabus Mock" ){
							var bgcolor = "div_full_syllabus_upacoming";
							var noofsuggim = base_url+"/assets/images/icons/Full Syllabus Upcoming.svg";
							var testtype = "full_syllabus_exam_title";
							var bordercolor = "livezone_Exam_title_upacoming_full_syllabus";
						}
						 var subjectiddropdown=[];
					var subjectdnameropdown =[];
					var sub =data[i].subjectIdList;
					 for(var j=0; j < sub.length; j++){ 
						var id =sub[j].id;
						var name = sub[j].name;
						subjectiddropdown.push(id);
						subjectdnameropdown.push(name);
					} 
					 subjectiddropdown = subjectiddropdown.join();
					 subjectdnameropdown = subjectdnameropdown.join();
					 var subspacename = subjectdnameropdown.replace(/,/g, ", ");
						appenddata +="<div class='col-md-6 col-sm-10'>"+
						"<div class='"+bgcolor+"'>"+
					"<div class='row'>"+
						"<div class='col-lg-10 col-md-10 col-sm-10 col-xs-12'>"+
							"<div class='row "+bordercolor+" setdisplay'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left'>"+
									"<span class='font-18'>Test Type</span>"+
								"</div>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-6'>"+
									"<span class='pull-right  "+testtype+"'>"+data[i].testType+"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
					 "</div>"+
					"<div class='row mt-10' style='text-align:left'>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Test Name </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
									"<span class='"+testtype+"'>"+data[i].testName+"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Exam Type </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
								"<span class=''>"+data[i].examType+"</span>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Standard </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
								"<span class=''>"+data[i].standard+"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Subjects </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
								"<span class='' title='"+subspacename+"'>"+subjectdnameropdown.substr(0, 25)+"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>No.of Questions </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
								"<span class=''>"+data[i].numofquestions+"</span>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Test Time </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
								"<span class=''>"+data[i].testTime+"</span>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
						"<div class='row form-group mb_2 setdisplay'>"+
							"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
								"<label class='' for='example-email'>Total Marks </label>"+
							"</div>"+
							"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
							"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
							"<span class=''>"+data[i].totalMarks+"</span>"+
							"</div>"+
						"</div>"+	
					"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Opening Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
									"<span class='text-success'>"+data[i].openingDate+"</span>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Closing Date </label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
									"<span class='text-warning'>"+data[i].closingDate+"</span>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						"<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-11'>"+
									"<label class='' for='example-email'>Syllabus</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12'>"+
									"<a href='#'  data-toggle='modal' data-target='#exampleModal' data-whatever='@mdo'  onclick='getsyllabus(this)' data-id='"+data[i].id+"'><img src='<%=request.getContextPath()%>/assets/images/icons/Syllabus.svg' class='btn-icon' alt='Smiley face' style='width: 30px;height: 29px;'></a>"+
								"</div>"+
							"</div>"+	
						"</div>"+
						/* "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-20'>"+
							"<div class='row form-group mb_2 setdisplay'>"+
								"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-11'>"+
									"<label class='' for='example-email'>Remind Me</label>"+
								"</div>"+
								"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+
								"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>";
						if(data[i].alreadyReminded == false){
							appenddata += "<a href='#' data-id="+data[i].id+" onclick='getremaind(this)' ><i class='fa fa-bell' style='padding-top:5px; font-size:18px;'></i></a>";
						}else{
							appenddata += "<a href='#' data-id="+data[i].id+" onclick='getremaind(this)' ><i class='fa fa-bell' style='padding-top:5px; font-size:18px;color:green'></i></a>";
						}			
                    appenddata += "</div>"+
							"</div>"+	
						"</div>"+ */
					"</div>"+
					"<div class='row mt-10'>"+
						"<div class='col-sm-12'>"+
							"<div class='center'>";
            	    var subjectiddropdown=[];
					var subjectdnameropdown =[];
					var sub =data[i].subjectIdList;
					 for(var j=0; j < sub.length; j++){ 
						var id =sub[j].id;
						var name = sub[j].name;
						subjectiddropdown.push(id);
						subjectdnameropdown.push(name);
					} 
					 subjectiddropdown = subjectiddropdown.join();
					 subjectdnameropdown = subjectdnameropdown.join();
					//subjectiddropdown = data[i].subjectIdList;
							if(data[i].suggestsyllabus == false){
										 appenddata += 	"<a href='#' onclick='suggestFields()' class='nxtexamfull'  data-toggle='modal' data-target='#fullexampleModalSuggest' data-id='"+data[i].id+"_"+data[i].examType+"_"+data[i].standard+"_"+examtype+"_"+subjectdnameropdown+"' data-whatever='@mdo'><img src='"+noofsuggim+"'></a>";
									 }else
										 {
										 appenddata += "<a href='#' onclick='suggestFields()' class='nxtexam nxtexammock'  data-toggle='modal' data-id='"+data[i].id+"_"+data[i].examType+"_"+data[i].standard+"_"+subjectiddropdown+"_"+subjectdnameropdown+"_"+examtype+"' data-target='#exampleModalSuggest' data-whatever='@mdo'><img src='"+noofsuggim+"'></a>";
										}
									
							
							 appenddata += 	"</div>"+
						"</div>"+
					"</div>"+
				"</div>"+
			"</div>"	
				 }
				
			    $("#Tab_"+activeTab+" .row").empty();
				$("#Tab_"+activeTab+" .row").append(appenddata); 
			
			},
			error:function(data){
				alertify.alert(data.responseJSON.errorMessage);
			}
		
				
			});
		}
	/* 

	    	function getLoginData(){
	    		var loginData = JSON.parse(atob(getCookie("LoginData")));
	    		
	    		if(loginData !== "" || loginData !== null){
	    			return loginData;
	    		} else {
	    			return "";
	    		}
	    		
	    	}

	    	
	    
	   	 */	
	   	</script>
	   	<script>
	    $(document).on("click", ".nxtexam", function () {
	    	var appenddata="";
	    	var exm="";
	    	var sub="";
	    	var stand="";
	        var id = $(this).data('id');
	        var live = id.split("_");
	       	exm = live[1];
	       
	       	stand = live[2];
	       subid=live[3];
	       subid = subid.split(',');
	       subjectss= live[4];
	       subjectss = subjectss.split(',');
	       
	       $('#exampleModalSuggest').find('#examtype').val(live[5]); 
	       $('#exampleModalSuggest').find('#examtypemodel').html(exm);
	       $('#exampleModalSuggest').find('#subjectmodel').html(live[4]);
	        $('#exampleModalSuggest').find('#standmodel').html(stand);
	        $('#exampleModalSuggest').find('subject').empty();
	        $('#exampleModalSuggest').find('#unit').empty();
	        $('#exampleModalSuggest').find('#chapter').empty();
	       $('#exampleModalSuggest').find('#comment').val('');
	      for(var k=0; k < subid.length; k++){
	       // var subjects = subj[i];
	       
	         appenddata += '<option value="'+subid[k]+'">'+subjectss[k]+'</option>';
	           
	         $('#exampleModalSuggest').find('#subject').empty();
	     
	         $('#exampleModalSuggest').find('#subject').append('<option value="">--- Select ---</option>');
	     
	         $('#exampleModalSuggest').find('#subject').append(appenddata);
	     
	    }

	        $(".selectpicker").selectpicker('refresh');
	        
	        $('#exampleModalSuggest').find('#idvalue').val(live[0]);
	     
	            
});
	    $(document).on("click", ".nxtexamfull", function () {
	    var exm="";
	    	var sub="";
	    	var stand="";
	        var id = $(this).data('id');
	        var live = id.split("_");
	       	exm = live[1];
	       
	       	stand = live[2];
	      /*  subid=live[3];
	       subid = subid.split(',');
	       subjectss= live[4];
	       subjectss = subjectss.split(','); */
	       $('#fullexampleModalSuggest').find('#examtype').val(live[3]); 
	     
	        $("#fullexampleModalSuggest").find('#examtypemodel').html(exm);
	        $('#fullexampleModalSuggest').find("#subjectmodel").html(live[4]);
	        $("#fullexampleModalSuggest").find('#standmodel').html(stand);
	       
	        $("#fullexampleModalSuggest").find('#comment').val('');
	     

	        $(".selectpicker").selectpicker('refresh');
	        
	        $("#fullexampleModalSuggest").find('#idvalue').val(live[0]);
	      }); 
	    
	    function getremaind(elem){
	    	var testid = $(elem).attr('data-id');
	    	
	    	var LoginData = getLoginData();
	    	var studid = LoginData.studentid;
	    	
	    	var testremaind = {
	    			"testid":testid,
	    			"studentid":studid	
	    			};
	    	
	    	var strtestremind = JSON.stringify(testremaind);
	    	
	    	$.ajax({
    			type: "POST",
    			  dataType: "json",
    			  contentType: 'application/json', 
    			  url: base_url+'rest/student/v1/Testremainder',
    			  data:strtestremind,
    			  success:function(data){
    				  alert(data.message);
    			  },
    			  error:function(data){
    				  alert(data.responseJSON.errorMessage);
    			  }
    		 });
	    }
	    
	    
		  var LoginData = getLoginData();
	    
		  $("#syllname").html(LoginData.name); 
		  $("#suggname").html(LoginData.name); 
	   	</script>
		<script>
        $("#addmore").click(function(){
	         $(this).removeClass("plus-icon");
	         $(this).addClass("plus-icon2");  
	    }); 
	    </script>