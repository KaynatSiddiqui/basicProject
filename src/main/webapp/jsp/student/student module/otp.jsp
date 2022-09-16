
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.zomant.util.AppConstants"%>

<link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/custom.css" rel="stylesheet" type="text/css">
      <!-- Fontawesome Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fontawesome.min.css" rel="stylesheet">
      <!-- Flat Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/flaticons/css/flaticon.css" rel="stylesheet">

<%-- <% 
   String AdminType=request.getParameter("type");
   request.setAttribute("AdminType", AdminType);


   %>
   
       <c:set var="AdminType" value="${AdminType }" scope="session"  /> --%>
<!-- Main Content -->
<div class="page-wrapper pa-0 ma-0 auth-page">
	<div class="container-fluid">
		<!-- Row -->
		<div class="table-struct full-width full-height">
			<div class="table-cell vertical-align-middle auth-form-wrap">
				<div class="auth-form  ml-auto mr-auto no-float">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<div class="mb-30">
								<h3 class="text-center txt-dark mb-10">Zomant Student Registeration</h3>
								<h6 class="text-center nonecase-font txt-grey">Enter Received Otp</h6>
							</div>	
							<div class="form-wrap">
								
									<div class="form-group">
										
										<input type="text" class="form-control" id="genrat" placeholder="Enter Received Otp">
									</div>
									<div class="form-group">
										<a class="capitalize-font txt-primary block mb-10 pull-right font-12" onclick="regenerateotp()" style="cursor:pointer">Generate New Otp</a>
										<div class="clearfix"></div>
									</div>
									<div class="form-group text-center">
										<input type="submit" id="otpbtn" type="submit" class="btn btn-info btn-rounded" value="Validate" onclick ="otpvalidate()"/>
									</div>
							
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
		<!-- /Row -->	
	</div>
	 
</div>
<!-- /Main Content -->

<script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
  
	<script src="<%=request.getContextPath()%>/assets/js/login.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>