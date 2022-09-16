

$(document).ready(function() {
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	/*var base_url = $("#baseURL").val();*/
	//console.log("Base URL is " + baseURL);
	 /*var subscription= '';
	var exam=[];
	exam.push(examTypeId);*/
	var input ={
  				
  				 	 "studentId":sId
  					
  				}
				var output =JSON.stringify(input);
  				console.log(output);
  				 $.ajax({
  						  url : base_url+"rest/student/getAllSubscriptionsByStudentId",
				
				/*url : "https//skygettesting-env.eba-qhqqzjab.ap-south-1.elasticbeanstalk.com/rest/student/getAllSubscriptionsByStudentId",
					*/	type:"POST",
  						  dataType:"json",
  						  contentType:'application/json',
  						  	data: output,
			
							  contentType:'application/json',
								beforeSend: function(){
							  $("#emiPayment").empty("");
						      $("#emiPayment").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
						     },

		  success:function(mainloop){
			  console.log(data);
			  var subscription='';
	
			for(var m =0; m<mainloop.length;m++){
				
				var academicyear=mainloop[m].academicyear;
				var data=mainloop[m].emiDetailsResponses;
				
				var orginalprice=mainloop[m].orginalprice;
				var offerprice=mainloop[m].offerprice;
				var subscriptionId=mainloop[m].subscriptionId;
				var walletAmountUsed=mainloop[m].walletAmountUsed;
				var salesOfferId=mainloop[m].salesOfferId;
				
			
			
				
				
				
				if(data != null){
					
					subscription +='<div style="display:flex; justify-content:center"><div class="" style="width:1000px" style="border-bottom:2px dashed white"><div><div class="jss380">'+academicyear+'</div>';
	
			  for(var i =0; i<data.length;i++){
				/*var youpay=data[i].amount-data[i].walletAmount-data[i].refferalAmount-data[i].salesPersonGaveOffer;
				console.log(youpay);
				 if(i%3 ==0){*/
			
				subscription +='<div class="masterOrRegularCardContainer">'+
									'<div class="card-body">'+       				
										'<div class="d-flex justify-content-between align-items-center" style="display:flex;justify-content:space-between;align-items:center">'+
											'<div style="" class="emiText" >'+
												'<div style="display:flex;justify-content:space-between;align-items:center;width:470px">'+
													'<h4 style="padding: 10px 0px;">'+data[i].type+'</h4>'+'<h4 style="padding: 10px 0px;">Rs. '+data[i].emiAmount+'/-</h4>'+
												'</div>'+
										
												'<h6>Including 18%GST</h6>'+
												
												
												'<div class="dateBox"><img class="calendarIcon" src="/assets/images/students/cal_nder.svg" alt=""><div class="sessionDateText">Due Date : </div><div class="otherSlotTimeText" style="-webkit-box-orient: vertical;">'+data[i].dueDate+'</div></div>'+
										
											'</div>'+
										
										
										'<div>';
										
										if(data[i].paid){
										
										subscription +='<button class="btn text-white" style="width:170px;background-image: linear-gradient(to top, rgb(78, 155, 1), rgb(146, 209, 8));color:white" disabled>Paid</button>';
										}
										else{
										
										subscription +='<button class="btn text-white" style="width:170px;background-image: linear-gradient(45deg, #FC4A1A, #F7B733);color:white" onclick="emiSubcription('+"'"+orginalprice+"'"+','+"'"+offerprice+"'"+','+"'"+subscriptionId+"'"+','+"'"+walletAmountUsed+"'"+','+"'"+salesOfferId+"'"+','+"'"+data[i].emiAmount+"'"+','+"'"+data[i].emiDetailsId+"'"+','+"'"+data[i].type+"'"+')">Pay</button>';	
											
										}
										/*'<div>'+
											'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
												
												'<div class="buybtn_img" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')"></div>'+
											'</div>'+
										'</div>'+*/
										subscription +='</div>'+
										
										
									'</div>'+
								'</div>'+
       					 '</div></div>';
				
				/*}*/
				}
				
				subscription +='</div>';
				}
				}
				
				$("#emiPayment").empty("");       
				$("#emiPayment").html(subscription);
				
		},
		
		  error:function(data){
		    	  alert(data.errorMessage);
		      }	  
	
});
});


var examTypeId=sessionStorage.getItem("examTypeIds");
function emiSubcription(orginalprice,offerprice,subscriptionId,walletAmountUsed,salesOfferId,emiAmount,emiDetailsId,type){
	 
			//promo 
			
			
			/* var totG = paytotal.text();*/
	 		var totG =emiAmount;
			 var prmodiscount = $(".discount").text();
			 var promocode = $(".promoinput").val();
			 
			 
			 var examid =[];
			 examid.push(examTypeId);
			/* if(typeof examtypes !== "undefined" && typeof examtypes !== "string"){
				 examid = examtypes;
			 }else{
				 console.log("not an array")
			 }*/
			
			 var mobilenumber=sessionStorage.getItem("mobilenumber");
				
				var email=sessionStorage.getItem("email");
				
				if(email =="" || email==null || email==undefined){
					
					email=email;
				}
				else{
					
					email="Support@skyget.ai";
				}
				
				var LoginData = getLoginData();
				var studid = LoginData.studentid;
				var subscripId = subscriptionId;
				var originalprice = orginalprice;
				var  offerprice = offerprice;
				var  walletamount = walletAmountUsed;

				if(subscriptionId === "" || subscriptionId === null || subscriptionId ===undefined){
					return false;
				}
				else if(originalprice === "" || originalprice === null || originalprice ===undefined){
					return false;
				}
				else if(offerprice === "" || offerprice === null || offerprice ===undefined){
					return false;
				}
				else{
					if(prmodiscount != 0 &&  walletamount !=0){
						var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								"salesOfferId":salesOfferId,
							"emiAmount":emiAmount,
							"emiDetailsId":emiDetailsId,
							"type":type,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":prmodiscount,
								"promocode":promocode,
								"salesOfferId":salesOfferId,
								"grandtotal":totG,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":walletamount,
								"paymentstatus":"WIP"		
						}
					}
					else if(prmodiscount === 0 || prmodiscount ===""  && walletamount !=0){
			                var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								"salesOfferId":salesOfferId,
							"emiAmount":emiAmount,
							"emiDetailsId":emiDetailsId,
							"type":type,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":0,
								"promocode":promocode,
								"grandtotal":totG,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":walletamount,
								"paymentstatus":"WIP"		
						}
					}else if(prmodiscount != 0 && walletamount ===0 || walletamount ===""){
			          var inputData ={
								
								"studentId":studid,
								"planId":subscripId,
								"userType":"web",
								"price":originalprice,
								"offerprice":offerprice,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":prmodiscount,
								"promocode":promocode,
								"grandtotal":totG,
								"salesOfferId":salesOfferId,
							"emiAmount":emiAmount,
							"emiDetailsId":emiDetailsId,
							"type":type,
								"transactionID":"ZOM123",
								"mobilenumber":mobilenumber,
								"examTypeId":examid,
								"walletamount":0,
								"paymentstatus":"WIP"		
						}
					}
				else{
						var inputData ={
				
							"studentId":studid,
							"planId":subscripId,
							"userType":"web",
							"price":originalprice,
							"offerprice":offerprice,
							"salesOfferId":salesOfferId,
							"emiAmount":emiAmount,
							"emiDetailsId":emiDetailsId,
							"type":type,
							"tax":0,
							"totalAfterDiscount":totG,
							"discount":0,
							"promocode":"",
							"grandtotal":totG,
							"examTypeId":examid,
							"transactionID":"ZOM123",
							"mobilenumber":mobilenumber,
							"walletamount":0,
							"paymentstatus":"WIP"
						
					}
				}
					
				
				var outputData = JSON.stringify(inputData);
				$.ajax({
					url:  base_url+'rest/student/createStudentSubscription',
					type:"POST",
					dataType: "json",
					contentType: 'application/json',
					data:outputData,
					success: function(data){
						if(data.status)
						{
						//alert(data.msg + " "+data.orderId + " "+walletdeductedamount+"totG"+totG);
						//call payment gateway
						var order_id=data.orderId;
						var currency=data.currency;
						var merchant_id=data.merchantId;
						//var amount=totG;
						/*var amount=data.amount;*/
						var amount=data.amount *100;
						var redirect_url=base_url+data.redirect_url;
						var cancel_url=base_url+data.cancel_url;
						var language=data.language;
						var billing_name=data.name;
						var billing_city=data.city;
						var billing_state=data.state;
						var billing_zip="";
						var billing_country=data.country;
						var billing_tel=data.mobileNumber;
						var billing_email=data.emailId;
						var tid= new Date().getTime();
						if(totG>0)
						{
					/*	var jspcall =  base_url+"jsp/paymengateway/ccavRequestHandler.jsp?order_id="+order_id+"&currency="+currency+"&merchant_id="+merchant_id+
						"&amount="+amount+"&redirect_url="+redirect_url+"&cancel_url="+cancel_url+"&language="+language+
						"&billing_name="+billing_name+"&billing_city="+billing_city+"&billing_state="+billing_state+"&billing_zip="+billing_zip+
						"&billing_country="+billing_country+"&billing_tel="+billing_tel+
						"&billing_email="+billing_email+"&tid="+tid;*/
							var options = {
								   
								   // "key":"rzp_live_kLObuozs6uSEfu", // Enter the Key ID generated from the Dashboard
								    "key":"rzp_test_siGwOhO8MAMbtj",
								    "amount": amount+"", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
								    "currency": "INR",
								    "name": "Skyget",
								    "description": "Buy Subscription",
								    "image": base_url+"assets/landing/img/logo2.svg",
								    "order_id": data.razorpay_orderid, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
								    "callback_url": redirect_url,
								    "prefill": {
								    	"name": "",
								        "email": "support@skyget.ai",
								        "contact":mobilenumber
								    },
								    "notes": {
								        "address": "Zomant Solutions pvt ltd"
								    },
								    "theme": {
								        "color": "#3399cc"
								    }
								};
							
							var rzp1 = new Razorpay(options);
							 rzp1.open();
							 e.preventDefault();
						 //  window.location.href = jspcall;
						}else
						{
						if(walletdeductedamount!=0) // call wallet amt detuct only when  wallet is used
						    walletpay(order_id,tid);
						}
						//window.location = base_url+'jsp/student/student module/subscriptiondetails.jsp'


						}
						},
					error: function(data){
						alert(data.responseJSON.errorMessage);
					}
				})
				exmidd = [];
			}  
		}


var walletdeductedamount =0;
function walletpay(orderid,tid){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var orderid = orderid;
	var trackingid = tid;
	
	var walletamt = {
		"studentId": studid,
		"totalWalletAmt":walletdeductedamount
	}
	
	var walettoot = JSON.stringify(walletamt);
	
	$.ajax({
		type: "POST",
		url: base_url+'rest/admin/ReduceSubscribtionAmt',
		dataType: "json",
		contentType: 'application/json', 
		data:walettoot,
		cache:false,
		success: function(data){
			updateFinalpayProcess(orderid,trackingid);
			alert(data.message);
		},
		error:function(){
			alert("Considering amount is failed");
		}
	})
	
	
}
function updateFinalpayProcess(orderid,trackingid){
		  
	var odrid = orderid;
	var trackid =trackingid;
		  var inputData = {
			  "orderId":odrid,
			  "order_status":"success",
			  "tracking_id":trackid,
			  "payment_mode":"fromWallet"
		}
		  
		  
		var outputData = JSON.stringify(inputData);
		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			data:outputData,
			url: base_url+'rest/student/updateFinalPaymentProcess',
			cache:false,
			success: function(data){
				alert(data.message);
			
			} ,error:function(){
				alert(data.responseJSON.errorMessage);
			} 
		  
		  
});
}

	