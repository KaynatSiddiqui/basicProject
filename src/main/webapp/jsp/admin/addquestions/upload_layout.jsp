	<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

	 
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
</div> 
	 
	 
	
	
	
	<!-- Main Content -->
		
			
			
			
			
			<input type="hidden" value="" id="questionId">
			<input type="hidden" value="" id="hckfields">
		<input type="hidden" value="" id="trackQH">
		<input type="hidden" value="" id="cqids">
           <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/admindb.js"></script>
				
		</div>
        <!-- /Main Content -->
 
  	
    <script>
$(document).ready(function() {
		
	
	
	var questionId = getParameterByName('id');
	
	var layout = getParameterByName("layout");
	
	
		if(questionId!=='' && questionId !== null) {
			

			// questionId is not null 
			
			$("#questionId").val(questionId);
			
			getSQBQuestionDataById(questionId, function(wholeQuestionData){
				
				fillLayoutFields(wholeQuestionData,layout);

			});

		} else {
	
			sessionStorage.setItem("editmode", false);
			
		}
	
		
	});
function fillLayoutFields(wholeQuestionData,layout){
	
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
		
	}else if(matrix.test(layout)){ 
		
		 var acan = wholeQuestionData[0].answer;
    	  acan = acan.split('|');
    	  for(var acx = 0;acx<acan.length-1;acx++){
    		  var params = acan[acx];
    		  
    		  params = params.split(',');
				
			  for(var pm = 0; pm < params.length;pm++){
				  $("input[class=optionChecks"+(acx+1)+"][value="+params[pm]+"]").prop("checked",true);
				  /* $("#checkbox"+(acx+1)+""+(pm+1)).prop("checked",true); */

			  }
    	  }
    	  
    	  CKEDITOR.instances.hint.setData( wholeQuestionData[0].solution["value"]);
  		    CKEDITOR.instances.concept.setData( wholeQuestionData[0].concept["value"]);
		
	}else {
		
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
    	if(params!=="" && params !== null){
    		params = params.split(',');
			  
			  for(var pm = 0; pm < params.length;pm++){
				 
				  $("#checkbox"+idResolver(params[pm])).prop("checked",true);

			  }
    	} else {
    		alert("Answer not found!");
    	}
		
    }else if(matrix.test(layout)){
    	
    	
    	
    }else if(comprh.test(layout) || multiComprh.test(layout)){
    	var cqids = [];
    	
    	var qdata = wholeQuestionData[0].sqbQuestionDetails;
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
	  			 var params = qdata[0].answer;
					params = params.split(',');
					  
					  for(var pm = 0; pm < params.length;pm++){
						 
						  $("#checkbox"+idResolver(params[pm])).prop("checked",true);

					  }
	  		   } else{
	  			   $('#radio'+idResolver(qdata[0].answer)).prop('checked', true);
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
	  			 var params = qdata[amf+1].answer;
					params = params.split(',');
					  
					  for(var pm = 0; pm < params.length;pm++){
						 
						  $("#checkbox-"+fdcplus+"-"+idResolver(params[pm])).prop("checked",true);

					  }
	  		   } else{
	  			 $('#radio-'+fdcplus+'-'+idResolver(qdata[amf+1].answer)).prop('checked', true);
	  		   }
	  		   
	  		 
    		}
    		
    		cqids = cqids.join(',');
    		$("#cqids").val(cqids);
    	});
    	
    }		
}
  	</script> 
        
        
