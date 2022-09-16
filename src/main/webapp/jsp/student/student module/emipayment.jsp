<%-- <%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/assets/css/student/css/subscriptionstu/subscriptionstu.css">
<!-- <input type="hidden" id="baseURL" value="com.zomant.util.AppConstants" /> -->
 --%>
 
 <%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>

<style>

.masterOrRegularCardContainer {
   /*  display: -ms-flexbox;
    display: flex; */
    border-radius: 8px;
   /*  -webkit-box-shadow: 0 2px 8px 0 rgb(0 0 0 / 7%); */
    box-shadow: 0 2px 8px 0 rgb(0 0 0 / 7%);
    background-color: #fff;
    margin: 10px 16px;
    background-repeat: no-repeat;
    border-left:5px solid #fd7e14;
    background-size: cover;
        padding: 5px 25px;

    z-index: 2;
   /*  -ms-flex-direction: column; */
    flex-direction: column;
    word-break: break-word;
}

	.emiText{
	font-family: Gotham-Medium;
    font-size: 1.067em;
    color: #333;
    padding-bottom: 4px;
    word-break: break-word;
	}
	.dateBox{
	 
    display: flex;
       padding: 10px 0px;
   /*  align-items: center;
   
    justify-content: center; */
	}
	
	.jss380 {
    color: #333333;
    font-size: 2.8em;
    padding: 0px 17px;
    font-family: Gotham-Medium;
    letter-spacing: 0.2px;
}
</style>




<!-- 
<div class="page-wrapper">
<div class="container">

 -->
<div class="page-wrapper" style=" background: antiquewhite;">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->




<div id="emiPayment" style="margin-top:20px;"></div>


	</div>
	<%@include file="/jsp/master/footer.jsp" %>
</div>

 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
 	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<%--  <script src="<%=request.getContextPath()%>/assets/js/subscriptionstudent.js"></script> --%>
	 <script src="<%=request.getContextPath()%>/assets/landing/js/emipayment.js"></script>
