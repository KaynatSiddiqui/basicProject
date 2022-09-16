 <%

 String logout = request.getParameter("logout");


	
 if(logout!=null && logout.equals("ad"))

	session.invalidate();
 %>
     <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
<!-- Main Content -->
<div class="wrapper pa-0">
<%-- <%@include file="/template/header.jsp" %>
 --%><div class="page-wrapper pa-0 ma-0 auth-page">
	<div class="container-fluid">
		<!-- Row -->
		<div class="table-struct full-width full-height">
			<div class="table-cell vertical-align-middle auth-form-wrap">
				<div class="auth-form  ml-auto mr-auto no-float">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<div class="mb-30">
								<h3 class="text-center txt-dark mb-10">Zomant Admin Login</h3>
								<h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
							</div>	
							<div class="form-wrap">
								<form method="post" id="usersubmission" action="jsp/master/otp.jsp"  >
									<div class="form-group">
										<label class="control-label mb-10" for="exampleInputEmail_2">Select Module</label>
										<select class="form-control" required="" id="userType" onchange="setRefVal(this.value);" name="type">
										
										<option value="admin">ADMIN</option>
										<option value="admintp">SUB ADMIN TESTPOST</option>
										<option value=adminzs>SUB ADMIN STUDYZONE</option>
										<option value="academichead">ACADEMIC HEAD</option>
										<option value="superdean">SUPER DEAN</option>
										<option value="dean">DEAN</option>
										<option value="sme">SME</option>
										</select>
									</div>
									<div class="form-group">
										<label class="control-label mb-10" for="exampleInputEmail_2">Mobile number</label>
										<input type="text" class="form-control" id="mobileNumber" placeholder="Enter email or mobile number">
									</div>
									<div class="form-group">
										<label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
										<input type="password" class="form-control" id="password" placeholder="Enter password">
									</div>
									<div class="form-group">
										<label class="pull-left control-label mb-10" for="exampleInputpwd_2">Pin Number</label>
										<input type="password" class="form-control" id="pinNumber" placeholder="Enter Pin number">
									</div>
									<div class="form-group">
										<a class="capitalize-font txt-primary block mb-10 pull-right font-12" href="<?php echo base_url();?>master/forgot_password">forgot password ?</a>
										<div class="clearfix"></div>
									</div>
									<div class="form-group text-center">
										<input type="submit" id="loginBtn" type="submit" class="btn btn-info btn-rounded" value="Generate Otp" onclick="validateAdmin();"/>
									</div>
								</form>
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

</div>
   <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery/dist/jquery.js"></script>
   <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/login.js"></script>
  <script>
 
  
 /* 
  $(document).ready(function(){
  var temp= window.location.href;
 
  if(temp.includes("https://www."))
  {
//  alert("The URL of this page is: " );
  }else
  {
 //   alert("The URL of : ");
     location.replace("https://www.skyget.ai/jsp/master/login.jsp");
  
  } 
  
 
  }); 
   */
  
  </script>
  
  <%

 String status = request.getParameter("status");


	
 if(status!=null && status.equals("403"))
 {
	 %>
     <script>
    
     logoutadmin();
   
     </script>
 <%
 }

 %> 
     
  