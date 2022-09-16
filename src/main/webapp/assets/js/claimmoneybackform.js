function getclaimmoneyformdetails(){
	var Aadhar=$("#Aadhar").val();
	var Admitcard=$("#Admitcard").val();
	var Scorecard=$("#Scorecard").val();
	var comment=$("#comment").val();
	var AccountName=$("#AccountName").val();
	var AccountNumber=$("#AccountNumber").val();
	var BankName=$("#BankName").val();
	var AccountType=$("#AccountType").val();
	var IfscCode=$("#IfscCode").val();
	var BankAdress=$("#BankAdress").val();
	var relationToYou=$("#relationToYou").val();
	 
	 
	if(Aadhar.length<12){
		alert("please enter your aadhar number");
		modelfalse = false;
		return false;
	}
	if(Admitcard=="" || Admitcard=="null"){
		alert("please enter your admit card");
		modelfalse = false;
		return false;
	}
	if(Scorecard=="" || Scorecard=="null"){
		alert("please enter your aadhar number");
		modelfalse = false;
		return false;
	}
	if(AccountName=="" || AccountName=="null"){
		alert("please enter your account name");
		modelfalse = false;
		return false;
	}
	if(AccountNumber=="" ||AccountNumber.length<12){
		alert("please enter your aadhar number");
		modelfalse = false;
		return false;
	}
	 var reg = /[A-Z|a-z]{4}[0][a-zA-Z0-9]{6}$/;
	 var inputvalues = $(this).val();      
	               
	 if (inputvalues.match(reg)) {    
	                    return true;    
	                }    
	                else {    
	                    alert("You entered invalid IFSC code");    
	                    return false;    
	                }
	 
	/*if(IfscCode(reg)=="" ||IfscCode(reg)=="null"){
		alert("please enter your ifsc code");
		modelfalse = false;
		return false;
	}*/
	
	 /*if(BankAdress=="" || BankAdress="null"){
		alert("please enter your bank address");
		modelfalse = false;
		return false;
	}*/
	
	var input={
			
			"adharid":Aadhar,
			"admitcard":Admitcard,
			"scorecard":Scorecard,
			"bankname":BankName,
			"accountholder":AccountName,
			"accountnumber":AccountNumber,
			"accounttype":accounttype,
			"ifsccode":IfscCode,
			"bankaddress":BankAdress,
			"gaurdian":relationToYou,
			"studentid":studentid
			
	}
	
	var json = JSON.stringify(object);
	
	$.ajax({
		type:"POST",
		url : base_url+'rest/student/claim/',
		data:"json",
		contentType:'application/json',
		success:function(data){
			 var jsonData = {};
			
	    	  jsonData['adharid'] = Aadhar;
	    	  jsonData['admitcard'] = Admitcard;
	    	  jsonData['scorecard'] = Scorecard;
	    	  jsonData['bankname'] = BankName;
	    	  jsonData['accountholder'] = AccountName;
	    	  jsonData['accountnumber'] = AccountNumber;
	    	  jsonData['accounttype'] = accounttype;
	    	  jsonData['ifsccode'] = IfscCode;
	    	  jsonData['bankaddress'] = BankAdress;
	    	  jsonData['gaurdian'] = relationToYou;
	    	  jsonData['studentid'] = data.details; 
	    	},
	    
		error:function(data){
			alert(data.responseJSON.errorMessage);
			
		}
	});
}


