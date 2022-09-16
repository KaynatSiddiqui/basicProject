// Add Concepts for chapter interactive
function chapterConcept(){
	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	var concept =  CKEDITOR.instances.concept.getData();
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);
	var insertedby ="admin";
	if(standard === ""){
		alert("please select Standard");
		return false;
	}
	if(examtype === ""){
		alert("please select examtype");
		return false;
	}
	if(subject === ""){
		alert("please select subject");
		return false;
	}
	if(unit === ""){
		alert("please select unit");
		return false;
	}
	
	if(chapter === ""){
		alert("please select chapter");
		return false;
	}
	
	if(topic === ""){
		alert("please select topic");
		return false;
	}
	if(concept === ""){
		alert("please Fill Concept");
		return false;
	}
	var inputData = {
			  "standardId":standard,
			  "examTypeId":examtype,
			  "subjectId":subject,
			  "unitId":unit,
			  "chapterId":chapter,
			  "topicId":topic,
			  "insertedBy":"admin",
			  "chapterConcepts":concept
	}
	var inputdata = JSON.stringify(inputData);
 	
	jQuery.ajax({
		  url: base_url+'rest/admin/createChapterInteractiveConcepts',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputdata,
		  success: function(data,textStatus, jqXHR){
			 
			  alert(data.message);
			  window.location = base_url+"jsp/admin/studyzone/concept.jsp";


		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		 
		
	   });
	
}
function get_concepts(){
	
	var appenddata;
	$.ajax({
		url:base_url+'rest/admin/getAllChapterConcepts',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#concept_tbody").empty();
			$("#concept_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				  appenddata += "<tr id='concept_row"+data[i].chapterConceptId+"'><td>"+(i+1)+"</td>";    
				  appenddata += "<td>"+data[i].standard+"</td>"; 
				  appenddata += "<td>"+data[i].examtype+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>"; 
				  appenddata += "<td>"+data[i].unit+"</td>"; 
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>"; 
                 // appenddata += "<td>"+data[i].concepts+"</td>"; 
					 appenddata += "<td><a href='#' data-toggle='modal' data-target='#conceptapopup' data-id='"+data[i].concepts+"' onclick='getAllChapterConcepts(this)' class='btn btn-success'>View</a></td>";
				 
			
			 appenddata += "<td>"+data[i].insertedDate+"</td>";
				  if(data[i].updatedDate === null){
					  appenddata += "<td></td>";
				  }else{
					  appenddata += "<td>"+data[i].updatedDate+"</td>";
				  }
				 
				  if(data[i].status == false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else if(data[i].status == true){
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  appenddata +="<td><a href='concept_edit.jsp?id="+ data[i].chapterConceptId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='concept_item' data-id='"+data[i].chapterConceptId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td>";
			}
			 $("#concept_tbody").empty();
			  $('#concept_tbl').DataTable().clear().destroy();
			  $("#concept_tbody").append(appenddata);
			  $("#concept_tbl").DataTable();
				 
			},
	 error: function(data) {		
		  $("#concept_tbody").html('<tr><td class="center" colspan="14">Topics not found!</td></tr>');
		  
		

	  }
	 
});
	
}

function getAllChapterConcepts(elem){
	var concepts = $(elem).attr('data-id');
	$("#concepts").html(concepts);
	  rendereelemntforkatext();
}


function getconceptbyid(){
		var conceptid = getParameterByName('id');
		
		var subappenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/getConceptsById/'+conceptid,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  var exam = [];
				exam =	data.examtypes;
				
			  $("#loading").hide();
			  $("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');
			  for(var i=0; i<exam.length; i++){
					$("#examtype option[value = '"+exam[i].examtypeId+"']").attr('selected', 'selected');
					
				
				}
					
			  	    	$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
							$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
			  	    $("#chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');
			  	    	$("#topic").append('<option value="'+data.topicId+'">'+data.topic+'</option>');
			  	    	 CKEDITOR.instances.concept.setData(data.concepts);
			  	    	rendereelemntforkatext();
			  	    
	  
			  	    	$('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
			
		  }, 
		  
	});
	
	
}
function conceptEdit(){
	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	var concept =  CKEDITOR.instances.concept.getData();
	var chapterConceptsId = getParameterByName('id');
	var insertedby ="admin";
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);

	if(standard === ""){
		alert("please select Standard");
		return false;
	}
	if(examtype === ""){
		alert("please select Examtype");
		return false;
	}
	if(subject === ""){
		alert("please select subject");
		return false;
	}
	if(unit === ""){
		alert("please select unit");
		return false;
	}
	
	if(chapter === ""){
		alert("please select chapter");
		return false;
	}
	
	if(topic === ""){
		alert("please select topic");
		return false;
	}
	if(concept === ""){
		alert("please Fill Concept");
		return false;
	}
	var inputData = {
			 "standardId":standard,
			 "examTypeId":examtype,
			  "subjectId":subject,
			  "unitId":unit,
			  "chapterId":chapter,
			  "topicId":topic,
			  "chapterConceptsId":chapterConceptsId,
			  "chapterConcepts":concept,
			  "status":true,
			  "updatedBy":"saii"
	}
	var inputdata = JSON.stringify(inputData);
 	
	jQuery.ajax({
		  url: base_url+'rest/admin/updateChapterConcepts',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputdata,
		  success: function(data,textStatus, jqXHR){
			 
			  alert(data.message);
			  window.location = base_url+"jsp/admin/studyzone/concept.jsp";


		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		 
		
	   });
	
}
	$(document).on('click',"a[id^=concept_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteconcept(id);
	  }
});

function deleteconcept(id){


	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/deleteConcepts/'+id,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#concept_row"+id).remove();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);

	      }
		
	});
	
	
}



// addvideo post
function sqbPostAddvideo(){
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var chpstr = chapter.toString();
	var topicId = $("#topic").val();
	var videourl = $("#videourl").val();
	var videotext = $("#videotext").val();
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);

	if(standardname ==="" || standardname === "---Select---" || standardname === null){
		alert("Please select Standard");
		return false;
	}
	if(examtype ==="" || examtype === "---Select---" || examtype === null){
		alert("Please select Examtype");
		return false;
	}
	if(subjectname ==="" || subjectname === "---Select---" || subjectname === null){
		alert("Please select Subject");
		return false;
	}
	if(unit ==="" || unit ==="---Select---" || unit === null){
		alert("Please select Unit");
		return false;
	}
	if(chapter ==="" || chapter ==="---Select---" || chapter === null){
		alert("Please Enter Chapter");
		return false;
	}
	if(topicId ==="" || topicId ==="---Select---" || topicId === null){
		alert("Please Select topic");
		return false;
	}
	
	if(videotext ==="" || videotext ==="---Select---" || videotext === null){
		alert("Please Select videotext");
		return false;
	}
	var inputData = {
			"standardId": standardname,
			"examTypeId":examtype,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chpstr,
			"topicId":topicId,
			"videoLink":videourl,
			"videoText":videotext
		    }
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url: base_url+'rest/admin/createChapterInteractiveVideos',
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/addvideos.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//Addvideo GET
function sqbGetAddVideo(){
	var appenddata = "";
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/getAllVideoLinks',
		datatype:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#sqbchapter_tbody").empty();
			$("#sqbchapter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr class='sqbchapter_ro' id='sqbvideo_row"+data[i].chapterId+"' data-id="+data[i].chapterId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td>"+data[i].topic+"</td>";
				appenddata += "<td>"+data[i].videotext+"</td>";
				appenddata += "<td>"+data[i].videoLink+"</td>";
				appenddata += "<td>"+data[i].insertedDate+"</td>";
				
				if(data[i].updatedDate == null){
					appenddata += "<td></td>";
				}else{
					appenddata += "<td>"+data[i].updatedDate+"</td>";
				}
				
				  if(data[i].status === false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else if(data[i].status){
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  appenddata += "<td><a href='addvideos_edit.jsp?id="+ data[i].chapterVideoId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].chapterVideoId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbvideo_item"+data[i].chapterVideoId+"' data-id='"+data[i].chapterVideoId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				    
				  }
			$("#sqbchapter_tbody").empty();
			$("#sqbchapter_tbody").append(appenddata);
			$("#sqbchapter_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//del AddVideo

$(document).on('click', "a[id^=sqbvideo_item]", function(){
	var id = $(this).attr("data-id");
	var con = confirm("Are you Sure to delete?")

	if(con){
		deletesqbvideo(id);
	}
});

function deletesqbvideo(id){
	var status = false;
	var videoid = id;

	$.ajax({
		url:  base_url+'rest/admin/deleteVideoLink/'+videoid,
		type:"GET",
		 dataType: "json",
		  contentType: 'application/json',
	      success: function(data){
	    	  alert(data.message);
	    	  $("#sqbvideo_row"+videoid).remove();
	    	  location.reload();
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);

	      }
		
	})
	
}
//delet AddVideo
//AddVideo update
function sqbvideoupdate(){
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var paramter = $("#parameters").val();
	var chapter = $("#chapter").val();
var topicId = $("#topic").val();
	var videourl = $("#videourl").val();
	var videotext =  $("#videotext").val();
	var id = getParameterByName('id');
	var status = true;
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);

	var inputData = {
			"standardId": standardname,
			"examTypeId":examtype,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chapter,
			"topicId":topicId,
			"videoLink":videourl,
			"videoText":videotext,
			"videoLinkId":id,
			"status":status,
			"updatedBy":"admin"
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/updateVideoLink',
		datatype:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/addvideos.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function sqbAddVideoById(){
	var Id = getParameterByName('id');

	$.ajax({
		type:"GET",
		url: base_url+'rest/admin/getVideoLinkById/'+Id,
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			var exam = [];
			exam =	data.examtypes;
            
			
			$("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');
			for(var i=0; i<exam.length; i++){
				
				$("#examtype option[value = '"+exam[i].examtypeId+"']").attr('selected', 'selected');
                    
					
			}
			
			$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
			$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
			$("#chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');
			$("#topic").append('<option value="'+data.topicId+'">'+data.topic+'</option>');
			$("#videourl").val(data.videoLink);
			$("#videotext").val(data.videotext);
			$('.selectpicker').selectpicker('refresh');	

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function chapterFormulae(){
	var standardname = $("#standard").val();
	var examtype = $("#examtype").val();

	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var chapstr = chapter.toString();
	var chapterformulae =  CKEDITOR.instances.editor1.getData();

	
	examtype = examtype.map(Number);
	if(standardname ==="" || standardname === "---Select---" || standardname === null){
		alert("Please select Standard");
		return false;
	}
	if(examtype ==="" || examtype === "---Select---" || examtype === null){
		alert("Please select Examtype");
		return false;
	}
	if(subjectname ==="" || subjectname === "---Select---" || subjectname === null){
		alert("Please select Subject");
		return false;
	}
	if(unit ==="" || unit ==="---Select---" || unit === null){
		alert("Please select Unit");
		return false;
	}
	if(chapter ==="" || chapter ==="---Select---" || chapter === null){
		alert("Please Enter Chapter");
		return false;
	}
	var inputData = {
			"standardId": standardname,
			"examTypeId":examtype,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chapstr,
			"chapterFormulae":chapterformulae,
			"insertedBy":"admin",
		    }
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url: base_url+'rest/admin/createChapterInteractiveFormulas',
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/chapterformulae.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function sqbGetchapterFormulae(){
	var appenddata = "";
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/getAllChapterFormulas',
		datatype:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#chapterFormulae_tbody").empty();
			$("#chapterFormulae_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr class='formulachapter_ro' id='formulachapter_row"+data[i].formulaId+"' data-id="+data[i].formulaId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
			
				appenddata += "<td>"+data[i].chapter+"</td>";
				 appenddata += "<td><a href='#' data-toggle='modal' data-target='#formulapopup' data-id='"+data[i].formula+"' onclick='getFormulasChapter(this)' class='btn btn-success'>View</a></td>";
				appenddata += "<td>"+data[i].insertedDate+"</td>";
				if(data[i].updatedDate === null){
					appenddata += "<td></td>";
				}else{
					appenddata += "<td>"+data[i].updatedDate+"</td>";
				}
				  appenddata += "<td><a href='chapterformulae_edit.jsp?id="+ data[i].formulaId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].formulaId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='formulachapter_item"+data[i].formulaId+"' data-id='"+data[i].formulaId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td></tr>";
				 
				    
				  }
			$("#chapterFormulae_tbody").empty();
			$("#chapterFormulae_tbody").append(appenddata);
			$("#chapterFormulae_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
function getFormulasChapter(elem){
	var formula = $(elem).attr('data-id');
	$("#formulas").html(formula);
	rendereelemntforkatext();
}
$(document).on('click', "a[id^=formulachapter_item]", function(){
	var id = $(this).attr("data-id");
	var con = confirm("Are you Sure to delete?")
	if(con == true){
		deleteformulachap(id);
	}
});

function deleteformulachap(id){
	var status = false;


	$.ajax({
		url:  base_url+'rest/admin/deleteFormula/'+id,
		type:"GET",
		 dataType: "json",
		  contentType: 'application/json',
	      success: function(data){
	    	  alert(data.message);
	    	  $("#formulachapter_row"+id).remove();
	    	  location.reload();
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
	
}


function byIdGetChapFormulae(){
	var formulaId = getParameterByName('id');
	
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/getFormulasById/'+formulaId,
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var exam = [];
			exam =	data.examtypes;
			$("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');

			for(var i=0; i<exam.length; i++){
				$("#examtype option[value = '"+exam[i].examtypeId+"']").attr('selected', 'selected');
				     
					
			}
			
			$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
			$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
			$("#chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');
			CKEDITOR.instances.editor1.setData(data.formula);
			rendereelemntforkatext();
			$('.selectpicker').selectpicker('refresh');	

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function chapterFormulaeEdit(){
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var examtype = $("#examtype").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var id = getParameterByName('id');

    var chapterformulae =  CKEDITOR.instances.editor1.getData();
	var status = true;
	examtype = examtype.map(Number);
	var inputData = {
			"standardId": standardname,
			"examTypeId":examtype,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chapter,
			"chapterFormulaeId":id,
			"chapterFormulae":chapterformulae,
			"status":status,
			"updatedBy":"admin"
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/updateChapterFormula',
		datatype:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/chapterformulae.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}






//chapter basic
function postChapterBasic(){
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var chapstr = chapter.toString();
	var chapterBasics =  CKEDITOR.instances.chapterbasic.getData();

	
	if(standardname ==="" || standardname === "---Select---" || standardname === null){
		alert("Please select Standard");
		return false;
	}
	if(subjectname ==="" || subjectname === "---Select---" || subjectname === null){
		alert("Please select Subject");
		return false;
	}
	if(unit ==="" || unit ==="---Select---" || unit === null){
		alert("Please select Unit");
		return false;
	}
	if(chapter ==="" || chapter ==="---Select---" || chapter === null){
		alert("Please Enter Chapter");
		return false;
	}
	var inputData = {
			"standardId": standardname,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chapstr,
			"chapterBasics":chapterBasics,
			"insertedBy":"admin",
		    }
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url: base_url+'rest/admin/createChapterInteractiveBasics',
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/chapterbasic.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function getChapterBasic(){
	var appenddata = "";
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/getAllChapterBasics',
		datatype:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#chapterbasic_tbody").empty();
			$("#chapterbasic_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				
				appenddata += "<tr class='basicchapter_ro' id='basicchapter_row"+data[i].basicsId+"' data-id="+data[i].basicsId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				appenddata += "<td><a href='#' data-toggle='modal' data-target='#chapbasicpopup' data-id='"+data[i].basics+"'  onclick='getChapterbasics(this)' class='btn btn-success'>View</a></td>";
				appenddata += "<td>"+data[i].insertedDate+"</td>";
				if(data[i].updatedDate === null){
					appenddata += "<td></td>";
				}else{
					appenddata += "<td>"+data[i].updatedDate+"</td>";
				}
				  appenddata += "<td><a href='chapterbasic_edit.jsp?id="+ data[i].basicsId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].basicsId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='basicchapter_item"+data[i].basicsId+"' data-id='"+data[i].basicsId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td></tr>";
				 
				    
				  }
			$("#chapterbasic_tbody").empty();
			$("#chapterbasic_tbody").append(appenddata);

			$("#chapterbasic_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}



function getChapterbasics(elem){
	var basic = $(elem).attr("data-id");
	$("#basics").html(basic);
	rendereelemntforkatext();
}

$(document).on('click', "a[id^=basicchapter_item]", function(){
	var id = $(this).attr("data-id");
	var con = confirm("Are you Sure to delete?")
	if(con == true){
		deleteBasicChap(id);
	}
});

function deleteBasicChap(id){
	var status = false;

	$.ajax({
		url:  base_url+'rest/admin/deleteBasics/'+id,
		type:"GET",
		 dataType: "json",
		  contentType: 'application/json',
	      success: function(data){
	    	  alert(data.message);
	    	  $("#basicchapter_row"+id).remove();
	    	  location.reload();
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete unit!");
	      }
		
	})
	
}


function byIdGetChapBasic(){
	var formulaId = getParameterByName('id');
	
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/getBasicsById/'+formulaId,
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			$("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');
			
			$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
			$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
			$("#chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');
			CKEDITOR.instances.chapterbasicedit.setData(data.basics);
			rendereelemntforkatext();
			$('.selectpicker').selectpicker('refresh');	

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function chapterBasicEdit(){
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var id = getParameterByName('id');
	var chapterBasics =  $("#chapterbasic").val();
	var status = true;
	var inputData = {
			"standardId": standardname,
			"subjectId":subjectname,
			"unitId":unit,
			"chapterId":chapter,
			"chapterBasicsId":id,
			"chapterBasics":chapterBasics,
			"status":status,
			"updatedBy":"admin"
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/updateChapterBasics',
		datatype:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/studyzone/chapterbasic.jsp";
			}, 1000);
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//AI videos filters

function getvideosfiterByStdSub(){
	var standards = "";
    var subjects = "";
    var chapters = "";
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	var chapters = $("#chapter").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	if(chapters =="--- Select ---" || chapters == "" || chapters == null || chapters =="Nothing selected"){
		chapters=0;
	}
	
	var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'","chapterId":"'+chapters+'"}';
	
	
	var appenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllVideosByStdSubchp',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
	     success:function(data){
				for(var i=0;i<data.length;i++){
					appenddata += "<tr class='sqbchapter_ro' id='sqbvideo_row"+data[i].chapterId+"' data-id="+data[i].chapterId+"><td>"+(i+1)+"</td>";
					appenddata += "<td>"+data[i].standard+"</td>";
					appenddata += "<td>"+data[i].examtype+"</td>";
					appenddata += "<td>"+data[i].subject+"</td>";
					appenddata += "<td>"+data[i].unit+"</td>";
					appenddata += "<td>"+data[i].chapter+"</td>";
					appenddata += "<td>"+data[i].topic+"</td>";
					appenddata += "<td>"+data[i].videoLink+"</td>";
					appenddata += "<td>"+data[i].insertedDate+"</td>";
					appenddata += "<td>"+data[i].updatedDate+"</td>";
					  if(data[i].status === false){
						  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
					  }
					  else /*if(data[i].status)*/{
						  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
					  }
					  
					  appenddata += "<td><a href='addvideos_edit.jsp?id="+ data[i].chapterVideoId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].chapterVideoId+"' data-original-title='Edit'>" +
					  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbvideo_item"+data[i].chapterVideoId+"' data-id='"+data[i].chapterVideoId+"' data-toggle='tooltip' data-original-title='Delete'>" +
					  				"<i class='icon-trash font-18'></i></a></td>";
					 
					    
					  }
				$("#sqbchapter_tbody").empty();
				$("#sqbchapter_tbody").append(appenddata);
				$("#sqbchapter_tbl").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
			  })
}

//AI formulas filters

function getformulasfiterByStdSubChap(){
	var standards = "";
    var subjects = "";
    var chapters = "";
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	var chapters = $("#chapter").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}if(chapters =="--- Select ---" || chapters == "" || chapters == null || chapters =="Nothing selected"){
		chapters=0;
	}
	
	var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'","chapterId":"'+chapters+'"}';
	
	
	var appenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllFormulasByStdSubchp',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
	     success:function(data){
				for(var i=0;i<data.length;i++){
					appenddata += "<tr class='formulachapter_ro' id='formulachapter_row"+data[i].formulaId+"' data-id="+data[i].formulaId+"><td>"+(i+1)+"</td>";
					appenddata += "<td>"+data[i].standard+"</td>";
					appenddata += "<td>"+data[i].examtype+"</td>";
					appenddata += "<td>"+data[i].subject+"</td>";
					appenddata += "<td>"+data[i].unit+"</td>";
				
					appenddata += "<td>"+data[i].chapter+"</td>";
					 appenddata += "<td><a href='#' data-toggle='modal' data-target='#formulapopup' data-id='"+data[i].formula+"' onclick='getFormulasChapter(this)' class='btn btn-success'>View</a></td>";
					appenddata += "<td>"+data[i].insertedDate+"</td>";
					if(data[i].updatedDate === null){
						appenddata += "<td></td>";
					}else{
						appenddata += "<td>"+data[i].updatedDate+"</td>";
					}
					  appenddata += "<td><a href='chapterformulae_edit.jsp?id="+ data[i].formulaId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].formulaId+"' data-original-title='Edit'>" +
					  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='formulachapter_item"+data[i].formulaId+"' data-id='"+data[i].formulaId+"' data-toggle='tooltip' data-original-title='Delete'>" +
					  				"<i class='icon-trash font-18'></i></a></td></tr>";
					 
					    
					  }
				$("#chapterFormulae_tbody").empty();
				$("#chapterFormulae_tbody").append(appenddata);
				$("#chapterFormulae_tbl").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
	})
}



//AI concepts filters

function getConceptsfiterByStdSubChap(){
	var standards = "";
    var subjects = "";
    var chapters = "";
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	var chapters = $("#chapter").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	if(chapters =="--- Select ---" || chapters == "" || chapters == null || chapters =="Nothing selected"){
		chapters=0;
	}
	var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'","chapterId":"'+chapters+'"}';
	
	
	var appenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllConceptsByStdSubchp',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
	 	
			success:function(data){
				for(var i=0; i<data.length; i++){
					  appenddata += "<tr id='concept_row"+data[i].chapterConceptId+"'><td>"+(i+1)+"</td>";    
					  appenddata += "<td>"+data[i].standard+"</td>"; 
					  appenddata += "<td>"+data[i].examtype+"</td>";
					  appenddata += "<td>"+data[i].subject+"</td>"; 
					  appenddata += "<td>"+data[i].unit+"</td>"; 
					  appenddata += "<td>"+data[i].chapter+"</td>"; 
					  appenddata += "<td>"+data[i].topic+"</td>"; 
					  appenddata += "<td><a href='#' data-toggle='modal' data-target='#conceptapopup' data-id='"+data[i].concepts+"' onclick='getAllChapterConcepts(this)' class='btn btn-success'>View</a></td>";
					  appenddata += "<td>"+data[i].insertedDate+"</td>";
					  if(data[i].updatedDate === null){
						  appenddata += "<td></td>";
					  }else{
						  appenddata += "<td>"+data[i].updatedDate+"</td>";
					  }
					 
					  if(data[i].status == false){
						  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
					  }
					  else if(data[i].status == true){
						  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
					  }
					  appenddata +="<td><a href='concept_edit.jsp?id="+ data[i].chapterConceptId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='concept_item' data-id='"+data[i].chapterConceptId+"' data-toggle='tooltip' data-original-title='Delete'>" +
							"<i class='icon-trash font-18'></i></a></td>";
				}
				 $("#concept_tbody").empty();
				  $('#concept_tbl').DataTable().clear().destroy();
				  $("#concept_tbody").append(appenddata);
				  $("#concept_tbl").DataTable();
					 
				},
		 error: function(data) {		
			  $("#concept_tbody").html('<tr><td class="center" colspan="14">Topics not found!</td></tr>');
			  
			

		  }
				
	})
}


//Ncert

function CreateNcert(){
	
	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	var ncert =  CKEDITOR.instances.ncert.getData();
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);
	var insertedby ="admin";
	if(standard === ""){
		alert("please select Standard");
		return false;
	}
	if(examtype === ""){
		alert("please select examtype");
		return false;
	}
	if(subject === ""){
		alert("please select subject");
		return false;
	}
	if(unit === ""){
		alert("please select unit");
		return false;
	}
	
	if(chapter === ""){
		alert("please select chapter");
		return false;
	}
	
	if(topic === ""){
		alert("please select topic");
		return false;
	}
	if(ncert === ""){
		alert("please Fill Concept");
		return false;
	}
	
		var inputData = {
			  "standardId":standard,
			  "examTypeId":examtype,
			  "subjectId":subject,
			  "unitId":unit,
			  "chapterId":chapter,
			  "topicId":topic,
			  "insertedBy":"admin",
			  "chapterConcepts":ncert
	}
	var inputdata = JSON.stringify(inputData);
	
		jQuery.ajax({
			  url: base_url+'rest/ncert/createNcert',
			  type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 	
			  data: inputdata,
			  success: function(data){
				  alert(data.message);
				  window.location = base_url+"jsp/admin/studyzone/Ncert.jsp";
			  },
			  error: function(data) {		
				  alert(data.responseJSON.errorMessage);
			  }
		   });
}


function getNcert(){
	var appenddata;
	$.ajax({
		url:base_url+'rest/ncert/getAllNcert',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#ncert_tbody").empty();
			$("#ncert_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				  appenddata += "<tr id='ncert_row"+data[i].chapterConceptId+"'><td>"+(i+1)+"</td>";    
				  appenddata += "<td>"+data[i].standard+"</td>"; 
				  appenddata += "<td>"+data[i].examtype+"</td>";
				  appenddata += "<td>"+data[i].subject+"</td>"; 
				  appenddata += "<td>"+data[i].unit+"</td>"; 
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>"; 
                 // appenddata += "<td>"+data[i].concepts+"</td>"; 
					 appenddata += "<td><a href='#' data-toggle='modal' data-target='#ncertpopup' data-id='"+data[i].concepts+"' onclick='getNcertcontent(this)' class='btn btn-success'>View</a></td>";
				  appenddata += "<td>"+data[i].insertedDate+"</td>";
				  if(data[i].updatedDate === null){
					  appenddata += "<td></td>";
				  }else{
					  appenddata += "<td>"+data[i].updatedDate+"</td>";
				  }
				 
				  if(data[i].status == false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else if(data[i].status == true){
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  appenddata +="<td><a href='Ncertedit.jsp?id="+ data[i].chapterConceptId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='ncert_item' data-id='"+data[i].chapterConceptId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td>";
			}
			 $("#ncert_tbody").empty();
			  $('#ncert_tbl').DataTable().clear().destroy();
			  $("#ncert_tbody").append(appenddata);
			  rendereelemntforkatext();
			  $("#ncert_tbl").DataTable();
				 
			},
	 error: function(data) {		
		  $("#ncert_tbody").html('<tr><td class="center" colspan="14">Ncert Details not found!</td></tr>');
	  }
})
	
}

function getNcertcontent(elem){
	var ncert = $(elem).attr('data-id');
	$("#ncerttype").html(ncert);
	  rendereelemntforkatext();
}


function ncertbyid(){
var ncertid = getParameterByName('id');

var subappenddata;
$.ajax({
type: "GET",
  dataType: "json",
  contentType: 'application/json', 
  url: base_url+'rest/ncert/getNcertById/'+ncertid,
  success: function(data){
	  var exam = [];
		exam =	data.examtypes;
		
	  $("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');
	  for(var i=0; i<exam.length; i++){
			$("#examtype option[value = '"+exam[i].examtypeId+"']").attr('selected', 'selected');
			
		
		}
			
	  	    	$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
					$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
	  	    $("#chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');
	  	    	$("#topic").append('<option value="'+data.topicId+'">'+data.topic+'</option>');
	  	    	 CKEDITOR.instances.ncertedit.setData(data.concepts);
	  	    	rendereelemntforkatext();
	  	    

	  	    	$('.selectpicker').selectpicker('refresh');
  },
  error: function(data) {		
	  alert(data.responseJSON.errorMessage);
	
  }
});
}

function Ncertupdate(){
	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	var concept =  CKEDITOR.instances.ncertedit.getData();
	var chapterConceptsId = getParameterByName('id');
	var insertedby ="admin";
	var examtype = $("#examtype").val();
	examtype = examtype.map(Number);
     var status = "";
	if(standard === ""){
		alert("please select Standard");
		status = false;
		return false;
	}
	if(examtype === ""){
		alert("please select Examtype");
		status = false;
		return false;
	}
	if(subject === ""){
		alert("please select subject");
		status = false;
		return false;
	}
	if(unit === ""){
		alert("please select unit");
		status = false;
		return false;
	}
	
	if(chapter === ""){
		alert("please select chapter");
		status = false;
		return false;
	}
	
	if(topic === ""){
		alert("please select topic");
		status = false;
		return false;
	}
	if(concept === ""){
		alert("please Fill Concept");
		status = false;
		return false;
	}
	
	if(standard != "" && subject != "" && unit != "" &&  chapter != "" && topic != "" && concept != ""){
		status = true;
	}

	var inputData = {
			 "standardId":standard,
			 "examTypeId":examtype,
			  "subjectId":subject,
			  "unitId":unit,
			  "chapterId":chapter,
			  "topicId":topic,
			  "Id":chapterConceptsId,
			  "chapterConcepts":concept,
			  "status":status,
			  "updatedBy":"saii"
	}
	var inputdata = JSON.stringify(inputData);
 	
	jQuery.ajax({
		  url: base_url+'rest/ncert/updateNcert',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputdata,
		  success: function(data){
			 
			  alert(data.message);
			  window.location = base_url+"jsp/admin/studyzone/Ncert.jsp";


		  },
		  error: function(data) {		
			  alert(data.responseJSON.errorMessage);
		  }
	   });
}

$(document).on('click',"a[id^=ncert_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteconcept(id);
	  }
});

function deleteconcept(id){


	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/ncert/deleteNcert/'+id,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#ncert_row"+id).remove();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);

	      }
		
	});
}

function Ncertbyfilter(){
	var appenddata = "";
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var chapter = $("#chapter").val();
	
	if(standard =="--- Select ---" || standard == "" || standard == null || standard =="Nothing selected"){
		standard = 0;
	}
	if(subject =="--- Select ---" || subject == "" || subject == null || subject =="Nothing selected"){
		subject = 0;
	}if(chapter =="--- Select ---" || chapter == "" || chapter == null || chapter =="Nothing selected"){
		chapter = 0;
	}
	
	
	var inputData = {
			  "standardId":standard,
			  "subjectId":subject,
			  "chapterId":chapter,
	}
	var inputdata = JSON.stringify(inputData);
	
	
$.ajax({
	url:base_url+'rest/ncert/sqb/getAllNcertByStdSubchp',
	type:"POST",
	dataType:"json",
	contentType:'application/json',
	data:inputdata,
	beforeSend: function(){
		$("#ncert_tbody").empty();
		$("#ncert_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	},
	success:function(data){
		for(var i=0; i<data.length; i++){
			  appenddata += "<tr id='ncert_row"+data[i].chapterConceptId+"'><td>"+(i+1)+"</td>";    
			  appenddata += "<td>"+data[i].standard+"</td>"; 
			  appenddata += "<td>"+data[i].examtype+"</td>";
			  appenddata += "<td>"+data[i].subject+"</td>"; 
			  appenddata += "<td>"+data[i].unit+"</td>"; 
			  appenddata += "<td>"+data[i].chapter+"</td>"; 
			  appenddata += "<td>"+data[i].topic+"</td>"; 
             // appenddata += "<td>"+data[i].concepts+"</td>"; 
				 appenddata += "<td><a href='#' data-toggle='modal' data-target='#ncertpopup' data-id='"+data[i].concepts+"' onclick='getNcertcontent(this)' class='btn btn-success'>View</a></td>";
			  appenddata += "<td>"+data[i].insertedDate+"</td>";
			  if(data[i].updatedDate === null){
				  appenddata += "<td></td>";
			  }else{
				  appenddata += "<td>"+data[i].updatedDate+"</td>";
			  }
			 
			  if(data[i].status == false){
				  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  }
			  else if(data[i].status == true){
				  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			  appenddata +="<td><a href='Ncertedit.jsp?id="+ data[i].chapterConceptId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='ncert_item' data-id='"+data[i].chapterConceptId+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td>";
		}
		 $("#ncert_tbody").empty();
		  $('#ncert_tbl').DataTable().clear().destroy();
		  $("#ncert_tbody").append(appenddata);
		  $("#ncert_tbl").DataTable();
			 
		},
 error: function(data) {		
	  $("#ncert_tbody").html('<tr><td class="center" colspan="14">Ncert Details not found!</td></tr>');
  }
})
}