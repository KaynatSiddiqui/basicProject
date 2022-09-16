	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
	<%@page import="com.zomant.util.AppConstants"%>

<%-- <%@include file="/jsp/master/default.jsp" %> --%>
<%@include file="/jsp/master/validatesession.jsp" %> 
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <title>Zomant</title>
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="google-site-verification" content="" />
      <meta name="author" content=""/>
      <!-- Favicon -->
      <link rel="shortcut icon" href="favicon.ico">
      <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo/favicon.ico" type="image/x-icon">
      
      <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/jquery-ui.css">
      
      <!-- Data table CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
      <!-- Fancy-Buttons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fancy-buttons.css" rel="stylesheet" type="text/css">
      <!-- bootstrap-select CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>
      <!-- Custom CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/custom.css" rel="stylesheet" type="text/css">
      <!-- Fontawesome Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fontawesome.min.css" rel="stylesheet">
      <!-- Flat Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/flaticons/css/flaticon.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    
       <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
      </head>
   <body>
	
	 
	 <%
	 	String layout = request.getParameter("layout");
	 %>
	 
<div class="page-wrapper">
   <div class="container-fluid">
				
	<!-- Title -->
	<div class="row heading-bg">
	</div>
	<!-- /Title -->
	
	<form id="saveandnext" action="upload_parameters.jsp" method="Post">
	 
	<c:set var="layout" value="<%=layout %>"/>
	
	<c:choose>
	
      <c:when test="${layout == 'Layout_1_S_1'}">
         <%@include file="/jsp/admin/layouts/layout_1.jsp" %>
      </c:when>
	  <c:when test="${layout == 'Layout_2_S_A'}">
         <%@include file="/jsp/admin/layouts/layout_2.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_3_S_a'}">
         <%@include file="/jsp/admin/layouts/layout_3.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_4_M_A'}">
         <%@include file="/jsp/admin/layouts/layout_4.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_5_M_a'}">
         <%@include file="/jsp/admin/layouts/layout_5.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_6_M_1'}">
         <%@include file="/jsp/admin/layouts/layout_6.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_7_I'}">
      	<%@include file="/jsp/admin/layouts/layout_7.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_8_C_A'}">
      	<%@include file="/jsp/admin/layouts/layout_8.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_9_C_a'}">
      	<%@include file="/jsp/admin/layouts/layout_9.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_10_C_1'}">
      	<%@include file="/jsp/admin/layouts/layout_10.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_11_MC_A'}">
      	<%@include file="/jsp/admin/layouts/layout_11.jsp" %>
      </c:when>
      <c:when test="${layout == 'Layout_12_X'}">
      	<%@include file="/jsp/admin/layouts/layout_12.jsp" %>
      </c:when>
   </c:choose>

	</form>
  </div>		
  <input type="hidden" id="creationactive" value="testpostside"/>
			<input type="hidden" id="ulactive" value="test_post_dr"/>
			<input type="hidden" id="ulactivechild" value="test_post_child_dr"/>		
</div> 
	 
	 
	
	
	
	<!-- Main Content -->
		
			
			
		
			
			<input type="hidden" value="" id="questionId">
			<input type="hidden" value="" id="hckfields">
			<input type="hidden" value="" id="trackQH">
			<input type="hidden" value="" id="cqids">
           <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
			
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
				
		</div>
        <!-- /Main Content -->
   <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery/dist/jquery.min.js"></script>
      
  	 <script src="<%=request.getContextPath()%>/assets/css/dist/js/jquery.slimscroll.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
      <!-- Data table JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js"></script>
      <!-- Owl JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
      <!-- Switchery JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/switchery/dist/switchery.min.js"></script>
      <!-- Fancy Dropdown JS -->
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/dropdown-bootstrap-extended.js"></script>
      <!-- Init JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/init.js"></script>
      <!-- Progressbar Animation JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>
      <!-- Bootstrap Select JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
   <script src="<%=request.getContextPath()%>/assets/ckeditor/ckeditor.js"></script>  

   <!--  <script src="https://cdn.ckeditor.com/4.10.0/full-all/ckeditor.js"></script> -->
    <script src="<%=request.getContextPath()%>/assets/css/dist/js/jquery-ui.js"></script>
       
    
       <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> 
   
    <script>
 	$("#manualselect").addClass('active-page');
$(document).ready(function() {
		

	var questionId = getParameterByName('id');

	var layout = getParameterByName("layout");
	var ion = getParameterByName('ion');
	
	if(questionId!=='' && questionId !== null && ion !== "" && ion !== null) {
		
		// questionId is not null 
		
		$("#questionId").val(questionId);
		
		getQuestionDataById(questionId, function(wholeQuestionData){

			var inst = wholeQuestionData[0].instructions;
			var question = wholeQuestionData[0].question;
			
		    var singleRegex = /(_1_|_2_|_3_)/;
		    var multiRegex = /(_4_|_5_|_6_)/;
			var comprh = /(_8_|_9_|_10_)/;
  		    
  		    var intiRegex  = /_7_I/;
  		    var multiComprh = /_11_/;
  		    var matrix = /_12_X/;
			  
			    
			var hint = wholeQuestionData[0].solution;
			var concept = wholeQuestionData[0].concept;
		

			CKEDITOR.instances.Instructions.setData(inst);
			CKEDITOR.instances.question.setData(question);
			
  		    
  		  if(intiRegex.test(layout)){
				
				var answer = wholeQuestionData[0].answer
  		    	$('#answer').val(answer); 
				
			} else if(matrix.test(layout)){ 
				
				 var acan = wholeQuestionData[0].answer;
		    	  acan = acan.split('|');
		    	  for(var acx = 0;acx<acan.length;acx++){
		    		  var params = acan[acx];
		    		  
		    		  params = params.split(',');
						
					  for(var pm = 0; pm < params.length;pm++){
						  $("input[class=optionChecks"+(acx+1)+"][value="+params[pm]+"]").prop("checked",true);
						  /* $("#checkbox"+(acx+1)+""+(pm+1)).prop("checked",true); */

					  }
		    	  }
		    	  
		    	  CKEDITOR.instances.hint.setData( wholeQuestionData[0].solution["value"]);
		  		    CKEDITOR.instances.concept.setData( wholeQuestionData[0].concept["value"]);
				
			} else {
				
			   var opt1 = wholeQuestionData[0].option1;
			   var opt2 = wholeQuestionData[0].option2;
			   var opt3 = wholeQuestionData[0].option3;
			   var opt4 = wholeQuestionData[0].option4;
			   CKEDITOR.instances.option1.setData(opt1);
	  		   CKEDITOR.instances.option2.setData(opt2);
	  		   CKEDITOR.instances.option3.setData(opt3);
	  		   CKEDITOR.instances.option4.setData(opt4);
	  		   
			}
  		    CKEDITOR.instances.hint.setData(hint);
  		    CKEDITOR.instances.concept.setData(concept);
			
  		  if(singleRegex.test(layout)){

		    	var ans = wholeQuestionData[0].answer;
		    	$('input:radio[value=' + ans + ']').prop('checked', true);
		    	
		    } else if(multiRegex.test(layout)){
		    	
		    	var params = wholeQuestionData[0].answer;
				params = params.split(',');
				  
				  for(var pm = 0; pm < params.length;pm++){
					 
					  $("#checkbox"+idResolver(params[pm])).prop("checked",true);

				  }
		    	
		    } else if(matrix.test(layout)){ 
		    	
		    	
		    } else if(comprh.test(layout) || multiComprh.test(layout)){
		    	var cqids = [];
		    	
		    	var qdata = wholeQuestionData[0].questiondetails;
		    	var moreFields = (qdata.length-1);
		    	addMoreQuestions(moreFields,function(){
		    		
		    		CKEDITOR.instances.passage.setData(wholeQuestionData[0].question);
					CKEDITOR.instances.question.setData(qdata[0].question["value"]);
		  		    CKEDITOR.instances.hint.setData(qdata[0].solution["value"]);
		  		    CKEDITOR.instances.concept.setData(qdata[0].concept["value"]);
		    		
				   CKEDITOR.instances.option1.setData(qdata[0].option1["value"]);
		  		   CKEDITOR.instances.option2.setData(qdata[0].option2["value"]);
		  		   CKEDITOR.instances.option3.setData(qdata[0].option3["value"]);
		  		   CKEDITOR.instances.option4.setData(qdata[0].option4["value"]);
			  		 if(multiComprh.test(layout)){
			  			 var params = qdata[0].answer["value"];
							params = params.split(',');
							  
							  for(var pm = 0; pm < params.length;pm++){
								 
								  $("#checkbox"+idResolver(params[pm])).prop("checked",true);

							  }
			  		   } else{
			  			   $('#radio'+idResolver(qdata[0].answer["value"])).prop('checked', true);
			  		   }
		  		  
			  		cqids.push(qdata[0].id);
		    		for(var amf=0;amf<moreFields;amf++){
		    			cqids.push(qdata[amf+1].id);
		    			var fdcplus = amf+2;
						CKEDITOR.instances['question'+fdcplus].setData(qdata[amf+1].question["value"]);
			  		    CKEDITOR.instances['hint'+fdcplus].setData(qdata[amf+1].solution["value"]);
			  		    CKEDITOR.instances['concept'+fdcplus].setData(qdata[amf+1].concept["value"]);
				  		    
			  		   CKEDITOR.instances['option-'+fdcplus+'-'+'1'].setData(qdata[amf+1].option1["value"]);
			  		   CKEDITOR.instances['option-'+fdcplus+'-'+'2'].setData(qdata[amf+1].option2["value"]);
			  		   CKEDITOR.instances['option-'+fdcplus+'-'+'3'].setData(qdata[amf+1].option3["value"]);
			  		   CKEDITOR.instances['option-'+fdcplus+'-'+'4'].setData(qdata[amf+1].option4["value"]);
			  		   
			  		   if(multiComprh.test(layout)){
			  			 var params = qdata[amf+1].answer["value"];
							params = params.split(',');
							  
							  for(var pm = 0; pm < params.length;pm++){
								 
								  $("#checkbox-"+fdcplus+"-"+idResolver(params[pm])).prop("checked",true);

							  }
			  		   } else{
			  			 $('#radio-'+fdcplus+'-'+idResolver(qdata[amf+1].answer["value"])).prop('checked', true);
			  		   }
			  		   
			  		 
		    		}
		    		
		    		cqids = cqids.join(',');
		    		$("#cqids").val(cqids);
		    	});
		    	
		    }

		});

	} else {
		//questionId is null
	  sessionStorage.setItem("tpeditmode", false);	  
/* 		var testPostDetailId = localStorage.getItem('testPostDetailId');

       	window.location = base_url+"/jsp/admin/test_post/manual_view.jsp?id="+testPostDetailId; */
		
	}
	
		
	});
function adminStep1(){
	 var tid = getParameterByName('tid'); 
	 var qid = getParameterByName('id');
	 var testPostId = localStorage.getItem('testPostId');
	 var ion = getParameterByName('ion');
	 var nuofq = getParameterByName('nuofq');
	 
	 var layout = getParameterByName('layout');
	 var layoutName = getParameterByName('layoutname');
	 var questiontypeId = getParameterByName('layoutId');
	 
	 if(qid!=="" && ion === null){
		  window.location = base_url+"jsp/admin/test_post/addquestions/upload.jsp?tid="+tid+"&id="+qid+"&ion=hkwqep&nuofq="+nuofq+"&layout="+layout+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
		  sessionStorage.setItem("tpeditmode", true);
     } else if(qid!=="" && ion !== "" && ion !== null){
    	 window.location = base_url+"jsp/admin/test_post/addquestions/upload.jsp?tid="+tid+"&id="+qid+"&ion=mdg&nuofq="+nuofq+"&layout="+layout+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
    	 sessionStorage.setItem("tpeditmode", true);
     } else {
	   window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+testPostId;
     }
	 
	//window.location = base_url + "jsp/admin/test_post/addquestions/upload.jsp?tid="++"&sub=""";
	//window.location = base_url +"jsp?tid="+tid+"&id="+id+"&layout="+layout+"&nuofq="+nuofq+"&layoutname="+layoutname+"&layoutId="+layoutId+"&uid="+uid+"&chid="+uid;
	//window.location = "jsp/admin/test_post/addquestions/upload.jsp?name=" +questionId + "&layout=" + layout + "&message=" + message;
}
  	</script> 
  	
        
        
