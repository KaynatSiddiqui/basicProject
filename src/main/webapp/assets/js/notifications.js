//notification createNotification
	function notificationadd(){
		
		var notificationname  =  $("#notificationame").val();
		var summry            =  $("#summary").val();
		var text              =  $("#notitext").val();
		var websitelink       =  $("#weblink").val();
		var androidlink       =  $("#android").val();
		var ioslink           =  $("#ios").val();
		var notitype          =  $("#notitype").val();
		//var photo = $("#base64photo").val();
		var photo = $('#img').attr('src');
		if(notificationname == "" ){
			 alert("please Enter  Notification name");
			 return false;
		 }
		if(summry == ""){
			 alert("please Enter Summary");
			 return false;
		 }
		if(text == ""){
			 alert("please Enter text Field");
			 return false;
		 }
		if(notitype == "" || notitype== "--- Select Zone---"){
			 alert("please select Notification Type");
			 return false;
		 }
		if(websitelink == ""){
			alert("Please enter website link");
			return false;
		}else if (websitelink.indexOf("https://") != 0){
				/*websitelink = "http://" + websitelink;*/
				alert("Please Ente https:// for Website link");
				
				return false;
			}
		
		if(androidlink == ""){
			alert("Please enter android link");
			return false;
		}else if (androidlink.indexOf("https://") != 0){
			websitelink = "http://" + websitelink;
			alert("Please Enter htpps:// for Andriod link");
			
			return false;
		}
		if(ioslink == ""){
			alert("Please enter Ios link");
			return false;
			}else if (ioslink.indexOf("https://") != 0){
				websitelink = "http://" + websitelink;
				alert("Please Enter htpps://  for Ios Link ");
				return false;
			}
		var inputdata ={
				"iosLink"           :ioslink,
				"androidLink"       :androidlink,
				"webLink"           :websitelink,
				"notificationName"  :notificationname,
				"notificationImage" :photo,
				"notificationText"  :text,
				"summery"           :summry,
				"notificationType"  :notitype,
				"createdBy"         :"sridhar"

		}
		
		var outputdata = JSON.stringify(inputdata);
		
		$.ajax({
			url: base_url+'rest/admin/v1/createNotification',
			
			type:"POST",
			dataType:"json",
			data:outputdata,
			contentType:'application/json',
			success:function(data){
				alert(data.message);
				window.location = base_url +"jsp/admin/notifications/notifications_created.jsp";
			},
			error:function(data){
				  alert(data.responseJSON.errorMessage);
			}

		});
		
	}
	
	//getcreatednotifications/1
	var appenddata;
	function notificationCreated(){
		$.ajax({
			url : base_url + 'rest/admin/v1/getcreatednotifications/1',
			type:"GET",
			dataType:"json",
			contentType:'application/json',
			beforeSend: function(){
				$("#createdbody").empty();
				$("#createdbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
					 appenddata += "<tr id='noti_row"+data[i].id+"'><td>"+data[i].serialNumber+"</td>"
					 appenddata += "<td>"+data[i].notificationName+"</td>"; 
					 appenddata += "<td>"+data[i].summery+"</td>";
					 appenddata += "<td><a href='"+base_url+"jsp/admin/notifications/notifications_preview.jsp?id="+data[i].id+"' class='btn btn-success btn-icon-anim btn-circle p-10'><i class='icon-eye font-18'></i></a></td>";
					 appenddata +="<td><a type='button' class='btn btn-primary' data-toggle='modal' data-target='#exampleModal' data-id='"+data[i].id+"' data-whatever='@mdo' id='modalbutton'>Select Students</a></td>";
					 appenddata +="<td><a href='#' class='btn btn-success'  id='notify_item' data-id='"+data[i].id+"'>Publish</a></td>";
					 appenddata +="<td><a href='"+base_url+"jsp/admin/notifications/notifications_edit.jsp?id="+data[i].id+"' class='btn btn-edit btn-icon-anim btn-circle' data-id='"+data[i].id+"' ><i class='fa fa-edit font-18 mt-10'></i></a></td></td>";
					 appenddata +="<td><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='notifydelte_item"+data[i].id+"' data-id='"+data[i].id+"'><i class='icon-trash font-18'></i></a></td>"
}
				$("#createdbody").empty();
				$('#createddatable').DataTable().clear().destroy();
				$("#createdbody").append(appenddata);
				$("#createddatable").DataTable();
			},
			error:function(data){
				  alert(data.responseJSON.errorMessage);
			}
		});
	}
	
//getcreatednotifications/1
	
	
	//notification edit

	function notificationEdit(){
		var notificationname =  $("#notificationname").val();
		var notificationsummary =  $("#summary").val();
		var text               = $("#text").val();
		var websitelink     =$("#websitelink").val(); 
		var androidlink    =$("#androidlink").val();
		var ioslink      =$("#ioslink").val();
		var notitype          =  $("#notitype").val();
		var photo = $('#img').attr('src');
		if(notificationname == "" ){
			 alert("please Enter  Notification name");
			 return false;
		 }
		if(notificationsummary == ""){
			 alert("please Enter Summary");
			 return false;
		 }
		if(text == ""){
			 alert("please Enter text Field");
			 return false;
		 }
		if(notitype == "" || notitype== "--- Select Zone---"){
			 alert("please select Notification Type");
			 return false;
		 }
		if(androidlink == ""){
			alert("Please enter website link");
			return false;
		}else if (websitelink.indexOf("https://") != 0){
				/*websitelink = "http://" + websitelink;*/
				alert("Please Ente https:// for Website link");
				
				return false;
			}
		
		if(androidlink == ""){
			alert("Please enter android link");
			return false;
		}else if (androidlink.indexOf("https://") != 0){
			websitelink = "http://" + websitelink;
			alert("Please Enter htpps:// for Andriod link");
			
			return false;
		}
		if(ioslink == ""){
			alert("Please enter Ios link");
			return false;
			}else if (ioslink.indexOf("https://") != 0){
				websitelink = "http://" + websitelink;
				alert("Please Enter htpps://  for Ios Link ");
				return false;
			}
		var inputData ={
				"notificationName":notificationname,
				"summery"       :notificationsummary,
				"notificationText":text,
				"notificationImage" :photo,
				"webLink"      :websitelink,
				"androidLink"    :androidlink,
				"iosLink"   :ioslink,
				"createdBy":"saii",
				"notificationType"  :notitype,
				"notificationId":getParameterByName('id')

		}
		
		var inputdata = JSON.stringify(inputData);
		$.ajax({
			url: base_url+'rest/admin/v1/updateNotification',
			type:"POST",
			dataType:"json",
			contentType :'application/json',
			data:inputdata,
			success: function(data){
				alert(data.message);
				window.location = base_url +"jsp/admin/notifications/notifications_created.jsp";
			},
			error: function(data){
				  alert(data.responseJSON.errorMessage);
			}
	});
	}

function selectStudents(){
		
		var custumertype = $("#customertype option:selected").val(); 
		var accounttype =  $("#accounttype option:selected").val();
		
		var catname =  $("#category").val();
		
  		//var catname = catvalue[0];
  		
		
		var examtype =  $("#examtypeid").val();
		var examtypes=[];
		if(examtype !=="" && examtype !== null && examtype !== "Nothing selected" ){
			for (var i = 0; i < examtype.length; i++) {
		    	   
   	    	 var examvalue = examtype[i];
	     		//var examname = examvalue[0];
	     		examtypes.push(examvalue);
     }
		}else{
			alert("please select Examtypes");
			return false;
		}
		
		var examidint = examtypes.map(Number);
		if($("#standard").val() !=="" && $("#standard").val() !== null && $("#standard").val() !== "Nothing selected" ){
			
			var standard =  $("#standard").val().map(Number);
		}else{
		alert("please select Standards");
		return false;
		}
		if( $("#state").val() !=="" &&  $("#state").val() !== null &&  $("#state").val() !== "Nothing selected" ){
			
			var state =  $("#state").val().map(Number);
				}else{
				alert("please select City");
				return false;
				}
				
if($("#city").val() !=="" && $("#city").val() !== null && $("#city").val() !== "Nothing selected" ){
			
	var city =  $("#city").val().map(Number);
		}else{
		alert("please select City");
		return false;
		}
		
	
	
		var inputData = {
					"customerType":custumertype,
					"accountType":accounttype,
					"category":catname,
					"standard":standard,
					"examtype":examidint,
					"state":state,
					"city":city,
					"notificationId":parseInt(currNotId)
		};
		var inputData = JSON.stringify(inputData);
		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			url: base_url+'rest/admin/v1/selectstudents',
			data: inputData,
			success: function(data){
				alert(data.message);
				},
				  error: function (){
					  alert(data.responseJSON.errorMessage);
				  }
				
			});
		
	}

$(document).on("click", "a[id^=notify_item]", function() {
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to Publish?");
 	var pon = confirm("Really are you Sure?");
	  if(con == true){
		  if(pon == true){
			  
		
			$.ajax({
			 	  type: "GET",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url+'rest/admin/v1/publishnotification/'+id,
				  success: function(data){
					  if(data.status){
					   		alert(data.message);
					   		$("#noti_row"+id).remove();
					  		  }
					  },
					  error: function(data){
					   		alert(data.responseJSON.errorMessage);
					   	}
					  
				  });
		  }
	  }
});






	$(document).on("click", "a[id^=notifydelte_item]", function() {
	   	var id = $(this).attr('data-id');
	   	var con = confirm("Are you Sure to delete?");
	   	var pon = confirm("Really are you Sure?");
		  if(con == true){
			  if(pon == true){

	   		$.ajax({
	   	  type: "GET",
	  	  contentType: 'application/json', 
	  	  url: base_url+'rest/admin/v1/deletenotification/'+id,
	  	  success: function(data){	  
	  		  if(data.status){
	   		alert(data.message);
	   		$("#noti_row"+id).remove();
	  		  }
	  		  },
	  	    
	  	  error: function(data){
		   		alert(data.responseJSON.errorMessage);
		   	}

	});
		  }}});

	
	function publishGet(){
		var appenddata;
		$.ajax({
			url: base_url+'rest/admin/v1/getpublishednotifications/1',
			type:"GET",
			dataType:"json",
			contentType:'application/json',
			beforeSend: function(){
				$("#publishbody").empty();
				$("#publishbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success:function(data){
				for(i=0; i<data.length; i++){
					appenddata += "<tr id='noti_row"+data[i].id+"'>";
					appenddata +="<td>"+data[i].serialNumber+"</td>";
					appenddata +="<td>"+data[i].notificationName+"</td>";
					appenddata +="<td>"+data[i].summery+"</td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/notifications/notifications_preview.jsp?id="+data[i].id+"' class='btn btn-success btn-icon-anim btn-circle p-10'><i class='icon-eye font-18'></i></a></td>";
					appenddata +="<td>"+data[i].customerType+"</td>";
				
					appenddata +="<td>"+data[i].category+"</td>";
					var standard = data[i].standards;
					var standardids = [];
					var examtypes=[];
					var states = [];
					var cities=[];
					for(j=0; j<standard.length; j++){
						standardids.push(standard[j].name);
					}
					 var standsubstring = standardids.join(',').substring(0,10);
					//var standsubstring = standard.substring(0, 10);
					appenddata +="<td title='"+standardids.join(',')+"'>"+standsubstring+"</td>";
					for(k=0; k<data[i].examtypes.length; k++){
						examtypes.push(data[i].examtypes[k].name);
					}
					 var examtypessting = examtypes.join(',').substring(0,10);
					appenddata +="<td title='"+examtypes.join(',')+"'>"+examtypessting+"</td>";
					for(l=0; l<data[i].states.length; l++){
						states.push(data[i].states[l].name);
					}
					 var statesstring = states.join(',').substring(0,10);
					appenddata +="<td title='"+states.join(',')+"'>"+statesstring+"</td>";
					for(m=0; m<data[i].cities.length; m++){
						cities.push(data[i].cities[m].name);
					}
					 var citiesstring = cities.join(',').substring(0,10);
					appenddata +="<td title='"+cities.join(',')+"'>"+citiesstring+"</td>";
					appenddata +="<td><a id='noti-del"+data[i].id+"' data-id='"+data[i].id+"' class='btn btn-delete btn-icon-anim btn-circle p-10'><i class='icon-trash font-18'></i></a></td></tr>";
				}
				$("#publishbody").empty();
				$('#publishdatable').DataTable().clear().destroy();
				$("#publishbody").append(appenddata);
				$("#publishdatable").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		});
	}

	
	function filterpublish(){
		var appenddata;
		var cate = $("#category").val();
		var from = $("#datepicker1").val();
		var from1 = from.split('/');
		var from2= from1.join("-");
		var to   = $("#datepicker2").val();
		var to1 = to.split("/");
		var to2 = to1.join("-");
		var input ={
				"category":cate,
				"Fromdate":from2,
				"Todate":to2
				}
		var output = JSON.stringify(input);
		
		$.ajax({
			url: base_url+'rest/admin/v1/getpublishednotificationfilter',
			type:"POST",
			dataType:"json",
			data:output,
			contentType:'application/json',
			success:function(data){
				for(i=0; i<data.length; i++){
					appenddata += "<tr id='noti_row"+data[i].id+"'>";
					appenddata +="<td>"+data[i].serialNumber+"</td>";
					appenddata +="<td>"+data[i].notificationName+"</td>";
					appenddata +="<td>"+data[i].summery+"</td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/notifications/notifications_preview.jsp?id="+data[i].id+"' class='btn btn-primary'>Preview</a></td>";
					appenddata +="<td>"+data[i].customerType+"</td>";
					appenddata +="<td>"+data[i].category+"</td>";
					/*appenddata +="<td>"+data[i].standard+"</td>";
					appenddata +="<td>"+data[i].examType+"</td>";
					appenddata +="<td>"+data[i].state+"</td>";
					appenddata +="<td>"+data[i].city+"</td>";*/
					
					var standard = data[i].standards;
					var standardids = [];
					var examtypes=[];
					var states = [];
					var cities=[];
					for(j=0; j<standard.length; j++){
						standardids.push(standard[j].name);
					}
					 var standsubstring = standardids.join(',').substring(0,10);
					//var standsubstring = standard.substring(0, 10);
					appenddata +="<td title='"+standardids.join(',')+"'>"+standsubstring+"</td>";
					for(k=0; k<data[i].examtypes.length; k++){
						examtypes.push(data[i].examtypes[k].name);
					}
					 var examtypessting = examtypes.join(',').substring(0,10);
					appenddata +="<td title='"+examtypes.join(',')+"'>"+examtypessting+"</td>";
					for(l=0; l<data[i].states.length; l++){
						states.push(data[i].states[l].name);
					}
					 var statesstring = states.join(',').substring(0,10);
					appenddata +="<td title='"+states.join(',')+"'>"+statesstring+"</td>";
					for(m=0; m<data[i].cities.length; m++){
						cities.push(data[i].cities[m].name);
					}
					 var citiesstring = cities.join(',').substring(0,10);
					appenddata +="<td title='"+cities.join(',')+"'>"+citiesstring+"</td>";
					appenddata +="<td><a id='noti-del"+data[i].id+"' data-id='"+data[i].id+"' class='btn btn-danger'>Delete</a></td></tr>";
				}
				$("#publishbody").empty();
				$('#publishdatable').DataTable().clear().destroy();
				$("#publishbody").append(appenddata);
				$("#publishdatable").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		});

	}
	
	//notification publish delete
	$(document).on("click", "a[id^=noti-del]", function(){
		var id = $(this).attr('data-id');
		var con = confirm("Are you Sure to delete?");
		var pon = confirm("Really are you Sure?");
		 if(con == true){
		 if(pon == true){
		/*var deleterow =  {
					"":id,
					"deleteStatus":false
		}*/
		/*var deletefeedback = JSON.stringify(deleterow);*/
		$.ajax({
				 type: "GET",
				 dataType: "json",
				 contentType: 'application/json', 
				 url: base_url+'rest/admin/v1/deletenotification/'+id,
				 /*data:deletefeedback,*/
				 success: function(data){	 
				 if(data.status){
				alert(data.message);
				$("#noti_row"+id).remove();
			}
		 },
		 error: function(data){
		     alert("Deleting row Failed!");
		    }
		  });
	    }
	  }
	});
//notification publish delete		
	
	
	
	