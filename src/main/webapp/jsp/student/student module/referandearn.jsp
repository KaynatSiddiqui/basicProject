<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<style> 
  .referandearn{
  border-radius: 18px;
    background: #ef84a7;
   box-shadow:1px 1px 1px 1px lightgrey;
  }
  .referandearn2{
  border-radius: 18px;
    background: #7ac7e8;
    box-shadow:1px 1px 1px 1px lightgrey;
  }
  .referandearn3{
  border-radius: 18px;
    background: #e2cc7b;
    box-shadow: 1px 1px 1px 1px lightgrey;
  }
    .referandearn4{
  border-radius: 18px;
    background: #a349a4;
    box-shadow: 1px 1px 1px 1px lightgrey;
  }
.mrgn{
margin-top: 35px;
}
.textstyle{
font-weight: bold;
    color: white;
    font-size: 25px;
    text-align: center;
    margin-top:10px;
}
.hvr:hover{
    box-shadow: 2px 8px 1px 2px lightgrey;
}
.row1{
margin-top:50px;
}
.row1 .col-sm-4 p{
text-align:center;
font-size: large;
}
.clrstyl{
color: blueviolet;
}
.clrstyl2{
    color: deepskyblue;
}
.mrgnbtm{
    margin-bottom: 15px;
}
.icnstyle{

    position: inherit;
   
    left: 600px;
}
.fontcont{
color: black;
font-size: 17px;
white-space: nowrap;
margin-bottom: 5px;
}
</style>

<div class="page-wrapper">
   
   <div>  
<div class="row row1">
<div class="col-sm-4">
<%-- <img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="23px" alt=""><p > Hey kiran</p>  --%>

<div class="row">

        <div class="col-lg-12" style="margin-left: 20px;">
            <p><img src="" id="stdimage" width="30px" alt=""> &nbsp;&nbsp; <span id="studentname" style="vertical-align:super" ></span></p>
            </div>
    </div>
</div>
<div class="col-sm-4">
<p >  Your Unique Referral Code: <span class="clrstyl" id="referalcode">kira520 </span></p>
</div>
<div class="col-sm-4">  
<div class="row">
    <div class="col-lg-6" style="text-align: end;">
        <img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/WalletIcon.svg" width="23px" alt=""> 
        </div>
        <div class="col-lg-6" style="/* margin-right: -3px; */margin-left: -31px;">
            <p> Wallet Total: <span class="clrstyl2"> Rs. <span id="wallettotal"></span></span></p>
            </div>
    </div>
</div>
</div>

<div class="row">
<%-- <div class="col-sm-6 col-sm-offset-3 referandearn mrgn hvr"> 

<span><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="23px" alt="">
</span><p class="textstyle"> Refer & Earn - Rs. 520</p>
<span  class="icnstyle"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/Live zone_Exam.svg" width="23px" alt="">
</span>



</div> --%>
<div id="welcomebonus">



</div>


<div class="col-sm-6 col-sm-offset-3 referandearn mrgn hvr" style="padding: 26px 100px 2px 5px"> 
<div class="row">
    <div class="col-sm-3" style="text-align: -webkit-right;">
        <span><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/ReferIcon.svg" width="45px" alt="">
        </span>
        </div>
    <div class="col-sm-9" style="">
    <p class="textstyle"> Refer &amp; Earn - Rs. <span id="referandearn"></span></p>
    </div>
    </div>

<span class="icnstyle"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/infoicon.svg" id="referearn" width="28px" alt="">
</span>



</div>


<div class="col-sm-6 col-sm-offset-3 referandearn3 mrgn hvr mrgnbtm" style="padding: 26px 100px 2px 5px"> 
<div class="row">
    <div class="col-sm-3" style="
    text-align: -webkit-right;">
        <span><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Ernings.svg"  width="50px" alt="">
        </span>
        </div>
    <div class="col-sm-9" style="">
    <p class="textstyle">Live Zone Earnings - Rs. <span id="livezoneearnings"></span></p>
    </div>
    </div>

<span class="icnstyle"><img src="<%=request.getContextPath()%>/assets/images/students/sidebarimages/infoicon.svg" id="livezonearn" width="28px" alt="">
</span>
</div>


<div class="col-sm-6 col-sm-offset-3 referandearn2 mrgn hvr mrgnbtm" style="padding: 26px 100px 10px 5px"> 
<div class="row">
    <div class="col-sm-3" style="
    text-align: -webkit-right;">
        <span><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/UsedMoneyIcon.svg" width="45px" alt="">
        </span>
        </div>
    <div class="col-sm-9" style="">
    <p class="textstyle">Used Amount - Rs. <span id="usedamount"></span></p>
    </div>
    </div>

<span class="icnstyle">
</span>



</div>
<div class="col-sm-12" style="">
    <p class="textstyle" style="color:#5e57ea">Use it now otherwise,this wallet will expired on <span id="expdatebonus"></span></p>
    </div>
</div>
</div>
   
   
         <%@include file="/jsp/master/footer.jsp" %>
      </div>
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/referandearn.js"></script>
<script>

$("#referearn").on("click",function(){
	 window.open( base_url + "jsp/student/student module/referandearndetails.jsp", "_self");
})

$("#livezonearn").on("click",function(){
	window.open( base_url + "jsp/student/student module/livezoneearningdetails.jsp", "_self");
})




$(document).ready(function (){
	referandEarnDetails();
})
</script>
