<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>

<style>
.row1{
margin-top: 50px;
}
.row1 .col-sm-4 p{
text-align:center;
font-size: large;
}
.wraper{
border: 2px solid darkgray;;
    border-radius: 25px;
    width: 348px;
    /* height: 107px; */
    padding: 15px;
    text-align: center;

}

.block{
border-bottom: 2px solid darkgray;
    padding: 8px;
}
.blocks{
padding: 5px;
}

.tablem{
   width: 50%;
   margin: 0 auto;
   margin-top: 47px;
}
</style>
<div class="page-wrapper" >


<div class="row row1">
<div class="col-sm-4">
<div class="row ">
    <div class="col-lg-4" style="text-align: end;">
        
        </div>
        <div class="col-lg-8" style="/* margin-right: -3px; */margin-left: -37px;">
        
            <p><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Ernings.svg" width="40px" alt="">&nbsp;&nbsp;<span style="vertical-align:super"> Live Zone Earnings :&nbsp;&nbsp;<span style="color: dodgerblue;" id="livezoneearnings">- Rs. 960</span></span></p>
            </div>
    </div>
</div>

<div class="col-sm-4 col-sm-offset-4">
<!-- <ul id="targetdetails">

<li><p><span><span id= "testtakenandearn"></span></span id="testtype">         <span id="" style="padding-left: 10px; color: darkorange;">-Rs.<span id="amount"></span></span></p></li>
<li><p><span><span></span></span>Mock-Test            <span style="padding-left: 30px;color: darkorange;">-Rs.100</span></p></li>
<li><p><span><span></span></span>Full-Syllabus        <span style="padding-left: 15px;color: darkorange;">-Rs.100</span></p></li>
<li><p>Taketest and Earn</p></li> 
</ul> -->

<div id="targetdetails">
<!-- <div class="row">
<div class="col-lg-4">Mock Test</div>
<div class="col-lg-3 " > <span style="color: darkorange;">Rs- 200 </span></div>
</div>
<div class="row">
<div class="col-lg-3">Subject-wise Test</div>
<div class="col-lg-2">Rs- 200</div>
</div>
<div class="row">
<div class="col-lg-3">Full-Syllabus Mock</div>
<div class="col-lg-2">Rs- 200</div>
</div> -->
</div>





</div>
</div>
<div class="row">
    <div class="col-xs-offset-1">
    <a style="margin:0 auto;border-radius:20px;" href="referandearn.jsp" id="exit" class="btn btn-success"><i class="fa fa-angle-double-left" aria-hidden="true"></i>&nbsp;&nbsp;back</a>
</div>
</div>
<div class="tablem">


		<table class="table table-bordered " style="background: white;box-shadow: 0px 0px 18px grey;"  id="livezoneearningtbl">
			<thead>
				<tr>
					<th>Test type</th>
					<th>No.of Tests</th>
					<th>Earned</th>
				</tr>
			</thead>
			<tbody id="livezoneearningbody">
				<!-- <tr>
				<td>Subject-Wise</td>
				<td>5</td>
				<td>Rs.100</td>
				</tr>
				<tr>
				<td>Subject-Wise</td>
				<td>5</td>
				<td>Rs.100</td>
				</tr> -->
			</tbody>
		</table>
	</div>
 <%@include file="/jsp/master/footer.jsp" %>
 </div>
  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
   <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/referandearn.js"></script>
  <script>
  $(document).ready(function(){
	  livezoneEarningDetails();
  })
  </script>
  