function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

//categories_add button in admin
var butnvrble = false;












function trim(el) {
    el.value = el.value.
    replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
    replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
    replace(/\n +/, "\n"); // Removes spaces after newlines
    return;
}

var butnvrble = false;



function SaveAndFinish(){
	
	$('#saveandfinish')[0].submit();
	console.log("dfgdfgg");
}

/*function getAllYearsForDropDown(catname,examtypename,callback){
	var appenddata;
	
	if(catname !== "" && catname !== null && catname !== undefined){
		if(examtypename !== "" && examtypename !== null && examtypename !== undefined){
			var inputData = {
					"categoryname":catname,
					"examtype":examtypename
			};
			
			inputData = JSON.stringify(inputData);
			
			$.ajax({
				type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url+'rest/admin/v1/getyears',
				  data: inputData,
				  success: function(data){
			       for(var i=0; i < data.length; i++){
					 
			    		
							var yearname = data[i].name;
							//var zoneidis = data.zones[i].id;
							appenddata += '<option value="'+yearname+'">'
									+yearname+'</option>';
						}
			       $("#previousyear2").prop("disabled",false);
			       jQuery("#previousyear2").empty("");
					jQuery("#previousyear2").append('<option value="--- Select ---">--- Select ---</option>');
					jQuery("#previousyear2").append(appenddata);
					
					$("#previousyear1").prop("disabled",false);
				       jQuery("#previousyear1").empty("");
						jQuery("#previousyear1").append('<option value="--- Select ---">--- Select ---</option>');
						jQuery("#previousyear1").append(appenddata);
						
						$("#sltdyer").prop("disabled",false);
					       jQuery("#sltdyer").empty("");
							jQuery("#sltdyer").append('<option value="--- Select ---">--- Select ---</option>');
							jQuery("#sltdyer").append(appenddata);
							
							$("#sltdyer1").prop("disabled",false);
						       jQuery("#sltdyer1").empty("");
								jQuery("#sltdyer1").append('<option value="--- Select ---">--- Select ---</option>');
								jQuery("#sltdyer1").append(appenddata);
						
					
					$('.selectpicker').selectpicker('refresh');
					if(callback){
						callback();
					}

				  },
				  error: function(data) {		

					  alert("Years not found!");

				  }
			      	
			});
			
		} else {
			alert("Examtype not found!");
		}
	} else {
		alert("Category not found!");
	}
	
	
	
}*/



function copyToOtherExams(){
	var questionid = getParameterByName("id");
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	
	var standards = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic = $("#topic").val();
	var typeofquestions = $("#typeofquesname").val();
	var  createdby= "Sai Krishna";
	var deanid  = "1";
	
	
	var inputData = {
			 "questionid":parseInt(questionid),
			 "category":category,
			 "examType":examtype,
			 "standard":standards,
			 "subject":subject,
			 "unit":unit,
			 "chapter":chapter,
			 "topic":topic,
			 "typeofquestion":typeofquestions,
			 "deanid":deanid,
			 "createdBy":createdby
			 };
	inputData = JSON.stringify(inputData);
	$.ajax({
		url:  base_url+'rest/dean/getcopytootherexamtype',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert("Added successfully");                     
				 window.location = base_url+"jsp/dean/momve_to_board.jsp";

	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	});
}

//in admin - database - getprevious year


$('#AdminBDfilter').click(function(){
		var cattypename = $("#category").val();
		var examtypename = $("#examtype").val();
		var standtypename = $("#standard").val();
		var date1 = $("#id-date-picker-1").val();
		var date1spl= date1.split("/");
		var date1spl1 = date1spl[1]+"-"+date1spl[0]+"-"+date1spl[2];
		
		var date2 = $("#id-date-picker-2").val();
		var date2spl= date2.split("/");
		var date2spl2 = date2spl[1]+"-"+date2spl[0]+"-"+date2spl[2];


			var inputData = {
			"adminid":1,
			"fromdate": date1spl1,
			"todate":date2spl2,
			"categoryId":cattypename,
			"examtypeId":examtypename,
			"standardId":standtypename
			}
			var inpData = JSON.stringify(inputData);
			
			var appenddata;

				$.ajax({
				type: "POST",
				dataType: "json",
				contentType: 'application/json', 
				url: base_url+'rest/admin/v1/getdatabasebydatefilter',
				data: inpData,
				beforeSend: function() {
				$("#loading").show();
				},
				success: function(data){
				$("#loading").hide();

					for(var i=0; i < data.length; i++){
					appenddata += "<tr><td>"+data[i].questionid+"</td>";
					appenddata += "<td>"+data[i].examtype+"</td>"; 
					appenddata += "<td>"+data[i].standard+"</td>";
					appenddata += "<td>"+data[i].subject+"</td>";
					appenddata += "<td>"+data[i].unit+"</td>";
					appenddata += "<td>"+data[i].chapter+"</td>";
					appenddata += "<td>"+data[i].topic+"</td>";
					appenddata += "<td>"+data[i].typeofquestion+"</td>";
					appenddata += "<td>"+data[i].difficultylevel+"</td>";
					appenddata += "<td>"+data[i].modifieddate+"</td>";
					appenddata += "<td>"+data[i].lastupdatedby+"</td>";
					appenddata += "<td>"+data[i].comment+"</td>";		    		  
					appenddata +="<td><a href='"+base_url+"jsp/admin.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
					"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin.jsp?id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].photo+"' data-original-title='Edit'>" +
					"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_DBP"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
					
					}
					$("#AdminBD_tbody").empty();
					$('#AdminBD_tbl').DataTable().clear().destroy();
					$("#AdminBD_tbody").append(appenddata);
					$('#AdminBD_tbl').DataTable();
					
					
					},
				error: function(data) {		
				$("#loading").hide();
				alert(data.responseJSON.errorMessage);
				$('#AdminBD_tbl').empty();

	}

});
})


//Admin > database > by date > filter



//Admin > Database > by date > GET
function GetAdminDBP(){
var appenddata;
		$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/v1/getdatabasebydate/1',
		success:function(data){
		$("#loading").hide();

				for(var i=0; i < data.length; i++){
				appenddata += "<tr id='adminBD_row"+data[i].questionid+"' data-id='"+data[i].questionid+"' ><td>"+data[i].questionFormatId+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>"; 
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultylevel+"</td>";
				appenddata += "<td>"+data[i].modifieddate+"</td>";
				appenddata += "<td>"+data[i].lastupdatedby+"</td>";
				appenddata += "<td>"+data[i].comment+"</td>";		    		  
				appenddata +="<td><a href='"+base_url+"jsp/admin/test_post/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=date' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_BD"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				
				}
				$("#AdminBD_tbody").empty();
				$('#AdminBD_tbl').DataTable().clear().destroy();
				$("#AdminBD_tbody").append(appenddata);
				$('#AdminBD_tbl').DataTable();
				
				},
		error:function(){
			alert(data.responseJSON.errorMessage);		  
		}

});
}
//Admin > Database > by date > GET


//Admin > Database > by date > GET
$(document).on("click", "a[id^=admin_BD]", function() {
			var id = $(this).attr('data-id');
			var tr_id = $("tr[id^=adminBD_row]").attr('data-id');
			//var status=false;
			var  createdby= $("#createdby").val();
			
			var con = confirm("Are you Sure to delete?");
			
			if(con == true){

				$.ajax({
				type: "GET",
				dataType: "json",
				contentType: 'application/json', 
				url: base_url+'rest/question/v1/deletequestion/'+id, 
				
					success: function(data){	  
					if(data.status){
					alert(data.message);
					$("#adminBD_row"+tr_id).remove();
					setTimeout(function() {
						window.location = base_url +"jsp/admin/database/by_date.jsp";
					}, 500);
					
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

//admin delete for previous year

$(document).on("click", "a[id^=prvyr_delete]", function() {
   	var id = $(this).attr('data-id');
   	var tr_id = $("tr[id^=prevyr_row]").attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	var adminId = getAdminId();
	var admin = "admin";
  if(con == true){
 	var pon = confirm("Really are you Sure?");
 	
 		$.ajax({
		   	  type: "GET",
		  	  contentType: 'application/json', 
		  	  url: base_url+'rest/question/deletesqbquestion/'+id+'/'+adminId+'/'+admin,
		  	 success: function(data){	  
		  		  if(data.status){
			   		alert(data.message);
			   		$("#prevyr_row"+tr_id).remove();
			   		window.location = base_url+"jsp/admin/database/by_parameters.jsp";

			   		//$("#dean_delete"+id).remove();
		  		  }
		  	  },
		  	  error: function(data){
		  		  alert(data.responseJSON.errorMessage);
			  }
		
  });
  }  
});


//delete question in admin

function deleteQuestion(){
	
	var appenddata;
	var adminId = getAdminId();
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url +'rest/admin/getdeletedquestions/'+adminId,
		  beforeSend: function(){
				$("#delete-body").empty();
				$("#delete-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
			  appenddata += "<tr id='deletque_row"+data[i].questionid+"'><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";    
			  appenddata += "<td>"+data[i].standard+"</td>";
			  appenddata += "<td>"+data[i].subject+"</td>";
			  appenddata += "<td>"+data[i].unit+"</td>";
			  appenddata += "<td>"+data[i].chapter+"</td>"; 
			  appenddata += "<td>"+data[i].topic+"</td>";
			  appenddata += "<td>"+data[i].typeofquestion+"</td>";
			  appenddata += "<td>"+data[i].difficultylevel+"</td>"; 
			  appenddata += "<td>"+data[i].previousyear+"</td>";
			  appenddata += "<td>"+data[i].modifieddate+"</td>";
			  appenddata += "<td><a href='#' class='btn btn-danger' data-toggle='tooltip' id='restore_deleteque' data-original-title='Delete' data-id='"+data[i].questionid+"' id='restore_deleteque'>Restore</a></td>";
			  appenddata += "<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
			  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=delqs' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='deletque_delete'data-id='"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
			 
			 
			  }
			  
			  $("#delete-body").empty();
			  $("#delete-body").append(appenddata);
			  $("#deletedatable").DataTable();
		  },
		  error: function(data) {		 
			  alert(data.responseJSON.errorMessage);
		  }
	});
	}
//delete question in admin

//deleteQuestionFilter
function deleteQuestionFilter(){
	var appenddata="";
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic = $("#topic").val();
	var adminId = getAdminId();
	var difficultlevel = $("#difficultlevel").children("option").filter(":selected").text()
	if(topic == "---Select---" || topic == "" || topic == null || topic == undefined){
		topic = 0;
	}
	if(difficultlevel == "---Select---" || difficultlevel == null || difficultlevel == undefined){
		difficultlevel ="";
	  }
	
	var inputData = {
			  "categoryId":parseInt(category),
			  "standardId":parseInt(standard),
			  "subjectId":parseInt(subject),
			  "examtypeId":parseInt(examtype),
			  "unitId":parseInt(unit),
			  "chapterId":parseInt(chapter),
			  "topicId":parseInt(topic),
			  "difficultylevel": difficultlevel,
			  "adminId":adminId
	}
	var outputData  = JSON.stringify(inputData);
	  $.ajax({
		  url : base_url +'rest/admin/deletequestionfilter',
		  type:"POST",
		  dataType:"json",
		  data:outputData,
		  contentType:'application/json',
		  beforeSend: function(){
				$("#delete-body").empty();
				$("#delete-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  for(var i=0;i<data.length;i++){
				  appenddata += "<tr id='deletque_row"+data[i].questionid+"'><td>"+(i+1)+"</td>";    
				  /*appenddata += "<td>"+data[i].examtype+"</td>"; */
				  appenddata += "<td>"+data[i].questionFormatId+"</td>";
				  appenddata += "<td>"+data[i].standard+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>";
				  appenddata += "<td>"+data[i].unit+"</td>";
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>";
				  appenddata += "<td>"+data[i].typeofquestion+"</td>";
				  appenddata += "<td>"+data[i].difficultylevel+"</td>"; 
				  appenddata += "<td>"+data[i].previousyear+"</td>";
				  appenddata += "<td>"+data[i].modifieddate+"</td>";
				  appenddata += "<td><a href='#' class='btn btn-danger' data-toggle='tooltip' id='restore_deleteque' data-original-title='Delete' data-id='"+data[i].questionid+"' id='restore_deleteque'>Restore</a></td>";
				  appenddata += "<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=delqs' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='deletque_delete'data-id='"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
			  }
			  $("#delete-body").empty();
			  $("#delete-body").append(appenddata);
			  $("#deletedatable").DataTable();
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
	  })
	
}
//deleteQuestionFilter

//deletequestion Delete
$(document).on("click", "a[id^=deletque_delete]", function() {
   	var id = $(this).attr('data-id');
   	var tr_id = $("tr[id^=deletque_row]").attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	var adminId = getAdminId();
	var admin = "admin";
  if(con == true){
 	var pon = confirm("Really are you Sure?");
 	
 		$.ajax({
		   	  type: "GET",
		  	  contentType: 'application/json', 
		  	  url: base_url+'rest/question/deletesqbquestion/'+id+'/'+adminId+'/'+admin,
		  	  
		  	 success: function(data){	  
		  		  if(data.status){
			   		alert(data.message);
			   		$("#deletque_row"+tr_id).remove();
			   		window.location = base_url+"jsp/admin/database/deleted_questions.jsp";

			   		//$("#dean_delete"+id).remove();
		  		  }
		  	  },
		  	  error: function(data){
		  		  alert(data.responseJSON.errorMessage);
			  }
		
  });
  }  
});
 
//deletequestion Delete

//restore admin database delete srikanth
$(document).on('click',"a[id^=restore_deleteque]", function() {
	  var id = $(this).attr('data-id');
	  var adminId = getAdminId();
		var con = confirm("Are you Sure Restore?");
		if(con == true){


		var inputData =	{
		"adminid":adminId,
		"questionid":id
		}
		var inputdada = JSON.stringify(inputData);

		$.ajax({
		url:  base_url+'rest/admin/restorequestion',
		type:"POST",
		dataType:"json",
		 contentType: 'application/json',
		 data:inputdada,
		     success: function(data){
		   	 alert(data.message);
		   	 window.location = base_url+"jsp/admin/database/deleted_questions.jsp";
		   	 
		     },
		     error:function(data){
		   	 alert(data.responseJSON.errorMessage);
		   	 
		   	 window.location = base_url+"jsp/admin/database/deleted_questions.jsp";
		     }

		});
		 }
		else{

		 window.location = base_url+"jsp/admin/database/deleted_questions.jsp";
		 }
	
	});
	
	



	

	
//feedbackGet
function feedbackGet(){
	
	var appenddata="";
	var outputData = '{"userType":"student"}';
	$.ajax({
		url:base_url+'rest/feedback/v1/getAllfeedbacksadmin',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		beforeSend: function(){
			$("#feedbackbody").empty();
			$("#feedbackbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
		//	console.log(data);
			for(var i=0; i<data.length; i++){
				appenddata +="<tr id='feed_row"+data[i].feedbackId+"'><td>"+(i+1)+"</td>";
				appenddata +="<td>"+data[i].customerId+"</td>";
				appenddata +="<td>"+data[i].customerName+"</td>";
				appenddata +="<td>"+data[i].feedback+"</td>";
				appenddata +="<td>"+data[i].customerCity+"</td>";
				appenddata +="<td>"+data[i].regarding+"</td>";
				appenddata +="<td>"+data[i].date+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_preview.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-rounded status_btn'>View</span></a></td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_reply.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-s'>Reply</span></a></td>";
				appenddata +="<td><a id='feed-del"+data[i].feedbackId+"' data-id='"+data[i].feedbackId+"'><span class='btn btn-danger btn-sm'>Delete</span></a></td></tr>";
			}
			$("#feedbackbody").empty();
			 $('#feedbackdatable').DataTable().clear().destroy();
			$("#feedbackbody").append(appenddata);
			$("#feedbackdatable").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});
}
//feedbackGet


//feedback delete
$(document).on("click", "a[id^=feed-del]", function(){
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
			 url: base_url+'rest/feedback/v1/deletefeedbackpostedbystudent/'+id,
			 /*data:deletefeedback,*/
			 success: function(data){	 
			 if(data.status){
			alert(data.message);
			$("#feed_row"+id).remove();
		}
	 },
	 error: function(data){
		 alert(data.responseJSON.errorMessage);
	    }
	  });
    }
  }
});

//feedback delete

//feedback reply
	function feedbackReply(){
		
		var reply = CKEDITOR.instances.editor1.getData();
		var id = parseInt(getParameterByName('id'));
		var input ={
				 "reply" : reply,
			     "feedBackId" : id
		}
		var output = JSON.stringify(input);
		$.ajax({
			url : base_url +'rest/feedback/v1/reply',
			type:"POST",
			dataType:"json",
			data:output,
			contentType:'application/json',
			success:function(data){
				alert(data.message);
				window.location = base_url +"jsp/admin/feedbacks/feedbacks.jsp";
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		});
	}
//feedback reply
	//feedback filter

	  function feedbackFilter(){
		  
		  var fromdate = $("#datepicker1").val();
		  
		  var todate = $("#datepicker2").val();
		  
		  var category = $("#category").val();
		  
		  var state = $("#state").val();
		  
		  var city = $("#city").val();
		  
		  
		var feedbackreq = {
				"categoryId" : category,
					"fromdate" : fromdate,
						"todate" : todate,
						"stateId" : state,
						"cityId" : city,
						"userType":"student"
			}	
		
		var feedstr = JSON.stringify(feedbackreq);
		var appenddata = "";
		$.ajax({
			url:base_url+'rest/feedback/v1/getFeedbackfilter',
			type:"POST",
			dataType:"json",
			contentType:'application/json',
			data:feedstr,
			beforeSend: function(){
				$("#feedbackbody").empty();
				$("#feedbackbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
					appenddata +="<tr id='feed_row"+data[i].feedbackId+"'><td>"+data[i].customerId+"</td>";
					appenddata +="<td>"+data[i].customerName+"</td>";
					appenddata +="<td>"+data[i].customerCity+"</td>";
					appenddata +="<td>"+data[i].regarding+"</td>";
					appenddata +="<td>"+data[i].date+"</td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_preview.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-rounded status_btn'>View</span></a></td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_reply.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-s'>Reply</span></a></td>";
					appenddata +="<td><a id='feed-del"+data[i].feedbackId+"' data-id='"+data[i].feedbackId+"'><span class='btn btn-danger btn-sm'>Delete</span></a></td></tr>";
				}
				$("#feedbackbody").empty();
				 $('#feedbackdatable').DataTable().clear().destroy();
				$("#feedbackbody").append(appenddata);
				$("#feedbackdatable").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
			
			
		})
  
	  }
	
	//feedback filter
	  function studentsregisterd(){
			var appenddata;
		$.ajax({
			url:base_url+'rest/student/getAllstudentCreationsdata',
			type:"GET",
			dataType:"json",
			contentType:'application/json',
			beforeSend: function(){
				$("#student_details").empty();
				$("#student_details").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
					appenddata +="<tr id='student"+data[i].studentid+"'><td>"+data[i].studentFormatId+"</td>";
					appenddata +="<td>"+data[i].name+"</td>";
					appenddata +="<td>"+data[i].state+"</td>";
					appenddata +="<td>"+data[i].city+"</td>";
					appenddata +="<td>"+data[i].gender+"</td>";
					appenddata +="<td>"+data[i].mobilenumber+"</td>";
					appenddata +="<td>"+data[i].emailid+"</td>";
				if(data[i].accountVerified == true){
		    		   appenddata += "<td><a href='#' class='btn btn-success  btn-circle p-10'><i class='fa fa-check font-18'></i></a></td>";
		    	   }
		    	   else{
		    		   appenddata += "<td><a href='#' class='btn btn-danger  btn-circle p-10'><i class='fa fa-ellipsis-h font-18'></i></a></td>";
		    	   }
				
				
					}
				$("#student_details").empty();
				 $('#student_table').DataTable().clear().destroy();
				$("#student_details").append(appenddata);
				$("#student_table").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		});
		}
		
		function newscreation(){
			 var newsheading = $("#newsheading").val();
		 
		 var newsdesc = CKEDITOR.instances.newsdescription.getData();
		 
		 var loginData = getAdminId();
			var newsBlogImage=$("#base67photos").val();
		
		 
		 var examtypeid = $("#examtype").val();
		 
		 var creatingexamtype = {
					"examtypeId":examtypeid,
					"newBlogHeader":newsheading,
					"newsBlogDescription":newsdesc,
					"createdBy":"admin",
					"newsBlogImage":newsBlogImage
				}
		 
		  var createjson = JSON.stringify(creatingexamtype);
		 
		 $.ajax({
			 url:base_url+'rest/newsblog/createNewsBlog',
			 type:"POST",
			  contentType: 'application/json',
			  dataType:"json",
			  data:createjson,
			  success:function(data){
		            alert(data.message);
		            window.location = base_url +"jsp/admin/news/news_list.jsp";
			  },
			  error:function(data){
				  alert(data.responseJSON.errorMessage);
				  //alert("examinfo failed to submit");
			  }
		 
		 })	
			
		}
		
		function gettingnewsfilter(){
		var appenddata = "";
		var examtypeid = $("#examtype").val();
		$.ajax({
			url:base_url+'rest/newsblog/getNewsbyexamtype/'+examtypeid,
			 type:"GET",
			  contentType: 'application/json',
			  dataType:"json",
			  beforeSend: function(){
					$("#news_tbody").empty();
					$("#news_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
				},
			  success:function(data){
				  for(var i=0;i<data.length;i++){
					  appenddata += "<tr><td>"+(i+1)+"</td>";
					  appenddata += "<td>"+data[i].examtype+"</td>";
					  appenddata += "<td>"+data[i].newsHeader+"</td>";
						if(data[i].newsImage == "" || data[i].newsImage == null){
							appenddata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px;'></td>";
		  			 
		 }
		else{
			
			appenddata += "<td class='text-center'><img src="+data[i].newsImage+" data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+data[i].newsImage+'"'+")'  style='height:50px;width:50px;border-radius:50px;'></td>";
		  			 
		}
					  
					  appenddata +="<td><a href='news_edit.jsp?blogid="+data[i].newsBlogId+"&examid="+data[i].examtypeId+"'  class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].examtypeId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' data-id="+data[i].newsBlogId+" onclick='deletenesitem(this)' class='btn btn-delete btn-icon-anim btn-circle p-10' id='examtypecre_item"+data[i].examtypeId+"' data-id='"+data[i].examtypeId+"' data-toggle='tooltip' data-original-title='Delete'>" +
							"<i class='icon-trash font-18'></i></a></td></tr>";
				  }
				  
				  $("#news_tbody").empty();
				   $('#news_table').DataTable().clear().destroy();
				  $("#news_tbody").append(appenddata);
				  $("#news_table").DataTable();
			  },
			  error:function(data){
				  alert(data.responseJSON.errorMessage);
			  }
		})
	}
	
	
	
	/*function getnewsbyid(){

	var infoid =  getParameterByName('infoid');

	$.ajax({
	url:base_url+'rest/dynamicIndex/admin/getAdminInfoItemDetails/'+infoid,
	type:"GET",
	 contentType: 'application/json',
	 dataType:"json",
	 success:function(data){

	 var options = '';
	             $.each(data, function (key, value) {
	                 options += '<option value="'+data[0].examtypeId+'">'+data[0].examtypeName+'</option>';
	             });
	 $("#examtypes").append(options);
	 $("#infoexamtype").val(data[0].infoItem);
	 $("#colorcode").val(data[0].color);
	 $("#infodescription").val(data[0].infoItemDescription);
	 

	 },
	 error:function(){
	 alert(data.responseJSON.errorMessage);
	 }
	})



	}*/
	
	function updatenews(){
		var newsheading = $("#newsheading").val();
		 
		 var newsdesc = CKEDITOR.instances.newsdescription.getData();
		 
		 var loginData = getAdminId();
		 
		 var newsBlogImage=$("#base67photos").val();
		 
		 var examtypeid = $("#examtype").val();
		
		 var creatingexamtype = {
					"examtypeId":examtypeid,
					"newBlogHeader":newsheading,
					"newsBlogDescription":newsdesc,
					"createdBy":"admin",
					"newsBlogImage":newsBlogImage,
					"newsBlogId": getParameterByName('blogid')
				}
		 
		  var createjson = JSON.stringify(creatingexamtype);
		 
		 $.ajax({
			 url:base_url+'rest/newsblog/updateNewsBlog',
			 type:"POST",
			  contentType: 'application/json',
			  dataType:"json",
			  data:createjson,
			  success:function(data){
		            alert(data.message);
		            window.location = base_url +"jsp/admin/news/news_list.jsp";
			  },
			  error:function(data){
				  alert(data.responseJSON.errorMessage);
				  //alert("examinfo failed to submit");
			  }
		 
		 })	
		
	}
	
	
	function deletenesitem(elem){
	
	var infoid = $(elem).attr('data-id');
	
	var con = confirm("Are you Sure to delete?");
	var pon = confirm("Really are you Sure?");
  if(con == true){
	  if(pon == true){
	
	$.ajax({
		 url:base_url+'rest/newsblog/deleteNewsBlog/'+infoid,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			   alert(data.message);
			 window.location = base_url +"jsp/admin/news/news_list.jsp";
		  },
		  error:function(data){
			alert(data.responseJSON.errorMessage);
		  }
	})
	  }
  }
	
}


function editblogbyid(){

	var newsBlogId = getParameterByName("blogid");
	$.ajax({
		type: "GET",
		 url: base_url+"rest/newsblog/getNewsbyid/"+newsBlogId,
		 contentType: 'application/json',
		  dataType:"json",
		 success: function(data){
			 
			 $("#examtype").empty("");
				
			 $("#examtype").append('<option value="'+data[0].examtypeId+'">'+data[0].examtype+'</option> ');
			 
			 $("#newsheading").val(data[0].newsHeader);
			 
			 $("#newsdescription").val(data[0].newsDescription);
			 
			 if(data[0].newsImage == "" || data[0].newsImage == null){
				 
				 $("#img").attr("src","http://via.placeholder.com/150x150");
				$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
			 }
			 else{
				 
				 $("#img").attr("src",data[0].newsImage);
			 }
			 },
		 error:function(data){
			 alert("Getting blog content failed");
		 }
		 })
	
	
}
	

function tweekingstudentdata(){
	var appenddata;
	$.ajax({
		url:base_url+'rest/student/getAllTweakStudentdata',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#twekstudent_details").empty();
			$("#twekstudent_details").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata +="<tr><td>"+data[i].studentid+"</td>";
				appenddata +="<td>"+data[i].name+"</td>";
				appenddata +="<td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].gender+"</td>";
				appenddata +="<td>"+data[i].mobilenumber+"</td>";
				appenddata +="<td>"+data[i].emailid+"</td>";
			if(data[i].accountVerified == true){
	    		   appenddata += "<td><a href='#' class='btn btn-success  btn-circle p-10'><i class='fa fa-check font-18'></i></a></td>";
	    	   }
	    	   else{
	    		   appenddata += "<td><a href='#' class='btn btn-danger  btn-circle p-10'><i class='fa fa-ellipsis-h font-18'></i></a></td>";
	    	   }
			
			
				}
			$("#twekstudent_details").empty();
			 $('#twekstudent_table').DataTable().clear().destroy();
			$("#twekstudent_details").append(appenddata);
			$("#twekstudent_table").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});
}
