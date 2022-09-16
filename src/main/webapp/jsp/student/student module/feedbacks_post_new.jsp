<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <link href="<%=request.getContextPath()%>/assets/css/student/css/feedbackpost.css" rel="stylesheet">

	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<%-- <input type="hidden" id="studenactive" value="studentfeedback"/>
					<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/feedback/feedbackwhite.svg"/>
			
 --%>	
 			<!-- Title -->
				<div class="row heading-bg">
					
				</div>
				<!-- /Title -->
				<div>
				
				<input type="hidden" id="studentid" value="">
		 <input type="hidden" id="stdname" value="">
				</div>
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-1 col-xs-6 pull-left left">
									<a href="#" class="left inline-block  mr-15">
										  <span><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Feedback_head_color.svg" id="paddon" width="240px"></span> 
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row mb-20">
								<div class="col-sm-12">
									<div class="button-list butnlist">
										<a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks.jsp" class="feedbacks_heading  mr-20 foo"><img src="<%=request.getContextPath()%>/assets/images/students/posted_color-(white-borders)_png.png" id="bg" width="40px">&nbsp;&nbsp;Posted</a>
									<a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks_post_new.jsp" class="feedbacks_heading active mr-20 soo"><img src="<%=request.getContextPath()%>/assets/images/students/postnew_color.png" id="gb" width="40px">&nbsp;&nbsp;Post New</a>
								</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Regarding</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="regarding" data-style="form-control btn-default btn-outline">
															<option value="">--- Select ---</option>
														<!--	<option value="Test Zone" >Test Zone</option>-->
															<option value="Live Zone" >Live Zone</option>
															<option value="Others">Others</option>
														</select>
													</div>
												</div>	
											</div>
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Your Valuable Feedback </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															 <textarea name="editor1" class="form-control" id="editor1" class="reply" placeholder="Enter text ..." style="height:300px;background: border-box; "></textarea>
															</div>
														</div>	
													</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<!-- <div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Upload File</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<div class="form-group mb-30">
																	<div class="fileinput fileinput-new input-group" data-provides="fileinput">
																		<div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
																		<span class="input-group-addon fileupload btn btn-info btn-anim btn-file"><i class="fa fa-upload"></i> <span class="fileinput-new btn-text">Select file</span> <span class="fileinput-exists btn-text">Change</span>
																		<input type="file" name="...">
																		</span> <a href="#" class="input-group-addon btn btn-danger btn-anim fileinput-exists" data-dismiss="fileinput"><i class="fa fa-trash"></i><span class="btn-text"> Remove</span></a> 
																	</div>
																</div>
													</div>
												</div> -->	
												
												<div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                       <label class="control-label" for="example-email"> Upload file </label>
                                               </div>
                                              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                             <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <img id="img" height="150" src="http://via.placeholder.com/150x150" class="student_profile_img"> 
        <input type="hidden" id="base67photos" value="">
         <label id="image">Upload Profile image <input type="file" id="feedbacksimage"></label>

</div>
</div>
											</div>
										<div class="row mb-20">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="#" onclick="addfeedback();" class="btn  btn-primary">Add</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			<!-- /Row -->
			</div>
			<!--  <input type="hidden" id="creationactive" value="usefulside"/>
			<input type="hidden" id="ulactive" value="useful"/> -->
			
			 <%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	  <%--  <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script> --%>
	       <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	      <!--  <script>
	       $( document ).ready( function() {
           $( '#editor1' ).ckeditor({
        	   toolbar: 'Full',
               enterMode : CKEDITOR.ENTER_BR,
               shiftEnterMode: CKEDITOR.ENTER_P
           });  
    
          });
	       
	       </script> -->
	<!-- <script>
	if (typeof (Storage) !== "undefined") {
		// Retrieve
		var loggedInCheck = sessionStorage.getItem("loggedIn");
		var loggedId = sessionStorage.getItem("stdid");
		var loggedname = sessionStorage.getItem("stdname");
		var loggedcity = sessionStorage.getItem("stdcity");
		var loggedstate = sessionStorage.getItem("stdstate");
		
		
	
		if (loggedId) {
			//window.location = base_url + 'jsp/student/student module/dashboard.jsp';}
		} else {
		document.getElementsByClassName("errormsg").innerHTML = "Sorry, your browser does not support Web Storage... Please upgrade your browser";
		}
	}

	</script> -->
	<script type="text/javascript">
	/*  var page = $("#studenactive").val();
	   $("#"+page).addClass('feedbackpostactive');
	   $("#feedbacktext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#feedbackgrey").attr("src",icon);  */
	</script>
	<script>
	 $(document).ready(function(){
		 var loginData = getLoginData();
		 $("#nme").html(loginData.name);
		 $("#cty").html(loginData.city);
		 $("#sts").html(loginData.state);
		 $("#stdid").html(loginData.studentid);
		 $("#stdname").val(loginData.name);
		 $("#studentid").val(loginData.studentid);
		 
	 });
	 function addfeedback(){

	   		/* var baseURL = $("#baseURL").val();*/
		//	var feedback = CKEDITOR.instances.editor1.getData();
			var feedback = $("#editor1").val();
			 if(feedback == "")
	    	{ alert("Please Write Feedback ");
	    		return false;
	    	}else{
	    		var regarding = $("#regarding").val();
	    		 //var loginData = getLoginData();
	    		var photo = $("#base67photos").val();
	    		var  createdby= $("#stdname").val();
             var studentid = $("#studentid").val();
				var inputData = '{"regarding":"'+regarding+'","feedback":"'+feedback+'","fileUpload":"'+photo+'","createdBy":"'+createdby+'","studentId":"'+studentid+'","sourceType":"web","userType":"student"}';
				
	var covfedd = inputData.replace(/\n/g, "\\n")
	               .replace(/\r/g, "\\r")
	               .replace(/\t/g, "\\t")
	               .replace(/\f/g, "\\f");
				   
			//var appenddata = '';
			   jQuery.ajax({
				  type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				 url: base_url+'rest/feedback/v1/postnewfeedback',
				  data:covfedd,
				  success: function(data){
					  /*appenddata += data.message;*/    
					
					  //Alert.render(data.message);
					  alert(data.message);
					 /*  alert('feedback saved successfully'); */
					  window.setTimeout(function(){
						  window.location = base_url+"jsp/student/student module/feedbacks.jsp";
					  }, 1000);
				  },
				  error: function(data) {		
					  alert(data.responseJSON.errorMessage);

				  }
				 /* complete: function(){
					  window.location = base_url+"jsp/admin/creation/categories.jsp";
				  }*/
			   });
	    	}
			

	
}
</script>

<script>
document.getElementById("feedbacksimage").addEventListener("change", readFile);
function readFile() {
 
 if (this.files && this.files[0]) {
   
   var FR= new FileReader();
   
   FR.addEventListener("load", function(e) {
     document.getElementById("img").src       = e.target.result;
     document.getElementById("base67photos").value = e.target.result;
   }); 
   
   FR.readAsDataURL( this.files[0] );
 }
 
}
</script>