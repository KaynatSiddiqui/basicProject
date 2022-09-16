  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
 <link href="<%=request.getContextPath()%>/assets/css/student/css/feedbackpost.css" rel="stylesheet">

	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<input type="hidden" id="studenactive" value="studentfeedback"/>
					<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/feedback/feedbackwhite.svg"/>
			
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
										  <span><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Doubtss.svg" id="paddon" width="240px"></span> 
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row mb-20">
								<div class="col-sm-12">
									<div class="button-list butnlist">
									<a href="<%= AppConstants.BASE_URL %>student/student module/doubts_post_new.jsp" class="feedbacks_heading active mr-20 soo"><img src="<%=request.getContextPath()%>/assets/images/students/postnew_color.png" id="gb" width="40px">&nbsp;&nbsp;Post Doubt</a>
								
										<a href="<%= AppConstants.BASE_URL %>student/student module/doubts.jsp" class="feedbacks_heading  mr-20 foo"><img src="<%=request.getContextPath()%>/assets/images/students/posted_color-(white-borders)_png.png" id="bg" width="40px">&nbsp;&nbsp;Posted</a>
									
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
														<label class="control-label" for="example-email">Select Subject</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="form-control" id="regarding" style="background:#f0f4f5" data-style="form-control btn-default btn-outline">
															
														</select>
													</div>
												</div>	
											</div>
											
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Type Your Doubt</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															 <textarea name="editor1" class="form-control" id="editor1" class="reply" placeholder="Enter text ..." style="height:300px;background: border-box; "></textarea>
															</div>
														</div>	
											</div>
										<!-- </div> -->
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
																<label class="control-label" for="example-email">Doubt Image </label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
															<img id="myImg" src="http://via.placeholder.com/150x150" style="width:150px;height:150px;border-radius:100px;"><br>
													<input type='file' id="fileUpload" style="margin-top:20px;margin-left:120px;" />
															</div>
													
                                  			</div>
											</div>
											</div>
										<div class="row mb-20">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="#" onclick=" addfeedback();" data-toggle='modal' id="submited"  data-target='#showimgss' class="btn  btn-primary">Submit</a>
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
			
  <div class="modal fade" id="showimgss" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog" role="document">
      <div class="modal-content" id="imagsss">
		
         
    </div>
  </div>
 
 </div>
			
			
			</div>
			 <input type="hidden" id="creationactive" value="usefulside"/>
			<input type="hidden" id="ulactive" value="useful"/>
			 <%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script> 
	  <%--  <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script> --%>
	       <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	       
	       <script src="https://sdk.amazonaws.com/js/aws-sdk-2.357.0.min.js"></script>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
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
	

	var examTypeId="";
	var standardId="";

	
	
	var fileUrl='';
	
	 $(document).ready(function(){
			
		 examTypeId=sessionStorage.getItem("examTypeIds");
			standardId=sessionStorage.getItem("standardId");
			
			var sId = LoginData.studentid;
			var studentname = LoginData.name;
			
		 var loginData = getLoginData();
		 $("#nme").html(loginData.name);
		 $("#cty").html(loginData.city);
		 $("#sts").html(loginData.state);
		 $("#stdid").html(loginData.studentid);
		 $("#stdname").val(loginData.name);
		 $("#studentid").val(loginData.studentid);
		 getchap();
	 });
	 
	 window.addEventListener('load', function() {
		  document.getElementById('fileUpload').addEventListener('change', function() {
		      if (this.files && this.files[0]) {
		          var img = document.getElementById('myImg');
		          img.onload = () => {
		              URL.revokeObjectURL(img.src);  // no longer needed, free memory
		          }

		          img.src = URL.createObjectURL(this.files[0]); // set src to blob url
		      }
		  });
		});
	 
	//Bucket Configurations
var time_stamp="";
	 var bucketName = "doubtsvideos";
	 var bucketRegion = "ap-south-1";
	 var IdentityPoolId = "ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a";
	 //var IdentityPoolId = "ap-south-1:00ad6d2b-fd7b-48d1-812b-196b94449348";
	AWS.config.region = 'ap-south-1'; // Region
	AWS.config.credentials = new AWS.CognitoIdentityCredentials({
	    IdentityPoolId: 'ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a',
	});

	            var s3 = new AWS.S3({
	                apiVersion: '2014-06-30',
	                params: {Bucket: bucketName}
	        });
	            
	            
	            function s3upload() { 
	            	
	            
	                    /* s3.upload({
	                                    Key: filePath,
	                                    Body: file,
	                                    ACL: 'public-read'
	                                }, function(err, data) {
	                                	console
	                                    if(err) {
	                                        reject('error');
	                                    }
	                                    
	                                  /*   alert('Successfully Image Uploaded!'); */
	                                   
	                              /*   }).on('httpUploadProgress', function (progress) {
	                                    var uploaded = parseInt((progress.loaded * 100) / progress.total);
	                                    $("progress").attr('value', uploaded);
	                                }); */
	                                
	                                
	                                
	            	s3.putObject ({
	                    ACL: 'public-read',
	                    Bucket: bucketName,
	                    Key: filePath,
	                    Body: file
	                }, function(err, data) {
	                    
	        								if(err) {
	                                                <!-- reject('error'); -->
	        										 alert('Unable Image Uploaded!');
	                                            }
	                                            
	                                           /*  alert('Successfully Image Uploaded!'); */
	        			
	        			
	                });
	                              
	                                
 
	                }
	      
	     
	 function getchap(){
		  var examid=examTypeId;
		  
			var examtype =  {
					
					"examTypeId":examid,
					
					}


			var examids = JSON.stringify(examtype);

		$.ajax({
	  type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	
	  url: base_url+'rest/subject/v1/getSubjects',
	  data:examids,
				success:function(data){
					 var tabledata = '';
					 for(var i =0; i<data.length;i++){
						 
					 
		 			tabledata +='<option style="background:#fff" value="'+data[i].id+'">'+data[i].subject+'</option>';
		 			
					 }
				  $("#regarding").empty("");
			        $("#regarding").append('<option style="background:#fff" value="";>---Select---</option>'); 
					 $("#regarding").append(tabledata); 
					
				},
					
					error:function(){
						  alert("");
					}
				});
				
		 
	 }
	 
	   var file="";
	   var filePath="";
	   var fileName1 ="";
	   var feedback ="";
	   var regarding="";
	   var  createdby="";
	   var  studentId="";
	 function addfeedback(){

	   	
			var feedback = $("#editor1").val();
			 
	    		var regarding = $("#regarding").val();
	    		
	    		
	    		var  createdby= $("#stdname").val();
             var  studentId = $("#studentid").val();
             
             if(feedback == "" || feedback==null){
            	 
            	 alert("Please Write Feedback ");
            	 return false;
            	 
 	    	}
             
             var files = document.getElementById('fileUpload').files;
             
             if(files.length==0){
	            		
	            		alert("please upload image");
	            		
	            		return false;
	            		
	            	}
             
             $("#submited").empty("");

     	  	$("#submited").html("Uploading Please wait.....");
     	  	
 
	                if (files) 
	                {
	                	
	                	   var d = new Date();
		                   time_stamp = d.getTime();
		                    
	                    file = files[0];
	                    
	                     fileName1 = file.name;
	                    
	                  
	                }
	                    var photo = fileName1;
	    	    		
				var inputData = '{"subjectId":"'+regarding+'","student_doubt":"'+feedback+'","student_doubt_image":"'+photo+'","insertedBy":"'+createdby+'","studentId":"'+studentId+'","sourceType":"web"}';
				
	var covfedd = inputData.replace(/\n/g, "\\n")
	               .replace(/\r/g, "\\r")
	               .replace(/\t/g, "\\t")
	               .replace(/\f/g, "\\f");
				   
			//var appenddata = '';
			   jQuery.ajax({
				  type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				 url: base_url+'rest/doubts/v1/newDoubt',
				  data:covfedd,
				  success: function(data){
					  /*appenddata += data.message;*/    
				 
					
					updte(data.details);
					  
				
					 /*  alert('feedback saved successfully'); */
					  
				  },
				  error: function(data) {	
					  var tab="";
						var msssg=data.responseJSON.errorMessage;
						
						  if(msssg === "Please subscribe to ask your doubts"){
							  
							tab='<div class="modal-header" id="head">'+
								     '<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500" onclick="hjgdh()">'+
								              '<i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>'+
								           '</button>'+
								           '<div style="display:flex;">'+
								           	'<h6 style="color:#FFA500"><span></span>Hey'+'<span id="studentNames">,'+studentname+'</span></h6>'+
								          '</div>'+
								     '</div>'+
								     
								         '<div class="modal-body text-center" style="">'+
								         '<h6>'+msssg+'</h6>'+
								         '<button type="button" class="btn btn-default mt-20" style="border:1px solid orange;background:orange;color:white" data-dismiss="modal" onclick="hjgdh()">Ok'+'</button>'+
								        
								       '</div>';
								
					
								  
								  $("#imagsss").empty(" ");

								$('#imagsss').html(tab);   
							  
							 
							  
						  }
						  else{
						  alert(data.responseJSON.errorMessage);
						  }

				  }
				 /* complete: function(){
					  window.location = base_url+"jsp/admin/creation/categories.jsp";
				  }*/
			   });
	    	
			

	
}
	
	 
	 

	 function updte(doubtid){
		 

			$("#submited").empty("");

			$("#submited").html("Uploaded");
			
			var feedback = $("#editor1").val();
			 
	    		var regarding = $("#regarding").val();
	    		
	    		
	    		var  createdby= $("#stdname").val();
          var  studentId = $("#studentid").val();
          
		 var id=doubtid;
		 
			var ids=id.split("SKY");
			
			var idss=ids[1]-1000
		 
		  var arr = fileName1.split(".");      // Split the string using dot as separator
          
          var lastVal = arr.pop();
		  
		  var doubtids=doubtid;
          
          var fileName = doubtids+'_'+time_stamp+'.'+lastVal;
       
          /* bucketName+'/' +  fileName; */
          // CHANGING HERE
         
					  
        
          var subject=$("#regarding").val();
          
          
          var sel = document.getElementById("regarding");
          var subjectName= sel.options[sel.selectedIndex].text;
          
        /*   if(subject==1)
               filePath= bucketName+'/' + 'Physics/Images/' + fileName;
          if(subject==2)
          	 filePath= bucketName+'/' + 'Chemistry/Images/' + fileName;
          if(subject==3)
          	 filePath= bucketName+'/' + 'Maths/Images/' + fileName;
          */
         
        	  filePath= bucketName+'/'+subjectName+'/Images/' + fileName;
          
          
          
          
         /*  if(subject==1)
               filePath= bucketName+'/' + 'Physics/Images/' + fileName;
          if(subject==2)
          	 filePath= bucketName+'/' + 'Chemistry/Images/' + fileName;
          if(subject==3)
          	 filePath= bucketName+'/' + 'Maths/Images/' + fileName; */
          //UPTO HERE
          
          fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;

	 

	 			var inputData = '{"id":"'+idss+'","subjectId":"'+regarding+'","student_doubt":"'+feedback+'","student_doubt_image":"'+fileUrl+'","insertedBy":"'+createdby+'","studentId":"'+studentId+'","sourceType":"web"}';
				
	 			var covfedd = inputData.replace(/\n/g, "\\n")
	               .replace(/\r/g, "\\r")
	               .replace(/\t/g, "\\t")
	               .replace(/\f/g, "\\f");
$.ajax({
	 		type: "POST",
	 		dataType: "json",
	 		contentType: 'application/json', 

	 		url: base_url+'rest/doubts/v1/updateDoubt',
	 		data:covfedd,
	 		success:function(data){
	 			var tab="";
				  //Alert.render(data.message);
				  /* alert(data.message); */
				  	var msssg=data.message;
				  
				  tab='<div class="modal-header" id="head">'+
				     '<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">'+
				              '<i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>'+
				           '</button>'+
				           '<div style="display:flex;">'+
				           	'<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,'+studentname+'</span></h6>'+
				          '</div>'+
				     '</div>'+
				     
				         '<div class="modal-body text-center" style="">'+
				         '<h6>You have created doubt successfully'+'</h6>'+
				         '<button type="button" class="btn btn-default mt-20" style="border:1px solid orange;background:orange;color:white" data-dismiss="modal">Ok'+'</button>'+
				        
				       '</div>';
				
	
				  
				  $("#imagsss").empty(" ");

				$('#imagsss').html(tab);
				
	 			  s3upload();
	 			  
	 			 window.setTimeout(function(){
					  window.location = base_url+"jsp/student/student module/doubts.jsp";
				  }, 3000);
	 		},
	 			error:function(){
	 				  
	 			}
	 		
	 		});
	 	
	 	
	 }
	function hjgdh(){
		
		 window.location = base_url+"jsp/student/student module/subscriptionpay1.jsp";
		
	} 
	
</script>

<script>

/* document.getElementById("feedbacksimage").addEventListener("change", readFile);
function readFile() {
 
 if (this.files && this.files[0]) {
   
   var FR= new FileReader();
   
   FR.addEventListener("load", function(e) {
     document.getElementById("img").src       = e.target.result;
     document.getElementById("base67photos").value = e.target.result;
   }); 
   
   FR.readAsDataURL( this.files[0] );
 }
 
} */


</script>