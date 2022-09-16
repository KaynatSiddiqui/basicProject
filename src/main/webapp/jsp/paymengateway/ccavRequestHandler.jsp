<%
/*
   This is the sample Checkout Page JSP script. It can be directly used for integration with CCAvenue if your application is developed in JSP. You need to simply change the variables to match your variables as well as insert routines (if any) for handling a successful or unsuccessful transaction.
*/
%>
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
	<title>Sub-merchant checkout page</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<%
	 /* String accessCode= "AVOS83GC84AL86SOLA";		//Put in the Access Code in quotes provided by CCAVENUES.(skygets)
	 String workingKey = "5EF035F3E745976AFD9013927040A78F";    //Put in the 32 Bit Working Key provided by CCAVENUES.  (skygets) */
	 String accessCode= "AVEF90HA22CN31FENC";		//Put in the Access Code in quotes provided by CCAVENUES.(skygets)
	 String workingKey = "2A6DC435E6A7325AF9B83E149CD03F49";    //Put in the 32 Bit Working Key provided by CCAVENUES.  (skygets)
//String accessCode= "AVED02GF78CG76DEGC";		//(testing)
//String workingKey = "10DCD7A6F2683BCB837CC7D58DC91EDA"; //(testing)
	Enumeration enumeration=request.getParameterNames();
	 String ccaRequest="", pname="", pvalue="";
	 while(enumeration.hasMoreElements()) {
	      pname = ""+enumeration.nextElement();
	      pvalue = request.getParameter(pname);
	      ccaRequest = ccaRequest + pname + "=" + pvalue + "&";
	 }
	 AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
	 String encRequest = aesUtil.encrypt(ccaRequest);
	%>
	<%-- //testing purpose
	<form id="nonseamless" method="post" name="redirect" action="https://test.ccavenue.com/transaction.do?command=initiateTransaction" /> 
		<input type="hidden" id="encRequest" name="encRequest" value="<%= encRequest %>">
		<input type="hidden" name="access_code" id="access_code" value="<%= accessCode %>">
		<script language='javascript'>document.redirect.submit();</script>
	</form> --%>
	
	<form id="nonseamless" method="post" name="redirect" action="https://secure.ccavenue.com/transaction.do?command=initiateTransaction" /> 
		<input type="hidden" id="encRequest" name="encRequest" value="<%= encRequest %>">
		<input type="hidden" name="access_code" id="access_code" value="<%= accessCode %>">
		<script language='javascript'>document.redirect.submit();</script>
	</form>
 </body> 
</html>
