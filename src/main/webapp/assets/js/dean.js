

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}



function trim(el) {
    el.value = el.value.
    replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
    replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
    replace(/\n +/, "\n"); // Removes spaces after newlines
    return;
}



$('#question-sub,#saveandnext,#saveandpreview,#saveandfinish').submit(function(e){
	  e.preventDefault();
	}); 
	 

		
		

		
		
		
			
	// For getting the pending questions
/*function Getdeanstatus(){
			var deanappenddata;
			$.ajax({
				 type: "GET",
				  dataType: "json",
				  contentType: 'application/json', 
				  url: base_url+'rest/dean/getpendingquestions',
				  success:function(data){
					  for(var i=0; i < data.length; i++){
						  deanappenddata += "<tr id='acc_rej_row"+data[i].smeid+"'><td>"+data[i].smeid+"</td>";    
						  deanappenddata += "<td>"+data[i].question_id+"</td>";
						  deanappenddata += "<td>"+data[i].examtype+"</td>";
						  deanappenddata += "<td>"+data[i].standard+"</td>";
						  deanappenddata += "<td>"+data[i].subject+"</td>";
						  deanappenddata += "<td>"+data[i].chapter+"</td>";
						  deanappenddata += "<td>"+data[i].topic+"</td>";
						  deanappenddata += "<td>"+data[i].status+"</td>";
						  deanappenddata += "<td><a href='#' class='btn btn-primary btn-rounded status_btn' onclick='accept_rejectbtn()' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Approve'>Approve</a>&nbsp;<a href='#' onclick='accept_rejectbtn()' data-id='"+data[i].question_id+"' class='btn btn-danger btn-rounded status_btn' data-toggle='tooltip' data-original-title='Reject'>Reject</a></td>";
						  deanappenddata += "<td><a href='#' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='#' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
						  		"<i class='fa fa-edit font-18 mt-10'></i></a>";
						  
				      
						  }
						  $("#deanstatus_tbody").empty();
						  $("#deanstatus_tbody").append(deanappenddata);
						    $('#deanstatus_tbl').DataTable();
					  
				  },
				  error:function(){
					  alert("Ooops something went wrong");			  
				  }
				
			});
		}*/
//For getting the pending questions


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
						  alert("Getting Topic Error");

					  }
					  
				});
			}


			function getSelectedParamater(val){
			/*	var cattypename = $("#category").val();
				var examtypename = $("#examtype").val();
				var typeofquesname = val;
			    var inputData = '{"categoryname":"'+cattypename+'","examtype":"'+examtypename+'","questionType":"'+typeofquesname+'"}';*/
				var appenddata;
				$.ajax({
					type: "GET",
					  dataType: "json",
					  contentType: 'application/json', 
					  url: base_url+'rest/dean/v1/getparameters/'+getDeanId(),
					  beforeSend: function(){
				        $("#loading").show();
				     },
					  success: function(data){
						  $("#loading").hide();
						  for(var i=0; i < data.length; i++){
								var parameter = data[i];
								var splitques = parameter.split(",");
								for(var j=0;j<splitques.length;j++){
								appenddata += '<option value="'+splitques[j]+'">'
										+splitques[j]+'</option>';
								}

						  }
						  
						  jQuery("#parameter").empty("");
						  jQuery("#parameter").append('<option value="--- Select ---">--- Select ---</option>');
						  jQuery("#parameter").append(appenddata);
						  
						  $("#parameter").prop("disabled", false);
						  
						  $('.selectpicker').selectpicker('refresh');
					  },
					  error: function(data) {		
						  $("#loading").hide();
						  alert(data.responseJSON.errorMessage);

					  }
					  
				});
			}
function DeanStatus(){

	//var cattypename = $("#category").val();
	//var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var smeid = $("#sme_id").val();
	var deanid = getDeanId();
	 if(smeid=="--- Select ---" || smeid=="" || smeid ==null){
		 smeid='""';
	 }

    var inputData = '{"standardId":"'+standardname+'","subjectId":"'+subjectname+'","unitId":"'+unitname+'","chapterId":"'+chaptername+'","smeid":'+smeid+',"deanId":"'+deanid+'"}';

    var appenddata;
		
    $.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/dean/v1/getsqbqustionsbyfilter',
			  data: inputData,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  
				  for(var i=0; i < data.length; i++){
					  appenddata += "<tr><td>"+(i+1)+"</td>";
		    		  appenddata += "<td>"+data[i].smeid+"</td>";
		    		  appenddata += "<td>"+data[i].questionFormatId+"</td>";
		    		//  appenddata += "<td>"+data[i].examtype+"</td>"; 
		    		  appenddata += "<td>"+data[i].standard+"</td>";
		    		  appenddata += "<td>"+data[i].subject+"</td>";
		    		  appenddata += "<td>"+data[i].chapter+"</td>";
		    		  appenddata += "<td>"+data[i].topic+"</td>";
		    		  appenddata += "<td>"+data[i].status+"</td>";
		    		  appenddata += '<td> <a style="margin-bottom: 8px;" href="#" class="btn btn-primary btn-rounded status_btn" onclick="accept_rejectbtn(this)" data-id="'+data[i].question_id+'" data-toggle="tooltip" data-original-title="Approve">Approve</a> <a style="margin-bottom: 8px;" href="#" onclick="accept_rejectbtn(this)" data-id="'+data[i].question_id+'" class="btn btn-danger btn-rounded status_btn" data-toggle="tooltip" data-original-title="Reject">Reject</a></td>';
		    		  appenddata += '<td><div class=""><a href="'+base_url+'jsp/dean/addquestions/upload_preview.jsp?ref=sts&id='+data[i].question_id+'" class="btn btn-preview btn-icon-anim btn-circle mb-5" data-toggle="tooltip" data-original-title="Preview"><i class="fa fa-plus-square-o font-18 mt-10"></i></a><a href="'+base_url+'jsp/dean/addquestions/upload.jsp?ref=sts&id='+data[i].question_id+'&sme='+data[i].smeid+'" class="btn btn-edit btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a></div></td></tr>';
					
		    	}
		    	  
		    	  $("#accept_reject_tbody").empty();
		    	  $('#accept_reject_tbl').DataTable().clear().destroy();
				  $("#accept_reject_tbody").append(appenddata);
				  $("#accept_reject_tbl").DataTable();
				  
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage);
				  $("#accept_reject_tbody").empty();
			  }
			  
		});
	}


//questioncount

/*function questionCount(){

	var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var smeid = getSmeId();
	
    var inputData = '{"examtypeId":"'+examtypename+'","categoryId":"'+cattypename+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","smeid":"'+smeid+'"}';


	var appenddata;
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getquestioncountbyfilter',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
	    		  
	    		  appenddata += "<tr ><td>"+i+"</td>";
	    		  appenddata += "<td>"+data[i].examtype+"</td>"; 
	    		  appenddata += "<td>"+data[i].standard+"</td>";
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].pending+"</td>";
	    		  appenddata += "<td>"+data[i].rejected+"</td>";
	    		  appenddata += "<td>"+data[i].approved+"</td>";
				
	    	}
	    	  
	    	  $("#allquestyp_tbody").empty();
			  $("#allquestyp_tbody").append(appenddata);
			  $("#allquestyp_tbl").DataTable();
			  
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}*/


//For getting the pending questions
function Getdeanstatus(){
	var deanappenddata;
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/dean/getpendingquestions/'+getDeanId(),
		success:function(data){
			for(var i=0; i < data.length; i++){
				deanappenddata += "<tr id='acc_rej_row"+data[i].smeid+"'><td>"+(i+1)+"</td>"; 
				deanappenddata += "<td>"+data[i].smeid+"</td>";    
				deanappenddata += "<td>"+data[i].questionFormatId+"</td>";
				/*deanappenddata += "<td>"+data[i].examtype+"</td>";*/
				deanappenddata += "<td>"+data[i].standard+"</td>";
				deanappenddata += "<td>"+data[i].subject+"</td>";
				deanappenddata += "<td>"+data[i].chapter+"</td>";
				deanappenddata += "<td>"+data[i].topic+"</td>";
				deanappenddata += "<td>"+data[i].status+"</td>";
				deanappenddata += "<td><a style='margin-bottom: 8px;' href='#' class='btn btn-primary btn-rounded status_btn' onclick='accept_rejectbtn(this)' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Approve'>Approve</a>&nbsp;<a href='#' onclick='accept_rejectbtn(this)' data-id='"+data[i].question_id+"' class='btn btn-danger btn-rounded status_btn' data-toggle='tooltip' data-original-title='Reject'>Reject</a></td>";
				deanappenddata += "<td><a style='margin-bottom: 4px;' href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=sts&id="+data[i].question_id+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a class='btn btn-edit btn-icon-anim btn-circle' href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=sts&id="+data[i].question_id+"' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a>";


			}
			$("#accept_reject_tbody").empty();
			$('#accept_reject_tbl').DataTable().clear().destroy();
			$("#accept_reject_tbody").append(deanappenddata);
			$('#accept_reject_tbl').DataTable();

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);	  
		}

	});
}
//For getting the pending questions

//service for approve and reject buttons

function accept_rejectbtn(elem){
	
	var id = $(elem).attr('data-id');
	var status =  $(elem).attr('data-original-title');
var acc_rejstatus =	{
		"id":id,
		"status":status
	}

var inputData = JSON.stringify(acc_rejstatus);

	$.ajax({
		 type:"POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/sqbquestionstatusupdate',
		  data:inputData,
		  success:function(data){
			  
			 
			  $.toast({
		  		    text: data.message, // Text that is to be shown in the toast
		  		    heading: "Success", // Optional heading to be shown on the toast
		  		    icon: 'success', // Type of toast icon
		  		    showHideTransition: 'plain', // fade, slide or plain
		  		    allowToastClose: true, // Boolean value true or false
		  		    hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
		  		    stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
		  		    position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
		  		    
		  		    
		  		    
		  		    textAlign: 'left',  // Text alignment i.e. left, right or center
		  		    loader: true,  // Whether to show loader or not. True by default
		  		    loaderBg: '#9EC600',  // Background color of the toast loader
		  		    beforeShow: function () {}, // will be triggered before the toast is shown
		  		    afterShown: function () {}, // will be triggered after the toat has been shown
		  		    beforeHide: function () {
		  		    	location.reload();
		  		    }, // will be triggered before the toast gets hidden
		  		    afterHidden: function () {}  // will be triggered after the toast has been hidden
		  		});
			  
		  },
		  error:function(){
			  alert(data.responseJSON.errorMessage);
		  }
	});
}

//service for approve and reject buttons




//for default getting service of question count


function Getdeanquescount()	{
	var allappenddata="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/dean/getquestioncount/'+getDeanId(),
		success:function(data){
			for(var i=0; i < data.length; i++){
				allappenddata += "<tr><td>"+data[i].id+"</td>";   
				allappenddata += "<td>"+data[i].standard+"</td>";
				allappenddata += "<td>"+data[i].subject+"</td>";
				allappenddata += "<td>"+data[i].chapter+"</td>";
				allappenddata += "<td>"+data[i].topic+"</td>";
				allappenddata += "<td>"+data[i].pending+"</td>";
				allappenddata += "<td>"+data[i].rejected+"</td>";
				allappenddata += "<td>"+data[i].approved+"</td></tr>";
			}
			$("#allquestyp_tbody").empty();
			$('#allquestyp_tbl').DataTable().clear().destroy();
			$("#allquestyp_tbody").append(allappenddata);
			$("#allquestyp_tbl").DataTable();

		},
		error:function(){
			alert(data.responseJSON.errorMessage);	  
		}

	});
}






//for default getting service of question count


//question count get by filters

function questionCount(){

	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	
    var inputData = {
    		"deanid": getDeanId(),
    		"standardId":standardname,
    		"subjectId":subjectname
    		};

   var strinp = JSON.stringify(inputData);

	var appenddata;
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/getSqbquestioncountfilter',
		  data:strinp,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
	    		  
	    		  appenddata += "<tr ><td>"+data[i].id+"</td>";
	    		  appenddata += "<td>"+data[i].standard+"</td>";
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].pending+"</td>";
	    		  appenddata += "<td>"+data[i].rejected+"</td>";
	    		  appenddata += "<td>"+data[i].approved+"</td>";
				
	    	}
	    	  
	    	  $("#allquestyp_tbody").empty();
	    	  $('#allquestyp_tbl').DataTable().clear().destroy();
			  $("#allquestyp_tbody").append(appenddata);
			  $("#allquestyp_tbl").DataTable();
			  
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}

//for Dean database Qc

function getDeanDatabaseQc(){
	var allappenddata="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/academichead/getdatabaseqc/'+getDeanId(),
		success:function(data){
			for(var i=0; i < data.length; i++){
				allappenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";    
				allappenddata += "<td>"+data[i].standard+"</td>";
				allappenddata += "<td>"+data[i].subject+"</td>";
				allappenddata += "<td>"+data[i].chapter+"</td>";
				allappenddata += "<td>"+data[i].topic+"</td>";
				allappenddata += "<td>"+data[i].typeofquestion+"</td>";
				allappenddata += "<td>"+data[i].difficultylevel+"</td>";
				allappenddata += "<td>"+data[i].modifieddate+"</td>";
				allappenddata += "<td>"+data[i].comments+"</td>";

				allappenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a></td></tr>";

			}
			$("#dean-Qc-tbody").empty();
			$('#dean-Qc-table').DataTable().clear().destroy();
			$("#dean-Qc-tbody").append(allappenddata);
			$("#dean-Qc-table").DataTable();
		},
		error:function(){
			alert(data.responseJSON.errorMessage);		  
		}

	});
}




function Deandatabaseqc(){
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic = $("#topic").val();
	var typeofques = $("#questionType").val();
	//var parameter = $("#parameter option:selected").text();
	var parameter = $("#parameter").val();
	var DeanId = getDeanId();

/*	if(category =="--- Select ---" || category == "" || category ==null){
		alert("please choose category");
		return false;
	}
	if(examtype =="--- Select ---" || examtype == "" || examtype ==null){
		alert("please choose examtype");
		return false;
	}*/
	if(standard ==="--- Select ---" || standard === "" || standard ===null){
		alert("please choose standard");
		return false;
	}
	 if(subject ==="--- Select ---" || subject === "" || subject ===null){
		alert("please choose subject");
		return false;
	}
	if(unit ==="--- Select ---" || unit === "" || unit ===null){
		alert("please choose unit");
		return false;
	}
	if(chapter ==="--- Select ---" || chapter === "" || chapter ===null){
		alert("please choose chapter");
		return false;
	}
	 if(topic=="--- Select ---" || topic==="" || topic ===null){
		 topic= 0;
	 }
	 if(typeofques ==="--- Select ---" || typeofques==="" || typeofques ===null){
		 typeofques= "";
	 }
	 if(parameter === "--- Select ---" || parameter=== "" || parameter === null){
		 parameter= "";
	 }


	var databaseqc	= {
			"deanid":DeanId,
			"standardId":standard,
			"subjectId":subject,
			"unitId":unit,
			"chapterId":chapter,
			"topicId":topic,
			"questionType":typeofques,
			"parameterId":parameter
	}

	var databaseqcdsp = JSON.stringify(databaseqc);
	var allappenddata;
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/dean/getSqbdatabaseqcbyfilter',
		data:databaseqcdsp,
		success:function(data){
			for(var i=0; i < data.length; i++){
				allappenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
				allappenddata += "<td>"+data[i].standard+"</td>";
				allappenddata += "<td>"+data[i].subject+"</td>";
				allappenddata += "<td>"+data[i].chapter+"</td>";
				allappenddata += "<td>"+data[i].topic+"</td>";
				allappenddata += "<td>"+data[i].typeofquestion+"</td>";
				allappenddata += "<td>"+data[i].difficultylevel+"</td>";
				allappenddata += "<td>"+data[i].modifieddate+"</td>";
				allappenddata += "<td>"+data[i].comments+"</td>";
				allappenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=dqc&id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a></td></tr>";
			}
			$("#dean-Qc-tbody").empty();
if ( ! $("#dean-Qc-table").DataTable().data().any() ) {
				
			}else{
				$('#dean-Qc-table').DataTable().clear().destroy();
			}
			$("#dean-Qc-tbody").append(allappenddata);
			$("#dean-Qc-table").DataTable();         
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
			$("#dean-Qc-tbody").empty();
		}

	})	
}
//Dean Database QC by filter


//dean get method copytootherexam by sridhar

//dean post method copytootherexam filter 
function deancopytootherexampost()
{
	 var deanId   = getDeanId();
	 var category = $("#category").val();
	 var examType = $("#examtype").val();
	 var standard = $("#standard").val();
	 var subject  = $("#subject").val();
	 var unit     = $("#unit").val();
	 var chapter  = $("#chapter").val();
	 var topic    = $("#topic").val();
	 var typeofquestion = $("#layoutnumber").val();
	 if(topic=="--- Select ---" || topic=="" || topic ==null){
		 topic=0;
	 }
	 if(typeofquestion=="--- Select ---" || typeofquestion=="" || typeofquestion ==null){
		 typeofquestion=0;
	 }
	 
	 var inputData ='{"deanId":"'+deanId+'","categoryId":"'+category+'","examtypeId":"'+examType+'","standardId":"'+standard+'","subjectId":"'+subject+'","unitId":"'+unit+'","chapterId":"'+chapter+'","topicId":"'+topic+'","questionTypeId":"'+typeofquestion+'"}';
	  
	 var appenddata;
	 
	 $.ajax({
		  url: base_url +'rest/dean/v1/getcopytootherexamsbyfilter',
	 	  type: "POST",
	 	  dataType :	"JSON",
	 	  contentType :'application/JSON',
	 	  data : inputData,
	 	 success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
	    		  
				  appenddata += "<tr><td>"+(i+1)+"</td>";
				  appenddata += "<td>"+data[i].questionFormatId+"</td>";
	    		  appenddata += "<td>"+data[i].examtype+"</td>"; 
	    		  appenddata += "<td>"+data[i].standard+"</td>";
	    		  appenddata += "<td>"+data[i].subject+"</td>";
	    		  appenddata += "<td>"+data[i].chapter+"</td>";
	    		  appenddata += "<td>"+data[i].topic+"</td>";
	    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
	    		  appenddata += "<td>"+data[i].difficultylevel+"</td>";
	    		  appenddata += "<td>"+data[i].presentinexamtype+"</td>";
	    		  appenddata += "<td>"+data[i].modifieddate+"</td>";
	    		 
	    		 
				  appenddata +="<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].qid+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
				  
				  appenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=mtb&pvid="+data[i].qid+"'  class='btn btn-primary btn-xs'>Go</a></td>";
				  
	    	}
	    	  
	    	  $("#copyexam-body").empty();
	    	  $('#copyexamdatable_1').DataTable().clear().destroy();
			  $("#copyexam-body").append(appenddata);
			  $("#copyexamdatable_1").DataTable();
			  
		  },
	 error : function(data){
		 alert(data.responseJSON.errorMessage);
	 }
	 	  
	 });
}

//dean post method copytootherexam filter


	//dean get method copytootherexam by sridhar

	function GetAllDeancopytootherexam(){
		
		var appenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			
			  url: base_url +'rest/dean/v1/getcopytootherexams/'+getDeanId(),
			  success: function(data){
				  $("#loading").hide();
				  for(var i=0; i < data.length; i++){
				  appenddata += "<tr id='dean_row"+data[i].qid+"'><td>"+(i+1)+"</td>"; 
				  appenddata += "<td>"+data[i].questionFormatId+"</td>";    
				  appenddata += "<td>"+data[i].examtype+"</td>"; 
				  appenddata += "<td>"+data[i].standard+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>";
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>";
				  appenddata += "<td>"+data[i].typeofquestion+"</td>";
				  appenddata += "<td>"+data[i].difficultylevel+"</td>"; 
				  appenddata += "<td>"+data[i].presentinexamtype+"</td>";
				  appenddata += "<td>"+data[i].modifieddate+"</td>";
				  
				  
				  
				  appenddata +="<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" + "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=mtb&id="+data[i].qid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].qid+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
				  
				  appenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=mtb&pvid="+data[i].qid+"'  class='btn btn-primary btn-xs'>Go</a></td>";
				 
				  }
				  $("#copyexam-body").empty();
				  $('#copyexamdatable_1').DataTable().clear().destroy();
				  $("#copyexam-body").append(appenddata);
				  $("#copyexamdatable_1").DataTable();
			  },
			  error: function(data) {		
				 
				  alert(data.responseJSON.errorMessage);

			  }
			 
		    	
		});
		}
	
function refResolver(r){
	switch(r){
	case 'sts':
		return 'questionstatus/status.jsp';
	case 'dqc':
		return 'databaseqc/database_qc.jsp';
	case 'mtb':
		return 'copytootherexamtype/move_to_board.jsp';
	case 'deanm':
		return 'manualpostquestions/manual_post_qns.jsp';
	}
}
	
	
	/*
	   * Question Step 1 DEAN Module
	   * 
	   * */

function questionStep1(){
	$("#step1Btn").addClass('disablelink').removeClass('activatelink');

	var category = $("#category").val();
	/*var examtype = $("#examtype").val();*/
	var topic = $("#topic").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var questionTypeId = $("#questionType").val();
	var questiontype = $("#questionType").children("option").filter(":selected").text()

	//var layout = getParameterByName('layout');
	var deanid = getDeanId();
	/*var smeid = smeiddd;*/
	//var smeid = getParameterByName('sme');
	var SmeId = getSmeId();
	var dean_editmode = sessionStorage.getItem("dean_editmode");
	if(dean_editmode !== "true"){

		var inputData;

		if( category == "" || category == "--- Select ---" )
		{

			alert("Please Select Category");
			$("#step1Btn").addClass('activatelink').removeClass('disablelink');
			return false;
		}
		/*else if(topic=="" || topic == "--- Select ---" )
		  	{

		  			alert("Please Select Exam Type");
		  			$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		  	     	return false;
		  	}*/
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
		else if(questionTypeId=="" || questionTypeId == "--- Select ---")
		{

			alert("Please Select Question Type");
			$("#step1Btn").addClass('activatelink').removeClass('disablelink');
			return false;

		} else{
			var loginData = getLoginData();
			var utp = loginData.userType;
			var url = base_url+'rest/question/updatesqbquestion';
			inputData = {
					/*"categoryId" : category,
		  				"examtypeId" : examtype,
		  				"standardId" : standard,
		  				"subjectId" : subject,
		  				"unitId" : unit,
		  				"chapterId" : chapter,
		  				"questiontype" : questionTypeId,
		  				"dean": true,
		  				"id":parseInt(getParameterByName("pvid")),
		  				"insertedBydesignation": utp,
		  				"step" : 1,
		  				"updatedId":deanid,
		  				"updatedBy":"DEAN"*/

					"step":1,
					"categoryId":category,
					"standardId":standard,
					"subjectId":subject,
					"unitId":unit,
					"chapterId":chapter,
					//"topicId":topic,
					"questiontype":questionTypeId,
					"smeid":SmeId,
					"createdBy":"sridhar",
					"insertedBydesignation":utp,
					"dean":true,
					"updatedBy":"deanId",
					"updatedId":deanid,
					"id":parseInt(getParameterByName("pvid"))
			};

			inputData = JSON.stringify(inputData);

			$.ajax({
				type: "POST",
				cache:false,
				dataType: "json",
				contentType: 'application/json', 
				url: url,
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
									window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+data.questionId+"&layout="+questionTypeId;
								} else {
									window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&id="+data.questionId+"&layout="+questionTypeId;
								}


							}, // will be triggered before the toast gets hidden
							afterHidden: function () {}  // will be triggered after the toast has been hidden
						});



		  				  } else {
		  					  
		  					  //alert("Error! Unable to send options!");
		  					  
		  					  
		  					$.toast({
			  				    text: data.message, // Text that is to be shown in the toast
			  				    heading: "Step1 Error!", // Optional heading to be shown on the toast
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
			sessionStorage.setItem("dean_editmode", true);
			var ref = getParameterByName('ref');
			var questionId = getParameterByName('id');
			var pvid = getParameterByName('pvid');
		  	if(questionId !== "" && questionId !== null && pvid !== "" && pvid !== null){
		  		window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+questionId+"&layout="+questionTypeId;	
		  	}  else if(questionId !== "" && questionId !== null){
		  		window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&id="+questionId+"&layout="+questionTypeId;
		  	}else{
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
					    	window.location = base_url+"jsp/dean/copytootherexamtype/move_to_board.jsp";
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
					    	window.location = base_url+"jsp/dean/questionstatus/status.jsp";
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
  		    
  		    var deanid = getDeanId();
  		  
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
 		    }else{
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
  		    	var cfdata = formDataForComprh('c',addedFields,trackSkipFields,"dean_editmode");
  		    	
  		    } else if(multiComprh.test(layout)){
  		    	
  		    	var addedFields = parseInt($("#hckfields").val()) - 1;
  		    	var trackSkipFields = $("#trackQH").val();
  		    	var mcfdata = formDataForComprh('mc',addedFields,trackSkipFields,"dean_editmode");
  		    	
  		    } 
  		    
  		    var step = 2;
  			//var questionid = JSON.parse(atob(getCookie("questionId")));
  		    
  		    var questionid = getParameterByName('id');
  		  var smeid = $("#smeid").val();
			var dean_editmode = sessionStorage.getItem("dean_editmode");
			if(dean_editmode !== "true"){
				
				//adding new question
				//without passage
			 	  var url = base_url+'rest/question/updatesqbquestion';
				
				if(comprh.test(layout)){
					question = CKEDITOR.instances.passage.getData();
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
							"question":question,
							"comprehensionDetails":cfdata,
							"id": questionid,
							"smeid":smeid,
							"step": step,
							"updatedId":deanid,
							"updatedBy":"DEAN"
						};
						}else{
							$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
							$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
							$("#layout_back").addClass('activatelink').removeClass('disablelink');
							return false;
						}
					}
				} else if(multiComprh.test(layout)){
					question = CKEDITOR.instances.passage.getData();
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
							"question":question,
							"comprehensionDetails":mcfdata,
							"id": questionid,
							"smeid":smeid,
							"step": step,
							"updatedId":deanid,
							"updatedBy":"DEAN"
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
							"updatedId":deanid,
							"updatedBy":"DEAN"
						};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				} else{
					
					if(intiRegex.test(layout)){
						//var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
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
									"smeid":smeid,
									"step": step,
									"updatedId":deanid,
									"updatedBy":"DEAN"
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
									"smeid":smeid,
									"step": step,
									"updatedId":deanid,
									"updatedBy":"DEAN"
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
				// passage url
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
							"updatedId":deanid,
							"updatedBy":"DEAN"
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
					var fav = []
					 $('input[type="checkbox"]:checked').each(function(){
						 fav.push($(this).val());
					});
					answer = fav.join(",");
					if(mcfdata === false){
						/*alert("Please select answer for all questions!");*/
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					} else{
						var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
						if(check){
						var postquestion =  {
							"instructions":	instructions,
							"questiontype":layout,
							"question":passage,
							"comprehensionDetails":mcfdata,
							"id": questionid,
							"step": step,
							"updatedId":deanid,
							"updatedBy":"DEAN"
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
					var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
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
								"updatedId":deanid,
								"updatedBy":"DEAN"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				} else{

					
					if(intiRegex.test(layout)){
				//		var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
						var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);	
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
									"answer": answer,
									"updatedId":deanid,
									"updatedBy":"DEAN"
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
									"answer": answer,
									"updatedId":deanid,
									"updatedBy":"DEAN"
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
  		            	 
  		            	 var pvid = getParameterByName("pvid");
  		            	 
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
	  		          	    	window.location = base_url+"jsp/dean/addquestions/upload_parameters.jsp?ref="+ref+"&pvid="+pvid+"&id="+questionid+"&layout="+layout;
		  					 } else {
		  						window.location = base_url+"jsp/dean/addquestions/upload_parameters.jsp?ref="+ref+"&id="+questionid+"&layout="+layout;
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
        	 
        	 sessionStorage.setItem("dean_editmode", false);
        	 window.history.back();
        	 $("#layout_back").addClass('activatelink').removeClass('disablelink');
         }

  }

  	/* END of addQuestionStep2() */
  		
  		
  		
  		/*
		   * Add Question Step 3 DEAN Module
		   * 
		   * */

/*function addQuestionStep3(){

			$("#saveBtn3").addClass('disablelink').removeClass('activatelink');
  			$("#param_back").addClass('disablelink').removeClass('activatelink');
  			
		  	var belong_topic = $("#belongs").val();
		  	var difficulty_level =$("input[name='levelradio']:checked").val();
		
		  	var originalparamters = $("#originalparamters").val();
		  	var leveloriginalparameters = $("#leveloriginalparameters").val();
		  	var comments = $("#comments").val();
		  	var previouyear_mainquestions = $("#prevyears_exam").val();
		  	var id = getParameterByName('id');
		  	var layout = getParameterByName("layout");
		  	var other_competitiveexams = $("#examcategory").val();
		  	var other_competitiveexams_year = $("#previousyear2").val();
		  	var veryimpquestion = $("#impquestion").is(':checked');
		  	var step = 3;
		  	
		  	var deanid = getDeanId();
		  	
		  	if(previouyear_mainquestions !== "" && previouyear_mainquestions !== null){
		  		previouyear_mainquestions = previouyear_mainquestions.map(Number);
	         } else{
	        	 previouyear_mainquestions = [];
	         }
		  	
		  	 if(other_competitiveexams_year !== "" && other_competitiveexams_year !== null){
		  		other_competitiveexams_year = other_competitiveexams_year.map(Number);
	         } else{
	        	 other_competitiveexams_year = [];
	         }
		  		
		  	var iparam = 0;
		  	var paramsChecksValues = [];
	        $('.paramChecks:checked').each(function () {
	    	   paramsChecksValues[iparam++] = $(this).val();
	        });
	        
	       
	        if(paramsChecksValues !== "" && paramsChecksValues !== null){
	        	paramsChecksValues = paramsChecksValues.join(',');
	        } else{
	        	paramsChecksValues = "";
	        }
		  	
			
	        var dean_editmode = sessionStorage.getItem("dean_editmode");
		  	if(dean_editmode !== "true"){
				var url = base_url+'rest/question/v1/addquestionv2';
				var inputData = {
				  		topicId : belong_topic,
				  		difficulty_level : difficulty_level,
				  		originalparamters : originalparamters,
				  		leveloriginalparameters :leveloriginalparameters,
				  		selectedparameters: paramsChecksValues,
				  		levelselectedparam:difficulty_level,
				  		comments : comments,
				  		previouyear_mainquestionsId : previouyear_mainquestions,
				  		id : id,
				  		other_competitiveexams : other_competitiveexams,
				  		other_competitiveexams_yearId: other_competitiveexams_year,
				  		veryimpquestion: veryimpquestion,
				  		step : step,
				  		updatedId:deanid,
				  		updatedBy:"DEAN"
				  	};
			} else{					
				var url = base_url+'rest/question/v1/updatequestion';
				var inputData = {
						topicId : belong_topic,
				  		difficulty_level : difficulty_level,
				  		originalparamters : originalparamters,
				  		leveloriginalparameters :leveloriginalparameters,
				  		selectedparameters: paramsChecksValues,
				  		levelselectedparam:difficulty_level,
				  		comments : comments,
				  		previouyear_mainquestionsId : previouyear_mainquestions,
				  		id : id,
				  		other_competitiveexams : other_competitiveexams,
				  		other_competitiveexams_yearId: other_competitiveexams_year,
				  		veryimpquestion: veryimpquestion,
				  		step : step,
				  		updatedId:deanid,
				  		updatedBy:"DEAN"
				  	};
			}
		
		  		
		  	inputData = JSON.stringify(inputData);
		  	
		  	
		  	if(id !== "" && id !== null){
		  		
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
			  		  		    	window.location = base_url+"jsp/dean/addquestions/upload_preview.jsp?ref="+ref+"&pvid="+pvid+"&id="+id+"&layout="+layout;
			  		  		    }else{
			  		  		    	window.location = base_url+"jsp/dean/addquestions/upload_preview.jsp?ref="+ref+"&id="+id+"&layout="+layout;
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
		  		sessionStorage.setItem("dean_editmode", false);
		  		window.history.back();
		  		$("#param_back").addClass('activatelink').removeClass('disablelink');

		  	}
		  }*/
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
	var deanId = getDeanId();
	var updatedBy = "DEAN";

	var dean_editmode = sessionStorage.getItem("dean_editmode");
	if(dean_editmode === "true"){


		var url = base_url+'rest/question/updatesqbquestion';

		//exam and years
		/*var examYears = [];
		$("#prevyears_exam").each(function(){
			
			var exam = $(this).val();
			var year = $("#prevyears_year").val();
			var year2 = year.map(Number);
			var rowid = parseInt($(this).data('rowid'));
			var obj = {};
			obj["examtypeId"] = parseInt(exam);
			obj["years"] = year2;
			obj["active"] = true;
			obj["previousYearsListId"] = rowid;
			examYears.push(obj);
		})*/
		/*var examYears = [];
		var exam = $("#prevyears_exam").val();
		var year = $("#prevyears_year").val();
		var rowid = parseInt($(this).data('rowid'));
		var year2 = year.map(Number);
			var obj = {};
			obj["examtypeId"] = parseInt(exam);
			obj["years"] = year2;
			obj["active"] = true;
			obj["previousYearsListId"] = rowid;
			examYears.push(obj);*/
		//parameters

		var paramsChecksValues = [];
		$('.paramChecks').each(function (){ 
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
		/*var rowid = parseInt($(this).data('rowid'));
		var isChecked = $(this).prop('checked');
		var examYears = [];
		$('#prevyears_exam').each(function () {
		var exam = $(this).val();
		var year = $("#prevyears_year").val();
		var year2 = year.map(Number);
		if(isChecked && rowid > 0){
			var obj = {};
			obj["examtypeId"] = parseInt(exam);
			obj["years"] = year2;
			obj["active"] = true;
			obj["previousYearsListId"] = rowid;
			examYears.push(obj);
		
		}else if(isChecked && rowid === 0){
			var obj = {};
			obj["examtypeId"] = $(this).val();
			obj["years"] = parseInt($(this).data("id"));
			obj["active"] = false;
			obj["previousYearsListId"] = rowid;
			examYears.push(obj);
		}
		});*/
		
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
				updatedId:deanId,
				updatedBy:updatedBy
		};


		console.log("Step 3 request data: "+inputData);
		inputData = JSON.stringify(inputData);
		console.log("Before Step 3 AJAX Call");

		if(id !== "" && id !== null){

			$.ajax({
				type: "POST",
				cache:false,
				dataType: "json",
				contentType: 'application/json', 
				url: url,
				data: inputData,
				success:function(data){

					console.log("Inside Step 3 AJAX Success");
					if(data.status) {
						//alert(data.message);

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
							afterShown: function () {


								$("#param_back").addClass('activatelink').removeClass('disablelink');
							}, // will be triggered after the toat has been shown
							beforeHide: function () {

								window.location = base_url+"jsp/dean/addquestions/upload_preview.jsp?ref="+ref+"&id="+id+"&layout="+layout;

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
					console.log("Inside Step 3 AJAX Error");
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
			sessionStorage.setItem("editmode", false);

			window.location = base_url+"jsp/sme/addquestions/upload.jsp";
			$("#param_back").addClass('activatelink').removeClass('disablelink');
		}
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
	var deanid = getDeanId();

	var dean_editmode = sessionStorage.getItem("dean_editmode");
	if(dean_editmode !== "true"){
		var url = base_url+'rest/question/addquestion';
		var inputData = {
				"id" : id,
				"step" : step,
				"updatedId":deanid,
				"updatedBy":"DEAN"
		};
	} else{					
		var url = base_url+'rest/question/updatesqbquestion';
		var inputData = {
				"id" : id,
				"step" : step,
				"updatedId":deanid,
				"updatedBy":"DEAN"
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
		  		  		    	
		  		  		    sessionStorage.setItem("dean_editmode", false);
		  		  		    	window.location = base_url+"jsp/dean/"+refResolver(ref);
		  		  		    
		  		  		    }, // will be triggered before the toast gets hidden
		  		  		    afterHidden: function () {}  // will be triggered after the toast has been hidden
		  		  		});
		  				
		  				  
		  			  } else {
		  				  //alert("Error! Unable to send options!");
		  				  
		  				$.toast({
		  		  		    text: data.message, // Text that is to be shown in the toast
		  		  		    heading: "Step 4 updation failed!", // Optional heading to be shown on the toast
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

		sessionStorage.setItem("dean_editmode", false);
		window.history.back();
		$("#preview_back").addClass('activatelink').removeClass('disablelink');
	}
}

/* END of addQuestionStep4() */


function getmanualpostquest(){

	var getmanualpostquest = "";

	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/dean/getmanualpostquestions/1',
		beforeSend: function(){
			$("#getmanualpostq").empty();
			$("#getmanualpostq").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i < data.length; i++){
				getmanualpostquest += "<tr id=''><td>"+(i+1)+"</td>";
				getmanualpostquest += "<td>"+data[i].questionFormatId+"</td>";    
//				getmanualpostquest += "<td>"+data[i].examtype+"</td>";
				getmanualpostquest += "<td>"+data[i].standard+"</td>";
				getmanualpostquest += "<td>"+data[i].subject+"</td>";
				getmanualpostquest += "<td>"+data[i].chapter+"</td>";
				getmanualpostquest += "<td>"+data[i].topic+"</td>";
				getmanualpostquest += "<td>"+data[i].typeofquestion+"</td>";
				getmanualpostquest += "<td>"+data[i].difficultylevel+"</td>";
				getmanualpostquest += "<td>"+data[i].modifieddate+"</td>";
				getmanualpostquest += "<td>"+data[i].comment+"</td>";
				getmanualpostquest += "<td><a href='"+base_url+"jsp/dean/manualpostquestions/upload_preview.jsp?ref=deanm&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/test_post/addquestions/upload.jsp?ion=mdg&id="+data[i].questionid+"&layoutname="+data[i].typeofquestion+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='edit'><i class='fa fa-edit font-18 mt-10'></i></a>";
				getmanualpostquest += "</td></tr>";

				/*<a href='"+base_url+"jsp/dean/addquestions/upload.jsp?ref=deanm&id="+data[i].questionid+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>"
							  "<i class='fa fa-edit font-18 mt-10'></i></a>";*/

			}

			$("#getmanualpostq").empty();
			$('#getmanualpostq_tbl').DataTable().clear().destroy();
			$("#getmanualpostq").append(getmanualpostquest);
			$('#getmanualpostq_tbl').DataTable();

		},
		error:function(){
			alert(data.responseJSON.errorMessage);  
		}

	});
} 


$("#layout_back").click(function(){
	var qid = getParameterByName('id');
	var pvid = getParameterByName('pvid');
	var ref = getParameterByName('ref');
	if(qid!=="" && qid !== null && pvid !== "" && pvid !== null){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&bk=mxzq";
	}else if(qid!=="" && qid !== null){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload.jsp?ref="+ref+"&id="+qid+"&bk=mxzq";
	} else {
		window.location = base_url+"jsp/dean/addquestions/upload.jsp";
	}
});

$("#param_back").click(function(){
	var qid = getParameterByName('id');
	var layout = $("#layouthd").val();
	var pvid = getParameterByName('pvid');
	var ref = getParameterByName('ref');
	if(qid!=="" && qid !== null && pvid !== "" && pvid !== null){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&layout="+layout+"&bk=mxzq";
	} else if(qid!=="" && qid !== null){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&id="+qid+"&layout="+layout+"&bk=mxzq";
	} else {
		window.location = base_url+"jsp/dean/addquestions/upload.jsp";
	}
});



$("#preview_back").click(function(){
	var qid = getParameterByName('id');

	var txt = $("#preview_back").text();
	var layout = $("#layouthd").val();
	var pvid = getParameterByName('pvid');
	var ref = getParameterByName('ref');

	if(ref === "deanm"){
		window.location = base_url+"jsp/dean/manualpostquestions/manual_post_qns.jsp";
	} else if(qid !== "" && qid !== null && pvid !== "" && pvid !== null && txt === "Back"){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload_parameters.jsp?ref="+ref+"&pvid="+pvid+"&id="+qid+"&layout="+layout+"&bk=mxzq";
	} else if(qid !== "" && qid !== null && txt === "Back"){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload_parameters.jsp?ref="+ref+"&id="+qid+"&layout="+layout+"&bk=mxzq";
	} else if(qid !== "" && qid !== null && txt === "Edit"){
		sessionStorage.setItem("dean_editmode", true);
		window.location = base_url+"jsp/dean/addquestions/upload.jsp?ref="+ref+"&id="+qid;
	}  else {
		sessionStorage.setItem("dean_editmode", false);
		window.location = base_url+"jsp/dean/addquestions/upload.jsp";
	}

});

function manualPostQns(){
	
	var categoryId = $("#category").val();
	var examtypeId = $("#examtype").val();
	var standardId = $("#standard").val();
	var subjectId = $("#subject").val();
	var unitId = $("#unit").val();
	var chapterId = $("#chapter").val();
	var topicId = $("#topic").val();
	var typeofquestionsId = $("#questionType").val();
	var previousyearId = parseInt($("#previousyear").val());
	//var prevId = previousyearId.map(Number);
	var prevId = [];
	prevId.push(previousyearId);
	
	if(topicId === "" || topicId === null || topicId === undefined || topicId === "--- Select ---"){
		topicId = 0;
	}
	
	if(typeofquestionsId === "" || typeofquestionsId === null || typeofquestionsId === undefined || typeofquestionsId === "--- Select ---"){
		typeofquestionsId = 0;
	}
	
	if(prevId === "" || prevId === null || prevId === undefined || prevId === "--- Select ---"){
		prevId = null;
	}
	
	
	if(topicId == 0 || typeofquestionsId == 0 || prevId == [NaN]){
		
		var inputData = {
				"categoryId" : categoryId,
				"examtypeId" : examtypeId,
				"standardId" : standardId,
				"subjectId" : subjectId,
				"unitId" : unitId,
				"chapterId" : chapterId
			}
		
	}else{
	var inputData = {
		"categoryId" : categoryId,
		"examtypeId" : examtypeId,
		"standardId" : standardId,
		"subjectId" : subjectId,
		"unitId" : unitId,
		"chapterId" : chapterId,
		"topicId" : topicId,
		"questiontypeId" : typeofquestionsId,
		"previouyear_mainquestionsId":prevId
	}
	}
	
    inputData = JSON.stringify(inputData);
    
	var appenddata = "";
	
	$.ajax({
		url:  base_url+'rest/dean/v1/getmanualpostquestionsbyFilter',
		type:"POST",
		dataType: "json",
	    contentType: 'application/json',
		data: inputData,
		success:function(data){
			  
			  for(var i=0; i < data.length; i++){
				  appenddata += "<tr id=''><td>"+data[i].questionFormatId+"</td>";    
				  appenddata += "<td>"+data[i].examtype+"</td>";
				  appenddata += "<td>"+data[i].standard+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>";
				  appenddata += "<td>"+data[i].chapter+"</td>";
				  appenddata += "<td>"+data[i].topic+"</td>";
				  appenddata += "<td>"+data[i].typeofquestion+"</td>";
				  appenddata += "<td>"+data[i].difficultylevel+"</td>";
				  appenddata += "<td>"+data[i].modifieddate+"</td>";
				  appenddata += "<td>"+data[i].comment+"</td>";
				  appenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?ref=deanm&id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a>";
			  }
			  
			  $("#getmanualpostq").empty();
			  $('#getmanualpostq_tbl').DataTable().clear().destroy();
			  $("#getmanualpostq").append(appenddata);
			  $('#getmanualpostq_tbl').DataTable();
			  
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		
   });
	
}