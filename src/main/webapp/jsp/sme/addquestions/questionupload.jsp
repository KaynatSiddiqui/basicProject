<%-- <%-- <%@page import="com.sun.research.ws.wadl.Request"%>
<%@page import="com.fdgapp.dao.QuestionsDao"%>
<%@page import="com.fdgapp.io.request.CreateQuestionRequest"%> 
<%@include file="/jsp/master/default.jsp" %>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONValue"%>

<%

String category =(String) session.getAttribute("category");
String examType = (String) session.getAttribute("examType");
String standard = (String)  session.getAttribute("standard");
String subject =(String)  session.getAttribute("subject");
String unit =  (String) session.getAttribute("unit");
String chapter = (String)  session.getAttribute("chapter");
String questionType =  (String) session.getAttribute("questionType");

String instructions =(String)session.getAttribute("instructions");
String question = (String)session.getAttribute("question");
String radio = (String)session.getAttribute("radio");
String option1 =(String)session.getAttribute("option1") ;
String option2 = (String)session.getAttribute("option2");
String option3 = (String)session.getAttribute("option3");
String option4 = (String)session.getAttribute("option4");
String hint = (String)session.getAttribute("hint") ;
String concept = (String) session.getAttribute("concept");

String topicbelongsto = (String) session.getAttribute("topicbelongsto");
String levelradio = (String) session.getAttribute("levelradio");
String conceptualquestions = (String) session.getAttribute("conceptualquestions");
String numericalquestions = (String) session.getAttribute("numericalquestions") ;
String ValuationQuestions =(String) session.getAttribute("ValuationQuestions");
String graphquestions = (String) session.getAttribute("graphquestions") ;;

String previousyear1 = (String) session.getAttribute("previousyear1");
String previousyear2 = (String) session.getAttribute("previousyear2");
String impquestions = (String) session.getAttribute("impquestions");
String comments = (String) session.getAttribute("comments");

String examcategory = (String) session.getAttribute("examcategory") ;



%>





<%

CreateQuestionRequest crequest = new CreateQuestionRequest();



System.out.println("category"+category);
System.out.println("qtytyry "+questionType);
System.out.println("instructions"+instructions);
System.out.println("option3"+option3);
System.out.println("option1"+option1);
System.out.println("levelradio"+levelradio );
System.out.println("topicbelongsto"+topicbelongsto);

crequest.setCategory(category);
crequest.setExamtype(examType);
crequest.setStandard(standard);
crequest.setSubject(subject);
crequest.setUnit(unit);
crequest.setChapter(chapter);
crequest.setQuestiontype(questionType);


crequest.setInstructions(instructions);
crequest.setQuestion(question);
crequest.setOption1(option1);
crequest.setOption2(option2);
crequest.setOption3(option3);
crequest.setOption4(option4);
crequest.setAnswer(concept);
crequest.setSolution(hint);
crequest.setConcept(concept);


crequest.setBelong_topic(topicbelongsto);
crequest.setDifficulty_level(levelradio);
if(conceptualquestions.equalsIgnoreCase("Yes"))
{
	crequest.setConceptual(true);
	
}else{
	crequest.setConceptual(false);

}
if(numericalquestions.equalsIgnoreCase("Yes"))
{
	crequest.setNumerical(true);
	
}else{
	crequest.setNumerical(false);

}
if(graphquestions.equalsIgnoreCase("Yes"))
{
	crequest.setGraph(true);
	
}else{
	crequest.setGraph(false);

}
if(ValuationQuestions.equalsIgnoreCase("Yes"))
{
	crequest.setValuation(true);
	
}else{
	crequest.setValuation(false);

}


crequest.setPreviouyear_mainquestions(previousyear1);
crequest.setOther_competitiveexams(previousyear2);
crequest.setOther_competitiveexams_year(previousyear2);
crequest.setVeryimpquestion(Boolean.valueOf(impquestions));
crequest.setComments(comments);

System.out.println("question uploaded request "+crequest.toString());
boolean status = createQuestion(crequest);

String url="";


if(status)
{
	/* response.sendRedirect("upload.jsp"); */
	System.out.println("question uploaded sucessfully");
	url="upload.jsp";

}else
{
	/* response.sendRedirect("upload_preview.jsp"); */
	System.out.println("not uploaded sucessfully");
	url="upload_preview.jsp";
}

RequestDispatcher rd = request.getRequestDispatcher(url);
rd.forward(request, response);

%>



<%!
	
 
 public boolean createQuestion(CreateQuestionRequest createQuestionRequest)

	{
			QuestionsDao dao =QuestionsDao.QUESTIONS;
			boolean status =dao.createQuestion(createQuestionRequest);

			System.out.println(status);
			if(status)
			{
				/* response.sendRedirect("upload.jsp"); */
				
				System.out.println("question uploaded sucessfully");
		
			}else{
				
				/* response.sendRedirect("upload_preview.jsp"); */
				System.out.println("not uploaded sucessfully");
		
			}
			return status;

	}
			
%> 
	}



 --%>