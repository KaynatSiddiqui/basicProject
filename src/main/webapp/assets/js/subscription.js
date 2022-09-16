function subscriptionGetAll(callback){
	var appenddata ="";
  	$.ajax({
  		type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/admin/getAllAcademicyears',
  		  cache:false,
  		  success: function(data){
  	       for(var i in data){
  			 var subName = data[i].academicyearType;
  			 var subId = data[i].Id;
  					appenddata += '<option value="'+subId+'">'+subName+'</option>';
  				}
  	    
  		    $("#acayear").empty("");
			$("#acayear").append('<option value="">--- Select ---</option>');
			$("#acayear").append(appenddata);
  			$('.selectpicker').selectpicker('refresh');
  			if(callback){
				callback();
			}
  		  },
  		  error: function(data) {	
  			 alert(data.responseJSON.errorMessage);
  		  }
  	      	
  	});
}

function getType(val){
	
	if(val === "1"){
		$('#months').css({"display":"none"});
		$('#days').css({"display":"inline"});
		
	}else if(val === "2"){
		$('#days').css({"display":"none"});
		$('#months').css({"display":"inline"});
	}else if(val === "---Select---" || val === null || val === undefined){
		alert("please Select type");
	}
}
function subscriptionadd(){
    var acayear = $("#acayear").val();
    var category = $("#category").val();
	var standardname = $("#standard").val();
	//new added Image url
	var subscriptionimage=$("#subscriptionImage").val();
	
	var orgprice = $("#orgprice").val();
	var offerprice = $("#offerprice").val();
	var activetime = $("#activedate").val();
	var expirytime = $("#expirydate").val();

	var examtypename = $("#examtype").val();
	if(examtypename != ""){
		examtypename = examtypename.map(Number);
		}else{
			examtypename = [];
		}
	var subin = {
			"academicyearId":acayear,
			"categoryId":category,
			"standardId":standardname,
			"examtypeId":examtypename,
			"originalPrice":orgprice,
			"offerPrice":offerprice,
			"activeDate":activetime,
			"expiryDate":expirytime,
			"imageUrl":subscriptionimage
			}
	var subout = JSON.stringify(subin);
	
	$.ajax({
		url:  base_url+'rest/admin/AddSubscription',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:subout,
	      success: function(data){
	    	  alert("Added successfully");
				 window.location = base_url+"jsp/admin/subscriptionpackage/subscription.jsp";

	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
}

function getAllSubscription(){
	var appenddata = "";
	

	$.ajax({
		url : base_url+'rest/admin/getAllSubscriptions',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#subsc_tbody").empty();
			$("#subsc_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata += "<tr id='sub_row'><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].academicyear+"</td>";
				appenddata += "<td>"+data[i].category+"</td>";
				appenddata += "<td>"+data[i].Standard+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].orginalprice+"</td>";
				appenddata += "<td>"+data[i].offerprice+"</td>";
				appenddata += "<td>"+data[i].activeDate+"</td>";
				appenddata += "<td>"+data[i].expiryDate+"</td>";
				/*appenddata +="<td><a href='"+base_url+"jsp/admin/creation/subscription_edit.jsp?id="+data[i].subscriptionId+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/creation/subscription_edit.jsp?id="+data[i].subscriptionId+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].subscriptionId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a></td></tr>";*/
				appenddata += "<td><a href='"+base_url+"jsp/admin/creation/subscription_edit.jsp?id="+ data[i].subscriptionId +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].subscriptionId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='subscr_item"+data[i].subscriptionId+"' data-id='"+data[i].subscriptionId+"' data-toggle='tooltip' data-original-title='Delete'>" +
			  				"<i class='icon-trash font-18'></i></a></td></tr>";
				}
			$("#subsc_tbody").empty();
			$("#subsc_tbody").append(appenddata);
			$("#susc_tbl").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function getbyIdSubscription(){
	//var appenddata = "";
	var id = getParameterByName('id');

	$.ajax({
		url : base_url+'rest/admin/getSubscriptionsById/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		async:true,
		success:function(data){
			  
			    $("#acayear").val(data.academicyearId);
				$("#category").val(data.categoryId);//for get all in jsp set val
				$("#standard").append('<option value="'+data.StandardId+'">'+data.Standard+'</option>');//if not get all append data
				var exmarray = data.examtypes;
				for(var i in exmarray){
					$("#examtype").append('<option value="'+exmarray[i].examTypeId+'" selected>'+exmarray[i].examtype+'</option>');
					console.log(exmarray);
				}
				/*$("#standard").val(data.StandardId);
				$("#examtype").val(data.examtypeId);*/
				
				//new added Image url
				$("#subscriptionImage").val(data.imageUrl);
			    
				$("#orgprice").val(data.orginalprice);
				$("#offerprice").val(data.offerprice);
				$("#activedate").val(data.activeDate);
				$("#expirydate").val(data.expiryDate);
				
				$('.selectpicker').selectpicker('refresh');
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

$(document).on('click',"a[id^=subscr_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteSubscription(id);
	  }
});


function deleteSubscription(id)
{
	var status = false;
	  var subscId=id;
	var  createdby= $("#createdby").val();


	$.ajax({
		url:  base_url+'rest/admin/deleteSubscription/'+subscId,
		type:"GET",
		 dataType: "json",
		  contentType: 'application/json',
	      success: function(data){
	    	  alert(data.message);
	    	  $("#sub_row"+id).remove();
	    	  location.reload();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	
	      }
		
	})
	
}

function subscriptionedit(){
	var acayear = $("#acayear").val();
    var category = $("#category").val();
	var standardname = $("#standard").val();
	//new added Image url
	var subscriptionimage=$("#subscriptionImage").val();
	
	var orgprice = $("#orgprice").val();
	var offerprice = $("#offerprice").val();
	var activetime = $("#activedate").val();
	var expirytime = $("#expirydate").val();
	var subscriptionId = getParameterByName('id');
	var examtypename = $("#examtype").val();
	if(examtypename != ""){
		examtypename = examtypename.map(Number);
		}else{
			examtypename = [];
		}
	var subin = {
			"academicyearId":acayear,
			"categoryId":category,
			"standardId":standardname,
			"examtypeId":examtypename,
			"originalPrice":orgprice,
			"offerPrice":offerprice,
			"activeDate":activetime,
			"expiryDate":expirytime,
			"subscriptionId":subscriptionId,
			"imageUrl":subscriptionimage,
			"status":true
			}
	var subout = JSON.stringify(subin);
	
	$.ajax({
		url:  base_url+'rest/admin/updateSubscriptions',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:subout,
	      success: function(data){
	    	  alert("Updated successfully");
				 window.location = base_url+"jsp/admin/subscriptionpackage/subscription.jsp";

	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
}


function academicyearAdd(){
	$("#academicyear").addClass('disablelink').removeClass('activatelink');
	
	var acdemicyear = $("#academicyear").val();
	var acdemictype = $("#type").val();
	var academicyearindays = $("#academicyearindays").val();
	var expirydate =  $("#expirydate").val();
	
	var requestData = {
			"academicyeartype":acdemicyear,
			"expIndays":academicyearindays,
			  "type":acdemictype,
			  "expDate":expirydate
	}
	
	var inputData = JSON.stringify(requestData);
	
	$.ajax({
		url: base_url+'rest/admin/AddAcademicYear',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
				 window.location = base_url+"jsp/admin/subscriptionpackage/academicyear.jsp";

	      },
	      error: function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
	})
	
}

function getAllAcadmicYearsTypes(){
	var appenddata = "";

$.ajax({
	url : base_url+'rest/admin/getAllAcademicyears',
	type:"GET",
	dataType:"json",
	contentType:'application/json',
	beforeSend: function(){
		$("#acadmic_tbody").empty();
		$("#acadmic_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	},
	success:function(data){
		for(var j=0; j<data.length; j++){
			appenddata += "<tr id='sub_row'><td>"+(j+1)+"</td>";
			appenddata += "<td>"+data[j].academicyearType+"</td>";
			appenddata += "<td>"+data[j].type+"</td>";
			appenddata += "<td>"+data[j].expiration+"</td>";
			appenddata += "<td>"+data[j].insertedDate+"</td>";
			if(data[j].updatedDate == null){
				appenddata += "<td></td>";
			}else{
				appenddata += "<td>"+data[j].updatedDate+"</td>";
			}
			appenddata +="<td><a href='"+base_url+"jsp/admin/subscriptionpackage/academicyear_edit.jsp?id="+ data[j].Id + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[j].Id+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='acad_item"+data[j].Id+"' data-id='"+data[j].Id+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td></tr>";
		
			
			 
		}
		      $("#acadmic_tbody").empty();
			  $("#acadmic_tbody").append(appenddata);
			  $("#academic_tbl").DataTable();
	},
	error:function (data){
		  alert(data.responseJSON.errorMessage);
	}
})
    	
 }


function getbyIdAcademicyear(){

	var id = getParameterByName('id');

	$.ajax({
		url : base_url+'rest/admin/getAcadmicyearsById/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		async:true,
		success:function(data){
			  
			    $("#academicyear").val(data.academicyearType);
				
				
				$('.selectpicker').selectpicker('refresh');
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}


function academicyearEdit(){
	$("#academicyear").addClass('disablelink').removeClass('activatelink');
	
	var acdemicyear = $("#academicyear").val();
	var id = getParameterByName('id');
	var requestData = {
			"academicyeartype":acdemicyear,
			"academicyeartypeId":id,
			"status":true,
			"updatedby":"admin"
	}
	
	var inputData = JSON.stringify(requestData);
	$.ajax({
		url: base_url+'rest/admin/updateAcademicyear',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
				 window.location = base_url+"jsp/admin/subscriptionpackage/academicyear.jsp";

	      },
	      error:function(data){
				alert(data.responseJSON.errorMessage);
			}
	})
	
}


$(document).on("click", "a[id^=acad_item]", function() {
	var id = $(this).attr('data-id');
	var status=false;
	var createdby= $("#createdby").val();

 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
    if(con == true){
	  if(pon == true){
		  
 		$.ajax({
	 	  type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/deleteAcademicyear/'+id,
		  success: function(data){	  
			  if(data.status){
		 		alert(data.message);
		 		$("#sub_row"+id).remove();
		 		location.reload();
			  }
		  },
		  error: function(data){
			  alert(data.responseJSON.errorMessage);
	   		}
 		});
 		
	  }
    }
});