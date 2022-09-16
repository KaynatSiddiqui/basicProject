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
    background:#fff;
     box-shadow: 2px 8px 7px grey;

}

.block{
border-bottom: 2px solid darkgray;
    padding: 10px;
}
.blocks{
padding: 10px;
}

.textdiv{

margin-top: 40px;
}
.text{
text-align:center;
font-size: larger;
}
</style>
<div class="page-wrapper">


<div class="row row1">
<div class="col-sm-4">
<div class="row ">
    <div class="col-lg-4" style="text-align: end;">
        <img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/ReferIcon.svg" width="35px" alt=""> 
        </div>
        <div class="col-lg-7" style="margin-left: -48px;margin-top:5px;">
            <p> Refer and Earn <span style="color: dodgerblue;">- Rs. <span id="totalrefamt"></span></span></p>
            </div>
    </div>
</div>

<div class="col-sm-4 col-sm-offset-4">
<ul>

<li><p>No.of referrals  -   <span id="norefferals" style="color: darkviolet;"></span></p></li>
<li><p>Your Unique Referral Code - <span  class="referalcode" style="color: darkviolet;"></span></p></li>

</ul>





</div>
</div>
<div class="row">
    <div class="col-xs-offset-1">
    <a style="margin:0 auto;border-radius:20px;" href="referandearn.jsp" id="exit" class="btn btn-success"><i class="fa fa-angle-double-left" aria-hidden="true"></i>&nbsp;&nbsp;back</a>
</div>
</div>
<div class="textdiv">
<p class="text">You will earn Rs. 10, if your friend Signup by using your referral code - &nbsp;<span  class="referalcode" style="color: darkviolet;"></span></p>
<p class="text" style="color: darkorange;">And your friend will also get Rs.10</p>
</div>



<div>
<div class="row" style="padding: 70px;">
<div class="col-xs-12 col-sm-offset-4">
<div class="wraper">
<div class="row block">
<div class="col-lg-6">
<p>Your Friend Name</p>
</div>
<div class="col-lg-6">
<p>Earned</p>
</div>

</div>

<div id="tablerefer">



</div>
</div>
</div>
</div>


</div>
 <%@include file="/jsp/master/footer.jsp" %>
 </div>
  <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
   <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
  <script>
  
  $(document).ready(function(){
	  getreferalcode();
  })
  
  
  function getreferalcode(){
	  
	  var LoginData = getLoginData();
	  var studid = LoginData.studentid;
	  var append = "";
	  $.ajax({
			url: base_url+'rest/student/v1/getReferalcodeusedstudentsDetails/'+studid+'/2',
			type:"GET",
			dataType:"json",
			contentType:'application/json',
			success:function(data){

				var studentreferalcode = data.referalstudentdetails
				
				$("#totalrefamt").html(data.totalreferalamount);
				
				$("#norefferals").html(data.no_of_referals);
				
				$(".referalcode").html(data.referalcode);
				
				if(studentreferalcode == null){
					append += '<p style="margin-top:10px" class="text-center">No Referal data found</p>'
				}else{
				for(var i=0;i<studentreferalcode.length;i++){
					
					append += '<div class="row blocks">'+
						'<div class="col-lg-6">'+
					'<p>'+studentreferalcode[i].studentname+'</p>'+
					'</div>'+
					'<div class="col-lg-6">'+
					'<span>'+studentreferalcode[i].referalamount+'</span>'+
					'</div>'+
					'</div>'
					}
				}
				
				$("#tablerefer").html(append);
			
		},
		error:function(data){
		alert("referal code not founds");
		}
		});
	 
  }
  
  </script>