function adminUserCreation(){
	var firstName = $("#firstname").val();
	var lastName = $("#lastname").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var gender = $("#gender").val();
	var designation = $("#designation").val();
	var pin =$("#pin").val();
	var repin = $("#repin").val();
	var password = $("#password").val();
	var repassword = $("#repassword").val();
	
	var inputData = {
			firstname = firstName,
			lastname = lastName,
			mobile = mobile,
			email = email,
			gender = gender,
			designation = designation,
			pin = pin,
			password = password
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'',
		type:"POST",
		data:outputData,
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			alert(data.message);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
	
}

function adminUserList(){
	var appendata="";
	$.ajax({
		url:base_url+'',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr id='admindel'><td>"+data[i].firstname+"</td>";	
				appenddata += "<td>"+data[i].lastname+"</td>";
				appenddata += "<td>"+data[i].mobile+"</td>";
				appenddata += "<td>"+data[i].email+"</td>";
				appenddata += "<td>"+data[i].gender+"</td>";
				appenddata += "<td>"+data[i].pin+"</td>";
				appenddata += "<td>"+data[i].designation+"</td>";
				appenddata += '<td><a data-toggle="modal" data-target="#myModal" onclick="adminPreview();" class="model_img img-responsive" data-original-title="Preview"><i class="fa fa-search-plus text-success font-24"></i></a></td>';
				appenddata += '<td><a href="<%= AppConstants.BASE_URL %>superadmin/users_list/admin_edit_users.jsp" onclick = "adminEdit();" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-primary font-24"></i></a></td>'+
				'<a id="del-admin'+data[i].id+'" data-id='+data[i].id+' class="mr-10" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>;
					
				}
			$("#adminUserBody").empty();
			$("#adminUserBody").append(appenddata);
			$("#adminUserTable").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}



function academicHeadUserList(){
	var appendata="";
	$.ajax({
		url:base_url+'',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr id='acheaddel'><td>"+data[i].firstname+"</td>";	
				appenddata += "<td>"+data[i].lastname+"</td>";
				appenddata += "<td>"+data[i].mobile+"</td>";
				appenddata += "<td>"+data[i].email+"</td>";
				appenddata += "<td>"+data[i].gender+"</td>";
				appenddata += "<td>"+data[i].pin+"</td>";
				appenddata += "<td>"+data[i].designation+"</td>";
				appenddata += '<td><a data-toggle="modal" data-target="#myModal" onclick="acheadPreview();" class="model_img img-responsive" data-original-title="Preview"><i class="fa fa-search-plus text-success font-24"></i></a></td>';
				appenddata += '<td><a href="<%= AppConstants.BASE_URL %>superadmin/users_list/admin_edit_users.jsp" onclick = "acheadEdit();" class="mr-10" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil text-primary font-24"></i></a></td>'+
				'<a id="del-achead'+data[i].id+'" data-id='+data[i].id+' class="mr-10" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash text-danger font-24"></i></a>;
					
				}
			$("#academicHeadUserBody").empty();
			$("#academicHeadUserBody").append(appenddata);
			$("#academicHeadUserTable").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//admin user det
$(document).on("click", "a[id^=del-admin]", function(){
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to delete?");
	if(con == true);
	$.ajax({
			 url: base_url+''+id,
			 type: "GET",
			 dataType: "json",
			 contentType: 'application/json', 
			 success:function(data){
				 if(data.status){
					 alert(data.message);
					 $("#admindel"+id).remove();
				 }
			 },
			 error:function(data){
				 alert(data.responseJSON.errorMessage);
			 }
			 
	})
})
//admin user det


//academichead user det
$(document).on("click", "a[id^=del-achead]", function(){
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to delete?");
	if(con == true);
	$.ajax({
			 url: base_url+''+id,
			 type: "GET",
			 dataType: "json",
			 contentType: 'application/json', 
			 success:function(data){
				 if(data.status){
					 alert(data.message);
					 $("#admindel"+id).remove();
				 }
			 },
			 error:function(data){
				 alert(data.responseJSON.errorMessage);
			 }
			 
	})
})
//academichead user det

//admin edit
function adminEdit(){
	var firstName = $("#firstname").val();
	var lastName = $("#lastname").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var gender = $("#gender").val();
	var designation = $("#designation").val();
	var pin =$("#pin").val();
	var repin = $("#repin").val();
	var password = $("#password").val();
	var repassword = $("#repassword").val();
	var adminid =getParameterByName('id');
	
	var inputData = {
			firstname = firstName,
			lastname = lastName,
			mobile = mobile,
			email = email,
			gender = gender,
			designation = designation,
			pin = pin,
			password = password
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'',
		type:"POST",
		data:outputData,
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			alert(data.message);
			 window.location = base_url+"jsp/superadmin/users_list/admin_users_list.jsp";
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//admin edit


//academichead edit
function acheadEdit(){
	var firstName = $("#firstname").val();
	var lastName = $("#lastname").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var gender = $("#gender").val();
	var designation = $("#designation").val();
	var pin =$("#pin").val();
	var repin = $("#repin").val();
	var password = $("#password").val();
	var repassword = $("#repassword").val();
	var acheadid =getParameterByName('id');
	var inputData = {
			firstname = firstName,
			lastname = lastName,
			mobile = mobile,
			email = email,
			gender = gender,
			designation = designation,
			pin = pin,
			password = password
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'',
		type:"POST",
		data:outputData,
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			alert(data.message);
			 window.location = base_url+"jjsp/superadmin/users_list/academichead_users_list.jsp";
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//academichead edit


//admin preview
function adminPreview(){
	//data through parameter.
	var appenddata="";
	
	$.ajax({
		url:base_url+'',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr id='acheaddel'><td>"+data[i].firstname+"</td>";	
				appenddata += "<td>"+data[i].lastname+"</td>";
				appenddata += "<td>"+data[i].mobile+"</td>";
				appenddata += "<td>"+data[i].email+"</td>";
				appenddata += "<td>"+data[i].gender+"</td>";
				appenddata += "<td>"+data[i].designation+"</td>";
				appenddata += "<td>"+data[i].pin+"</td>";
				appenddata += "<td>"+data[i].repin+"</td>";
				appenddata += "<td>"+data[i].password+"</td>";
				appenddata += "<td>"+data[i].repassword+"</td>";
				appenddata += "<td>"+data[i].usertype+"</td>";
				appenddata += "<td>"+data[i].subadminfeatures+"</td></tr>";
			}
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//admin preview



//academic preview
function acheadPreview(){
	//data through parameter.
	var appenddata="";
	
	$.ajax({
		url:base_url+'',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr id='acheaddel'><td>"+data[i].firstname+"</td>";	
				appenddata += "<td>"+data[i].lastname+"</td>";
				appenddata += "<td>"+data[i].mobile+"</td>";
				appenddata += "<td>"+data[i].email+"</td>";
				appenddata += "<td>"+data[i].gender+"</td>";
				appenddata += "<td>"+data[i].designation+"</td>";
				appenddata += "<td>"+data[i].pin+"</td>";
				appenddata += "<td>"+data[i].repin+"</td>";
				appenddata += "<td>"+data[i].password+"</td>";
				appenddata += "<td>"+data[i].repassword+"</td>";
				appenddata += "<td>"+data[i].usertype+"</td>";
				appenddata += "<td>"+data[i].subadminfeatures+"</td></tr>";
			}
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//academic preview





























