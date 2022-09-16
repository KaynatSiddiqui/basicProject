/*$(document).ready(function() {

	getCategoriesByName();

});
 */


function setEditBtnCookie(id){

	setCookie("questionId",btoa(JSON.stringify(id)),1);
	//alert(data.message);
	window.location = base_url+"jsp/sme/addquestions/upload.jsp";


}


//For getting accept and reject questions

function Getaccept_rejectques(){
	var acc_rejappenddata;
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/v1/getsqbpendingacceptedquestions/'+getSmeId(),
		success:function(data){
			for(var i=0; i < data.length; i++){
				acc_rejappenddata += "<tr id='acc_rej_row"+data[i].question_id+"'><td>"+data[i].questionFormatId+"</td>";    
				/*acc_rejappenddata += "<td>"+data[i].category+"</td>";
				acc_rejappenddata += "<td>"+data[i].examtype+"</td>";*/
				acc_rejappenddata += "<td>"+data[i].standard+"</td>";
				acc_rejappenddata += "<td>"+data[i].subject+"</td>";
				acc_rejappenddata += "<td>"+data[i].unit+"</td>";
				acc_rejappenddata += "<td>"+data[i].chapter+"</td>";
				acc_rejappenddata += "<td>"+data[i].status+"</td>";
				acc_rejappenddata += "<td>"+data[i].questionstatus+"</td>";
				acc_rejappenddata += "<td><a href='"+base_url+"jsp/sme/addquestions/upload_preview.jsp?ref=sts&id="+data[i].question_id+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/sme/addquestions/upload.jsp?ref=sts&id="+data[i].question_id+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Edit'>" +
				"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='acc_rej_item' data-id='"+data[i].question_id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td></tr>";

			}
			$("#accept_reject_tbody").empty();
			 $('#accept_reject_tbl').DataTable().clear().destroy();
			$("#accept_reject_tbody").append(acc_rejappenddata);
			$('#accept_reject_tbl').DataTable();

		},
		error:function(){
			alert("Questions not found!");		  
		}

	});
}




// For getting accept and reject questions

//delete getting accept and reject questions

$(document).on("click", "a[id^=acc_rej_item]", function() {
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to delete?");
	var pon = confirm("Really are you Sure?");
	var SmeId = getSmeId();
	if(con == true){
		if(pon == true){

			$.ajax({
				type: "GET",
				contentType: 'application/json', 
				url: base_url+'rest/question/deletesqbquestion/'+id+'/'+SmeId+'/'+ "sme",
				success: function(data){	  
					if(data.status){
						alert(data.message);
						$("#acc_rej_row"+id).remove();
					}
				},

				error: function(data){
					alert(data.responseJSON.errorMessage);
				}

			});
		}
	  }
	});

//delete getting accept and reject questions

//for getting all type of question status in questions count		

function Getsmequescount()	{
	var allappenddata;
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/getsqbquestioncount/'+getSmeId(),
		success:function(data){
			for(var i=0; i < data.length; i++){

				allappenddata += "<tr><td>"+data[i].id+"</td>";
				/*allappenddata += "<td>"+data[i].examtype+"</td>";*/
				allappenddata += "<td>"+data[i].standard+"</td>";
				allappenddata += "<td>"+data[i].subject+"</td>";
				allappenddata += "<td>"+data[i].chapter+"</td>";
				allappenddata += "<td>"+data[i].topic+"</td>";
				allappenddata += "<td>"+data[i].pending+"</td>";
				allappenddata += "<td>"+data[i].rejected+"</td>";
				allappenddata += "<td>"+data[i].approved+"</td></tr>";

			}

			$("#smequescount_tbody").empty();
			/* $('#smequescount_tbl').DataTable().clear().destroy();*/
			$("#smequescount_tbody").append(allappenddata);
			$("#smequescount_tbl").DataTable();

		},
		error:function(){
			alert("Questions not found!");	  
		}

	});
}



//for getting all type of question status in questions count









// Question status From date, to date filter method 

var btncl = true;
function submitStatus(){

	if(btncl){
		btncl = false;

		var  status= $("#statusType").val();
		var  fromDate= $("#datepicker").val();
		var  toDate= $("#datepicker1").val();

		if(status == "")
		{
			alert("Please select status");
			btncl = true;
			return false;
		}
		else  if(fromDate == "")
		{
			alert("Please select From data ");
			btncl = true;
			return false;
		}
		else  if(toDate == "")
		{
			alert("Please select To data ");
			btncl = true;
			return false;
		}else{

			var inputData = '{"status":"'+status+'","fromdate":"'+fromDate+'","todate":"'+toDate+'","smeid":"'+getSmeId()+'"}';
			var appenddata="";
			$.ajax({
				url:  base_url+'rest/question/v1/getsqbquestionsfilter' ,
				type:"POST",
				dataType: "json",
				contentType: 'application/json',
				data:inputData,
				success: function(data){
					btncl = true;

					for(var i=0; i < data.length; i++){

						appenddata += "<tr id='acc_rej_row"+data[i].question_id+"'><td>"+data[i].questionFormatId+"</td>";
						/*appenddata += "<td>"+data[i].category+"</td>"; 
						appenddata += "<td>"+data[i].examtype+"</td>"; */
						appenddata += "<td>"+data[i].standard+"</td>";
						appenddata += "<td>"+data[i].subject+"</td>";
						appenddata += "<td>"+data[i].unit+"</td>";
						appenddata += "<td>"+data[i].chapter+"</td>";
						appenddata += "<td>"+data[i].status+"</td>";
						appenddata += "<td>"+data[i].questionstatus+"</td>";

						appenddata += "<td><a href='"+base_url+"jsp/sme/addquestions/upload_preview.jsp?ref=sts&id="+data[i].question_id+"' class='btn btn-preview btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-original-title='Preview'><i class='fa fa-plus-square-o font-18 mt-10'></i></a><a href='"+base_url+"jsp/sme/addquestions/upload.jsp?ref=sts&id="+data[i].question_id+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].question_id+"' data-original-title='Edit'>" +
						"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='acc_rej_item' data-id='"+data[i].question_id+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td></tr>";

					}

					$("#accept_reject_tbody").empty();
					 $('#accept_reject_tbl').DataTable().clear().destroy();
					$("#accept_reject_tbody").append(appenddata);
					$("#accept_reject_tbl").DataTable();

						      },
						      error:function(data){
						    	  btncl = true;
						    	  alert("Questions not found!");
						    	  $("#accept_reject_tbody").empty();
								 // $("#accept_reject_tbody").clear();
						    	 
						      }
							
						});
					  
				  }
				  
			  }
				
		  }	
		  
		  
		  //	
		  
		  function questionCount(){

	/*var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();*/
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var smeid = getSmeId();

	var inputData = '{"standardId":"'+standardname+'","subjectId":"'+subjectname+'","smeid":"'+smeid+'"}';


	var appenddata;
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/v1/getsqbquestioncountbyfilter',
		data: inputData,
		beforeSend: function() {
			$("#loading").show();
		},
		success: function(data){
			$("#loading").hide();

			for(var i=0; i < data.length; i++){

				appenddata += "<tr ><td>"+data[i].id+"</td>";
				/*appenddata += "<td>"+data[i].examtype+"</td>"; */
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].pending+"</td>";
				appenddata += "<td>"+data[i].rejected+"</td>";
				appenddata += "<td>"+data[i].approved+"</td>";

			}

			$("#smequescount_tbody").empty();
			/* $('#smequescount_tbl').DataTable().clear().destroy();*/
			$("#smequescount_tbody").append(appenddata);
			$("#smequescount_tbl").DataTable();

		},
		error: function(data) {		
			$("#loading").hide();
			alert(data.responseJSON.errorMessage);

		}

	});
}


function refResolver(r){
	switch(r){
	case 'sts':
		return 'questionstatus/status.jsp';
	case 'add':
		return 'addquestions/upload.jsp';
	}
}

/*
 * Add Question Step 1 SME Module
 * 
 * */

function addQuestionStep1(){

	$("#step1Btn").addClass('disablelink').removeClass('activatelink');

	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	//var topicId = $("#topic").val();
	var questiontypeVal = $("#questionType").val();
	var questiontype = $("#questionType").children("option").filter(":selected").text();
	//var questiontype = $("#questionType option:selected").data("name");
	
	var layoutFormat = getParameterByName('layout');
	
	var SmeId = getSmeId();
	var inputData;

	/*if( category == "" || category == "--- Select ---" )
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
	else*/ if(standard == "" || standard == "--- Select ---" )
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
	/*else if(topicId=="" || topicId == "--- Select ---")
	{

		alert("Please Select Topics");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}*/
	else if(questiontype=="" || questiontype == "--- Select ---")
	{

		alert("Please Select Question Type");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	} else{


		var editmode = sessionStorage.getItem("editmode");
		if(editmode !== "true"){
			var loginData = getLoginData();
			var utp = loginData.userType;
			layoutFormat = questiontypeVal;
			var url = base_url+'rest/question/addquestion';
			inputData = {
					"categoryId" : category,
					"standardId" : standard,
					"subjectId" : subject,
					"unitId" : unit,
					"chapterId" : chapter,
					//"topicId":topicId,
					"questiontype" : questiontypeVal,
					"smeid" : SmeId,
					"insertedBydesignation": utp,
					"step" : 1,
					"dean":false,
					"updatedId":SmeId,
	  				"updatedBy":"SME"
			};
		} else{
			sessionStorage.setItem("editmode", true);
			var url = base_url+'rest/question/updatesqbquestion';
			var qidd =$("#questionId").val();
			layoutFormat = $("#layoutformat").val();
			inputData = {
					"categoryId" : category,
					"standardId" : standard,
					"subjectId" : subject,
					"unitId" : unit,
					//"topicId":topicId,
					"chapterId" : chapter,
					"questiontype" : questiontypeVal,
					"smeid" : SmeId,
					"step" : 1,
					"id":qidd,
					"updatedId":SmeId,
	  				"updatedBy":"SME"
			};

		}

		console.log("step 1 request data: "+inputData);
		inputData = JSON.stringify(inputData);

		console.log("Before Step 1 AJAX Call");
		$.ajax({
			type: "POST",
			dataType: "json",
			cache:false,
			contentType: 'application/json', 
			url: url,
			data: inputData,
			success:function(data){
				
				if(data.status) {

					//setCookie("questionId",btoa(JSON.stringify(data.questionId)),1);
					//alert(data.message);
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
							if(ref!=="" && ref !== null){
								window.location = base_url+"jsp/sme/addquestions/upload_layout.jsp?ref="+ref+"&id="+data.questionId+"&layout="+layoutFormat;
							} else {
								window.location = base_url+"jsp/sme/addquestions/upload_layout.jsp?ref=add&id="+data.questionId+"&layout="+layoutFormat;
							}



						}, // will be triggered before the toast gets hidden
						afterHidden: function () {}  // will be triggered after the toast has been hidden
					});



				} else {

					//alert("Error! Unable to send options!");


					$.toast({
						text: "Step 1 Error!", // Text that is to be shown in the toast
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
							$("#step1Btn").addClass('activatelink').removeClass('disablelink');
						}, // will be triggered after the toat has been shown
						beforeHide: function () {}, // will be triggered before the toast gets hidden
						afterHidden: function () {

						}  // will be triggered after the toast has been hidden
					});
					return false;

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

}

/* END of addQuestionStep1() */




/*
 * Add Question Step 2 SME Module
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
	var SmeId = getSmeId();
	
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


	var editmode = sessionStorage.getItem("editmode");
	if(editmode !== "true"){
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
						"question":passage,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"step": step,
						"updatedId":SmeId,
		  				"updatedBy":"SME"
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
						"question":passage,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"step": step,
						"updatedId":SmeId,
		  				"updatedBy":"SME"
				};
				}else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
					$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
					$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}
			}

		} else if(matrix.test(layout)){

			//matrix layout
		//	var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
			var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
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
						"updatedId":SmeId,
		  				"updatedBy":"SME"
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
				var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
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
							"updatedId":SmeId,
			  				"updatedBy":"SME"
					};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
					$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
					$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}

			}else{
			//	var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution,concept);
				var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution);
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
							"updatedId":SmeId,
			  				"updatedBy":"SME"
					};
				} else {
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
						"question":passage,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"step": step,
						"updatedId":SmeId,
		  				"updatedBy":"SME"
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
						"question":passage,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"step": step,
						"updatedId":SmeId,
		  				"updatedBy":"SME"
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
			var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);
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
						"updatedId":SmeId,
		  				"updatedBy":"SME"
				};
			} else{
				$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
				$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
				$("#layout_back").addClass('activatelink').removeClass('disablelink');
				return false;
			}

		} else{

			if(intiRegex.test(layout)){
				// integer layout; has no options fields
			//	var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution,concept);
				var check = checkEmptyForStep2(instructions,"leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,solution);

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
							"updatedId":SmeId,
			  				"updatedBy":"SME"
					};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
					$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
					$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}

			} else{
				//var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution,concept);
				var check = checkEmptyForStep2(instructions,"leavethis",question,option1,option2,option3,option4,answer,solution);
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
							"updatedId":SmeId,
			  				"updatedBy":"SME"
					};

				} else {
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
					$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
					$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return check;
				}
			}



		}



	}

	console.log("Step 2 request data: "+postquestion);
	postquestion =  JSON.stringify(postquestion);
	console.log("Before Step 2 AJAX Call");	
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
					console.log("Inside Step 2 AJAX Success");
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

								window.location = base_url+"jsp/sme/addquestions/upload_parameters.jsp?ref="+ref+"&id="+questionid+"&layout="+layout;


								$("#layout_back").addClass('activatelink').removeClass('disablelink');

							}, // will be triggered before the toast gets hidden
							afterHidden: function () {

							}  // will be triggered after the toast has been hidden
						});

					}

				}
			},
			error:function () {
				//alert("Step2 updation failed!");
				console.log("Inside Step 2 AJAX Error");
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
		sessionStorage.setItem("editmode", false);

		$("#layout_back").addClass('activatelink').removeClass('disablelink');
		window.location = base_url+"jsp/sme/addquestions/upload.jsp";

	}

}

/* END of addQuestionStep2() */


/*
 * Add Question Step 3 SME Module
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
	var SmeId = getSmeId();

	var editmode = sessionStorage.getItem("editmode");
	if(editmode !== "true"){
		
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
				obj["years"] = prevyear;
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
				updatedId:SmeId,
  				updatedBy:"SME"
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
		
		//exam and years
		/*var examYears =[];
		var exam = parseInt($("#prevyears_exam").val());
		var examyear = $("#prevyears_year").val();
		var prevrowid = parseInt($("#prevyears_exam").data('rowid'));
		
		
		if(exam === "" || exam === null || exam === undefined || examyear === "" || examyear === null || examyear === undefined){
			if(prevrowid > 0){
				var examyear2 = examyear.map(Number);
				var obj = {};
				obj["examtypeId"] = exam;
				obj["years"] = examyear2;
			    obj["active"] = false;
				obj["previousYearsListId"] = prevrowid;
				examYears.push(obj);
			} 
			
		} else{
			
			var examyear2 = examyear.map(Number);
			var obj = {};
			obj["examtypeId"] = exam;
			obj["years"] = examyear2;
			obj["active"] = true;
			obj["previousYearsListId"] = prevrowid;
			examYears.push(obj);
		}*/
		
		
			
		
		
		
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
				updatedId:SmeId,
  				updatedBy:"SME"
		};
	}

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

							window.location = base_url+"jsp/sme/addquestions/upload_preview.jsp?ref="+ref+"&id="+id+"&layout="+layout;

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

/* END of addQuestionStep3() */



/*
 * Add Question Step 4 SME Module
 * 
 * */

function addQuestionStep4(){

	/*var belong_topic = $("#belongsTo").text();
		  	var difficulty_level = $("#difficulty").text();
		  	//$('input[name=name_of_your_radiobutton]:checked').val();

		  	var conceptual = $('#conceptual').is(':checked');
		  	var numerical = $('#numerical').is(':checked');
		  	var graph = $('#graph').is(':checked');
		  	var comments = $("#commentsp").text();
		  	var valuation = $('#valuation').is(':checked');
		  	var previouyear_mainquestions = $("#previousyear1").text();*/


	/* 	var other_competitiveexams = $("#examcategory").text();
		  	var other_competitiveexams_year = $("#previousyear2").text();
		  	var veryimpquestion = $("#veryimpquestion").is(':checked');*/

	$("#saveBtn4").addClass('disablelink').removeClass('activatelink');
	$("#preview_back").addClass('disablelink').removeClass('activatelink');


	var id = $("#questionId").val();
	var step = 4;
	var SmeId = getSmeId();
	
	var editmode = sessionStorage.getItem("editmode");
	if(editmode !== "true"){
		var url = base_url+'rest/question/addquestion';
		var inputData = {
				"id" : id,
				"step" : step,
				"updatedId":SmeId,
				"updatedBy":"SME"
		};
	} else{					
		var url = base_url+'rest/question/updatesqbquestion';
		var inputData = {
				"id" : id,
				"step" : step,
				"updatedId":SmeId,
				"updatedBy":"SME"
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
				console.log("Inside Step 4 AJAX Success");
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

							sessionStorage.setItem("editmode", false);
							window.location = base_url+"jsp/sme/"+refResolver(ref);

						}, // will be triggered before the toast gets hidden
						afterHidden: function () {}  // will be triggered after the toast has been hidden
					});


				} else {
					//alert("Error! Unable to send options!");
					$.toast({
						text: data.message, // Text that is to be shown in the toast
						heading: "Step 4 Error!", // Optional heading to be shown on the toast
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
					return false;
				}

			},
			error:function(){
				console.log("Inside Step 4 AJAX Error");
				//alert("Step4 updation failed!");
				$.toast({
					text: "Step 4 Error!", // Text that is to be shown in the toast
					heading: 'Step4 updation failed!', // Optional heading to be shown on the toast
					icon: 'error', // Type of toast icon
					showHideTransition: 'plain', // fade, slide or plain
					allowToastClose: true, // Boolean value true or false
					hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
					stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
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
		sessionStorage.setItem("editmode", false);
		window.location = base_url+"jsp/sme/addquestions/upload.jsp";
		$("#preview_back").addClass('activatelink').removeClass('disablelink');
	}
}

/* END of addQuestionStep4() */
/*
 * Get question data by id
 * 
 * returns whole question data
 *
 **/




$("#layout_back").click(function(){
	var qid = $("#questionId").val();
	var ref = getParameterByName('ref');

	if(qid!==""){
		sessionStorage.setItem("editmode", true);
		window.location = base_url+"jsp/sme/addquestions/upload.jsp?ref="+ref+"&id="+qid;
	} else {
		window.location = base_url+"jsp/sme/addquestions/upload.jsp";
	}
});

$("#param_back").click(function(){
	var qid = $("#questionId").val();
	var layout = $("#layouthd").val();
	var ref = getParameterByName('ref');
	if(qid!==""){
		sessionStorage.setItem("editmode", true);
		window.location = base_url+"jsp/sme/addquestions/upload_layout.jsp?ref="+ref+"&id="+qid+"&layout="+layout;
	} else {
		window.location = base_url+"jsp/sme/addquestions/upload.jsp";
	}
});



$("#preview_back").click(function(){
	var qid = $("#questionId").val();

	var txt = $("#preview_back").text();
	var layout = $("#layouthd").val();
	var ref = getParameterByName('ref');
	if(qid !== "" && qid !== null && txt === "Back"){
		sessionStorage.setItem("editmode", true);
		window.location = base_url+"jsp/sme/addquestions/upload_parameters.jsp?ref="+ref+"&id="+qid+"&layout="+layout;
	} else if(qid !== "" && qid !== null && txt === "Edit"){
		sessionStorage.setItem("editmode", true);
		window.location = base_url+"jsp/sme/addquestions/upload.jsp?ref="+ref+"&id="+qid;
	} else {
		sessionStorage.setItem("editmode", false);
		window.location = base_url+"jsp/sme/addquestions/upload.jsp";
	}

});



