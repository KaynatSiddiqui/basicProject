<%@page import="com.zomant.util.AppConstants"%>
<%@include file="/jsp/master/default.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
<%-- <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/assets/css/student/css/subscriptionstu/animate.css"> --%>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/assets/css/student/css/subscriptionstu/subscriptionstu.css">
<style>
#wallets{
position: relative;
    left: 30px;
    top: -28px;
    }
 #radio{
    display:block;
    float: left;
    position: relative;
    top: 4px;
 }
 
 #contentstyle{
     font-weight: 500;
    padding-left: 20px;
    color: black;
    font-size: 16px;
 }
</style>

<div class="page-wrapper">

<p class="mainheading"><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Buy.svg" width="40px">&nbsp;&nbsp; <span style="vertical-align:super">Buy Now &amp; Get Access</span></p>

<%-- <p class="mainheading"><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Buysecond.svg" width="40px">&nbsp;&nbsp; <span style="vertical-align:super">Buy Now &amp; Get Access</span></p>
 --%>
<button class="btn btn-primary exitbtn" id="keepexit">Exit</button>

    <!-- <div class="subscbody"> -->
        <div class="jumbotron jumbo">
        <div class="row">
        <div class="container-fluid">
        <div class="col-md-12">
            <p class="validfor">Valid For: <span id="namecate"></span> &amp; <span id="namestan"></span></p>
            <p class="subhead"><img src="<%=request.getContextPath()%>/assets/images/students/subscriptionimages/My Subscriptionheader.svg" width="170px"></p>
           </div> 
        </div>
    </div>
        
        
            <div class="row">
            <span class="col-xs-4 col-xs-offset-8"  id="wallets">
            
            
            </span>
            </div>
                        <br>
                        
                        <p class="validset">Valid up to</p>
                        <ul class="nav nav-tabs ul-sub" role="tablist" id="ul-subscriptionTab">
                       
                       
                        </ul>
                      
    
    <div class="tab-content">
            <div id="1year" class=" tab-pane active"><br>
           
              <div class="row">
                <div class="col-sm-3 animated fadeInUp examtypefeature">
                  <h5 class="features"><img src='<%=request.getContextPath()%>/assets/images/students/subscriptionimages/Featuresicon.svg' width="25px">&nbsp;&nbsp;<span style="vertical-align: super;">Features Of Exam Type</span></h5>
                  <ul class="exmtypefeaul">
                   <!--  <li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li>
                    <li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li>
                    <li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li> -->
                    
                  </ul>
                </div>
                <div class="col-sm-6 justify-content-center align-self-center">
                  <h4 class="payfor">Pay Only For your Target Entrances</h4>
                  <h6 class="buymore">Buy more products, get more discount %</h6>
                <div class="colsm5 setback">
                  <h5 class="selectexamtype">Select Exam Type Here...</h5>
                  <div id="getexamtype" style="margin-left:50px">
                  <!-- <h6 class="nationallevel">National Level Exams</h6> -->
                <!--  <input class="checksub" type="checkbox" id="check1" name="check-1" value="Eamcet">
                 <label  for="check1">Eamcet<span class="examnoti" data-toggle="modal" data-target="#examtypedetail">i</span> </label>
                 <input class="checksub" type="checkbox" id="check2" name="check-2" value="Jee-Mains">
                 <label for="check2">Jee-Mains <span class="examnoti" data-toggle="modal" data-target="#examtypedetail">i</span> </label>
                 <input class="checksub" type="checkbox" id="check3" name="check-1" value="Jee-Advance">
                 <label for="check3">Jee-Advance <span class="examnoti" data-toggle="modal" data-target="#examtypedetail">i</span> </label>
                 <input class="checksub" type="checkbox" id="check4" name="check-2" value="Bitsat">
                 <label for="check4">Bitsat <span class="examnoti" data-toggle="modal" data-target="#examtypedetail">i</span> </label> -->
                 </div></div> <!-- colsm7 -->
                </div>
                <div class="col-sm-3 animated fadeInUp justify-content-center align-self-center">
                    <div class="card" style="width: 18rem;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;">
                        <div class="card-header selectexamtypes">Selected Examtypes</div>
                        <ul class="list-group list-group-flush" id="uladdexamtype">
                         <li class='list-group-item' id="liexamtype"></li>
                          <!-- <li class="list-group-item exmcheck" id = "liappendexam"></li> -->
                          <!-- <li class="list-group-item exmcheck">Jee-Mains</li>
                          <li class="list-group-item exmcheck">Bitsat </li> -->
                          <li class="list-group-item totalprice">Price  <span class="exmprice" id="offerprice"></span>&nbsp;&nbsp;&nbsp;<span class="exmprice" id="originalprice"></span></li>
                         <!--  <li class="list-group-item totalprice">Offer Price  <span class="exmprice" id="offerprice"></span></li> -->
                         
                          <li class="list-group-item promocode" id="promoapplied"><!-- <span class="exmprice" > <input class="promoinput" type="type" id="promo" name="promo" value=""></span><span class="promobtn">Promo Apply</span>  --></li>
                          <li class="list-group-item totalprice">Subtotal  <span class="exmprice" id="subtotaloffer"></span></li>
                         <li class="list-group-item"><input class="radio0" type="checkbox" id="radio" name="radio" value=""  >Charge from wallet <span class="exmprice" id="walletamountused"></span></li>
                          <li class="list-group-item totalprice">Total  <span class="exmprice" id="totalprice"></span></li>
                          <li class="list-group-item totalprice">Tax Charges  <span class="exmprice" id="tax"></span></li>
                           <li class="list-group-item payamt" style="color: #884bdf;font-size: 16px;">PAY  <span class="exmprice" id="amttotal"></span></li>
                        </ul>
                        <span id="buybutton"></span>
                       <!--  <button class="btn btnbuy" onclick="buy();">Buy</button> -->
                      </div>
                </div>
              </div>
              <!-- row 1year -->
            </div>
            <div id="2years" class=" tab-pane fade"><br>
              <h3>Till June 7th 2020</h3>
              <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div id="3years" class=" tab-pane fade"><br>
              <h3>6 Months</h3>
              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div id="4years" class=" tab-pane fade"><br>
              <h3>3 Months</h3>
              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div id="5years" class=" tab-pane fade"><br>
              <h3>1 Month</h3>
              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
          </div>
          <span id="modelappend"></span>
            <!-- <div class="modal" id="examtypedetail">
              <div class="modal-dialog">
                <div class="modal-content">
                    <button type="button" class="close modelclose" data-dismiss="modal">&times;</button>
                 
                  <div class="modal-body" id="modelbodyexmdetail">
                   data append
                  </div>
                </div>
              </div>
            </div> -->
          </div>
     <input type="hidden" id="subtotalpromo" value="">
         <%@include file="/jsp/master/footer.jsp" %>
      </div>
      <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
      
  <!--   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
    <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/subscriptionstudent.js"></script>
  <script>
  	$(document).ready(function(){
  		getAllTabWiseSubscription();
  		getExamTypeFeatures();
  		//getAllTabWiseExamtypes();
  		wallet();
  		
  		$(document).on("click", "#keepexit", function(){
  			window.location = base_url + "jsp/student/student module/studenthome.jsp";
  		})
  	})
  </script>
