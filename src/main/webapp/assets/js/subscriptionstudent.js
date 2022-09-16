
var examdetails;
//Tab Get
function getAllTabWiseSubscription(){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata = "";
	
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getAllAcademicyearsAndPLanExamsService/'+sId,
		cache:false,
		success: function(data){
			
			var academdetails = data.academicyearTypeResp;
			examdetails = data.examtypesPojo;
			
			for(var i in academdetails){
				appenddata += '<li class="nav-item" onclick="getTabWiseExamType('+academdetails[i].Id+');"><a class="nav-link" data-toggle="tab" href="#'+academdetails[i].Id+'year" style="font-weight: 600;">'+academdetails[i].academicyearType+'</a></li>';	  
			}
			
			$("#ul-subscriptionTab").empty();
			$("#ul-subscriptionTab").append(appenddata);
			$("#ul-subscriptionTab li:first-child a").click();
		
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
	})	
}


function getTabWiseExamType(id){
	
	cart = [];
	if($("#radio").is(":checked")){
		$("#radio").attr("checked", false);
	}
	var academicId = id;
	var appenddata = "";
	var modelbody = "";
	
	var data = examdetails
	
	for(var i in data){
		appenddata += '<input class="checksub" type="checkbox" id="check'+data[i].examTypeId+'" data-academicyearid='+academicId+' name="check-'+data[i].examTypeId+'" value="'+data[i].examTypeId+'_'+data[i].examtype+'">'+
		'<label class="stylename" style="box-shadow:2px 4px 3px 3px grey" for="check'+data[i].examTypeId+'">'+data[i].examtype+'</label><span class="offervalidaes" id="offervalidtill_'+data[i].examTypeId+'" style="position: relative;top: -56px;left: 181px;float: none;"></span>'+
		'<span class="examnoti" data-toggle="modal" data-target="#examtypedetail'+data[i].examTypeId+'"  data-examid= '+data[i].examTypeId+'><img src="'+base_url+'/assets/images/students/subscriptionimages/Subscription.svg" width="25px"></span> ';	  
		
		modelbody += '<div class="modal modelback" id="examtypedetail'+data[i].examTypeId+'">'+
        '<div class="modal-dialog modeltop">'+
          '<div class="modal-content">'+
              '<button type="button" class="close modelclose" data-dismiss="modal">&times;</button>'+
           
            '<div class="modal-body" id="modelbodyexmdetail"><p id="contentstyle">'+data[i].examtypedetails+'</p><!-- data append -->'+
            '</div>'+
          '</div>'+
        '</div>'+
      '</div>';
	}
	
	
	$("#getexamtype").empty();
	$("#getexamtype").hide().append(appenddata).fadeIn(999);

	
	$("#modelappend").append(modelbody);
	$("#liexamtype").text("");
	$("#originalprice").text("");
	$("#offerprice").text("");
	$("#subtotaloffer").text("");
	$("#tax").text("");
	$("#walletamountused").text("");
	$("#totalprice").text("");
	$("#promoapplied").css("display","none");
}



var walletAmount = "";
function wallet(){
	
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var appenddata="";
	
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getWalletAmount/'+sId,
		cache:false,
		success: function(data){
			walletAmount = data.totalWalletAmt ;
			
			appenddata +='<span class="walletmoney"><div class="row wallrow"><div class="col-sm-6 namestu"><img src="'+base_url+'/assets/images/students/subscriptionimages/WalletIcon.svg" style="height:30px;"> Wallet</div><div class="col-sm-6 amountw" id="walletid"><i class="fa fa-inr" aria-hidden="true"></i> '+walletAmount+'</div></div></span>';
			
			//$("#ul-subscriptionTab").empty();
			$("#wallets").append(appenddata);
			//$("#walletamount").html('<i class="fa fa-inr" aria-hidden="true"></i>' + walletamount);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
});
}

//getExamTypeByStudentId
/*function getTabWiseExamType(id){
	cart = [];
	if($("#radio").is(":checked")){
		$("#radio").attr("checked", false);
	}
	var academicId = id;
	var appenddata = "";
	var modelbody = "";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/student/v1/getStudentExamtypes/'+sId,
		cache:false,
		success: function(data){
			for(var i in data){//active for first a
				appenddata += '<input class="checksub" type="checkbox" id="check'+data[i].id+'" data-academicyearid='+academicId+' name="check-'+data[i].id+'" value="'+data[i].id+'_'+data[i].name+'">'+
				'<label class="stylename" style="box-shadow:2px 4px 3px 3px grey" for="check'+data[i].id+'">'+data[i].name+'</label><span class="examnoti" data-toggle="modal" data-target="#examtypedetail'+data[i].id+'" onclick="modelexamdetail('+data[i].id+')" data-examid= '+data[i].id+'><img src="'+base_url+'/assets/images/students/subscriptionimages/Subscription.svg" width="25px"></span> ';	  
				'<label  for="check'+data[i].id+'">'+data[i].name+'<span class="examnoti" data-toggle="modal" data-target="#examtypedetail" onclick="modelexamdetail('+data[i].id+')" data-examid= '+data[i].id+'>i</span> </label>';	  
				
				modelbody += '<div class="modal modelback" id="examtypedetail'+data[i].id+'">'+
	            '<div class="modal-dialog modeltop">'+
	              '<div class="modal-content">'+
	                  '<button type="button" class="close modelclose" data-dismiss="modal">&times;</button>'+
	               
	                '<div class="modal-body" id="modelbodyexmdetail">'+data[i].examTypeDetails+'<!-- data append -->'+
	                '</div>'+
	              '</div>'+
	            '</div>'+
	          '</div>';
			}
			$("#getexamtype").empty();
			$("#getexamtype").hide().append(appenddata).fadeIn(999);
			$(".examnoti").css({
				'position':'relative',
				'top':'-56px',
				'left':'-12px',
				'cursor':'pointer'
			});
			
			$("#modelappend").append(modelbody);
			$("#liexamtype").text("");
			$("#originalprice").text("");
			$("#offerprice").text("");
			$("#subtotaloffer").text("");
			$("#tax").text("");
			$("#walletamountused").text("");
			$("#totalprice").text("");
			$("#promoapplied").css("display","none");
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
*/


var cart = [];
var promo = [];
var Item = function(exmid,exmname){
	this.exmid = exmid
	this.exmname = exmname

}
function addItemToCart(exmid,exmname){
	for(var i in cart){
		if(cart[i].exmid === exmid){
			// console.log("already");
			return;
		}
	}
	var item = new Item(exmid,exmname);
	cart.push(item);
	
	/*var li = "<span class='examid"+exmid+"'>"+item.exmname+"</span>"
	$("#liexamtype").prepend(li);*/
}
function AddItemRemove(exmid,exmname){

	for(var i in cart){
		if(cart[i].exmid === exmid){
			cart.splice(i, 1);
			var ulli = "#uladdexamtype .examid"+exmid;
			$(ulli).remove();
		}
	}
}


var originalprice = $("#originalprice");
var offerprice    = $("#offerprice");
var subtotaloffer = $("#subtotaloffer");
var totalprice    = $("#totalprice");
var promoapplied  = $("#promoapplied");
var paytotal      = $("#amttotal");
var buybutton     = $("#buybutton");

$(document).on('click', ".checksub", function(){ 

	if(this.checked){
		var ex = this.value.split('_');
		var exmid = ex[0];
		var exmname = ex[1];
		addItemToCart(exmid,exmname);

	}else{
		//removeCart
		var ex = this.value.split('_');
		var exmid = ex[0];
		var exmname = ex[1];
		AddItemRemove(exmid,exmname);
		console.log("unchecked");
	}

	subscriptionApply();
});
var exmidd ;
var subtotalamount = 0;
function subscriptionApply(){
	exmidd = []
	var exam = [];
	/*var slicArray = [];
	slicArray = cart.slice();*/
	var acaId = parseInt($(".checksub").attr('data-academicyearid'));
	var li = "";
	for(var i in cart){
		var carti = parseInt(cart[i].exmid);
		exam.push(carti);
		exmidd.push(carti);
	}
	
	/*for(var z in slicArray){
		
		li += "<span class='examid"+slicArray[z].exmid+"'>"+slicArray[z].exmname+"</span>";
	}*/
	for(var z=0;z<cart.length;z++){
		if(z == (cart.length - 1)){
			li += " <span class='examid"+cart[z].exmid+"'>"+cart[z].exmname+"</span>";
		}else{
			li += "<span class='examid"+cart[z].exmid+"'>"+cart[z].exmname+ "</span> |  ";
		}
		
	}
	$("#liexamtype").empty();
	$("#liexamtype").prepend(li);
	var appenddata = "";
	if(exam.length > 0){
		var inputData = {
				"academicyearId":acaId,
				"examtypeId":exam
		}
		var outputData = JSON.stringify(inputData);
		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			url: base_url+'rest/admin/getAllSubscriptionsByAcademicType',
			data:outputData,
			success:function(data){
				$( ".offervalidaes").html('');
				for(var valid in exam){
					
					
				$('#offervalidtill_'+exam[valid]).html('Offer Valid Till :'+data[0].validity);
						}
				subtotalamount = data[0].offerprice;
				originalprice.html('<del><i class="fa fa-inr" aria-hidden="true"></i>'+data[0].orginalprice+'<del>');
				offerprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+subtotalamount);
				subtotaloffer.html('<i class="fa fa-inr" aria-hidden="true"></i>'+subtotalamount);
				totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+subtotalamount);
				var subgrandtax = subtotalamount*18/100;
				var taxdeci = subgrandtax.toFixed(2);
				$("#tax").html('<i class="fa fa-inr" aria-hidden="true"></i>'+taxdeci);
				var firstCaseTotal = data[0].offerprice + subgrandtax;
				paytotal.html('<i class="fa fa-inr" aria-hidden="true"></i>'+firstCaseTotal);
				
				$(".promocode").css({"border-top":"0","border-bottom":"0"});
				promoapplied.html('<span class="exmprice"> <input class="promoinput" type="type" id="promo" name="promo" value=""></span><span class="promobtn" onclick="promoapply('+data[0].subscriptionId+')">Promo Apply</span><span class="discountpromo"></span>');
				//$("#promoapplied").css('display','flex');
				$("#promoapplied").css({
					"padding-right": "4px",
					"padding-left":"10px",
					"padding-bottom":"10px",
					"padding-top": "10px",
					"display":"flex"
				})
				$("#walletamountused").text("");
				$("#radio").attr('checked', false);
				//promoapplied.html('<span class="exmprice"> <input class="promoinput" type="type" id="promo" name="promo" value=""></span><span class="promobtn" onclick="promoapply('+data[0].subscriptionId+')">Promo Apply</span> ');
				buybutton.css('display','block');
				
				$("#radio").css("pointer-events","auto");
				buybutton.html('<button class="btn btnbuy" onclick="buy('+data[0].subscriptionId+','+data[0].orginalprice+','+subtotalamount+');">Buy</button>');
				
				
				
				
			},
			error:function(data){
				//alert(data.responseJSON.errorMessage);
				alert("Subscription not available for this combination");
				buybutton.css("display","none");
				$("#radio").css("pointer-events","none");
				if(data.responseJSON.status === false){
					if(exam.length > 0){
						for(var i in exam){
							var ulli = "#uladdexamtype .examid"+exam[i];
							$(ulli).remove();
						}
					}
					for(var k=0;k<exam.length;k++){
						$("#check"+exam[k]).attr("checked",false);
					 }
					$("#liexamtype").empty();
					cart = [];
					originalprice.text('');
					offerprice.text('');
					subtotaloffer.text('');
					totalprice.text('');
					paytotal.text('');
					$("#walletamountused").text("");
					$("#radio").attr('checked', false);
					$("#promoapplied").css('display','none');
					$("#tax").text("");
					for(var validerr in exam){
					
					//$("#offervalidtill"+exam[valid]).html('');
				$( ".offervalidaes").html('');
						}
				}
			}
		});
	} else{
		originalprice.text('');
		offerprice.text('');
		subtotaloffer.text('');
		totalprice.text('');
		paytotal.text('');
		buybutton.css('display','none');
		$("#promoapplied").css('display','none');
		$(".promocode").css("padding","0");
		$("#tax").text("");

					
					$( ".offervalidaes").html('');
				
						
	}

}
//Remove cart
//promo
var promoapplystatus = "";
var promodiscount =0;
var promocodegrandtotal = 0;
function promoapply(subscripId){
	var subp = subscripId;
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var promocode = $(".promoinput").val();
	if(promocode === "" || promocode === null || promocode === undefined){
		alert("Please Enter a Promo Code");
		return false;
	}
	var inputData = {
			"planId":subp,
			"studentId":studid,
			"promocode":promocode
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'rest/student/getPriceAfterPromo',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			if(data.discount == 0 && data.grandTotal == 0 && data.subtottal == 0 && data.grandTotalAfterwalletamountDeducted == 0){
				alertify.alert(data.message);
			}else{
			promoapplystatus = true;
			subtotaloffer.html('<i class="fa fa-inr" aria-hidden="true"></i>'+data.subtottal);
			$(".promoinput").css("width","140px");
			promodiscount = data.discount;
			promocodegrandtotal =data.grandTotal;
			$(".discountpromo").html(' <span class="dislabel totalprice">Discount</span><span class="discount"><i class="fa fa-inr" aria-hidden="true"></i>'+promodiscount+'</span><i class="fa fa-times ex" aria-hidden="true" onclick=xpromo();></i>');
			var subgrandtax = promocodegrandtotal*18/100;
			var taxdeci = subgrandtax.toFixed(2); 
			$("#tax").html('<i class="fa fa-inr" aria-hidden="true"></i>'+taxdeci);
			$("#subtotaloffer").html('<i class="fa fa-inr" aria-hidden="true"></i>'+promocodegrandtotal);
			totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+promocodegrandtotal);
			var totsubtax = promocodegrandtotal + subgrandtax;
			if($("#radio").is(":checked")){
				var offpric = parseInt(offerprice.text());
				var nintyperoffpric = offpric*90/100;//90
				var afternintydis = nintyperoffpric - promodiscount;
				var taxttext = Number($("#walletamountused").text());
				$("#walletamountused").text("");
				$("#walletamountused").html('<i class="fa fa-inr" aria-hidden="true"></i>'+afternintydis);
				var subtaxtot = promocodegrandtotal - afternintydis;
				subtaxtot = subtaxtot.toFixed(2);
				totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+subtaxtot);
				var taxcalc = subtaxtot*18/100;
				var taxtotal = taxcalc.toFixed(2);
				$("#tax").html('<i class="fa fa-inr" aria-hidden="true"></i>'+taxtotal);
				var caluation = Number(subtaxtot) + Number(taxtotal)
				var finalcal = caluation.toFixed(2);
				paytotal.html('<i class="fa fa-inr" aria-hidden="true"></i>'+finalcal);
				$("#subtotalpromo").val(subtaxtot);
			}else{
				paytotal.html('<i class="fa fa-inr" aria-hidden="true"></i>'+totsubtax);
			}
			}
			
			//totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+subtaxtot);
		},
		error:function(data){
			promoapplystatus = false;
			alert(data.responseJSON.errorMessage);
		}

		 });
			console.log(cart);
			/*originalprice.text('');
			offerprice.text('');
			subtotaloffer.text('');
			totalprice.text('');*/
}


//promo remove
function xpromo(){
	console.log("clicked");
	
	 promodiscount = 0;
	 promocodegrandtotal = 0;
	 if($("#radio").is(":checked")){
		 $("#radio").attr("checked", true);
		 $("#radio").click();
		 subscriptionApply();
	 }else{
		 subscriptionApply();
	 }
	 
}

//features
function getExamTypeFeatures(){
	var appenddata="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/student/getexamTypeFeatues',
		cache:false,
		success: function(data){
			appenddata += '<li>'+data.Textmsg1+'</li>';
			appenddata += '<li>'+data.Textmsg2+'</li>';
			appenddata += '<li>'+data.Textmsg3+'</li>';
			appenddata += '<li>'+data.Textmsg4+'</li>';
			$(".exmtypefeaul").empty();
			$(".exmtypefeaul").append(appenddata);
		},
		error:function(data){
			//alert(data.responseJSON.errorMessage);
		}
	});
}

//buy
function buy(subscriptionId,orglprice,offrprice){
	//promo 
	
	
	 var totG = paytotal.text();
	 var prmodiscount = $(".discount").text();
	 var promocode = $(".promoinput").val();
	 var examid ="";
	/* if(typeof examtypes !== "undefined" && typeof examtypes !== "string"){
		 examid = examtypes;
	 }else{
		 console.log("not an array")
	 }*/
	
	
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var subscripId = subscriptionId;
	var originalprice = orglprice;
	var  offerprice = offrprice;
	var  walletamount = walletdeductedamount;

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
					"offerprice":offrprice,
					"tax":0,
					"totalAfterDiscount":totG,
					"discount":prmodiscount,
					"promocode":promocode,
					"grandtotal":totG,
					"transactionID":"ZOM123",
					"mobilenumber":"8297668888",
					"examTypeId":exmidd,
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
					"offerprice":offrprice,
					"tax":0,
					"totalAfterDiscount":totG,
					"discount":0,
					"promocode":promocode,
					"grandtotal":totG,
					"transactionID":"ZOM123",
					"mobilenumber":"8297668888",
					"examTypeId":exmidd,
					"walletamount":walletamount,
					"paymentstatus":"WIP"		
			}
		}else if(prmodiscount != 0 && walletamount ===0 || walletamount ===""){
          var inputData ={
					
					"studentId":studid,
					"planId":subscripId,
					"userType":"web",
					"price":originalprice,
					"offerprice":offrprice,
					"tax":0,
					"totalAfterDiscount":totG,
					"discount":prmodiscount,
					"promocode":promocode,
					"grandtotal":totG,
					"transactionID":"ZOM123",
					"mobilenumber":"8297668888",
					"examTypeId":exmidd,
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
				"offerprice":offrprice,
				"tax":0,
				"totalAfterDiscount":totG,
				"discount":0,
				"promocode":"",
				"grandtotal":totG,
				"examTypeId":exmidd,
				"transactionID":"ZOM123",
				"mobilenumber":"8297668888",
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
				var amount=data.amount;
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
						    "key":"rzp_live_kLObuozs6uSEfu", // Enter the Key ID generated from the Dashboard
						    "amount": "100", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
						    "currency": "INR",
						    "name": "Skyget",
						    "description": "Test Transaction",
						    "image": base_url+"assets/landing/img/logo2.svg",
						    "order_id": data.razorpay_orderid, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
						    "callback_url": redirect_url,
						    "prefill": {
						        "name": "patabhi",
						        "email": "Patabhi@skyget.ai",
						        "contact": "9999999999"
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

//getAllStudentDetails

function getStudentSubscDetails(){

	var appenddata="";
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var inputData = {
			"studentId":studid
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		data:outputData,
		url: base_url+'rest/student/getAllSubscriptionsByStudentId',
		cache:false,
		success: function(data){
			for(var i=0;i<data.length;i++){
				appenddata +='<div class="main">'+
           '<div class="first"></div>'+
           '<div class="second">'+
               '<h5 class="valdate"><text class="valtex">Validity Till: </text> <span class="date">'+data[i].expiryDate+'</span></h5>';
            	   appenddata += '<h5 class="subsbd"><text class="substext">Subscribed : </text><span class="excolor" id="exmcomma">';
            	   var exm = data[i].examtypes;
            	   if(exm !=null){
            		   
                	   for(var j=0;j<exm.length;j++){
                		   /*appenddata += '<span id="exmcomma">'+exm[j].examtype+',</span>';*/
                		   appenddata += exm[j].examtype+',';
                	       }
                	   }
            	   /*'</span></h5>';*/
               appenddata += '</span></h5><div class="stcat"><text class="stand">Standard : </text><span class="standtext">'+data[i].Standard+'</span>'+
              '<text class="stand stand2">Category : </text><span class="cattext">'+data[i].category+'</span>'+
              '</div>'+
              '<hr>'+
              '<div class="row row2">'+
              '<div class="col-sm-4">Original Price : <text>'+data[i].orginalprice+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'+
              '<div class="col-sm-4">Offer Price : <text>'+data[i].offerprice+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'
              if(data[i].emiDetailsResponses == "" || data[i].emiDetailsResponses == null){
             	 
            	   appenddata += '<div class="col-sm-4">Amount Paid : <text>'+data[i].totalAfterDiscount+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'
                  
               }else{
            	   
 var emiDetailsResponses1=data[i].emiDetailsResponses;
            	   
 for(var s=0;s<emiDetailsResponses1.length;s++){
            		   
            		   if(emiDetailsResponses1[s].paid){
            	   
            	   appenddata +=  '<div class="col-sm-4">Amount Paid : <text>'+emiDetailsResponses1[s].emiAmount+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'
                   
            		   }
            		   
            		   }
               }
               appenddata +='</div>'+
              '<div class="gain">Gain From: </div>'+
              '<div class="row row3">'
              if(data[i].walletAmountUsed == "" || data[i].walletAmountUsed == null || data[i].walletAmountUsed != 0){
            	  appenddata += "";
              }else{
            	  appenddata += '<div class="col-sm-4">Wallet : <text>'+data[i].walletAmountUsed+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'
              }
                  
               appenddata +=  '<div class="col-sm-4">By Promo Code : <text>'+data[i].discount+'<i class="fa fa-inr" aria-hidden="true"></i></text></div>'+
                  '<div class="col-sm-4 viewdetails" data-toggle="modal" data-target="#myModal">View Details</div>'+
              '</div>'+
           '</div>'+
       '</div>';
			}
			$("#sublistdetails").empty();
			$("#sublistdetails").append(appenddata);
			var exe = $("#exmcomma").text();
			var ex = exe.substr(0, exe.length-1);
			exmcomma.innerHTML = ex;
		
		},
		error:function(data){
			//alert(data.responseJSON.errorMessage);
			var studname = LoginData.name;
			$("#ifsubdetailsempty").click();
			$("#nameinsubdetails").text(studname);
			
		}
	})
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

$("#radio").click(function (){
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var offpric = parseInt(offerprice.text());
	var wallstatic = parseInt($("#walletid").text());
	var walletamount =	walletAmount;
	var totalNum = totalprice.text();
	var totalgrand = Number(totalNum);
	if(this.checked){
		
		if( totalNum == "" || totalNum == null )
		{
			$("#radio").attr('checked', false);
			alert("Please select exam type!");
			return;
		}
		
		if(totalgrand == 0)
		{
			$("#radio").attr('checked', false);
			//alert("Your total amount is already 0");
			alert("Please select exam type!");
			return;
		}
		
		if(promoapplystatus && totalgrand == 0 )
		{
			alert("Your total amount is already 0");
			return;
		}
		if(promocodegrandtotal === 0){
			
			if(walletamount > offpric){
				var totalnintypercent = offpric*90/100;
				var totalwall = walletamount - totalnintypercent;
				var totalsubninty = offpric - totalnintypercent;
				
				var substractedamount	 =  walletamount - totalnintypercent;
				walletdeductedamount = walletamount - substractedamount;
				walletdeductedamount= -(walletdeductedamount.toFixed(2));
				$("#walletamountused").html('<i class="fa fa-inr" aria-hidden="true"></i>' + (-(walletdeductedamount)));
			}else{
				walletdeductedamount = -(walletamount);
				$("#walletamountused").html('<i class="fa fa-inr" aria-hidden="true"></i>' + (-(walletdeductedamount)));
				
			}
			
			}
			else{
				if(walletamount > offpric){
					var totalnintypercent = offpric*90/100;
					var totaldisofninty = totalnintypercent - promodiscount;
					var totalwall = walletamount - totaldisofninty;
					var totalsubninty = offpric - totaldisofninty;
					
					var substractedamount = walletamount - totaldisofninty;
					walletdeductedamount = walletamount - substractedamount;
					walletdeductedamount = -(walletdeductedamount);
					walletdeductedamount = walletdeductedamount.toFixed(2);
					$("#walletamountused").html('<i class="fa fa-inr" aria-hidden="true"></i>' + (-(walletdeductedamount)));
					
				}else{
					walletdeductedamount = -(walletamount);
					walletdeductedamount = walletdeductedamount.toFixed(2);
					$("#walletamountused").html('<i class="fa fa-inr" aria-hidden="true"></i>' + (-(walletdeductedamount)));
				}
				
			}
			
			
			
			var finalcalculatedamount = 0;
			var walletmoneydeducted = 0;
			walletmoneydeducted = Number(walletdeductedamount);
			if(totalgrand !== 0){
				
				if(walletmoneydeducted > totalgrand){
					finalcalculatedamount 	= walletmoneydeducted + totalgrand;
				}else{
					finalcalculatedamount = totalgrand + walletmoneydeducted;
				}
			}else{
				
				if(totalgrand > walletmoneydeducted){
					finalcalculatedamount	=totalgrand + walletmoneydeducted;
		       }else{
		    	finalcalculatedamount = walletmoneydeducted +totalgrand;
		        }
			}
			finalcalculatedamount = finalcalculatedamount.toFixed(2);
			totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>'+finalcalculatedamount);
			
			var subtax = finalcalculatedamount*18/100;
			var taxdeci = subtax.toFixed(2);
			var totalamut = Number(finalcalculatedamount) + Number(taxdeci);
			var finalamt = totalamut.toFixed(2);
			$("#tax").html('<i class="fa fa-inr" aria-hidden="true"></i>' + taxdeci);
			paytotal.html('<i class="fa fa-inr" aria-hidden="true"></i>'+ finalamt);
			
			
	}else{
		//var firstCaseTotal = data[0].offerprice + subgrandtax;
		var offr = Number($("#subtotaloffer").text());
		var subgrandtax = offr*18/100;
		var taxdeci = subgrandtax.toFixed(2); 
		var offtotl = offr + subgrandtax;
		totalprice.html('<i class="fa fa-inr" aria-hidden="true"></i>' + offr);
		$("#tax").html('<i class="fa fa-inr" aria-hidden="true"></i>' + taxdeci);
		paytotal.html('<i class="fa fa-inr" aria-hidden="true"></i>'+offtotl);
		$("#walletamount").html('<i class="fa fa-inr" aria-hidden="true"></i>' + wallstatic);
		$("#walletamountused").text("");
	}

	 
});

(function(){
	$(".navbar.navbar-inverse.navbar-fixed-top, .fixed-sidebar-left").css("display","none");
	$(".page-wrapper").css({"margin":"0 auto","padding-top":"0"});
	$("#radio").css("pointer-events","none");
})();
$(document).on("click", ".subhead", () => {
	window.location = base_url+"jsp/student/student%20module/subscriptiondetails.jsp";
})