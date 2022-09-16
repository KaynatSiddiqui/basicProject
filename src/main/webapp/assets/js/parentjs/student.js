//student register
//student register
$(window).on('load', function() {
    $('body').addClass('loaded');
 });
	function getstudentcommon(){
var LoginData = getLoginData();
var studid = LoginData.studentid;
$.ajax({
	url: base_url+'rest/student/v1/getstudentdetails/'+studid,
	type:"GET",
	dataType:"json",
	contentType:'application/json',
	success:function(data){
	for(var i=0; i<data.length; i++){
		if(data[0].photo !=""){
			var image = data[0].photo;
		}else{
			var image= base_url +"/assets/images/students/default.png";
		}
		
		 $("#notifcount").html(data[0].notificationCount);
		$("#nme").html(data[i].name+"!");
		$("#categoryname").html(data[i].category+"<br/>"+data[i].standardName);
		$('#profileimg').attr('src', image);
	}
	
},
error:function(data){
alert("student details not founds");
}
});
} 
//get parent details (parent name at the top header rightside)
	function getParentDetails(){
		var LoginData = getLoginData();
		var studid = LoginData.studentid;
		var inputdata = {
				"studentId":studid,
		}
		var output =JSON.stringify(inputdata);
		$.ajax({
			url: base_url+'rest/student/getparentsDetails',
			type:"POST",
			dataType:"json",
			contentType:'application/json',
			data:output,
			success:function(data){
			for(var i=0; i<data.length; i++){
				if(data[0].photo !=""){
					var image = data[0].photo;
				}else{
					var image= base_url +"/assets/images/students/default.png";
				}
				
				
				$("#parentname").html(data[i].parentname+"!");
				
				$('#parentprofileimg').attr('src', image);
			}
			
		},
		error:function(data){
		alert("parent details not founds");
		}
		});
		} 


/*function generateotp(){
	var email = $("#emailm").val();
	var mobile = $("#mobilenumber").val();
	var input ="";
	
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		input = {mobilenumber: mobile,
					email:email, name:"Aditya"}
	}
	else if(email == "" || email == null){
		input = {mobilenumber: mobile,
					email:null, name:"Aditya"}
	}
	else if(mobile==""|| mobile==null){
		input = {email :email,
				mobilenumber: null, name:"Aditya"}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/sendotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	alert(data.message)
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage)
		}
		
	})
	
}*/

$("#mobilenumber").keypress(function(e) {
	   //if the letter is not digit then display error and don't type anything
	   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	     return false;
	   }
	 });




function setStudentCookie(cname, cvalue, exdays) {
	   var d = new Date();
	   d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
	   var expires = "expires=" + d.toUTCString();
	   document.cookie = cname + "=" + cvalue + "; " + expires+ "; path=/";
	}
//student login

//student login

//category change
function changecategory(){
	var LoginData = getLoginData();
	  var studentid = LoginData.studentid;
	  var category =  parseInt($("#studentcategory").val());
	  
	var changecategory =  {
			"category":category,
			"studentid":studentid
			};
	var changestr = JSON.stringify(changecategory);
	
	$.ajax({
		type: "POST",
		 dataType: "json",
		 contentType: 'application/json', 
		 url: base_url+'rest/student/changecategory',
		 data:changestr,
		 success: function(data){
			 alert(data.message);
			 location.reload();
		 },
		 error:function(data){
			alert("Category not found"); 
		 }	
	})
	
	  
}

//category change

//addmore button

function checkEmpty(indx,type){
	
	if(parseInt(indx) > 1){
		//var standards = $("#standard"+(indx-1)).val();
		var subject = $("#subject"+(indx-1)).val();
		var chapters =$("#chapter"+(indx-1)).val();
		var comments = $("#comment"+(indx-1)).val();
	}else{
		if(type == "full"){
			 var subject = $('#fullexampleModalSuggest').find("#subject").val();
			 var chapters = [0];
			 var comments = $('#fullexampleModalSuggest').find("#comment").val();
		}else{
			var subject = $('#exampleModalSuggest').find("#subject").val();
			var chapters =$('#exampleModalSuggest').find("#chapter").val();
			var comments = $('#exampleModalSuggest').find("#comment").val();
		}
		//var standards = $("#standard").val();
		
	}

	
    /*if(standards == "" || standards=="--- Select ---" || standards==null){
		alert("Please select an standards");
		return false;
	}
	else*/ if(subject == "" || subject=="--- Select ---" || subject==null){
		alert("Please select an Subject");
		return false;
	}
	else if(chapters == "" || chapters=="--- Select ---" || chapters==null){
		alert("Please select an Chapter");
		return false;
	}
	/*else if(comments == "" || comments=="--- Select ---" || comments==null){
		alert("Please enter an Comment");
		return false;
	}*/
 else {
		return true;
	}

}

function resolveOnChange(j,fi){
	
	//var ocf = ["getSelectedSubject(this.value,"+fi+");","getSelectedUnit(this.value,"+fi+");","getSelectedChapter(this.value,"+fi+");",""];
	var ocf = ["getSelectedUnit(this.value,"+fi+");","getSelectedChapter(this.value,"+fi+");",""];
	return ocf[j];
}

var fields = 1;

$("#addmore").click(function(){
    
	//var standards = $("#standard").val();
	var subject = $("#subject").val();
	var units = $("#unit").val();
	var chapters =$("#chapter").val();
	var comments = $("#comment").val();
	var append = "";

	var max_fields  = 40;
    var wrapper   = $("#addspace");
    
    var labels = ["Subject","units","Chapters","Comments"];
    
    var drops = ["subject","unit","chapter","comment"]; 
    
    var flag = checkEmpty(fields);
    
    if(flag){
    	
    	if(fields < max_fields){
			
			var prvVal = [];
			
			/*for(var ii=0;ii<drops.length;ii++){
				
				if(fields===1){
					var kk = "#"+drops[ii];
				} else {
					var kk = "#"+drops[ii]+""+(fields-1);
				}
				
				var tempVal = $(kk).val();
				
				prvVal.push(tempVal);
			}*/
			
			
			var append = "";
			var gorp = "group"+fields;
			var str = '<div id="'+gorp+'"></div>';
			var wgorp = "#"+gorp;
			
			$(wrapper).append(str);
			$(wgorp).hide();
			
		    for(var jj=0;jj<drops.length;jj++){
		    	
		    	var apenDiv = drops[jj]+'-'+fields;
		    	
				 append = '<div class="col-md-4"><div class="form-group" id="'+apenDiv+'"><label class="control-label mb-5 bold">'+ labels[jj]+' </label></div></div>';
				 $(wgorp).append(append);
				 
				 var data = "#"+drops[jj]+" option";
				 var sid = drops[jj]+""+fields;
				 var pp = "#"+apenDiv;
				 
				 if((drops.length -1) === jj){
					 // last
					 $(pp).append('<input type="text" id="'+sid+'" name="'+sid+'" class="form-control" placeholder="Enter Comments">');
					 /*$(wgorp).append("<div class='clearfix'></div>");*/
					 $(wgorp).append('<div class="col-md-2"><div class="form-group" id="deletegroup'+fields+'"><a class="btn" id="trashBtn" href="javascript:void(0);" onclick="deleterow('+fields+')"><i style="color: red;" class="icon-trash font-20"></i></a></div></div><div class="clearfix"></div>' );
				 } else {
					 
					 if(jj<2){
						 
						 var $select = $('<select/>', {
			        	     'class':"selectpicker",
			        	    'data-style':"form-control btn-default btn-outline",
			        	    'id': sid,
			        	    'onchange' : resolveOnChange(jj,fields)
						 	
			        	});
					 }else{
						 var $select = $('<select/>', {
			        	     'class':"selectpicker",
			        	     'multiple':"",
			        	    'data-style':"form-control btn-default btn-outline",
			        	    'id': sid,
			        	    'onchange' : resolveOnChange(jj,fields)
			        	});
						 
					 }

					$(data).each(function(){
					    // Add $(this).val() to your list
						var optval = $(this).val();
						var opttext = $(this).text();
						
						$select.append('<option value="' + optval + '">' +opttext  + '</option>');
					});
				 }
				 
				
	        
	        	

	        	$select.appendTo(pp).selectpicker('refresh');
			}
		  
           /*
	    	for(var ss=0;ss<2;ss++){  		
	    		
	    		
				var mm = "#"+drops[ss]+""+fields;
				
				
				$(mm).val(prvVal[ss]);
				
				$(mm).selectpicker('refresh');
			}*/
		    
		    $(wgorp).show();
		    
        	fields++;

       } else {
    	   	alert('You Reached the limits')
       }
    } 
    

   });


function suggestFields(){
	$("#addspace").empty();
	fields = 1;
}
//del
var deletedarr = [];
function deleterow(id){
	$("#group"+id).fadeOut(500,function(){

		$(this).remove();
		var ppd = parseInt(id) +1;
		deletedarr.push(ppd);
	});
	fields--;
	deletedarr.sort(function(a, b){return a-b});
}
//del
//AddMore button End




	function checkAllEmpty(fields,type){
		
		if(parseInt(fields)>1){
			var flag = false;
			for(var jk = 1;jk<=fields;jk++){
				if(checkEmpty(jk,type)){
					flag = true;
					continue;
				} else{
					flag = false;
					break;
				}
			}
			return flag;
		} else{
			return checkEmpty(fields,type);
		}

	}

		
	

	
//get notification preview student
	
	function studentnotificationpreview() {

		var id = getParameterByName('id');
		var appenddata = "";
		$.ajax({
			url: base_url+'rest/admin/v1/previewnotification/'+id,
			type:"GET",
			dataType:"json",
			contentType :'application/json',
			success:function(data){
				
				appenddata +=  '<div class="col-xs-12 col-sm-8 col-sm-offset-2">'+
                 '<div class="box">'+
                '<div class="box-icon">'+
                    '<span class="fa fa-4x fa-envelope-o"></span>'+
               '</div>'+
                '<div class="info">'+
                    '<span class="text-center fetch">'+data[0].notificationName+' <span class="pull-right fetch">'+data[0].updatedDate+'</span></span>'+
                    '<div class="row arrange">'+
                   '<p class="padbot">'+data[0].notificationText +'</p>'+
                   '<img src='+data[0].notificationImage+' class="modal-hover-opacity" width="360px" height="200px" style="margin-left:60px;margin-bottom:30px;border-radius:15px" onclick="onClick(this)">'+
                   '<div class="col-md-12">'+
                    '<a href='+data[0].websiteLink+'  class="btn btn-success" target="_blank" >Link</a>'+
                    '</div>'+
                    '</div>'+
                '</div>'+
            '</div>'+
        '</div>'	   
					
		     $("#notification_preview").empty();
			  $("#notification_preview").append(appenddata);
				
			},
			error:function(data){
				 alert(data.responseJSON.errorMessage);
			}
		})	
	}
	
//get notification preview student

	
	// logout function


/*$('#logoutbtn').on('click', function(e){ 
	
	deleteCookie('LoginData');
    	alert("cookie removed");
      window.open( base_url + "jsp/student/student module/landingpage.jsp", "_self");
  });
*/

	function logoutStudent(){
		  setStudentCookie("LoginData", {}, 0);
		  //var LoginData = getLoginData();
			//var studid = LoginData.studentid;
			//alert(LoginData);
		//var baseURL = $("#baseURL").val();
		//var data = JSON.parse(atob(deleteCookie("LoginData")));
		  alert('logged out successfully');
			 //window.location = base_url +"jsp/student/student module/index.jsp";
	   window.location = base_url +"?logout=st";
		
	}
	function deleteCookie(cname) {
	    var d = new Date(); //Create an date object
	    d.setTime(d.getTime() - (1000*60*60*24)); //Set the time to the past. 1000 milliseonds = 1 second
	    var expires = "expires=" + d.toGMTString(); //Compose the expirartion date
	   window.document.cookie = cname+"="+"; "+expires;//Set the cookie with name and the expiration date
	   alert('logged out successfully');
			 //window.location = base_url +"jsp/student/student module/index.jsp";
	   window.location = base_url +"?logout=st";
	}

	
//update student profle
function updateProfile(){
	
	var name =  $("#stdname").val();
	var email = $("#stdemail").val();
	var mobile =$("#studentphone").val();
	var gender =$("#gender").val();
	
	var stateid = $("#state").val();
	var cityid  = $("#city").val();
	
	var studentid = parseInt($("#stdid").val());
	var createdBy     = "Saii";
	var photo = $("#base64photo").val();
	
	if(name =="" || name == null){
		alert("please enter your name");
		return false;
	}
	if(gender == "" || gender == "--- Select Gender ---"){
		alert("please select your  gender");
		return false;
	}
	if(mobile !=""){
		if(mobile.length < 10){
			alert("Mobile number atleast 10 Characters");
			return false;
		}
	}
	if(email !=""){
		var atposition=email.indexOf("@");  
		var dotposition=email.lastIndexOf(".");
		if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
			alert("Please enter valid email address");
			return false;
		}
	}
	
	
	
	if(stateid == "" || stateid =="--- Select ---" ){
		alert("please select your state");
		return false;
	}
	if(cityid == "" || cityid == "--- Select ---"){
		alert("please select your city");
		return false;
	}
var inputData ={
		"name"        :name,
		"email"       :email,
		"mobilenumber":mobile,
		"gender"      :gender,
		"studentid"   :studentid,
		"stateId"     :stateid,
		"cityId"      :cityid,
		"photo"       :photo,
		"createdBy"   :"Saii"

}

var inputdata = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/v1/update',
		type:"POST",
		dataType:"json",
		contentType :'application/json',
		data:inputdata,
		success: function(data){
			
			sessionStorage.setItem("email", email);
			sessionStorage.setItem("mobile", mobile);
			sessionStorage.setItem("name", name);
			
			//generateotp();
			sessionStorage.setItem('stdid',data.details);
			sessionStorage.setItem('reload',false);
			alert(data.message);
			window.location = base_url +"jsp/student/student module/profile.jsp";
		},
		error: function(data){
		alert(data.responseJSON.errorMessage);
		}
	});
}
$("#updateProfileotp").click(function(){
	


	var email = $("#stdemail").val();
	var mobile =$("#studentphone").val();
	var studentid = parseInt($("#stdid").val());
	if(mobile !=""){
	if(mobile.length < 10){
		alert("Mobile number atleast 10 Characters");
		return false;
	}
	
	}
	if(email !=""){
	var atposition=email.indexOf("@");  
	var dotposition=email.lastIndexOf(".");
	if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
		alert("Please enter valid email address");
		return false;
	}}
	var inputData ={
			"source" : "update",
			"email"       :email,
			"mobilenumber":mobile,
			"studentid"   :studentid
	}
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/student/v1/getstudentinfo',
		type:"POST",
		dataType:"json",
		contentType :'application/json',
		data:inputdata,
		success:function(data){
			if(data.isotpShown == true){
				generateotpupdate(data);
			}else{
				updateProfile();
			}
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
})


function generateotpupdate(key){
	var email = $("#stdemail").val();
	var mobile = $("#studentphone").val();
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	var input ="";
	/*if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		
		input = {mobilenumber: mobile,email:email, name:"s",source:"profile",studentId: studid}
	}
	else if(email == "" || email == null){
		input = {mobilenumber: mobile,email:null, name:"s",source:"profile",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		input = {email :email,mobilenumber: null, name:"s",source:"profile",studentId: studid}
	}*/
	if(key.isMobileChanged == true && key.isEmailChanged == true){
		input = {mobilenumber: mobile,email:email, name:"s",source:"profile",studentId: studid}
	}else if(key.isMobileChanged == true && key.isEmailChanged == false){
		input = {mobilenumber: mobile,email:null, name:"s",source:"profile",studentId: studid}
	}
	else if(key.isMobileChanged == false && key.isEmailChanged == true){
		input = {email :email,mobilenumber: null, name:"s",source:"profile",studentId: studid}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/sendotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	if(key.isMobileChanged == true && key.isEmailChanged == true){
	    		$('body').css("overflow-y","hidden");
	    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-email' , email); 
	    		 $('#overlayembody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile); 
	    		 
	    		// $('#overlayembody').find('#motpsend').val(mobile); 
		    	  $("#overlayemotp, #overlayembody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	}
	    else if(key.isMobileChanged == true && key.isEmailChanged == false){
	    		 $('body').css("overflow-y","hidden");
	    		 $('#overlaybody').find('#otpbtn,#reoptbtn').attr('data-mobile' , mobile);
	    		 
		    	  $("#overlayOTP, #overlaybody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	}else if(key.isMobileChanged == false && key.isEmailChanged == true){
	    		 $('body').css("overflow-y","hidden");
	    		 $('#overlayebody').find('#otpbtn,#reoptbtn').attr('data-email' , email);  
		    	  $("#overlayeOTP, #overlayebody").css("display","block");
		    	  $('#centralModalLg').modal('hide');
	    	} 
	    	 
			//window.location = base_url +"jsp/student/student module/otp.jsp";
	
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
	})
	
}

function otpvalidate(elem){
	//var mobile = sessionStorage.getItem("mobile");
	//var email =  sessionStorage.getItem("email");
	var mobile = $(elem).attr('data-mobile');
	var email =  $(elem).attr('data-email');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		var otpbtn = $('#overlayembody').find("#genrat").val();
		var otpemail = $('#overlayembody').find("#genratemail").val(); 
		if(otpemail == "" || otpemail == null){
			var otpbtn = $('#overlayembody').find("#genrat").val();
			input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"profile",studentId: studid}
		}else if(otpbtn==""|| otpbtn==null){
			var otpemail =$('#overlayembody').find("#genratemail").val();
			input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"profile",studentId: studid}
		}else{
			input = {mobilenumber: mobile,email:email, otp:otpbtn,emailotp:otpemail,source:"profile",studentId: studid}
		}
	}
	else if(email == "" || email == null){
		var otpbtn = $('#overlaybody').find("#genrat").val();
		input = {mobilenumber: mobile,email:null, otp:otpbtn,emailotp:null,source:"profile",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		var otpemail =$('#overlayebody').find("#genratemail").val();
		input = {email :email,mobilenumber: null, otp:null,emailotp:otpemail,source:"profile",studentId: studid}
	}
	else{
		return false
	}
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/verifyotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    beforeSend: function() {
	    	  $(".loader").hide();
	    	  /*$("#body-load").append(currentTime);*/
		},
	    success: function(data){
	    	alert(data.message);
	    	updateProfile();
	    	//window.location = base_url +"jsp/student/student module/catselect.jsp";		//move later to category page
	    },
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
	})
	
}
function regenerateotp(elem){
	var mobile = $(elem).attr('data-mobile');
	var email =  $(elem).attr('data-email');
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	if(!(email == "" || email == null) && !(mobile =="" || mobile == null)){
		input = {mobilenumber: mobile,email:email,source:"profile",studentId: studid}
	}
	else if(email == "" || email == null){
		input = {mobilenumber: mobile,email:null,source:"profile",studentId: studid}
	}
	else if(mobile==""|| mobile==null){
		input = {email :email,mobilenumber: null,source:"profile",studentId: studid}
	}
	else{
		return false
	}
	
	
	
	var inputdata = JSON.stringify(input);
	$.ajax({
		url: base_url+'rest/student/v1/sendotpv2',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
	    data:inputdata,
	    success: function(data){
	    	//alert(data.message);
	    	 $('#overlayembody,#overlaybody,#overlayebody').find("#genrat,#genratemail").val("");
	    },
		error:function(data){
			alert(data.errorMessage)
		}
		
	})
	
}
$("#mobilenumber, #genrat").keypress(function(e) {
	   //if the letter is not digit then display error and don't type anything
	   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	     return false;
	   }
	 });



//student student/getstudentdetails
function getStudentsDetails(){
				var appenddata;
				var LoginData = getLoginData();
				var studid = LoginData.studentid;
				//var stid = getParameterByName('id')
			$.ajax({
				url: base_url+'rest/student/v1/getstudentdetails/'+studid,
				type:"GET",
				dataType:"json",
				contentType:'application/json',
				success:function(data){
				for(var i=0; i<data.length; i++){
				if(data[0].photo !=""){
						var image = data[0].photo;
					}else{
						var image="/assets/images/students/default.png";
					}
					
					$("#cate").html(data[0].category);
					
					$("#stdname").html(data[0].name);
					$("#accountid").html(data[0].studentId);
					$("#phonenum").html(data[0].mobilenumber);
					$("#stdemail").html(data[0].emailId);
					$("#stdstate").html(data[0].state);
					$("#stdcty").html(data[0].city);
					/*var res = data[0].state.split("_");
					var statename= res[0];
					var rescity = data[0].city.split("_");*/
					//var cityname= rescity[0];
					
					/*$("#stdstate").html(statename);
					$("#stdcty").html(cityname);*/
					
					$("#gender").html(data[0].gender);
					$("#catprofile").html(data[0].category);

					var examtypes = data[0].examTypeNames;
					if(examtypes !== null && examtypes !== "" && examtypes !== undefined){

					$("#examtypeprofile").html(examtypes.join(','));
					} else{
					$("#examtypeprofile").html("Not Selected Any Examtype");
					}

					$("#standardprofile").html(data[0].standardName);
					 $("#img").attr("src", image);
	
}
				var reffer = document.referrer;
				if(reffer.indexOf("dash.jsp") != -1){
					$("#catprofile").append("");
					$("#examtypeprofile").append("");
					$("#standardprofile").append("");
				}
				else if(reffer.indexOf("live_zone_active_full_mocks.jsp") != -1){
					$("#catprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
					$("#examtypeprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
					$("#standardprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
				}
				else if(reffer.indexOf("catselect.jsp") != -1){
					$("#catprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
					$("#examtypeprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
					$("#standardprofile").append("<a href='catselect.jsp?ref=prof' class='edit-icon'><i class='fa fa-pencil-square-o' class='connection-item' aria-hidden='true'></i></a>");
				}
},
error:function(data){
alert("student details not founds");
}
});
}

//student student/getstudentdetails


//student/changepassword

function changepass(){
	var current  = $("#curntpass").val();
	var pass 	 = $("#newpass").val();

	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	
	if(current == "" || current == null){
		alert("please enter your current password");
		return false;
	}
	if(current == pass){
		alert("please try another password");
		return false;
	}
	if(pass == "" || pass == null){
		alert("please enter new password");
		return false;
	}
	if(pass.length < 6){
		alert("Password must be atleast 6 characters.");
		return false;
		}
	
	 var  changpas = {
			 "studentid": studid,
			 "currentpassword":current,
			 "password":pass
	};
	var changepassword = JSON.stringify(changpas);
		$.ajax({
			url: base_url+'rest/student/v1/changepassword',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:changepassword,
			success:function(data){
				alert(data.message);
				window.location = base_url+"jsp/student/student module/profile.jsp";
			},
			error:function(data){
				alert("student change password fail");
			}
		
	});

}
//student/changepassword


/* Get Notifications for student and display at dashboard*/


function  getNotificationsAtDashboard(){
	var LoginData = getLoginData();
	var studentid = LoginData.studentid;
	var appendata = "";
	$.ajax({
		url: base_url+'rest/student/getnotifications/'+studentid,
		type:"GET",
		dataType:"json",
		contentType :'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
			  appendata += "<li><a href='#'>"+data[i].notificationName+"</a></li>";
			}
			$("#ntfScroll").empty();
			$("#ntfScroll").append(appendata);
		},
		error:function(data){
			alert("Notifications not found!");
		}
    });
}

/* End of Get Notifications function*/


/* Get Upcoming Live Exams at Dashboard
 * 
 * Author: Syed
 * 
 * Date & Time : Friday, 17 August, 2018 12:30 PM*/

function getUpcomingLiveExams(){
	
	var LoginData = getLoginData();
	var studentid = LoginData.studentid;
	var appenddata="";
	
	var inputData =  {
	  "testType":"all",
	  "studentId":studentid
	}
	
	inputData = JSON.stringify(inputData);
	
	$.ajax({
		url   :  base_url+'rest/student/getlivezones',
		type  : "POST",
		dataType: "json",
		contentType:'application/json',
		data: inputData,
		success: function(data){
			var lastIndex = data.length-1;
			var lastObj = data[lastIndex];
			
			$("#liveExamName").append(lastObj.testName);
			
			
			var date = lastObj.openingDate;
			var time = date.split(" ");
			$("#liveExamDate").append(time[0]);
			$("#liveExamTime").append(time[1]);
			
			var edate = lastObj.closingDate;
			var etime = date.split(" ");
			$("#liveExamExpiry").append(etime[0]);
			$("#liveExamExpiryTime").append(etime[1]);
		},error:function(){
			alert("Live Exams not found!");
		}
	});
}

/* End of Get Upcoming Live Exams at Dashboard*/

	//FOR GETTING SYLLABUS OF LIVEZONE ACTIVE


function getActivesyllabus(elem) {

	var id = $(elem).attr('data-id');
	var appenddata = "";
	$.ajax({
	type:"GET",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/student/v1/getLivezonesyllabus/'+id,
	success:function(data){
	var testPostDetails = data.testPostDetails;
	for(var i=0;i<testPostDetails.length;i++){

	appenddata +=  "<div class='panel panel-default'>"+
	"<div class='panel-heading' role='tab'>"+
	"<h5 class='pan-title'><a role='button' data-toggle='collapse' data-parent='#activesyllabus_tbody' href='#collapse_"+i+"' aria-expanded='true' >&nbsp;"+testPostDetails[i].subject+"</a></h5>"+
	"</div>"+
	"<div id='collapse_"+i+"' class='panel-collapse collapse in' role='tabpanel'>"+
	"<div class='panel-body pa-15'>"+
	"<div class='row'>"+
	"<div class='col-sm-12 col-xs-12'><ul class='bullet'>";
	for(var j=0;j<testPostDetails[i].chapters.length;j++){

	  var chapter = testPostDetails[i].chapters[j];
	  var chaptersplit = chapter.split(",");
	  var chapterjoin = chaptersplit.join();
	appenddata += "<li>"+chapterjoin+"</li>";
	}
	appenddata += "</ul></div></div></div></div></div>";

	}
	$("#activesyllabus_tbody").empty();
	$("#activesyllabus_tbody").append(appenddata);

	},
	error:function(data){
	alert("Getting Active syllabus data Failed");
	}
	})

	}

	//FOR GETTING SYLLABUS OF LIVEZONE ACTIVE
	
	 
 //get suggestions in livezone active test
 
 function getsuggestion(elem){
	 
	 var livezoneid = $(elem).attr('data-id');
	 var append = "";
	 $.ajax({
		 type: "GET",
		 dataType: "json",
		 contentType: 'application/json', 
		 url: base_url+'rest/student/v1/getSuggestions/'+livezoneid,
		 success: function(data){
			 if(data.status == true){
				append +=   "<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>"+                                        
                   "<div class='row form-group'>"+                                            
                   "<div class='col-lg-3 col-md-3 col-sm-4 col-xs-10'>"+                                               
                    "<label class='control-label' for='example-email'>No of Suggestions </label>"+                                           
                     "</div>"+                                            
                     "<div class='col-lg-1 col-md-1 col-sm-1 col-xs-1'>:</div>"+                                         
                        "<div class='col-lg-8 col-md-8 col-sm-7 col-xs-12'>"+data.message+
                         "</div>"+                                       
                          "</div>"+                                  
                            "</div>"  
				 $("#suggestionpend").html(append);
			 }else{
				 $("#suggestionpend").append("");
			 }
			 
		 },
		 error:function(data){
			alert("Getting suggested syllabus Failed!"); 
		 }
	 
	 })
 }
 
 //get suggestions in livezone active test


//get all exam names
	
	function getexamstabs(){
		 var LoginData = getLoginData();
		 var stuid = LoginData.studentid;
		
		 var append = "";
		$.ajax({
			url: base_url+'rest/student/getFinishedExams/'+stuid,
			type:"GET",
			dataType:"json",
			contentType :'application/json',
			success:function(data){
				for(var i=0;i<data.length;i++){
				var examnames = data[i];
				var examnamesplit = examnames.split(",");
				if(i == 0){
					append += "<li role='presentation' class=''><a  data-toggle='tab' role='tab' href='#Tab_"+i+"' id='getvalue' onclick='getstudentfinishedtest()' aria-expanded='false'>"+examnamesplit+"</a></li>";
					}else{
						append += "<li role='presentation' class=''><a  data-toggle='tab' role='tab' href='#Tab_"+i+"'  id='getvalue' onclick='getstudentfinishedtest()' aria-expanded='false'>"+examnamesplit+"</a></li>";
					}
          	}
				$("#myTabs_7").empty();
				$("#myTabs_7").append(append);
				
			},error:function(data){
				alert("Getting exam names error");
			}
		})
	}

//get all exam names

	
	
//GET STUDENT RESULTS HISTORY FOR FINISHED TEST 	
	
	
	function getstudentfinishedtest(){
		
		var LoginData = getLoginData();
		var studid = LoginData.studentid;
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  var examtype = $(e.target).text();
		
		
		var studentfinish = {
		  "studentId": studid,
		  "examType":examtype
		};
		var append = "";
		var studentfinished = JSON.stringify(studentfinish);
		$.ajax({
			url: base_url+'rest/student/getStudentFinishedTests',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:studentfinished,
			success:function(data){
		 var i = 0;
		 if(i == 0){
			append += "<div  id='Tab_"+i+"' class='tab-pane fade active in' role='tabpanel'>"+
			"<div class='row mt-20'>"+
			"<div class='col-sm-10 col-sm-offset-1 test_history_finished_bg_white'>"+
				"<form>"+
					"<div class='row'>"+
						"<div class='col-md-3'>"+
							"<div class='form-group'>"+
								"<label class='control-label mb-5 bold sky_blue1'>Zone Type</label>"+
								"<select class='selectpicker form-control' data-style='form-control btn-default btn-outline'  style='.selectpicker{display:block !important}'>"+
									"<option>--- Select ---</option>"+
									"<option>All</option>"+
									"<option>Practice Zone</option>"+
									"<option>Test Zone</option>"+
									"<option>Live Zone</option>"+
									"<option>Challenge Zone</option>"+
								"</select>"+
							"</div>"+	
						"</div>"+
						"<div class='col-md-3'>"+
							"<div class='form-group'>"+
								"<label class='control-label mb-5 bold sky_blue1' for='exampleInputuname_2'>From</label>"+
								"<div class='input-group'>"+
									"<input class='form-control date-picker' name='interview_date' id='id-date-picker-1' type='text' value='' placeholder='dd-mm-yyyy' data-date-format='dd-mm-yyyy' />"+
									"<span class='input-group-addon'>"+
										"<i class='fa fa-calendar'></i>"+
									"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-md-3'>"+
							"<div class='form-group'>"+
								"<label class='control-label mb-5 bold sky_blue1' for='exampleInputuname_2'>To</label>"+
								"<div class='input-group'>"+
									"<input class='form-control date-picker' name='interview_date' id='id-date-picker-1' type='text' value='' placeholder='dd-mm-yyyy' data-date-format='dd-mm-yyyy' />"+
									"<span class='input-group-addon'>"+
										"<i class='fa fa-calendar'></i>"+
									"</span>"+
								"</div>"+
							"</div>"+
						"</div>"+
						"<div class='col-md-3'>"+
							"<a class='btn btn-primary btn-rounded mt-25'>Go</a>"+
						"</div>"+
					"</div>"+
				"</form>"+
			"</div>"+
		"</div>"+
		"<div class='row mt-10 mb-10'>"+
			"<div class='col-sm-10 col-sm-offset-1'>"+
				"<span class='bold black  pull-right'>No.of Test taken: 50</span>"+
			"</div>"+
		"</div>"
		for(i = 0;i<data.length;i++){
		append +=   "<div class='row mt-30'>"+
		"<div class='col-sm-10 col-sm-offset-1'>"+
		"<form>"+
			"<div class='row'>"+
				"<div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'>"+
					"<div class='row test_history_finished_bg_sub'>"+
						"<div class='row'>"+
							"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-6'>"+
								"<span class='black bold'>"+data[i].testName+"</span>"+
							"</div>"+
							"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-6'>"+
								"<span class='sky_blue1'>"+data[i].testType+"</span>"+
							"</div>"+
							"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-6'>"+
								"<a class='btn btn btn-test_history_repeat btn-rounded btn-xss'>Repeat</a>"+
							"</div>"+
						"</div>"+
						"<div class='row mt-10'>"+
							"<div class='col-lg-5 col-md-5 col-sm-5 col-xs-6 center'>"+
								"<span class='text-success bold'>"+data[i].marksObtained+"/"+data[i].totalMarks+" <br> ("+data[i].correct+"Q/"+data[i].noOfQuestions+"Q)</span>"+
							"</div>"+
							"<div class='col-lg-4 col-md-4 col-sm-4 col-xs-6'>"+
								"<span class='sky_blue1'>"+data[i].testTakenDate+"</span>"+
							"</div>"+
							"<div class='col-lg-1 col-md-1 col-sm-1 col-xs-6'>"+
								"<a class='btn btn btn-sky_blue btn-circle btn-xss'><i class='fa fa-bar-chart mt-10'></i></a>"+
							"</div>"+
						"</div>"+
					"</div>"+
				"</div>"+
				"</div>"+
				"</form>"+
			"</div>"+
			"</div>"
			
		}
		append +="</div>"

		 }
		 $('.selectpicker').selectpicker('refresh');
		 $("#myTabContent_7").empty();
		 $("#myTabContent_7").append(append);
				
			},
			error:function(){
				alert("Getting finished test error");
			}
		});
		})
		
		
		
	}

	


var currTabActiveAttempted, currAttemptedTabId = 1;


function onChangeExamTypeAttempted(val){
	//var exam = getParameterByName('exm');

	if(currTabActiveAttempted !== undefined && currTabActiveAttempted !== "" && currTabActiveAttempted !== ""){
		attempeted(currTabActiveAttempted,val);
	} else{
	   
		attempeted(currTabActiveAttempted,val);
	}
	
	subjectFromSectionId = val;
	
}

//live-zone attempeted
 
function attempeted(tab,examType){
	
	currTabActiveAttempted = tab;
	var appenddata = "";
	var exam = $("#examtype").val();
    var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var  imge =  base_url +"/assets/images/students/wastedicon.svg";
	
	var inputData = {
	  "testType":tab,
	  "studentId":sId,
	  "examtypeId":examType
	  }
	 var output= JSON.stringify(inputData);
			
		$.ajax({
			url: base_url+'rest/student/v1/getliveattemptedtest',
			type:"POST",
			dataType:"json",
			data:output,
			contentType:'application/json',
			beforeSend: function(){
				$("#attempetedbody_"+currAttemptedTabId).empty();
				$("#attempetedbody_"+currAttemptedTabId).html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success: function(data){
				if(data.length === 0 || data === undefined || data === null){
					
					//$("#totalMissedCount_"+currMissedTabId).html("<div class='col-sm-3 mb-5' style='float:right;position: relative;top: 45px;left:-80px;'>Total Missed test: <span class='theme_color bold font-18' id='totalMissedCount_1'>'0'</span></div>");
					$("#totalAttemptCount_"+currAttemptedTabId).html("<div class='col-sm-3 mb-5' style='float:right;left:-107px'>Total Attempted test: <span class='theme_color bold font-18' id='totalAttemptCount_1'>0</span></div>");
					
					$("#attempetedbody_"+currAttemptedTabId).empty();
					$("#attempetedbody_"+currAttemptedTabId).append('<tr><td class="center" colspan="10">Hi, There are no Attempted Tests currently :)</td></tr>');
					
					 
				}else{
					$("#clickmsg_"+currAttemptedTabId).html("<div style='position: relative;top: 45px;margin-right: auto;margin-left: auto;width: 316px;'>Please click on colored numbers to get questions</div>");
			    $("#totalAttemptCount_"+currAttemptedTabId).html("<div style='float:right;position: relative;top: 45px;left:-274px;'>Total Attempted test: <span class='theme_color bold font-18' id='totalAttemptCount_1'>"+data.length+"</span></div>");	
				//$("#totalMissedCount_"+currMissedTabId).html(data.length);
					
					for(var i=0; i<data.length; i++){
						 appenddata += "<tr id='row"+data[i].id+"'>"; 

						   if(data[i].fromMissesd === false ){
							     appenddata += "<td>"+(i+1)+"</td>"; 
						   }else{
							     appenddata += "<td style='text-align: center;'>"+(i+1)+"<img src='"+base_url+"assets/images/students/sidebarimages/liveMIssed.svg' class='wstedicon' data-toggle='tooltip' title='This test is missed test'></td>"; 
							   
						   }
						 if(data[i].spentLessTime === false ){
							 appenddata += "<td>"+data[i].testTakenDate+  "</td>"; 
						 }
						
						 
						 else{
							 appenddata += "<td>"+data[i].testTakenDate+"<br> &nbsp; &nbsp;<a href='#'  data-id='"+data[i].examTypeId+"_"+data[i].sepntTime+"_"+data[i].totalTime+"'  data-toggle='modal' data-target='#wasteexam'  id='b1' onclick='wasteAttmpt(this);''><img src='"+imge+"' class='wstedicon' data-toggle='tooltip' title='Click To Check Your wasted Exam Time'></a>";
							 appenddata += "</td>"; 
						 }
						
						 appenddata += "<td>"+data[i].testName+"</td>";
						 appenddata += "<td>"+data[i].examType+"</td>";
						 appenddata += "<td>"+data[i].standard+"</td>";
						 appenddata += "<td>"+data[i].countryLevelRank+"</td>";
						 appenddata += "<td><a href='#' data-toggle='modal' data-target='#attemptedModal' data-id='"+data[i].id+"' data-whatever='"+data[i].id+"' data-subid='"+examType+"' onclick='getAttemptedScore(this,1)'><span class='text_score'>"+data[i].marksObtained+"/"+data[i].totalMarks+"<br /> ("+data[i].attempted+"Q/"+data[i].noofQuestions+"Q)</span></a></td>";
						 appenddata += "<td><a class='' href='#' data-toggle='modal' data-target='#attemptedModal' data-id='"+data[i].id+"' data-whatever='"+data[i].id+"' data-subid='"+examType+"' onclick='getAttemptedScore(this,55)'><span class='text_negative_score'>"+data[i].negative+"<br />("+data[i].negativeQuestions+"Q)</span></a></td>";
						 appenddata += "<td><a href='#' data-toggle='modal' data-target='#attemptedModal' data-id='"+data[i].id+"' data-whatever='"+data[i].id+"' data-subid='"+examType+"' onclick='getAttemptedScore(this,2)'><span class='text_unattempted'>"+data[i].unAttempted+"</span></a></td>";
						 appenddata += "<td><a class='' href='#' data-toggle='modal' data-target='#attemptedModal' data-id='"+data[i].id+"' data-whatever='"+data[i].id+"' data-subid='"+examType+"' onclick='getAttemptedScore(this,56)'><span class='text_time_taken'>"+data[i].overtime+"</span></a></td>";
						 appenddata += "<td>"+data[i].accuracy+"<span>&nbsp;%</span></td>";
						 appenddata += "<td>"+data[i].percentage+"<span>&nbsp;%</span></td>";
						 appenddata += "<td>"+data[i].percentile+"</td>";
						 appenddata += "<td>"+data[i].speed+"</td>";
						 appenddata += "<td>"+data[i].topScoreMarks+"</td>";
						var  testpostid = btoa(data[i].id);
						 appenddata += "<td><a href='"+base_url+"jsp/student/student module/student_analytics3.jsp?id="+testpostid+"&stid="+data[i].studentID+"&exm="+exam+"&testtype="+currTabActiveAttempted+"&examid="+data[i].examTypeId+"' class='marf btn btn-details btn-icon-anim btn-circle' data-toggle='tooltip' data-placement='left' title='Test Analytics'><i class='fa fa-line-chart font-18 mt-10'></i></a>";
						 appenddata += "<p data-toggle='tooltip' data-placement='left' title='Question paper'><a  data-toggle='modal' data-target='#showmoreModal' data-whatever='@mdo' data-original-title='View Paper' class='marf btn btn-view_paper btn-icon-anim btn-circle' data-id="+data[i].id+" data-stid="+data[i].studentID+" data-subid='"+data[i].subjectID+"' onclick='attemptedshowpaperques(this)'><i class='fa fa-file-pdf font-18 mt-10'></i></a></p>";
						 appenddata += "<p data-toggle='tooltip' data-placement='left' title='Test Details'><a data-toggle='modal' data-target='#attemptedModal1' data-whatever='@mdo' data-original-title='View Paper' data-id="+data[i].id+" data-stid="+data[i].studentID+" class='btn btn-test_details btn-icon-anim btn-circle' data-subid='"+data[i].subjectID+"' onclick='Show2ndModal(this)'><i class='fa fa-th-large font-18 mt-10'></i></a></p></td></tr>";	  
			     }
					$("#attempetedbody_"+currAttemptedTabId).empty();
					 $("#attempetedtable_"+currAttemptedTabId).DataTable().clear().destroy();
					$("#attempetedbody_"+currAttemptedTabId).append(appenddata);
					
				
					
					$("#attempetedtable_"+currAttemptedTabId).DataTable();
				}
			},	
		error: function(data){
			//alert("No data in mock test");
			$("#attempetedbody_"+currAttemptedTabId).html('<tr><td class="center" colspan="14">No data in '+tab+' :(</td></tr>');
		}	
	});
}
 	
 



//live-zone attempeted
$("#mock").click(function(){
	currAttemptedTabId = 1;
	
	$(this).addClass("active");
	var tab = $(this).text();
	$("#sub, #full").removeClass("active");
	var exam = $("#examtype").val();
	attempeted(tab,exam);
	
	
});

$("#sub").click(function(){
	currAttemptedTabId = 2;
	$(this).addClass("active");
	var tab = $(this).text();
	$("#mock, #full").removeClass("active");
	var exam = $("#examtype").val();
	attempeted(tab,exam);
	
	
});
 	
 
//live-zone attempeted

$("#full").click(function(){
	currAttemptedTabId = 3;
	$(this).addClass("active");
	var tab = $(this).text();
	$("#mock, #sub").removeClass("active");
	var exam = $("#examtype").val();
	attempeted(tab,exam);
	
	
});
 
//

function  wasteAttmpt(ele){
	var timespent="";
	var totaltime ="";
	
	var id = $(ele).attr('data-id');
var splt = id.split("_");

timespent = splt[1];
totaltime = splt[2];
	$('#sepntTime').html(splt[1]);
	$('#totalTime').html(splt[2]);
} 
var removeByAttr = function(arr, attr, value){
    var i = arr.length;
    while(i--){
       if( arr[i] 
           && arr[i].hasOwnProperty(attr) 
           && (arguments.length > 2 && arr[i][attr] === value ) ){ 

           arr.splice(i,1);

       }
    }
    return arr;
}
function examtypeget(callback){
	var appenddata ="";
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/student/v1/getAttemptedExamTypes/'+sId,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  removeByAttr(data, 'id', -1); 
			  $("#loading").hide();
			  appenddata +='<option value="-1">ALL</option>';
			  for(var i=0; i < data.length; i++){
				  
				  if(getParameterByName('exm') !="" || getParameterByName('exm') != null){
						var exam = getParameterByName('exm');
					}else{
						var exam ="";
					}
				  if(exam !== null){
					
					appenddata += '<option value="'+data[i].id+'"';  
					  
					  if(exam == data[i].id) {
						  appenddata+= 'selected="selected"';
					   }
					  
						appenddata += '>'+data[i].name+'</option>';	
					
					  
				  }else{
					  
				    appenddata += '<option value="'+data[i].id+'">'+data[i].name+'</option>';
				  }
			 
			  
			     
			  }
			  jQuery("#examtype").empty("");
				jQuery("#examtype").append(appenddata);
				
			  $('.selectpicker').selectpicker('refresh');
			   if(callback){
	  				callback();
	  			} 
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("ExamTypes not found!");

		  }, 
		  
	});
}


//get missed exam type 

//exam type function for livezone missed

function selectExamtype(callback){
	 
	 var appenddata = "";
	 var LoginData = getLoginData();
	 var sId = LoginData.studentid;
	
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/student/v1/getMissedExamTypes/'+sId,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  removeByAttr(data, 'id', -1); 
			  $("#loading").hide();
			  appenddata +='<option value="-1">ALL</option>';
			  for(var i=0; i < data.length; i++){
					
					
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].name+'</option>';
				 
			     
			  }
			  
			  jQuery("#examtype").empty("");
			  jQuery("#examtype").append(appenddata);
			  $('.selectpicker').selectpicker('refresh');
			   if(callback){
	  				callback();
	  			} 
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("ExamTypes not found!");

		  }, 
		  
	});
}

var currTabActiveMissed, currMissedTabId = 1;


function onChangeExamTypeMissed(val){
	if(currTabActiveMissed !== undefined && currTabActiveMissed !== "" && currTabActiveMissed !== ""){
		missedFullmocks(currTabActiveMissed,val);
		
	} else{
		var exam = $("#examtype").val();
		missedFullmocks(currTabActiveMissed,exam);
	}
	
}

//live zone full mocks

function missedFullmocks(tab,exam){
	currTabActiveMissed = tab;
	 var appenddata="";
	 var LoginData = getLoginData();
	 var sId = LoginData.studentid;
	 var inputData =  {
	  "testType":tab,
	  "studentId":sId,
	  "examtypeId":exam
	  }
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		url   :  base_url+'rest/student/v1/getlivemissedtests',
		type  : "POST",
		dataType: "json",
		contentType:'application/json',
		data: inputdata,
		beforeSend: function(){
			$("#missbody_"+currMissedTabId).empty();
			$("#missbody_"+currMissedTabId).append('<tr><td class="center" colspan="10"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success: function(data){
			if(data.length === 0 || data === undefined || data === null){
				
				//$("#totalMissedCount_"+currMissedTabId).html("<div class='col-sm-3 mb-5' style='float:right;position: relative;top: 45px;left:-80px;'>Total Missed test: <span class='theme_color bold font-18' id='totalMissedCount_1'>'0'</span></div>");
				$("#totalMissedCount_"+currMissedTabId).html("<div class='col-sm-3 mb-5' style='float:right;left:-107px'>Total Missed test: <span class='theme_color bold font-18' id='totalMissedCount_1'>0</span></div>");
				
				$("#missbody_"+currMissedTabId).empty();
				$("#missbody_"+currMissedTabId).append('<tr><td class="center" colspan="10">Hi, There are no Missed Tests currently :)</td></tr>');
				
				 
			}else{
		    $("#totalMissedCount_"+currMissedTabId).html("<div style='float:right;position: relative;left:-274px;'>Total Missed test: <span class='theme_color bold font-18' id='totalMissedCount_1'>"+data.length+"</span></div>");	
			//$("#totalMissedCount_"+currMissedTabId).html(data.length);
			for(var i=0; i < data.length; i++){
			           var subjecttypes = [];
			           var subjectname = [];
			           var subjectscore = [];
			           appenddata += "<tr id='trmissed_"+data[i].testPostID+"'><td>"+(i+1)+"</td>"; 
						  appenddata += "<td>"+data[i].testName+"</td>"; 
					 appenddata += "<td>"+data[i].examType+"</td>";
					 appenddata += "<td>"+data[i].standard+"</td>";
					 var subjsubstring = data[i].subjectName.substring(0,7);
					 var onlysubstring = subjsubstring.replace(/\s+/g, '_');
					 var beforesplit = data[i].subjectName.split(',');
					  var aftersplit = beforesplit.join(',');
					  var onlysub = aftersplit.replace(/\s+/g, '-');
					appenddata += "<td>";
					  appenddata +=  '<div class="row"><div class="col-md-12"><span data-toggle="tooltip" data-placement="top" title='+onlysub+'>'+onlysubstring+'...</span> </div></div>';					  
					 appenddata += "</td>";
					 appenddata +=  "<td><a data-toggle='modal' data-target='#getactivesyllabus' onclick='getActivesyllabus(this)' data-id='"+data[i].testPostID+"' data-whatever='@mdo' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='View'><i class='fa fa-plus-square-o font-18 mt-10'></i></a></td>";
					 appenddata +=  "<td>"+data[i].activePeriod+"</td>"; 
					 appenddata +=  "<td><a data-toggle='modal' data-target='#attemptedModal1' onclick='Show2ndModal(this)' data-id='"+data[i].testPostID+"'  data-stid="+data[i].studentID+" data-subid='"+data[i].subjectID+"' data-whatever='@mdo' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='View'><i class='fa fa-th-large font-18 mt-10'></i></a></td>";
					 appenddata +=  "<td>"+data[i].topScoreMarks+"</td>";
					 
					appenddata += "<td>";
					
					var subjectWise = data[i].topScorePojos;
					 for(var su = 0;su<subjectWise.length;su++){
						
						 var subtop = subjectWise[su].subjectNames + '-'+subjectWise[su].topScore ;
						 //subjectname.push(subjectWise[su].subjectNames);
						 //subjectscore.push(subjectWise[su].topScore);
						 subjectname.push(subtop);
					 }
					 var subjectnamesssting = subjectname.join(',').substring(0,5);
					 var topsubjects = subjectname.join(',');
				
					 //var subjecttop = subjectscore.join(',').substring(0,2);
					 
					 var subjecttopreplace = subjectnamesssting.replace(/\s+/g, '');
				     //var subjecttopscore =  subjecttop.replace(/\s+/g, '');
					 
					 appenddata +=  '<div class="row"><div class="col-md-12"><span data-toggle="tooltip" data-placement="top" title='+topsubjects+'>'+subjecttopreplace+'...</span> </div></div>';					  

					 appenddata += "</td>";
					 if(data[i].takenStatus == true){
						 appenddata += "<td> <a href='#' class='btn btn-primary btn-rounded btn-xs'>Taken</a></td>";
					 }
					 else {
						 
						 appenddata += "<td> <a href='"+base_url+"jsp/questionsscreen/general_instructions.jsp?testid="+data[i].testPostID+"&studentid="+sId+"&status="+data[i].takenStatus+"&missed=true' class='btn btn-primary btn-rounded btn-xs'>Take</a></td>";
					 }
					 appenddata += "<td> <a class='btn btn-delete btn-icon-anim btn-circle p-10' data-toggle='tooltip' data-id='"+data[i].testPostID+"' id='misseddel_"+data[i].id+"' data-original-title='Delete'><i class='icon-trash font-18'></i></a></td></tr>";
					 
			}	
			
			$("#missbody_"+currMissedTabId).empty();
			 $("#misstable_"+currMissedTabId).DataTable().clear().destroy();
			$("#missbody_"+currMissedTabId).append(appenddata);
			$("#misstable_"+currMissedTabId).DataTable();
			}
			},
			error:function(data){
				//alert("student details not founds");
				$("#missbody_"+currMissedTabId).html('<tr><td class="center" colspan="14">No data in '+tab+' :(</td></tr>');
			}
		
		});
}
// live zone missed subject-wise

$("#missmock").click(function(){
	currMissedTabId = 1;
	$(this).addClass("active");
	var tab = $(this).text();
	$("#missub, #missfulsylmock").removeClass("active");
	var exam = $("#examtype").val();
	missedFullmocks(tab,exam);
});

$("#missub").click(function(){
	currMissedTabId = 2;
	$(this).addClass("active");
	var tab = $(this).text();
	$("#missmock, #missfulsylmock").removeClass("active");
	var exam = $("#examtype").val();
	missedFullmocks(tab,exam);
});

//livezone missed fullsyllabus

$("#missfulsylmock").click(function(){
	currMissedTabId = 3;
	$(this).addClass("active");
	var tab = $(this).text();
	$("#missmock, #missub").removeClass("active");
	var exam = $("#examtype").val();
	missedFullmocks(tab,exam);
});



$(document).on("click", "a[id^=misseddel_]", function() {
	var id = $(this).attr('data-id');
	var tr_id = $("tr[id^=misseddel_]").attr('data-id');
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var inputData = {
	  "liveZoneId":parseInt(id),
	  "studentId":parseInt(sId)
	  };
	inputData = JSON.stringify(inputData);
	var con = confirm("Are you sure you want to delete?");

	  if(con == true){
		 	 
		$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/student/v1/deletemissedtest', 
		  data: inputData,
		  success: function(data){	  
			  if(data.status){
			 		alert(data.message);
			 		$("#trmissed_"+id).remove();
			  } else{
				  alert(data.message);
				  return false;
			  }
			  },
		    
		  error: function(data){
			  alert(data.message);
		   	}
	
		});
		  
	}
});

var currType = "";
function getSubjects(testPostId,callback){
	var appenddata = "";
	$.ajax({
		type:"GET",
		url: base_url +'rest/testpost/v1/getsections/'+testPostId,
		async:false,
		datatype:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++ ){
				if(i>0){
					appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#tab_'+(i+1)+'" data-id="'+(i+1)+'" data-subid="'+data[i].id+'" onclick="attemptedScoreQuestions('+(i+1)+','+currType+')">'+data[i].name+'</a></li>';
				} else{
					
					subFirst = data[i].name;
					appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#tab_'+(i+1)+'" data-id="'+(i+1)+'" data-subid="'+data[i].id+'" onclick="attemptedScoreQuestions('+(i+1)+','+currType+')">'+data[i].name+'</a></li>';
				}
						
			}
			$("#subjectTabs").empty();
			$("#subjectTabs").append(appenddata);	
			
			if(callback){
				callback();
			}
		},
		error:function(){
			alert("Subjects not found");
		}
	});
}

function attemptedScoreQuestions(tabId,type){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var subFst = $("#subjectTabs li:nth-child("+parseInt(tabId)+") a").data('subid');
	var inputData = {
		"studentId":sId,
		"testPostId":parseInt(currTestPostId),
		"subjectId": subFst
	};
	inputData = JSON.stringify(inputData);
	var url = "";
	switch(parseInt(type)){
		case 1:
			url = base_url +'rest/student/v1/getSummeryAttemptedQuestions';
			break;
		case 2:
			url = base_url +'rest/student/v1/getSummeryUnAttemptedQuestions';
			break;
		case 55:
			url = base_url +'rest/student/v1/getSummeryWrongQuestions';
			break;
		case 56:
			url = base_url +'rest/student/v1/getViewQuestionsOverTimeQuestions';
			break;
	}
	var appendData = '<div id="tab_'+tabId+'" class="tab-pane fade active in col-lg-12 col-md-12 col-sm-12" role="tabpanel"><div><div class="row mt-10">';
	$.ajax({
		url: url,
		type:"POST",
		datatype:"json",
		contentType:'application/json',
		data:inputData,
		beforeSend: function(){
			$("#questionsContent").empty();
			/*$("#questionsContent").html('<h5 class="center">Getting Questions...</h5>');*/
			/*$("#questionsContent").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
			$("#questionsContent").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
		},
		success: function(data){

			for(var i=0;i<data.length;i++){
				
				var resolvedAnswer, resolvedSelected;
				var answer,studentSelectedOption;
				
				
				var passageType = data[i].passagequestions;
				if(passageType !== null && passageType !== undefined){
					
					for(var op=0;op<passageType.length;op++){
						var answer= passageType[op].correctAnswer;
						
						if(answer.indexOf(',')> -1){
							var checkAnswer = answer.split(',');
							
							resolvedAnswer = [];
							for(var s =0;s<checkAnswer.length;s++){
								resolvedAnswer.push(idResolver(checkAnswer[s]));
							}
							
						} else{
							var checkAnswer = answer;
							
							resolvedAnswer = idResolver(answer);
						}
						
						studentSelectedOption = passageType[op].studentSelectedOption;
						
					
						if(studentSelectedOption.indexOf(',')> -1){
							var checkStudentSelect = studentSelectedOption.split(',');
							
							resolvedSelected = [];
							for(var s =0;s<checkStudentSelect.length;s++){
								resolvedSelected.push(idResolver(checkStudentSelect[s]));
							}
							
						} else{
							var checkStudentSelect = studentSelectedOption;
							
							resolvedSelected = idResolver(checkStudentSelect);
						}
						
						
						// passage questions 
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
						  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
						  '<span>&nbsp; : &nbsp;</span></div>'+
						  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
						  '</div></div></div>';
						
						appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						  
						if(!passageType[op].unattempted){
							if(passageType[op].correctQuestion){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
						
						appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+passageType[op].question +
						  '</div></div></div>';
						
						
						appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
						
						appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
						
					}
					
	
					
				} else{
					
					var answer= data[i].correctAnswer;
					studentSelectedOption = data[i].studentSelectedOption;
					
					
					if(data[i].option1 === "" && data[i].option2 === ""){
						// integer layout
						resolvedAnswer = answer;
					} else{
						// not integer
						
						if(answer.indexOf(',')> -1){
							var checkAnswer = answer.split(',');
							
							resolvedAnswer = [];
							for(var s =0;s<checkAnswer.length;s++){
								resolvedAnswer.push(idResolver(checkAnswer[s]));
							}
							
						} else{
							var checkAnswer = answer;
							
							resolvedAnswer = idResolver(answer);
						}
						
						
						
					
						if(studentSelectedOption.indexOf(',')> -1){
							var checkStudentSelect = studentSelectedOption.split(',');
							
							resolvedSelected = [];
							for(var s =0;s<checkStudentSelect.length;s++){
								resolvedSelected.push(idResolver(checkStudentSelect[s]));
							}
							
						} else{
							var checkStudentSelect = studentSelectedOption;
							
							resolvedSelected = idResolver(checkStudentSelect);
						}
					}
					
					appendData += '<div class="">'+
					  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
					  '<div class="row pd-5">'+
					  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
					  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+data[i].questionSerialNumber+'</span></label>'+
					  '<span>&nbsp; : &nbsp;</span>';
					
						if(!data[i].unattempted){
							if(data[i].correctQuestion){
								//Correct Question, correct tick
								appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
							} else{
								//Wrong Question, Wrong tick
								appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
							}
							
						} else{
							//UnAttempted Question, /!\ tick
							appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
						}
					
					appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
					  '</div></div></div>';
					
					appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
					
					
				}
				


			}
			
			
			
			appendData += "</div></div></div>";
			
			setTimeout(function() {
				$("#questionsContent").empty();
				$("#questionsContent").html(appendData);
			}, 500);
		},
		error: function(){
			
			setTimeout(function() {
				$("#questionsContent").empty();
				$("#questionsContent").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
			}, 500);
			
			//alert("get back to the drawing board");
		}
	});
}


var currTestPostId = "";
var subjectFromSectionId = "";
function getAttemptedScore(elem,type){
	
	// get subjects
	var testPostId = $(elem).attr('data-id');
	currTestPostId = testPostId;
	currType = parseInt(type);
	getSubjects(testPostId, function(){
		
		
		
		var subFstId = $("#subjectTabs li:first-child a").data('subid');
		
		// get questions related to subject
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		var inputData = {
			"studentId":sId,
			"testPostId":parseInt(testPostId),
			"subjectId": parseInt(subFstId)
		};
		inputData = JSON.stringify(inputData);
		var url = "";
		switch(currType){
			case 1:
				url = base_url +'rest/student/v1/getSummeryAttemptedQuestions';
				break;
			case 2:
				url = base_url +'rest/student/v1/getSummeryUnAttemptedQuestions';
				break;
			case 55:
				url = base_url +'rest/student/v1/getSummeryWrongQuestions';
				break;
			case 56:
				url = base_url +'rest/student/v1/getViewQuestionsOverTimeQuestions';
				break;
		}
		var appendData = '<div id="tab_1" class="tab-pane fade active in col-lg-12 col-sm-12 col-md-12" role="tabpanel"><div><div class="row mt-10">';
		$.ajax({
			url: url,
			type:"POST",
			datatype:"json",
			contentType:'application/json',
			data:inputData,
			beforeSend: function(){
				$("#questionsContent").empty();
				/*$("#questionsContent").html('<h5 class="center">Getting Questions...</h5>');*/
				/*$("#questionsContent").html('<div class="centerVHWidth"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></div>');*/
				$("#questionsContent").html('<div class="timeline-wrapper col-lg-12 col-md-12 col-sm-12"><div class="timeline-item"><div class="animated-background"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="options"></div><div class="key"></div><div class="hint"></div><div class="key"></div></div></div>');
			},
			success: function(data){
				
				
				
				for(var i=0;i<data.length;i++){
					
					var resolvedAnswer, resolvedSelected;
					var answer,studentSelectedOption;
					
					
					var passageType = data[i].passagequestions;
					if(passageType !== null && passageType !== undefined){
						
						for(var op=0;op<passageType.length;op++){
							var answer= passageType[op].correctAnswer;
							
							if(answer.indexOf(',')> -1){
								var checkAnswer = answer.split(',');
								
								resolvedAnswer = [];
								for(var s =0;s<checkAnswer.length;s++){
									resolvedAnswer.push(idResolver(checkAnswer[s]));
								}
								
							} else{
								var checkAnswer = answer;
								
								resolvedAnswer = idResolver(answer);
							}
							
							studentSelectedOption = passageType[op].studentSelectedOption;
							
						
							if(studentSelectedOption.indexOf(',')> -1){
								var checkStudentSelect = studentSelectedOption.split(',');
								
								resolvedSelected = [];
								for(var s =0;s<checkStudentSelect.length;s++){
									resolvedSelected.push(idResolver(checkStudentSelect[s]));
								}
								
							} else{
								var checkStudentSelect = studentSelectedOption;
								
								resolvedSelected = idResolver(checkStudentSelect);
							}
							
							
							// passage questions 
							appendData += '<div class="">'+
							  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum wi-100">'+
							  '<label class="control-label" for="example-email"><strong>Passage</strong></label>'+
							  '<span>&nbsp; : &nbsp;</span></div>'+
							  '<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
							  '</div></div></div>';
							
							appendData +=  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
							  '<div class="row pd-5">'+
							  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
							  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number">'+passageType[op].questionSerialNumber+'</span></label>'+
							  '<span>&nbsp; : &nbsp;</span>';
							  
							if(!passageType[op].unattempted){
								if(passageType[op].correctQuestion){
									//Correct Question, correct tick
									appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
								} else{
									//Wrong Question, Wrong tick
									appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
								}
								
							} else{
								//UnAttempted Question, /!\ tick
								appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
							}
							
							appendData += '</div> <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+passageType[op].question +
							  '</div></div></div>';
							
							
							appendData += optionsAddingModal(passageType[op],resolvedAnswer,answer,resolvedSelected);
							
							appendData += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><hr class="light-grey-hr mt-10 mb-10"></div>';
							
						}
						
		
						
					} else{
						
						var answer= data[i].correctAnswer;
						studentSelectedOption = data[i].studentSelectedOption;
						
						
						if(data[i].option1 === "" && data[i].option2 === ""){
							// integer layout
							
							resolvedAnswer = answer;
							
						} else if(data[i].option1 == "MATRIX OPTION1" && data[i].option2 === "MATRIX OPTION2"){
							// matrix layout
							resolvedAnswer = answer;
						} else{
							// not integer
							
							if(answer.indexOf(',')> -1){
								var checkAnswer = answer.split(',');
								
								resolvedAnswer = [];
								for(var s =0;s<checkAnswer.length;s++){
									resolvedAnswer.push(idResolver(checkAnswer[s]));
								}
								
							} else{
								var checkAnswer = answer;
								
								resolvedAnswer = idResolver(answer);
							}
							
						
							if(studentSelectedOption.indexOf(',')> -1){
								var checkStudentSelect = studentSelectedOption.split(',');
								
								resolvedSelected = [];
								for(var s =0;s<checkStudentSelect.length;s++){
									resolvedSelected.push(idResolver(checkStudentSelect[s]));
								}
								
							} else{
								var checkStudentSelect = studentSelectedOption;
								
								resolvedSelected = idResolver(checkStudentSelect);
							}
							
						}
						
						appendData += '<div class="">'+
						  '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-10 qbg">'+
						  '<div class="row pd-5">'+
						  '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-11 questionNum">'+
						  '<label class="control-label" for="example-email">Q. <span class="view_questions_question_number" >'+data[i].questionSerialNumber+'</span></label>'+
						  '<span>&nbsp; : &nbsp;</span>';
						
							if(!data[i].unattempted){
								if(data[i].correctQuestion){
									//Correct Question, correct tick
									appendData += '</br><i class="fa fa-check fa-lg green" title="Correct Answer"></i>';
								} else{
									//Wrong Question, Wrong tick
									appendData += '</br><i class="fa fa-close fa-lg red" title="Wrong Answer"></i>';
								}
								
							} else{
								//UnAttempted Question, /!\ tick
								appendData += '</br><i class="fa fa-exclamation-triangle fa-lg" title="UnAttempted Question" style="color: #d800ff;"></i>';
							}
						
						appendData += '</div><div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 questionswrap nomar-nopad">'+data[i].question +
						  '</div></div></div>';
						
						appendData += optionsAddingModal(data[i],resolvedAnswer,answer,resolvedSelected);
						
						
					}
					


				}
				
				appendData += "</div></div></div>";
				
				setTimeout(function() {
					$("#questionsContent").empty();
					$("#questionsContent").html(appendData);
				}, 500);
				
				//alert("got questions");
			},
			error: function(){
				
				setTimeout(function() {
					$("#questionsContent").empty();
					$("#questionsContent").html('<div class="centerVHWidth"><h5 class="center">Questions Not Found :(</h5></div>');
				}, 500);
				
				//alert("get back to the drawing board");
			}
		});
		
		
	});
	
	
	
	
}


function getSubjectsAttempt(){
	var Id=getParameterByName('id');
	var appenddata = "";
	$.ajax({
		type:"GET",
		url: base_url+'rest/testpost/v1/getsections/'+Id,
		async:false,
		datatype:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++ ){
				appenddata += "<a onclick='getsubjectwise(this,"+Id+");' class='btn btn-danger' id='subjectsin' data-id='"+data[i].id+"'>"+data[i].name+"</a>";		
			}
			$("#subjts").empty();
			$("#subjts").append(appenddata);	
		},
		error:function(){
			alert("Subjects not found");
		}
	});
}

function getstates(callback){
	 var appenddata;
		$.ajax({
			type: "GET",
			 url: base_url+'rest/admin/getstates',
			  dataType: "json",
			  contentType: 'application/json', 
			 
			 
			  success: function(data){
		       for(var i=0; i < data.length; i++){
				 
		    		
						var statename = data[i].name;
						var stateid = data[i].id;
						//var zoneidis = data.zones[i].id;
						appenddata += '<option value="'+statename+'_'+stateid+'">'
								+statename+'</option>';
						
					}
		       $("#state").prop("disabled",false);
		       $("#state").empty("");
				$("#state").append('<option value="">--- Select States---</option>');
				$("#state").append(appenddata);
					
				$('.selectpicker').selectpicker('refresh');
				
				if(callback){
					callback();
				}

			  },
			  error: function(data) {		

				  alert("States not found!");

			  }
		      	
		});
 }

function getSelectedcities(val){
	 
	 var appenddata="";
	 var rescity = val.split("_");
		var city = rescity[1];
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/admin/getcities/'+city,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  for(var i=0; i < data.length; i++){
						appenddata += '<option value="'+data[i].name+'_'+data[i].id+'">'
								+data[i].name+'</option>';
					  
				  }
				  
				  	$("#city").empty("");
					$("#city").append('<option value="">--- Select ---</option>');
					$("#city").append(appenddata);
					
					$('.selectpicker').selectpicker('refresh');
					$("#city").prop("disabled", false);
				  
				  
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Cities not found!");

			  }, 
			  
		});
	 
	 
 }

function getallSelectedcities(val){
	 
	 var appenddata="";
	 var rescity = val.split("_");
		var city = rescity[1];
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/admin/getcities/'+city,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  for(var i=0; i < data.length; i++){
						appenddata += '<option value="'+data[i].name+'_'+data[i].id+'" >'+data[i].name+'</option>';
					}
				  
				  	$("#city").empty("");
					$("#city").append('<option value="">--- Select ---</option>');
					$("#city").append(appenddata);
					
					$('.selectpicker').selectpicker('refresh');
					$("#city").prop("disabled", false);
				  
				  
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Cities not found!");

			  }, 
			  
		});
	 
	 
}

	
	  var subjectname = "";
  	/*function getSelectedUnit(val,indx){

  		if(indx === undefined){
  		    var catetypename = category;
  		    var examtypename = examtype;
  		    var standtypename = standard;
  		     subjectname = val;
  	    }else{
  	    	 var catetypename = category;
  	 	    var examtypename = examtype;
  	 	    var standardtypename = standard;
  	 	    subjectname = val;
  	    }
  		
  	      
  	    var inputData = '{"categoryname":"'+catetypename+'","examtype":"'+examtypename+'","standard":"'+standtypename+'","subject":"'+subjectname+'"}';

  	    var appenddata;
  	    $.ajax({
  	        type: "POST",
  	          dataType: "json",
  	          contentType: 'application/json', 
  	          url: base_url+'rest/question/getunits',
  	          data: inputData,
  	          beforeSend: function() {
  	            $("#loading").show();
  	         },
  	          success: function(data){
  	              $("#loading").hide();
  	              for(var i=0; i < data.length; i++){
  	                    var units = data[i].name;
  	                    
  	                    appenddata += '<option value="'+units+'">'
  	                            +units+'</option>';
  	                  
  	              } 
  	              if(indx === undefined){
  	            	  jQuery("#unit").empty("");
  	                  jQuery("#unit").append('<option value="--- Select ---">--- Select ---</option>');
  	                  jQuery("#unit").append(appenddata);
  	                  
  	                  $("#unit").prop("disabled", false);
  	             }else{
  	            	 jQuery("#unit"+indx).empty("");
  	    	         jQuery("#unit"+indx).append('<option value="--- Select ---">--- Select ---</option>');
  	    	         jQuery("#unit"+indx).append(appenddata);
  	    	         
  	    	         $("#unit"+indx).prop("disabled", false);
  	             }
  	             
  	             $('.selectpicker').selectpicker('refresh');

  	          },
  	          error: function(data) {        
  	              $("#loading").hide();
  	              alert("Units not found!");

  	          }
  	          
  	    });
  	}*/


	
	
	
	
	
	
	
	
	
	
	
	/* function getSelectedChapter(val,indx){
 		if(indx === undefined){
 		var catetypename = category;
 		var examtypename = examtype;
 		var standtypename = standard;
 		var subjecttypename = subjectname;
 		var unitname = val;
 		}else{
 	   	    var catetypename = category;
 		    var examtypename = examtype;
 		    var standardtypename = standardname;
 		    var subjecttypename = subjectname;
 		    var unitname = val;
 	 }
 		
 	    var inputData = '{"categoryname":"'+catetypename+'","examtype":"'+examtypename+'","standard":"'+standtypename+'","subject":"'+subjecttypename+'","unit":"'+unitname+'"}';


 		var appenddata;
 		$.ajax({
 			type: "POST",
 			  dataType: "json",
 			  contentType: 'application/json', 
 			  url: base_url+'rest/question/getchapters',
 			  data: inputData,
 			  beforeSend: function() {
 		        $("#loading").show();
 		     },
 			  success: function(data){
 				  $("#loading").hide();
 				  
 				  for(var i=0; i < data.length; i++){
 						var chapters = data[i].name;
 						
 						appenddata += '<option value="'+chapters+'">'
 								+chapters+'</option>';
 				  }
 				  if(indx === undefined){
 				  jQuery("#chapter").empty("");
 				  jQuery("#chapter").append('<option value="--- Select ---">--- Select ---</option>');
 				  jQuery("#chapter").append(appenddata);
 				  
 				  $("#chapter").prop("disabled", false);
 				  }
 				  else{
 					      jQuery("#chapter"+indx).empty("");
 		    	         jQuery("#chapter"+indx).append('<option value="--- Select ---">--- Select ---</option>');
 		    	         jQuery("#chapter"+indx).append(appenddata);
 		    	         
 		    	         $("#chapter"+indx).prop("disabled", false);
 				  }
 				  
 				  $('.selectpicker').selectpicker('refresh');
 			  },
 			  error: function(data) {		
 				  $("#loading").hide();
 				  alert("Chapters not found!");

 			  }
 			  
 		});
 	}*/
	
	
	//livezone active suggest syllabus
	
	function activeSuggestSyllabus(elem){
		
		var type = $(elem).attr('data-id');
		var loginData = getLoginData();
		var studentid = loginData.studentid;
		var studentname = loginData.name;
	// var livesyllabus = $("#idvalue").val();
	   /*  var live = livesyllabus.split("_");
		var livezoneid= live[0];*/
 var standard = parseInt($("#standard").val());
 if(type == "full"){
	 var livesyllabus = $('#fullexampleModalSuggest').find("#idvalue").val();
	 var subject = $('#fullexampleModalSuggest').find("#subject").val();
		
	  var unit = $('#fullexampleModalSuggest').find("#unit").val();

	  var chapter = [0];
	  var comment = $('#fullexampleModalSuggest').find("#comment").val();
	  //chapter = chapter.map(Number);
 }else{
	 var livesyllabus = $('#exampleModalSuggest').find("#idvalue").val();
	 var subject = parseInt($('#exampleModalSuggest').find("#subject").val());
		
	  var unit = parseInt($('#exampleModalSuggest').find("#unit").val());

	  var chapter = $('#exampleModalSuggest').find("#chapter").val();
	  
	  chapter = chapter.map(Number);
	  var comment = $('#exampleModalSuggest').find("#comment").val();
 }
		 
		  
	
	/* if(chapter !== null && chapter !== undefined && chapter !== ""){
		 chapter = chapter.join(",");
		 } else{
		 chapter = "";
		 }*/
		  
		  /*var chap = chapter.split(" ");
		 chap = chap.map(Number);*/
		 if(checkAllEmpty(fields,type)){
	
		 var tempArr = [{
		 "chapterIdList":chapter,
		 "comments":comment,
		 "standardId":standard,
		 "unitId":unit,
		 "subjectId":subject
	
		 }];
	
		// var total = parseInt(standard);
	
		 if(fields>1){
	
		 for(var h = 1; h<fields; h++){
		 /*var staVal = $("#standard"+h).val();
		 total += parseInt(staVal);*/
		 
		 var chap = $("#chapter"+h).val();
		
		 if(h == undefined){
			 var chapId = chap.split(" ");
		 }else{
			 chapId = chap;
		 }
		 /*var chapId = chap.split(" ");*/
		 chapId = chapId.map(Number);
		
		 var tempObj = {
		 "standardId": $("#standard").val(),
		 "subjectId":parseInt($("#subject"+h).val()),
		 "chapterIdList":chapId,
		 "unitId":parseInt($("#unit"+h).val()),
		 "comments":$("#comment"+h).val()
	
		 };
		 tempArr.push(tempObj);
		 }
		 }
	
	
	
		 var studentsyllab =	{
		 "createdBy":"santosh",
		 "studentId":studentid,
		 "studentname":studentname,
		
		 "liveZoneId":livesyllabus,
		  "suggestsyllabus":tempArr
		 }

			var studentsyllabstr = JSON.stringify(studentsyllab);

			$.ajax({
				url  :base_url+"rest/student/v1/suggestsyllabusforactive",
				type :"POST",
				dataType:"json",
				contentType:"application/json",
				data:studentsyllabstr,
				success:function(data){
				alert(data.message);
				},
				error:function(data){
					alert("Student suggest syllabus updating failed");
				}
			});
			}
	}
	
	function getstudentsugsyllabus(elem){
		var type = $(elem).attr('data-id');
		 var LoginData = getLoginData();
		 var studid = LoginData.studentid;
		
		/* var live = livesyllabus.split("_");
		 var livezoneid= live[0];*/
		var standard = parseInt($("#standard").val());
		 if(type == "full"){
			 var livesyllabus = $('#fullexampleModalSuggest').find("#idvalue").val();
		 var subject = $('#fullexampleModalSuggest').find("#subject").val();
			
		  var unit = $('#fullexampleModalSuggest').find("#unit").val();

		  var chapter1 = [0];
		  var comment = $('#fullexampleModalSuggest').find("#comment").val();
		 }else{
			 var livesyllabus = $('#exampleModalSuggest').find("#idvalue").val();
			 var subject =parseInt($('#exampleModalSuggest').find("#subject").val());
				var unit = parseInt($('#exampleModalSuggest').find("#unit").val());
				var chapter = $('#exampleModalSuggest').find("#chapter").val();
			var	chapter1 = chapter.map(Number);
			var comment = $('#exampleModalSuggest').find("#comment").val();
		 }
		/*var subject = parseInt($("#subject").val());
		var unit = parseInt($("#unit").val());
		var chapter = $("#chapter").val();*/
		//var chapter1 = chapter.split(',');
	
		
		if(checkAllEmpty(fields,type)){
		var tempArr = [{
			 "chapterIdList":chapter1,
			 "comments":comment,
			 "standardId":standard,
			 "unitId":unit,
			 "subjectId":subject
					}];
		
		//var total = parseInt(standard);
		
		if(fields>1){
			
			for(var h = 1;h<fields;h++){
				//var staVal = $("#standard").val();
				//total += parseInt(staVal);
				var chapter2 = $("#chapter"+h).val();
			//	var chapId = chapter2.split(',');
				    chapId = chapter2.map(Number);
				var tempObj = {
					"standardId":parseInt($("#standard").val()),
					"subjectId":parseInt($("#subject"+h).val()),
					"chapterIdList":chapId,
					"unitId":parseInt($("#unit"+h).val()),
					"comments":$("#comment"+h).val()
					
				};
				
				tempArr.push(tempObj);
				
			}
		}
		
		
		
	var studentsyllab =	{
			"createdBy":"santosh",
			"studentId":studid,
			"liveZoneId":livesyllabus,
			"suggestsyllabus":tempArr
		}

	var studentsyllabstr = JSON.stringify(studentsyllab);

	$.ajax({
		url  :base_url+"rest/student/v1/suggestbystudent",
		type :"POST",
		dataType:"json",
		contentType:"application/json",
		data:studentsyllabstr,
		success:function(data){
		alert(data.message);
		},
		error:function(data){
			alert("Student suggest syllabus updating failed");
		}
	})
	}
	}

	//student get syllabus view

	


function subjectScore(){
	
	 var appendata="";
	 
	 var testPostId = parseInt(atob(getParameterByName('id')));
	 var LoginData = getLoginData();
	 var sId = LoginData.studentid;
	// var subject= getSubjects(testPostId);
	 var subject = $("#subjectname").attr('data-id');
	// var folderID = $(this).attr('data-id');
	// var folderID = $(this).attr('data-id');
	
	
	var inputdata ={
			"testPostId":testPostId,
			"subject":subject,
			"studentId":sId

	}
	
	var outputdata = JSON.stringify(inputdata);
	
	$.ajax({
		url: base_url+'rest/student/getSubjectWiseScoredQuestions',
		type:"POST",
		dataType:"json",
		data:outputdata,
		contentType:'application/json',
		success:function(data){
			
			  var passage = "";	
			  var k=0;
			 
			  
			  for(var j=0; j<data.length;j++){
				  passage = data[j].passagequestions;
				  if(passage == null){
					  
					  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
					   "<label><span>Q. ("+ (k += 1) +") : </span></label><label><span style='color: #FF4043;'>"+data[j].question+"</span></label></div>"+
					     "<div class='col-md-12'>"+
					    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+data[j].option1+"</span></label></div>"+
					"<div class='col-md-12'>"+
					    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+data[j].option2+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+data[j].option3+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+data[j].option4+"</span></label>"+
		            "</div></div></div>";
					  
			    	 
				  }
				  else{
					  appendata += "<div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+data[j].question+"</p></b></div></div>"
					 
					  for(i=0;i<passage.length;i++){
						  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
						   "<label><span>Q. ("+(k += 1)+") : </span></label><label><span style='color: #FF4043;'>"+passage[i].question+"</span></label></div>"+
						     "<div class='col-md-12'>"+
						    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option1+"</span></label></div>"+
						"<div class='col-md-12'>"+
						    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option2+"</span></label>"+

						"</div><div class='col-md-12'>"+
						    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option3+"</span></label>"+

						"</div><div class='col-md-12'>"+
						    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option4+"</span></label>"+
			            "</div></div></div>";
						  
				    	    }
					
					  
				  }	  
			  }
			  
			  
			  
			  $("#subjectwisescore").empty();
			  $("#subjectwisescore").append(appendata);
			 
			  
		  },
		  error:function(){
			    $("#subjectwisescore").empty();
				$("#subjectwisescore").html('<h5 class="center">No Score Questions Found :(</h5>');
			  
		  }
		
	});
}

function negativeMarks(){
	
	 var appendata="";
	 
	 var testPostId = parseInt(atob(getParameterByName('id')));
	 var LoginData = getLoginData();
	 var sId = LoginData.studentid;
	// var subject= getSubjects(testPostId);
	 var subject = $("#subjectname").attr('data-id');
	// var folderID = $(this).attr('data-id');
	// var folderID = $(this).attr('data-id');
	
	
	var inputdata ={
			"testPostId":testPostId,
			"subject":subject,
			"studentId":sId

	}
	
	var outputdata = JSON.stringify(inputdata);
	
	$.ajax({
		url: base_url+'rest/student/getSubjectWiseNegativeQuestions',
		type:"POST",
		dataType:"json",
		data:outputdata,
		contentType:'application/json',
			success:function(data){
			  var passage = "";	
			  var k=0;
			 
			  
			  for(var j=0; j<data.length;j++){
				  passage = data[j].passagequestions;
				  if(passage == null){
					  
					  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
					   "<label><span>Q. ("+ (k += 1) +") : </span></label><label><span style='color: #FF4043;'>"+data[j].question+"</span></label></div>"+
					     "<div class='col-md-12'>"+
					    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+data[j].option1+"</span></label></div>"+
					"<div class='col-md-12'>"+
					    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+data[j].option2+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+data[j].option3+"</span></label>"+

					"</div><div class='col-md-12'>"+
					    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+data[j].option4+"</span></label>"+
		            "</div></div></div>";
					  
			    	 
				  }
				  else{
					  appendata += "<div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+data[j].question+"</p></b></div></div>"
					 
					  for(i=0;i<passage.length;i++){
						  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
						   "<label><span>Q. ("+(k += 1)+") : </span></label><label><span style='color: #FF4043;'>"+passage[i].question+"</span></label></div>"+
						     "<div class='col-md-12'>"+
						    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option1+"</span></label></div>"+
						"<div class='col-md-12'>"+
						    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option2+"</span></label>"+

						"</div><div class='col-md-12'>"+
						    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option3+"</span></label>"+

						"</div><div class='col-md-12'>"+
						    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option4+"</span></label>"+
			            "</div></div></div>";
						  
				    	    }
					
					  
				  }	  
			  }
			  
			  
			  
			  $("#negativeQuestions").empty();
			  $("#negativeQuestions").append(appendata);
			 
			  
		  },
		  error:function(){
			    $("#negativeQuestions").empty();
				$("#negativeQuestions").html('<h5 class="center">No Negative Questions Found :(</h5>');
			  
		  }
		
	});
}


	
//individual analytics subject-wise performance overtime questions
	
function overTimeQns(){
 var appendata = "";
		
		var LoginData = getLoginData();
		var sId = LoginData.studentid;
		
		
		 var testPostId = parseInt(atob(getParameterByName('id')));
         
		 var subjectname= $("#subjectname").attr("data-id");
		 
		var inputData = {
				 
					"testPostId": testPostId,
					"studentId":sId,
					"subject":subjectname
				}

var inputdata = JSON.stringify(inputData);

$.ajax({
	 url: base_url+'rest/student/getSubjectWiseOverTimeQuestions',
	 type:"POST",
     dataType: "json",
     data: inputdata,
     contentType:'application/json', 
	 success: function(data){
	  var passage = "";	
	  var k=0;
	  
	  
	  for(var j=0; j<data.length;j++){
		  passage = data[j].passagequestions;
		  if(passage == null){
			  
			  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
			   "<label><span>Q. ("+ (k += 1) +") : </span></label><label><span style='color: #FF4043;'>"+data[j].question+"</span></label></div>"+
			     "<div class='col-md-12'>"+
			    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+data[j].option1+"</span></label></div>"+
			"<div class='col-md-12'>"+
			    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+data[j].option2+"</span></label>"+

			"</div><div class='col-md-12'>"+
			    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+data[j].option3+"</span></label>"+

			"</div><div class='col-md-12'>"+
			    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+data[j].option4+"</span></label>"+
            "</div></div></div>";
			  
	    	 
		  }
		  else{
			  appendata += "<div class='row'><div class='col-md-1'><b>Passage:</b></div><div class='col-md-10'><b><p>"+data[j].question+"</p></b></div></div>"
			 
			  for(i=0;i<passage.length;i++){
				  appendata += "<div class='col-md-12'><div class='row'><div class='col-md-12'>"+
				   "<label><span>Q. ("+(k += 1)+") : </span></label><label><span style='color: #FF4043;'>"+passage[i].question+"</span></label></div>"+
				     "<div class='col-md-12'>"+
				    "<label><span>options1 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option1+"</span></label></div>"+
				"<div class='col-md-12'>"+
				    "<label><span>options2 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option2+"</span></label>"+

				"</div><div class='col-md-12'>"+
				    "<label><span>options3 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option3+"</span></label>"+

				"</div><div class='col-md-12'>"+
				    "<label><span>options4 : </span></label><label><span style='color: #00BA85;'>"+passage[i].option4+"</span></label>"+
	            "</div></div></div>";
				  
		    	    }
			
			  
		  }	  
	  }
	  
	  
	  
	  $("#popupovrtimequestions").empty();
	  $("#popupovrtimequestions").append(appendata);
	 
	  
  },
  error:function(data){
	 
	  $("#popupovrtimequestions").empty();
	  $("#popupovrtimequestions").html('<h5 class="center">Over Time Questions NotFound :(</h5>');
	  
  }
	});
}


//attempted showpaper for getting subjects
var showpaperdata ="";

function attemptedshowpaperques(elem){
	
	//var testPostId = $("#showpaper").attr('data-id');
	var Id = $(elem).data("id");
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	//var subfirst =("#questionsContents li:first-child ").text(); 
	var inputData ={
			/*"testPostId":parseInt(atob(getParameterByName('id'))),*/
			"testPostId":parseInt(Id),
			"studentId":sId
			
	};
	inputData = JSON.stringify(inputData);
	var appenddata ="";
	$.ajax({
		type:"POST",
		  dataType: "json",
		  contentType:'application/json', 
		  data:inputData,
		url: base_url +'rest/student/v1/getShowPaperQuestions',
		success:function(data){
			showpaperdata = data;
			//getpaperSubjects(showpaperdata);
			for(var i=0; i < showpaperdata.subjectslist.length; i++ ){
				
			 for(var k=0; k < showpaperdata.subjectslist[i].sectionlist.length; k++) {
				 
				 if(showpaperdata.subjectslist[i].sectionlist[k].section !=""){
					 if(i>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						} else{
							subFirst = showpaperdata.subjectslist[i].sectionlist[k].section;
							appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].sectionlist[k].sectionId+'_'+i+'"  onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].sectionlist[k].section+'</a></li>';
						}
				
				  }else{
					 if(i>0){
						 appenddata += '<li class="" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 } else{
						subFirst = showpaperdata.subjectslist[i].subject;
						appenddata += '<li class="active" role="presentation"><a aria-expanded="false" data-toggle="tab" role="tab" href="#" data-id="'+i+'_'+k+'" id="'+showpaperdata.subjectslist[i].subjectId+'_'+i+'" onclick="getShowPaper(this)">'+showpaperdata.subjectslist[i].subject+'</a></li>';
					 }
				}
			 }
			 
			}
			
			
			
		 $("#shopepertabs").empty();
		 $("#shopepertabs").append(appenddata);
		 $('#shopepertabs li:first-child a').click();
		// $( "#shopepertabs" ).tabs( "option", "active:0");
		  /* $("#shopepertabs").tabs();
		 $('#action').click(function() {
		        var selected = $("#shopepertabs").tabs("option", "selected");
		        $("#shopepertabs").tabs("option", "selected", selected + 1);
		    });*/
		},
		error:function(){
			 alert(data.responseJSON.errorMessage);
		}
	});
	
}
function getstatesall(callback) {
	var appenddata;
	$.ajax({
		type : "GET",
		url : base_url + 'rest/admin/v1/getnotificationstates',
		dataType : "json",
		contentType : 'application/json',

		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				
               if(i !== 0){
            	  
				var statename = data[i].name;
				var stateid = data[i].id;
				
				appenddata += '<option value="'+stateid+'">' + statename
						+ '</option>';
				
               } 
               
			}
			$("#state").prop("disabled", false);
			$("#state").empty("");
			$("#state").append(
					'<option value="">--- Select States---</option>');
			$("#state").append(appenddata);

			$('.selectpicker').selectpicker('refresh');

			if(callback){
				callback();
			}
		},
		error : function(data) {

			 alert(data.responseJSON.errorMessage);

		}

	});
}




function getallSelectedcities(element, event) {

	var appenddata = "";

	var cities = [];

	for (var i = 0; i < element.options.length; i++) {
		if (element.options[i].selected) {
			cities.push(element.options[i].value);
		}
	}

	var inputData = {
		"state" : cities
	};
	var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/admin/v1/getnotificationcities',
		data : inputdata,
		beforeSend : function() {
			$("#loading").show();
		},
		success : function(data) {
			$("#loading").hide();
			for (var i = 0; i < data.length; i++) {
				appenddata += '<option value="'+data[i].id+'">'
						+ data[i].name + '</option>';
			}

			$("#city").empty("");
			$("#city").append('<option value="">--- Select ---</option>');
			$("#city").append(appenddata);

			$('.selectpicker').selectpicker('refresh');
			$("#city").prop("disabled", false);

		},
		error : function(data) {
			$("#loading").hide();
			 alert(data.responseJSON.errorMessage);

		},

	});

}

 $("#addparent").click(function(){

		var mobile =$("#phone").val();
		var email = $("#pemail").val();
		var stane_image = $('#img').attr('src');
			var pass = $("#password").val();
	var conform =$("#cnfpassword").val();
		var LoginData = getLoginData();
		var studentid = parseInt(LoginData.studentid);
		if(mobile !=""){
		if(mobile.length < 10){
			alert("Mobile number atleast 10 Characters");
			return false;
		}
		
		}
		if(email !=""){
		var atposition=email.indexOf("@");  
		var dotposition=email.lastIndexOf(".");
		if(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
			alert("Please enter valid email address");
			return false;
		}}
			if(pass == "" || pass == null){
		modelfalse = false;
		alert("please enter your password");
		return false;
	}
	if(pass.length < 6 && conform.length < 6){
		modelfalse = false;
		alert("Password must be atleast 6 characters.");
		return false;
	}
	if(pass != conform){
		modelfalse = false;
		alert("password MissMatch");
		return false;
	}
		var inputData ={
				"parentname":$("#pname").val(),
				"mobilenumber":mobile,
				"email":email,
				"parentoccupation":$("#occupation").val(),
				"studentId":studentid,
				"password":pass,
				"photo":stane_image
		}
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/addparentsDetails',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				 alert(data.message);
				 window.location = base_url+"jsp/student/parentlogins/parent_logins.jsp";
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		})
	})

	function getparentlogindetails(edit){
	 var appenddata ="";
	 var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		
	var inputData ={
				"studentId":studentid
			}
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getparentsDetails',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				if(data.length > 0 ){
					if(edit == "true"){
						
						$("#parentid").val(data[0].parentId);
						$("#pname").val(data[0].parentname);
						$("#phone").val(data[0].mobilenumber);
						$("#pemail").val(data[0].email);
						$("#occupation").val(data[0].parentoccupation);
							$("#img").attr("src",data[0].photo);
							$("#pass").val(data[0].password);
					}else{
							$("#studentfrmid").append(data[0].studentFormatid);
				$("#pphone").append(data[0].mobilenumber);
				$("#pemail").append(data[0].email);
				$("#occupation").append(data[0].parentoccupation);
				$("#img").attr("src",data[0].photo);
				$("#viewpwd").attr("title",data[0].password);
				$("#oldpwd").val(data[0].password);
				
				$("#delete").attr("data-id",data[0].parentId);
				if(data[0].linkstatus == true ){
				$("#linked").append('<a href="#" onclick="linkstatus(\'delink\');" class="btn btn-danger status_btn">De-Link</a><span class="purple">(Change here)</span>');	
				}else {
					$("#linked").append('<a href="#" onclick="linkstatus(\'link\');" class="btn btn-primary status_btn">Link</a><span class="purple">(Change here)</span>');
				}
				
				
					}
				
				
				}else {
					alert("please add Parent details");
				}
				
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		})
	 
 }
 function linkstatus(flag){
	 var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		if(flag == "delink"){
			var linkstatus = true;
		}else{
			var linkstatus = false;
		}
	 var inputData ={
				"studentId":studentid,
				"linkstatus":linkstatus
	        }
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/parentlinkandlink',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				alert("parent login status changed");
				$("#linked").empty();
				if(flag == "delink"){
					$("#linked").append('<a href="#" onclick="linkstatus(\'link\');" class="btn btn-primary status_btn">Link</a><span class="purple">(Change here)</span>');
					
				}else{
					$("#linked").append('<a href="#" onclick="linkstatus(\'delink\');" class="btn btn-danger status_btn">De-Link</a><span class="purple">(Change here)</span>');	
				}
				
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		})
 }
 function deleteparent(elem){
	 var parentid = $(elem).attr('data-id');
	 $.ajax({
		type:"GET",
		url : base_url+'rest/student/deleteparentdetails/'+parentid,
		data:"json",
		contentType:'application/json',
		success:function(data){
			
			 alert(data.message);
				 window.location = base_url+"jsp/student/parentlogins/parent_logins.jsp";
		},
	    
		error:function(data){
			
		alert(data.responseJSON.errorMessage);
			
		}
	})
	 
 }
 function changepwd(){
	  var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		var curentpwd = $("#oldpwd").val();
		var pass =  $("#newpwd").val();
		var conform = $("#cnfpwd").val();
		
		if(pass == "" || pass == null){
		modelfalse = false;
		alert("please enter your password");
		return false;
	}
	if(pass.length < 6 && conform.length < 6){
		modelfalse = false;
		alert("Password must be atleast 6 characters.");
		return false;
	}
	if(pass != conform){
		modelfalse = false;
		alert("password MissMatch");
		return false;
	}
	 var inputData ={
				"studentId":studentid,
				"currentpassword":curentpwd,
	            "newpassword":pass
			}
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/parentchangepwd',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				alert(data.message);
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		})
 }
	function editparent(){
		var pname = $("#pname").val();
		var pemail = $("#pemail").val();
		var pphone = $("#phone").val();
		var occupation = $("#occupation").val();
		var parentid = $("#parentid").val();
		var photo = $('#img').attr('src');
		 var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		if(pphone !=""){
		if(pphone.length < 10){
			alert("Mobile number atleast 10 Characters");
			return false;
		}
		
		}
		if(pemail !=""){
		var atposition=pemail.indexOf("@");  
		var dotposition=pemail.lastIndexOf(".");
		if(atposition<1 || dotposition<atposition+2 || dotposition+2>=pemail.length){
			alert("Please enter valid email address");
			return false;
		}}


		var inputData ={
				"parentname": pname,
        "mobilenumber":pphone,
        "email": pemail,
        "photo": photo,
        "studentId": studentid,
        "Id":parentid,
		"password":$("#pass").val(),
         "parentoccupation":occupation,
         "status":true
			}
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/updateparentdetails',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				alert(data.message);
				 window.location = base_url+"jsp/student/parentlogins/parent_logins.jsp";
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		})
		
	}
	 	var idprev = false;
		var previd = "";
	function toppers_heading(){
		var appenddata ="";
	
	 var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
	
	$.ajax({
		type:"GET",
		url : base_url+'rest/student/v1/getstudentselectedexamtypesforlivezone/'+studentid,
		data:"json",
		contentType:'application/json',
		success:function(data){
			$("#year").append(data[0].academicYear);
			var examtypes = data[0].examTypeNames;
			var examtypeid =  data[0].examTypeIds;
			for(var i=0; i < examtypes.length; i++){
				
                 appenddata += '<a href="#" onclick="gettabs(\'' + examtypeid[i] + '\',\'' + previd+ '\');" id="'+examtypeid[i]+'"  class="btn btn-danger btn-outline fancy-button btn-0">'+examtypes[i]+'</a>';
				}
			 $("#examtypeslist").empty();
			 $("#examtypeslist").append(appenddata);
		
			 $('#examtypeslist > :first-child').click();
			 	
		},
	    
		error:function(data){
			// $("#examtypeslist").empty();
		alert(data.responseJSON.errorMessage);
			
		}
	})
	}

	function gettabs(examtypeid){
		var appenddata ="";
	var tabcontent ="";
	 var LoginData = getLoginData();
		var studentid  = LoginData.studentid;
		$('#examtypeslist .btn').addClass('btn-outline');
	$("#"+examtypeid).removeClass("btn-outline");
	
	
	
	$.ajax({
		type:"GET",
		url : base_url+'rest/student/v1/getstudentselectedexamtypesforlivezone/'+studentid,
		data:"json",
		contentType:'application/json',
		success:function(data){
			
			var test = data[0].testTypes;
			
			for(var i=0; i < test.length; i++){
				var tabnames = test[i].replace(/\s+/g, '_');
                 appenddata += '<li class="" role="presentation"><a aria-expanded="true" onclick="gettoppers(\'' + examtypeid + '\',\'' + test[i]+ '\')"  data-toggle="tab" role="tab" href="#Tab_'+tabnames+'">'+test[i]+'</a></li>';
				
				tabcontent += '<div  id="Tab_'+tabnames+'" class="tab-pane fade " role="tabpanel"></div>'
				}
			 $("#myTabs_7").empty();
			 $("#myTabs_7").append(appenddata);
			 $("#myTabContent_7").empty();
			 $("#myTabContent_7").append(tabcontent);
		
			 $('#myTabs_7 li:first-child a').click();
			 
		},
	    
		error:function(data){
			// $("#examtypeslist").empty();
		alert(data.responseJSON.errorMessage);
			
		}
	})
		
	}
	function gettoppers(examtypeid,testname){
		var appenddata ="";
		var inputData ={
				"examtypeId": examtypeid,
        "testType":testname
       
			}
			var tabnames = testname.replace(/\s+/g, '_');
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/student/getAllLiveZoneToppersByExamTypev2',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success:function(data){
				 appenddata += '<div class="row mt-40 mb-40" id="">';
				 for(var i=0; i < data.length; i++){
					 if(data[i].topperImage !=""){
						 var topperimage = data[i].topperImage;
					 }else{
						  var topperimage = base_url+"/assets/images/students/default.png";
					 }
					
					  appenddata += '<div class="col-sm-6 mb-40">'+
										'<div class="mt-40 livezone_toppers_header_bg p-5"><div class="row"><div class="col-sm-2">'+
											'<img class="livezone_toppers" src="'+topperimage+'"></div>'+
												'<div class="col-sm-7"><div class="livezone_student_name">'+data[i].topperName+'</div>'+
													'<div class="black">('+data[i].topperId+')'+data[i].topperState+' </div></div>'+
												'<div class="col-sm-3" style="text-align: right;">'+
													'<img class="livezone_toppers" src="'+base_url+'assets/images/students/toppers/star_5.png">'+
													 ' <span class="tooltiptext">No. of Times Selected as Topper</span><div class="centered">'+data[i].count+'</div></div></div>'+
											'<div class="row mt-20">'+
												'<div class="col-sm-6">'+
													'<span class="black bold">Avg Percentage %<i class="fa fa-arrow-right"> </i>'+data[i].avgpercentage+'%</span></div>'+
												'<div class="col-sm-6">'+
													'<div class="black bold">Avg Accuracy %-<span class="black bold ">'+data[i].avgAccuracy+'%</span></div>'+
												'</div></div></div></div>';
					 
				 }
				appenddata += '</div>';
				 $("#Tab_"+tabnames).empty();
			 $("#Tab_"+tabnames).append(appenddata);
			},
			error:function(data){
				alert(data.errorMessage);
			}
		})
		
	}
$(document).ready(function(){
	getstudentcommon();
	getParentDetails();
  });
