<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Response Handler</title>
</head>
<body>
<!--  order_id=2&tracking_id=108586885002&bank_ref_no=913818731328&order_status=Success&failure_message=&payment_mode=Unified Payments&card_name=UPI&status_code=null&status_message=Success¤cy=INR&amount=1.00&billing_name=Peter&billing_address=Santacruz&billing_city=Mumbai&billing_state=MH&billing_zip=400054&billing_country=India&billing_tel=0229874789&billing_email=testing@domain.com&delivery_name=&delivery_address=&delivery_city=&delivery_state=&delivery_zip=&delivery_country=&delivery_tel=&merchant_param1=&merchant_param2=&merchant_param3=&merchant_param4=&merchant_param5=&vault=N&offer_type=null&offer_code=null&discount_value=0.0&mer_amount=1.00&eci_value=null&retry=N&response_code=0&billing_notes=&trans_date=18/05/2019 18:22:09&bin_country=
	-->	
	<center>
		<font size="4" color="blue"><b>Response Page</b></font>
		<table border="1">
			 <%= request.getParameter("order_id")%>
			  <%= request.getParameter("tracking_id")%>
			   <%= request.getParameter("order_status")%>
		</table>
	</center>
</body>
</html>