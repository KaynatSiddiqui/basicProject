<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<%@page import="com.zomant.util.AppConstants"%>

<style>

.card_phonecard {
  background: white;
  padding: 35px;
  margin: 50px 0;
  width:780px;
  /* box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
  border-radius:40px 40px 40px 0px;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  
}

.sendata{
		background:	#FFA500;
	}
	.sendata:hover{
		background:	#32CD32;
		color:white;
	}
	

/* Made by sowjanya */
#cbtest {
  padding: 0 !important;
  margin: 0  !important;
  background-color: #667788  !important;
  color: #efefef  !important;
  font-family: "Open Sans  !important";
}


/* Checkmark style starts */
@-moz-keyframes dothabottomcheck {
  0% {
    height: 0  !important;
  }
  100% {
    height: 50px  !important;
  }
}
@-webkit-keyframes dothabottomcheck {
  0% {
    height: 0  !important;
  }
  100% {
    height: 20px  !important;
  }
}
@keyframes dothabottomcheck {
  0% {
    height: 0  !important;
  }
   100% {
    height: 20px;
  }
}
@keyframes dothatopcheck {
  0% {
    height: 0  !important;
  }
  50% {
    height: 0;
  }
  100% {
    height: 40px;
  }
}
@-webkit-keyframes dothatopcheck {
  0% {
    height: 0  !important;
  }
  50% {
    height: 0  !important;
  }
  100% {
    height: 40px  !important;
  }
}
@-moz-keyframes dothatopcheck {
  0% {
    height: 0  !important;
  }
  50% {
    height: 0  !important;
  }
  100% {
    height: 40px  !important;
  }
}
input[type=checkbox] {
  display: none  !important;
}

.check-box {
  height: 30px  !important;
  width: 30px  !important;
  background-color: transparent  !important;
  border: 3px solid #000  !important;
  border-radius: 5px  !important;
  position: relative  !important;
  display: inline-block  !important;
  -moz-box-sizing: border-box  !important;
  -webkit-box-sizing: border-box  !important;
  box-sizing: border-box  !important;
  -moz-transition: border-color ease 0.2s  !important;
  -o-transition: border-color ease 0.2s  !important;
  -webkit-transition: border-color ease 0.2s  !important;
  transition: border-color ease 0.2s  !important;
  cursor: pointer  !important;
}
.check-box::before, .check-box::after {
  -moz-box-sizing: border-box  !important;
  -webkit-box-sizing: border-box  !important;
  box-sizing: border-box  !important;
  position: absolute  !important;
  height: 0  !important;
  width: 6px  !important;
  background-color: #34b93d  !important;
  display: inline-block  !important;
  -moz-transform-origin: left top  !important;
  -ms-transform-origin: left top  !important;
  -o-transform-origin: left top  !important;
  -webkit-transform-origin: left top  !important;
  transform-origin: left top  !important;
  border-radius: 5px  !important;
  content: " ";
  -webkit-transition: opacity ease 0.5  !important;
  -moz-transition: opacity ease 0.5  !important;
  transition: opacity ease 0.5  !important;
}
.check-box::before {
     top: 23px  !important;
    left: 15px  !important;

  -moz-transform: rotate(-135deg)   !important;
  -ms-transform: rotate(-135deg)  !important;
  -o-transform: rotate(-135deg)  !important;
  -webkit-transform: rotate(-135deg)  !important;
  transform: rotate(-135deg)  !important;
}
.check-box::after {
 top: 9px  !important;
    left: 0px  !important;
  -moz-transform: rotate(-45deg)  !important;
  -ms-transform: rotate(-45deg)  !important;
  -o-transform: rotate(-45deg)  !important;
  -webkit-transform: rotate(-45deg)  !important;
  transform: rotate(-45deg)  !important;
}

input[type=checkbox]:checked + .check-box,
.check-box.checked {
  border-color: #34b93d  !important;
}
input[type=checkbox]:checked + .check-box::after,
.check-box.checked::after {
  height: 20px  !important;
  -moz-animation: dothabottomcheck 0.2s ease 0s forwards  !important;
  -o-animation: dothabottomcheck 0.2s ease 0s forwards  !important;
  -webkit-animation: dothabottomcheck 0.2s ease 0s forwards  !important;
  animation: dothabottomcheck 0.2s ease 0s forwards  !important;
}
input[type=checkbox]:checked + .check-box::before,
.check-box.checked::before {
  height: 40px  !important;
  -moz-animation: dothatopcheck 0.4s ease 0s forwards  !important;
  -o-animation: dothatopcheck 0.4s ease 0s forwards  !important;
  -webkit-animation: dothatopcheck 0.4s ease 0s forwards  !important;
  animation: dothatopcheck 0.4s ease 0s forwards  !important;
}

.check-box1 {
  #cbtest {
    
    & + .shomg{
      visibility: hidden !important;
      opacity: 0 !important;
    
      transition: visibility 0s linear 0.33s, opacity 0.33s linear !important;
    }
    
    
    &:checked + .shomg {
      visibility: visible !important;
      opacity: 1 !important;
      
      transition-delay: 0s !important;
    }
  }
}


</style>


<input type="text" id="taxx" value="<%=AppConstants.TAX%>" hidden>

<div class="container">
<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;margin-left:140px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Create Offer</strong></h3>
							</div>
							</div> --%>
							<div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/gift_card.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;"><strong>Create Offer</strong></h3>
							</div>
							</div>

      <div class="row">
        <div class="col-lg-12">
        <div style="display:flex;justify-content:center">
        <div class="card card_phonecard">
        	
        										<form>
													<div class="row" id="profile">
														 <div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Plan Id</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<div class="form-group">
     																<select class="form-control" id="categorydata">
     																
     																</select>
    															</div>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Subscription Amount</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" >
																<div class="form-group">
     			 													<input placeholder="Subscription Amount" type="text" id="subscriptionAmount" style="background:white" class="form-control" disabled>
    															</div>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Offer Type</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<div class="form-group">
     																<select class="form-control" id="offertype">
     																<option value="">Select Offer Type</option>
     																<option value="percentage">Percentage</option>
     																<option value="value">Value</option>
     																
     																</select>
    															</div>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Percentage/Value</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<div class="form-group">
     																<input placeholder="Percentage/Value" type="text" id="percentage" class="form-control">
    															</div>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Offer Amount</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<div class="form-group">
     																<input placeholder="Offer Amount" type="text" id="offerAmount" class="form-control" style="background:white" disabled>
    															</div>
															</div>
														</div>
														
																<div class="col-md-12">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Wallet Amount</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdname">
																<div class="form-group">
     																<input  type="text" id="wallets" class="form-control" disabled value="0">
    																</div>
															</div>
															</div>
															
															<div class="col-md-12 form-group">
																<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">GST(<%=AppConstants.TAX%>%)</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdname">
																<div class="form-group">
     																<input  type="text" id="GST" class="form-control" disabled value="">
    																</div>
															</div>
															</div>
														
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Sales Person Id</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" >
																<div class="form-group">
     																<input  type="text" id="salesPersonId" class="form-control" style="background:white" disabled>
    															</div>
															</div>
														</div>
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Hours</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7" id="stdname">
																<div class="form-group">
     																<input placeholder="Hrs" type="text" id="validityInhrs" class="form-control" value="1">
    																</div>
															</div>
														</div>
														
														<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Total Payment</label>
															</div>
															<div class="col-md-1">:</div>
															
															<div class="col-md-7" id="stdname">
																<div class="form-group">
     																<input  type="text" id="totalpay" placeholder="" disabled class="form-control"  value="">
    																</div>
															</div>
														</div>
														
														
														<div class="col-md-12 form-group" id="emiavailableoffer" style="display:none">
															<div class="col-md-4 check-box1" style="display:flex;align-items:center">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
	 
    <input type="checkbox" id="cbtest" onclick="showbox()"/>
    <label for="cbtest" class="check-box"></label> 
    <h3 class="" style="margin:0px;margin-left:15px">Add EMI</h3>
                                                          </div> 
                                                                	
														
															 <!-- <div class="col-md-1">:</div> -->
															<div class="col-md-8 card shomg" style="box-shadow: 0 10px 20px -6px #000;padding: 25px;" id="stdname">
															
																													
															
																<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Down Payment</label>
															</div>
															<div class="col-md-1">:</div>
															
															<div class="col-md-7">
																<div class="form-group">
     																<input  type="text" id="downpayment" placeholder="Enter Payment"  class="form-control"  value="0">
    																</div>
															</div>
														</div>
														
															<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">EMI Months</label>
															</div>
															<div class="col-md-1">:</div>
															<div class="col-md-7">
																<div class="form-group">
     																<select class="form-control" id="EMImonths">
     																<option value="">Select EMI Months</option>
     																<option value="1">1 Months</option>
     																<option value="2">2 Months</option>
     																<option value="3">3 Months</option>
     																<option value="5">5 Months</option>
     																<option value="6">6 Months</option>
     																<option value="9">9 Months</option>
     																<option value="12">12 Months</option>
     																
     																</select>
    															</div>
															</div>
														</div>
															
																
														
															<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Monthly Payment</label>
															</div>
															<div class="col-md-1">:</div>
															
															<div class="col-md-7">
																<div class="form-group">
     																<input  type="text" id="montlypay" placeholder="" disabled class="form-control"  value="">
    																</div>
															</div>
														</div>
																		
																		
															<div class="col-md-12 form-group">
															<div class="col-md-4">
															<!-- <i class="active fa fa-user prefix" style="color:red;"></i> -->
																<label class="control-label mb-5 bold">Every Month DueDate</label>
															</div>
															<div class="col-md-1">:</div>
															
															<div class="col-md-7">
																<div class="form-group">
     																<input  type="date" id="emidate" placeholder="" class="form-control"  value="">
    																</div>
															</div>
														</div>
																										
															</div>
															
															</div> 
														</div>
														
											
													</form>
    		
    		<div class="form-group" style="margin-top:20px">
     			<button class="btn btn-block text-white sendata"  onclick="create_salesManoffer()">Send</button>
    		</div>
    		
        </div>
        </div>
       	</div>
       </div>
 </section>
 </div>

<script>
 

$(document).ready(function() {

$(".shomg").hide();

})

function showbox(){

    if($("#cbtest").is(":checked")) {
    	
        $(".shomg").show(300);
        
    } else {
        $(".shomg").hide(200);
    }
}
 
</script>

<script src="<%=request.getContextPath()%>/sales/js/salesman_offer.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
 