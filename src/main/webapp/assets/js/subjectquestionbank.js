
//SqbStandard code
function sqbstandardadd(){
	$("#sqbstaadd").addClass('disablelink').removeClass('activatelink');
	var standard = $("#sqbstandard").val();
	var standardimage = $("#base67photo").val();
	
	var standardreq = {
			"standard":standard,
			"insertedBy":"santosh",
			"image":standardimage
		}
	
	var standardstr = JSON.stringify(standardreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		 url: base_url+'rest/admin/sqb/createstandard',
		  data: standardstr,
		  success: function(data){
		   alert(data.message);
		   window.location = base_url+"jsp/admin/subjectwisequestionbank/standards.jsp";
		  },
		  error:function(data){
			  $("#sqbstaadd").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);
		  }
	})
}


function sqbstandardgetall(){
	
	var stdappenddata = "";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllstandards',
			beforeSend: function(){
				$("#sqbstan_tbody").empty();
				$("#sqbstan_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  for(var i=0;i<data.length;i++){
	  stdappenddata += "<tr id='stand_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
	  stdappenddata += "<td>"+data[i].standard+"</td>";
	  if(data[i].image == "" || data[i].image == null){
		  stdappenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
	  }
	  else{
		  stdappenddata += "<td><img src="+data[i].image+" width='50px'></td>";
	  }
	  stdappenddata += "<td>"+data[i].insertedDate+"</td>";
	  stdappenddata += "<td>"+data[i].updatedDate+"</td>";
	  if(data[i].status == "false"){
		  stdappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
	  }
	  else{
		  stdappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
	  }
	  
	  stdappenddata += "<td><a href='standards_edit.jsp?id="+ data[i].id + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"'  data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='stan_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
	  				"<i class='icon-trash font-18'></i></a></td>";
			  }
			  
			  $("#sqbstan_tbody").empty();
			  $("#sqbstan_tbody").append(stdappenddata);
			    $('#sqbstan_tbl').DataTable();
			  
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
		  
		  })  
}


function sqbstandardgetbyid(){
	
	var standardid = getParameterByName('id');
	
	var standareq = {
		     "Id":standardid,
	}
	
	var standstr = JSON.stringify(standareq);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getstandardsByid',
		data: standstr,
		success: function(data){
		       $("#standard").val(data[0].standard);
		       
		       if(data[0].image == null || data[0].image == ""){
					$("#img").attr("src","http://via.placeholder.com/150x150");
					$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
				}
				else{
					$("#img").attr("src",data[0].image);
				}
		       
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }		
	})
}


function sqbstandardgetupdate(){
	$("#sqbstaedit").addClass('disablelink').removeClass('activatelink');
	var standardid = getParameterByName('id');
	
	var standard = $("#standard").val();
	
	var standardimg = $("#base67photo").val();
	
	if(standardimg != ""){
		var stane_image = $("#base67photo").val();
	}else{
		var stane_image = $('#img').attr('src');
	}
	
	var standres = {
		       "standardId":standardid,
		       "standard":standard,
		       "image":stane_image,
		        "icon":"",
		        "status":"true",
		        "updatedBy":"Aravind",
		 }
	
	
	var standstr = JSON.stringify(standres);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/updatesqbstandbyId',
		data: standstr,
		success: function(data){
		     alert(data.message);
		     window.location = base_url+"jsp/admin/subjectwisequestionbank/standards.jsp";
		  },
		  error:function(data){
			  $("#sqbstaedit").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);
		  }		
	})
}


$(document).on("click", "a[id^=stan_item]", function() {
	var stanid = $(this).attr('data-id');

	
	var deletestan = {
		     "Id":stanid
		}
    
	var delstr = JSON.stringify(deletestan);
	 
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
    if(con == true){
	  if(pon == true){
		  
 		$.ajax({
	 	  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/deletestandardsByid',
		  data:delstr,
		  success: function(data){	  
			  if(data.status){
		 		alert(data.message);
		 		$("#stand_row"+id).remove();
		 		window.reload = base_url+"jsp/admin/subjectwisequestionbank/standards.jsp";
			  }
		  },
		  error: function(data){
			  alert(data.responseJSON.errorMessage);
	   		}
 		});
 		
	  }
    }
});

//SqbStandard code


//SqbSubject code
function sqbsubjectpost(){
	$("#sqbsubadd").addClass('disablelink').removeClass('activatelink');
	var standardname = $("#standard").val();
	//var sqbparameter = $("#sqbparameter").val();
	var subjectname = $("#subject").val();
	var sub_image = $("#base69photo").val();
	var sub_icon = $("#base59photo").val();
	/*var selected=[];
	var sqbparameter = [];
	$("#sqbparameter :selected").each(function(i, selected) {
		selected[i] = $(selected).val();
		sqbparameter[i] = $(selected).val();.map(Number);	
	});*/
	
	/*var sqbparameter = $("#sqbparameter").val();
	if(sqbparameter != ""){
	  sqbparameter = sqbparameter.map(Number);
	}else{
		sqbparameter = [];
	}*/
	if(standardname ==="" || standardname === "---Select---" || standardname === null){
	alert("Please select Standard");
	return false;
	}
	/*if(sqbparameter ==="" || sqbparameter === "---Select---" || sqbparameter === null){
		alert("Please select Parameters");
		return false;
		}*/
	if(subjectname ==="" || subjectname === "---Select---" || subjectname === null){
	alert("Please Enter Subject");
	return false;
	}
	if(sub_image ==="" && sub_icon ===""){
	alert("Please upload image or icon");
	return false;
	}
	var inputData ={
	"standardId":standardname,
	//"parameterId":sqbparameter,
	"subject":subjectname,
	"image":sub_image,
	"icon":sub_icon
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url: base_url+'rest/admin/sqb/createSubject',
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/subjectwisequestionbank/subjects.jsp";
			}, 1000);
		},
		error:function(data){
			$("#sqbsubadd").addClass('activatelink').removeClass('disablelink');
			alert(data.responseJSON.errorMessage);
		}
	})
}
//add subject

function sqbGetSubjects(){
	var appenddata = "";
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/sqb/subgetall',
		datatype:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#sqbsubjects_tbody").empty();
			$("#sqbsubjects_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr class='sqbsubject_ro' id='sqbsubject_row"+data[i].SubjectId+"' data-id="+data[i].SubjectId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].Standard+"</td>";
				
				//  appenddata += "<td>"+data[i].paramters+"</td>";
			
				  if(data[i].subjectImage == "" || data[i].subjectImage == null ){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].subjectImage+" width='50px'></td>";
				  }
				  if( data[i].subjectIcon == "" || data[i].subjectIcon == null){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='35px' style='border-radius:25px;'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].subjectIcon+" width='35px' style='border-radius:25px;'></td>";
				  }
				  appenddata += "<td>"+data[i].Subject+"</td>";
				  appenddata += "<td>"+data[i].insertedDate+"</td>";
				  
				  var ud = data[i].updatedDate;
				  if(ud === "" || ud === null || ud === undefined){
					  appenddata += "<td></td>";
				  }else{
					  appenddata += "<td>"+ud+"</td>";
				  }
				  if(data[i].status === false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  appenddata += "<td><a href='subjects_edit.jsp?id="+ data[i].SubjectId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].SubjectId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbsubject_item"+data[i].SubjectId+"' data-id='"+data[i].SubjectId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				    
				  }
			$("#sqbsubjects_tbody").empty();
			$("#sqbsubjects_tbody").append(appenddata);
			$("#sqbsubjects_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//get sqbsubject

$(document).on('click',"a[id^=sqbsubject_item]", function(){
	var id = $(this).attr("data-id");
	var con = confirm("Are you Sure to delete?")
	if(con == true){
		deletesqbsub(id);
	}
});

function deletesqbsub(id)
{
	/*var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subjectname").val();*/
	var status = false;
	 var subjectId=id;
     var inputData = '{"subjectId":'+subjectId+'}';

	$.ajax({
		url:  base_url+'rest/admin/sqb/deletesubbyId' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#sqbsubject_row"+id).remove();
	    	 window.load = base_url+"jsp/admin/subjectwisequestionbank/subjects.jsp";
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete unit!");
	      }
		
	})
	
}
//delete sqbsubject

function editsqbSubject(){
	var appenddata ="";
	var subjectId = getParameterByName('id');
	var inputData = {
			"subjectId" :subjectId
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/sqb/subgetbyId',
		dataType:"json",
		contentType:'application/json',
		data: outputData,
		success:function(data){
		//	$("#standard").val(data[0].StandardId);
			$("#standard").append('<option value="'+data[0].StandardId+'">'+data[0].Standard+'</option>');
			/*var sqbpar = data[0].sqbparamterpojos;
			for(var i = 0; i<sqbpar.length; i++){
				//$("#sqbparameter").val(sqbpar[i].paramterId).attr('selected','selected');
				$("#sqbparameter option[value='"+sqbpar[i].paramterId+"']").attr("selected","selected");
			}*/
			$("#subject").val(data[0].Subject);
			if(data[0].subjectImage == null || data[0].subjectImage == "" ){
				$("#img").attr("src","http://via.placeholder.com/150x150");
				$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
				
			}
			else{
  				$("#img").attr("src",data[0].subjectImage);
  				
			}
				
				
				if(data[0].subjectIcon == null ||  data[0].subjectIcon == ""){
					$("#img1").attr("src","http://via.placeholder.com/150x150");
				$("#img1").css({"width":"35px","height":"35px","border-radius":"82px"});
				}
				else{
					$("#img1").attr("src",data[0].subjectIcon);
				}
				
				 $('.selectpicker').selectpicker('refresh');	
				
		  },
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
function sqbSubjectUpdate(){
	$("#sqbsubedit").addClass('disablelink').removeClass('activatelink');
	var standardname = parseInt($("#standard").val());
	var subjectname = $("#subject").val();
	/*var sub_image = $("#base69photo").val();
	var sub_icon = $("#base59photo").val();*/
	
	/*var sqbparameter = $("#sqbparameter").val();
	if(sqbparameter === ""){
		sqbparameter = [];
	}*/

	
var sub_image = $("#base69photo").val();
	
	if(sub_image != ""){
		var stane_image = $("#base69photo").val();
	}else{
		var stane_image = $('#img').attr('src');
	}
	
	//var chap_icon = $("#base59photo").val();
    var sub_icon= $("#base59photo").val();
	
	if(sub_icon !=""){
		var stane_icon = $("#base59photo1").val();
	}else{
		var stane_icon = $('#img').attr('src');
	}
	var subjectid = parseInt(getParameterByName('id'));
	var updatedBy = "admin";
	var status = true;
	
	var inputData = {
			"standardId":standardname,
			"subject":subjectname,
			"subjectId":subjectid,
			"image":stane_image,
			"icon":stane_icon,
			"updatedBy":updatedBy,
			"status":status
		}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		async:true,
		url:base_url+'rest/admin/sqb/updatesqbsubbyId',
		datatype:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/subjectwisequestionbank/subjects.jsp";
			}, 1000);
		},
		error:function(data){
			$("#sqbsubedit").addClass('activatelink').removeClass('disablelink');
			alert(data.responseJSON.errorMessage);
		}
	})
}

//Chapters
// chapter post
function sqbPostChapters(){
	$("#sqbchpadd").addClass('disablelink').removeClass('activatelink');

	var standardname = $("#standard").val();
	var examtype = $("#onlyexamtype").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var chap_image = $("#base69photo").val();
	var chap_icon = $("#base59photo").val();
	//var parameter = $("#parameters").val();
	var chapinfo = CKEDITOR.instances.chapterinfo.getData();
	var chapterbasic = $("#chapterbasic").val(); 
	var studentlink = $("#studlink").val(); 
	var chapterstatus = $("#chapterstatus").val();
	var colorcode = $("#colorcode").val();
	
	//var formula =  CKEDITOR.instances.editor1.getData();
	//parameter = parameter.map(Number);
	examtype = examtype.map(Number);
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
	/*if(parameter ==="" || parameter ==="---Select---" || parameter === null){
		alert("Please select parameter");
		return false;
	}*/
	if(chapter ==="" || chapter ==="---Select---" || chapter === null){
		alert("Please Enter Chapter");
		return false;
	}
	if(chap_image ==="" && chap_icon ===""){
		alert("Please upload image or icon");
		return false;
		}
	var inputData = {
			"standardId": standardname,
			"examTypeId": examtype,
			"subjectId":subjectname,
			"unitId":unit,
			//"parameterId":parameter,
			"chapter":chapter,
			"chapterInfo":chapinfo,
			"studentlink":studentlink,
			"chapterstatus":chapterstatus,
			"colorcode": colorcode,
			"image":chap_image,
			"icon":chap_icon,
			"insertedBy":"admin",
		    }
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url: base_url+'rest/admin/sqb/createSqbChapters',
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/subjectwisequestionbank/chapters.jsp";
			}, 1000);
		},
		error:function(data){
			$("#sqbchpadd").addClass('activatelink').removeClass('disablelink');
			alert(data.responseJSON.errorMessage);
		}
	})
}

//chapter GET
function sqbGetchapters(){
	var appenddata = "";
	var modalparams = ""; 
	var modalinfo = "";
	var yes = 'YES';
	var no = 'NO';
	$.ajax({
		type:"GET",
		url:base_url+'rest/admin/sqb/getAllChapters',
		datatype:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#sqbchapter_tbody").empty();
			$("#sqbchapter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr class='sqbchapter_ro' id='sqbchapter_row"+data[i].chapterId+"' data-id="+data[i].chapterId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				if(data[i].examtype === null){
					appenddata += "<td>"+data[i].examtype+"</td>";
				}else{
					var excoma = data[i].examtype;
					var examtype = excoma.lastIndexOf(",");
					var excm = excoma.substring(0,examtype);
					appenddata += "<td>"+excm+"</td>";
				}
				
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				//appenddata += "<td>"+data[i].paramters+"</td>";
				// appenddata += "<td><a href='#' data-toggle='modal' data-target='#param'  data-id='"+data[i].paramters+"' onclick='getAllParamtersofChapter(this)' class='btn btn-danger'>View</a></td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				//appenddata += "<td>"+data[i].chapterInfo+"</td>";
				 appenddata += "<td><a href='#' data-toggle='modal' data-target='#chapterinfo' data-id='"+data[i].chapterInfo+"' onclick='getAllinfoOfChapter(this)' class='btn btn-success'>View</a></td>";
				 if(data[i].chapterImage == "" || data[i].chapterImage == null ){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].chapterImage+" width='50px'></td>";
				  }
				  if( data[i].chapterIcon == "" || data[i].chapterIcon == null){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='35px' style='border-radius:25px;'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].chapterIcon+" width='35px' style='border-radius:25px;'></td>";
				  }
				  
				  appenddata += "<td>"+data[i].studentStatus+"</td>";
				  
				  if(data[i].chapterApproachStatus){
					  appenddata += "<td>"+yes+"</td>";
				  }else {
					  appenddata += "<td>"+no+"</td>";
				  }
				  
				  appenddata += "<td>"+data[i].colorcode+"</td>";
				  
				appenddata += "<td>"+data[i].insertedDate+"</td>";
				if(data[i].updatedDate === null){
					appenddata += "<td></td>";
				}else{
					appenddata += "<td>"+data[i].updatedDate+"</td>";
				}
				
				  if(data[i].status === false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  appenddata += "<td><a href='chapters_edit.jsp?id="+ data[i].chapterId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].chapterId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbchapter_item"+data[i].chapterId+"' data-id='"+data[i].chapterId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				   
				  modalparams += '<div class="modal fade" id="params'+data[i].chapterId+'" role="dialog">'+
				    '<div class="modal-dialog modal-lg">'+
				    '<div class="modal-content">'+
				      '<div class="modal-header">'+
				        '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
				        '<h4 class="modal-title">Parameters</h4>'+
				      '</div>'+
				      '<div class="modal-body" id="justicont">'+
				        '<p>'+data[i].paramters+'</p>'+
				      '</div></div></div></div>'
				        
				        modalinfo += '<div class="modal fade" id="info'+data[i].chapterId+'" role="dialog">'+
					    '<div class="modal-dialog modal-lg">'+
					    '<div class="modal-content">'+
					      '<div class="modal-header">'+
					        '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
					        '<h4 class="modal-title">Parameters</h4>'+
					      '</div>'+
					      '<div class="modal-body" id="justicont">'+
					        '<p>'+data[i].chapterInfo+'</p>'+
					      '</div></div></div></div>'
				  
				  }
			$("#sqbchapter_tbody").empty();
			$("#sqbchapter_tbody").append(appenddata);
			$("#paramsshow").html(modalparams);
			$("#chapinfo").html(modalinfo);
			$("#sqbchapter_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function getAllParamtersofChapter(elm){
	var para = $(elm).attr('data-id');
				$("#parameters").html(para);
				}

function getAllinfoOfChapter(elm){
	var chpinfo = $(elm).attr('data-id');
	$("#chapinfo").html(chpinfo);
	}

//del sqbchapter

$(document).on('click', "a[id^=sqbchapter_item]", function(){
	var id = $(this).attr("data-id");
	var con = confirm("Are you Sure to delete?")
	if(con == true){
		deletesqbchap(id);
	}
});

function deletesqbchap(id){
	var status = false;
	 var chapterid = id;
     var inputData = '{"chapterId":'+chapterid+'}';

	$.ajax({
		url:  base_url+'rest/admin/sqb/deleteChapterbyId',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#sqbchapter_row"+id).remove();
	    	  location.reload();
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete unit!");
	      }
		
	})
	
}
//delet sqbchapter
//chapter update
function sqbChapterUpdate(){
	$("#sqbchpedit").addClass('disablelink').removeClass('activatelink');
	var standardname = $("#standard").val();
	var examtype = $("#onlyexamtype").val();
	var subjectname = $("#subject").val();
	var unit = $("#unit").val();
	//var paramter = $("#sqbparameter").val();
	var chapter = $("#chapter").val();
	var chapinfo = CKEDITOR.instances.chapterinfo.getData();
	var chapterbasic = $("#chapterbasic").val();
	var studentlink = $("#studlink").val();
	var chapterstatus = $("#chapterstatus").val();
	var colorcode = $("#colorcode").val();
	//var formula = $("#formula").val();
	var id = getParameterByName('id');
	//paramter = paramter.map(Number);
	examtype = examtype.map(Number);
	//var chap_image = $("#base69photo").val();
var chap_image = $("#base69photo").val();
	
	if(chap_image !=""){
		var stane_image = $("#base69photo").val();
	}else{
		var stane_image = $('#img').attr('src');
	}
	
	//var chap_icon = $("#base59photo").val();
var chap_icon= $("#base59photo").val();
	
	if(chap_icon !=""){
		var stane_icon = $("#base59photo").val();
	}else{
		var stane_icon = $('#img1').attr('src');
	}
		//var formula =  CKEDITOR.instances.editor1.getData();
	var status = true;
	/*paramter = paramter.find(Number);*/
	var inputData = {
			"standardId": standardname,
			"examTypeId": examtype,
			"subjectId":subjectname,
			"unitId":unit,
			//"parameterId":paramter,
			"chapterId":id,
			"chapter":chapter,
			"chapterInfo":chapinfo,
			"status":status,
			"studentlink":studentlink,
			"chapterstatus":chapterstatus,
			"colorcode": colorcode,
			"image":stane_image,
			"icon":stane_icon,
			"updatedBy":"Aravind"
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/sqb/updatesqbchaptersbyId',
		datatype:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.setTimeout(function(){
				window.location = base_url+"jsp/admin/subjectwisequestionbank/chapters.jsp";
			}, 1000);
		},
		error:function(data){
			$("#sqbchpedit").addClass('activatelink').removeClass('disablelink');
			alert(data.responseJSON.errorMessage);
		}
	})
}

function editsqbChapter(){
	var chapterId = getParameterByName('id');
	var inputData = {
			"chapterId" :chapterId
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		type:"POST",
		url:base_url+'rest/admin/sqb/GetChapterbyId',
		dataType:"json",
		contentType:'application/json',
		data: outputData,
		success:function(data){
			//var elem = $("#parameters");
			//var parameterIds = data[0].parameterIds;
			var subId = data[0].subjectId;
			//var parameters= [];
			var exam = [];
			//parameters =	data[0].sqbparamterpojos;
			exam =	data[0].examtypes;
			$("#standard").val(data[0].standardId);
			$("#subject").val(data[0].subjectId);
			$("#unit").val(data[0].unitId);
			
			$("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');
		
			CKEDITOR.instances.chapterinfo.setData(data[0].chapterInfo);
			$("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
			$("#unit").append('<option value="'+data[0].unitId+'">'+data[0].unit+'</option>');
			/*for(var i=0; i<parameters.length; i++){
				//$("#parameters").append('<option value="'+parameters[i].paramterId+'" selected>'+parameters[i].paramterName+'</option>');
				$("#sqbparameter option[value = '"+parameters[i].paramterId+"']").attr('selected','selected');
			}*/
			for(var i=0; i<exam.length; i++){
				//$("#onlyexamtype").append('<option value="'+exam[i].examtypeId+'" selected>'+exam[i].examtype+'</option>');
				$("#onlyexamtype option[value = '"+exam[i].examtypeId+"']").attr('selected', 'selected');
				//$("#sqbparameter option[value='"+sqbpar[i].paramterId+"']").attr("selected","selected");
			}
			//$("#parameters").append('<option value ="'+data[0].parameterIds+'">'+data[0].paramters+');
			$("#chapter").val(data[0].chapter);
			
			$("#studlink").val(data[0].studentStatus);
			$("#studlink").append('<option value="'+data[0].studentStatus+'">'+data[0].studentStatus+'</option>');
			
			/*$("#chapterstatus").val(data[0].chapterApproachStatus);
			$("#chapterstatus").append('<option value="'+data[0].chapterApproachStatus+'">'+data[0].chapterApproachStatus+'</option>');*/
			$("#chapterstatus option[value='"+data[0].chapterApproachStatus+"']").attr('selected',true);
			$("#colorcode").val(data[0].colorcode);
			
			if(data[0].chapterImage == null || data[0].chapterImage == "" ){
				$("#img").attr("src","http://via.placeholder.com/150x150");
				$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
				
			}
			else{
  				$("#img").attr("src",data[0].chapterImage);
  			//	$("#base69photo").attr("src",data[0].chapterImage);
  				
			}
				
				
				if(data[0].chapterIcon == null ||  data[0].chapterIcon == ""){
					$("#img1").attr("src","http://via.placeholder.com/150x150");
				$("#img1").css({"width":"35px","height":"35px","border-radius":"82px"});
				}
				else{
					$("#img1").attr("src",data[0].chapterIcon);
				//	$("base59photo").attr("src",data[0].chapterIcon);
				}
				
					/*$("#chapterbasic").val(data[0].chapterBasics);
			$("#editor1").val(data[0].chapterFormulae);*/
			
			$('.selectpicker').selectpicker('refresh');	

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}




//SqbSubject code

//SqbUnits code
function sqbunitsadd(){
	$("#sqbuniadd").addClass('disablelink').removeClass('activatelink');

	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var units = $("#unit").val();
	
	var unitsreq = {
			"standardId": standard,
			"subjectId":subject,
			"unit": units,
			"image":"",
			"icon":"",
			"status":"true",
			"insertedBy":"Aravind",
	   }

	
	var unitsstr = JSON.stringify(unitsreq);
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		 url: base_url+'rest/admin/sqb/creatunit',
		  data: unitsstr,
		  success: function(data){
		   alert(data.message);
		   window.location = base_url+"jsp/admin/subjectwisequestionbank/units.jsp";
		  },
		  error:function(data){
			  $("#sqbuniadd").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);  
		  }
	})
}


function sqbunitgetall(){
	
	var subappenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/unitsgetall',
		  beforeSend: function(){
				$("#sqbunits_tbody").empty();
				$("#sqbunits_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  for(var i=0; i < data.length; i++){
			  subappenddata += "<tr id='units_row"+data[i].unitId+"'><td>"+(i+1)+"</td>";    
			  subappenddata += "<td>"+data[i].standard+"</td>";
			 subappenddata += "<td>"+data[i].subject+"</td>";
			  subappenddata += "<td>"+data[i].unit+"</td>";
			  subappenddata += "<td>"+data[i].insertedDate+"</td>";
			  subappenddata += "<td>"+data[i].updatedDate+"</td>";
			  if(data[i].Status == "false"){
				  subappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  }
			  else {
				  subappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			  
			  subappenddata += "<td><a href='units_edit.jsp?id="+ data[i].unitId +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].unitId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='unit_item"+data[i].unitId+"' data-id='"+data[i].unitId+"' data-toggle='tooltip' data-original-title='Delete'>" +
			  				"<i class='icon-trash font-18'></i></a></td>";
			  }
			  $("#sqbunits_tbody").empty();
			  $("#sqbunits_tbody").append(subappenddata);
			   $('#sqbunits_tbl').DataTable();
		  },
		  error: function(data) {	
			  alert(data.responseJSON.errorMessage);
		  }, 
		  
	});	
}


function sqbunitsgetbyid(){
	
	var unitid = getParameterByName('id');
	
	var unitareq = {
		     "Id":unitid,
	}
	
	var unitstr = JSON.stringify(unitareq);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/GetUnitbyId',
		data: unitstr,
		success: function(data){

			$("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');

			$("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
			
			$("#unit").val(data[0].unit);
			 
			$('.selectpicker').selectpicker('refresh');
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }		
	})
}

function sqbunitsupdate(){
	$("#sqbunitedit").addClass('disablelink').removeClass('activatelink');
	var unitid = getParameterByName('id');
	
	var standard = $("#standard").val();
	
	var subject = $("#subject").val();
	
	var units = $("#unit").val();
	
	
	var unitsreq = {
		     "Id":unitid,
		     "standardId": standard,
		       "subjectId":subject,
		          "unit": units,
		           "image":"",
		      "icon":"",
		      "status":"true",
		         "updatedBy":"aravind"
		 }
	var unitstr = JSON.stringify(unitsreq);

	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/updatesqbunitbyId',
		data: unitstr,
		success: function(data){
		      alert(data.message);
		      window.location = base_url+"jsp/admin/subjectwisequestionbank/units.jsp";	      
		  },
		  error:function(data){
			  $("#sqbunitedit").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);
		  }		
	})
	
}


$(document).on("click", "a[id^=unit_item]", function() {
	var unitid = $(this).attr('data-id');

	
	var deleteunit = {
		     "Id":unitid
		}
    
	var delstr = JSON.stringify(deleteunit);
	 
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
    if(con == true){
	  if(pon == true){
		  
 		$.ajax({
	 	  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/deleteUnitbyId',
		  data:delstr,
		  success: function(data){	  
			  if(data.status){
		 		alert(data.message);
		 		$("#units_row"+id).remove();
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

//SqbUnits code


//topic creation
function topicsPost(){
	$("#sqbtopadd").addClass('disablelink').removeClass('activatelink');
	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	//var topicinfo =  $("#topicinfo").val();
	//var topicinfo =  CKEDITOR.instances.editor1.getData();
	var insertedby ="sai";
	if(standard === ""){
		alert("please select topic");
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
	
	var inputData = '{"standardId":"'+standard+'","subjectId":"'+subject+'","unitId":"'+unit+'","chapterId":"'+chapter+'","topic":"'+topic+'","insertedBy":"'+insertedby+'"}';
	var inputdata = JSON.stringify(inputData);
 	
	jQuery.ajax({
		  url: base_url+'rest/admin/sqb/createtopic',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputData,
		  success: function(data,textStatus, jqXHR){
			 
			  alert(data.message);
			  window.location = base_url+"jsp/admin/subjectwisequestionbank/topics.jsp";


		  },
		  error: function(data) {
			  $("#sqbtopadd").addClass('activatelink').removeClass('disablelink');
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		 
		
	   });
} 
//get all topics
function getTopics(){
	
	var appenddata;
	$.ajax({
		url:base_url+'rest/admin/sqb/getAllTopics',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#topics_tbody").empty();
			$("#topics_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0; i<data.length; i++){
				  appenddata += "<tr id='topic_row"+data[i].topicId+"'><td>"+(i+1)+"</td>";    
				  appenddata += "<td>"+data[i].standard+"</td>"; 
				  appenddata += "<td>"+data[i].subject+"</td>"; 
				  appenddata += "<td>"+data[i].unit+"</td>"; 
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>"; 
//				  /appenddata += "<td>"+data[i].topicInfo+"</td>"; 
				/*if(data[i].topicImage == "" || data[i].topicImage == null ){
					  appenddata += "<td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
				  appenddata += "<td> <img src="+data[i].topicImage+" width='50px'></td>";
				  }*/
				/*if(data[i].topicIcon == "" || data[i].topicIcon == null ){
					  appenddata += "<td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
				  appenddata += "<td> <img src="+data[i].topicIcon+" width='50px'></td>";
				  }*/
				  appenddata += "<td>"+data[i].insertedDate+"</td>";
				  if(data[i].updatedDate === null){
					  appenddata += "<td></td>";
				  }else{
					  appenddata += "<td>"+data[i].updatedDate+"</td>";
				  }
				 
				  if(data[i].Status == false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else if(data[i].Status == true){
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  appenddata +="<td><a href='topics_edit.jsp?id="+ data[i].topicId + "&status="+data[i].Status+ "&name="+data[i].topic+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='topics_item"+data[i].topicId+"' data-id='"+data[i].topicId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td>";
			}
			 $("#topics_tbody").empty();
			  $('#topics_tbl').DataTable().clear().destroy();
			  $("#topics_tbody").append(appenddata);
			  $("#topics_tbl").DataTable();
				 
			},
	 error: function(data) {		
		  $("#topics_tbody").html('<tr><td class="center" colspan="14">Topics not found!</td></tr>');
		  
		

	  }
	 
});
	
}
//get topics by id
function getTopicsById(){
	
	
	  var editableid=getParameterByName('id');
	  
	  var inputData = {
			  "topicId":editableid
	  }
	  var inputdata = JSON.stringify(inputData);
		
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  data: inputdata,
			  url: base_url+'rest/admin/sqb/GetTopicbyId',
			async:true,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				 // $("#standard").val(data[0].standardId);
				  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');
				  $("#standard").val(data[0].standardId);
				  $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
				  $("#unit").append('<option value="'+data[0].unitId+'">'+data[0].unit+'</option>');
				  $("#chapter").append('<option value="'+data[0].chapterId+'">'+data[0].chapter+'</option>');
				
				  	 	    $("#topic").val(data[0].topic);
				  	 	   // $("#editor1").val(data[0].topicInfo);
				  	    	$('.selectpicker').selectpicker('refresh');
				  	    	
				  	    	
				  },

			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage);

			  }
			  
		});
}

//topic delete

$(document).on("click", "a[id^=topics_item]", function() {
   	var id = $(this).attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	var pon = confirm("Really are you Sure?");
	  if(con == true){
		  if(pon == true){
		
			  
			var deleterow =  {
				    "Id":id,
				 
				    "status":false
				};
			var deletetopic = JSON.stringify(deleterow);

   		$.ajax({
   	  type: "POST",
  	  dataType: "json",
  	  contentType: 'application/json', 
  	  url: base_url+'rest/admin/sqb/deleteTopicbyId',
  	  data:deletetopic,
  	  success: function(data){	  
  		  if(data.status){
   		alert(data.message);
   		$("#topic_row"+id).remove();
   		location.reload();
  		  }
  		  },
  	    
  	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }}});

//topics edit

$("#top_edit").click(function(){
	$("#top_edit").addClass('disablelink').removeClass('activatelink');

	var standard = $("#standard").val();
	var subject  =$("#subject").val();
	var unit    = $("#unit").val();
	var chapter = $("#chapter").val();
	var topic =  $("#topic").val();
	//var topicinfo =  $("#topicinfo").val();
	//var topicinfo =  CKEDITOR.instances.editor1.getData();
	var updatedBy = "sai";
  var editableid=getParameterByName('id');
  var sts = true; 
	  
	 
			  
	var inputData = '{"topicId":"'+editableid+'","standardId":"'+standard+'","subjectId":"'+subject+'","unitId":"'+unit+'","chapterId":"'+chapter+'","topic":"'+topic+'","updatedBy":"'+updatedBy+'","status":"'+sts+'"}';
//var inputdata = JSON.stringify(inputData);
 	
	$.ajax({
		  url: base_url+'rest/admin/sqb/updatesqbTopicbyId',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputData,
		  success: function(data,textStatus, jqXHR){
			  alert(data.message);
			  window.location = base_url+"jsp/admin/subjectwisequestionbank/topics.jsp";
		  },
		  error: function(data) {	
			  $("#top_edit").addClass('activatelink').removeClass('disablelink');
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
	});
			 
});

//sqb sub wise parameter

function sqbPostParameters(){
	var parametersqb = $("#sqbparameter").val();
	var priority = $("#priority").val();
	var mainskills = $("#mainskills").val();
	var standardid = $("#standard").val();
	var subjectid = $("#subject").val();
	var unitid = $("#unit").val();
	var chapter =$("#chapter").val();
	var inputData = {
			"parameterName" : parametersqb,
			"priority":priority,
			"mainskills":mainskills,
			"standardId" : standardid,
			"subjectId": subjectid,
			"unitId": unitid,
			"chapterId":chapter,
			"insertedBy" :"Admin"
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url +'rest/admin/sqb/createParameters',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.location = base_url +"jsp/admin/subjectwisequestionbank/parameters.jsp";
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//get parameter
function sqbGetParametrs(){
	var appenddata ="";
	$.ajax({
		url:base_url+'rest/admin/sqb/getAllParameters',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#sqbparameter_tbody").empty();
			$("#sqbparameter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			
			for(var i = 0;i<data.length;i++){
				appenddata +="<tr class='parameter_row'><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].parameterName+"</td>";
				appenddata += "<td>"+data[i].priority+"</td>";
				appenddata += "<td>"+data[i].mainskills+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapters+"</td>";
				appenddata += "<td><a href='parameters_edit.jsp?id="+ data[i].parameterId +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].parameterId+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='parameter_item"+data[i].parameterId+"' data-id='"+data[i].parameterId+"' data-toggle='tooltip' data-original-title='Delete'>" +
		  				"<i class='icon-trash font-18'></i></a></td>";
			}
			$("#sqbparameter_tbody").empty();
			$("#sqbparameter_tbody").append(appenddata);
			$("#sqbparameter_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}



function  sqbparamfilter(){
	
	var standardid = $("#standard").val();
	var subjectid = $("#subject").val();
	var unitid = $("#unit").val();
	
	
	var inputData = {
			"standardId" : standardid,
			"subjectId" : subjectid,
			"unitId": unitid
	}
	var outputData = JSON.stringify(inputData);
	
	
	var appenddata ="";
	$.ajax({
		url:base_url+'rest/admin/sqb/getAllparametrByStdSubUnit',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		beforeSend: function(){
			$("#sqbparameter_tbody").empty();
			$("#sqbparameter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			
			for(var i = 0;i<data.length;i++){
				appenddata +="<tr class='parameter_row'><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].parameterName+"</td>";
				appenddata += "<td>"+data[i].priority+"</td>";
				appenddata += "<td>"+data[i].mainskills+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				appenddata += "<td>"+data[i].chapters+"</td>";
				appenddata += "<td><a href='parameters_edit.jsp?id="+ data[i].parameterId +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].parameterId+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='parameter_item"+data[i].parameterId+"' data-id='"+data[i].parameterId+"' data-toggle='tooltip' data-original-title='Delete'>" +
		  				"<i class='icon-trash font-18'></i></a></td>";
			}
			$("#sqbparameter_tbody").empty();
			$("#sqbparameter_tbody").append(appenddata);
			$("#sqbparameter_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})

}





var chapids= [];
//paramter sqb by id
function sqbByParametrs(){
//	var appenddata ="";
	var $sqbparameter = $("#sqbparameter");
	var priority = $("#priority");
	var mainskills = $("#mainskills");
	var id = getParameterByName('id');
	$.ajax({
		url:base_url+'rest/admin/sqb/getSqbParameterById/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			var chapter =[];
		   chapter = data.sqbchapters;
				//$sqbparameter.append("<option value="+data.parameterId+">"+data.parameterName+"</option>");
				$sqbparameter.val(data.parameterName);
				priority.val(data.priority);
				mainskills.val(data.mainskills);
				
				$("#standard").append('<option value="'+data.standardId+'">'+data.standard+'</option>');
				$("#standard").val(data.standardId);
				
				$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');
				$("#subject").val(data.subjectId);
						
				$("#unit").append('<option value="'+data.unitId+'">'+data.unit+'</option>');
				$("#unit").val(data.unitId);	
				for(var i=0; i<chapter.length; i++){
				   
				   chapids.push(chapter[i].chapterId);
           $("#chapter").append('<option value="'+chapter[i].chapterId+'">'+chapter[i].chapter+'</option>');
				}
			//$("#chapter").val(chapids);
			$('#chapter').selectpicker();
			$('#chapter').selectpicker('val', chapids);
			
				 $('.selectpicker').selectpicker('refresh');
			
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
			
	
	})
}
//sqb parameter update
function sqbParameterUpdate(){
	var id = parseInt(getParameterByName('id'));
	var parameter = $("#sqbparameter").val();
	var priority = $("#priority").val();
	var mainskills = $("#mainskills").val();
	var standardid = $("#standard").val();
	var subjectid = $("#subject").val();
	var unitid = $("#unit").val();
	var selected_chapterid = $("#chapter").val();
  var pushchap = selected_chapterid.map( Number );
	
	var inputData = {
			"parameterId":id,
			"chapterId": pushchap,
			"insertedBy": "Admin",
			"mainskills": mainskills,
			"parameterName":parameter,
			"priority": priority,
			"standardId": standardid,
			"subjectId": subjectid,
			"unitId": unitid,
			"updatedBy":"MANI",
			"status":true
			}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'rest/admin/sqb/updatesqbParmeters',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			alert(data.message);
			window.location = base_url +"jsp/admin/subjectwisequestionbank/parameters.jsp";
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//sqb parameters delete
$(document).on("click", "a[id^=parameter_item]", function(){
	var id = $(this).attr('data-id');
	var con = confirm("Are you Sure to delete?");
   	var pon = confirm("Really are you Sure?");
   	if(con == true){
   		if(pon == true){
   		 $.ajax({
   			 url:base_url+'rest/admin/sqb/deleteSqbParameters/'+id,
   			 type:"GET",
   			 datatype:"json",
   			 contentType:'application/json',
   			 success:function(data){
   					 alert(data.message);
   					 $("#parameter_row"+id).remove();
   					 location.reload();
   			 },
   			 error:function(data){
   				alert(data.responseJSON.errorMessage);
   			 }
   		 })
   		}
   	}
})


function sqbAllSubjectbyStandards(){
	var standards = "";

	var standards =$("#standard").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	
	var inputData = '{"standardId":"'+standards+'"}';
	
	
	var appenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllSubbyStdId',
		  data: inputData,
		  beforeSend: function() {
			  $("#sqbsubjects_tbody").empty();
				$("#sqbsubjects_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0;i<data.length;i++){
					appenddata += "<tr class='sqbsubject_ro' id='sqbsubject_row"+data[i].SubjectId+"' data-id="+data[i].SubjectId+"><td>"+(i+1)+"</td>";
					appenddata += "<td>"+data[i].Standard+"</td>";
					
					//  appenddata += "<td>"+data[i].paramters+"</td>";
				
					  if(data[i].subjectImage == "" || data[i].subjectImage == null ){
						  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
					  }
					  else{
						  appenddata += "<td><img src="+data[i].subjectImage+" width='50px'></td>";
					  }
					  if( data[i].subjectIcon == "" || data[i].subjectIcon == null){
						  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='35px' style='border-radius:25px;'></td>";
					  }
					  else{
						  appenddata += "<td><img src="+data[i].subjectIcon+" width='35px' style='border-radius:25px;'></td>";
					  }
					  appenddata += "<td>"+data[i].Subject+"</td>";
					  appenddata += "<td>"+data[i].insertedDate+"</td>";
					  
					  var ud = data[i].updatedDate;
					  if(ud === "" || ud === null || ud === undefined){
						  appenddata += "<td></td>";
					  }else{
						  appenddata += "<td>"+ud+"</td>";
					  }
					  if(data[i].status === false){
						  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
					  }
					  else /*if(data[i].status)*/{
						  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
					  }
					  
					  appenddata += "<td><a href='subjects_edit.jsp?id="+ data[i].SubjectId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].SubjectId+"' data-original-title='Edit'>" +
					  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbsubject_item"+data[i].SubjectId+"' data-id='"+data[i].SubjectId+"' data-toggle='tooltip' data-original-title='Delete'>" +
					  				"<i class='icon-trash font-18'></i></a></td>";
					 
					    
					  }
				$("#sqbsubjects_tbody").empty();
				 $('#sqbsubjects_tbl').DataTable().clear().destroy();
				$("#sqbsubjects_tbody").append(appenddata);
				$("#sqbsubjects_tbl").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
})
}

function sqbAllUnitsbyStdandSub(){
	var standards = "";
     var subjects = "";
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	
	var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'"}';
	
	
	var subappenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/GetUnitsbystdSub',
		  data: inputData,
		  beforeSend: function() {
			    $("#sqbunits_tbody").empty();
				$("#sqbunits_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	     },
		  success: function(data){
			  for(var i=0; i < data.length; i++){
				  subappenddata += "<tr id='units_row"+data[i].unitId+"'><td>"+(i+1)+"</td>";    
				  subappenddata += "<td>"+data[i].standard+"</td>";
				 subappenddata += "<td>"+data[i].subject+"</td>";
				  subappenddata += "<td>"+data[i].unit+"</td>";
				  subappenddata += "<td>"+data[i].insertedDate+"</td>";
				  subappenddata += "<td>"+data[i].updatedDate+"</td>";
				  if(data[i].Status == "false"){
					  subappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else {
					  subappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  subappenddata += "<td><a href='units_edit.jsp?id="+ data[i].unitId +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].unitId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='unit_item"+data[i].unitId+"' data-id='"+data[i].unitId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				  }
				  $("#sqbunits_tbody").empty();
				  $('#sqbunits_tbl').DataTable().clear().destroy();
				  $("#sqbunits_tbody").append(subappenddata);
				   $('#sqbunits_tbl').DataTable();
			  },
			  error: function(data) {	
				  alert(data.responseJSON.errorMessage);
			  }, 
		  });
}

function getAllChaptersByStdSubUnit(){
	var standards = "";
    var subjects = "";
    var units = ""; 
    var yes = 'YES';
    var no = 'NO';
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	var units = $("#unit").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	if(units =="--- Select ---" || units == "" || units == null || units =="Nothing selected"){
		units=0;
	}
var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'" , "unitId":"'+units+'"}';


var appenddata ="";
var modalparams = ""; 
var modalinfo = "";
$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/admin/sqb/getAllChapByStdSubUnit',
	  data: inputData,
	  beforeSend: function() {
		  $("#sqbchapter_tbody").empty();
	      $("#sqbchapter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
     },
	  success: function(data){
		  
		  for(var i=0;i<data.length;i++){
				appenddata += "<tr class='sqbchapter_ro' id='sqbchapter_row"+data[i].chapterId+"' data-id="+data[i].chapterId+"><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				if(data[i].examtype === null){
					appenddata += "<td>"+data[i].examtype+"</td>";
				}else{
					var excoma = data[i].examtype;
					var examtype = excoma.lastIndexOf(",");
					var excm = excoma.substring(0,examtype);
					appenddata += "<td>"+excm+"</td>";
				}
				
				appenddata += "<td>"+data[i].subject+"</td>";
				appenddata += "<td>"+data[i].unit+"</td>";
				//appenddata += "<td>"+data[i].paramters+"</td>";
				// appenddata += "<td><a href='#' data-toggle='modal' data-target='#param'  data-id='"+data[i].paramters+"' onclick='getAllParamtersofChapter(this)' class='btn btn-danger'>View</a></td>";
				appenddata += "<td>"+data[i].chapter+"</td>";
				//appenddata += "<td>"+data[i].chapterInfo+"</td>";
				 appenddata += "<td><a href='#' data-toggle='modal' data-target='#chapterinfo' data-id='"+data[i].chapterInfo+"' onclick='getAllinfoOfChapter(this)' class='btn btn-success'>View</a></td>";
				 if(data[i].chapterImage == "" || data[i].chapterImage == null ){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].chapterImage+" width='50px'></td>";
				  }
				  if( data[i].chapterIcon == "" || data[i].chapterIcon == null){
					  appenddata += "<td><img src='http://via.placeholder.com/150x150' width='35px' style='border-radius:25px;'></td>";
				  }
				  else{
					  appenddata += "<td><img src="+data[i].chapterIcon+" width='35px' style='border-radius:25px;'></td>";
				  }
				  
				  appenddata += "<td>"+data[i].studentStatus+"</td>";
				  
				  if(data[i].chapterApproachStatus){
					  appenddata += "<td>"+yes+"</td>";
				  }else {
					  appenddata += "<td>"+no+"</td>";
				  }
				  
				  appenddata += "<td>"+data[i].colorcode+"</td>";
				  
				appenddata += "<td>"+data[i].insertedDate+"</td>";
				if(data[i].updatedDate === null){
					appenddata += "<td></td>";
				}else{
					appenddata += "<td>"+data[i].updatedDate+"</td>";
				}
				
				  if(data[i].status === false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  appenddata += "<td><a href='chapters_edit.jsp?id="+ data[i].chapterId + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].chapterId+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sqbchapter_item"+data[i].chapterId+"' data-id='"+data[i].chapterId+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				   
				  modalparams += '<div class="modal fade" id="params'+data[i].chapterId+'" role="dialog">'+
				    '<div class="modal-dialog modal-lg">'+
				    '<div class="modal-content">'+
				      '<div class="modal-header">'+
				        '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
				        '<h4 class="modal-title">Parameters</h4>'+
				      '</div>'+
				      '<div class="modal-body" id="justicont">'+
				        '<p>'+data[i].paramters+'</p>'+
				      '</div></div></div></div>'
				        
				        modalinfo += '<div class="modal fade" id="info'+data[i].chapterId+'" role="dialog">'+
					    '<div class="modal-dialog modal-lg">'+
					    '<div class="modal-content">'+
					      '<div class="modal-header">'+
					        '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
					        '<h4 class="modal-title">Parameters</h4>'+
					      '</div>'+
					      '<div class="modal-body" id="justicont">'+
					        '<p>'+data[i].chapterInfo+'</p>'+
					      '</div></div></div></div>'
				  
				  }
			$("#sqbchapter_tbody").empty();
			$("#sqbchapter_tbody").append(appenddata);
			$("#paramsshow").html(modalparams);
			$("#chapinfo").html(modalinfo);
			$("#sqbchapter_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
});
}

function sqbAllTopicsbyStdandSub(){
	var standards = "";
    var subjects = "";
	var  standards =$("#standard").val();
	var  subjects =$("#subject").val();
	if(standards =="--- Select ---" || standards == "" || standards == null || standards =="Nothing selected"){
		standards=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	
	var inputData = '{"standardId":"'+standards+'", "subjectId": "'+subjects+'"}';
	
	
	var appenddata ="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllTopicsbyStdSub',
		  data: inputData,
		  beforeSend: function() {
			  $("#topics_tbody").empty();
				$("#topics_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	     },
		  success: function(data){
			  for(var i=0; i<data.length; i++){
				  appenddata += "<tr id='topic_row"+data[i].topicId+"'><td>"+(i+1)+"</td>";    
				  appenddata += "<td>"+data[i].standard+"</td>"; 
				  appenddata += "<td>"+data[i].subject+"</td>"; 
				  appenddata += "<td>"+data[i].unit+"</td>"; 
				  appenddata += "<td>"+data[i].chapter+"</td>"; 
				  appenddata += "<td>"+data[i].topic+"</td>"; 
//				  /appenddata += "<td>"+data[i].topicInfo+"</td>"; 
				/*if(data[i].topicImage == "" || data[i].topicImage == null ){
					  appenddata += "<td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
				  appenddata += "<td> <img src="+data[i].topicImage+" width='50px'></td>";
				  }*/
				/*if(data[i].topicIcon == "" || data[i].topicIcon == null ){
					  appenddata += "<td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
				  appenddata += "<td> <img src="+data[i].topicIcon+" width='50px'></td>";
				  }*/
				  appenddata += "<td>"+data[i].insertedDate+"</td>";
				  if(data[i].updatedDate === null){
					  appenddata += "<td></td>";
				  }else{
					  appenddata += "<td>"+data[i].updatedDate+"</td>";
				  }
				 
				  if(data[i].Status == false){
					  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else if(data[i].Status == true){
					  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  appenddata +="<td><a href='topics_edit.jsp?id="+ data[i].topicId + "&status="+data[i].Status+ "&name="+data[i].topic+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].topicId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='topics_item"+data[i].topicId+"' data-id='"+data[i].topicId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td>";
			}
			 $("#topics_tbody").empty();
			  $('#topics_tbl').DataTable().clear().destroy();
			  $("#topics_tbody").append(appenddata);
			  $("#topics_tbl").DataTable();
				 
			},
	 error: function(data) {		
		  $("#topics_tbody").html('<tr><td class="center" colspan="14">Topics not found!</td></tr>');
		  
		

	  }
	})
}



function paramterPercentAdd(){
	$("#paramterpercentadd").addClass('disablelink').removeClass('activatelink');
	
	var standard = $("#standard").val();
	var examtype = $("#examtype").val();
	var category = $("#quota").val();
	var percentage = $("#percentage").val();
	if(standard === null || standard === "---Select---" || standard === ""){
		alert("Please select Standard");
		return false;	
	}
	
	if(examtype === null || examtype === "---Select---" || examtype === ""){
		alert("Please select Examtype");
		return false;
	}
	
	if(category === null || category === "---Select---" || category === ""){
		alert("Please select Category");
		return false;
	}
	
	if(percentage === null  || percentage === ""){
		alert("Please select percentage");
		return false;
	}
	
	var inputData ={
			"standardId":standard,
			"examtypeId":examtype,
			"category":category,
			"categorypercentage":percentage
			
			}
			var outputData = JSON.stringify(inputData);
			$.ajax({
				type:"POST",
				url: base_url+'rest/student/parameterPercentagePost',
				dataType:"json",
				contentType:'application/json',
				data:outputData,
				success:function(data){
					alert(data.message);
					window.setTimeout(function(){
						window.location = base_url+"jsp/admin/CategoryPercentages/paramspercentage.jsp";
					}, 1000);
				},
				error:function(data){
					$("#paramterpercentadd").addClass('activatelink').removeClass('disablelink');
					alert(data.responseJSON.errorMessage);
				}
			})
}

function chapExpPercentagePost(){
$("#chapterexpertisepercentage").addClass('disablelink').removeClass('activatelink');
	
	var standard = $("#standard").val();
	var examtype = $("#examtype").val();
	var category = $("#quota").val();
	var percentage = $("#percentage").val();
	if(standard === null || standard === "---Select---" || standard === ""){
		alert("Please select Standard");
		return false;	
	}
	
	if(examtype === null || examtype === "---Select---" || examtype === ""){
		alert("Please select Examtype");
		return false;
	}
	
	if(category === null || category === "---Select---" || category === ""){
		alert("Please select Category");
		return false;
	}
	
	if(percentage === null  || percentage === ""){
		alert("Please select percentage");
		return false;
	}
	
	var inputData ={
			"standardId":standard,
			"examtypeId":examtype,
			"category":category,
			"categorypercentage":percentage
			
			}
			var outputData = JSON.stringify(inputData);
			$.ajax({
				type:"POST",
				url: base_url+'rest/student/chapterExpetisePercentagePost',
				dataType:"json",
				contentType:'application/json',
				data:outputData,
				success:function(data){
					alert(data.message);
					window.setTimeout(function(){
						window.location = base_url+"jsp/admin/CategoryPercentages/chapterpercentage.jsp";
					}, 1000);
				},
				error:function(data){
					$("#chapterexpertisepercentage").addClass('activatelink').removeClass('disablelink');
					alert(data.responseJSON.errorMessage);
				}
			})
}


function paramspercentage(){
	
	var appenddata ="";
	
	$.ajax({
		type:"GET",
		url: base_url+'rest/student/getParamterPercentage',
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#parapercen_tbody").empty();
			$("#parapercen_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].category+"</td>";
				appenddata += "<td>"+data[i].categoryPercentage+"</td></tr>";
			}
			
			$("#parapercen_tbody").empty();
			$("#parapercen_tbody").html(appenddata);
			$("#paraperc_tbl").DataTable();
			
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
	
}



function chapterpercentage(){
	
	var appenddata ="";
	
	$.ajax({
		type:"GET",
		url: base_url+'rest/student/getchapterExpertisePecentage',
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#chappercen_tbody").empty();
			$("#chappercen_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].category+"</td>";
				appenddata += "<td>"+data[i].categoryPercentage+"</td></tr>";
			}
			
			$("#chappercen_tbody").empty();
			$("#chappercen_tbody").html(appenddata);
			  $("#chaptepec_tbl").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
	
}