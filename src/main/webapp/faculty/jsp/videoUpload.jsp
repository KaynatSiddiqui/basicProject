<%@page import="java.io.OutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>


<%
try {
			//out.println("Attempting to make a credit card payment");
		//	String requestAuth = request.getHeader("Authorization");
			//String url = "https://api.sandbox.paypal.com/v1/payments/payment";
			int BUFFER_SIZE = 4096;
			String url = "https://skygetvideos.s3.ap-south-1.amazonaws.com/";//"https://api.paypal.com/v1/payments/payment";
	 		String contentType = "application/json";
			String accept = "application/json";
			//String authorization = "Bearer A015Qgvg0GebZFy1Em79NjCtKtlQTkRS4nQSxzUGx59DO2w";
			//String authorization = requestAuth;
		//	String jsonData = request.getParameter("myjsondata");
			String filePath =  request.getParameter("localVid");//"E://Aravind.mp4";
			//String jsonData = "{\"transactions\": [{\"amount\": {\"total\": \"1.00\",\"currency\": \"USD\"},\"description\": \"order description\"}],\"payer\": {\"payment_method\":\"credit_card\",\"funding_instruments\": [{\"credit_card\": {\"last_name\": \"Jaya\",\"expire_year\": \"2017\",\"first_name\": \"Jaya\",\"expire_month\": \"8\",\"number\": \"4640182065236055\",\"cvv2\": \"267\",\"type\": \"visa\"}}]},\"intent\": \"sale\"}";
			
			java.net.URL myURL = new java.net.URL(url);
			java.net.HttpURLConnection httpsConnection = (java.net.HttpURLConnection) myURL.openConnection();
			httpsConnection.setRequestMethod("POST");
			httpsConnection.setRequestProperty("Accept", accept);
			httpsConnection.setRequestProperty("Content-Type", contentType);
		//	httpsConnection.setRequestProperty("Authorization", authorization);
			httpsConnection.setDoInput(true);
			httpsConnection.setDoOutput(true);
			httpsConnection.setConnectTimeout(60000);  //60 Seconds
			httpsConnection.setReadTimeout(60000);  //60 Seconds
		/*	java.io.DataOutputStream postOut=new java.io.DataOutputStream(httpsConnection.getOutputStream());
			postOut.writeBytes(jsonData);
			postOut.flush();
			postOut.close();*/
			OutputStream outputStream = httpsConnection.getOutputStream();
			FileInputStream inputStream = new FileInputStream(filePath);
			byte[] buffer = new byte[BUFFER_SIZE];
			int bytesRead = -1;
			while ((bytesRead = inputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
			}
			outputStream.close();
			inputStream.close();
			
			String sResponse = "";
			int responseCode=httpsConnection.getResponseCode();
			//out.println("Response Code : " + responseCode);
			  if (responseCode == java.net.HttpURLConnection.HTTP_OK || 
					  responseCode == java.net.HttpURLConnection.HTTP_CREATED) {
			    String line;
			    java.io.BufferedReader br=new java.io.BufferedReader(new java.io.InputStreamReader(httpsConnection.getInputStream()));
			    while ((line=br.readLine()) != null) {
			    	sResponse+=line;
			    }
			    System.out.println(sResponse);
			  }
			 else {
			    //out.println("HTTPs request failed with error code: "+ responseCode);
				 String line;
				    java.io.BufferedReader br=new java.io.BufferedReader(new java.io.InputStreamReader(httpsConnection.getInputStream()));
				    while ((line=br.readLine()) != null) {
				    	sResponse+=line;
				    }
				    System.out.println(sResponse);
			  }
			
			//out.println("<br><br>Credit Card Payment successful");
			//.setContentType(contentType);
			//response.setStatus(201);
		}
		catch(Exception e) {
			System.out.println("Error while processing transaction. Error is : " + e.toString());
		}
		
		
	
	 %>