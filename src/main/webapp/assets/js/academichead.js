/**
 * 
 */
/*function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}*/


//user registration Dean Post

function registerUsers()
{
	var photo = $('#img').attr('src');

	var firstName = $("#firstName").val();
	var lastName = $("#lastName").val();
	var mobileNumber = $("#mobile").val();
	var email = $("#emailq").val();
	var gender = $("#gender").val();
	var designation = $("#desgination").val();
	var qualification = $("#qualification").val();
	var others = $("#others").val();
	var pinNumber = $("#pin").val();
	var repin = $("#repin").val();
	var password = $("#pwd").val();
	var confirmpwd = $("#confirmpwd").val();
	var academicheadId = getAHId();
	 var userType="dean";
    var deanid = $("#deanid").val();
	 if(firstName == ""){
		 alert("Enter First name");
		 return false;
	 }
	 
	 if(lastName == ""){
		 alert("Please Enter Last name");
		 return false;
	 }
	 
	 if(mobileNumber == ""){
		 alert("Please Enter Mobile Number");
		 return false;
	 }
	 
	 if(email == ""){
		 alert("Please Enter email");
		 return false;
	 }
	 
	 if(gender == "" || gender == "---Select---"){
		 alert("Please Choose Gender");
		 return false;
	 }
	 
	 if(designation == ""){
		 alert("Please Eneter Designation");
		 return false;
	 }
	 
	 if(qualification == ""){
		 alert("Please Eneter Qualification");
		 return false;
	 }
	 
	 if(others == ""){
		 alert("Please fill the text in Others Text field");
		 return false;
	 }
	 
	 if(pinNumber == ""){
		 alert("Please Enter Pin Number");
		 return false;
	 }
	 
	  if(repin == ""){
		 alert("Please Fill RePin TextFilled");
		 return false;
	 }
	  else if(pinNumber != repin){
			alert("Pin number MissMatch!! please Enter correct Pin Number  ");
		     	return false;
			 }
	  
	 if(password == ""){
		 alert("Please Enter Password");
		 return false;
	 }
	 
	 if(confirmpwd == ""){
		 alert("Please Fill the Confirm password TextFilled");
		 return false;
	 }
	 else if(password != confirmpwd){
		 alert("Password MissMatch!! please Enter correct Password  ");
		 return false;
	 }
	 
	
	 
	var deanId = getParameterByName('id');
	if(deanId !== "" && deanId !== null){
		// edit mode
		var inputData = {
				"userType":"dean",
				"deanid":deanId,
				"designation":designation,
				"qualification":qualification,
				"others":others,
				"pinNumber":pinNumber,
				"password":password,
				"lastName":lastName,
				"mobileNumber":mobileNumber,
				"emailId":email,
				"firstName":firstName,
				"photo":photo,
				"gender":gender,
				"updatedBy":"saii",
				"deanDispId":deanid

		};
			var	inputData = JSON.stringify(inputData);
		$.ajax({
			url:  base_url+'rest/academichead/v1/edit',
			type:"POST",
			 dataType: "json",
			  contentType: 'application/json',
			  data:inputData,
		      success: function(data){
		    	  alert(data.message);
				 window.location = base_url+"jsp/academic_head/views/dean.jsp";

		      },
		      error:function(data){
		    	  alert(data.responseJSON.errorMessage);
		      }
			
		});
	} else {
		
		var inputData = '{"photo":"'+photo+'","firstName":"'+firstName+'","lastName":"'+lastName+'","mobileNumber":"'+mobileNumber+'","emailId":"'+email+'", "gender":"'+gender+'","designation":"'+designation+'","qualification":"'+qualification+'","others":"'+others+'","pinNumber":"'+pinNumber+'","password":"'+password+'","userType":"'+userType+'","academicheadId":"'+academicheadId+'","createdBy":"Admin","idFormat":"'+deanid+'"}';
		// register mode
		$.ajax({
			url:  base_url+'rest/academichead/v1/deanregister',
			type:"POST",
			 dataType: "json",
			  contentType: 'application/json',
			  data:inputData,
		      success: function(data){
		    	  alert(data.message);
				 window.location = base_url+"jsp/academic_head/views/dean.jsp";

		      },
		      error:function(data){
		    	  alert(data.responseJSON.errorMessage);
		      }
			
		});
	}
	
	
	
	

}

//user registration for sme post

function smeRegisterUsers()
{
	var photo = $('#img').attr('src');
	var firstName = $("#firstName").val();
	var lastName = $("#lastName").val();
	var mobileNumber = $("#mobile").val();
	var email = $("#emaile").val();
	var gender = $("#gender").val();
	 if( gender == "" || gender == "---Select---"){
		 alert("Please Choose Gender");
		 return false;
	 }
	var designation = $("#desgination").val();
	var qualification = $("#qualification").val();
	var others = $("#others").val();
	var pinNumber = $("#pin").val();
	var repin = $("#repin").val();
	var password = $("#pwd").val();
	var confirmpwd = $("#confirmpwd").val();
	var  createdby= $("#createdby").val();
	var academicheadId = getAHId();
	var userType="sme";
	var smeid = $("#smeid").val();
	
	 if(firstName == ""){
		 alert("Enter First name");
		 return false;
	 }
	 
	 if(lastName == ""){
		 alert("Please Enter Last name");
		 return false;
	 }
	/* 
	 if(lastName == ""){
		 alert("Please Enter Last name");
		 return false;
	 }*/
	 
	 if(mobileNumber == ""){
		 alert("Please Enter Mobile Number");
		 return false;
	 }
	 
	 if(email == ""){
		 alert("Please Enter email");
		 return false;
	 }
	 
	
	 
	 if(designation == ""){
		 alert("Please Eneter Designation");
		 return false;
	 }
	 
	 if(qualification == ""){
		 alert("Please Eneter Qualification");
		 return false;
	 }
	 
	 if(others == ""){
		 alert("Please fill the text in Others Text field");
		 return false;
	 }
	 
	 if(pinNumber == ""){
		 alert("Please Enter Pin Number");
		 return false;
	 }
	 
	 if(repin == ""){
		 alert("Please Fill RePin TextFilled");
		 return false;
	 }
	 
	 else if(pinNumber != repin){
			alert("Pin number MissMatch!! please Enter correct Pin Number  ");
			   return false;
			 }
	 
	 
	 
	 if(password == ""){
		 alert("Please Enter Password");
		 return false;
	 }
	 
	 if(confirmpwd == ""){
		 alert("Please Fill the Confirm password TextFilled");
		 return false;
	 }
	 
	
	 
	 else if(password != confirmpwd){
		 alert("Password MissMatch!! please Enter correct Password  ");
		 return false;
	 }
	 
	
	
   
	 var smeId = getParameterByName('id');
		if(smeId !== "" && smeId !== null){
			// edit mode
			var inputData = {
					"userType":"sme",
					"smeid":smeId,
					"designation":designation,
					"qualification":qualification,
					"others":others,
					"pinNumber":pinNumber,
					"password":password,
					"lastName":lastName,
					"mobileNumber":mobileNumber,
					"emailId":email,
					"firstName":firstName,
					"photo":photo,
					"gender":gender,
					"updatedBy":"sridhar",
					"smeDispId":smeid

			};
				var	inputData = JSON.stringify(inputData);
			$.ajax({
				url:  base_url+'rest/academichead/v1/edit',
				type:"POST",
				 dataType: "json",
				  contentType: 'application/json',
				  data:inputData,
			      success: function(data){
			    	  alert(data.message);
					 window.location = base_url+"jsp/academic_head/views/sme.jsp";

			      },
			      error:function(data){
			    	  alert(data.responseJSON.errorMessage);
			      }
				
			});
	} else {
		
		var inputData = '{"photo":"'+photo+'","firstName":"'+firstName+'","lastName":"'+lastName+'","mobileNumber":"'+mobileNumber+'","emailId":"'+email+'", "gender":"'+gender+'","designation":"'+designation+'","qualification":"'+qualification+'","others":"'+others+'","pinNumber":"'+pinNumber+'","password":"'+password+'","userType":"'+userType+'","academicheadId":"'+academicheadId+'","createdBy":"'+createdby+'","idFormat":"'+smeid+'"}';
		// register mode
	$.ajax({
		url: base_url+'rest/academichead/v1/smeregister',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
	    	  alert(data.message);
	    	  window.location = base_url+"jsp/academic_head/views/sme.jsp";

	      },
	      error:function(data){
	    	//  alert("oops something went wrong")
	    	  
	    	  alert(data.responseJSON.errorMessage);

	      }
		
	});
   }
}





//dean get service
function GetAllDean(){
	var id= getAHId();
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/academichead/v1/getdeans/'+id,
		  beforeSend: function(){
				$("#dean-tbody").empty();
				$("#dean-tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
				  if(data[i].photo == "" || data[i].photo == null){
					     appenddata += "<tr id='deancopy_row"+data[i].id+"'><td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>"
					    }else{
					  appenddata += "<tr id='deancopy_row"+data[i].id+"'><td><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";    
					    }   
			  appenddata += "<td>"+data[i].firstaname+"</td>"; 
			  appenddata += "<td>"+data[i].lastname+"</td>";
			  appenddata += "<td>"+data[i].mobilenumber+"</td>";
			  appenddata += "<td>"+data[i].email+"</td>"; 
			  appenddata += "<td>"+data[i].gender+"</td>";
			  appenddata += "<td>"+data[i].pinnumber+"</td>";
			  appenddata += "<td>"+data[i].qualification+"</td>"; 
			  appenddata += "<td><a href= '"+base_url+"jsp/academic_head/change_password.jsp?id="+data[i].id+"' class='btn btn-danger'>Change Password</a></td>";
			  if(data[i].status == false){
				  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  }
			  else if(data[i].status == true){
				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			  appenddata +="<td><a href ='"+base_url+"jsp/academic_head/views/preview.jsp?id="+data[i].id+"&usertype=dean' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/create_users/dean.jsp?id="+data[i].id+"' " +
		  		"class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' onclick='deanpass(this)' data-id='"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td>";
			 
			  }
			  $("#dean-tbody").empty();
			  $('#deandatable_1').DataTable().clear().destroy();
			  $("#dean-tbody").append(appenddata);
			  $("#deandatable_1").DataTable();
		  },
		  error: function(data) {		
			 
			  alert(data.responseJSON.errorMessage);

		  }
		 
	    	
	});
	}
//dean get service
function getSelectedByAllDeans(val){
	var id= getAHId();
	var appenddata="";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/academichead/v1/getdeans/'+id,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var AllDean = data[i].firstaname;
					var deanId = data[i].id;
					
					
					appenddata += '<option value="'+deanId+'">'
							+AllDean+'</option>';
				  
			 
			  
			     jQuery("#dean").empty("");
				jQuery("#dean").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#dean").append(appenddata);
			  }
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }, 
		  
	});
}

//sme get service
function GetAllSme(){
	var appenddata;
	var id= getAHId();
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url +'rest/academichead/v1/getsmes/'+id,
		  beforeSend: function(){
				$("#sme-body").empty();
				$("#sme-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
			    if(data[i].photo == "" || data[i].photo == null){
			     appenddata += "<tr id='sme_row"+data[i].photo+"'><td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>"
			    }else{
			  appenddata += "<tr id='sme_row"+data[i].photo+"'><td><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px;'></td>";    
			    }
			  appenddata += "<td>"+data[i].firstaname+"</td>"; 
			  appenddata += "<td>"+data[i].lastname+"</td>";
			  appenddata += "<td>"+data[i].mobilenumber+"</td>";
			  appenddata += "<td>"+data[i].email+"</td>"; 
			  appenddata += "<td>"+data[i].gender+"</td>";
			  appenddata += "<td>"+data[i].pinnumber+"</td>";
			  appenddata += "<td>"+data[i].qualification+"</td>"; 
			  appenddata += "<td><a href= '"+base_url+"jsp/academic_head/change_password.jsp?id="+data[i].id+"' class='btn btn-danger'>Change Password</a></td>";
			  if(data[i].status == false){
			  }
			  else if(data[i].status == true){
				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			  appenddata +="<td><a href ='"+base_url+"jsp/academic_head/views/preview.jsp?id="+data[i].id+"&usertype=sme' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
			  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/create_users/sme.jsp?id="+ data[i].id+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].photo+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' onclick='passwenter(this)' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td>";
			 
			  }
			  
			  $("#sme-body").empty();
			  $('#smedatable_1').DataTable().clear().destroy();
			  $("#sme-body").append(appenddata);
			  $("#smedatable_1").DataTable();
		  },
		  error: function(data) {		
			 
			  alert(data.responseJSON.errorMessage);

		  }
		 
	    	
	});
	}
//sme get service
function getSelectedByAllSme(val){
	var id= getAHId();
	var appenddata="";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/academichead/v1/getsmes/'+id,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var AllSme = data[i].firstaname;
					var smeid = data[i].id;
					
					appenddata += '<option value="'+smeid+'">'
							+AllSme+'</option>';
				  
			 
			  
			     jQuery("#sme").empty("");
				jQuery("#sme").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#sme").append(appenddata);
			  }
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }, 
		  
	});
}

//dean login post
function loginUsers(){
	var dean = $("#dean option:selected").text();
	 var deanId =  $("#dean").val();

	var superdean = $("#superdean").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var chapter = $("#chapter").val();
	var unit = $("#unit").val();
	var createdBy=$("#createdBy").val();
	//var deanId = getDeanId();

	var inputData = {
			"dean":dean,
			"deanid":deanId,
			"superdeanid":superdean,
			"standardId":standard,
			"subjectId":subject,
			"unitId":unit,
			"chapterId":chapter,
			"createdBy":createdBy
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:  base_url+'rest/academichead/v1/linktodean',
		type:"POST",
		dataType: "json",
		contentType: 'application/json',
		data:outputData,
		success: function(data){
			alert(data.message);
			window.location = base_url+"jsp/academic_head/user_login_link/login_link_dean.jsp";

		},
		error:function(data){
			alert(data.responseJSON.errorMessage );
		}

	});
}
//dean login post



//dean login get service
function GetAllLoginDean(){
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url +'rest/academichead/v1/getloginlinkdetails/dean',
		  beforeSend: function(){
				$("#deanloginbody").empty();
				$("#deanloginbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
				 /* appenddata += "<tr id='dean_row"+data[i].id+"'><td>"+data[i].id+"</td>";*/
			  appenddata += "<tr id='dean_row"+data[i].dean+"'><td>"+data[i].dean+"</td>";    
			 // appenddata += "<td>"+data[i].photo+"</td>"; 
			  if(data[i].photo !=="" || data[i].photo !== null){
				  appenddata += "<td "+data[i].id+"><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";   

				}
				else{
					appenddata += "<td "+data[i].id+"><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";

				}
			/*	if(data[i].superdean === null){
					appenddata += "<td ></td>";
				}else{
					appenddata += "<td >"+data[i].superdean+"</td>";
				}*/
				/*appenddata += "<td >"+data[i].superdean+"</td>";*/
				appenddata += "<td>"+data[i].standard+"</td>"; 
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>"; 

				if(data[i].status == false){
					appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' id='thumbsdean_item"+data[i].id+"' data-toggle='tooltip' onclick='thumbsdean(this)' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				}
				else if(data[i].status == true){
					appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' id='thumbsdean_item"+data[i].id+"' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-toggle='tooltip' onclick='thumbsdean(this)' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				}


			}
			$("#deanloginbody").empty();
			$('#deanlogindatable_1').DataTable().clear().destroy();
			$("#deanloginbody").append(appenddata);
			$("#deanlogindatable_1").DataTable();
		},
		error: function(data) {		

			alert(data.responseJSON.errorMessage);

		}


	});
}
//dean login get service*/


//login_link sme post service
/*function loginSme()
{
	var smename = $("#sme option:selected").text();
	var  smeId = $("#sme").val();
	var dean = $("#dean option:selected").text();
	var deanid = $("#dean").val();

	var superDean = $("#logl_sdean").val();
	var category =$("#category_question").val();
	var examType = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var createdBy = $("#createdby").val();
	
	
	var inputData = '{"deanid":"'+deanid+'","categoryId":"'+category+'","examtypeId":"'+examType+'", "standardId":"'+standard+'","subjectId":"'+subject+'","unitId":"'+unit+'","chapterId":"'+chapter+'","createdBy":"'+createdBy+'","smeid":"'+smeId+'"}';
   
	
	$.ajax({
		url: base_url+'rest/academichead/v1/linktosme',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
	    	  alert(data.message);
	    	  window.location = base_url+"jsp/academic_head/user_login_link/login_link_sme.jsp";

	      },
	      error:function(data){
	    	//  alert("oops something went wrong")
	    	  
	    	  alert(data.responseJSON.errorMessage);

	      }
		
	});
}*/


// sme login_link  post service






//sme login_link get service

function GetAllLoginSme(){
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/academichead/v1/getloginlinkdetails/sme',
		  beforeSend: function(){
				$("#smeloginbody").empty();
				$("#smeloginbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
				  appenddata += "<tr id='sme_row"+data[i].sme+"'><td>"+data[i].sme+"</td>";    
			  if(data[i].photo =="" || data[i].photo == null){
				  appenddata += "<td "+data[i].id+"><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
			  }
			  else{

				  appenddata += "<td "+data[i].id+"><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";   
			  }
			  appenddata += "<td>"+data[i].dean+"</td>";

			  appenddata += "<td>"+data[i].standard+"</td>";
			  appenddata += "<td>"+data[i].subject+"</td>";
		       appenddata += "<td>"+data[i].unit+"</td>";
			  appenddata += "<td>"+data[i].chapter+"</td>";
			  
			  if(data[i].status == false){
				  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' id='thumbs_item"+data[i].id+"' data-toggle='tooltip' onclick='thumbs(this)' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  }
			  else if(data[i].status == true){
				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' id='thumbs_item"+data[i].id+"' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-toggle='tooltip' onclick='thumbs(this)' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			 
			  
		  }
			  $("#smeloginbody").empty();
			  $('#smelogindatable_1').DataTable().clear().destroy();
			  $("#smeloginbody").append(appenddata);
			  $("#smelogindatable_1").DataTable();
		  },
		  error: function(data) {		
			  alert(data.responseJSON.errorMessage);
		  }
	});
	}
//sme login_link get service

//status button sme
function thumbs(elem){
	var status = $(elem).attr('data-status');
	if(status == "true"){
		status = false;
	} else {
		status = true;
	}
	var thumbs_items = {
		"id":$(elem).data('id'),
		"status":status,
		"usertype":"sme"
	}
	var inputData = JSON.stringify(thumbs_items);
	
	var conf = confirm('Do you Want to change the status?');
	
	if(conf == true){
		
	$.ajax({
		url: base_url+'rest/academichead/v1/changestatus',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
	   	    		if(data.status == true){
	   	    			
	   	    			var i = $(elem).children('i');
	   	    			$(elem).attr('data-status',status);
	   	    			
	   	    			if(status == false){
	   	    				
	   	    				$(i).attr('class','fa fa-thumbs-down font-18 mt-10');
	   	    				
	   	    				$(elem).removeClass('btn-active');
	   	    				$(elem).addClass('btn-deactive');
	   	    				
	   	    				
	   	    			} else {
	   	    				
	   	    				$(i).attr('class','fa fa-thumbs-up font-18 mt-10');
	   	    				$(elem).removeClass('btn-deactive');
	   	    				$(elem).addClass('btn-active');
	   	    			}
	   	    			
	   	    		} else {
	   	    			alert(data.message);
	   	    		}
	    	},
	    	error: function(data){
	    		alert(data.responseJSON.errorMessage);
	    	}
	    	
	    });
	
	} 
	
	

}

//status button sme

//status button dean
function thumbsdean(elem){
	var status = $(elem).attr('data-status');
	var id = $(elem).data('id');
	if(status == "true"){
		status = false;
	} else {
		status = true;
	}
	var thumbs_items = {
			"id":id,
			"status":status,
			"usertype":"dean"
	}
	var inputData = JSON.stringify(thumbs_items);
	
	var conf = confirm('Do you Want to change the status?');
	
	if(conf == true){

		$.ajax({
			url: base_url+'rest/academichead/v1/changestatus',
			type:"POST",
			dataType: "json",
			contentType: 'application/json',
			data:inputData,
			success: function(data){
				if(data.status == true){

					var i = $(elem).children('i');
					$(elem).attr('data-status',status);

					if(status == false){

						$(i).attr('class','fa fa-thumbs-down font-18 mt-10');

						$(elem).removeClass('btn-active');
						$(elem).addClass('btn-deactive');


					} else {
						$(i).attr('class','fa fa-thumbs-up font-18 mt-10');
						$(elem).removeClass('btn-deactive');
						$(elem).addClass('btn-active');
					}
				} else {
					alert(data.message);
				}
			},
			error: function(data){
				alert(data.responseJSON.errorMessage);
			}
		});

	} 



}

//status button dean



$('#AhdeanSubmit').click(function(){
/*	var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();*/
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var topic = $('#topic').val();
	var typeofQns = $('#questionType').val();
	var mainparameter = $('#parameter option:selected').text();
	var chapparameter = $('#chapparameter option:selected').text();
	var acdId = getAHId();
   // var inputData = '{"examtype":"'+examtypename+'","standard":"'+standardname+'","subject":"'+subjectname+'","academicheadid":"'+acdId+'"}';
	
	
	
	if(topic=="--- Select ---" || topic=="" || topic ==null){
		 topic="";
	 }
	 if(typeofQns=="--- Select ---" || typeofQns=="" || typeofQns ==null){
		 typeofQns="";
	 }
	 if(mainparameter=="---Select---" || mainparameter=="" || mainparameter ==null){
		 mainparameter="";
	 }
	 if(chapparameter=="--- Select ---" || chapparameter=="" || chapparameter ==null){
		 chapparameter="";
	 }
	 
    var inputData = '{"unitId":"'+unitname+'","chapterId":"'+chaptername+'","topicId":"'+topic+'","questiontypename":"'+typeofQns+'","parameter":"'+mainparameter+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","academicheadid":"'+acdId+'","chapParameter":"'+chapparameter+'"}';

    var appenddata ="";
		
    $.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/academichead/getquestionstatusbyfilter',
			  data: inputData,
			  beforeSend: function(){
			  				$("#AHDean_tbody").empty();
			  				$("#AHDean_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			  },
			  success: function(data){

				  
				  for(var i=0; i < data.length; i++){
					  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
						   
						  $("#AHDean_tbody").empty();
							$("#AHDean_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
					  }else{
		    		appenddata += "<tr id='QStat_row"+data[i].questionId+"' data-id='"+data[i].questionFormatId+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
		    		  /*appenddata += "<td>"+data[i].examtype+"</td>"; */
		    		  appenddata += "<td>"+data[i].standard+"</td>";
		    		  appenddata += "<td>"+data[i].subject+"</td>";
		    		  appenddata += "<td>"+data[i].chapter+"</td>";
		    		  appenddata += "<td>"+data[i].topic+"</td>";
		    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
		    		  //appenddata += "<td>"+data[i].previousyear+"</td>";
		    		  appenddata += "<td>"+data[i].modifiedDate+"</td>";
		    		  appenddata += "<td>"+data[i].status+"</td>";
		    		  appenddata +="<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=sts&id="+data[i].questionId+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
					  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=sts&id="+data[i].questionId+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionId+"' data-original-title='Edit'>" +
				  	  "<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='Ah_dean"+data[i].questionId+"' data-id='"+data[i].questionId+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
					  }
		    	}
		    	  
		    	  $("#AHDean_tbody").empty();
		    	  $('#AHDean_tbl').DataTable().clear().destroy();
				  $("#AHDean_tbody").append(appenddata);
				  $("#AHDean_tbl").DataTable();
				  
			  },
			  error: function(data) {		
				  $("#AHDean_tbody").empty();
				  alert(data.responseJSON.errorMessage);

			  }
			  
		});
});

//Question Status> academic head Post



//Question Status> academic head GET
function GetAHdeanstatus(){
	var appenddata;
	$.ajax({
		 type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/academichead/getquestionstatus/'+getAHId(),
		  beforeSend: function(){
				$("#AHDean_tbody").empty();
				$("#AHDean_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  
			  for(var i=0; i < data.length; i++){
				  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
					   
					$("#AHDean_tbody").empty();
					$("#AHDean_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
				  }else{
				  appenddata += "<tr id='QStat_row"+data[i].questionId+"' data-id='"+data[i].questionFormatId+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
	    		  /*appenddata += "<td>"+data[i].examtype+"</td>"; */
	    		  appenddata += "<td>"+data[i].standard+"</td>";
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
	    		  appenddata += "<td>"+data[i].modifiedDate+"</td>";
	    		  appenddata += "<td>"+data[i].status+"</td>";
				  appenddata +="<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=sts&id="+data[i].questionId+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=sts&id="+data[i].questionId+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionId+"' data-original-title='Edit'>" +
			  	  "<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='Ah_dean"+data[i].questionId+"' data-id='"+data[i].questionId+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				    }
				  }
				  $("#AHDean_tbody").empty();
				  $('#AHDean_tbl').DataTable().clear().destroy();
				  $("#AHDean_tbody").append(appenddata);
				    $('#AHDean_tbl').DataTable();
			  
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);			  
		  }
		
	});
}
//Question Status> academic head GET


//Question Status Delete

$(document).on("click", "a[id^=Ah_dean]", function() {
	var id = $(this).attr('data-id');
	var tr_id = $("tr[id^=QStat_row]").attr('data-id');
	//var status=false;
	var  createdby= $("#createdby").val();

	var con = confirm("Are you Sure to delete?");
	var acdId = getAHId();
	  if(con == true){
		 
			  
		/*	var categdelete =  {
				    "Id":id,
				    "createdBy":"Admin",
				    "status":false
				};
			var deletecategory = JSON.stringify(categdelete);*/
			//	var deletecategory =	  {"Id":"3","createdBy":"Admin","status":false}
			  
			  
			  
			// var deletecategory = '{"status":'+status+',"Id":'+id+',"updatedBy":"'+createdby+'"}';

		$.ajax({
	  type: "GET",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/question/deletesqbquestion/'+id+'/'+acdId+'/'+"academichead", 
	  success: function(data){	  
		  if(data.status){
		 		alert(data.message);
		 		$("#QStat_row"+tr_id).remove();
		  }
		  },
	    
	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  
		  }
	  }
);
		  
//Question Status Delete




//academic get method copytootherexam by sridhar

function getCopytoOtherExamAH(){
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		
		  url: base_url +'rest/academichead/v1/getcopytootherexam/'+getAHId(),
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
			  appenddata += "<tr id='aca_row"+data[i].qid+"'><td>"+data[i].questionFormatId+"</td>";    
			  appenddata += "<td>"+data[i].examtype+"</td>"; 
			  appenddata += "<td>"+data[i].standard+"</td>";
			  appenddata += "<td>"+data[i].subject+"</td>";
			  appenddata += "<td>"+data[i].chapter+"</td>"; 
			  appenddata += "<td>"+data[i].topic+"</td>";
			  appenddata += "<td>"+data[i].typeofquestion+"</td>";
			  appenddata += "<td>"+data[i].difficultylevel+"</td>"; 
			  appenddata += "<td>"+data[i].presentinexamtype+"</td>";
			  appenddata += "<td>"+data[i].modifieddate+"</td>";
			    appenddata +="<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].qid+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
			   
			  appenddata += "<td><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=mtb&pvid="+data[i].qid+"' class='btn btn-primary btn-xs'>Go</a></td>";
			 
			  }
			  $("#acacopyexam-body").empty();
			  $('#acacopyexamdatable_1').DataTable().clear().destroy();
			  $("#acacopyexam-body").append(appenddata);
			  $("#acacopyexamdatable_1").DataTable();
		  },
		  error: function(data) {		
			 
			  alert(data.responseJSON.errorMessage);

		  }
		 
	    	
	});
	}
//academic get method copytootherexam by sridhar

//Academic head get question count 

function AcademicHdquesCount(){
	var adappend="";
   $.ajax({
	   type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/academichead/getquestioncount/'+getAHId(),
		  beforeSend: function(){
				$("#acadhd_tbody").empty();
				$("#acadhd_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			 
			  for(var i=0;i<data.length;i++){
				  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
					  $("#acadhd_tbody").empty();
					  $("#acadhd_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
					  }else{
				  adappend += "<tr><td>"+data[i].id+"</td>";    
				 /* adappend += "<td>"+data[i].examtype+"</td>"; */
				  adappend += "<td>"+data[i].standard+"</td>";
				  adappend += "<td>"+data[i].subject+"</td>";
				  adappend += "<td>"+data[i].chapter+"</td>";
				  adappend +=  "<td>"+data[i].topic+"</td>";
				  adappend += "<td>"+data[i].pending+"</td>";
				  adappend += "<td>"+data[i].rejected+"</td>";
				  adappend += "<td>"+data[i].approved+"</td></tr>";
		        }
			  }
			  $("#acadhd_tbody").empty();
			  $('#acadhd_tbl').DataTable().clear().destroy();
			  $("#acadhd_tbody").append(adappend);
			  $("#acadhd_tbl").DataTable();
		  
		  },
		  error:function(data){
			  alert("Error in Academic Question Count Getting Data");
			  
		  }
   })
}

//Academic head get question count 

//Academic get question count by filter

function AcadHdgetbyFilter(){
	
	/*var category = $("#category").val();
	var examtype = $("#examtype").val();*/
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var acdId = getAHId();
	
	
var academ = {
        /*"categoryId":category,
		"examtypeId":examtype,*/
		"standardId":standard,
		"subjectId":subject,
		"academichead":acdId
		
	}

	var academqys = JSON.stringify(academ);
	var adappend;
   $.ajax({
	      type: "POST",
		  dataType: "json",
		  data: academqys,
		  contentType: 'application/json', 
		  url: base_url + 'rest/academichead/getquestioncountbyfilter',
		  beforeSend: function(){
				$("#acadhd_tbody").empty();
				$("#acadhd_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  for(var i=0;i<data.length;i++){

				  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
				  $("#acadhd_tbody").empty();
				  $("#acadhd_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
				  }else{
				  adappend += "<tr><td>"+data[i].id+"</td>";    
				/*  adappend += "<td>"+data[i].examtype+"</td>"; */
				  adappend += "<td>"+data[i].standard+"</td>";
				  adappend += "<td>"+data[i].subject+"</td>";
				  adappend += "<td>"+data[i].chapter+"</td>";
				  adappend +=  "<td>"+data[i].topic+"</td>";
				  adappend += "<td>"+data[i].pending+"</td>";
				  adappend += "<td>"+data[i].rejected+"</td>";
				  adappend += "<td>"+data[i].approved+"</td></tr>";
				  }
			  }
			  $("#acadhd_tbody").empty();
			  /*$('#acadhd_tbl').DataTable().clear().destroy();*/
			  $("#acadhd_tbody").append(adappend);
			  $("#acadhd_tbl").DataTable();
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
	   
	   
   })
   
   
   
	
}



//Academic get question count by filter



function refResolver(r){
	switch(r){
	case 'sts':
		return 'status.jsp';
	case 'dqc':
		return 'database_qc.jsp';
	case 'mtb':
		return 'move_to_board.jsp';
	}
}



/*
 * Question Step 1 DEAN Module
 * 
 * */

function questionStep1(){
	
	$("#step1Btn").addClass('disablelink').removeClass('activatelink');
	
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var questiontypeId = $("#questionType").val();
	var questiontype = $("#questionType").children("option").filter(":selected").text()
	//var layoutFormat = getParameterByName('layout');
	var ah_editmode = sessionStorage.getItem("ah_editmode");
	if(ah_editmode !== "true"){
		
		var inputData;
	  	
	  	if( category == "" || category == "--- Select ---" )
	  	{
	  	
	  	   alert("Please Select Category");
	  	 $("#step1Btn").addClass('activatelink').removeClass('disablelink');
	         return false;
	  	}
	  	else if(examtype=="" || examtype == "--- Select ---" )
	  	{
	  		
	  			alert("Please Select Exam Type");
	  			$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	  	     	return false;
	  	}
	  	else if(standard == "" || standard == "--- Select ---" )
	  	{
	  	
	  		alert("Please Select Standard");
	  		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	       	return false;
	  	}
	  	else if(subject=="" || subject == "--- Select ---")
	  	{
	  	
	  		alert("Please Select Subject");
	  		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	       	return false;
	  	}
	  	else if(unit=="" || unit == "--- Select ---")
	  	{
	  	
	  		alert("Please Select Unit");
	  		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	       	return false;
	  	}
	  	else if(chapter=="" || chapter == "--- Select ---" )
	  	{
	  	
	  		alert("Please Select Chapter");
	  		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	       	return false;
	  	}
	  	else if(questiontype=="" || questiontype == "--- Select ---")
	  	{
	  	
	  		alert("Please Select Question Type");
	  		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	       	return false;
	       	
	  	} else{
	  		var loginData = getLoginData();
			var utp = loginData.userType;
	  		var url = base_url+'rest/question/addquestion';
			inputData = {
	  				"categoryId" : category,
	  				"examtypeId" : examtype,
	  				"standardId" : standard,
	  				"subjectId" : subject,
	  				"unitId" : unit,
	  				"chapterId" : chapter,
	  				"questiontypeId" : questiontypeId,
	  				"dean": true,
	  				"id":parseInt(getParameterByName("pvid")),
	  				"insertedBydesignation": utp,
	  				"step" : 1,
	  				"updatedId":getAHId(),
	  				"updatedBy":"ACADEMICHEAD"
	  			};
			
			inputData = JSON.stringify(inputData);
			
			$.ajax({
	  			 type: "POST",
	  			  dataType: "json",
	  			  contentType: 'application/json', 
	  			  url: url,
	  			cache:false,
	  			  data: inputData,
	  			  success:function(data){
	  				  
	  				  if(data.status) {
	  					 
	  					  //setCookie("questionId",btoa(JSON.stringify(data.questionId)),1);
	  					  //alert(data.message);
	  					 var pvid = getParameterByName('pvid');
	  					 var ref = getParameterByName('ref');
	  					$.toast({
	  					    text: "Step 1 Updated Successfully!", // Text that is to be shown in the toast
	  					    heading: 'Step 1 updated!', // Optional heading to be shown on the toast
	  					    icon: 'success', // Type of toast icon
	  					    showHideTransition: 'plain', // fade, slide or plain
	  					    allowToastClose: true, // Boolean value true or false
	  					    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
	  					    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
	  					    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
	  					    
	  					    
	  					    
	  					    textAlign: 'left',  // Text alignment i.e. left, right or center
	  					    loader: true,  // Whether to show loader or not. True by default
	  					    loaderBg: '#9EC600',  // Background color of the toast loader
	  					    beforeShow: function () {}, // will be triggered before the toast is shown
	  					    afterShown: function () {}, // will be triggered after the toat has been shown
	  					    beforeHide: function () {
	  					    	if(pvid !== '' && pvid !== null){
	  					    		window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+data.questionId+"&layout="+questiontypeId;
	  					    	}else{
	  					    		window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&id="+data.questionId+"&layout="+questiontypeId;
	  					    	}
	  					    	
	  					    	
	  					    	
	  					    }, // will be triggered before the toast gets hidden
	  					    afterHidden: function () {}  // will be triggered after the toast has been hidden
	  					});
	  					  
	  					  

	  				  } else {
	  					  
	  					  //alert("Error! Unable to send options!");
	  					  
	  					  
	  					$.toast({
		  				    text: data.message, // Text that is to be shown in the toast
		  				    heading: 'Step1 Error!', // Optional heading to be shown on the toast
		  				    icon: 'error', // Type of toast icon
		  				    showHideTransition: 'plain', // fade, slide or plain
		  				    allowToastClose: true, // Boolean value true or false
		  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  				    
		  				    
		  				    
		  				    textAlign: 'left',  // Text alignment i.e. left, right or center
		  				    loader: true,  // Whether to show loader or not. True by default
		  				    loaderBg: '#9EC600',  // Background color of the toast loader
		  				    beforeShow: function () {}, // will be triggered before the toast is shown
		  				    afterShown: function () {
		  				    	$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		  				    }, // will be triggered after the toat has been shown
		  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
		  				    afterHidden: function () {
		  				    	
		  				    }  // will be triggered after the toast has been hidden
		  				});
	  					  //return false;
	  					  
	  				  }
	  			  
	  			  },
	  			  error:function(){
	  				//alert("Step1 updation failed!");
	  				$.toast({
	  				    text: "Step 1 Error!", // Text that is to be shown in the toast
	  				    heading: 'Step 1 updation failed!', // Optional heading to be shown on the toast
	  				    icon: 'error', // Type of toast icon
	  				    showHideTransition: 'plain', // fade, slide or plain
	  				    allowToastClose: true, // Boolean value true or false
	  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
	  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
	  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
	  				    
	  				    
	  				    
	  				    textAlign: 'left',  // Text alignment i.e. left, right or center
	  				    loader: true,  // Whether to show loader or not. True by default
	  				    loaderBg: '#9EC600',  // Background color of the toast loader
	  				    beforeShow: function () {}, // will be triggered before the toast is shown
	  				    afterShown: function () {
	  				    	$("#step1Btn").addClass('activatelink').removeClass('disablelink');
	  				    }, // will be triggered after the toat has been shown
	  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
	  				    afterHidden: function () {}  // will be triggered after the toast has been hidden
	  				});
	  			  }
	  			
	  		});
			
			
	  	}
		
	} else{
		sessionStorage.setItem("ah_editmode", true);
		var ref = getParameterByName('ref');
		var questionId = getParameterByName('id');
		var pvid = getParameterByName('pvid');
		 if(questionId !== "" && questionId !== null && pvid !== "" && pvid !== null){
	  		window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+questionId+"&layout="+questiontypeId;	
	  	} else if(questionId !== "" && questionId !== null){
	  		window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&id="+questionId+"&layout="+questiontypeId;
	  	} else {
	  		var referrer = document.referrer;
	  		if(referrer.indexOf('move_to_board.jsp') !== -1){
	  			$.toast({
				    text: "Going back...", // Text that is to be shown in the toast
				    heading: 'Failed to get question data', // Optional heading to be shown on the toast
				    icon: 'error', // Type of toast icon
				    showHideTransition: 'plain', // fade, slide or plain
				    allowToastClose: true, // Boolean value true or false
				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
				    
				    
				    
				    textAlign: 'left',  // Text alignment i.e. left, right or center
				    loader: true,  // Whether to show loader or not. True by default
				    loaderBg: '#9EC600',  // Background color of the toast loader
				    beforeShow: function () {}, // will be triggered before the toast is shown
				    afterShown: function () {}, // will be triggered after the toat has been shown
				    beforeHide: function () {
				    	window.location = base_url+"jsp/academic_head/copytootherexamtype/move_to_board.jsp";
				    }, // will be triggered before the toast gets hidden
				    afterHidden: function () {}  // will be triggered after the toast has been hidden
				});
	  			
	  			
	  		} else if(referrer.indexOf('status.jsp') !== -1){
	  			
	  			$.toast({
				    text: "Going back...", // Text that is to be shown in the toast
				    heading: 'Failed to get question data', // Optional heading to be shown on the toast
				    icon: 'error', // Type of toast icon
				    showHideTransition: 'plain', // fade, slide or plain
				    allowToastClose: true, // Boolean value true or false
				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
				    
				    
				    
				    textAlign: 'left',  // Text alignment i.e. left, right or center
				    loader: true,  // Whether to show loader or not. True by default
				    loaderBg: '#9EC600',  // Background color of the toast loader
				    beforeShow: function () {}, // will be triggered before the toast is shown
				    afterShown: function () {}, // will be triggered after the toat has been shown
				    beforeHide: function () {
				    	window.location = base_url+"jsp/academic_head/questionstatus/status.jsp";
				    }, // will be triggered before the toast gets hidden
				    afterHidden: function () {}  // will be triggered after the toast has been hidden
				});
	  			
	  			
	  		} else {
	  			
	  			$.toast({
				    text: "Going back...", // Text that is to be shown in the toast
				    heading: 'Failed to get question data', // Optional heading to be shown on the toast
				    icon: 'error', // Type of toast icon
				    showHideTransition: 'plain', // fade, slide or plain
				    allowToastClose: true, // Boolean value true or false
				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
				    
				    
				    
				    textAlign: 'left',  // Text alignment i.e. left, right or center
				    loader: true,  // Whether to show loader or not. True by default
				    loaderBg: '#9EC600',  // Background color of the toast loader
				    beforeShow: function () {}, // will be triggered before the toast is shown
				    afterShown: function () {}, // will be triggered after the toat has been shown
				    beforeHide: function () {
				    	window.location = base_url+"jsp/master/default.jsp";
				    }, // will be triggered before the toast gets hidden
				    afterHidden: function () {}  // will be triggered after the toast has been hidden
				});
	  			
	  			
	  		}
	}
	
	
		
	}
			    	
					   	
}


/* END of questionStep1() */



/*
 * Add Question Step 2 DEAN Module
 * 
 * */
	function addQuestionStep2()
	{
		$("#saveBtn2").addClass('disablelink').removeClass('activatelink');
		$("#nextBtn2").addClass('disablelink').removeClass('activatelink');
		$("#layout_back").addClass('disablelink').removeClass('activatelink');
		
		var location = $(this).text();
		var instructions = CKEDITOR.instances.Instructions.getData();
		var question = CKEDITOR.instances.question.getData();
	    var solution = CKEDITOR.instances.hint.getData();
	    var concept = CKEDITOR.instances.concept.getData();
	    
	    var layout = getParameterByName("layout");
	    var singleRegex = /(_1_|_2_|_3_)/;
	    var multiRegex = /(_4_|_5_|_6_)/;
	    var comprh = /(_8_|_9_|_10_)/;
	    
	    var intiRegex  = /_7_I/;
	    var multiComprh = /_11_/;
	    var matrix = /_12_X/;
	    
	    
	    var option1 = "", option2 = "", option3 = "", option4 = "";
		    
	   if(intiRegex.test(layout)){
		 var answer = $('#answer').val(); 
		 if(answer !== undefined && answer !== null && answer !== ""){
	    		// do nothing
	    		
	    	} else{
	    		answer = "";
	    	}
	   } else if(matrix.test(layout)){
	    	
	    	var answer = "";
	    	for(var fl = 1;fl<=4;fl++){
	    		var iparam = 0;
		    	var paramsChecksValues = [];
		        $('.optionChecks'+fl+':checked').each(function () {
		    	   paramsChecksValues[iparam++] = $(this).val();
		        });
		        
		    	if(paramsChecksValues.length !== 0){
		    		paramsChecksValues = paramsChecksValues.join(",");
		    		answer +=  paramsChecksValues + '|';
		    	} else{
		    		alert("Please select atleast one answer for each options!!");
		    		$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
 		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
 		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
		    		
		    		answer += "|";
		    	}
	    	}
	    } else{
  		    option1 = CKEDITOR.instances.option1.getData();
  		    option2 = CKEDITOR.instances.option2.getData();
  		    option3 = CKEDITOR.instances.option3.getData();
  		    option4 = CKEDITOR.instances.option4.getData();
	   }
		   
	    if(singleRegex.test(layout)){
	    	
	    	var answer = $('input[name="radio"]:checked').val(); 
	    	
	    } else if(multiRegex.test(layout)){
	    	
	    	
	    	var oc = 0;
		  	var optionChecksValues = [];
	        $('.optionChecks:checked').each(function () {
	        	optionChecksValues[oc++] = $(this).val();
	        });
	       
	        if(optionChecksValues.length === 0){
	        	optionChecksValues = "";
	        	answer = optionChecksValues;
		        	
		     } else{
		        	
		        optionChecksValues = optionChecksValues.join(',');
  		        answer = optionChecksValues;
  		        
		      }
	      
	    } else if(comprh.test(layout)){
		    	
	    	var addedFields = parseInt($("#hckfields").val()) - 1;
	    	var trackSkipFields = $("#trackQH").val();
	    	var cfdata = formDataForComprh('c',addedFields,trackSkipFields,"ah_editmode");
	    	
		} else if(multiComprh.test(layout)){
			
	    	var addedFields = parseInt($("#hckfields").val()) - 1;
	    	var trackSkipFields = $("#trackQH").val();
	    	var mcfdata = formDataForComprh('mc',addedFields,trackSkipFields,"ah_editmode");
		    	
		}
	   
	    var step = 2;
		//var questionid = JSON.parse(atob(getCookie("questionId")));
	    
	    var questionid = getParameterByName('id');
   		var smeid = $("#smeid").val();
   		
		var ah_editmode = sessionStorage.getItem("ah_editmode");
		
		if(ah_editmode !== "true"){
			//adding new question
			
			var url = base_url+'rest/question/addquestion';
			
			if(comprh.test(layout)){
				passage = CKEDITOR.instances.passage.getData();
				answer =  $('input[name="radio"]:checked').val();
				if(cfdata === false){
					/*alert("Please select answer for all questions!");*/
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				} else{
					var check = checkEmptyForStep2(instructions,passage,question,option1,option2,option3,option4,answer,solution);
					if(check){
					var postquestion =  {
						"instructions":	instructions,
						"questiontype":layout,
						"question":passage,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"smeid": smeid,
						"step": step,
						"updatedId":getAHId(),
						"updatedBy":"ACADEMICHEAD"
					};
					}else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
						$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
						$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
				
			} else if(multiComprh.test(layout)){
				passage = CKEDITOR.instances.passage.getData();
				answer =  $('input[name="checkbox"]:checked').val();
				if(mcfdata === false){
					/*alert("Please select answer for all questions!");*/
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				} else{
					var check = checkEmptyForStep2(instructions,passage,question,option1,option2,option3,option4,answer,solution);
					if(check){
					var postquestion =  {
						"instructions":	instructions,
						"questiontype":layout,
						"question":passage,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"smeid": smeid,
						"step": step,
						"updatedId":getAHId(),
						"updatedBy":"ACADEMICHEAD"
					};
					}else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
						$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
						$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
			} else if(matrix.test(layout)){
			//	var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
				var check = checkEmptyForStep2("leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
				if(check){
				var postquestion =  {
						"instructions":	instructions,	
						"question": question,
						"option1": "MATRIX OPTION1",
						"option2": "MATRIX OPTION2",
						"option3": "MATRIX OPTION3" ,
						"option4": "MATRIX OPTION4",
						"answer": answer,
						"solution": solution,
						"concept": concept,
						"id": questionid,
						"step": step,
						"updatedId":getAHId(),
						"updatedBy":"ACADEMICHEAD"
					};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}
			} else{
				
				if(intiRegex.test(layout)){
				//	var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
					var check = checkEmptyForStep2("leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);	
					if(check){
						var postquestion =  {
								"instructions":	instructions,	
								"question": question,
								"option1": option1,
								"option2": option2,
								"option3": option3 ,
								"option4": option4,
								"answer": answer,
								"solution": solution,
								"concept": concept,
								"id": questionid,
								"smeid": smeid,
								"step": step,
								"answer": answer,
								"updatedId":getAHId(),
								"updatedBy":"ACADEMICHEAD"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				} else{
					//var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution,concept);
					var check = checkEmptyForStep2("leavethis","leavethis",question,option1,option2,option3,option4,answer,solution);	
					if(check){
						var postquestion =  {
								"instructions":	instructions,	
								"question": question,
								"option1": option1,
								"option2": option2,
								"option3": option3 ,
								"option4": option4,
								"answer": answer,
								"solution": solution,
								"concept": concept,
								"id": questionid,
								"smeid": smeid,
								"step": step,
								"answer": answer,
								"updatedId":getAHId(),
								"updatedBy":"ACADEMICHEAD"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
				
				
			}
			
			
		} else{				
			//updating question
			
			var url = base_url+'rest/question/updatesqbquestion';

			if(comprh.test(layout)){
				passage = CKEDITOR.instances.passage.getData();
				answer =  $('input[name="radio"]:checked').val();
				if(cfdata === false){
					/*alert("Please select answer for all questions!");*/
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				} else{
					var check = checkEmptyForStep2(instructions,passage,question,option1,option2,option3,option4,answer,solution);
					if(check){
					var postquestion =  {
						"instructions":	instructions,
						"questiontype":layout,
						"question":passage,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAHId(),
						"updatedBy":"ACADEMICHEAD"
					};
					}else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
						$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
						$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
			} else if(multiComprh.test(layout)){
				passage = CKEDITOR.instances.passage.getData();
				answer =  $('input[name="checkbox"]:checked').val();
				if(mcfdata === false){
					/*alert("Please select answer for all questions!");*/
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				} else{
					var check = checkEmptyForStep2(instructions,passage,question,option1,option2,option3,option4,answer,solution);
					if(check){
				var postquestion =  {
						"instructions":	instructions,
						"questiontype":layout,
						"question":passage,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAHId(),
						"updatedBy":"ACADEMICHEAD"
					};
					}else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
						$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
						$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
			} else if(matrix.test(layout)){
				//var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
				var check = checkEmptyForStep2("leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
				if(check){
					var postquestion =  {
							"instructions":	instructions,	
							"question": question,
							"option1": "MATRIX OPTION1",
							"option2": "MATRIX OPTION2",
							"option3": "MATRIX OPTION3" ,
							"option4": "MATRIX OPTION4",
							"answer": answer,
							"solution": solution,
							"concept": concept,
							"id": questionid,
							"step": step,
							"updatedId":getAHId(),
							"updatedBy":"ACADEMICHEAD"
						};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}
			} else{

				if(intiRegex.test(layout)){
				//	var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
					var check = checkEmptyForStep2("leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);	
					if(check){
						var postquestion =  {
								"instructions":	instructions,	
								"question": question,
								"option1": option1,
								"option2": option2,
								"option3": option3 ,
								"option4": option4,
								"answer": answer,
								"solution": solution,
								"concept": concept,
								"id": questionid,
								"step": step,
								"updatedId":getAHId(),
								"updatedBy":"ACADEMICHEAD"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				} else{
				//	var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution,concept);
					var check = checkEmptyForStep2("leavethis","leavethis",question,option1,option2,option3,option4,answer,solution);
					if(check){
						var postquestion =  {
								"instructions":	instructions,	
								"question": question,
								"option1": option1,
								"option2": option2,
								"option3": option3 ,
								"option4": option4,
								"answer": answer,
								"solution": solution,
								"concept": concept,
								"id": questionid,
								"step": step,
								"updatedId":getAHId(),
								"updatedBy":"ACADEMICHEAD"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
				
			}

		}
		

	postquestion =  JSON.stringify(postquestion);
			 	
	 if(questionid !== "" && questionid !== null){
			 
		$.ajax({
			  url: url,
			  type: "POST",
			  cache:false,
			  dataType: "json",
			  contentType: 'application/json', 
			  data: postquestion,
			  success: function (data) {
				  
			  if(data.status){
				  
	             //alert(data.message);
	             
	             if(location==="Save"){
	            	$.toast({
		          	    text: "Step 2 Updated Successfully!", // Text that is to be shown in the toast
		          	    heading: 'Step 2 updated', // Optional heading to be shown on the toast
		          	    icon: 'success', // Type of toast icon
		          	    showHideTransition: 'plain', // fade, slide or plain
		          	    allowToastClose: true, // Boolean value true or false
		          	    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		          	    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		          	    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		          	    
		          	    
		          	    
		          	    textAlign: 'left',  // Text alignment i.e. left, right or center
		          	    loader: true,  // Whether to show loader or not. True by default
		          	    loaderBg: '#9EC600',  // Background color of the toast loader
		          	    beforeShow: function () {}, // will be triggered before the toast is shown
		          	    afterShown: function () {
		          	    	$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
		  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
		  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
		          	    }, // will be triggered after the toat has been shown
		          	    beforeHide: function () {}, // will be triggered before the toast gets hidden
		          	    afterHidden: function () {}  // will be triggered after the toast has been hidden
	            	});
	            	 return false;
	             } else {
	            	 var pvid = getParameterByName('pvid');
	            	 var ref = getParameterByName('ref');
	            	$.toast({
		          	    text: "Step 2 Updated Successfully!", // Text that is to be shown in the toast
		          	    heading: 'Step 2 updated', // Optional heading to be shown on the toast
		          	    icon: 'success', // Type of toast icon
		          	    showHideTransition: 'plain', // fade, slide or plain
		          	    allowToastClose: true, // Boolean value true or false
		          	    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		          	    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		          	    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		          	    
		          	    
		          	    
		          	    textAlign: 'left',  // Text alignment i.e. left, right or center
		          	    loader: true,  // Whether to show loader or not. True by default
		          	    loaderBg: '#9EC600',  // Background color of the toast loader
		          	    beforeShow: function () {}, // will be triggered before the toast is shown
		          	    afterShown: function () {}, // will be triggered after the toat has been shown
		          	    beforeHide: function () {
		          	    	
		          	    	if(pvid !== '' && pvid !== null){
		          	    		window.location = base_url+"jsp/academic_head/addquestions/upload_parameters.jsp?ref="+ref+"&pvid="+pvid+"&id="+questionid+"&layout="+layout;
		          	    	}else{
		          	    		window.location = base_url+"jsp/academic_head/addquestions/upload_parameters.jsp?ref="+ref+"&id="+questionid+"&layout="+layout;
		          	    	}
		          	    	
		          	    	$("#layout_back").addClass('activatelink').removeClass('disablelink');
		          	    
		          	    }, // will be triggered before the toast gets hidden
		          	    afterHidden: function () {}  // will be triggered after the toast has been hidden
	            	});
	            	
	             }

				}
	         },
	       error:function () {
	    	 //alert("Step2 updation failed!");
	    	 $.toast({
				    text: "Step 2 Error!", // Text that is to be shown in the toast
				    heading: 'Step2 updation failed!', // Optional heading to be shown on the toast
				    icon: 'error', // Type of toast icon
				    showHideTransition: 'plain', // fade, slide or plain
				    allowToastClose: true, // Boolean value true or false
				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
				    
				    
				    
				    textAlign: 'left',  // Text alignment i.e. left, right or center
				    loader: true,  // Whether to show loader or not. True by default
				    loaderBg: '#9EC600',  // Background color of the toast loader
				    beforeShow: function () {}, // will be triggered before the toast is shown
				    afterShown: function () {
				    	$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
				    }, // will be triggered after the toat has been shown
				    beforeHide: function () {}, // will be triggered before the toast gets hidden
				    afterHidden: function () {}  // will be triggered after the toast has been hidden
				});
	        }
		});
			
   } else {
  	 
  	 sessionStorage.setItem("ah_editmode", false);
  	 window.history.back();
  	 $("#layout_back").addClass('activatelink').removeClass('disablelink');
   }

}

/* END of addQuestionStep2() */
	
	
	
	/*
	   * Add Question Step 3 DEAN Module
	   * 
	   * */

	   function addQuestionStep3(){
		  
		$("#saveBtn3").addClass('disablelink').removeClass('activatelink');
		$("#param_back").addClass('disablelink').removeClass('activatelink');
		var topicId = parseInt($("#belongs").val());
		var difficulty_level =$("input[name='levelradio']:checked").val();
		if(difficulty_level == "" || difficulty_level == undefined || difficulty_level == null){
			alert('Please Select Difficulty Level Radio button');
			return false;
		}
		 var difflive = difficulty_level.split("_");
		var comments = $("#comments").val();
	    var id = getParameterByName('id');
		var layout = getParameterByName("layout");
		var veryimpquestion = $("#impquestion").is(':checked');
		var step = 3;
		var AHId = getAHId();
      var ah_editmode = sessionStorage.getItem("ah_editmode");
	  	if(ah_editmode !== "true"){
	  	//parameters
			var paramsChecksValues = [];
			$('.paramChecks:checked').each(function () { 
				var obj = {}; 
				obj["parameter"] = $(this).val();
				obj["parameterId"] = parseInt($(this).data("id"));
				paramsChecksValues.push(obj);
			});
			
			

			var chapparamsChecksValues = [];
		$('.chapparamChecks:checked').each(function () { 
			var obj = {}; 
			obj["parameter"] = $(this).val();
			obj["parameterId"] = parseInt($(this).data("id"));
			chapparamsChecksValues.push(obj);
		});
		
			//exam and years
			/*var examYears =[];
			var exam = parseInt($("#prevyears_exam").val());
			var examyear = $("#prevyears_year").val();
			if(examyear != "" || examyear != null || examyear != undefined ){
				var examyear2 = examyear.map(Number);
				var obj = {};
				obj["examtypeId"] = exam;
				obj["years"] = examyear2;
			
				examYears.push(obj);
			}*/
		var examYears = [];
		for(var pe = 0;pe<5;pe++){
			var exam = $("#prevyears_exam_"+pe).val();
			var examyear = $("#prevyears_year_"+pe).val();
			if(exam === "" || exam === null || exam === undefined || examyear === "" || examyear === null || examyear === undefined){
				continue;
			} else{
				var obj = {};
				obj["examtypeId"] = exam;
				obj["years"] = examyear;
				examYears.push(obj);
			}
			
		}
			
			//competativeExamTypes
			var competativeExamTypes = [];
			for(var ce = 0;ce<5;ce++){
				var examType = $("#examcategory_"+ce).val();
				var prevyear = $("#previousyear2_"+ce).val();
				if(examType === "" || examType === null || examType === undefined || prevyear === "" || prevyear === null || prevyear === undefined){
					continue;
				} else{
					var obj = {};
					obj["examtypeId"] = examType;
					obj["years"] = prevyear
					competativeExamTypes.push(obj);
				}
				
			}
			
			
			//modules
			var modules = [];
			var flagsubModuleId = true;
			$('.mainModule:checked').each(function () {
				var moduleId = $(this).val();
				var subModulePresent = parseInt($(this).data('subpresent'));
				var subModuleId = 0;
				if(subModulePresent>0){
					subModuleId = $("input[name='subModRadio_"+moduleId+"']:checked").val();
					if(subModuleId === "" || subModuleId === null || subModuleId === undefined){
						flagsubModuleId = false;
					}
				}
				var obj = {};
				obj["moduleId"] = moduleId;
				obj["subModuleId"] = subModuleId;
				modules.push(obj);
			});
			
			if(!flagsubModuleId){
				alert("Please select submodule for the selected module!");
				$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
				$("#param_back").addClass('activatelink').removeClass('disablelink');
				return false;
			}
			
			//examtypes
			var examtypes = [];
			var flaglevelId = true;
			$('.examLevelChecks:checked').each(function () {
				var examtypeId = $(this).val();
				levelId = $("input[name='levelRadio_"+examtypeId+"']:checked").val()
				
				if(levelId === "" || levelId === null || levelId === undefined){
					flaglevelId = false;
				}
				
				var obj = {};
				obj["examtypeId"] = examtypeId;
				obj["levelId"] = levelId;
				examtypes.push(obj);
			});

			if(!flaglevelId){
				alert("Please select level for the selected examtype!");
				$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
				$("#param_back").addClass('activatelink').removeClass('disablelink');
				return false;
			}
			
	  		
			var url = base_url+'rest/question/addquestion';
			var inputData = {
					parametersList: paramsChecksValues,
					chapterParameterList : chapparamsChecksValues,
					comments : comments,
					id : id,
					topicId : topicId,
					difficultyLevelId : parseInt(difflive[1]),
					previousYearsList:examYears,
					competativeExamTypes : competativeExamTypes,
					modules:modules,
					examtypes:examtypes,
					veryimpquestion: veryimpquestion,
					step : step,
			  		updatedId:AHId,
			  		updatedBy:"ACADEMICHEAD"
			  	};
		} else{					
			var url = base_url+'rest/question/updatesqbquestion';
			
			//parameters
			var paramsChecksValues = [];
			$('.paramChecks').each(function () { 
				
				var rowid = parseInt($(this).data('rowid'));
				var isChecked = $(this).prop('checked');
				
				if(isChecked && rowid > 0){
					//param not changed, active true
					var obj = {};
					obj["parameter"] = $(this).val();
					obj["parameterId"] = parseInt($(this).data("id"));
					obj["active"] = true;
					obj["parametersListId"] = rowid;
					paramsChecksValues.push(obj);
				} else if(!isChecked && rowid > 0){
					//param changed first was checked now updated and unchecked, active false
					var obj = {};
					obj["parameter"] = $(this).val();
					obj["parameterId"] = parseInt($(this).data("id"));
					obj["active"] = false;
					obj["parametersListId"] = rowid;
					paramsChecksValues.push(obj);
				} else if(isChecked && rowid === 0){
					//param changed, new entry, active true
					var obj = {};
					obj["parameter"] = $(this).val();
					obj["parameterId"] = parseInt($(this).data("id"));
					obj["active"] = true;
					obj["parametersListId"] = rowid;
					paramsChecksValues.push(obj);
				}
				
				
			});
			
			
			//chapterparam check
			var chaptereparamsChecksValues = [];
			$('.chapparamChecks').each(function () { 
				
				var crowid = parseInt($(this).data('rowid'));
				var cisChecked = $(this).prop('checked');
				
				if(cisChecked && crowid > 0){
					//param not changed, active true
					var cobj = {};
					cobj["parameter"] = $(this).val();
					cobj["parameterId"] = parseInt($(this).data("id"));
					cobj["active"] = true;
					cobj["parametersListId"] = crowid;
					chaptereparamsChecksValues.push(cobj);
				} else if(!cisChecked && crowid > 0){
					//param changed first was checked now updated and unchecked, active false
					var cobj = {};
					cobj["parameter"] = $(this).val();
					cobj["parameterId"] = parseInt($(this).data("id"));
					cobj["active"] = false;
					cobj["parametersListId"] = crowid;
					chaptereparamsChecksValues.push(cobj);
				} else if(cisChecked && crowid === 0){
					//param changed, new entry, active true
					var cobj = {};
					cobj["parameter"] = $(this).val();
					cobj["parameterId"] = parseInt($(this).data("id"));
					cobj["active"] = true;
					cobj["parametersListId"] = crowid;
					chaptereparamsChecksValues.push(cobj);
				}
				
				
			});

	 
			//competativeExamTypes
			var competativeExamTypes = [];
			for(var ce = 0;ce<5;ce++){
				var examType = $("#examcategory_"+ce).val();
				var prevyear = $("#previousyear2_"+ce).val();
				
				var rowid = parseInt($("#examcategory_"+ce).data('rowid'));
				
				if(examType === "" || examType === null || examType === undefined || prevyear === "" || prevyear === null || prevyear === undefined){
					if(rowid > 0){
						var obj = {};
						obj["examtypeId"] = examType;
						obj["years"] = prevyear;
						obj["active"] = false;
						obj["otherCompetativeExamType"] = rowid;
						competativeExamTypes.push(obj);
					} else{
						continue;
					}
					
				} else{
					
					var obj = {};
					obj["examtypeId"] = examType;
					obj["years"] = prevyear;
					obj["active"] = true;
					obj["otherCompetativeExamType"] = rowid;
					competativeExamTypes.push(obj);
				}
				
			}
			
			//previous years list
			var previuosExamTypes = [];
			for(var pce = 0;pce<5;pce++){
				var pexamType = $("#prevyears_exam_"+pce).val();
				var pprevyear = $("#prevyears_year_"+pce).val();
				
				var prowid = parseInt($("#prevyears_exam_"+pce).data('rowid'));
				
				if(pexamType === "" || pexamType === null || pexamType === undefined || pprevyear === "" || pprevyear === null || pprevyear === undefined){
					if(prowid > 0){
						var pobj = {};
						pobj["examtypeId"] = pexamType;
						pobj["years"] = pprevyear;
						pobj["active"] = false;
						pobj["otherCompetativeExamType"] = prowid;
						previuosExamTypes.push(pobj);
					} else{
						continue;
					}
					
				} else{
					
					var pobj = {};
					pobj["examtypeId"] = pexamType;
					pobj["years"] = pprevyear;
					pobj["active"] = true;
					pobj["otherCompetativeExamType"] = prowid;
					previuosExamTypes.push(pobj);
				}
				
			}
			
			
				
			
			
			
			//modules
			var modules = [];
			var flagsubModuleId = true;
			$('.mainModule').each(function () {
				
				var moduleId = $(this).val();
				var subModulePresent = parseInt($(this).data('subpresent'));
				var subModuleId = 0;
				
				var rowid = parseInt($(this).data('rowid'));
				var isChecked = $(this).prop('checked');
				
				if(isChecked && rowid > 0){
					//param not changed, active true
					
					if(subModulePresent>0){
						subModuleId = $("input[name='subModRadio_"+moduleId+"']:checked").val();
						if(subModuleId === "" || subModuleId === null || subModuleId === undefined){
							flagsubModuleId = false;
						}
					}
					
					var obj = {};
					obj["moduleId"] = moduleId;
					obj["subModuleId"] = subModuleId;
					obj["active"] = true;
					obj["moduleRequestId"] = rowid;
					modules.push(obj);
					
				} else if(!isChecked && rowid > 0){
					//param changed first was checked now updated and unchecked, active false
					
					var obj = {};
					obj["moduleId"] = moduleId;
					obj["subModuleId"] = subModuleId;
					obj["active"] = false;
					obj["moduleRequestId"] = rowid;
					modules.push(obj);
					
				} else if(isChecked && rowid === 0){
					//param changed, new entry, active true
					
					if(subModulePresent>0){
						subModuleId = $("input[name='subModRadio_"+moduleId+"']:checked").val();
						if(subModuleId === "" || subModuleId === null || subModuleId === undefined){
							flagsubModuleId = false;
						}
					}
					
					var obj = {};
					obj["moduleId"] = moduleId;
					obj["subModuleId"] = subModuleId;
					obj["active"] = true;
					obj["moduleRequestId"] = rowid;
					modules.push(obj);
				}
				
			});
			
			if(!flagsubModuleId){
				alert("Please select submodule for the selected module!");
				$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
				$("#param_back").addClass('activatelink').removeClass('disablelink');
				return false;
			}
			
			//examtypes
			var examtypes = [];
			var flaglevelId = true;
			$('.examLevelChecks').each(function () {
				
				var examtypeId = $(this).val();
				levelId = $("input[name='levelRadio_"+examtypeId+"']:checked").val();
				
				
				var rowid = parseInt($(this).data('rowid'));
				var isChecked = $(this).prop('checked');
				
				if(isChecked && rowid > 0){
					//param not changed, active true
					
					if(levelId === "" || levelId === null || levelId === undefined){
						flaglevelId = false;
					}
					
					
					var obj = {};
					obj["examtypeId"] = examtypeId;
					obj["levelId"] = levelId;
					obj["active"] = true;
					obj["examtypesId"] = rowid;
					examtypes.push(obj);
					
				} else if(!isChecked && rowid > 0){
					//param changed first was checked now updated and unchecked, active false
					
					var obj = {};
					obj["examtypeId"] = examtypeId;
					obj["levelId"] = levelId;
					obj["active"] = false;
					obj["examtypesId"] = rowid;
					examtypes.push(obj);
					
				} else if(isChecked && rowid === 0){
					//param changed, new entry, active true
					
					if(levelId === "" || levelId === null || levelId === undefined){
						flaglevelId = false;
					}
					
					var obj = {};
					obj["examtypeId"] = examtypeId;
					obj["levelId"] = levelId;
					obj["active"] = true;
					obj["examtypesId"] = rowid;
					examtypes.push(obj);
				}

			});

			if(!flaglevelId){
				alert("Please select level for the selected examtype!");
				$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
				$("#param_back").addClass('activatelink').removeClass('disablelink');
				return false;
			}
			var inputData = {
					topicId : topicId,
					difficultyLevelId : parseInt(difflive[1]),
					parametersList: paramsChecksValues,
					chapterParameterList : chaptereparamsChecksValues,
					comments : comments,
					id : id,
					previousYearsList:previuosExamTypes,
					competativeExamTypes : competativeExamTypes,
					modules:modules,
					examtypes:examtypes,
					veryimpquestion: veryimpquestion,
					step : step,
			  		updatedId:AHId,
			  		updatedBy:"ACADEMICHEAD"
			  	};
		}
	
	  		
	  	inputData = JSON.stringify(inputData);
	  	
	  	
	  	if(id !== "" && id !== null){
	  		
		  	$.ajax({
		  		 type: "POST",
		  		  dataType: "json",
		  		  contentType: 'application/json', 
		  		  url: url,
		  		cache:false,
		  		  data: inputData,
		  		  success:function(data){
		  			  if(data.status) {
		  				  //alert(data.message);
		  				  var pvid = getParameterByName('pvid');
		  				  var ref = getParameterByName('ref');
		  				$.toast({
		  		  		    text: "Step 3 Updated Successfully!", // Text that is to be shown in the toast
		  		  		    heading: 'Step 3 updated!', // Optional heading to be shown on the toast
		  		  		    icon: 'success', // Type of toast icon
		  		  		    showHideTransition: 'plain', // fade, slide or plain
		  		  		    allowToastClose: true, // Boolean value true or false
		  		  		    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  		  		    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  		  		    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  		  		    
		  		  		    
		  		  		    
		  		  		    textAlign: 'left',  // Text alignment i.e. left, right or center
		  		  		    loader: true,  // Whether to show loader or not. True by default
		  		  		    loaderBg: '#9EC600',  // Background color of the toast loader
		  		  		    beforeShow: function () {}, // will be triggered before the toast is shown
		  		  		    afterShown: function () {}, // will be triggered after the toat has been shown
		  		  		    beforeHide: function () {
		  		  		    	if(pvid !== '' && pvid !== null){
		  		  		    		window.location = base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref="+ref+"&pvid="+pvid+"&id="+id+"&layout="+layout;
		  		  		    	} else {
		  		  		    	window.location = base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref="+ref+"&id="+id+"&layout="+layout;
		  		  		    	}
		  		  		    	$("#param_back").addClass('activatelink').removeClass('disablelink');
		  		  		    	
		  		  		    }, // will be triggered before the toast gets hidden
		  		  		    afterHidden: function () {}  // will be triggered after the toast has been hidden
		  		  		});
		  				
		  				  
		  			  } else {
		  				  //alert("Error! Unable to send options!");
		  				$.toast({
		  				    text: "Step 3 Error!", // Text that is to be shown in the toast
		  				    heading: 'Error! Unable to send options!', // Optional heading to be shown on the toast
		  				    icon: 'error', // Type of toast icon
		  				    showHideTransition: 'plain', // fade, slide or plain
		  				    allowToastClose: true, // Boolean value true or false
		  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  				    
		  				    
		  				    
		  				    textAlign: 'left',  // Text alignment i.e. left, right or center
		  				    loader: true,  // Whether to show loader or not. True by default
		  				    loaderBg: '#9EC600',  // Background color of the toast loader
		  				    beforeShow: function () {}, // will be triggered before the toast is shown
		  				    afterShown: function () {
		  				    	$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
		  			  			$("#param_back").addClass('activatelink').removeClass('disablelink');
		  				    }, // will be triggered after the toat has been shown
		  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
		  				    afterHidden: function () {}  // will be triggered after the toast has been hidden
		  				});
		  				  return false;
		  			  }
		  		  
		  		  },
		  		  error:function(){
		  			//alert("Step3 updation failed!");
		  			$.toast({
	  				    text: "Step 3 Error!", // Text that is to be shown in the toast
	  				    heading: 'Step 3 updation failed!', // Optional heading to be shown on the toast
	  				    icon: 'error', // Type of toast icon
	  				    showHideTransition: 'plain', // fade, slide or plain
	  				    allowToastClose: true, // Boolean value true or false
	  				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
	  				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
	  				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
	  				    
	  				    
	  				    
	  				    textAlign: 'left',  // Text alignment i.e. left, right or center
	  				    loader: true,  // Whether to show loader or not. True by default
	  				    loaderBg: '#9EC600',  // Background color of the toast loader
	  				    beforeShow: function () {}, // will be triggered before the toast is shown
	  				    afterShown: function () {
	  				    	$("#saveBtn3").addClass('activatelink').removeClass('disablelink');
	  			  			$("#param_back").addClass('activatelink').removeClass('disablelink');
	  				    }, // will be triggered after the toat has been shown
	  				    beforeHide: function () {}, // will be triggered before the toast gets hidden
	  				    afterHidden: function () {}  // will be triggered after the toast has been hidden
	  				});
		  		  }
		  		
		  	});
		  	
	  	} else {
	  		sessionStorage.setItem("ah_editmode", false);
	  		window.history.back();
	  		$("#param_back").addClass('activatelink').removeClass('disablelink');
	  	}
	  }

	  /* END of addQuestionStep3() */
	  
	  

	  /*
	   * Add Question Step 4 DEAN Module
	   * 
	   * */

	  function addQuestionStep4(){
		  
		$("#saveBtn4").addClass('disablelink').removeClass('activatelink');
		$("#preview_back").addClass('disablelink').removeClass('activatelink');
	  	var id = getParameterByName('id');
	  	var step = 4;
	  	
	  			
	  	var ah_editmode = sessionStorage.getItem("ah_editmode");
	  	if(ah_editmode !== "true"){
			var url = base_url+'rest/question/addquestion';
			var inputData = {
			  		"id" : id,
			  		"step" : step,
			  		"updatedId":getAHId(),
			  		"updatedBy":"ACADEMICHEAD"
			  	};
		} else{					
			var url = base_url+'rest/question/updatesqbquestion';
			var inputData = {
			  		"id" : id,
			  		"step" : step,
			  		"updatedId":getAHId(),
			  		"updatedBy":"ACADEMICHEAD"
			  	};
		}
		
	  		
	  inputData = JSON.stringify(inputData);
	  
	  if(id !=="" && id !== null){
	  	$.ajax({
	  		 type: "POST",
	  		  dataType: "json",
	  		cache:false,
	  		  contentType: 'application/json', 
	  		  url: url,
	  		  data: inputData,
	  		  success:function(data){
	  			  if(data.status) {
	  				  //alert(data.message);
	  				  
	  				  /*==== Insert Delete cookie here ===*/
	  				  
	  		 			//var questionId = JSON.parse(atob(getCookie('questionId')));
	  			 		  //delete questionId;

	  				  /*==================================*/
	  				var ref = getParameterByName('ref');
	  				$.toast({
	  		  		    text: data.message, // Text that is to be shown in the toast
	  		  		    heading: data.message, // Optional heading to be shown on the toast
	  		  		    icon: 'success', // Type of toast icon
	  		  		    showHideTransition: 'plain', // fade, slide or plain
	  		  		    allowToastClose: true, // Boolean value true or false
	  		  		    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
	  		  		    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
	  		  		    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
	  		  		    
	  		  		    
	  		  		    
	  		  		    textAlign: 'left',  // Text alignment i.e. left, right or center
	  		  		    loader: true,  // Whether to show loader or not. True by default
	  		  		    loaderBg: '#9EC600',  // Background color of the toast loader
	  		  		    beforeShow: function () {}, // will be triggered before the toast is shown
	  		  		    afterShown: function () {
	  		  		    	$("#preview_back").addClass('activatelink').removeClass('disablelink');
	  		  		    }, // will be triggered after the toat has been shown
	  		  		    beforeHide: function () {
	  		  		    	
	  		  		    	sessionStorage.setItem("ah_editmode", false);
	  		  		    	
	  		  		    	window.location = base_url+"jsp/academic_head/"+refResolver(ref);
	  		  		    
	  		  		    }, // will be triggered before the toast gets hidden
	  		  		    afterHidden: function () {}  // will be triggered after the toast has been hidden
	  		  		});
	  				
	  				  
	  			  } else {
	  				  //alert("Error! Unable to send options!");
	  				  
	  				$.toast({
	  		  		    text: data.message, // Text that is to be shown in the toast
	  		  		    heading: "Step 4 updation failed!", // Optional heading to be shown on the toast
	  		  		    icon: 'success', // Type of toast icon
	  		  		    showHideTransition: 'plain', // fade, slide or plain
	  		  		    allowToastClose: true, // Boolean value true or false
	  		  		    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
	  		  		    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
	  		  		    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
	  		  		    
	  		  		    
	  		  		    
	  		  		    textAlign: 'left',  // Text alignment i.e. left, right or center
	  		  		    loader: true,  // Whether to show loader or not. True by default
	  		  		    loaderBg: '#9EC600',  // Background color of the toast loader
	  		  		    beforeShow: function () {}, // will be triggered before the toast is shown
	  		  		    afterShown: function () {
		  		  		    $("#saveBtn4").addClass('activatelink').removeClass('disablelink');
	  			  			$("#preview_back").addClass('activatelink').removeClass('disablelink');
	  		  		    }, // will be triggered after the toat has been shown
	  		  		    beforeHide: function () {

	  		  		    }, // will be triggered before the toast gets hidden
	  		  		    afterHidden: function () {}  // will be triggered after the toast has been hidden
	  		  		});
	  				  return false;
	  			  }
	  		  
	  		  },
	  		  error:function(){
	  			//alert("Step4 updation failed!");
	  			$.toast({
				    text: "Step 4 Error!", // Text that is to be shown in the toast
				    heading: 'Step4 updation failed!', // Optional heading to be shown on the toast
				    icon: 'error', // Type of toast icon
				    showHideTransition: 'plain', // fade, slide or plain
				    allowToastClose: true, // Boolean value true or false
				    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
				    stack: false, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
				    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
				    
				    
				    
				    textAlign: 'left',  // Text alignment i.e. left, right or center
				    loader: true,  // Whether to show loader or not. True by default
				    loaderBg: '#9EC600',  // Background color of the toast loader
				    beforeShow: function () {}, // will be triggered before the toast is shown
				    afterShown: function () {
				    	$("#saveBtn4").addClass('activatelink').removeClass('disablelink');
  			  			$("#preview_back").addClass('activatelink').removeClass('disablelink');
				    }, // will be triggered after the toat has been shown
				    beforeHide: function () {}, // will be triggered before the toast gets hidden
				    afterHidden: function () {}  // will be triggered after the toast has been hidden
				});
	  		  }
	  		
	  	});
	  } else {

		  sessionStorage.setItem("ah_editmode", false);
		  window.history.back();
		  $("#preview_back").addClass('activatelink').removeClass('disablelink');
	  }
	}

	  /* END of addQuestionStep4() */




$("#layout_back").click(function(){
	 var qid = getParameterByName('id');
	 var pvid = getParameterByName('pvid');
	 var ref = getParameterByName('ref');
	 if(qid!=="" && qid !== null && pvid !== "" && pvid !== null){
		 sessionStorage.setItem("ah_editmode", true);
		 window.location = base_url+"jsp/academic_head/addquestions/upload.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&bk=mxzq";
	 }else if(qid!=="" && qid !== null){
		/* window.history.back();*/
		 sessionStorage.setItem("ah_editmode", true);
		  window.location = base_url+"jsp/academic_head/addquestions/upload.jsp?ref="+ref+"&id="+qid+"&bk=wctyr";
    } else {
       	window.location = base_url+"jsp/academic_head/addquestions/upload.jsp";
    }
});

$("#param_back").click(function(){
	var qid = getParameterByName('id');
	 var pvid = getParameterByName('pvid');
	 var layout = $("#layouthd").val();
	 var ref = getParameterByName('ref');
	 if(qid!=="" && qid !== null && pvid !== "" && pvid !== null){
		 sessionStorage.setItem("ah_editmode", true);
		 window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&layout="+layout+"&bk=qdtwx";
	 }else if(qid!=="" && qid !== null){
		 /*window.history.back();*/
		 sessionStorage.setItem("ah_editmode", true);
		  window.location = base_url+"jsp/academic_head/addquestions/upload_layout.jsp?ref="+ref+"&id="+qid+"&layout="+layout+"&bk=uytcs";
    } else {
       	window.location = base_url+"jsp/academic_head/addquestions/upload.jsp";
       }
});


var referrer = document.referrer;
$("#preview_back").click(function(){
if(referrer.indexOf("database_qc.jsp") !== -1) {
	window.location = base_url+"jsp/academic_head/database_qc.jsp";
}else{
	var qid = getParameterByName('id');
	 var pvid = getParameterByName('pvid');
	 var txt = $("#preview_back").text();
	 var layout = $("#layouthd").val();
	 var ref = getParameterByName('ref');
	 if(qid !== "" && qid !== null && pvid !== "" && pvid !== null && txt === "Back"){
		 sessionStorage.setItem("ah_editmode", true);
		 window.location = base_url+"jsp/academic_head/addquestions/upload_parameters.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&layout="+layout+"&bk=rdiwcs";
	 }else if(qid !== "" && qid !== null && txt === "Back"){
		 /*window.history.back();*/
		 sessionStorage.setItem("ah_editmode", true);
		 window.location = base_url+"jsp/academic_head/addquestions/upload_parameters.jsp?ref="+ref+"&id="+qid+"&layout="+layout+"&bk=olswg";
    } else if(qid !== "" && qid !== null && txt === "Edit"){
    	sessionStorage.setItem("ah_editmode", true);
   	 window.location = base_url+"jsp/academic_head/addquestions/upload.jsp?ref="+ref+"&id="+qid;
    } else {
   	 sessionStorage.setItem("ah_editmode", false);
       window.location = base_url+"jsp/academic_head/addquestions/upload.jsp";
    }	
}
});




//Database QC> academic head Post

$('#AhQCSubmit').click(function(){
	/*var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();*/
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var topic = $('#topic').val();
	var typeofQns = $('#questionType').val();
	var parameter = $('#parameter option:selected').text();
	var chapparameter = $('#chapparameter option:selected').text();
	var AcadId = getAHId();

	 if(topic=="--- Select ---" || topic=="" || topic ==null){
		 topic=0;
	 }
	 if(typeofQns=="--- Select ---" || typeofQns=="" || typeofQns ==null){
		 typeofQns=0;
	 }
	 if(parameter=="---Select---" || parameter=="" || parameter ==null){
		 parameter="";
	 }
	 
	 if(chapparameter=="--- Select ---" || chapparameter=="" || chapparameter ==null){
		 chapparameter="";
	 }

  var inputData = '{"standardId":"'+standardname+'","subjectId":"'+subjectname+'","unitId":"'+unitname+'","chapterId":"'+chaptername+'","topicId":"'+topic+'","questionType":"'+typeofQns+'","parameters":"'+parameter+'","academichead":"'+AcadId+'","chapParameters":"'+chapparameter+'"}';

  var appenddata;
		
  $.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/academichead/getdatabaseqcbyfilter',
			  data: inputData,
			  beforeSend: function(){
					$("#AHQC_tbody").empty();
					$("#AHQC_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
				},
			  success: function(data){
				
				  
				  for(var i=0; i < data.length; i++){

					  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
					  $("#AHQC_tbody").empty();
					  $("#AHQC_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
					  }else{
		    		  appenddata += "<tr id='QC_row"+data[i].questionid+"' data-id='"+data[i].questionFormatId+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
		    		  appenddata += "<td>"+data[i].standard+"</td>";
		    		  /*appenddata += "<td>"+data[i].examtype+"</td>"; */
		    		  appenddata += "<td>"+data[i].subject+"</td>";
		    		  appenddata += "<td>"+data[i].chapter+"</td>";
		    		  appenddata += "<td>"+data[i].topic+"</td>";
		    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
		    		  appenddata += "<td>"+data[i].difficultylevel+"</td>";
		    		  if(data[i].modifieddate == null || data[i].modifieddate == ""){
		    			  var modifieddate = "";
		    		  }else{
		    			  var modifieddate = data[i].modifieddate;
		    		  }
		    		  appenddata += "<td>"+modifieddate+"</td>";
		    		  appenddata += "<td>"+data[i].comments+"</td>";
		    		  
					  appenddata += "<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
					  		"<i class='fa fa-edit font-18 mt-10'></i></a>" +
					  		"<a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sme_item"+data[i].photo+"' data-id='"+data[i].photo+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
					  }
		    	}
		    	 $("#AHQC_tbody").empty();
		    	 $('#AHQC_tbl').DataTable().clear().destroy();
				  $("#AHQC_tbody").append(appenddata);
				  $("#AHQC_tbl").DataTable();
				  
			  },
			  error: function(data) {		
				  $("#AHQC_tbody").empty();
				  alert(data.responseJSON.errorMessage);

			  }
			  
		});
});






//Database QC> academic head Post

function GetAHQCstatus(){
	var appenddata;
	$.ajax({
		 type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/academichead/getdatabaseqc/'+getAHId(),
		  beforeSend: function(){
				$("#AHQC_tbody").empty();
				$("#AHQC_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  for(var i=0; i < data.length; i++){

				  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
				  $("#AHQC_tbody").empty();
				  $("#AHQC_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
				  }else{
				  appenddata += "<tr id='QC_row"+data[i].questionid+"' data-id='"+data[i].questionFormatId+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
				  appenddata += "<td>"+data[i].standard+"</td>";
				  /*appenddata += "<td>"+data[i].examtype+"</td>"; */
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
	    		  appenddata += "<td>"+data[i].difficultylevel+"</td>";
	    		  if(data[i].modifieddate == null || data[i].modifieddate == ""){
	    			  var modifieddate = "";
	    		  }
	    		  else{
	    			  var modifieddate = data[i].modifieddate;
	    		  }
	    		  appenddata += "<td>"+modifieddate+"</td>";
	    		  appenddata += "<td>"+data[i].comments+"</td>";
	    		  appenddata +="<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='Ah_QC"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				    }
				  }
				  $("#AHQC_tbody").empty();
				  $('#AHQC_tbl').DataTable().clear().destroy();
				  $("#AHQC_tbody").append(appenddata);
				  $('#AHQC_tbl').DataTable();
			  
		  },
		  error:function(){
			  alert(data.responseJSON.errorMessage);
		  }
		
	});
}
//Database QC> academic head GET


//Database QC Delete

$(document).on("click", "a[id^=Ah_QC]", function() {
	var id = $(this).attr('data-id');
	var tr_id = $("tr[id^=QC_row]").attr('data-id');
	var acdId = getAHId();
	//var status=false;
	var  createdby= $("#createdby").val();

	var con = confirm("Are you Sure to delete?");

	  if(con == true){
		 
			  
		/*	var categdelete =  {
				    "Id":id,
				    "createdBy":"Admin",
				    "status":false
				};
			var deletecategory = JSON.stringify(categdelete);*/
			//	var deletecategory =	  {"Id":"3","createdBy":"Admin","status":false}
			  
			  
			  
			// var deletecategory = '{"status":'+status+',"Id":'+id+',"updatedBy":"'+createdby+'"}';

		$.ajax({
	  type: "GET",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/question/deletesqbquestion/'+id+'/'+acdId+'/'+"academichead", 
	  success: function(data){	  
		  if(data.status){
		 		alert(data.message);
		 		$("#QC_row"+tr_id).remove();
		 		location.reload();
		  }
		  },
	    
	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  
		  }
	  }
);
		  
//Database QC Delete




//copy to other exam type filters by saikrishna


function copytootherexampost(){

	
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	
	var standards = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic = $("#topic").val();
	var typeofquestions = $("#questionType").val();
	var  createdby= "Sai Krishna";
	var academicheadid  = getAHId();
	
	 if(topic=="--- Select ---" || topic=="" || topic ==null){
		 topic="";
	 }
	 if(typeofquestions=="--- Select ---" || typeofquestions=="" || typeofquestions ==null){
		 typeofquestions="";
	 }
	var inputData = {
	      
	        "categoryId":category,
			 "examtypeId":examtype,
			 "standardId":standards,
			 "subjectId":subject,
			 "unitId":unit,
	          "chapterId":chapter,
	          "topicId":topic,
	          "questionTypeId":typeofquestions,
	          "academicheadId":academicheadid
       };
inputData = JSON.stringify(inputData);
var  appenddata;
$.ajax({
		url:  base_url+'rest/academichead/v1/getcopytootherexamsbyfilter',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
	    		  appenddata += "<tr ><td>"+data[i].qid+"</td>";
	    		  appenddata += "<td>"+data[i].examtype+"</td>"; 
	    		  appenddata += "<td>"+data[i].standard+"</td>";
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
	    		  appenddata += "<td>"+data[i].difficultylevel+"</td>";
	    		  appenddata += "<td>"+data[i].presentinexamtype+"</td>";
	    		  appenddata += "<td>"+data[i].modifieddate+"</td>";
	    		
				 
	    		  appenddata +="<td><a href='"+base_url+"jsp/academic_head/addquestions/upload_preview.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].qid+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
				   
				  appenddata += "<td><a href='"+base_url+"jsp/academic_head/addquestions/upload.jsp?ref=mtb&pvid="+data[i].qid+"' class='btn btn-primary btn-xs'>Go</a></td>";
	    	}
	    	  
	    	  $("#acacopyexam-body").empty();
	    	  $('#acacopyexamdatable_1').DataTable().clear().destroy();
			  $("#acacopyexam-body").append(appenddata);
			  $("#acacopyexamdatable_1").DataTable();
			
		  },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		  
		  });
}



//Academic head get all status
function AcademicPerformancequesCount(){
	var adappend;
	var academ = {
	       "academicheadid":getAHId()
		}

		var academqys = JSON.stringify(academ);
 $.ajax({
	   type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/academichead/performance',
		  data: academqys,

		  success: function(data){
			  for(var i=0;i<data.length;i++){
				  adappend += "<tr><td>"+(i+1)+"</td><td>"+data[i].smename+"</td>";    
				  adappend += "<td>"+data[i].idtype+"</td>"; 
				  adappend += "<td>"+data[i].pending+"</td>";
				  adappend += "<td>"+data[i].rejected+"</td>";
				  adappend += "<td>"+data[i].approved+"</td></tr>";
			  }
			  $("#smeperformance_tbody").empty();
			  $('#smeperformance_tbl').DataTable().clear().destroy();
			  $("#smeperformance_tbody").append(adappend);
			  $("#smeperformance_tbl").DataTable();
		  
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
			 // alert(data.);

			  
		  }
 })
}




//Academic head get Filter

function AcademicPerformancequesCountFilter(){
	var adappend="";
	var desg = $("#desg").val();
	var fromdate = $("#fromdate").val();
	var todate = $("#todate").val();

	/*if(examtypename =="--- Select ---" || examtypename==null || examtypename=="Nothing selected")
	{
	   examtypename="";
	}*/
	 if(desg == "" || desg =="--- Select ---")
	{
	
			 alert("Please select designation ");
		butnvrble = false;
     	return false;
	}
	 

	 if(fromdate == "")
	{
	
			 alert("Please Enter From Date ");
		butnvrble = false;
     	return false;
	}
	 

	 if(todate == "")
	{
	
			 alert("Please Enter To Date ");
		butnvrble = false;
     	return false;
	}
	 else{
		 
		 var academ = {
			        "desigation":desg,
					"fromdate":fromdate,
					"todate":todate,
					"academicheadid":getAHId()
				}

				var academqys = JSON.stringify(academ);
		 $.ajax({
			   type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url + 'rest/academichead/performancebydate',
				  data: academqys,

				  success: function(data){
					  for(var i=0;i<data.length;i++){
						  adappend += "<tr><td>"+(i+1)+"</td><td>"+data[i].smename+"</td>";    
						  adappend += "<td>"+data[i].idtype+"</td>"; 
						  adappend += "<td>"+data[i].pending+"</td>";
						  adappend += "<td>"+data[i].rejected+"</td>";
						  adappend += "<td>"+data[i].approved+"</td></tr>";
					  }
					  $("#smeperformance_tbody").empty();
					  $('#smeperformance_tbl').DataTable().clear().destroy();
					  $("#smeperformance_tbody").append(adappend);
					  $("#smeperformance_tbl").DataTable();
					 // $("#smeperformance_tbl_info").show();

					  //$("#smeperformance_tbl_paginate").show();
				  
				  },
				  error:function(data){
					  alert("Error in Academic Perormance Count Getting Data");
					 // alert(data.);
					 /* $("#smeperformance_tbody").empty();
					  $('#smeperformance_tbl').DataTable().clear().destroy();
					  $("#smeperformance_tbody").append(adappend);
					  $("#smeperformance_tbl").DataTable();
					  $("#smeperformance_tbl_info").hide();

					  $("#smeperformance_tbl_paginate").hide();*/
					  
				  }
		 })
	 }
	 
	
}


//databasecount_academic get method 


function databasecount_academic(){
	
	var appenddata;
	
	$.ajax({
		url: base_url +'rest/academichead/getdatabasecount/'+getAHId(),
		type:"GET",
		dataType:"JSON",
		contentType: 'application/json',
		beforeSend: function(){
			$("#acdatabcou_tbody").empty();
			$("#acdatabcou_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				if(data[i].length === 0 || data[i] === undefined || data[i] === null){
					$("#acdatabcou_tbody").empty();
					$("#acdatabcou_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
				}else{
				appenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].totalcount+"</td>";											
				appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_parameterwise_count.jsp?id="+data[i].subjectId+"&c="+data[i].totalcount+"' class='btn btn-primary'>View</a></td>";
				appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_count_chapterwise.jsp?id="+data[i].subjectId+"' class='btn btn-info'>View</a></td></tr>";
				}
			}
			$("#acdatabcou_tbody").empty();
			 $('#acdatabcou_tbl').DataTable().clear().destroy();
			$("#acdatabcou_tbody").append(appenddata);
			$("#acdatabcou_tbl").DataTable();
		},
		error : function(){
			 alert(data.responseJSON.errorMessage);
		}
	});
	
	
}


//databasecount_academic get method 

//For getting Difficulty levels in academic head databasecount

function getSelectedDifficultLevels(val){
	var appenddata;
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	
	var difficultlevel =  {
		"categoryId":category,
		"examtypeId":examtype,
		"standardId":standard
		}
 var difficultlevelstr = JSON.stringify(difficultlevel);
	
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/question/v1/getdifficultylevels',
		  data: difficultlevelstr,
		  success:function(data){
		      for(var i=0; i < data.length; i++){
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].name+'</option>';
				}
			$("#difficultlevel").prop("disabled", false);
	       jQuery("#difficultlevel").empty("");
			jQuery("#difficultlevel").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#difficultlevel").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
	})
	
}

//For getting Difficulty levels in academic head databasecount

//getting database count by filters

function acdatabasecount(){
	var appenddata="";
	/*var category = $("#category").val();
	var examtype = $("#examtype").val();*/
	var standard = $("#standard").val();
	var difficultlevel = $("#difficultlevel").val();
	
	

	 if(difficultlevel=="--- Select ---" || difficultlevel=="" || difficultlevel ==null){
		 difficultlevel="";
	 }
	
	var acadatabasecou = {
			/*"categoryId":category,
			"examtypeId":examtype,*/
			"standardId":standard,
			"difficulty":difficultlevel,
			"academicheadid":getAHId()
			};
var acadatabasecoustr = JSON.stringify(acadatabasecou);

$.ajax({
	  type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url + 'rest/academichead/v1/databasecountfilter',
	  data: acadatabasecoustr,
	  beforeSend: function(){
	  				$("#acdatabcou_tbody").empty();
	  				$("#acdatabcou_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	  			},
	  success:function(data){
		  for(var i=0;i<data.length;i++){
			  if(data[i].length === 0 || data[i] === undefined || data[i] === null){
				  $("#acdatabcou_tbody").empty();
				  $("#acdatabcou_tbody").append('<tr><td class="text-center" colspan="10">No Data Found :)</td></tr>');
				  }else{
			  appenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].subject+"</td>";
			  appenddata += "<td>"+data[i].totalcount+"</td>";											
			  appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_parameterwise_count_filter.jsp?id="+data[i].subjectId+"&c="+data[i].totalcount+"&std="+standard+"&level="+difficultlevel+"' class='btn btn-primary'>View</a></td>";
			  appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_count_chapterwise_filter.jsp?id="+data[i].subjectId+"&std="+standard+"&level="+difficultlevel+"' class='btn btn-info'>View</a></td></tr>";
				  }
			  
		  }
		  $("#acdatabcou_tbody").empty();
		  $('#acdatabcou_tbl').DataTable().clear().destroy();
		  $("#acdatabcou_tbody").append(appenddata);
		  $("#acdatabcou_tbl").DataTable();
		  
		  $('.selectpicker').selectpicker('refresh');
	  },
	  error:function(data){
	  $("#acdatabcou_tbody").empty();
		  alert(data.responseJSON.errorMessage);
		 }
	  });
}

//getting database count by filters

//academichead viewdean passwordchange

	
$("#changepassword").click(function(){
	
	var referrer = document.referrer;
	
	if(referrer.indexOf("dean.jsp") !== -1){
		
		var appenddata;
		 var current = $("#currentpassword").val();
		 var newpass = $("#newpassword").val();
		 var repass = $("#repassword").val();
		 var deanId = getParameterByName('id');
		 var status = false;
		 
		 var  changpas = {
				 "usertype":"dean",
				 "deanid": deanId,
				 "currentpwd":current,
				 "newpwd":newpass
				 
		};
		 
		
		var changepassword = JSON.stringify(changpas);
		if(current=="" && newpass=="" && repass==""){
		alert("Password Field cannot be Blank !!!!");
		return status;
		} else if(newpass != repass){
		alert("New Password do not match with Confirm Password");
		return status;
		} else{
			
			$.ajax({
			url:  base_url+'rest/academichead/v1/changepwd',
			type:"POST",
			 dataType: "json",
			  contentType: 'application/json',
			  data:changepassword,
		      success: function(data){
		    	  alert(data.message);
		    	  window.location = base_url+"jsp/academic_head/views/dean.jsp";
				
		      },
		      error:function(data){
		    	  alert(data.responseJSON.errorMessage);
		      }
			
		});
		}
		
		
	} else if(referrer.indexOf("sme.jsp") !== -1){
		
		 var appenddata;
		 var current = $("#currentpassword").val();
		 var newpass = $("#newpassword").val();
		 var repass = $("#repassword").val();
		 var smeId = getParameterByName('id');
		 var status = false;
		 
		 var  changpas = {
				 "usertype":"sme",
				 "smeid": smeId,
				 "currentpwd":current,
				 "newpwd":newpass
				 
		};
		
		var changepassword = JSON.stringify(changpas);
		if(current=="" && newpass=="" && repass==""){
		alert("Password Field cannot be Blank !!!!");
		return status;
		} else if(newpass != repass){
		alert("New Password do not match with Confirm Password");
		return status;
		} else{
			
			$.ajax({
			url:  base_url+'rest/academichead/v1/changepwd',
			type:"POST",
			 dataType: "json",
			  contentType: 'application/json',
			  data:changepassword,
		      success: function(data){
		    	  alert(data.message);
		    	  window.location = base_url+"jsp/academic_head/views/sme.jsp";
				
		      },
		      error:function(data){
		    	  alert(data.responseJSON.errorMessage);
		      }
			
		});
		}
		
		
	}
	 
});

	
	var accodeanid = "";
//academichead viewdean passwordchange
function deanpass(elem){
	
	accodeanid = $(elem).attr("data-id");
	
	$("#deanaccapass").modal("show");
}



$(document).on("click", "#deansubmitpass", function() {
	
	var accpassvalue = $("#accdeanpassvalue").val();
	
if(accpassvalue == "" || accpassvalue == null){
		
		alert("Please enter academichead password");
		$("#deanclose").click();
	   return false;
	}else{
		
		var password = sessionStorage.getItem("accademicpass");
		if(password == accpassvalue){
   	var id = $(this).attr('data-id');
   	var LoginData = getLoginData();
   	var academicid = LoginData.academicheadid;
   	
   	var con = confirm("Are you Sure to delete?");
  var inputData = {
		  "usertype":"dean",
		  "deanid":accodeanid,
		  "academicheadId":academicid,
		  "password":accpassvalue,
		  "status":false
  };
  inputData = JSON.stringify(inputData);
		}else{
			alert("Please enter academichead password correctly");
			 return false;
		}
	  if(con == true){
	 	var pon = confirm("Really are you Sure?");
	 	if(pon == true){

	   		$.ajax({
		   	  type: "POST",
		  	  contentType: 'application/json', 
		  	  url: base_url+'rest/academichead/v1/delete',
		  	  data: inputData,
		  	  success: function(data){	  
		  		  if(data.status){
			   		alert(data.message);
			   		location.reload();
			   		$("#dean_delete"+id).remove();
		  		  }
		  	  },
		  	  error: function(data){
		  		  alert(data.responseJSON.errorMessage);
			  }
		
   });
	  }
}
	}
	  
	});




var accosmeid = "";
//delete for academic_head sme.jsp

function passwenter(elem){
	
	accosmeid = $(elem).attr("data-id");
	
	$("#accapass").modal("show");
}

$(document).on("click", "#submitpass", function() {

	var accpassvalue = $("#accpassvalue").val();
	
	if(accpassvalue == "" || accpassvalue == null){
		
		alert("Please enter academichead password");
		$("#smeclose").click();
		 return false;
	  
	}else{
	
		var password = sessionStorage.getItem("accademicpass");
		
		if(password == accpassvalue){
		
   	var id = $(this).attr('data-id');
   	
   	var LoginData = getLoginData();
   	
   	var academicid = LoginData.academicheadid;
   	
   	var con = confirm("Are you Sure to delete?");
  var inputData = {
		  "usertype":"sme",
		  "smeid":accosmeid,
		  "academicheadId":academicid,
		  "password":accpassvalue,
		  "status":false
  };
  inputData = JSON.stringify(inputData);
		}else{
			alert("Please enter academichead password correctly");
			 return false;
		}
  if(con == true){
 	var pon = confirm("Really are you Sure?");
 	if(pon == true){
 		$.ajax({
		   	  type: "POST",
		  	  contentType: 'application/json', 
		  	  url: base_url+'rest/academichead/v1/delete',
		  	  data: inputData,
		  	 success: function(data){	  
		  		  if(data.status){
			   		alert(data.message);
			   		location.reload();
			   		$("#dean_delete"+id).remove();
		  		  }
		  	  },
		  	  error: function(data){
		  		  alert(data.responseJSON.errorMessage);
			  }
		
  });
	  }
  }
  
	}
});

function getmainparamfilter(){
	var appenddata="";
	$.ajax({
	type: "GET",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/admin/sqb/getAllMainAndChapParameters',
	success:function(data){
	
			for(var i=0; i < data.length; i++){
				appenddata += "<option value="+data[i].paramIds+"   >"+data[i].paramterName+"</option>"
			}
			

			  jQuery("#Paramsexsf").empty("");
			  jQuery("#Paramsexsf").append('<option value="">--- Select ---</option>');
			  jQuery("#Paramsexsf").append(appenddata);
			  			  
			  $('.selectpicker').selectpicker('refresh');
			
			},
	error:function(data){
		alert(data.responseJSON.errorMessage);		  
	}

});
}




function filterbyparams(){
	var appenddata="";


	   var sub = getParameterByName('id');
	   var paraname = $('#Paramsexsf').find(":selected").text();
	   
	 inputData = {
			 "subjectId":sub,
			 "parameter": paraname
			 }
	var inputdata = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		url:base_url+'rest/admin/getMainAndChapterParams',
		data:inputdata,
		beforeSend: function() {
			$("#db_param_wise_body").empty();
			$("#db_param_wise_body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr><td>"+data[i].chapter+"</td>";  
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].parametercount+"</td>";
				

			}

			$("#db_param_wise_body").empty();
			 $('#db_param_wise_count').DataTable().clear().destroy();
			$("#db_param_wise_body").append(appenddata);
				$("#db_param_wise_count").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})	
}


function dbparameterwiseCount(){
	
	var appenddata="";
	var AcadId = getAHId();
	var subjectId=getParameterByName('id');

	  var inputData = '{"academicheadId":'+AcadId+',"subjectId":"'+subjectId+'"}';

	$.ajax({
		url: base_url +'rest/academichead/v1/getparameterwisecount',
		type:"POST",
		dataType:"JSON",
		contentType: 'application/json',
		 data: inputData,
		 beforeSend: function() {
				$("#db_param_wise_body").empty();
				$("#db_param_wise_body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		success:function(data){
			for(var i=0; i<data.length; i++){
				
				appenddata += "<tr><td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].parametercount+"</td></tr>";

			/*	appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_parameterwise_count.jsp?id="+data[i].subject+"' class='btn btn-primary'>View</a></td>";
				appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_count_chapterwise.jsp?id="+data[i].subject+"' class='btn btn-info'>View</a></td></tr>";
			*/	
			}
			$("#db_param_wise_body").empty();
			 $('#db_param_wise_count').DataTable().clear().destroy();
			$("#db_param_wise_body").append(appenddata);
				$("#db_param_wise_count").DataTable();

		},
		error : function(data){
			 alert(data.responseJSON.errorMessage);
		}
	});
	
	
}


function dbparameterwiseCountfilter(){
	
	var appenddata="";
	var AcadId = getAHId();
	var subjectId=getParameterByName('id');
    var standardid =getParameterByName('std');
    var levelId =getParameterByName('level');
	  var inputData = '{"academicheadId":'+AcadId+',"subjectId":"'+subjectId+'" ,"standardId":"'+standardid+'" , "difficultylevelId":"'+levelId+'"}';

	$.ajax({
		url: base_url +'rest/academichead/v1/getparameterwisecountFilter',
		type:"POST",
		dataType:"JSON",
		contentType: 'application/json',
		 data: inputData,
		success:function(data){
			for(var i=0; i<data.length; i++){
				
				appenddata += "<tr><td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].parametercount+"</td></tr>";

			/*	appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_parameterwise_count.jsp?id="+data[i].subject+"' class='btn btn-primary'>View</a></td>";
				appenddata += "<td><a href='"+base_url+"jsp/academic_head/database_count_chapterwise.jsp?id="+data[i].subject+"' class='btn btn-info'>View</a></td></tr>";
			*/	
			}
			$("#db_param_wise_body").empty();
			 $('#db_param_wise_count').DataTable().clear().destroy();
			$("#db_param_wise_body").append(appenddata);
			   var total_count=getParameterByName('c');
				$("#total_count").text("Subject Total = "+total_count);
				$("#db_param_wise_count").DataTable();

		},
		error : function(data){
			 alert(data.responseJSON.errorMessage);
		}
	});
	
	
}


function getPassword(){
	
	var referrer = document.referrer;
	if(referrer.indexOf("dean.jsp") !== -1){
	var id = getParameterByName('id');
	
	
	$.ajax({
		url: base_url+'rest/academichead/v1/getdeanpwd/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
	$("#currentpassword").val(data[0].password);
},
error:function(data){
	alert("Data not found");
}
	});
	}
	
	 else if(referrer.indexOf("sme.jsp") !== -1){	
		 
			var id = getParameterByName('id');
			
			
			$.ajax({
				url: base_url+'rest/academichead/v1/getsmepwd/'+id,
				type:"GET",
				dataType:"json",
				contentType:'application/json',
				success:function(data){
					
			$("#currentpassword").val(data[0].password);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
			});
			
	 }
}

function previewBack(){
	var reffer = document.referrer;
	if(reffer.indexOf("dean.jsp") != -1){
	
	window.location = base_url+"jsp/academic_head/views/dean.jsp";
	}
	
	else if(reffer.indexOf("sme.jsp") != -1){
	window.location = base_url+"/jsp/academic_head/views/sme.jsp";
}
}


function getSelectedTopic(val){

	var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = val;
    var inputData = '{"categoryId":"'+cattypename+'","examtypeId":"'+examtypename+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","unitId":"'+unitname+'","chapterId":"'+chaptername+'"}';
    

	var appenddata;
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/gettopics',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
					var topics = data[i].id;
					appenddata += '<option value="'+topics+'">'
							+data[i].name+'</option>';
			  }
			  
			  jQuery("#topic").empty("");
			  jQuery("#topic").append('<option value="">--- Select ---</option>');
			  jQuery("#topic").append(appenddata);
			  
			  $("#topic").prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}
function getAllParameters(){
  	

  	var appenddata;
  	$.ajax({
  		type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/academichead/v1/getparameters/'+getAHId(),
  		  cache:false,
  		  success: function(data){
  	       for(var i=0; i < data.length; i++){
  			 
  	    		
  					var layoutname = data[i];
  					//var zoneidis = data.zones[i].id;
  					appenddata += '<option value="'+layoutname+'">'+layoutname+'</option>';
  				}
  	      // jQuery("#layoutnumber").empty("");
  			//jQuery("#layoutnumber").append('<option value="--- Select ---">--- Select ---</option>');
  			//jQuery("#layoutnumber").append(appenddata);
  		  jQuery("#parameters").empty("");
			jQuery("#parameters").append('<option value="">--- Select ---</option>');
			jQuery("#parameters").append(appenddata);
  			//$("#layoutnumber").prop("disabled", false);
  			$("#parameters").prop("disabled", false);
  			$('.selectpicker').selectpicker('refresh');
  			
  		  },
  		  error: function(data) {		

  			 alert(data.responseJSON.errorMessage);

  		  }
  	      	
  	});
  }


function getallstandardssqb(val){
	
	var deanid = val;
	var appenddata = "";
	var stanreq = {
		"deanid":deanid
	}
	
	var stanstr = JSON.stringify(stanreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeanstandards',
		  data: stanstr,
          success:function(data){
        	  for(var i=0; i < data.length; i++){
        		  var stanid = data[i].id;
        		  var staname = data[i].name;
        		  appenddata += '<option value="'+stanid+'">'+staname+'</option>';
        	  }

        	  $("#standard").empty("");
			  $("#standard").append('<option value="">--- Select ---</option>');
			  $("#standard").append(appenddata);
			  $('.selectpicker').selectpicker('refresh');
          },
          error:function(data){
        	  alert(data.responseJSON.errorMessage);
          }
	})
}

function getallsubjectssqb(val){
	
	var deanid = $("#dean").val();
	var stanid = val;
	var appenddata = "";
	var subjreq = {
			"deanid":deanid,
			"standardId":stanid
			}
	
	var subjstr = JSON.stringify(subjreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeansubjects',
		  data: subjstr,
          success:function(data){
        	  for(var i=0; i < data.length; i++){
        		  var subjid = data[i].id;
        		  var subjname = data[i].name;
        		  appenddata += '<option value="'+subjid+'">'+subjname+'</option>';
        	  }

        	  $("#subject").empty("");
			  $("#subject").append('<option value="">--- Select ---</option>');
			  $("#subject").append(appenddata);
			  $('.selectpicker').selectpicker('refresh');
          },
          error:function(data){
        	  alert(data.responseJSON.errorMessage);
          }
	})
}


function getallunitssqb(val){
	
	var deanid = $("#dean").val();
	var stanid = $("#standard").val();
	var subjid = val;
	var appenddata = "";
	var unitreq = {
			"deanid":deanid,
			"standardId":stanid,
			"subjectId":subjid
			}
	
	var unitstr = JSON.stringify(unitreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeanunits',
		  data: unitstr,
          success:function(data){
        	  for(var i=0; i < data.length; i++){
        		  var unitid = data[i].id;
        		  var unitname = data[i].name;
        		  appenddata += '<option value="'+unitid+'">'+unitname+'</option>';
        	  }

        	  $("#unit").empty("");
			  $("#unit").append('<option value="">--- Select ---</option>');
			  $("#unit").append(appenddata);
			  $('.selectpicker').selectpicker('refresh');
          },
          error:function(data){
        	  alert(data.responseJSON.errorMessage);
          }
	})
}


function getallchapterssqb(val){
	
	var deanid = $("#dean").val();
	var stanid = $("#standard").val();
	var subjid = $("#subject").val();
	var unitid = val;
	var appenddata = "";
	var chapreq = {
			"deanid":deanid,
			"standardId":stanid,
			"subjectId":subjid,
			"unitId":unitid
			}
	
	var chapstr = JSON.stringify(chapreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeanchapters',
		  data: chapstr,
          success:function(data){
        	  for(var i=0; i < data.length; i++){
        		  var chapid = data[i].id;
        		  var chapname = data[i].name;
        		  appenddata += '<option value="'+chapid+'">'+chapname+'</option>';
        	  }

        	  $("#chapter").empty("");
			  $("#chapter").append('<option value="">--- Select ---</option>');
			  $("#chapter").append(appenddata);
			  $('.selectpicker').selectpicker('refresh');

          },
          error:function(data){
        	  alert(data.responseJSON.errorMessage);
          }
	})
}



function postloginsme(){
	var deadid = $("#dean").val();
	var stanid = $("#standard").val();
	var subjid =  $("#subject").val();
	var unitid = $("#unit").val();
	var chapid = $("#chapter").val();
	var smeid = $("#sme").val();
	
	var linksme = {"deanid":deadid, "standardId":stanid,"subjectId":subjid,"unitId":unitid,"chapterId":chapid,"createdBy":"academic_head","smeid":smeid}
	
	var linksmestr = JSON.stringify(linksme);
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/academichead/v1/linktosme',
		  data: linksmestr,
          success:function(data){
        	 if(data.status){
        	  alert(data.message);
        	  window.location = base_url+"jsp/academic_head/user_login_link/login_link_sme.jsp";
             }
          },
          error:function(data){
        	  alert(data.responseJSON.errorMessage);
          }
	})
}

function loginlinkbyid(type){
	if(type == "sme"){
		var id = $("#sme").val();
		var url = 'rest/academichead/v1/getloginlinkdetails/sme/'+id;
		var smeloginbody = "smeloginbody";
		var smelogindatable = "smelogindatable_1";
	}else if(type == "dean"){
		var id = $("#dean").val();
		var url = 'rest/academichead/v1/getloginlinkdetails/dean/'+id;
		var smeloginbody = "deanloginbody";
		var smelogindatable = "deanlogindatable_1";
	}
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url +url,
		  beforeSend: function(){
			 if(type == "sme"){
				  $("#" + smeloginbody).empty();
				$("#" + smeloginbody).html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			  }else{
				 $("#" + smeloginbody).empty();
				$("#" + smeloginbody).html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>'); 
			  }
				
			},
		  success: function(data){
			  $("#loading").hide();
			   if(type == "sme"){
				for(var i=0; i < data.length; i++){
				  appenddata += "<tr id='sme_row"+data[i].sme+"'><td>"+data[i].sme+"</td>";    
			  if(data[i].photo =="" || data[i].photo == null){
				  appenddata += "<td "+data[i].id+"><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
			  }
			  else{

				  appenddata += "<td "+data[i].id+"><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";   
			  }
			  appenddata += "<td>"+data[i].dean+"</td>";
/*			  appenddata += "<td>"+data[i].superdean+"</td>";*/
			  appenddata += "<td>"+data[i].standard+"</td>";
			  appenddata += "<td>"+data[i].subject+"</td>";
		       appenddata += "<td>"+data[i].unit+"</td>";
			  appenddata += "<td>"+data[i].chapter+"</td>";
			  
			  if(data[i].status == false){
				  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' id='thumbs_item"+data[i].id+"' data-toggle='tooltip' onclick='thumbs(this)' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  }
			  else if(data[i].status == true){
				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' id='thumbs_item"+data[i].id+"' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-toggle='tooltip' onclick='thumbs(this)' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			 
			  
		  }   
			   }else{
				   for(var i=0; i < data.length; i++){
				
			  appenddata += "<tr id='dean_row"+data[i].dean+"'><td>"+data[i].dean+"</td>";    
			
			  if(data[i].photo !=="" || data[i].photo !== null){
				  appenddata += "<td "+data[i].id+"><img src="+data[i].photo+"  width='50px' style='border-radius:25px;height:50px'></td>";   

				}
				else{
					appenddata += "<td "+data[i].id+"><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";

				}
			
				appenddata += "<td>"+data[i].standard+"</td>"; 
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>"; 

				if(data[i].status == false){
					appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' id='thumbsdean_item"+data[i].id+"' data-toggle='tooltip' onclick='thumbsdean(this)' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				}
				else if(data[i].status == true){
					appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' id='thumbsdean_item"+data[i].id+"' data-id='"+data[i].id+ "' data-status='"+data[i].status+"' data-toggle='tooltip' onclick='thumbsdean(this)' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				}


			}
			   }
			  
			$("#" + smeloginbody).empty();
			$("#" + smelogindatable).DataTable().clear().destroy();
			$("#" + smeloginbody).append(appenddata);
			$("#" + smelogindatable).DataTable();
		},
		error: function(data) {		

			alert(data.responseJSON.errorMessage);

		}


	});
	
}
