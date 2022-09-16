/*$("#subjts").on("click",'a',function(){
		$("#subjts a").not(this).removeClass("btn-outline fancy-button btn-0").addClass("btn-outline fancy-button btn-0");
		$(this).removeClass("btn-outline fancy-button btn-0");
	});*/
function getQuestionTypeByCategoryName(indx){
	if(indx === undefined){
		var cattypename = $("#category").val();
		var examtype = $("#examtype").val();
		var standard = $("#standard").val();
		var subject = $("#subject").val();
	}else{
		var cattypename = $("#category"+indx).val();
		var examtype = $("#examtype"+indx).val();
		var standard = $("#standard"+indx).val();
		var subject = $("#subject"+indx).val();
	}



	var inputData = '{"category":"'+cattypename+'", "examtype":"'+examtype+'","subject":"'+subject+'","standard":"'+standard+'"}';

	var appenddata;
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/questionType/getQuestionTypefilter',
		data: inputData,
		beforeSend: function() {
			$("#loading").show();
		},
		success: function(data){
			$("#loading").hide();
			for(var i=0; i < data.length; i++){
				var name = data[i].name;
				var id = data[i].id;

				appenddata += '<option value="'+id+'">'
				+name+'</option>';

			}
			if(indx === undefined){
				jQuery("#questionType").empty("");
				jQuery("#questionType").append('<option value="">--- Select ---</option>');
				jQuery("#questionType").append(appenddata);

				$("#questionType").prop("disabled", false);
			}else{
				jQuery("#questionType"+indx).empty("");
				jQuery("#questionType"+indx).append('<option value="">--- Select ---</option>');
				jQuery("#questionType"+indx).append(appenddata);

				$("#questionType"+indx).prop("disabled", false);
			}

			$('.selectpicker').selectpicker('refresh');
		},
		error: function(data) {		
			$("#loading").hide();

			console.log(data);
		}

	});
}

var formatw = true;

$(document).on('keyup', "input[type='text']",function () {
	var val = $(this).val();

	var regex = /^[0-9]+(,[0-9]+)*$/;
	if(regex.test(val)){
		var sp = val.split(',');
		var sum = 0;
		for(var ip=0;ip<sp.length;ip++){
			sum += parseInt(sp[ip]); 
		}
		formatw = false;
		$(this).next('.infotxt').html("Total = "+ sum);

	} else{
		formatw = true;
		$(this).next('.infotxt').html('Error! Wrong Format');

	}



});

function checkAllEmpty(fields){

	if(parseInt(fields)>1 && elemsAttachedIdArray.length > 0){
		var flag = false;
		for(var jk = 1;jk<=fields;jk++){

			if(elemsAttachedIdArray.indexOf(jk) !== -1){
				if(checkEmpty(jk+1)){
					flag = true;
					continue;
				} else{
					flag = false;
					break;
				}
			}
		}
		return flag;
	} else{
		return checkEmpty(fields);
	}

}

//admin - TestPost - Manual - (Post) method

function manualPost(){
	var id = getParameterByName('id');
	if(id !== "" && id !== null){
		window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+id;
	} else{
		var category = $("#category").val();
		var examtype = $("#examtype").val();
		var standards = $("#standard").val();
		var subject = $("#subject").val();
		var typeofquestions = $("#questionType option:selected").data("name");
		var typeofquestionsId = $("#questionType").val();
		var numberofquestion =$("#numberofquestion").val();
		var maincount = $("#numberofquestion").val();
		var questionCompleteStatus ="Pending";

		var sections;
		if(sectionAvail){
			var sect = $("#section").val();
			sections = sect;
		} else {
			sections = "";
		}

		if(checkAllEmpty(fields)){


			var comprh = /(_8_|_9_|_10_)/;
			var multiComprh = /_11_/;
			var osum = 0;

			if(comprh.test(typeofquestions)){
				osum = 0;
				var onumVal = numberofquestion;
				var snumVal = onumVal.split(',');

				for(var ops = 0;ops<snumVal.length;ops++){
					snumVal[ops] = parseInt(snumVal[ops]);
					osum += snumVal[ops];
				}

				onumVal = snumVal;
			} else if(multiComprh.test(typeofquestions)){
				osum = 0;
				var onumVal = numberofquestion;
				var snumVal = onumVal.split(',');

				for(var ops = 0;ops<snumVal.length;ops++){
					snumVal[ops] = parseInt(snumVal[ops]);
					osum += snumVal[ops];
				}

				onumVal = snumVal;
			} else{
				osum = 0;
				var snumVal = numberofquestion;
				snumVal = [parseInt(snumVal)];
				osum += snumVal[0];
			}


			var tempArr = [{
				"examtypeId":examtype,
				"standardId":standards,
				"subjectId":subject,
				"sectionId":sections,
				"questionTypeId":typeofquestionsId,
				"typeOfQuestions":typeofquestions,
				'numberOfQuestionsList': snumVal 
			}];



			var total = parseInt(osum);


			var arr = elemsAttachedIdArray;

			for(var h = 0;h<arr.length;h++){

				var typeOfQuestion = $("#questionType"+arr[h]+" option:selected").data("name");


				var sum = 0;
				if(comprh.test(typeOfQuestion)){
					sum = 0;
					var numVal = $("#numberofquestion"+arr[h]).val();
					var snumVal = numVal.split(',');

					for(var ps = 0;ps<snumVal.length;ps++){
						snumVal[ps] = parseInt(snumVal[ps]);
						sum += snumVal[ps];
					}

					numVal = snumVal;
				} else if(multiComprh.test(typeOfQuestion)){
					sum = 0;
					var numVal = $("#numberofquestion"+arr[h]).val();
					var snumVal = numVal.split(',');

					for(var ps = 0;ps<snumVal.length;ps++){
						snumVal[ps] = parseInt(snumVal[ps]);
						sum += snumVal[ps];
					}

					numVal = snumVal;
				} else{
					sum = 0;
					var snumVal = $("#numberofquestion"+arr[h]).val();
					snumVal = [parseInt(snumVal)];
					sum += snumVal[0];
				}


				total += parseInt(sum);

				var tempObj = {
						"examtypeId":$("#examtype"+arr[h]).val(),
						"standardId":$("#standard"+arr[h]).val(),
						"subjectId":$("#subject"+arr[h]).val(),
						"questionTypeId":$("#questionType"+arr[h]).val(),
						"typeOfQuestions":typeOfQuestion,
						'numberOfQuestionsList': snumVal
				};

				if(sectionAvail){
					var sec = $("#section"+arr[h]).val();
					tempObj["sectionId"] = sec;
				} else {
					tempObj["sectionId"] = "";
				}

				tempArr.push(tempObj);
			}


		}


		var inputData ={
				"categoryId": category,
				"examtypeId": 0,
				"questionCompleteStatus":questionCompleteStatus,
				"numberOfQuestions": total+"",
				"testpostdetails" : tempArr	
		};
		inputData = JSON.stringify(inputData);
		var  appenddata;

		$.ajax({
			url:  base_url+'rest/testpost/v1/create',
			type:"POST",
			dataType: "json",
			contentType: 'application/json',
			data:inputData,
			success: function(data){
				$("#loading").hide();

				window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+data.testPostId;
			},
			error: function(data){
				alert(data.responseJSON.errorMessage);
			}
		});

	}

}





var allmodify = true;
function manualPostById(callback){
	var inputData ={
			"testPostId":getParameterByName('id')
	};
	inputData = JSON.stringify(inputData);
	var  appenddata;

	$.ajax({
		url:  base_url+'rest/testpost/v1/getTestPost2',
		type:"POST",
		dataType: "json",
		contentType: 'application/json',
		data:inputData,
		beforeSend: function(){
			$("#manual_post_body").empty();
			$("#manual_post_body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success: function(data){
			$("#loading").hide();
			var questions = data.questions;
			var indx = 1;
			for (var j = 0; j < questions.length; j++){
				// for(var i=0; i < questions[j].numberOfQuestions; i++){

				appenddata += "<tr><td>"+(j+1)+"</td><td>"+questions[j].questionId+"</td><td>"+data.category+"</td>";
				appenddata += "<td>"+questions[j].examType+"</td>";
				appenddata += "<td>"+questions[j].standard+"</td>";
				appenddata += "<td>"+questions[j].subject+"</td>";
				// appenddata += "<td>"+questions[j].questions[i].chapter+"</td>";
				if(questions[j].chapter == ""){
					appenddata += "<td>----</td>";
				}else{
					appenddata += "<td>"+questions[j].chapter+"</td>";
				}
				//appenddata += "<td>CH"+j+"</td>";
				appenddata += "<td>"+questions[j].section+"</td>";
				appenddata += "<td>"+questions[j].typeOfQuestion+"</td>";
				var nuofq = questions[j].numberOfQuestions;

				if(nuofq===1){
					appenddata += "<td> Q"+(indx)+"</td>";
					indx++;
				} else{
					appenddata += "<td>";
					for(var qi=0;qi<nuofq;qi++){
						if((nuofq-1)===qi){
							appenddata += " Q"+indx;
						} else{
							appenddata += " Q"+indx+",";
						}

						indx++;
					}
					appenddata += "</td>";
				}




				if(questions[j].questionId == 0){

					appenddata += "<td class='btndisable'><a  class='btn btn-primary btn-rounded status_btn' href ='"+base_url+"jsp/admin/test_post/addquestions/upload.jsp?tid="+data.testPostId+"&sub="+questions[j].subject+"&testPostId="+questions[j].testPostDetailId+"&layout="+questions[j].typeOfQuestion+"&qno="+(j+1)+"&std="+questions[j].standard+"&nuofq="+nuofq+"&layoutname="+questions[j].layoutName+"&stdId="+questions[j].standardId+"&subId="+questions[j].subjectId+"&layoutId="+questions[j].typeOfQuestionId+"&etp="+questions[j].examType+"&etpId="+questions[j].examtypeId+"'>ADD</a></td>";
					appenddata += "<td><a href ='#'><span class='btn btn-primary btn-rounded status_btn'>PREVIEW</span></a></td>";
					allmodify = false;
				}else{
					//appenddata += "<td>"+questions[j].questionId+"</td>";

					appenddata += "<td class='btndisable'><a  class='btn btn-primary btn-rounded status_btn' href ='"+base_url+"jsp/admin/test_post/addquestions/upload.jsp?id="+questions[j].questionId+"&tid="+data.testPostId+"&ion=mdg&qno="+(j+1)+"&nuofq="+nuofq+"&layoutname="+questions[j].layoutName+"&layout="+questions[j].typeOfQuestion+"&layoutId="+questions[j].typeOfQuestionId+"'>Modify</a></td>";
					appenddata += "<td><a href ='"+base_url+"jsp/admin/test_post/manual_question_preview.jsp?id="+questions[j].questionId+"&tid="+data.testPostId+"&layout="+questions[j].typeOfQuestion+"&layoutname="+questions[j].layoutName+"&layoutId="+questions[j].typeOfQuestionId+"'><span class='btn btn-primary btn-rounded status_btn'>PREVIEW</span></a></td>";
				}
				appenddata += "<td>"+questions[j].questionCompleteStatus+"</td></tr>";
				/*	    			  appenddata += "<td>"+questions[j].questions[i].questionId+"</td>";
				 */	    		


				//appenddata += "<td><a href ='"+base_url+"jsp/admin/test_post/manual_question_preview.jsp><span class='btn btn-primary btn-rounded status_btn'>PREVIEW</span></a></td>";
				//  }

			}


			$("#manual_post_body").empty();
			$('#manual_post_Table').DataTable().clear().destroy();
			$("#manual_post_body").append(appenddata);
			$("#manual_post_Table").DataTable();

			if(!allmodify){
				$("#nextBtnPost").addClass('disabled').removeAttr("href");
			}


			if(callback){
				callback(data);
			}


		},
		error: function(data){
			alert(data.responseJSON.errorMessage);
			$("#manual_post_body").html('<tr><td class="center" colspan="14">No Data Available :(</td></tr>');
		}

	})

}

function manualPostByIdv1(callback){
	var inputData ={
			"testPostId":getParameterByName('id')
	};
	inputData = JSON.stringify(inputData);

	$.ajax({
		url:  base_url+'rest/testpost/v1/getTestPost',
		type:"POST",
		dataType: "json",
		contentType: 'application/json',
		data:inputData,
		success: function(data){
			$("#loading").hide();

			if(callback){
				callback(data);
			}


		},
		error: function(data){
			alert(data.responseJSON.errorMessage);
		}

	})

}


/*function manualPreviewByIdv1(callback){
	var inputData ={
			"testPostId":getParameterByName('id')
	};
	inputData = JSON.stringify(inputData);

	$.ajax({
		url:  base_url+'rest/testpost/getTestPost',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
			  $("#loading").hide();

			  if(callback){
				  callback(data);
			  }


		  },
			 error: function(data){
				 alert(data.responseJSON.errorMessage);
			 }

		 })

}*/

function checkEmpty(indx){

	if(parseInt(indx) > 1){
		var category = $("#category"+(indx-1)).val();
		var examtype = $("#examtype"+(indx-1)).val();
		var standards = $("#standard"+(indx-1)).val();
		var subject = $("#subject"+(indx-1)).val();
		/*var sections = $("#section"+(indx-1)).val();*/
		var typeofquestions = $("#questionType"+(indx-1)).val();
		var numberofquestion = $("#numberofquestion"+(indx-1)).val();
	} else{
		var category = $("#category").val();
		var examtype = $("#examtype").val();
		var standards = $("#standard").val();
		var subject = $("#subject").val();
		/*var sections =$("#section").val();*/
		var typeofquestions = $("#questionType").val();
		var numberofquestion =$("#numberofquestion").val();
	}


	if(category == "--- Select ---" || category =="" || category==null){
		alert("Please select an category");
		return false;
	} else if(standards == "" || standards=="--- Select ---" || standards==null){
		alert("Please select an standards");
		return false;
	} else if(examtype == "" || examtype=="--- Select ---" || examtype==null){
		alert("Please select an examtype");
		return false;
	} else if(subject == "" || subject=="--- Select ---" || subject==null){
		alert("Please select an subject");
		return false;
	}/*else if(sectionAvail){
		if(sections == "" || sections=="--- Select ---" || sections==null){
			alert("Please select an sections");
			return false;
		} else if(typeofquestions == "" || typeofquestions=="--- Select ---" || typeofquestions==null){
			alert("Please select an typeofquestion");
			return false;
		}
		else if(numberofquestion == "" || numberofquestion==null){
			alert("Please enter numberofquestion");
			return false;
		} else if(formatw){
			alert("Please enter numberofquestion in correct format");
			return false;
		} else {
			return true;
		}
	}*/
	else if(typeofquestions == "" || typeofquestions=="--- Select ---" || typeofquestions==null){
		alert("Please select an typeofquestion");
		return false;
	}
	else if(numberofquestion == "" || numberofquestion=="--- Select ---" || numberofquestion==null){
		alert("Please enter numberofquestion");
		return false;
	} else if(formatw){
		alert("Please enter numberofquestion in correct format");
		return false;
	}
	else {
		return true;
	}

}

function resolveOnChange(j,fi){

	var ocf = ["getstandardsbtcat(this.value,"+fi+");","getSelectedexams(this.value,"+fi+");","getSelectedSubjects(this.value,"+fi+");getSelectedByExamSec(this.value,"+fi+");","getLayoutsByName(this.value,"+fi+");",""];

	return ocf[j];
}

//AddMore button Start

var elemsAttachedIdArray = []; 

var fields = 1;

var $countFields = $("#countFields");
$countFields.val(1);
var countFields = parseInt($countFields.val());

function addMoreFields(fds,cfs,indx,callback){

	if(indx === undefined){
		indx = 1;
		var flag;
		if(elemsAttachedIdArray.length>0){
			flag = checkEmpty(parseInt(elemsAttachedIdArray[elemsAttachedIdArray.length-1]) + 1);
		} else{
			flag = checkEmpty(1);
		}

		if(!flag){
			return flag;
		}
	} else {
		var flag = true;
	}

	var max_fields  = 40;
	var wrapper   = $("#getmorefields");

	var labels = ["Category","Standard","Exam Type","Subject","Section's","Type of Questions","No.of Questions"];

	var drops = ["category","standard","examtype","subject","section","questionType",'numberofquestion'];

	for(var tpq = 0; tpq < indx; tpq++){

		if(flag){

			if(fds < max_fields){

				var prvVal = [];

				for(var ii = 0;ii < drops.length;ii++){

					if(cfs === 1){
						var kk = "#"+drops[ii];
					} else {
						var kk = "#"+drops[ii]+""+ parseInt(elemsAttachedIdArray[elemsAttachedIdArray.length-1]);
					}

					var tempVal = $(kk).val();

					prvVal.push(tempVal);
				}


				var append = "";
				var gorp = "group"+cfs;
				var str = '<div id="'+gorp+'"></div>';
				var wgorp = "#"+gorp;

				$(wrapper).append(str);
				$(wgorp).hide();

				for(var jj = 0;jj < drops.length;jj++){

					if(jj === 4){

						var apenDiv = drops[jj]+'-'+cfs;

						append = '<div class="col-md-2" id="section-dv-'+cfs+'"><div class="form-group" id="'+apenDiv+'"><label class="control-label mb-5 bold">'+ labels[jj]+' </label></div></div>';

						$(wgorp).append(append);

						var data = "#"+drops[jj]+" option";
						var sid = drops[jj]+""+cfs;
						var pp = "#"+apenDiv;

						if((drops.length -1) === jj){
							// last
							$(pp).append('<input type="text" id="'+sid+'" name="'+sid+'" class="form-control" placeholder="Enter No.of Questions"><span class="infotxt"></span>');
							$(wgorp).append('<div class="col-md-2"><div class="form-group" id="deletegroup'+cfs+'"><label class="control-label mb-5 bold" style="visibility: hidden;">Deletes the current bro</label><a class="btn btn-danger" id="trashBtn" href="javascript:void(0);" onclick="deleterow('+cfs+')"><i style="color: white;" class="icon-trash font-20"></i></a></div></div><div class="clearfix"></div>' );


							$("#category").prop("disabled","disabled");

							$('.selectpicker').selectpicker('refresh');
						} else {


							var $select = $('<select/>', {
								'class':"selectpicker",
								'data-style':"form-control btn-default btn-outline",
								'id': sid
							});



							/*$(data).each(function(){
								    // Add $(this).val() to your list
									var optval = $(this).val();
									var opttext = $(this).text();

									$select.append('<option value="' + optval + '">' +opttext  + '</option>');
								});*/
						}





						$select.appendTo(pp).selectpicker('refresh');

					} else{
						var apenDiv = drops[jj]+'-'+cfs;

						append = '<div class="col-md-2"><div class="form-group" id="'+apenDiv+'"><label class="control-label mb-5 bold">'+ labels[jj]+' </label></div></div>';

						$(wgorp).append(append);

						var data = "#"+drops[jj]+" option";
						var sid = drops[jj]+""+cfs;
						var pp = "#"+apenDiv;

						if((drops.length -1) === jj){
							// last
							$(pp).append('<input type="text" id="'+sid+'" name="'+sid+'" class="form-control" placeholder="Enter No.of Questions"><span class="infotxt"></span>');
							$(wgorp).append('<div class="col-md-2"><div class="form-group" id="deletegroup'+cfs+'"><label class="control-label mb-5 bold" style="visibility: hidden;">Deletes the current bro</label><a class="btn btn-danger" id="trashBtn" href="javascript:void(0);" onclick="deleterow('+cfs+')"><i style="color: white;" class="icon-trash font-20"></i></a></div></div><div class="clearfix"></div>' );

							$("#category").prop("disabled","disabled");

							$('.selectpicker').selectpicker('refresh');
						} else {

							if(jj===0){
								var $select = $('<select/>', {
									'class':"selectpicker",
									'data-style':"form-control btn-default btn-outline",
									'id': sid,
									'onchange' : resolveOnChange(jj,cfs),
									'disabled': true
								});
							}else{
								var $select = $('<select/>', {
									'class':"selectpicker",
									'data-style':"form-control btn-default btn-outline",
									'id': sid,
									'onchange' : resolveOnChange(jj,cfs)
								});

							}

							/*$(data).each(function(){
							    // Add $(this).val() to your list
								var optval = $(this).val();
								var opttext = $(this).text();

								$select.append('<option value="' + optval + '">' +opttext  + '</option>');
							});*/

						}

						$select.appendTo(pp).selectpicker('refresh');
					}


				}


				var catappend = "";
				$("#category option").each(function(){
					// Add $(this).val() to your list
					var optval = $(this).val();
					var opttext = $(this).text();


					catappend += '<option value="' + optval + '">' +opttext  + '</option>';


				});

				$("#category"+cfs).append(catappend);
				$("#category"+cfs).selectpicker('refresh');

				var stdappend = "";
				$("#standard option").each(function(){
					// Add $(this).val() to your list
					var optval = $(this).val();
					var opttext = $(this).text();

					stdappend += '<option value="' + optval + '">' +opttext  + '</option>';

				});

				$("#standard"+cfs).append(stdappend);
				$("#standard"+cfs).selectpicker('refresh');

				elemsAttachedIdArray.push(cfs);


				for(var ss=0;ss<1;ss++){  		


					var mm = "#"+drops[ss]+""+cfs;


					$(mm).val(prvVal[ss]);

					$(mm).selectpicker('refresh');
				}




				$(wgorp).show();

				fds++;

				cfs++;
				$countFields.val(cfs);


			} else {
				alert('You have Reached the Maximum limit!');
			}

		} else{
			break;
			return ;
		} 


	}

	if(callback){
		callback();
	}


	fields++;

	countFields++;
	$countFields.val(countFields);

}

$("#addmore").click(function(){

	addMoreFields(fields,countFields);

});

var deletedarr = [];
function deleterow(id){
	$("#group"+id).fadeOut(500,function(){

		$(this).remove();

		//var ppd = parseInt(id) +1;
		deletedarr.push(parseInt(id));
		var index = elemsAttachedIdArray.indexOf(id);
		if(index > -1){
			elemsAttachedIdArray.splice(index, 1);
		}

	});
	fields--;
	//sorting array in ascending order
	deletedarr.sort(function(a, b){return a-b});
}


//AddMore button End


//GETTING SECTIONS IN EXAMTYPES 

$(document).on('click', '#yes', function () {
	if ($("#yes").is(":checked")) {
		var appenddata = "";
		$.ajax({
			url:  base_url+'rest/section/getsections',
			type:"GET",
			dataType: "json",
			contentType: 'application/json',
			success:function(data){
				for(var i=0;i<data.length;i++){
					appenddata +='<input type="checkbox" class="check" name="checkbox" id="chck'+data[i].id+'" value='+data[i].id+'>'+data[i].name+'&nbsp;&nbsp;&nbsp;&nbsp;';
				}

				$("#sections").show();
				$("#sections").empty();
				$("#sections").append(appenddata);
			},
			error:function(data){
				alert("Getting Sections Error");
			}
		});

	} else {
		$("#sections").hide();


	}


});  

$("#No").on("click",function(){

	$("#sections").hide();
});





//FOR GETTING SECTIONS IN EXAMTYPES END
var sectionAvail = true;

//GETTING SECTIONS IN MANUAL POSTING

function getSelectedByExamSec(val,indx){

	var dom_sec_id;

	if(indx === undefined){
		dom_sec_id = "#section-dv";
		var $section = $("#section");
		var categoryname = $("#category").val();
		var standardId = $("#standard").val();
		var examtypename = $("#examtype").val();
	} else{
		dom_sec_id  = "#section-dv-"+indx;
		var $section = $("#section"+indx);
		var categoryname = $("#category"+indx).val();
		var standardId = $("#standard"+indx).val();
		var examtypename = $("#examtype"+indx).val();

	}

	var appenddata = "";

	var sectiondata =  {
			"categoryId":categoryname,
			"standardId":standardId,
			"examtypeId":examtypename
	}
	var sectionstr = JSON.stringify(sectiondata);

	$.ajax({
		url:  base_url+'rest/examtype/v1/getsections',
		type:"POST",
		dataType: "json",
		contentType: 'application/json',
		data:sectionstr,
		success:function(data){

			if(data[0].name == "" || data[0].name == null){
				$(dom_sec_id).hide();
				sectionAvail = false;
			} else{

				$(dom_sec_id).show();
				sectionAvail = true;
				for(var i=0;i<data.length;i++){
					var name = data[i].name;
					var id = data[i].id;

					appenddata += '<option value="'+id+'">'
					+name+'</option>';
				}

				$section.empty("");
				$section.append('<option value="">--- Select ---</option>');
				$section.append(appenddata);


			}


		},
		error:function(data){
			$(dom_sec_id).hide();

			$section.empty("");
			sectionAvail = false;
			alert("Sections not Found!");

		}
	})


};

//GETTING SECTIONS IN MANUAL POSTING END










/*
 * Add Question Step 1 TestPost
 * 
 * */

function addQuestionStep1(){

	$("#step1Btn").addClass('disablelink').removeClass('activatelink');


	var category = $("#category_question").val();
	var categoryId = parseInt($("#category").val());
	var examtypeId = parseInt($("#examtype").val());
	var standardId = parseInt($("#standard").val());
	var subjectId = parseInt($("#subject").val());
	var unitId = parseInt($("#unit").val());
	var chapterId = parseInt($("#chapter").val());
	var questiontype = $("#questionTypeMain").val();
	var questiontypename = $("#questionType").val();

	var questiontypeId = getParameterByName('layoutId');
	if(questiontypeId == "" ||  questiontypeId == undefined || questiontypeId == null){
		questiontypeId = $("#questionTypeid").val();
	}else{
		questiontypeId = questiontypeId;
	}
	var tid = getParameterByName('tid');
	var questionNoFromTestpost = $("#questionNo").val();
	var testPostDetailId = sessionStorage.getItem('testPostDetailId');
	var inputData;

	if( categoryId == "" || categoryId == "--- Select ---" )
	{

		alert("Please Select Category");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(examtypeId=="" || examtypeId == "--- Select ---" )
	{

		alert("Please Select Exam Type");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(standardId == "" || standardId == "--- Select ---" )
	{

		alert("Please Select Standard");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(subjectId=="" || subjectId == "--- Select ---")
	{

		alert("Please Select Subject");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(isNaN(unitId) || unitId=="" || unitId == "--- Select ---")
	{

		alert("Please Select Unit");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(isNaN(chapterId) || chapterId=="" || chapterId == "--- Select ---" )
	{

		alert("Please Select Chapter");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	}
	else if(questiontypename=="" || questiontypename == "--- Select ---")
	{

		alert("Please Select Question Type");
		$("#step1Btn").addClass('activatelink').removeClass('disablelink');
		return false;
	} else{


		var tpeditmode = sessionStorage.getItem("tpeditmode");
		if(tpeditmode !== "true"){
			var url = base_url+'rest/question/v1/addquestionv2';
			inputData = {
					"categoryId" : categoryId,
					"examtypeId" : examtypeId,
					"standardId" : standardId,
					"subjectId" : subjectId,
					"unitId" : unitId,
					"smeid":"1",
					"chapterId" : chapterId,
					"questiontypeId" : questiontypeId,
					"questionNumber" : questionNoFromTestpost,
					"testPostDetailId" : testPostDetailId,
					"insertedBydesignation": "admin",
					"step" : 1,
					"updatedId":getAdminId(),
					"updatedBy":"admin"
			};
		} else{
			sessionStorage.setItem("tpeditmode", true);
			var url = base_url+'rest/question/v1/updatequestion';
			var qidd = getParameterByName('id');
			inputData = {
					"categoryId" : categoryId,
					"examtypeId" : examtypeId,
					"standardId" : standardId,
					"subjectId" : subjectId,
					"unitId" : unitId,
					"chapterId" : chapterId,
					"questiontypeId" : questiontypeId,
					"smeid":"1",
					"step" : 1,
					"id":qidd,
					"updatedId":getAdminId(),
					"updatedBy":"admin"
			};

		}

		inputData = JSON.stringify(inputData);

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
					var ion = getParameterByName('ion');
					var  nuofq = getParameterByName('nuofq');
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


							if(ion !== "" && ion !== null){
								window.location = base_url+"jsp/admin/test_post/addquestions/upload_layout.jsp?tid="+tid+"&id="+data.questionId+"&layout="+questiontype+"&ion=rtyf&nuofq="+nuofq+"&layoutname="+questiontypename+"&ion=rtyf&layoutId="+questiontypeId;
							} else{
								window.location = base_url+"jsp/admin/test_post/addquestions/upload_layout.jsp?tid="+tid+"&id="+data.questionId+"&layout="+questiontype+"&nuofq="+nuofq+"&layoutname="+questiontypename+"&layoutId="+questiontypeId;
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
	var questionCompleteStatus ="Pending";
	var layout = getParameterByName("layout");
	var layoutName = getParameterByName("layoutname");
	var singleRegex = /(_1_|_2_|_3_)/;
	var multiRegex = /(_4_|_5_|_6_)/;
	var comprh = /(_8_|_9_|_10_)/;
	var layoutId = getParameterByName('layoutId');
	var intiRegex  = /_7_I/;
	var multiComprh = /_11_/;
	var matrix = /_12_X/;
	var questiontypeId = getParameterByName('layoutId');
	var tid = getParameterByName('tid');
	var option1 = "", option2 = "", option3 = "", option4 = "";

	if(intiRegex.test(layout)){

		var answer = $('#answer').val(); 
		if(answer !== undefined && answer !== null && answer !== ""){
			// do nothing

		} else{
			/*alert("Please enter answer!");*/
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
				if(fl===4){
					answer += paramsChecksValues;
				} else{
					answer +=  paramsChecksValues + '|';
				}

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
		var cfdata = formDataForComprh('c',addedFields,trackSkipFields,"tpeditmode");

	} else if(multiComprh.test(layout)){

		var addedFields = parseInt($("#hckfields").val()) - 1;
		var trackSkipFields = $("#trackQH").val();
		var mcfdata = formDataForComprh('mc',addedFields,trackSkipFields,"tpeditmode");

	}

	var step = 2;

	var questionid = getParameterByName('id');


	var tpeditmode = sessionStorage.getItem("tpeditmode");

	if(tpeditmode !== "true"){
		//adding new question

		var url = base_url+'rest/question/v1/addquestionv2';

		if(comprh.test(layout)){

			question = CKEDITOR.instances.passage.getData();

			if(cfdata === false){
				/*alert("Please select answer for all questions!");*/
				$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
				$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
				$("#layout_back").addClass('activatelink').removeClass('disablelink');
				return false;
			} else{
				var postquestion =  {
						"instructions":	instructions,
						"questiontypeId":questiontypeId,
						"question":question,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAdminId(),
						"updatedBy":"admin"

				};
			}

		} else if(multiComprh.test(layout)){

			question = CKEDITOR.instances.passage.getData();

			if(mcfdata === false){
				/*alert("Please select answer for all questions!");*/
				$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
				$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
				$("#layout_back").addClass('activatelink').removeClass('disablelink');
				return false;
			} else{
				var postquestion =  {
						"instructions":	instructions,
						"questiontypeId":questiontypeId,
						"question":question,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAdminId(),
						"updatedBy":"admin"

				};
			}


		} else if(matrix.test(layout)){
			var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,"leavethis","leavethis");
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
				// integer layout; has no options fields
				var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,"leavethis","leavethis");

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
				var check = checkEmptyForStep2("leavethis","leavethis",question,option1,option2,option3,option4,answer,"leavethis","leavethis");

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


	} else{		
		//updating question

		var url = base_url+'rest/question/v1/updatequestion';

		if(comprh.test(layout)){
			question = CKEDITOR.instances.passage.getData();

			if(cfdata === false){
				/*alert("Please select answer for all questions!");*/
				$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
				$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
				$("#layout_back").addClass('activatelink').removeClass('disablelink');
				return false;
			} else{
				var postquestion =  {
						"instructions":	instructions,
						"questiontypeId":questiontypeId,
						"question":question,
						"comprehensionDetails":cfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAdminId(),
						"updatedBy":"admin"
				};
			}



		} else if(multiComprh.test(layout)){

			question = CKEDITOR.instances.passage.getData();


			if(mcfdata === false){
				/*alert("Please select answer for all questions!");*/
				$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
				$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
				$("#layout_back").addClass('activatelink').removeClass('disablelink');
				return false;
			} else{
				var postquestion =  {
						"instructions":	instructions,
						"questiontypeId":questiontypeId,
						"question":question,
						"comprehensionDetails":mcfdata,
						"id": questionid,
						"step": step,
						"updatedId":getAdminId(),
						"updatedBy":"admin"
				};
			}


		} else if(matrix.test(layout)){
			var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,"leavethis","leavethis");
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
				// integer layout; has no options fields

				var check = checkEmptyForStep2("leavethis","leavethis",question,"leavethis","leavethis","leavethis","leavethis",answer,"leavethis","leavethis");

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
							"updatedId":getAdminId(),
							"updatedBy":"admin"
					};
				} else{
					$("#saveBtn2").addClass('activatelink').removeClass('disablelink');
					$("#nextBtn2").addClass('activatelink').removeClass('disablelink');
					$("#layout_back").addClass('activatelink').removeClass('disablelink');
					return false;
				}
			}else{
				//single and multiple layouts
				var check = checkEmptyForStep2("leavethis","leavethis",question,option1,option2,option3,option4,answer,"leavethis","leavethis");

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

						var ion = getParameterByName('ion');
						var  nuofq = getParameterByName('nuofq');
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

								if(ion !== "" && ion !== null){
									window.location = base_url+"jsp/admin/test_post/addquestions/upload_parameters.jsp?tid="+tid+"&id="+questionid+"&layout="+layout+"&ion=jklol&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
								} else{
									window.location = base_url+"jsp/admin/test_post/addquestions/upload_parameters.jsp?tid="+tid+"&id="+questionid+"&layout="+layout+"&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
								}



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

	var topicId = $("#belongs").val();
	var difficulty_level =$("input[name='levelradio']:checked").val();
	if(difficulty_level == "" || difficulty_level == undefined || difficulty_level == null){
		alert('Please Select Difficulty Level Radio button');
		return false;
	}
	/*var conceptual = $('#conceptual').is(':checked');
	var numerical = $('#numerical').is(':checked');
	var graph = $('#graph').is(':checked');
	var valuation = $('#valuation').is(':checked');
	 */
	var originalparamters = $("#originalparamters").val();
	var leveloriginalparameters = $("#leveloriginalparameters").val();
	var comments = $("#comments").val();
	var previouyear_mainquestions = $("#previousyear1").val();
	var id = getParameterByName('id');
	var layout = getParameterByName("layout");
	var layoutName = getParameterByName("layoutname");
	var other_competitiveexams = $("#examcategory").val();
	var other_competitiveexams_year = $("#previousyear2").val();
	var veryimpquestion = $("#impquestion").is(':checked');
	var questionCompleteStatus ="Pending";
	var step = 3;

	var questiontypeId = getParameterByName('layoutId');
	var tid = getParameterByName('tid');
	if(previouyear_mainquestions !== null && previouyear_mainquestions !== undefined && previouyear_mainquestions !== ""){
		previouyear_mainquestions = previouyear_mainquestions.map(Number);
	}
	if(other_competitiveexams_year !== null && other_competitiveexams_year !== undefined && other_competitiveexams_year !== ""){
		other_competitiveexams_year = other_competitiveexams_year.map(Number);
	} 



	var iparam = 0;
	var paramsChecksValues = [];
	$('.paramChecks:checked').each(function () {
		paramsChecksValues[iparam++] = $(this).val();
	});

	if(paramsChecksValues !== null && paramsChecksValues !== undefined && paramsChecksValues !== ""){
		paramsChecksValues = paramsChecksValues.join(",");
	} else{
		paramsChecksValues = "";
	}

	var tpeditmode = sessionStorage.getItem("tpeditmode");
	if(tpeditmode !== "true"){
		var url = base_url+'rest/question/v1/addquestionv2';
		var inputData = {
				topicId : topicId,
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
				updatedId:getAdminId(),
				updatedBy:"admin"
		};
	} else{					
		var url = base_url+'rest/question/v1/updatequestion';
		var inputData = {
				topicId : topicId,
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
				/*questionCompleteStatus:questionCompleteStatus,*/
				updatedId:getAdminId(),
				updatedBy:"admin"
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

					var ion = getParameterByName('ion');
					var nuofq = getParameterByName('nuofq');
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

							if(ion !== "" && ion !== null){
								window.location = base_url+"jsp/admin/test_post/addquestions/upload_preview.jsp?tid="+tid+"&id="+id+"&layout="+layout+"&ion=opyujk&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
							} else{
								window.location = base_url+"jsp/admin/test_post/addquestions/upload_preview.jsp?tid="+tid+"&id="+id+"&layout="+layout+"&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
							}


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
		sessionStorage.setItem("tpeditmode", false);

		window.location = base_url+"jsp/admin/test_post/addquestions/upload.jsp";
		//window.location = base_url+"/jsp/admin/test_post/addquestions/upload.jsp?id="+qid;

		$("#param_back").addClass('activatelink').removeClass('disablelink');
	}
}

/* END of addQuestionStep3() */



/*
 * Add Question Step 4 SME Module
 * 
 * */

function addQuestionStep4(){



	$("#saveBtn4").addClass('disablelink').removeClass('activatelink');
	$("#preview_back").addClass('disablelink').removeClass('activatelink');


	var id = getParameterByName('id');
	var questionCompleteStatus ="Pending";
	var step = 4;
	var questiontypeId = getParameterByName('layoutId');

	var tpeditmode = sessionStorage.getItem("tpeditmode");
	var testPostDetailId = sessionStorage.getItem('testPostDetailId');
	var testPostId = sessionStorage.getItem('testPostId');
	var tid = getParameterByName('tid');

	if(tpeditmode !== "true"){
		var url = base_url+'rest/question/v1/addquestionv2';
		var inputData = {
				"id" : id,
				"step" : step,
				"testPostDetailId" : testPostDetailId,
				"updatedId":getAdminId(),
				"updatedBy":"admin"
		};
	} else{					
		var url = base_url+'rest/question/v1/updatequestion';
		var inputData = {
				"id" : id,
				"step" : step,
				"updatedId":getAdminId(),
				"updatedBy":"admin"
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

							sessionStorage.setItem("tpeditmode", false);
							// window.location = base_url+"jsp/sme/addquestions/upload.jsp";
							//	window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+testPostId;
							if(tid == undefined || tid == "null" || tid == ""){
								window.location = base_url+"jsp/dean/manualpostquestions/manual_post_qns.jsp";

							}else{
								window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+tid;
							}

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
		var testPostId = localStorage.getItem('testPostId');

		sessionStorage.setItem("tpeditmode", false);
		// window.location = base_url+"jsp/sme/addquestions/upload.jsp";
		//window.location = base_url+"/jsp/admin/test_post/manual_view.jsp?id="+testPostId;
		window.location = base_url+"/jsp/admin/test_post/manual_view.jsp?id="+tid;
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
	var tid = getParameterByName('tid');
	var qid = getParameterByName('id');
	var testPostId = localStorage.getItem('testPostId');
	var ion = getParameterByName('ion');
	var nuofq = getParameterByName('nuofq');

	var layout = getParameterByName('layout');
	var layoutName = getParameterByName('layoutname');
	var questiontypeId = getParameterByName('layoutId');

	if(qid!=="" && ion === null){
		window.location = base_url+"jsp/admin/test_post/addquestions/upload.jsp?tid="+tid+"&id="+qid+"&ion=hkwqep&nuofq="+nuofq+"&layout="+layout+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
		sessionStorage.setItem("tpeditmode", true);
	} else if(qid!=="" && ion !== "" && ion !== null){
		window.location = base_url+"jsp/admin/test_post/addquestions/upload.jsp?tid="+tid+"&id="+qid+"&ion=mdg&nuofq="+nuofq+"&layout="+layout+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
		sessionStorage.setItem("tpeditmode", true);
	} else {
		window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+testPostId;
	}
});

$("#param_back").click(function(){
	var tid = getParameterByName('tid');
	var qid = getParameterByName('id');
	var testPostId = localStorage.getItem('testPostId');

	var layout = $("#layouthd").val();
	var questiontypeId = getParameterByName('layoutId');

	var layoutName = getParameterByName('layoutname');

	var ion = getParameterByName('ion');
	var nuofq = getParameterByName('nuofq');
	if(qid!=="" && qid !== null && ion === null){
		sessionStorage.setItem("tpeditmode", true);
		window.location =  base_url+"jsp/admin/test_post/addquestions/upload_layout.jsp?tid="+tid+"&id="+qid+"&layout="+layout+"&ion=hkwqep&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
	} else if(qid!=="" && qid !== null && ion !== "" && ion !== null){
		sessionStorage.setItem("tpeditmode", true);
		window.location =  base_url+"jsp/admin/test_post/addquestions/upload_layout.jsp?tid="+tid+"&id="+qid+"&layout="+layout+"&ion=hgerlk&nuofq"+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
	}
});



$("#preview_back").click(function(){
	var qid = getParameterByName('id');
	var tid = getParameterByName('tid');
	var txt = $("#preview_back").text();
	var testPostId = localStorage.getItem('testPostId');
	var layout = $("#layouthd").val();
	var layoutName = getParameterByName('layoutname');
	var ion = getParameterByName('ion');
	var nuofq = getParameterByName('nuofq');
	var questiontypeId = getParameterByName('layoutId');

	if(qid !== "" && qid !== null && txt === "Back" && ion === null){
		sessionStorage.setItem("tpeditmode", true);
		window.location = base_url+"jsp/admin/test_post/addquestions/upload_parameters.jsp?tid="+tid+"&id="+qid+"&layout="+layout+"&ion=hkwqep&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;

	} else if(qid !== "" && qid !== null && txt === "Back" && ion !== "" && ion !== null){
		sessionStorage.setItem("tpeditmode", true);
		window.location = base_url+"jsp/admin/test_post/addquestions/upload_parameters.jsp?tid="+tid+"&id="+qid+"&layout="+layout+"&ion=hkwqep&nuofq="+nuofq+"&layoutname="+layoutName+"&layoutId="+questiontypeId;
	}
	else if(qid !== "" && qid !== null && txt === "Edit"){		 
		window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+testPostId;
	} else {
		/* sessionStorage.setItem("editmode", false);
       window.location = base_url+"jsp/sme/addquestions/upload.jsp";*/
	}

});


//testpost step4
function testPostStepFour(){

	var testpostid = getParameterByName('id');
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var time = parseInt($("#time").val());
	var totalmark = parseInt($("#totalmarks").val());
	var cutoffmarks = parseInt($("#cutoff").val());

	var numofqns = parseInt($("#noofques").val());
	var testname = $("#testnames").val();
	var activeDate = $("#datepicker").val();
	var activetime = $("#timepicker1").val();
	var expirytime = $("#timepicker2").val();
	var photo = $("#base67manualphotos").val();
	var photodaily = $("#base67manualphotosdail").val();
	var expiryDate = $("#datepicker1").val();
	var prevyears = $("#prevsyear").val();
	var zonetype = $("#zoneType option:selected").text();
	var testType = $("#testType option:selected").text();
	var inputtype = $("#prevsyear").val();
	var questionCompleteStatus ="pending";
	var uniquefeatureofthegroup = $("#uniquefeatures").val();
	var paperdesigned = $("#paperdesigned").val();

	var levels = $("#level").val();
	var suggestions = CKEDITOR.instances.editor1.getData();

	var lockthetest = $("input[name='radio1']:checked").val();


	if(examtype === "--- Select ---" || examtype === "" || examtype === null || examtype === undefined){
		alert("Please select Examtype!");
		return false;
	}

	if(standard === "--- Select ---" || standard === "" || standard === null || standard === undefined){
		alert("Please select Standard!");
		return false;
	}

	if(testname === "" || testname === null || testname === undefined){
		alert("Please enter Test Name!");
		return false;
	}

	if(zonetype == "Test Zone" || zonetype == "Live Zone" || zonetype == "practice Zone" ){
		if(testType === "--- Select ---" || testType === "" || testType === null || testType === undefined){
			alert("Please select TestType!");
			return false;
		}
	}else if(zonetype == "Previous Year"){
		if(inputtype === "--- Select ---" || inputtype === "" || inputtype === null || inputtype === undefined){
			alert("Please enter previousyear!");
			return false;
		}
	}else if(zonetype == "Daily Scoop"){
		if(testType === "--- Select ---" || testType === "" || testType === null || testType === undefined){

		}
	}else{
		alert("Please select ZoneType!");
		return false;
	}



	if(isNaN(time) || time<=0 || time === '' || time === null || time === undefined){
		alert("Time can't be zero");
		return false;
	} 

	if(isNaN(cutoffmarks) || cutoffmarks === "" || cutoffmarks === null || totalmark<=cutoffmarks || cutoffmarks === 0){
		alert("CutOff Marks can't be greater than Total Marks or be Empty!");
		return false;
	}

	if(activeDate === "" || activeDate === null || activeDate === undefined){
		alert("Please enter Active Date!");
		return false;
	}

	if(activetime === "" || activetime === null || activetime === undefined){
		alert("Please enter Active Time!");
		return false;
	}

	if(expiryDate === "" || expiryDate === null || expiryDate === undefined){
		alert("Please enter Expiry Date!");
		return false;
	}

	if(expirytime === "" || expirytime === null || expirytime=== undefined){
		alert("Please enter Expiry Time!");
		return false;
	}


	if(lockthetest === "" || lockthetest === null || lockthetest === undefined){
		alert("Please Select Yes or No to Lock This Test");
		return false;
	}

	if(zonetype == "Daily Scoop"){
		expiryDate ="31-10-2025";
	}

	var inputData = {
			"examtypeId":examtype,
			"standardId":standard,
			"testPostId":testpostid,
			"time":time,
			"numberOfQuestions":numofqns,
			"totalMarks":totalmark,
			"testName":testname,
			"activeDate":activeDate,
			"activeTime":activetime,
			"expiyTime":expirytime,
			"expiyDate":expiryDate,
			"zoneType":zonetype,
			"testType":testType,
			"questionCompleteStatus":questionCompleteStatus,
			"uniquefeature":uniquefeatureofthegroup,
			"paperdesigned":paperdesigned,
			"paperdesignerphoto":photo,
			"testImage":photodaily,
			"cutoffmarks":cutoffmarks,
			"level":levels,
			"previousYear":prevyears,
			"locktest":lockthetest,
			"noOfSuggestions":suggestions
	};

	var inputData = JSON.stringify(inputData);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/testpost/v1/create',
		data: inputData,
		success: function(data){

			window.location = base_url+"jsp/admin/test_post/automatic_6.jsp?id="+testpostid;

		},  
		error: function (){
			alert("Data not found!");
		}

	});



}

function testPostStepFourLater(){

	var testpostid = getParameterByName('id');
	var testname = $('#testname').text();
	if(testname == null || testname == "" || testname == "undefined"){
		alert("Please fill Your test details and post");
		return false;
		window.location = base_url+"jsp/admin/test_post/manual_preview.jsp?id="+testpostid;
	}
	var questionCompleteStatus ="completed";
	var inputData = {
			"testPostId":testpostid,
			"questionCompleteStatus":questionCompleteStatus,
			"postLater":"yes"
	};

	var inputData = JSON.stringify(inputData);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/testpost/v1/create',
		data: inputData,
		success: function(data){
			alert("Test saved for Post later")
			window.location = base_url+"jsp/admin/test_post/manual.jsp";

		}, error: function (){
			alert("Data not found!");
		}

	});

}


$("#manual_preview_back").click(function(){

	var id = getParameterByName('id');
	window.location = base_url+"jsp/admin/test_post/automatic_5.jsp?id="+id;
});


$("#manual_question_back").click(function(){
	var tid = getParameterByName('tid');
	window.location = base_url+"jsp/admin/test_post/manual_view.jsp?id="+tid;
});

$("#auto6_preview_back").click(function(){
	var reffer = document.referrer;
	if(reffer.indexOf("manual_preview.jsp") != -1){
		var id = getParameterByName('id');
		window.location = base_url+"jsp/admin/test_post/manual_preview.jsp?id="+id;
	}

	else if(reffer.indexOf("test_post_history_all_posts.jsp") != -1){
		window.location = base_url+"/jsp/admin/test_post/test_post_history_all_posts.jsp";
	}else if(reffer.indexOf("test_post_history_all_posts_dailyscoope.jsp") != -1){
		window.location = base_url+"/jsp/admin/test_post/test_post_history_all_posts_dailyscoope.jsp";
	}
});



$("#manaul_view_back").click(function(){

	var id = getParameterByName('id');
	window.location = base_url+"jsp/admin/test_post/manual.jsp?id="+id;
});


//automatic5

function getSubjects(callback){
	var Id=getParameterByName('id');
	var appenddata = "";
	$.ajax({
		type:"GET",
		url: base_url +'rest/testpost/v1/getsections/'+Id,
		datatype:"json",
		contentType:'application/json',
		success:function(data){
			var len = data.length;
			for(var i=0; i<len; i++ ){

				if(i>0){
					appenddata += "<a onclick='getsubjectwise(this);' class='btn btn-default btn-outline fancy-button btn-0' id='subjectsin' data-id='"+data[i].id+"'>"+data[i].name+"</a>";
				} else {
					appenddata += "<a onclick='getsubjectwise(this);' class='btn btn-default' id='subjectsin' data-id='"+data[i].id+"'>"+data[i].name+"</a>";
				}

			}

			$("#firstSubject").val(data[0]);
			$("#subjts").empty();
			$("#subjts").append(appenddata);	
			$("#subjts a").first().addClass('active');
			if(callback){
				callback(data[0]);
			}
		},
		error:function(){
			alert("Subjects not found");
		}
	});
}

//automatic5



//TestPost History Get Data


function Testposthistoryget(from,val){
	var type = val;
	var url ="";
	switch(type){
	case 1 :
		url = base_url+'rest/testpost/v1/getTestPostHistory';
		break;
	case 2 : 
		url = base_url+'rest/testpost/getTestPostHistoryForDailyDoze';
		break;
	}

	var appenddata = "";
	$.ajax({
		url:url,
		type:"GET",
		dataType:"json",
		contentType: 'application/json',
		beforeSend: function(){
			$("#testposthist_tbody").empty();
			$("#testposthist_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			var testpost = data.testPostHistory;
			for(var i=0;i<testpost.length;i++){
				appenddata += "<tr id='deleterow"+testpost[i].testPostId+"'><td>"+(i+1)+"</td>"; 
				appenddata += "<td>"+testpost[i].testPostId+"</td>";
				appenddata += "<td>"+testpost[i].category+"</td>";
				/* appenddata += "<td>"+testpost[i].standard+"</td>";*/
				appenddata += "<td>"+testpost[i].examType+"</td>";
				appenddata += "<td>"+testpost[i].zoneType+"</td>";
				appenddata += "<td>"+testpost[i].testType+"</td>";
				appenddata += "<td>"+testpost[i].testName+"</td>";
				if(testpost[i].testExpired == true){
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs activeModal'>"+testpost[i].activeDate+"</br>"+testpost[i].activeTime+"</a></td>";
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs expiryModal' >"+testpost[i].expirydate+"</br>"+testpost[i].expiryTime+"</a></td>";
				}else{
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs activeModal' data-id='"+testpost[i].testPostId+"_"+testpost[i].activeDate+"_"+testpost[i].activeTime+"' data-toggle='modal' data-target='#activeModal'>"+testpost[i].activeDate+"</br>"+testpost[i].activeTime+"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs expiryModal' data-id='"+testpost[i].testPostId+"_"+testpost[i].expirydate+"_"+testpost[i].expiryTime+"' data-toggle='modal' data-target='#expiryModal'>"+testpost[i].expirydate+"</br>"+testpost[i].expiryTime+"<i class='fa fa-edit font-18 mt-10'></i></a></td>"; 
				}  
				appenddata += "<td>"+testpost[i].time+"</td>";
				appenddata += "<td>"+testpost[i].postedDate+"</td>";
				//appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_6.jsp?id="+ testpost[i].testPostId+"&?status="+testpost[i].postLater+"' class='btn btn-success  btn-circle p-10'><i class='fa fa-info font-18'></i></a></td>";
				appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_5.jsp?id="+ testpost[i].testPostId+"' class='btn btn-success  btn-circle p-10'><i class='icon-eye font-18'></i></a></td>";
				if(testpost[i].status == "completed"){
					appenddata += "<td><a href='#' class='btn btn-success  btn-circle p-10'><i class='fa fa-check font-18'></i></a></td>";
				}
				else{
					appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/manual.jsp?id="+ testpost[i].testPostId+"' class='btn btn-danger  btn-circle p-10'><i class='fa fa-ellipsis-h font-18'></i></a></td>";
				}
				/*   if(testpost[i].postLater == "no"){
		    		   appenddata += "<td><a href='#' class='btn btn-success btn-circle p-10'><i class='fa fa-check-circle-o font-18'></i></a></td>";
		    	   }
		    	   else{
		    		   appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_6.jsp?id="+ testpost[i].testPostId+"&?status="+testpost[i].postLater+"' class='btn btn-warning btn-circle p-10'><i class='fa fa-circle-o font-18'></i></a></td>";
		    	   }*/
				if(testpost[i].studentstatus == true){
					appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' id='thumbsdean_item"+testpost[i].testPostId+"' data-id='"+testpost[i].testPostId+"' data-status='"+testpost[i].studentstatus+"' data-original-title='Active' onclick='studentdelete(this)'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				}
				else{
					appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-id='"+testpost[i].testPostId+"' data-status='"+testpost[i].studentstatus+"'  data-original-title='De-Active' onclick='studentdelete(this)'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				}
				appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10' id='testposthis_item"+testpost[i].testPostId+"' data-id='"+testpost[i].testPostId+"' ><i class='icon-trash font-18'></i></a></td></tr>";
			}
			$("#testposthist_tbody").empty();
			$('#testposthist_tbl').DataTable().clear().destroy();
			$("#testposthist_tbody").append(appenddata);

			$("#testposthist_tbl").DataTable({
				"lengthMenu":[[5, 10, 25, 50, 100], [5, 10, 25, 50, 100]]
			});
		},
		error:function(data){
			alert(data.responseJSON.errorMessage); 
		}	
	})

}

//TestPost History Get Data End



//TestPost Delete By Admin
$(document).on("click", "a[id^=testposthis_item]", function() {
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to delete?");
	var pon = confirm("Really are you Sure?");
	if(con == true){
		if(pon == true){

			var deleterow =  {
					"testPostId":id,
					"adminstatus":false
			}


			var deletetopic = JSON.stringify(deleterow);

			$.ajax({
				type: "POST",
				dataType: "json",
				contentType: 'application/json', 
				url: base_url+'rest/testpost/v1/changeadminstatus',
				data:deletetopic,
				success: function(data){	  
					if(data.status){
						alert(data.message);
						$("#deleterow"+id).remove();
					}
				},

				error: function(data){
					alert(data.responseJSON.errorMessage);
				}

			});
		}}});

//TestPost Delete By Admin

//CHANGE STUDENT STATUS IN TESTPOST HISTORY

function studentdelete(elem){
	var id = $(elem).attr('data-id');
	var status = $(elem).attr('data-status');
	var student_items = "";
	if(status == "true"){
		student_items  =  {
				"testPostId":id,
				"studentstatus":false
		}
	}
	else{
		student_items  =  {
				"testPostId":id,
				"studentstatus":true
		}
	}

	var inputData = JSON.stringify(student_items);

	var conf = confirm('Do you Want to change the status?');

	if(conf == true){

		$.ajax({
			url: base_url+'rest/testpost/v1/changestudentstatus',
			type:"POST",
			dataType: "json",
			contentType: 'application/json',
			data:inputData,
			success: function(data){
				if(data.status == true){

					var i = $(elem).children('i');
					if(status == "false"){
						$(elem).attr('data-status',"true");
						$(i).attr('class','fa fa-thumbs-up font-18 mt-10');

						$(elem).removeClass('btn-deactive');
						$(elem).addClass('btn-active');


					} else {
						$(elem).attr('data-status',"false");
						$(i).attr('class','fa fa-thumbs-down font-18 mt-10');
						$(elem).addClass('btn-deactive');
						$(elem).removeClass('btn-active');

						alert(data.message);
					}



				} else {
					alert(data.message);
					location.reload();
				}
			},
			error: function(data){
				alert(data.responseJSON.errorMessage);
			}

		});

	} 
}

//CHANGE STUDENT STATUS IN TESTPOST HISTORY



//TestPost History  Data By Filters

function testposthistfil(from,val){
	var appenddata = "";
	var fromdate = $("#fromdate").val();

	var todate = $("#todate").val();

	var category = $("#category").val();

	var examtype =$("#examtype").val();

	var standard = $("#standard").val();

	var zonetype = $("#zonetype").val();

	var testtype = $("#testtype").val();
	var url = "";
	var type = val;
	switch(type){
	case 1: 
		var url = base_url+'rest/testpost/v1/getTestPostHistoryDetails';
		var testposthisfilter = {
				"examtypeId":examtype,
				"standardId":standard,
				"categoryId":category,
				"Fromdate":fromdate,
				"Todate":todate,
				"testType":testtype,
				"zoneType":zonetype
		}

		break;
	case 2: 
		var url = base_url+'rest/testpost/getDailyQuizFilter';
		var testposthisfilter = {
				"categoryId": category,
				"examtypeId": examtype,
				"standardId":standard,
				"Fromdate":fromdate,
				"Todate":todate
		}
		break;
	}

	var testpostfilstr = JSON.stringify(testposthisfilter);

	$.ajax({
		url:  url,
		type:"POST",
		dataType:"json",
		contentType: 'application/json',
		data:testpostfilstr,
		beforeSend: function(){
			$("#testposthist_tbody").empty();
			$("#testposthist_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			var testpost = data.testPostHistory;
			for(var i=0;i<testpost.length;i++){
				appenddata += "<tr id='deleterow"+testpost[i].testPostId+"'><td>"+(i+1)+"</td>"; 
				appenddata += "<td>"+testpost[i].category+"</td>";
				appenddata += "<td>"+testpost[i].examType+"</td>";
				appenddata += "<td>"+testpost[i].zoneType+"</td>";
				appenddata += "<td>"+testpost[i].testType+"</td>";
				appenddata += "<td>"+testpost[i].testName+"</td>";
				if(testpost[i].testExpired == true){
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs activeModal'>"+testpost[i].activeDate+"</br>"+testpost[i].activeTime+"</a></td>";
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs expiryModal' >"+testpost[i].expirydate+"</br>"+testpost[i].expiryTime+"</a></td>";
				}else{
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs activeModal' data-id='"+testpost[i].testPostId+"_"+testpost[i].activeDate+"_"+testpost[i].activeTime+"' data-toggle='modal' data-target='#activeModal'>"+testpost[i].activeDate+"</br>"+testpost[i].activeTime+"<i class='fa fa-edit font-18 mt-10'></i></a></td>";
					appenddata += "<td><a href='#' class='btn btn-success  btn-xs expiryModal' data-id='"+testpost[i].testPostId+"_"+testpost[i].expirydate+"_"+testpost[i].expiryTime+"' data-toggle='modal' data-target='#expiryModal'>"+testpost[i].expirydate+"</br>"+testpost[i].expiryTime+"<i class='fa fa-edit font-18 mt-10'></i></a></td>"; 
				} 
				appenddata += "<td>"+testpost[i].time+"</td>";
				appenddata += "<td>"+testpost[i].postedDate+"</td>"; 
				appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_6.jsp?id="+ testpost[i].testPostId+"&?status="+testpost[i].postLater+"' class='btn btn-success  btn-circle p-10'><i class='fa fa-info font-18'></i></a></td>";
				appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_5.jsp?id="+ testpost[i].testPostId+"' class='btn btn-success  btn-circle p-10'><i class='icon-eye font-18'></i></a></td>";
				if(testpost[i].status == "completed"){
					appenddata += "<td><a href='#' class='btn btn-success  btn-circle p-10'><i class='fa fa-check font-18'></i></a></td>";
				}
				else{
					appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/manual.jsp?id="+ testpost[i].testPostId+"' class='btn btn-danger  btn-circle p-10'><i class='fa fa-ellipsis-h font-18'></i></a></td>";
				}
				if(testpost[i].postLater == "no"){
					appenddata += "<td><a href='#' class='btn btn-success btn-circle p-10'><i class='fa fa-check-circle-o font-18'></i></a></td>";
				}
				else{
					appenddata += "<td><a href='"+base_url+"jsp/admin/test_post/automatic_6.jsp?id="+ testpost[i].testPostId+"&?status="+testpost[i].postLater+"' class='btn btn-warning btn-circle p-10'><i class='fa fa-circle-o font-18'></i></a></td>";
				}
				if(testpost[i].studentstatus == true){
					appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' id='thumbsdean_item"+testpost[i].testPostId+"' data-id='"+testpost[i].testPostId+"' data-status='"+testpost[i].studentstatus+"' data-original-title='Active' onclick='studentdelete(this)'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				}
				else{
					appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-id='"+testpost[i].testPostId+"' data-status='"+testpost[i].studentstatus+"'  data-original-title='De-Active' onclick='studentdelete(this)'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				}
				appenddata += "<td><a class='btn btn-danger btn-xs' id='testposthis_item"+testpost[i].testPostId+"' data-id='"+testpost[i].testPostId+"' >Delete</a></td></tr>";
			}
			$("#testposthist_tbody").empty();
			$('#testposthist_tbl').DataTable().clear().destroy();
			$("#testposthist_tbody").append(appenddata);
			$("#testposthist_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//TestPost History  Data By Filters

function changeexpirytime(){
	var expdate = $("#datepicker1").val();

	var exptime = $("#timepicker2").val();
	var testid = parseInt($("#testid1").val());
	var changeexpirytime =  {
			"testPostId":testid,
			"expiyDate":expdate,
			"expiyTime":exptime
	};
	var changestre = JSON.stringify(changeexpirytime);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/testpost/v1/changeexpirydate',
		data:changestre,
		success: function(data){
			alert(data.message);
			location.reload();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}	
	})

}
function changeactivetime(){
	var activedate = $("#datepicker").val();

	var acttime = $("#timepicker1").val();
	var testida = parseInt($("#testid").val());
	var changeactivetime =  {
			"testPostId":testida,
			"activeDate":activedate,
			"activeTime":acttime
	};
	var changestra = JSON.stringify(changeactivetime);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/testpost/v1/changeactivedate',
		data:changestra,
		success: function(data){
			alert(data.message);
			location.reload();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}	
	})

}

//for geting exam types in admin testpost step-3

function getTestPostExamTypes(val){
	var appenddata="";
	var url ="";
	/*	if(val === "Previous Year"){
		url = base_url+'rest/student/v1/getTestTypes/Previous Year';
	}
	else {
		url = 
	}*/
	$.ajax({
		type:"GET",
		data:"json",
		contentType:"application/json",
		url: base_url+'rest/student/v1/getTestTypes/live zone',
		cache:false,
		success:function(data){
			var daily = $("#dailyquiz").text();
			if(val == "Previous Year"){
				appenddata += '<input type="text" class="form-control" id="prevsyear" placeholder="previous year">';
				$("#hideselect").hide();
				$("#dailyscoopeimage").hide();
				$("#yearprev").removeClass("hide").addClass("show");
				$("#yearprev").html(appenddata);
			}else if(val == daily){
				//$("#testType").prop("disabled", true);
				$("#hideselect").hide();
				$("#yearprev").removeClass("show").addClass("hide");
				$("#dailyscoopeimage").show();
			}else{

				for (var i=0; i < data.length; i++){
					var exmtype = data[i];
					appenddata += '<option value="'+exmtype+'">'+exmtype+'</option>';
				}  
				$("#hideselect").show(); 
				$("#dailyscoopeimage").hide();
				$("#yearprev").removeClass("show").addClass("hide");
				$("#testType").empty("");
				$("#testType").append('<option value="">--- Select ---</option>');
				$("#testType").append(appenddata);
				$("#testType").prop("disabled", false);
				$('.selectpicker').selectpicker('refresh');
			}
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
			//$("#testType").prop("disabled", true);
			$('#hideselect').css({"display":"none"});
		}
	})
}


//doubts 
var ntg="0";

var examTypeId="";
var standardId="";
var current ="";
var stdid="";
var subid="1";
var dataid="";
var datasub="";
var defaultid="";
$(document).ready(function(){

	var loginData = getLoginData();
	stdid=loginData.studentid;

	 examTypeId=sessionStorage.getItem("examTypeIds");
		standardId=sessionStorage.getItem("standardId");
		

/*	for(var l=0;l<defaultid.length;l++){

		if(l == 0){

			current = document.getElementById('default'+l);

		}
	}*/

	getchap();
	getsub();
})

function highlight(el,id){
	dataid=id;

	getsub();

	var getindex="0";
	
	 $('#nav').find('li').eq(getindex).children().removeClass("highlite");

	if (current != null)
	{
		current.className = "";
	}
	el.className = "highlite";
	current = el;
};


$(document).ready( function () {

	$('#myTable').DataTable();
	  $('[data-toggle="popover"]').popover();   
} ); 


function getchap(){
	var examid=examTypeId;

	var examtype =  {

			"examTypeId":examid,

	}


	var examids = JSON.stringify(examtype);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 

		url: base_url+'rest/subject/v1/getSubjects',
		data:examids,
		success:function(data){
			
			
			var tabledata = '';
			defaultid=data;
			for(var i=0; i<data.length;i++){
				
				
				
                 tabledata +='<li role="presentation" class="nav_item mainMenu-itemLevel1">'+
					'<a href="#"  id="default'+i+'"  onclick="highlight(this,'+"'"+data[i].id+"'"+')">'+data[i].subject+'</a>'+
					'</li>';

               /*  data.eq(0).addClass("highlite");*/
                 
                
                 
				/*if(i==0){
				
					  $("#default"+i).addClass("highlite");
					
					 var v = document.getElementById("default"+i); 
			            v.className += "highlite"; 
			            
					}
*/
				

			}



var getindex="0";

			$("#nav").empty("");

			$("#nav").append(tabledata); 

			 $('#nav').find('li').eq(getindex).children().addClass("highlite");

		},

		error:function(){
			alert(data.responseJSON.errorMessage);
		}
	});


}

var stddoubt="";
var facultyans="";

function getsub(){

	if(dataid=="" || dataid==null){

		subid=subid;
	}
	else{

		subid=dataid;
	}




	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 

		url: base_url+'rest/doubts/v1/hystory/'+stdid+'/'+subid,
		
		 beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
		 
		success:function(data){
			var tabledata1 = '';
			
		var sno=0;
				var ids="";
				var  facultyanswervideo="";
				var ratess="";
				var facultyTile='';
				var facultytitle='';
				for(var i =0; i<data.length;i++){
					sno++
					if(data[i].subjectId == subid){
						ids=data[i].id;
						
						
						facultyanswervideo=data[i].faculty_answer_video;
						ratess=data[i].actualRating;
						
						if(data[i].doubtStatus == "solved"){
	              if(data[i].facultyTitle =="" || data[i].facultyTitle==null){
								
								facultyTile="";
								
							}
							else{
							facultyTile=data[i].facultyTitle;
							facultytitle=facultyTile.trim();
							}
						tabledata1 +='<tr style="border-bottom:1px solid rgba(33, 33, 33, 0.05)">'+'<td class="text-center"><div style="display:flex"><i class="fa fa-check" aria-hidden="true" style="color:green;margin-right:3px"></i>' +data[i].doubtId+'</div></td>';
						
						}
						else{

							tabledata1 +='<tr style="border-bottom:1px solid rgba(33, 33, 33, 0.05)">'+'<td class="text-center"><div style="display:flex"><i class="fa fa-check" aria-hidden="true" style="color:red;margin-right:3px"></i>' +data[i].doubtId+'</div></td>';
							
						}
						
						
							tabledata1 += '<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">'+ data[i].student_doubt + '</p></td>';
						
						/*'<td class="text-center">' +sno+'</td>'+*/
						/*tabledata1 +='<td class="text-center"><img style="border-radius:20px"  src="'+ data[i].student_doubt_image +'" width="40px" height="40px"></td>'+
*/
						tabledata1 += "<td class='text-center'><img src='"+data[i].student_doubt_image+"'  data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+data[i].student_doubt_image+'"'+")' width='40px' height='40px' style='border-radius:20px;'></td>";
						
						if(data[i].faculty_answer == " " || data[i].faculty_answer ==null){

							 tabledata1 +='<td class="text-center" onclick="solutiontext()">Wait' + '</td>';

						 }
						 else{
							/* tabledata1 +='<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;" data-placement="right" data-toggle="tooltip" title="'+data[i].faculty_answer+'">'+data[i].faculty_answer+'</p></td>';*/
							//facultyans=data[i].faculty_answer
							 tabledata1 += '<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showFaculty" onclick="showStudentSolution(this)">'+ data[i].faculty_answer +'</p></td>';
						
						 }
						
						/* if(data[i].faculty_answer == " " || data[i].faculty_answer ==null){

									 tabledata1 +='<td class="text-center">Wait for faculty reply' + '</td>';

								 }
								 else{
									 tabledata1 +='<td class="text-center">' +data[i].faculty_answer+ '</td>';

								 }*/
						/* '<td class="text-center video"  data-toggle="modal" data-target="#myModal">nodata' + '</td>'+*/
						/*'<td class="text-center"><i class="fa fa-user fa-2x" aria-hidden="true"></i></td>';
						*/
						
						
						if(data[i].faculty_answer_image=="" || data[i].faculty_answer_image== null){
							
						tabledata1 +="<td class='text-center'><img src='http://via.placeholder.com/150x150'  onclick='imshowimages()' width='40px' height='40px' style='border-radius:20px;'></td>";
						}
						
					 else{
						
					tabledata1 +="<td class='text-center'><img src='"+data[i].faculty_answer_image+"'  data-toggle='modal' data-target='#showimg' onclick='showimages("+'"'+data[i].faculty_answer_image+'"'+")' width='40px' height='40px' style='border-radius:20px;'></td>";
					}	
						

						if(facultyanswervideo !=""){
							if(facultytitle =="" || facultytitle ==null){
								tabledata1 +='<td class="text-center video"><i onclick="video('+"'"+ids+"'"+','+"'"+facultyanswervideo+"'"+','+"'"+ratess+"'"+')"  style="color:red" class="fa fa-youtube-play fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal"></i></td>';

	}
	else{
	tabledata1 +='<td class="text-center video"><i onclick="video('+"'"+ids+"'"+','+"'"+facultyanswervideo+"'"+','+"'"+ratess+"'"+',\''+facultytitle+'\')"  style="color:red" class="fa fa-youtube-play fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal"></i></td>';
	}

						}

						else{

							tabledata1 +='<td class="text-center video"><i onclick="video('+"'"+ids+"'"+','+"'"+ntg+"'"+','+"'"+ratess+"'"+')" style="color:red" class="fa fa-youtube-play fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal"></i></td>';

						}

						//	'<td class="text-center">nodata'+'</td>'+
						var parseval=parseInt("0");
						var parseval1=parseInt("1");
						var parseval2=parseInt("2");
						var parseval3=parseInt("3");
						var parseval4=parseInt("4");
						var parseval5=parseInt("5");
						
						//added by madhu
							if(data[i].actualRating==parseval){
						
							tabledata1 +='<td class="text-center rh" onclick="rating('+data[i].id+','+data[i].actualRating+')" style="display:flex;" data-toggle="modal" data-target="#rating">'+
							
						'<p>Wait'+'</p>'+'</td>';
						
						}
						
						else if(data[i].actualRating==parseval1){
							

							tabledata1 +='<td class="text-center" style="">'+
							
							'<p><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
						    '<path fill="#FF0000" d="M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2C6.47,2 2,6.47 2,12C2,17.53 6.47,22 12,22C17.53,22 22,17.53 22,12C22,6.47 17.53,2 12,2M14.59,8L12,10.59L9.41,8L8,9.41L10.59,12L8,14.59L9.41,16L12,13.41L14.59,16L16,14.59L13.41,12L16,9.41L14.59,8Z" />'+
							'</svg><div class="ml-5">Irrelevant'+'</div></p>'+
							'</td>';
							
						}
else if(data[i].actualRating==parseval2){
							
							tabledata1 +='<td class="text-center" style="">'+
							
							'<p>'+'<svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
						    '<path fill="#FFA500" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M15.5,8C16.3,8 17,8.7 17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M12,14C13.75,14 15.29,14.72 16.19,15.81L14.77,17.23C14.32,16.5 13.25,16 12,16C10.75,16 9.68,16.5 9.23,17.23L7.81,15.81C8.71,14.72 10.25,14 12,14Z" />'+
						    	'</svg><div class="ml-5">Bad'+'</div></p>'+
							
						'</td>';
							
						}
else if(data[i].actualRating==parseval3){
	
	tabledata1 +='<td class="text-center" style="">'+
	
	'<p><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
    '<path fill="#0000CD" d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,20A8,8 0 0,1 4,12A8,8 0 0,1 12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20M8.5,11A1.5,1.5 0 0,1 7,9.5A1.5,1.5 0 0,1 8.5,8A1.5,1.5 0 0,1 10,9.5A1.5,1.5 0 0,1 8.5,11M17,9.5A1.5,1.5 0 0,1 15.5,11A1.5,1.5 0 0,1 14,9.5A1.5,1.5 0 0,1 15.5,8A1.5,1.5 0 0,1 17,9.5M16,14V16H8V14H16Z" />'+
    	'</svg><div class="ml-5">Satisfied'+'</div></p>'+'</td>';
	
}
else if(data[i].actualRating==parseval4){
	
	tabledata1 +='<td class="text-center" style="">'+
	
		'<p><svg style="width:40px;height:40px" viewBox="0 0 24 24">'+
    '<path fill="#008000" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z" />'+
    	'</svg><div class="ml-5">Good'+'</div>'+'</p>'+'</td>';
	
}

	
	
						if(data[i].doubtStatus == "solved"){


							tabledata1 +='<td class="text-center"><div>Answered'+'</div></td>';

						}

						else{

							tabledata1 +='<td class="text-center"><div>Working Progress'+'</div></td>';

						}

						
						tabledata1 +='</tr>';

					}	

				
			} 

			$("#tablebody").empty(" ");
			$('#myTable').DataTable().clear().destroy();
			$('#tablebody').append(tabledata1); 
			$('#myTable').DataTable(); 





		},
		error:function(){
			/*alert("no data");*/
		}
	});
}
 

function rating(rowid,rateid){		

	var ratetab="";	
	
	var parseval=parseInt("0");
	/*var parseval1=parseInt("1");
	var parseval2=parseInt("2");
	var parseval3=parseInt("3");
	var parseval4=parseInt("4");
	var parseval5=parseInt("5");*/
	var rateval=rateid;
	var rowids=rowid;

	ratetab +='<div class="modal fade" id="rating" role="dialog">'+
		'<div class="modal-dialog">'+
		'<div class="modal-content">'+'<div class="modal-header"  id="mdbdy">'+
		'<button type="button" class="close" data-dismiss="modal" style="color:#000">&times;'+'</button>';

	if(rateval ==parseval){

	

		ratetab += '<h4 class="modal-title text-center">Please give your rating'+'</h4>'+
		'</div>'+
		'<div class="modal-body" id="mdby" style="display:flex;justify-content:center;align-items:center">'+
		'<div class="rating">'+
		  
		  '<input type="radio" name="star" id="star1" value="1">'+
		  '<label for="star1">'+
		  '<svg style="width:70px;height:70px" viewBox="0 0 24 24">'+
		    '<path fill="#FF0000" d="M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2C6.47,2 2,6.47 2,12C2,17.53 6.47,22 12,22C17.53,22 22,17.53 22,12C22,6.47 17.53,2 12,2M14.59,8L12,10.59L9.41,8L8,9.41L10.59,12L8,14.59L9.41,16L12,13.41L14.59,16L16,14.59L13.41,12L16,9.41L14.59,8Z" />'+
				'</svg>'+
		    '<span>Irrelevant'+'</span>'+
		  '</label>'+
		  '<input type="radio" name="star" id="star2" value="2">'+
		  '<label for="star2">'+
		   '<svg style="width:70px;height:70px" viewBox="0 0 24 24">'+
		    '<path fill="#FFA500" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M15.5,8C16.3,8 17,8.7 17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M12,14C13.75,14 15.29,14.72 16.19,15.81L14.77,17.23C14.32,16.5 13.25,16 12,16C10.75,16 9.68,16.5 9.23,17.23L7.81,15.81C8.71,14.72 10.25,14 12,14Z" />'+
	    	'</svg>'+
		   '<span>Bad'+'</span>'+
		    '</label>'+
		  '<input type="radio" name="star" id="star3" value="3">'+
		  '<label for="star3">'+
		    '<svg style="width:70px;height:70px" viewBox="0 0 24 24">'+
		    '<path fill="#0000CD" d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,20A8,8 0 0,1 4,12A8,8 0 0,1 12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20M8.5,11A1.5,1.5 0 0,1 7,9.5A1.5,1.5 0 0,1 8.5,8A1.5,1.5 0 0,1 10,9.5A1.5,1.5 0 0,1 8.5,11M17,9.5A1.5,1.5 0 0,1 15.5,11A1.5,1.5 0 0,1 14,9.5A1.5,1.5 0 0,1 15.5,8A1.5,1.5 0 0,1 17,9.5M16,14V16H8V14H16Z" />'+
	    	'</svg>'+
		    '<span>Satisfied'+'</span>'+
		    '</label>'+
		  '<input type="radio" name="star" id="star4" value="4">'+
		  '<label for="star4">'+
		  '<svg style="width:70px;height:70px" viewBox="0 0 24 24">'+
		    '<path fill="#008000" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z" />'+
		    	'</svg>'+
		    '<span>Good'+'</span>'+
		    '</label>'+
		'</div>'+
		
		'</div>'+
		'<div style="display:flex;justify-content:center" class="">'+
		'<button class="btn btn-default mb-25" onclick="sub('+rowids+')">Submit'+'</button>'+
		'</div>';



	}

	/*else{

		
		
		ratetab +='<h4 class="modal-title text-center">Your Rating'+'</h4>'+
		'</div>'+
		'<div class="modal-body" id="mdby" style="display:flex;justify-content:center;align-items:center">'+
		'<div id="status"></div>'+
		'<form class="ratingForm" style="margin-bottom:20px">'+
		'<fieldset class="rating">';
		
		if(rateval ==parseval1){
			
			$("#rate").empty(" ");
			$("#mdby").empty(" ");
			
			$('.star1').attr('checked', true);
			$('.star2').attr('checked', true);
			$('.star3').attr('checked', true);
			$('.star4').attr('checked', true);
			$('.star5').attr('checked', true);
			
			ratetab +=
				'<input type="radio" id="star4" name="ratess4" value="4" disabled/><label for="star4" title="Gud"><img src="../student/images/irrelevant.png" aria-hidden="true"></label>'+
				'<input type="radio" id="star3" name="ratess3" value="3" disabled/><label for="star3" title="Satisfied"><img src="../src/main/webapp/student/images/satisfied.png" aria-hidden="true"></label>'+
				'<input type="radio" id="star2" name="ratess2" value="2" disabled/><label for="star2" title="Bad"><img src="../src/main/webapp/student/images/bad.png" aria-hidden="true"></label>'+
				'<input type="radio" id="star1" name="ratess1" value="1"  checked disabled/><label for="star1" title="Irrelevant"><img src="../src/main/webapp/student/images/irrelevant.png" aria-hidden="true"></label>';

		}

		else if(rateval ==parseval2){


			ratetab +='<input type="radio" id="star4" name="ratess4" value="4" disabled/><label for="star4" title="Gud"><img src="../student/images/irrelevant.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star3" name="ratess3" value="3" disabled/><label for="star3" title="Satisfied"><img src="../src/main/webapp/student/images/satisfied.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star2" name="ratess2" value="2" checked disabled/><label for="star2" title="Bad"><img src="../src/main/webapp/student/images/bad.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star1" name="ratess1" value="1"  checked disabled/><label for="star1" title="Irrelevant"><img src="../src/main/webapp/student/images/irrelevant.png" aria-hidden="true"></label>';

		
		}
		else if(rateval ==parseval3){
			
			$('#star1').attr('checked', true);
			$('#star2').prop('checked', value);
			$('#star3').prop('checked', value);
			$('#star4').prop('disabled', value);
			$('#star5').prop('disabled', value);

			ratetab +=ratetab +='<input type="radio" id="star4" name="ratess4" value="4" disabled/><label for="star4" title="Gud"><img src="../student/images/irrelevant.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star3" name="ratess3" value="3" checked disabled/><label for="star3" title="Satisfied"><img src="../src/main/webapp/student/images/satisfied.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star2" name="ratess2" value="2" checked disabled/><label for="star2" title="Bad"><img src="../src/main/webapp/student/images/bad.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star1" name="ratess1" value="1"  checked disabled/><label for="star1" title="Irrelevant"><img src="../src/main/webapp/student/images/irrelevant.png" aria-hidden="true"></label>';

		
		
		}
		else if(rateval ==parseval4){


			ratetab +='<input type="radio" id="star4" name="ratess4" value="4" checked disabled/><label for="star4" title="Gud"><img src="../student/images/irrelevant.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star3" name="ratess3" value="3" checked disabled/><label for="star3" title="Satisfied"><img src="../src/main/webapp/student/images/satisfied.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star2" name="ratess2" value="2" checked disabled/><label for="star2" title="Bad"><img src="../src/main/webapp/student/images/bad.png" aria-hidden="true"></label>'+
			'<input type="radio" id="star1" name="ratess1" value="1"  checked disabled/><label for="star1" title="Irrelevant"><img src="../src/main/webapp/student/images/irrelevant.png" aria-hidden="true"></label>';

		}
		else if(rateval ==parseval5){


			ratetab +='<input type="radio" id="star5" name="rating1" value="5" checked disabled/><label for="star5" title="Rocks!"><i class="fa fa-star" aria-hidden="true"></i></label>'+
			'<input type="radio" id="star4" name="rating2" value="4" checked disabled/><label for="star4" title="Pretty good"><i class="fa fa-star" aria-hidden="true"></i></label>'+
			'<input type="radio" id="star3" name="rating3" value="3" checked disabled/><label for="star3" title="Ok"><i class="fa fa-star" aria-hidden="true"></i></label>'+
			'<input type="radio" id="star2" name="rating4" value="2" checked disabled/><label for="star2" title="bad"><i class="fa fa-star" aria-hidden="true"></i></label>'+
			'<input type="radio" id="star1" name="rating5" value="1" checked disabled/><label for="star1" title="Very bad"><i class="fa fa-star" aria-hidden="true"></i></label>';
		}

		
		ratetab +='</fieldset>'+

		'<div class="clearfix"></div>'+


		'</form>'+'</div>'+'</div>'+'</div>'+


		'</div>';




	} 	
*/


	$("#rate").empty(" ");

	$("#rate").append(ratetab);     

}


function sub(rowid){
	
var ratechecked="";


		   var ele = document.getElementsByName('star'); 
           
           for(i = 0; i < ele.length; i++) { 
        	   
               if(ele[i].checked) 
            	   
            	   ratechecked=ele[i].value; 
           } 
		
	
	
		
	
	var rowid1=rowid;
	var stdid1=stdid;
	var ratechecked1=parseInt(ratechecked)

	var ratevals =  {

		"id":rowid1,
		"studentId":stdid1,
		"rating":ratechecked1

	}


	var ratevals1 = JSON.stringify(ratevals);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 

		url: base_url+'rest/doubts/update',
		data:ratevals1,
		success:function(data){

			alert("Thanks for your feedback");
			location.reload();

		},

		error:function(){
			alertify. alert("Hey "+studentname +"Please wait for faculty reply");
		}
	});


}

function video(rowidl,videourl,rat,facultytitle){
	var videotab="";
	var rowidl1="";
	
	/*var fTitle=facultyTitle.trim();
*/
	if(videourl=="0"){

		alertify. alert("Hey "+studentname +", Please wait for faculty reply");
		$("#videorate").empty(" ");
	}

	else{
		rowidl1=rowidl
		
		videotab +='<div class="modal fade" id="myModal" role="dialog" aria-labelledby="attemptedModal" data-backdrop="static" data-keyboard="false">'+
		'<div class="modal-dialog" role="document" style="width:780px;">'+
		'<div class="modal-content">'+
		'<div class="modal-header">';
		if(rat ==0){
			
			videotab +='<button type="button" class="close" style="color:#FFA500" onclick="rating('+rowidl1+','+rat+')" data-toggle="modal" data-target="#rating" data-dismiss="modal" style="color:#000">&times;'+'</button>'+
			'<div style="display:flex">'+
			/*'<h6 style="color:#FFA500"><span></span>Hey <span>'+ studentname+', </span></h6>'+*/
          	'<h6 style="color:#FFA500;" class="text-center">Solution Video</h6>'+
			'</div>'+
			
			/*'<h4 class="modal-title text-center">Solution Video'+'</h4>'+*/
			'</div>'+
			'<div class="modal-body">'+
			/*'<iframe src="'+videourl+'" width="570px" height="400px">'+'</iframe>'+*/
			/* "<video src="+videourl+" width='570px' height='400px' controls></video>"+*/
		
				 '<div class="containerBox">'+
					 "<video src='"+videourl+"' style='width:750px;height:420px' controls></video>"+
						/*<div id="imgs"></div>*/

  				'<div class="image-box">'+
 					/* <img src="https://www.netcetra.com/images/howto_images/picmonkey-logo.jpg" style="width:100px;height:100px;"> */
  				'<h3 style="color:#FFA500;letter-spacing: 2px;"> Skyget<sup style="font-size:22px !important;">&#174;</sup></h3>'+
  			'</div>';
  
  			 if(facultytitle=="" || facultytitle==null || facultytitle ==undefined){
 				
 			}

 else{
 	videotab +='<div class="text-box">'+
 			
     		'<div style="width:200px;height:auto;color:white;padding:10px;" id="">'+facultytitle+'</div>'+
 			
  			'</div>';
     		}
 	/*'</div>'+*/
 videotab +='</div>'+
			'</div>'+
			'</div>'+
			'</div>';

		}
		else{
			videotab +='<button type="button" class="close" style="color:black" data-dismiss="modal" style="color:#000">&times;'+'</button>'+
			
			'<div style="display:flex">'+
			/*'<h6 style="color:#FFA500"><span></span>Hey <span>'+ studentname+', </span></h6>'+*/
          	'<h6 style="color:#FFA500;" class="text-center">Solution Video</h6>'+
			'</div>'+
			/*'<h4 class="modal-title text-center">Solution Video'+'</h4>'+*/
			'</div>'+
			'<div class="modal-body">'+
			/*'<iframe src="'+videourl+'" width="570px" height="400px">'+'</iframe>'+*/
			/* "<video src="+videourl+" width='570px' height='400px' controls></video>"+*/
		
				 '<div class="containerBox">'+
					 "<video src='"+videourl+"' style='width:750px;height:420px' controls></video>"+
						/*<div id="imgs"></div>*/

  				'<div class="image-box">'+
 					/* <img src="https://www.netcetra.com/images/howto_images/picmonkey-logo.jpg" style="width:100px;height:100px;"> */
  			'<h3 style="color:#FFA500;letter-spacing: 2px;"> Skyget<sup style="font-size:22px !important;">&#174;</sup></h3>'+
  			'</div>';
  
  			 if(facultytitle=="" || facultytitle==null || facultytitle ==undefined){
 				
 			}

 else{
 	videotab +='<div class="text-box">'+
 			
     		'<div style="width:200px;height:auto;color:white;padding:10px;" id="">'+facultytitle+'</div>'+
 			
  			'</div>';
     		}
 	/*'</div>'+*/
 videotab +='</div>'+
			'</div>'+

			'</div>'+
			'</div>';
		}
		$("#videorate").empty(" ");

		$('#videorate').append(videotab);   

	}

}

/*$(document).ready(function(){
	 $(".show-modal").click(function(){
	$("#myModal").modal({
		backdrop: 'static',
		keyboard: false
	});
	 });
});*/

var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var studentname = LoginData.name;
	
 function showimage(img){
	    		

	    		var tabdata="";
	    		$("#studentName").html(studentname)
	    		tabdata = "<img src="+img+"  style='width:100%;'></td>";
	    			 
	    		 $("#imgs").empty();
	    		
	    		    	  $('#imgs').append(tabdata); 
	    		    	
	    		
	    	}

 function showimages(imag){
	    		
	    		var tabdata="";
	    		$("#studentNames").html(studentname)
	    		tabdata = "<img src="+imag+"  style='width:100%;'></td>";
	    			 
	    		 $("#imags").empty();
	    		$('#imags').append(tabdata); 
	    		    	
	    		
	    	}

function imshowimages(){
	/*alert("Hey ,"+studentname +"wait for faculty reply");*/
	alertify. alert("Hey "+studentname +", Please wait for faculty reply");
}
function showStudentDoubttext(text){
	
	var facultyans2=text.innerHTML;
	
	var tabdata="";
	    		
	    		tabdata = "<p style='padding:20px;word-break: break-all;'>"+facultyans2+"</p>";
	    			 
	    		 $("#doubtText").empty();
	    		 
	    		$('#doubtText').append(tabdata); 
	    		    
	
}

function showStudentSolution(text){
	
	var facultyans1=text.innerHTML;
	
	var tabdataa="";
	    		
	    		tabdataa = "<p style='padding:20px;word-break: break-all;'>"+facultyans1+"</p>";
	    			 
	    		 $("#solutionText").empty();
	    		$('#solutionText').append(tabdataa); 
	    		    
	
}

function solutiontext(){
	alertify. alert("Hey "+studentname +", Please wait for faculty reply");
	
}