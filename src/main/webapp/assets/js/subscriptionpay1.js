var examTypeId="";
var standardId="";
var categoryId="";


	$(document).ready(function() {
	
	examTypeId=sessionStorage.getItem("examTypeIds");
	standardId=sessionStorage.getItem("standardId");
	categoryId=sessionStorage.getItem("categoryid");
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	 var subscription= '';
var exam=[];
exam.push(examTypeId);
	var input ={
  				
  				 	 "studentId":sId,
  					"categoryId":categoryId,
  					"examtypeId":exam
  				}
				var output =JSON.stringify(input);
  				console.log(output);
  				 $.ajax({
  						  url : base_url+"rest/admin/getSubscriptionsByExamtypeId",
  						  type:"POST",
  						  dataType:"json",
  						  contentType:'application/json',
  						  	data: output,
			
							  contentType:'application/json',
								beforeSend: function(){
							  $("#subscriptionPay").empty("");
						      $("#subscriptionPay").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
						     },

		  success:function(data){
			  console.log(data);
			   
			  for(var i =0; i<data.length;i++){
				  /*	var youpay=data[i].amount-data[i].walletAmount-data[i].refferalAmount-data[i].salesPersonGaveOffer;*/
					 var youpay=data[i].amount-data[i].salesPersonGaveOffer+data[i].taxAmount;
					/* var downpayment=data[i].downPayment;*/
					console.log(youpay);
					
				if(data[i].subscribed==true){
					 
					subscription +='<div class="card mx-2" style="width: 21rem;cursor: pointer;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;margin:10px 15px;border-radius:10px;">';

				}
				
				else{
					
					 
					subscription +='<div class="card mx-2" style="width: 21rem;cursor: pointer;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;margin:10px 15px;border-radius:10px;">';

					
				}
					/*'<div class="card-header border-0">'+
										'<div class="p-4" style="display:flex;justify-content:center">'+
											
											'<div class="header_img"></div>'+
										'</div>'+
									'</div>'+*/
					subscription +='<div class="card-body">'+       				
											'<div class="d-flex justify-content-center align-items-center imageonplus" style="display:flex;justify-content:center; align-items:center">'+
											/*'<img src="<%=request.getContextPath()%>/assets/images/students/Subscription_img.svg">'+*/
											'<img src="'+data[i].imageUrl+'" style="height: 505px;">'+
											
											'<div class="top-right" data-toggle="modal" data-target="#subscriptionfutures"><i class="fa fa-plus fa-2x" aria-hidden="true"></i></div>'+
											'</div>'+
											
											/*'<div style="padding:0px 20px;">'+
											'<p style="color:black">Take Subscription & No need to worry about your Rank... We will take care about you.</p>'+
											'</div>'+
											'<div style="padding:0px 20px;">'+
											'<h5 class="text-warning"><strong>* Unlimited Access</strong><h5>'+
											'<h5 class="text-warning"><strong>* Personal Mentoring<strong><h5>'+
											'<h5 class="text-warning"><strong>* You can ask Unlimited Doubts<strong><h5>'+
											'</div>'+*/
											
											'<div style="padding:5px 20px 0px;margin:10px;box-shadow: 0 10px 20px -6px #000;">'+
											'<div style="display:flex;justify-content:space-between;">'+
												'<h5 style="font-size: 14px;"><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
												'<h5 style="font-size: 14px;"><strong id="priceMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
											'</div>'/*+
										'<div style="display:flex;justify-content:space-between;">'+
												'<h5><strong>Wallet Amount</strong></h5>'+
												'<h5><strong id="walletMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
											'</div>'+
											'<div style="display:flex;justify-content:space-between;">'+
												'<h5><strong>2x withdrawal Amount</strong></h5>'+
												'<h5><strong id="withdrawalamount"><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
											'</div>'*/;
											if(data[i].salesPersonGaveOffer !=0){
												subscription +='<div style="display:flex;justify-content:space-between;">'+
												'<h5 style="font-size: 14px;"><strong>AccountCounselor Discount</strong></h5>'+
												'<h5 style="font-size: 14px;"><strong id="salesPerson"><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
											'</div>';
											}
											subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5 style="font-size: 14px;"><strong>GST ('+data[i].taxPercentage+'%)</strong></h5>'+
											'<h5 style="font-size: 14px;"><strong id="tax"><i class="fa fas fa-rupee-sign"></i>'+data[i].taxAmount+'.0/-</strong></h5>'+
										'</div>';
											
											
											
										/*	subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
												'<h5 class="text-danger" style="font-size: 14px;"><strong>You Pay</strong></h5>'+
												'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
											'</div>'+*/
											
											'<div>';
												
												//added on 07-04-2021
												
												if(data[i].subscribed==true){
										            
													/*subscription +='<div class="buybtn_img" style="cursor: pointer;">Subscribed</div>'*/
														subscription +='<div style="display:flex; justify-content:flex-end"><button class="btn text-white" style="background-image: linear-gradient(to top, rgb(78, 155, 1), rgb(146, 209, 8));color:white;margin: 0px 10px 10px" disabled>Subscribed</button></div>';
												}
											else{
													
													if(data[i].downPayment==0){
														
														subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
														'<h5 class="text-danger" style="font-size: 14px;"><strong>You Pay</strong></h5>'+
														'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
													'</div>'+
													'<div style="display:flex; justify-content:flex-end"><div class="buybtn_img" style="cursor: pointer;margin: 0px 10px 10px" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+','+data[i].salesOfferId+','+data[i].downPayment+')"></div></div>'
													}
													else{
														
														subscription +='<div style="display:flex;justify-content:space-between;padding: 3px">'+
														'<h5 class="text-danger" style="font-size: 14px;"><strong>Downpayment</strong></h5>'+
														'<h5 class="text-primary" style="font-size: 14px;"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+data[i].downPayment+'.0/-</strong></h5>'+
													'</div>'+
													'<div style="display:flex; justify-content:space-between; padding:10px 0px;">'+
													'<button class="btn" style="cursor: pointer;color:white;  background-image: linear-gradient(45deg, #FC4A1A, #F7B733);"  onclick="viewemipop(' + "'" + data[i].salesOfferId + "'" + ',' + "'" + data[i].subsciptionPeriod + "'" + ')">View</button><div class="buybtn_img" style="cursor: pointer;" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+','+data[i].salesOfferId+','+data[i].downPayment+')"></div>'+
													'</div>';
									  					 
													}
													
												}
										
											  
												
												subscription +='</div>'+
											/*'</div>'+*/
											'</div>'+
											
											/*'<div>'+
												'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
													
													'<div class="buybtn_img" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+','+data[i].taxAmount+')"></div>'+
												'</div>'+
											'</div>'+*/
											
											
										
								'</div>'+
       					 '</div>';
				
				
			}


				
				$("#subscriptionPay").empty("");       
				$("#subscriptionPay").html(subscription);
				
		},
		
		  error:function(data){
		    	  alert(data.errorMessage);
		      }	  
	
});
});





		

/*$(document).ready(function() {
	
	examTypeId=sessionStorage.getItem("examTypeIds");
	standardId=sessionStorage.getItem("standardId");
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	 var subscription= '';
	$.ajax({
		  url : base_url+"rest/subscribe/getSubscription/"+sId,
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
			beforeSend: function(){
		  $("#subscriptionPay").empty("");
	      $("#subscriptionPay").html('<div style="display:flex;justify-content:center"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');
	     },

		  success:function(data){
			  console.log(data);
			   
			  for(var i =0; i<data.length;i++){
				var youpay=data[i].amount-data[i].walletAmount-data[i].refferalAmount-data[i].salesPersonGaveOffer;
				console.log(youpay);
				 if(i%3 ==0){
				subscription +='<div class="card mx-2" style="width: 25rem;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;padding:10px;margin:10px;border-radius:30px;">'+

								'<div class="card-header border-0">'+
									'<div class="p-4" style="display:flex;justify-content:center">'+
									
										'<div class="header_img"></div>'+
									'</div>'+
								'</div>'+
								'<div class="card-body">'+       				
										'<div class="d-flex justify-content-center align-items-center" style="display:flex;justify-content:center; align-items:center">'+
									
										'<div class="subcr_img"></div>'+
										'</div>'+
										
										'<div style="padding:0px 20px;">'+
										'<p style="color:black">Take Subscription & No need to worry about your Rank... We will take care about you.</p>'+
										'</div>'+
										'<div style="padding:0px 20px;">'+
										'<h5 class="text-warning"><strong>* Unlimited Access</strong><h5>'+
										'<h5 class="text-warning"><strong>* Personal Mentoring<strong><h5>'+
										'<h5 class="text-warning"><strong>* You can ask Unlimited Doubts<strong><h5>'+
										'</div>'+
										
										'<div style="padding:0px 20px;">'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
											'<h5><strong id="priceMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
										'</div>'+
									'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>Wallet Amount</strong></h5>'+
											'<h5><strong id="walletMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
										'</div>'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>2x withdrawal Amount</strong></h5>'+
											'<h5><strong id="withdrawalamount"><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
										'</div>';
										if(data[i].salesPersonGaveOffer !=0){
											subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>AccountCounselor Discount</strong></h5>'+
											'<h5><strong id="salesPerson"><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
										'</div>';
										}
										subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5 class="text-danger"><strong>You Pay</strong></h5>'+
											'<h5 class="text-primary"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
										'</div>'+
										
										'</div>'+
										
										'<div>'+
											'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
												
												'<div class="buybtn_img" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')"></div>'+
											'</div>'+
										'</div>'+
										
										
										
								'</div>'+
       					 '</div>';
				
				}
				
			 if(i%3 ==1){
				
				subscription +='<div class="card mx-2" style="width: 25rem;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;padding:10px;margin:10px;border-radius:30px;">'+

								'<div class="card-header border-0">'+
									'<div class="p-4" style="display:flex;justify-content:center">'+
										
										'<div class="header_imggs"></div>'+
									'</div>'+
								'</div>'+
								'<div class="card-body">'+       				
										'<div class="d-flex justify-content-center align-items-center" style="display:flex;justify-content:center; align-items:center">'+
										
										'<div class="subcr_jeeimg"></div>'+
										'</div>'+
										
										'<div style="padding:0px 20px;">'+
										'<p style="color:black">Take Subscription & No need to worry about your Rank... We will take care about you.</p>'+
										'</div>'+
										'<div style="padding:0px 20px;">'+
										'<h5 style="color:#00FF00"><strong>* Unlimited Access</strong><h5>'+
										'<h5 style="color:#00FF00"><strong>* Personal Mentoring<strong><h5>'+
										'<h5 style="color:#00FF00"><strong>* You can ask Unlimited Doubts<strong><h5>'+
										'</div>'+
										
										'<div style="padding:0px 20px;">'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
											'<h5><strong id="priceMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
										'</div>'+
									'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>Wallet Amount</strong></h5>'+
											'<h5><strong id="walletMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
										'</div>'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>2x withdrawal Amount</strong></h5>'+
											'<h5><strong id="withdrawalamount"><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
										'</div>';
										if(data[i].salesPersonGaveOffer !=0){
											subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>AccountCounselor Discount</strong></h5>'+
											'<h5><strong id="salesPerson"><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
										'</div>';
										}
										subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5 style="color:#00FF00"><strong>You Pay</strong></h5>'+
											'<h5 style="color:#00FF00"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
										'</div>'+
										
										'</div>'+
										
										'<div>'+
											'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
										
												'<div class="buybtn_imgges" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')"></div>'+
											'</div>'+
										'</div>'+
										
										
										
								'</div>'+
       					 '</div>';
				
				
				}
				 if(i%3 ==2){
				
				subscription +='<div class="card mx-2" style="width: 25rem;background: #fff;box-shadow: rgba(0,0,0,.2) 0 0 15px;padding:10px;margin:10px;border-radius:30px;">'+

								'<div class="card-header border-0">'+
									'<div class="p-4" style="display:flex;justify-content:center">'+
										
										'<div class="header_imgBlue"></div>'+
									'</div>'+
								'</div>'+
								'<div class="card-body">'+       				
										'<div class="d-flex justify-content-center align-items-center" style="display:flex;justify-content:center; align-items:center">'+
								
										'<div class="">'+
										
										'<div style="padding:0px 20px;">'+
										'<p style="color:black">Take Subscription & No need to worry about your Rank... We will take care about you.</p>'+
										'</div>'+
										'<div style="padding:0px 20px;">'+
										'<h5 style="color:#4B0082"><strong>* Unlimited Access</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Personal Mentoring<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* You can ask Unlimited Doubts</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Live Classes<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Videos</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Week Area Strategy Practice<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Rank Jump Practice</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* All India Live Tests<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* After class - Practice</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Test Series<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Einstein Analytics</strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Great - Individual Analytics<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* Great - Comparative Analytics<strong><h5>'+
										'<h5 style="color:#4B0082"><strong>* 40 Year Qns. Practice & many more features.<strong><h5>'+
										'</div>'+
										
									'</div>'+
										'</div>'+
										
										
										'<div style="padding:0px 20px;">'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>'+data[i].subsciptionPeriod+'</strong></h5>'+
											'<h5><strong id="priceMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].amount+'.0/-</strong></h5>'+
										'</div>'+
									'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>Wallet Amount</strong></h5>'+
											'<h5><strong id="walletMount"><i class="fa fas fa-rupee-sign"></i>'+data[i].walletAmount+'.0/-</strong></h5>'+
										'</div>'+
										'<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>2x withdrawal Amount</strong></h5>'+
											'<h5><strong id="withdrawalamount"><i class="fa fas fa-rupee-sign"></i>'+data[i].refferalAmount+'.0/-</strong></h5>'+
										'</div>';
										if(data[i].salesPersonGaveOffer !=0){
											subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5><strong>AccountCounselor Discount</strong></h5>'+
											'<h5><strong id="salesPerson"><i class="fa fas fa-rupee-sign"></i>'+data[i].salesPersonGaveOffer+'.0/-</strong></h5>'+
										'</div>';
										}
										subscription +='<div style="display:flex;justify-content:space-between;">'+
											'<h5 style="color:#4B0082"><strong>You Pay</strong></h5>'+
											'<h5 style="color:#4B0082"><strong id="youPay"><i class="fa fas fa-rupee-sign"></i>'+youpay+'.0/-</strong></h5>'+
										'</div>'+
										
										'</div>'+
										
										'<div>'+
											'<div style="display:flex; justify-content:flex-end; padding:5px 20px;">'+
					
												'<div class="buybtnnn_imgges" onclick="buySubcription('+data[i].amount+','+data[i].id+','+data[i].walletAmount+','+data[i].refferalAmount+','+data[i].salesPersonGaveOffer+','+youpay+')"></div>'+
											'</div>'+
										'</div>'+
									'</div>'+
       					 '</div>';
				
				
				}
				
				}
				
				$("#subscriptionPay").empty("");       
				$("#subscriptionPay").html(subscription);
				
		},
		
		  error:function(data){
		    	  alert(data.errorMessage);
		      }	  
	
});
});



*/




	function buySubcription(amount,subscriptionId,walletAmount,refferalAmount,salesPersonGaveOffer,youpay,tax,salesOfferId,downPayment){

				//promo 
				
				
				/* var totG = paytotal.text();*/
		
		
		 		var totG =youpay;
		 		
		 		
		 		if(downPayment !=0){
		 			var amounttype="DOWNPAY"
		 				
		 		}
		 		else{
		 			var amounttype="";
		 			
		 		}
		 		
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
					var originalprice = amount;
					var  offerprice = amount;
					var  walletamount = walletAmount;

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
									
									// new key
									
									"salesOfferId":salesOfferId,
									"emiAmount":downPayment,
									"emiDetailsId":0,
									"type":amounttype,
									"tax":0,
									/*"totalAfterDiscount":totG,*/
									"totalAfterDiscount":totG,
									"discount":prmodiscount,
									"promocode":promocode,
									/*"grandtotal":totG,*/
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
									// new key
									
									"salesOfferId":salesOfferId,
									"emiAmount":downPayment,
									"emiDetailsId":0,
									"type":amounttype,
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
									// new key
									
									"salesOfferId":salesOfferId,
									"emiAmount":downPayment,
									"emiDetailsId":0,
									"type":amounttype,
									"tax":0,
									"totalAfterDiscount":totG,
									"discount":prmodiscount,
									"promocode":promocode,
									"grandtotal":totG,
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
								// new key
								
								"salesOfferId":salesOfferId,
								"emiAmount":downPayment,
								"emiDetailsId":0,
								"type":amounttype,
								"tax":0,
								"totalAfterDiscount":totG,
								"discount":0,
								"promocode":"",
								"grandtotal":totG,
								"examTypeId":examid,
								"transactionID":"ZOM123",
								/*"mobilenumber":"8297668888",*/
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
									   
									    //"key":"rzp_live_kLObuozs6uSEfu",//*/ // Enter the Key ID generated from the Dashboard
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
										        /*"email": "Patabhi@skyget.ai",*/
		                                        "email":"support@skyget.ai",
										        "contact": mobilenumber
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






function viewemipop(offerid,planname){

	var standareq ={

		"salesOfferId": offerid
		
	}
		
		var standstr = JSON.stringify(standareq);
		
	$.ajax({
		
		type: "POST",
		dataType: "json",
		 async:false,	 
		url: base_url+'rest/salesman/getOfferdetails',
		data: standstr,
		contentType: 'application/json',
		success: function(data){
			
			
		  console.log(data);
		  
		  $("#viewemi").modal();
		  
		  var viewdetails="";
		  
		  viewdetails +='<div class="row" style="padding:25px;">'+
						'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">plan</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-success">'+planname +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Subscription  Amount</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-warning">'+data.subscriptionAmount+'.00/-</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-5">'+
														/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">wallet Amount</label>'+
														'</div>'+
														'<div class="col-md-2">:</div>'+
														'<div class="col-md-5 text-primary">'+data.walletAmount+'.00/-</div>'+
													'</div>'+
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">AccountCounselor Discount</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>'+
													'<div class="col-md-5 text-danger">'+data.offerAmount+'.00/-</div>'+
												'</div>'+
												
												'<div class="col-md-12 form-group">'+
												'<div class="col-md-5">'+
												/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
													'<label class="control-label mb-5 bold">gstAmount('+data.gst+'%)</label>'+
												'</div>'+
												'<div class="col-md-2">:</div>'+
												'<div class="col-md-5">'+data.gstAmount+'.00/-</div>'+
											'</div>'+
											
											'<div class="col-md-12 form-group">'+
											'<div class="col-md-5">'+
											/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
												'<label class="control-label mb-5 bold">Total AmountToBePaid</label>'+
											'</div>'+
											'<div class="col-md-2">:</div>'+
											'<div class="col-md-5">'+data.totalAmountToBePaid+'.00/-</div>'+
										'</div>'+
										'<div class="col-md-12 form-group" style="font-size:20px;padding:0px 29px;color:#fd7e14"><u>Emi Details'+'</u></div><hr>'+
										
										'<div class="col-md-12 form-group">'+
										'<div class="col-md-5">'+
										/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
											'<label class="control-label mb-5 bold">downPayment/1st payment</label>'+
										'</div>'+
										'<div class="col-md-2">:</div>'+
										'<div class="col-md-5">'+data.downPayment+'.00/-</div>'+
									'</div>'+		
												
											'<div class="col-md-12 form-group">'+
											'<div class="col-md-5">'+
											/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
												'<label class="control-label mb-5 bold">EmiMonths</label>'+
											'</div>'+
											'<div class="col-md-2">:</div>'+
											'<div class="col-md-5">'+data.emiMonths+'Months</div>'+
										'</div>'+
										
									'<div class="col-md-12 form-group">'+
									'<div class="col-md-5">'+
									/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
										'<label class="control-label mb-5 bold">emiAmount</label>'+
									'</div>'+
									'<div class="col-md-2">:</div>'+
									'<div class="col-md-5">'+data.emiAmount.toFixed(2)+'</div>'+
								'</div>'+
								
							
						'</div>';
		  
		  
		  $("#showofferdetails").empty("")
		  $("#showofferdetails").append(viewdetails)
		  
	
},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	      }	  

});
	
}
