function livezoneEarningDetails(){
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	var appenddata="";
	var appenddatas="";
	$.ajax({
		url: base_url+'rest/student/getliveZoneEarningDetails/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			$("#livezoneearnings").html(data.liveZoneTotalEarning);
			
			for(var i=0; i<data.earningdetails.length;i++){
				
				  appenddata += "<tr ><td>"+data.earningdetails[i].examType+"</td>";
	    		  appenddata += "<td>"+data.earningdetails[i].nooftestTaken+"</td>"; 
	    		  appenddata += "<td>"+data.earningdetails[i].amount+"</td></tr>";
				
				}
			
	  $("#livezoneearningbody").empty();
	 // $("#livezoneearningbody").DataTable().clear().destroy();
	  $("#livezoneearningbody").append(appenddata);
	  $("#livezoneearningtbl").Table;
	  
	  
	  for(var j=0; j < data.targetdetails.length; j++){
			
			
		 // appenddatas +=  	'<li><p> '+data.targetdetails[j].examType+'<span id="" style="padding-left: 50px; color: darkorange;">-Rs.<span id="amount">'+data.targetdetails[j].amount+'</p></li>';
		
		  appenddatas += '<div class="row">'+
		              '<div class="col-lg-4"> '+data.targetdetails[j].examType+'</div>'+
		               '<div class="col-lg-3 " > <span style="color: darkorange;">Rs- '+data.targetdetails[j].amount+' </span></div>'+
		               '</div>';
	  }
	    $("#targetdetails").empty();
		 $("#targetdetails").append(appenddatas);
		 
		 
		},
		error:function(data){
			 alert(data.responseJSON.errorMessage);
        }
});
}

function referandEarnDetails(){
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var appendata = "";
	$.ajax({
		url:base_url+'rest/student/getReferandEarnDetails/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			if(data.studentimage !=""){
				var image = data.studentimage;
			}else{
				var image= base_url +"/assets/images/students/default.png";
			}
			$('#stdimage').attr('src', image);
			$("#studentname").html(data.studentname);
			$("#referalcode").html(data.referalcode);
			localStorage.setItem("referalcode", data.referalcode);
			$("#referandearn").html(data.referandearnamount);
			$("#livezoneearnings").html(data.livezoneearningAmount);
			$("#usedamount").html(data.usedamount);
			$("#wallettotal").html(data.wallettotal);
			
			
			if(data.expirystatus == false){
				appendata += "";
			}else{
				appendata += '<div class="col-sm-6 col-sm-offset-3 referandearn4 mrgn hvr mrgnbtm" style="padding: 26px 100px 2px 5px">'+ 
				'<div class="row">'+
			    '<div class="col-sm-3" style="text-align: -webkit-right;">'+
			        '<span><img src="<%=request.getContextPath()%>/assets/images/students/BonusWallet.svg"  width="50px" alt="">'+
			        '</span>'+
			        '</div>'+
			    '<div class="col-sm-9" style="">'+
			    '<h5 class="textstyle">Welcome Bonus - Rs. <span id="bonuswallet">'+data.welcomebonus+'</span></h5><br>'+
			    '<p class="text-center" style="color: black;font-size: 17px;">Use it now </p>'+
			    '<p class="fontcont">Otherwise,this bonus will expired on <span id="expdate">'+data.expirydate+'</span></p>'+
			    '</div></div></div>'
				
			}
			
			
			$("#welcomebonus").html(appendata);
			
			
		},
		error:function(data){
			 alert(data.responseJSON.errorMessage);
		}
	})
}