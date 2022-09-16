<%@page import="com.zomant.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,com.ccavenue.security.*"%>
<%@page import="com.zomant.dao.StudentDao2"%>
<%@page import="com.zomant.dao.StudentDao"%>
<%@page import="com.zomant.dao.AdminDao"%>
<%@page import="com.zomant.dao.SalesManDao"%>
<%@page import="com.zomant.io.response.WalletTotalAmtRes"%>
<%@page import="com.zomant.entity.StudentSubscription"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="com.zomant.util.EntityManagerFactoryProvider"%>
<%@page import="com.zomant.util.AppConstants"%>
<%
	//String workingKey = "2A6DC435E6A7325AF9B83E149CD03F49";
	//String workingKey = "5EF035F3E745976AFD9013927040A78F";		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.(skygets)
	//String workingKey = "10DCD7A6F2683BCB837CC7D58DC91EDA";//(testing)
	String razorpay_payment_id= request.getParameter("razorpay_payment_id");
	String razorpay_order_id= request.getParameter("razorpay_order_id");
	String razorpay_signature= request.getParameter("razorpay_signature");
	///
		
		//long orderId= Long.parseLong("razorpay_order_id");
		StudentSubscription stdSubTemp = null;
		EntityManagerFactory EMF = EntityManagerFactoryProvider.get();
		EntityManager em = EMF.createEntityManager();
		try{
	stdSubTemp = (StudentSubscription) em.createQuery("SELECT a FROM StudentSubscription a where  a.razorpayID =:orderId")
			.setParameter("orderId",razorpay_order_id)
			.getSingleResult();
		}catch(Exception ex){
	//custLogger.info("error at stdSubTemp" +ex.toString());
	
		}
		if(stdSubTemp != null ){
	
	boolean flag=false;
	stdSubTemp.setTransactionId(razorpay_payment_id);
	stdSubTemp.setPaymentType("razorpay");
	stdSubTemp.setPaymentstatus("Success");
		
	if(stdSubTemp.getPaymentstatus().equalsIgnoreCase("Success"))
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
		StudentDao2.STUDENT.updateStudentValidSubscription(stdSubTemp.getId(),AppConstants.SUBSCRITION_PAID,stdSubTemp.getStudentId());	
		
		if(stdSubTemp.getEmiDetailsId()==0){
		try {
	SalesManDao salesman=new SalesManDao();
	salesman.storeInSalesmanSalesReport(stdSubTemp.getPlanId(),stdSubTemp.getStudentId());
	System.out.println(" in try of stpring salesman information table report tablee");
	}catch(Exception e) {
		System.out.println(" in catch of stpring salesman information table report tablee");
		e.printStackTrace();
		}
		}        
		
		if(stdSubTemp.getType().equalsIgnoreCase("downpayment")){
		try {	
	StudentDao.STUDENT.saveSubsriptionEmiDetails(stdSubTemp.getSalesOfferId());
	}catch(Exception e) {e.printStackTrace();}
		}
		
		if(stdSubTemp.getEmiDetailsId()!=0)
		StudentDao.STUDENT.updatepayedEmiStatus(stdSubTemp.getEmiDetailsId(),true);
	
		}
		try {

		String orderstatus = "Success";
		out.println(
				"<script type='text/javascript' src=https://code.jquery.com/jquery-latest.min.js'></script>");
		String base_urls = AppConstants.BASE_URL;
		out.println("<link rel='stylesheet' href='/assets/css/csstestscreen/alertify.core.css' />");
		out.println("<link rel='stylesheet' href='/assets/css/csstestscreen/alertify.default.css'>");
		out.println("<script src='/assets/js/testscreenjs/alertify.min.js'></script>");
		if (orderstatus.equalsIgnoreCase("Success")) {
			String redirect_url1fail = AppConstants.BASE_URL + "student/student module/subscriptiondetails.jsp";
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Your transaction Successful');");

			out.println("window.location.href = " + "'" + redirect_url1fail + "'");
			out.println("</script>");
		} else if (orderstatus.equalsIgnoreCase("Aborted") || orderstatus.equalsIgnoreCase("Invalid")
				|| orderstatus.equalsIgnoreCase("Failure")) {
			String redirect_url1fail = AppConstants.BASE_URL + "student/student module/subscriptionpay.jsp";
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Your transaction has  " + orderstatus + " please try again once');");

			out.println("window.location.href = " + "'" + redirect_url1fail + "'");
			out.println("</script>");

		}

	} catch (Exception e) {
	}
%>
