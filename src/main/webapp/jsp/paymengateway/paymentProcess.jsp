<%@page import="com.zomant.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<%@page import="com.zomant.dao.StudentDao2"%>
<%@page import="com.zomant.dao.AdminDao"%>
<%@page import="com.zomant.io.response.WalletTotalAmtRes"%>
<%@page import="com.zomant.entity.StudentSubscription"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="com.zomant.util.EntityManagerFactoryProvider"%>
<%@page import="com.zomant.util.AppConstants"%>
	<%
	String workingKey = "2A6DC435E6A7325AF9B83E149CD03F49";
	//String workingKey = "5EF035F3E745976AFD9013927040A78F";		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.(skygets)
	//String workingKey = "10DCD7A6F2683BCB837CC7D58DC91EDA";//(testing)
	String encResp= request.getParameter("encResp");
		AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
		String decResp = aesUtil.decrypt(encResp);
		StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
		Hashtable hs=new Hashtable();
		String pair=null, pname=null, pvalue=null;
		while (tokenizer.hasMoreTokens()) {
			pair = (String)tokenizer.nextToken();
			if(pair!=null) {
				StringTokenizer strTok=new StringTokenizer(pair, "=");
				pname=""; pvalue="";
				if(strTok.hasMoreTokens()) {
					pname=(String)strTok.nextToken();
					if(strTok.hasMoreTokens())
						pvalue=(String)strTok.nextToken();
					hs.put(pname, pvalue);
				}
			}
		}
		
		long orderId= Long.parseLong(hs.get("order_id").toString());
		StudentSubscription stdSubTemp = null;
		EntityManagerFactory EMF = EntityManagerFactoryProvider.get();
		EntityManager em = EMF.createEntityManager();
		try{
			stdSubTemp = (StudentSubscription) em.createQuery("SELECT a FROM StudentSubscription a where  a.id =:orderId")
					.setParameter("orderId",orderId)
					.getSingleResult();
		}catch(Exception ex){
			//custLogger.info("error at stdSubTemp" +ex.toString());
			
		}
		if(stdSubTemp != null ){
			
			boolean flag=false;
			stdSubTemp.setTransactionId(hs.get("tracking_id").toString());
			stdSubTemp.setPaymentType(hs.get("payment_mode").toString());
			stdSubTemp.setPaymentstatus(hs.get("order_status").toString());
		
			if(hs.get("order_status").toString().equalsIgnoreCase("Success"))
			{
			
						if (stdSubTemp.getFromWalletAmountUsed() < 0) {
					WalletTotalAmtRes walletRes = new WalletTotalAmtRes();
					walletRes.setStudentId(stdSubTemp.getStudentId());
					walletRes.setTotalWalletAmt(stdSubTemp.getFromWalletAmountUsed());
					AdminDao.ADMIN.ReduceSubscribtionAmt(walletRes);
		
					}
						flag=true;
						
			
				stdSubTemp.setPaid(true);
			}
			em.getTransaction().begin();
			em.persist(stdSubTemp);
			em.getTransaction().commit();
			
			   if(flag)
				StudentDao2.STUDENT.updateStudentValidSubscription(orderId,AppConstants.SUBSCRITION_PAID,stdSubTemp.getStudentId());	
			
		}
		
		try {

String orderstatus = hs.get("order_status").toString();
out.println(
"<script type='text/javascript' src=https://code.jquery.com/jquery-latest.min.js'></script>");	
String base_urls = AppConstants.BASE_URL;
 out.println("<link rel='stylesheet' href='/assets/css/csstestscreen/alertify.core.css' />");
	out.println("<link rel='stylesheet' href='/assets/css/csstestscreen/alertify.default.css'>");
	out.println("<script src='/assets/js/testscreenjs/alertify.min.js'></script>");
if(hs.get("order_status").toString().equalsIgnoreCase("Success"))
			{
				String redirect_url1fail = AppConstants.BASE_URL+"student/student module/subscriptiondetails.jsp";
				out.println("<script type=\"text/javascript\">");
   out.println("alert('Your transaction Successful');");
 
   out.println("window.location.href = " + "'" + redirect_url1fail + "'");
   out.println("</script>");
			}else if(hs.get("order_status").toString().equalsIgnoreCase("Aborted") || hs.get("order_status").toString().equalsIgnoreCase("Invalid") || hs.get("order_status").toString().equalsIgnoreCase("Failure"))
			{
				String redirect_url1fail = AppConstants.BASE_URL+"student/student module/subscriptionpay.jsp";
				out.println("<script type=\"text/javascript\">");
   out.println("alert('Your transaction has  " + orderstatus + " please try again once');");
 
   out.println("window.location.href = " + "'" + redirect_url1fail + "'");
   out.println("</script>");
				
					
			}
			

} catch (Exception e) {
}
		
		
		
		
		
	%>
			