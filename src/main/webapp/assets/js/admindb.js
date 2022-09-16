

$('#AdminDBPSubmit').click(function(){
	var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var topic = $('#topic').val();
	var typeofQns = $('#layoutnumber').val();
	var parameter = $('#parameter').val();
	
   
    var appenddata;
		
    $.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/academichead/getquestionstatusbyfilter',
			  data: inputData,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  
				  for(var i=0; i < data.length; i++){
		    		  
					  
		    		 
		    		  appenddata += "<tr ><td>"+data[i].questionid+"</td>";
		    		  appenddata += "<td>"+data[i].examtype+"</td>"; 
		    		  appenddata += "<td>"+data[i].standard+"</td>";
		    		  appenddata += "<td>"+data[i].subject+"</td>";
		    		  appenddata += "<td>"+data[i].chapter+"</td>";
		    		  appenddata += "<td>"+data[i].topic+"</td>";
		    		  appenddata += "<td>"+data[i].typeofquestion+"</td>";
		    		  appenddata += "<td>"+data[i].previousyear+"</td>";
		    		  appenddata += "<td>"+data[i].modifiedDate+"</td>";
		    		  appenddata += "<td>"+data[i].status+"</td>";
		    		  appenddata += "<td><a href='#' class='btn btn-primary btn-rounded status_btn' onclick='accept_rejectbtn()' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Approve'>Approve</a>&nbsp;<a href='#' onclick='accept_rejectbtn()' data-id='"+data[i].question_id+"' class='btn btn-danger btn-rounded status_btn' data-toggle='tooltip' data-original-title='Reject'>Reject</a></td>";
					  appenddata += "<td><a href='"+base_url+"jsp/dean/addquestions/upload_preview.jsp?id="+data[i].question_id+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='#' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
					  		"<i class='fa fa-edit font-18 mt-10'></i></a>" +
					  		"<a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sme_item"+data[i].photo+"' data-id='"+data[i].photo+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
					  
		    	  
		    	  $("#AHDean_tbody").empty();
				  $("#AHDean_tbody").append(appenddata);
				  $("#AHDean_tbl").DataTable();
				  
			  }
				  
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Ooops something went wrong");

			  }
			  
		});
})

//Question Status> academic head Post



//Admin > Database > by Parameter > GET
function GetAdminDBP(){
	var appenddata="";
	var appendParameter="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getdatabaseparameters/1',
		beforeSend: function(){
			$("#AdminBDP_tbody").empty();
			$("#AdminBDP_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i < data.length; i++){
				var parameter = data[i].parameter;
				if(parameter != null){
					var splitter = parameter.split(","); 
				}

				appenddata += "<tr id='adminDBP_row"+data[i].questionid+"' data-id='"+data[i].questionid+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
				/*appenddata += "<td>"+data[i].examtype+"</td>"; */
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";	    	
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultyLevel+"</td>";
				//appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td id='para'>";
				for(var p = 0;p<splitter.length;p++){
					var per = p%3;
					if((p+1) === splitter.length){
					  appenddata += "<span>"+splitter[p]+"</span>";
					}else if(per == 0 && p > 1){
				      appenddata += "<span>"+splitter[p]+", </span><br> ";
					}else{
					  appenddata += "<span>"+splitter[p]+", </span>";
					}
				}
				appenddata += "</td>";
				/*if(splitter != undefined){ foo.appendChild(br);
					var paramlength = splitter.length;
					if(paramlength < 10 ){
						var remparam = 10 - paramlength;
					}else{
						var remparam = 0;
					}
					for(j=0; j <splitter.length; j++){
						appenddata += "<td>"+splitter[j]+"</td>";
						// appenddata += "<td>"+splitter[j+1]+"</td>";
					}
					for(k=0; k <remparam; k++){
						appenddata+= "<td>---</td>";
					}
				}
				else{
					for(l=0; l < 10; l++){
						appenddata+= "<td>---</td>";
					}
				}*/
				/* appenddata += "<td>"+data[i].parameter+"</td>";
	    		  appenddata += "<td>"+data[i].para2+"</td>";*/
				appenddata += "<td>"+data[i].previousyear+"</td>";
				appenddata += "<td>"+data[i].modifieddate+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=param' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_DBP"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";

			}
			$("#AdminBDP_tbody").empty();
			/*$('#AdminBDP_tbl').DataTable().clear().destroy();*/
			$("#AdminBDP_tbody").append(appenddata);
			$('#AdminBDP_tbl').DataTable();

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);	  
		}

	});
}
//Admin > Database > by Parameter > GET

$('#Adminpmcfilter').click(function(){
	/*var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();*/
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var topic = $('#topic').val();
	var typeofQns = $('#questionType').val();
	/*var parameter = $('#parameter').text();*/
	var parameter = $("#parameter option:selected").text();
	
	if(parameter == "" || parameter == "---Select---"){
		parameter = 0;
	}else if(typeofQns == "" || typeofQns =="---Select---"){
		typeofQns = 0;
	}else if(topic == "" || topic =="---Select---"){
		topic = 0;
	}
	
	var inputData = {
			/*"categoryId":cattypename,
			"examtypeId":examtypename,*/
			/*"standardId":standardname,
			"subjectId":subjectname,
			"unitId":unitname,
			"chapterId":chaptername,
			"topicId":topic,
			"questionTypeId":typeofQns,
			"parameter":parameter
*/
			"chapterId": chaptername,
			"parameter": parameter,
			"questiontypename": typeofQns,
			"standardId": standardname,
			"subjectId": subjectname,
			"topicId":topic,
			"unitId": unitname
	}
	var inpData = JSON.stringify(inputData);

	var appenddata;

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/databaseparameterbyfilter',
		data: inpData,
		beforeSend: function() {
			$("#AdminBDP_tbody").empty();
			$("#AdminBDP_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success: function(data){
			

			for(var i=0; i < data.length; i++){
				var parameter = data[i].parameter;
				if(parameter != null){
					var splitter = parameter.split(","); 
				}

				appenddata += "<tr id='adminDBP_row"+data[i].questionid+"' data-id='"+data[i].questionid+"' ><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].questionFormatId+"</td>"
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";	    	
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultyLevel+"</td>";
				//appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td id='para'>";
				for(var p = 0;p<splitter.length;p++){
					var per = p%3;
					if((p+1) === splitter.length){
					  appenddata += "<span>"+splitter[p]+"</span>";
					}else if(per == 0 && p > 1){
				      appenddata += "<span>"+splitter[p]+", </span><br> ";
					}else{
					  appenddata += "<span>"+splitter[p]+", </span>";
					}
				}
				appenddata += "</td>";
				/*if(splitter != undefined){ foo.appendChild(br);
					var paramlength = splitter.length;
					if(paramlength < 10 ){
						var remparam = 10 - paramlength;
					}else{
						var remparam = 0;
					}
					for(j=0; j <splitter.length; j++){
						appenddata += "<td>"+splitter[j]+"</td>";
						// appenddata += "<td>"+splitter[j+1]+"</td>";
					}
					for(k=0; k <remparam; k++){
						appenddata+= "<td>---</td>";
					}
				}
				else{
					for(l=0; l < 10; l++){
						appenddata+= "<td>---</td>";
					}
				}*/
				/* appenddata += "<td>"+data[i].parameter+"</td>";
	    		  appenddata += "<td>"+data[i].para2+"</td>";*/
				appenddata += "<td>"+data[i].previousyear+"</td>";
				appenddata += "<td>"+data[i].modifiedDate+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=param' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_DBP"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";

	}
	$("#AdminBDP_tbody").empty();
	$('#AdminBDP_tbl').DataTable().clear().destroy();
	$("#AdminBDP_tbody").append(appenddata);
	$('#AdminBDP_tbl').DataTable();


	},
	error: function(data) {		
	$("#loading").hide();
	alert("No data found");

	}

	});
	})

//Database QC Delete

$(document).on("click", "a[id^=admin_DBP]", function() {
	var id = $(this).attr('data-id');
	var tr_id = $("tr[id^=adminDBP_row]").attr('data-id');
	//var status=false;
	var adminId = getAdminId();
	var admin = "admin";
	var  createdby= $("#createdby").val();

	var con = confirm("Are you Sure to delete?");

	  if(con == true){
		 
		$.ajax({
	  type: "GET",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/question/deletesqbquestion/'+id+'/'+adminId+'/'+admin, 
	  success: function(data){	  
		  if(data.status){
		 		alert(data.message);
		 		$("#adminDBP_row"+tr_id).remove();
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



//databasecount_academic get method 


function adminDBcount(){
	
	var appenddata;
	var adminid =getAdminId();
	
	$.ajax({
		url: base_url +'rest/admin/getdatabasecount/'+adminid,
		type:"GET",
		dataType:"JSON",
		contentType: 'application/json',
		beforeSend: function(){
			$("#adminDB_tbody").empty();
			$("#adminDB_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				  appenddata += "<tr "+data[i].subjectId+"><td>"+(i+1)+"</td><td>"+data[i].subject+"</td>";    
				  appenddata += "<td>"+data[i].totalcount+"</td>"; 
				  appenddata += "<td><a href='"+base_url+"jsp/admin/database/database_parameterwise_count.jsp?subid="+data[i].subjectId+"&tstcount="+data[i].totalcount+"' class='btn btn-primary' class='btn btn-success'>View</a></td>";
				  appenddata += "<td><a href='"+base_url+"jsp/admin/database/database_chapterwise_count.jsp?subid="+data[i].subjectId+"&tstcount="+data[i].totalcount+"' class='btn btn-danger'>View</a></td></tr>";
				
			}
			$("#adminDB_tbody").empty();
			$("#adminDB_tbody").append(appenddata);
			$("#adminDB_tbl").DataTable();
		},
		error : function(){
			alert("There is no data in database count");
		}
	});
	
	
}


//databasecount_academic get method 


//getting database count by filters
$('#dbSubmit').click(function(){
	var appenddata="";
	var adminid =getAdminId();
	//var category = $("#category").val();
	var standard = $("#standard").val();
	var difficultlevel = $("#difficultlevel").val();
	
	var adminDBC = {
			//"categoryId":category,
			"standardId":standard,
			"difficulty":difficultlevel,
			 "adminId":adminid
			};
var adminDBCd = JSON.stringify(adminDBC);

$.ajax({
	  type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url + 'rest/admin/v1/databasecountfilter',
	  data: adminDBCd,
	  beforeSend: function(){
			$("#adminDB_tbody").empty();
			$("#adminDB_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
	  success:function(data){
		  for(var i=0;i<data.length;i++){
			  appenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].subject+"</td>";    
			  appenddata += "<td>"+data[i].totalcount+"</td>"; 
			  appenddata += "<td><a href='"+base_url+"jsp/admin/database/database_parameterwise_count_filter.jsp?subid="+data[i].subjectId+"&tstcount="+data[i].totalcount+"&std="+standard+"&level="+difficultlevel+"' class='btn btn-primary' class='btn btn-success'>View</a></td>";
			  appenddata += "<td><a href='"+base_url+"jsp/admin/database/database_chapterwise_count_filter.jsp?subid="+data[i].subjectId+"&tstcount="+data[i].totalcount+"&std="+standard+"&level="+difficultlevel+"' class='btn btn-danger'>View</a></td></tr>";
		  }
		  
		  $("#adminDB_tbody").empty();
			$("#adminDB_tbody").append(appenddata);
			$("#adminDB_tbl").DataTable();
		  
		  $('.selectpicker').selectpicker('refresh');
	  },
	  error:function(data){
			$("#adminDB_tbody").html('<tr style="text-align:center"><td colspan="5">'+data.responseJSON.errorMessage+'</td></tr>');
		  
		 }
	  });
});
//getting database count by filters



//For getting Difficulty levels in academic head databasecount

/*function getSelectedDifficultLevels(val){
	var appenddata;
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	
	var difficultlevel =  {
		"categoryname":category,
		"examtype":examtype,
		"standard":standard
		}
var difficultlevelstr = JSON.stringify(difficultlevel);
	
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/question/getdifficultylevels',
		  data: difficultlevelstr,
		  success:function(data){
		      for(var i=0; i < data.length; i++){
					 
		    		
					var difficultname = data[i].name;
					appenddata += '<option value="'+difficultname+'">'
							+difficultname+'</option>';
				}
			$("#difficultlevel").prop("disabled", false);
	       jQuery("#difficultlevel").empty("");
			jQuery("#difficultlevel").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#difficultlevel").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
		  },
		  error:function(data){
			  alert("Error In All Difficult level Get");
		  }
	})
	
}*/

//For getting Difficulty levels in academic head databasecount


/*
 * Question Step 1 DEAN Module
 * 
 * */

function questionStep1(){
	$("#step1Btn").addClass('disablelink').removeClass('activatelink');
	/*var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();*/
	var questiontype = $("#questionType option:selected").val();
	
	var questionId = getParameterByName("id");

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
		    	var ref = getParameterByName('ref');
	  		    	
	  		    	if(ref !== "" && ref !== null){
	  		    		window.location = base_url+"jsp/admin/addquestions/upload_layout.jsp?id="+questionId+"&layout="+questiontype+"&ref="+ref;
	  		    	} else{
	  		    		window.location = base_url+"jsp/admin/addquestions/upload_layout.jsp?id="+questionId+"&layout="+questiontype;
	  		    	}
				
				//window.location = base_url+"jsp/dean/addquestions/upload_layout.jsp?ref="+ref+"&id="+questionId+"&layout="+questiontype;
		    }, // will be triggered before the toast gets hidden
		    afterHidden: function () {}  // will be triggered after the toast has been hidden
		});
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
		    	var cfdata = formDataForComprh('c',addedFields,trackSkipFields,"editmode");
		    	
		    } else if(multiComprh.test(layout)){
		    	
		    	var addedFields = parseInt($("#hckfields").val()) - 1;
		    	var trackSkipFields = $("#trackQH").val();
		    	var mcfdata = formDataForComprh('mc',addedFields,trackSkipFields,"editmode");
		    	
		    } 
		    
		    var step = 2;
	
	    var questionid =$("#questionId").val();
		
			
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
								//"questiontype":layout,
								"question":passage,
								"comprehensionDetails":cfdata,
								"id": questionid,
								"step": step,
								"updatedId":getAdminId(),
				  				"updatedBy":"admin"
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
				answer =  $('input[name="radio"]:checked').val();
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
								//"questiontype":layout,
								"question":passage,
								"comprehensionDetails":mcfdata,
								"id": questionid,
								"step": step,
								"updatedId":getAdminId(),
				  				"updatedBy":"admin"
							};
					}else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
					
				}
			} else if(matrix.test(layout)){
				var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
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
							"updatedId":getAdminId(),
			  				"updatedBy":"admin"
						};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}
			} else{

				
				if(intiRegex.test(layout)){
					var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
					
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
								"updatedId":getAdminId(),
				  				"updatedBy":"admin"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				} else{
					var check = checkEmptyForStep2("leavethis","leavethis",question,option1,option2,option3,option4,answer,solution,concept);
					
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
								"updatedId":getAdminId(),
				  				"updatedBy":"admin"
							};
					} else{
						$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
	  		  			$("#layout_back").addClass('activatelink').removeClass('disablelink');
						return false;
					}
				}
				
				
			}

	postquestion =  JSON.stringify(postquestion);
			 	
	 if(questionid !== "" && questionid !== null){
			 
		$.ajax({
			  url: url,
			  type: "POST",
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
		          	    	$("#saveBtn2").addClass('disablelink').removeClass('activatelink');
		          			$("#nextBtn2").addClass('disablelink').removeClass('activatelink');
		          			$("#layout_back").addClass('disablelink').removeClass('activatelink');
		          	    }, // will be triggered after the toat has been shown
		          	    beforeHide: function () {}, // will be triggered before the toast gets hidden
		          	    afterHidden: function () {}  // will be triggered after the toast has been hidden
	            	});
	            	 return false;
	             } else {
	            	 
	            	 
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
		          	    	
		          	    }, // will be triggered after the toat has been shown
		          	    beforeHide: function () {
		          	    	var ref = getParameterByName('ref');
	  		  		    	
	  		  		    	if(ref !== "" && ref !== null){
	  		  		    		window.location = base_url+"jsp/admin/addquestions/upload_parameters.jsp?id="+questionid+"&layout="+layout+"&ref="+ref;
	  		  		    	} else{
	  		  		    		window.location = base_url+"jsp/admin/addquestions/upload_parameters.jsp?id="+questionid+"&layout="+layout;
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
	var adminId = getAdminId();
	var updatedBy = "Admin";

	var admin_editmode = sessionStorage.getItem("admin_editmode");
	if(admin_editmode === "true"){

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
			updatedId:adminId,
			updatedBy:updatedBy
	};



	inputData = JSON.stringify(inputData);


	if(id !== "" && id !== null){

		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			url: url,
			data: inputData,
			success:function(data){
				if(data.status) {
					//alert(data.message);


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
							var ref = getParameterByName('ref');

							if(ref !== "" && ref !== null){
								window.location = base_url+"jsp/admin/addquestions/upload_preview.jsp?id="+id+"&layout="+layout+"&ref="+ref;
							} else{
								window.location = base_url+"jsp/admin/addquestions/upload_preview.jsp?id="+id+"&layout="+layout;
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

		window.history.back();
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
	var id = $("#questionId").val();
	var step = 4;


	var url = base_url+'rest/question/addquestion';
	var inputData = {
			"id" : id,
			"step" : step,
			"updatedId":getAdminId(),
			"updatedBy":"admin"
	};



	inputData = JSON.stringify(inputData);

	if(id !=="" && id !== null){
		$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			url: url,
			data: inputData,
			success:function(data){
				if(data.status) {

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

							var ref = getParameterByName('ref');

							if(ref === 'param'){ 
								window.location = base_url+"jsp/admin/database/by_parameters.jsp";

							} else if(ref === 'date'){ 
								window.location = base_url+"jsp/admin/database/by_date.jsp";

							} else if(ref === 'pvyear'){
								window.location = base_url+"jsp/admin/database/by_previous_year.jsp";

							} else if(ref === 'diflvl'){ 
								window.location = base_url+"jsp/admin/database/difficulty_level.jsp";

							} else if(ref === "delqs"){ 
								window.location = base_url+"jsp/admin/database/deleted_questions.jsp";

							}


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
		  window.history.back();
		  $("#preview_back").addClass('activatelink').removeClass('disablelink');
	  }
	}

	  /* END of addQuestionStep4() */

	  
	  $("#layout_back").click(function(){
			 var qid = $("#questionId").val();
			 var ref = getParameterByName('ref');
			 if(qid!=="" && ref !== null && ref !== ""){
				 window.location = base_url+"jsp/admin/addquestions/upload.jsp?id="+qid+"&ref="+ref;
	         } else {
	            window.location = base_url+"jsp/admin/addquestions/upload.jsp";
	         }
		 });
		 
		 $("#param_back").click(function(){
			 var qid = $("#questionId").val();
			 var layout = $("#layouthd").val();
			 var ref = getParameterByName('ref');
			 if(qid!=="" && ref !== null && ref !== ""){
				  window.location = base_url+"jsp/admin/addquestions/upload_layout.jsp?id="+qid+"&layout="+layout+"&ref="+ref;
	         } else {
	            	window.location = base_url+"jsp/admin/addquestions/upload.jsp";
	         }
		 });
		 
		 
		 
		 $("#preview_back").click(function(){
			 var qid = $("#questionId").val();
			 
			 var txt = $("#preview_back").text();
			 var layout = $("#layouthd").val();
			 var ref = getParameterByName('ref');
			 
			 if(qid !== "" && qid !== null && txt === "Back" && ref !== null && ref !== ""){
				 window.location = base_url+"jsp/admin/addquestions/upload_parameters.jsp?id="+qid+"&layout="+layout+"&ref="+ref;
	         } else if(qid !== "" && qid !== null && txt === "Edit"){
	        	 window.location = base_url+"jsp/admin/addquestions/upload.jsp?id="+qid;
	         } 
			 
		 });
		 
//database previous year getother comp examtypes
function getOtherExamtypes(val){
	
	
	var cattypename = $("#category").val();
	var examtypename = val;
	var standardname = $("#standard").val();
	
	 var inputData = {
			 "categoryId":cattypename,
			 "examtypeId":examtypename,
			 "standardId":standardname
			 }
	 var inputdata = JSON.stringify(inputData);
	 var appenddata="";
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/question/v1/getcompetativeExamtypes',
			  data: inputdata,
			  beforeSend: function() {
			        $("#loading").show();
			     },
			     success: function(data){
					  $("#loading").hide();
					  
					  for(var i=0; i < data.length; i++){
						  appenddata += '<option value="'+data[i]+'">'+data[i]+'</option>';
						 /* var examId = data[i].id;
							var examtype = data[i].name;
							appenddata += '<option value="'+examId+'">'+examtype+'</option>';*/
					  }
						
					  jQuery("#otherexamtype").empty("");
					  jQuery("#otherexamtype").append('<option value="">--- Select ---</option>');
					  jQuery("#otherexamtype").append(appenddata);
					  
					  $("#otherexamtype").prop("disabled", false);
					  
					  $('.selectpicker').selectpicker('refresh');
					  },
					  
					  error: function(data) {		
						  $("#loading").hide();
						  alert(data.responseJSON.errorMessage);

					  }
});
}	 


//Database get Difficulty level
function getDifficultylevel(){
	var appenddata;
	var id =getAdminId();
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getdatabasedifficultywise/'+id,
		beforeSend: function(){
			$("#difficultyleveltblbody").empty();
			$("#difficultyleveltblbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i < data.length; i++){
				appenddata += "<tr id='prevyr_row"+data[i].questionid+"' data-id='"+data[i].questionid+"'><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";    
				/*appenddata += "<td>"+data[i].examtype+"</td>";*/
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultylevel+"</td>";
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].previousyear+"</td>";
				appenddata += "<td>"+data[i].modifieddate+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=diflvl' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='difficulty_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";

			}

			$("#difficultyleveltblbody").empty();
			$("#difficultyleveltblbody").append(appenddata);
			$("#difficultyleveltbl").DataTable();
		},

		error: function(data) {		
			$("#loading").hide();
			alert(data.responseJSON.errorMessage);

 		  }
});
}

// database difficultylevel Delete
$(document).on("click", "a[id^=difficulty_delete]", function() {
   	var id = $(this).attr('data-id');
   	var tr_id = $("tr[id^=difficulty_delete]").attr('data-id');
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
			   		window.location = base_url+"jsp/admin/database/difficulty_level.jsp";

			   		//$("#dean_delete"+id).remove();
		  		  }
		  	  },
		  	  error: function(data){
		  		  alert(data.responseJSON.errorMessage);
			  }
		
  });
  }  
});


//Database difficulity level fillter
function difflevelfilter(){
	var appenddata ="";
	/*var cat = $("#category").val(); */
	var std = $("#standard").val();
	var exm = $("#examtype").val();
	var sub = $("#subject").val();
	var unt = $("#unit").val();
	var chp = $("#chapter").val();
	var topc = $("#topic").val();
	var difflevel = $("#difficultlevel").val();

	if(topc ==="" || topc === "Nothing Selected" || topc ==="---Select---" || topc === undefined || topc === null){
		topc = 0; 
	}
	if(difflevel === "" || difflevel === "Nothing Selected" || difflevel ==="---Select---" || difflevel ===undefined || difflevel ===null){
		difflevel = 0;
	}
	if(exm === "" || exm === "Nothing Selected" || exm ==="---Select---" || exm === undefined || exm ===null) {
		exm = 0;
	}
	var inputData = {

			/*"categoryId":cat,*/
			"standardId":std,
			"subjectId":sub,
			"examtypeId":exm,
			"unitId":unt,
			"chapterId":chp,
			"topicId":topc,
			"difficultylevelId":difflevel
	}
	var inpData = JSON.stringify(inputData);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/databasedifficultywisefilter',
		data: inpData,
		beforeSend: function() {
			$("#difficultyleveltblbody").empty();
			$("#difficultyleveltblbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i < data.length; i++){
				appenddata += "<tr id='prevyr_row"+data[i].questionid+"' data-id='"+data[i].questionid+"'><td>"+(i+1)+"</td>";    
				appenddata += "<td>"+data[i].questionFormatId+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultylevel+"</td>";
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].previousyear+"</td>";
				appenddata += "<td>"+data[i].modifieddate+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=diflvl' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_DBP"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";

			}

			$("#difficultyleveltblbody").empty();
			$('#difficultyleveltbl').DataTable().clear().destroy();
			$("#difficultyleveltblbody").append(appenddata);
			$("#difficultyleveltbl").DataTable();
		},

		error: function(data) {		
			$("#loading").hide();
			alert(data.responseJSON.errorMessage);

		}
	});
}

/*function getPreviousyear(){
	var appenddata="";
	var id =getAdminId();
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		
		  url: base_url +'rest/admin/getpreviousyear/'+id,
		  success:function(data){
			  for(var i=0; i < data.length; i++){
				  appenddata += "<tr id='prevyr_row"+data[i].questionid+"' data-id='"+data[i].questionid+"'><td>"+data[i].questionFormatId+"</td>";    
				  appenddata += "<td>"+data[i].examtype+"</td>";
				  appenddata += "<td>"+data[i].standard+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>";
				  appenddata += "<td>"+data[i].unit+"</td>";
				  appenddata += "<td>"+data[i].chapter+"</td>";
				  appenddata += "<td>"+data[i].topic+"</td>";
				  appenddata += "<td>"+data[i].typeofquestion+"</td>";
				  appenddata += "<td>"+data[i].difficultylevel+"</td>";
				  appenddata += "<td>"+data[i].previouyear+"</td>";
				  appenddata += "<td>"+data[i].othercompetitiveexamtype+"</td>";
				  appenddata += "<td>"+data[i].othercompertitiveexamyears+"</td>";
				  appenddata += "<td>"+data[i].modifieddate+"</td>";
				  appenddata += "<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
			  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=pvyear' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='prvyr_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				 
				    
				  }
				  $("#previous-year-tbody").empty();
				  $('#previous-year-table').DataTable().clear().destroy();
				  $("#previous-year-tbody").append(appenddata);
				    $('#previous-year-table').DataTable();
			  
		  },
		  error:function(){
			  alert("prevousyear page data not loaded !");			  
		  }
		 
});
}*/
function getPreviousyear(){
	var appenddata="";
	var id =getAdminId();
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		
		  url: base_url +'rest/admin/getpreviousyear/'+id,
			beforeSend: function(){
				$("#previous-year-tbody").empty();
				$("#previous-year-tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  for(var i=0; i < data.length; i++){
					appenddata += "<tr id='prevyr_row"+data[i].questionid+"' data-id='"+data[i].questionid+"'><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";    
					/*appenddata += "<td>"+data[i].examtype+"</td>";*/
					appenddata += "<td>"+data[i].standard+"</td>";
					appenddata += "<td>"+data[i].subject+"</td>";
					appenddata += "<td>"+data[i].unit+"</td>";
					appenddata += "<td>"+data[i].chapter+"</td>";
					appenddata += "<td>"+data[i].topic+"</td>";
					appenddata += "<td>"+data[i].typeofquestion+"</td>";
					appenddata += "<td>"+data[i].difficultylevel+"</td>";
					appenddata += "<td>"+data[i].previouyear+"</td>";
					appenddata += "<td>"+data[i].othercompetitiveexamtype+"</td>";
					//appenddata += "<td>"+data[i].othercompertitiveexamyears+"</td>";
					appenddata += "<td id='para'>";
					var ocey = data[i].othercompertitiveexamyears;
					var oceySplit = ocey.split(",");
					for(var p = 0;p<oceySplit.length;p++){
						var per = p%3;
						if((p+1) === oceySplit.length){
						  appenddata += "<span>"+oceySplit[p]+"</span>";
						}else if(per == 0 && p > 1){
					      appenddata += "<span>"+oceySplit[p]+", </span><br> ";
						}else{
						  appenddata += "<span>"+oceySplit[p]+", </span>";
						}
					}
					appenddata += "</td>";
					appenddata += "<td>"+data[i].modifieddate+"</td>";
					/*appenddata += "<td><a href='"+base_url+"jsp/admin/addquestions/upload_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
					"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='prvyr_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";*/
					appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
					"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=pvyear' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
					"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='prvyr_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				}
				  $("#previous-year-tbody").empty();
				  $('#previous-year-table').DataTable().clear().destroy();
				  $("#previous-year-tbody").append(appenddata);
				    $('#previous-year-table').DataTable();
			  
		  },
		  error:function(){
			  alert("prevousyear page data not loaded !");			  
		  }
		 
});
}
//Database by previousyear filter
function  byPrevsYrsFillter(){
	var appenddata="";
	/*var cat = $("#category").val();*/ 
	var std = $("#standard").val();
	/*var exm = $("#examtype").val();*/
	var sub = $("#subject").val();
	var unt = $("#unit").val();
	var chp = $("#chapter").val();
	var topc = $("#topic").val();
	var prvyr =$("#sltdyer").val();
//	var otherexmtype = $("#otherexamtype").val();
	var othrcompyr =$("#sltdyer1").val();

	if(topc === "" || topc === "Nothing Selected" || topc ==="---Select---" || topc === null ){
		topc = 0;
	}
	if(prvyr ==="" || prvyr === "Nothing Selected" || prvyr ==="---Select---" || prvyr === null){
		prvyr = 0;
	}
/*	if(otherexmtype ==="" || otherexmtype === "Nothing Selected" || otherexmtype ==="---Select---" || otherexmtype === null){
		otherexmtype = "";
	}*/
	if(othrcompyr ==="" || othrcompyr === "Nothing Selected" || othrcompyr ==="---Select---" || othrcompyr === null){
		othrcompyr = 0;
	}
	var inputData = {

			/*"categoryId":cat,*/
			"standardId":std,
			"subjectId":sub,
			/*"examtypeId":sub,*/
			"unitId":unt,
			"chapterId":chp,
			"topicId":topc,
			"previousYearId":prvyr,
			//"otherCompetativeExamType":otherexmtype,
			"otherCompetativeExamTypeYEAR" :othrcompyr
	}
	var inpData = JSON.stringify(inputData);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getpreviousyearByFilter',
		data: inpData,
		beforeSend: function() {
			$("#previous-year-tbody").empty();
			$("#previous-year-tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i < data.length; i++){
				appenddata += "<tr id='prevyr_row"+data[i].questionid+"' data-id='"+data[i].questionid+"'><td>"+(i+1)+"</td>";    
				appenddata += "<td>"+data[i].questionFormatId+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].typeofquestion+"</td>";
				appenddata += "<td>"+data[i].difficultylevel+"</td>";
				appenddata += "<td>"+data[i].previouyear+"</td>";
				appenddata += "<td>"+data[i].othercompetitiveexamtype+"</td>";
				appenddata += "<td>"+data[i].othercompertitiveexamyears+"</td>";
				appenddata += "<td>"+data[i].modifieddate+"</td>";
				/*appenddata += "<td><a href='"+base_url+"jsp/admin/addquestions/upload_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				//  "<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/academic_head/create_users/sme.jsp?id="+ data[i].id + "&userType=sme' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].photo+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='prvyr_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";*/
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=pvyear' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='prvyr_delete"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";


			}
			$("#previous-year-tbody").empty();
			$('#previous-year-table').DataTable().clear().destroy();
			$("#previous-year-tbody").append(appenddata);
			$('#previous-year-table').DataTable();

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	});
}


function getmainparamfilter(){
	var appenddata="";
	$.ajax({
	type: "GET",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/admin/sqb/getAllMainAndChapParameters',
	success:function(data){
	
			for(var i=0; i < data.length; i++){
				appenddata += "<option value="+data[i].paramIds+"  >"+data[i].paramterName+"</option>"
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

	   var sub = getParameterByName('subid');
	   var paraname = $('#Paramsexsf').find(":selected").text();
	   

	 inputData ={
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
			$("#parameterwisebody").empty();
			$("#parameterwisebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr><td>"+data[i].chapter+"</td>";  
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].parametercount+"</td>";
				

			}

			$("#parameterwisebody").empty();
			$("#parameterwisebody").append(appenddata);
			$("#parametrwisetbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})	
}


//admin database count parameterwisecount 

function getParameterwisecount(){
	var appenddata="";

	var adminid =getAdminId();

	   var sub = getParameterByName('subid');
	   var totlcount =getParameterByName('tstcount');
	 inputData ={
			 "subjectId": sub,
			 "adminId": adminid
	 }
	var inputdata = JSON.stringify(inputData);



	$.ajax({
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		url:base_url+'rest/academichead/v1/getparameterwisecount',
		data:inputdata,
		beforeSend: function() {
			$("#parameterwisebody").empty();
			$("#parameterwisebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr><td>"+data[i].chapter+"</td>";  
				appenddata += "<td>"+data[i].parameter+"</td>";
				appenddata += "<td>"+data[i].parametercount+"</td>";
				

			}

			$("#parameterwisebody").empty();
			$("#parameterwisebody").append(appenddata);
			$("#parametrwisetbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}


function getParameterwisecountfilter(){
	var appenddata="";

	var adminid =getAdminId();

	   var sub = getParameterByName('subid');
	   var totlcount =getParameterByName('tstcount');
	   var standard = getParameterByName('std');
	   var level = getParameterByName('level');
	 inputData ={
			 "subjectId": sub,
			 "adminId": adminid,
			 "standardId":standard,
	   "difficultylevelId":level
	 }
	var inputdata = JSON.stringify(inputData);



	$.ajax({
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		url:base_url+'rest/admin/getparameterwisecountByFilter',
		data:inputdata,
		beforeSend: function() {
			$("#loading").show();
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr  data-id='"+data[i].questionid+"'><td>"+data[i].chapter+"</td>";  
				appenddata += "<td>"+totlcount+"</td>";
				appenddata += "<td>"+data[i].parameter+"</td>";

			}

			$("#parameterwisebody").empty();
			$("#parameterwisebody").append(appenddata);
			$("#parametrwisetbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}



function getChapterwisecount(){
	var appenddata="";

	var adminid =getAdminId();

	   var sub = getParameterByName('subid');
	   var totlcount =getParameterByName('tstcount');
	 inputData ={
			 "subjectId": sub,
				 "adminId": adminid
	 }
	var inputdata = JSON.stringify(inputData);



	$.ajax({
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		url:base_url+'rest/academichead/v1/getchapterwisecount',
		data:inputdata,
		beforeSend: function() {
			$("#chpterwisebody").empty();
			$("#chpterwisebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td><td>"+data[i].chaptername+"</td>";  
				appenddata += "<td>"+data[i].total+"</td>";
				
				appenddata += "<td>"+data[i].layout2count+"</td>";
				
				appenddata += "<td>"+data[i].layout4count+"</td>";
				
				appenddata += "<td>"+data[i].layout7count+"</td>";
				appenddata += "<td>"+data[i].layout8count+"</td>";
				
				appenddata += "<td>"+data[i].layout11count+"</td>";
				appenddata += "<td>"+data[i].layout12count+"</td>";
			}

			$("#chpterwisebody").empty();
			$("#chpterwisebody").append(appenddata);
			$("#chpterwisetbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}


function getChapterwisecountfilter(){
	var appenddata="";

	var adminid =getAdminId();

	   var sub = getParameterByName('subid');
	   var totlcount =getParameterByName('tstcount');
	   var standard = getParameterByName('std');
	   var level = getParameterByName('level');
	 inputData ={
			 "subjectId": sub,
				 "adminId": adminid,
				 "standardId":standard,
				   "difficultylevelId":level
	 }
	var inputdata = JSON.stringify(inputData);



	$.ajax({
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		url:base_url+'rest/admin/getchapterwisecountfilter',
		data:inputdata,
		beforeSend: function() {
			$("#loading").show();
		},
		success:function(data){

			for (i=0;i<data.length;i++){
				appenddata += "<tr  data-id='"+data[i].questionid+"'><td>"+data[i].chaptername+"</td>";  
				appenddata += "<td>"+totlcount+"</td>";
			
				appenddata += "<td>"+data[i].layout2count+"</td>";
				
				appenddata += "<td>"+data[i].layout4count+"</td>";
				
				appenddata += "<td>"+data[i].layout7count+"</td>";
				appenddata += "<td>"+data[i].layout8count+"</td>";
				
				appenddata += "<td>"+data[i].layout11count+"</td>";
				appenddata += "<td>"+data[i].layout12count+"</td>";
			}

			$("#chpterwisebody").empty();
			$("#chpterwisebody").append(appenddata);
			$("#chpterwisetbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//Admin > Database > by date > GET
function GetAdminDBD(){
var appenddata="";
		$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/getdatabasebydate/1',
		beforeSend: function(){
			$("#AdminBD_tbody").empty();
			$("#AdminBD_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
		
				for(var i=0; i < data.length; i++){
				appenddata += "<tr id='adminBD_row"+data[i].questionid+"' data-id='"+data[i].questionid+"' ><td>"+(i+1)+"</td><td>"+data[i].questionFormatId+"</td>";
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
				appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
				"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=date' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_BD"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
				
				}
				
				$("#AdminBD_tbody").empty();
				$("#AdminBD_tbody").append(appenddata);
				$('#AdminBD_tbl').DataTable();
				
				},
		error:function(data){
			alert(data.responseJSON.errorMessage);		  
		}

});
}
//Admin > Database > by date > GET
$(document).on("click", "a[id^=admin_BD]", function() {
			var id = $(this).attr('data-id');
			var tr_id = $("tr[id^=adminBD_row]").attr('data-id');
			//var status=false;
			var  createdby= $("#createdby").val();
			var adminId = getAdminId();
			var admin = "admin";
			var con = confirm("Are you Sure to delete?");
			
			if(con == true){

				$.ajax({
				type: "GET",
				dataType: "json",
				contentType: 'application/json', 
				url: base_url+'rest/question/deletesqbquestion/'+id+'/'+adminId+'/'+admin, 
				
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
})
$('#AdminBDfilter').click(function(){
	/*var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();*/
	var standtypename = $("#standard").val();
	var date1 = $("#id-date-picker-1").val();
	var date1spl= date1.split("/");
	var date1spl1 = date1spl[1]+"-"+date1spl[0]+"-"+date1spl[2];
	
	var date2 = $("#id-date-picker-2").val();
	var date2spl= date2.split("/");
	var date2spl2 = date2spl[1]+"-"+date2spl[0]+"-"+date2spl[2];


		var inputdata = {
		"adminId":1,
		"fromdate": date1spl1,
		"todate":date2spl2,
		/*"categoryId":cattypename,
		"examtypeId":examtypename,*/
		"standardId":standtypename
		}
		var inpData = JSON.stringify(inputdata);
		
		var appenddata="";

			$.ajax({
			type: "POST",
			dataType: "json",
			contentType: 'application/json', 
			url: base_url+'rest/admin/getdatabasebydatefilter',
			data: inpData,
			beforeSend: function() {
				$("#AdminBD_tbody").empty();
				$("#AdminBD_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success: function(data){
			

				for(var i=0; i < data.length; i++){
					appenddata += "<tr id='adminBD_row"+data[i].questionid+"' data-id='"+data[i].questionid+"' ><td>"+(i+1)+"</td>";
					appenddata += "<td>"+data[i].questionFormatId+"</td>";
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
					appenddata +="<td><a href='"+base_url+"jsp/admin/addquestions/manual_question_preview.jsp?id="+data[i].questionid+"' class='btn btn-preview btn-icon-anim btn-circle mr-5' data-toggle='tooltip' data-original-title='Preview'>" +
					"<i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/admin/addquestions/upload.jsp?id="+data[i].questionid+"&ref=date' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].questionid+"' data-original-title='Edit'>" +
					"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='admin_BD"+data[i].questionid+"' data-id='"+data[i].questionid+"' data-toggle='tooltip' data-original-title='Delete'>" +"<i class='icon-trash font-18'></i></a></td></tr>";
					
					}
				$("#AdminBD_tbody").empty();//AdminBD_tbl   AdminBD_tbody
				$("#AdminBD_tbl").DataTable().clear().destroy();
				$("#AdminBD_tbody").append(appenddata);
				$("#AdminBD_tbl").DataTable();
				
				
				},
			error: function(data) {		
			$("#loading").hide();
			alert(data.responseJSON.errorMessage);
			$('#AdminBD_tbl').empty();

}

});
})


//Admin > database > by date > filter