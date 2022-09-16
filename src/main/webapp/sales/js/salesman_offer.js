var percentage1="";
var value1="";
var studentid="";
var salesPersonsId="";
var wallet="";
var emiavailables="";
	
$(document).ready(function(){
	
	percentage1=sessionStorage.getItem("percentage");
	
	value1=sessionStorage.getItem("value");
	
	salesPersonsId= sessionStorage.getItem("slaesmanId");
	
	studentid=sessionStorage.getItem("studentid");
	
	emiavailables=sessionStorage.getItem("emiavailable");
	
	if(emiavailables=="" || emiavailables==null || emiavailables==undefined || emiavailables==false){
		
		//$("#emiavailableoffer").css("display","block");
		
		document.getElementById('emiavailableoffer').style.display = 'none';
		
	}
	
	else{
		
		document.getElementById('emiavailableoffer').style.display = 'block';
		
	}

	$("#salesPersonId").val(salesPersonsId);
	
	walletreferalamout();
	

	var today = new Date();

	var day = today.toISOString().substr(0, 10);

	var emidate=$("#emidate").val(day);
	
	/*$("#studentId").val(studentid);	*/
	
	
	skygetsubscription();
	
	
	
});

function skygetsubscription(){
	
/*	var LoginData = getLoginData();
	var sId = LoginData.studentid;*/
	 
$.ajax({
	  url : base_url+"rest/admin/getAllSubscriptions",
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
	
		  console.log(data);
 		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
			 
			 
			 
 			tabledata +='<option value="'+data[i].subscriptionId+'" data-amount="'+data[i].offerprice+'">'+data[i].academicyear+'</option>';
 			
 			} 
		  $("#categorydata").empty("");
	        $("#categorydata").append('<option value="";>Select Plan Id </option>'); 
			 $('#categorydata').append(tabledata); 
		 
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
};

var myTag="";

$("#categorydata").change(function(){
	
    var element =  $(this).find('option:selected'); 
    
    myTag = element.attr("data-amount"); 
 

 
	$("#subscriptionAmount").val(myTag);
	
	

	
	
});  
var typetrim="";
var totalamount="";
var vals="";
var datval="";
var p="";
var v="";
var val="";
var per="";


$("#downpayment").keyup(function(e){
	
	var youpay=$("#totalpay").val();
	
	var monthsoption=$("#EMImonths").val();
	
    var downpayment=$("#downpayment").val();
    
	if(monthsoption=="" || monthsoption==null){
		
		$("#montlypay").val("0");
	}
	else{
	var monthpayy=(youpay-downpayment)/monthsoption;
	
	var monthpayys=parseInt(monthpayy);
	
	$("#montlypay").val(monthpayys);
	}
	
})
	$("#EMImonths").change(function(){
		
		var youpay=$("#totalpay").val();
		

		var downpayment=$("#downpayment").val();

		if(downpayment=="" || downpayment==null || downpayment=="0"){
			
			var monthsoption=$("#EMImonths").val();
			
			var monthpayy=youpay/monthsoption;
			
			var monthpayys=parseInt(monthpayy);
			
			$("#montlypay").val(monthpayys);
			
		}
	
		
		
else{
	var youpay=$("#totalpay").val();
	
		var monthsoption=$("#EMImonths").val();
		
		var downpayment=$("#downpayment").val();
		
		var monthpayy=(youpay-downpayment)/monthsoption;
		
		var monthpayys=parseInt(monthpayy);
		
		$("#montlypay").val(monthpayys);
		
		
	
}

});


$("#percentage").keyup(function(e){
	
	val=$("#subscriptionAmount").val();
	if(val =="" || val ==null){
		
		alertify.alert("Please select Plan Id")	
		$("#percentage").val(" ");
		$("#offerAmount").val(" ");
	}
	else{	
	
	
per=$("#percentage").val();
console.log(per);


if(per =="" || per ==null){

	$("#offerAmount").val(" ");
}

else{
	
	/*if(per >100){
		
		alertify. alert("Percentage should be less than or equal to 100")
			$("#percentage").val(" ");
		$("#offerAmount").val(" ");
		
	}
	else{*/
		var type=$("#offertype").val();
		
		
		$("#totalpay").val(data1);
		
		
v=parseInt(val);
p=parseInt(per);

	if(type =="percentage"){
		
		typetrim=per.trim();
		var typetrim1=parseInt(typetrim);
		var percentage12=parseInt(percentage1);
		if(typetrim1 <= percentage12){
			
			   vals=v*p/100;
				datval=vals.toFixed();
			    $("#offerAmount").val(datval);
			    
			   
			var typea=$("#offerAmount").val();
				
		         var taxxx=$("#taxx").val();
		         
		        var walletmount=$("#wallets").val();

				var data=myTag-typea-walletmount;
				
				var datax=data*taxxx;
				
			    var data1=datax/100;
				
				var data2=data1.toFixed();
				
				$("#GST").val(data2);
				
				var youpay=myTag-typea-walletmount+data1;
				

				//var youpay1=parseInt(youpay);
				
				var youpay1=youpay.toFixed();
				
				$("#totalpay").val(youpay1);
				
				
				
				
				
		}

		else{
	    alert("You can give offer upto "+percentage12+" percentage")	
		$("#offerAmount").val(" ");
		$("#percentage").val(" ");
		}
	
		}
		else{
			
			
			typetrim=per.trim();
			var typetrim1=parseInt(typetrim);
			var value12=parseInt(value1);
			if(typetrim1 <= value12){
				totalamount=p;
				$("#offerAmount").val(totalamount);
				

          //offer amount
				var typea=$("#offerAmount").val();
				
		         var taxxx=$("#taxx").val();
              //walllet amount
		         var walletmount=$("#wallets").val();

				 var data=myTag-typea-walletmount;
				
				var datax=data*taxxx;
				//gst
			    var data1=datax/100;
	            
			    var data2=data1.toFixed();
				
				$("#GST").val(data2);
				
				//final amount
				var youpay=myTag-typea-walletmount+data1;
				
                var youpay1=youpay.toFixed();
				
				$("#totalpay").val(youpay1);
				
				
				
				}
			else{
	
			alert("You can give offer upto "+value12+" value")	
			$("#offerAmount").val(" ");
			$("#percentage").val(" ");
			}
				
			
		}


}

	}
})

var types="";

$('#offertype').on('change', function() {
	
	if(per =="" || per ==null){
		
		$("#offerAmount").val(" ");
	}
	else{
		
    types= $(this).find(":selected").val();
   
if(types =="percentage"){
		
		typetrim=per.trim();
		var typetrim1=parseInt(typetrim);
		var percentage12=parseInt(percentage1);
		
		if(typetrim1 <= percentage12){
			
			   vals=v*p/100;
				datval=vals.toFixed();
			    $("#offerAmount").val(datval);
		}

		else{
	    alert("You can give offer upto "+percentage12+" percentage")	
		$("#percentage").val(" ");
	    $("#offerAmount").val(" ");
		}
	
		}
		else{
			typetrim=per.trim();
			var typetrim1=parseInt(typetrim);
			var value12=parseInt(value1);
			if(typetrim1 <= value12){
				totalamount=p;
				$("#offerAmount").val(totalamount);
					
				}
			else{
	
			alert("You can give offer upto "+value12+" value")	
			$("#offerAmount").val(" ");
			$("#percentage").val(" ");
			}
		}
	}
});



function percentage(){	
	if(per =="" || per ==null){
		$("#offerAmount").val(" ");
	}
	else{
	vals=v*p/100;
		
		datval=vals.toFixed();
		
	/*	totalamount=val-datval;*/
	
		$("#offerAmount").val(datval);
	}
		
	}
function create_salesManoffer(){

	/*var studentId= $("#studentId").val();*/
	var planId=$("#categorydata").val();
	var subscriptionAmount= $("#subscriptionAmount").val();
	var percentage= $("#percentage").val();
	var offerAmount= $("#offerAmount").val();
	var salesPersonId= $("#salesPersonId").val();
	var offertype=$("#offertype").val();
	var validityInhrs= $("#validityInhrs").val();
	
	var gst=$("#GST").val();
	/*	var wallet=	$("#wallet").val();*/
	
	var wallet="0";
	
					var emimoths=$("#EMImonths").val();
					
					var emimoths1=parseInt(emimoths);
							var downpayment=$("#downpayment").val();
							

							var totalpay=$("#totalpay").val();
							

									var montlypay=$("#montlypay").val();
									
									var montlypay1=totalpay/emimoths1;
							
	/*if(studentId==""||studentId==null){
  		
  		alert("Please enter the Sales Man");
  		return false;
  	}*/
									
var emidate=$("#emidate").val();

//consoole.log(day);

if(planId==""||planId==null){
  		
  		alert("Please Select the planId ");
  		return false;
  	} 

if(subscriptionAmount==""||subscriptionAmount==null){
  		
  		alert("Please enter the Password");
  		return false;
  	} 

if(offertype==""||offertype==null){
		
		alert("Please select the Offertype");
		return false;
	} 

if(percentage==""||percentage==null){
  		
  		alert("Please enter the Percentage");
  		return false;
  	} 


/*if(offerAmount==""||offerAmount==null){
  		
  		alert("Please enter the Address - 2");
  		return false;
  	} */



if(validityInhrs==""||validityInhrs==null){
  		
  		alert("Please enter the validity in Hrs");
  		return false;
  	} else if(validityInhrs>2){
  		alert("validity Hrs should be less than 2 Hrs");
  		return false;
      }

if(downpayment=="" || downpayment==null || downpayment==undefined){
	
	downpayment="0"
}

if(montlypay1=="" || montlypay1==null || montlypay1==undefined){
	
	montlypay1="0"
}
if(emimoths=="" || emimoths==null || emimoths==undefined){
	
	emimoths="0"
}
if(emidate=="" || emidate==null || emidate==undefined){
	
	emidate="0"
}

var input ={
		  
			"studentId":studentid,
		    "planId":planId,
			"subscriptionAmount":subscriptionAmount,
			"percentage":percentage,
			"offerType":offertype,
			"offerAmount":offerAmount,
		     "salesPersonId":salesPersonId,
		     "validityInhrs":validityInhrs,
		     "gstAmount":gst,
				"walletAmount":wallet,
			     "emiMonths":emimoths,
			     "downPayment":downpayment,
			     "totalAmountToBePaid":totalpay,
			   //  "emiAmount":montlypay1,
			     "emiAmount":  montlypay ,
			     "everyMonthDueDate":emidate
		    
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/salesman/salesOffer/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	  alert(data.message);
	 console.log(data)
	/*location.assign("salesHome.jsp");*/
	window.location = base_url+"sales/jsp/salesHome.jsp";
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}

function walletreferalamout(){
	
var input ={
		  
		"studentId":studentid
}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/salesman/getwalletGst",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	
	/*location.assign("salesHome.jsp");*/
		 // walletAmount
		//refferalAmount
		  //taxPercentage
		  
		  //wallet=walletamout+2(refferalAmount);
		  
		 wallet=data.walletAmount+2*data.refferalAmount;
		  
		  $("#wallets").val(wallet);
	
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}

	
	
