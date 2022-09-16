<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/feedbacks.css" rel="stylesheet">

	<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
					
				</div>
				<!-- /Title -->
			<%-- 
					<input type="hidden" id="studenactive" value="studentfeedback"/>
					
				<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/feedback/feedbackwhite.svg"/>
			 --%>
				<input type="hidden" id="studentid" value="">
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-1 col-xs-6 pull-left left">
									<a href="#" class="right inline-block full-screen mr-15">
										<span><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Feedback_head_color.svg" id="paddon" width="240px"></span>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="button-list">
									<a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks.jsp" class="feedbacks_heading active mr-20 foo"><img  src="<%=request.getContextPath()%>/assets/images/students/posted_color-brown_svg.svg" id="bg" width="40px">&nbsp;&nbsp;Posted</a>
									<a href="<%= AppConstants.BASE_URL %>student/student module/feedbacks_post_new.jsp" class="feedbacks_heading mr-20 soo"><img  src="<%=request.getContextPath()%>/assets/images/students/postnew_gray.png" id="gb" width="40px">&nbsp;&nbsp;Post New</a>
								</div>
							</div>
						</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row mt-30" id="feedback_body">
										
									
										
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
		<div id="modal01" class="codal" onclick="this.style.display='none'">
			<span class="close">&times;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<div class="modalcontent">
				<img id="img01" style="height:555px">
			</div>
		</div>
		<!--  <input type="hidden" id="creationactive" value="usefulside"/>
			<input type="hidden" id="ulactive" value="useful"/> -->
			
		<%@include file="/jsp/master/footer.jsp" %>
	
						</div> 
				<div class="modal" id="replymodal">
														    <div class="modal-dialog">
														      <div class="modal-content">
														      
														        <!-- Modal Header -->
														        <div class="modal-header">
														         <h4 class="fonkar">Hey,<span id="relyname"></span></h4>
														          <h4 class="modal-title">Reply Message By admin</h4>
														          <button type="button" class="close" data-dismiss="modal">&times;</button>
														        </div>
														        
														        <!-- Modal body -->
														        <div class="modal-body">
														        <h6 id="replyadmin" style='text-transform:lowercase !important'> </h6>
														         </div>
														        
														        <!-- Modal footer -->
														        <div class="modal-footer">
														          <button type="button" class="btn btn-default" data-dismiss="modal">Ok Got It!</button>
														        </div>
														        
														      </div>
														    </div>
														  </div>		
				
				<!-- /Row -->
    </div>
			<!-- /Row -->
			</div>
			
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	
	
	<script type="text/javascript">
	/*  var page = $("#studenactive").val();
	   $("#"+page).addClass('feedbackactive');
	   $("#feedbacktext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#feedbackgrey").attr("src",icon);  */
	</script>
	<script>
	 $(document).ready(function(){
		 var loginData = getLoginData();
		/*  $("#nme").html(loginData.name);
		 $("#cty").html(loginData.city);
		 $("#sts").html(loginData.state);
		 $("#stdid").html(loginData.studentid);
		 $("#studentid").val(loginData.studentid); */
	
			var appenddata="";
			   var studentid = $("#studentid").val();
			$.ajax({
				url: base_url+'rest/feedback/v1/getposteddetails/'+loginData.studentid,
				type:"GET",
				dataType:"json",
				contentType:'application/json',
				success:function(data){
					for(i=0;i<data.length;i++){
						
					appenddata += '<div class="col-sm-9 col-sm-offset-2 ff card-1">'+
				          '<div class="row">'+
				     '<div class="col-sm-2">'+
				    ' <p id="fbtxtstl">'+data[i].regarding+'</p>'+
				     '</div>'+
				     '<div class="col-sm-5 col-sm-offset-5">'+
				     '<div class="row">'+
				     '<div class="col-xs-6 col-sm-offset-3">'+
				     '<span id="fbtxtstl">'+data[i].date+'</span> '+
				     '</div>';
				     if(data[i].photo == "" || data[i].photo == null ){
				    	 appenddata +=  '<div class="col-xs-1"><img src= "http://via.placeholder.com/150x150" width="50px" class="imgstyl modal-hover-opacity" onclick="onClick(this)"> </div>';
				     }
				     else{
				    	 appenddata    += '<div class="col-xs-1"> <img src='+data[i].photo+'  class="imgstyl modal-hover-opacity" id="imageonclick" data-toggle="modal" onclick="onClick(this)"> </div>';
					     }
				    
				     appenddata    +=  '<div class="col-xs-1">'+
				      '<a id="feedbachid" data-id="'+data[i].feedbackId+'" data-toggle="tooltip" ><i class="fa fa-trash" aria-hidden="true" style="font-size:25px; color:red;"></i></a>'+
				     '</div>'+
				    ' </div>'+
				     '</div>'+
				     '</div>'+
				     
				     '<div class="feedbackcont">'+
				     '<p style="text-align:center;color:black;word-wrap: break-word;" id="">'+data[i].feedback+' </p>'+
				     '</div>';
				     if(data[i].reply == "" || data[i].reply == null){
				    	 appenddata   += '<div class="col-xs-1 col-xs-offset-11 fbv">'+
				   '<a href="#" id="replybyad" data-id="'+data[i].reply+'"  data-toggle="modal" data-target="#replymodal"><i class="fa fa-eye fa-2x" aria-hidden="true"  style="font-size:25px;"></i></a>'+
				     '</div>';
				     }
				     else{
				    	 appenddata   += '<div class="col-xs-1 col-xs-offset-11 fbv">'+
				    	 '<a href="#" id="replybyad" data-id="'+data[i].reply+'"  data-toggle="modal" data-target="#replymodal"><i class="fa fa-eye fa-2x" style="color: #22b14c" aria-hidden="true"></i></a>'+
				    	 '</div>';
				     }
				     appenddata +=	'</div>';
					
					}
			    	$("#feedback_body").empty();
					$("#feedback_body").append(appenddata);
					
				},
				error:function(data){
					alert(data.responseJSON.errorMessage);
				}
			});
	 });
	 $(document).on("click", "a[id^=feedbachid]", function() {
		   	var id = $(this).attr('data-id');
		   	var con = confirm("Are you Sure to delete?");
		   	var pon = confirm("Really are you Sure?");
			  if(con == true){
				  if(pon == true){

		   		$.ajax({
		   	  type: "GET",
		  	  contentType: 'application/json', 
		  	  url: base_url+'rest/feedback/v1/deletefeedbacksforStudentAndParent/'+id,
		  	  success: function(data){	  
		  		  if(data.status){
		   		alert(data.message);
		   		$("#feedbachid"+id).remove();
		   	  window.setTimeout(function(){
				  window.location = base_url+"jsp/student/student module/feedbacks.jsp";
			  }, 1000);
		  		  }
		  		  },
		  	    
		  	  error: function(data){
			   		alert(data.responseJSON.errorMessage);
			   	}

		});
			  }}});
	 
	 
	 $(document).on("click", "a[id^=replybyad]", function () {
	        var id = $(this).attr('data-id');
	       
	    $("#replyadmin").html(id);
	       });
	 $(document).on("click", "#imageonclick", function () {
		 var src = this.src;
		 $("#img01").attr("src",src);
	       });
	 
	    
		var LoginData = getLoginData();
	    
	  $("#feedname").html(LoginData.name);
	  
	  $("#relyname").html(LoginData.name);
</script>

<script>

function onClick(element) {
	  document.getElementById("img01").src = element.src;
	  document.getElementById("modal01").style.display = "block";
	}

</script>