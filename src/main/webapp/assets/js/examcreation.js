//creating examtype admin

function creatingexamtypes(){
	
 var examtypename = $("#examtypename").val();
 
 var examtypedesc = CKEDITOR.instances.description.getData();
 
 var examtypeimage = $("#base67photos").val();

 var examtypeimghover = $("#base63photos").val();
 
 var examtypemainimage = $("#base56photos").val();

 var examtypedefinition = CKEDITOR.instances.definition.getData();
 
 var loginData = getAdminId();
 
 
 var creatingexamtype = {
			"examType":examtypename,
			"examtypeDescription":examtypedesc,
			"examtypeImage":examtypeimage,
			"examtypeHoverImage":examtypeimghover,
			"examtypeMainImage":examtypemainimage,
			"examtypeDefinition":examtypedefinition,
			"createdBy":"santosh",
			"adminId":loginData
		}
 
  var createjson = JSON.stringify(creatingexamtype);
 
 $.ajax({
	 url:base_url+'rest/dynamicIndex/createExamtype',
	 type:"POST",
	  contentType: 'application/json',
	  dataType:"json",
	  data:createjson,
	  success:function(data){
            alert(data.message);
           window.location = base_url +"jsp/admin/examtypescreation/examtypescreation.jsp";
	  },
	  error:function(){
		  alert("examcreation failed to submit");
	  }
 
 })	
}
//creating examtype admin


//getting examtypes student

function Gettingexamtypes(){
var appenddata = "";
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/student/getExamtypes',
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  beforeSend: function(){
				$("#examcreat_tbody").empty();
				$("#examcreat_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			
			  for(var i =0;i<data.length;i++){
			 appenddata += "<tr><td>"+(i+1)+"</td>";
			 appenddata += "<td>"+data[i].examtypeName+"</td>";
			 appenddata += "<td>"+data[i].examtypeDefinition+"</td>";
			 appenddata += "<td><img src="+data[i].normalImage+" width='60px' height='60px'></td>";
			 appenddata += "<td><img src="+data[i].hoverImage+" width='60px' height='60px'></td>";
			 appenddata += "<td><img src="+data[i].mainImage+" width='60px' height='60px'></td>";
			 appenddata += "<td>"+data[i].examtypeDescription+"</td>";
			 appenddata +="<td><a href='examtypeedit.jsp?id="+data[i].examtypeId+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].examtypeId+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' data-id="+data[i].examtypeId+" onclick='deleteexamtypes(this)' class='btn btn-delete btn-icon-anim btn-circle p-10' id='examtypecre_item"+data[i].examtypeId+"' data-id='"+data[i].examtypeId+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td></tr>";
			  }

			  $("#examcreat_tbody").empty();
			  $('#examcreate_tbl').DataTable().clear().destroy();
			  $("#examcreat_tbody").append(appenddata);
			  $("#examcreate_tbl").DataTable();
		  },
		  error:function(){
			  alert("Failed to get examtype details");
		  }
	 
	 })	
	}

//getting examtypes student


//update examtypes in admin

function updateexamtypes(){
	
	var examtypename = $("#examtypename").val();
	 
	 var examtypedesc = CKEDITOR.instances.description.getData();
	 
	 var examtypeimage = $("#img").attr('src');

	 var examtypeimghover = $("#img1").attr('src');
	 
	 var examtypemainimage = $("#img2").attr('src');

	 var examtypedefinition = CKEDITOR.instances.definition.getData();
	 
	 var loginData = getAdminId();
	 
	 var id = getParameterByName('id');
	 
	 var editexamtype = {
				"examType":examtypename,
				"examtypeDescription":examtypedesc,
				"examtypeImage":examtypeimage,
				"examtypeHoverImage":examtypeimghover,
				"examtypeMainImage":examtypemainimage,
				"examtypeDefinition":examtypedefinition,
				"createdBy":"santosh",
				"adminId":loginData,
				"id":id
			}
	 
	 var editjson = JSON.stringify(editexamtype);
	 
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/updateExamtype',
		 type:"POST",
		  contentType: 'application/json',
		  dataType:"json",
		  data:editjson,
		  success:function(data){
	            alert(data.message);
	           window.location = base_url +"jsp/admin/examtypescreation/examtypescreation.jsp";
		  },
		  error:function(){
			  alert("examtypeedit failed to submit");
		  }
	 })
}



//update examtypes in admin


//get examtypes by id

function getexamtypebyid(){
	
	var id = getParameterByName('id');
	
	$.ajax({
 		 type: "GET",
 		  dataType: "json",
 		  contentType: 'application/json', 
 		  url: base_url+'rest/dynamicIndex/student/getExamtypesInfo/'+id,
 		  success:function(data){
 		      
 			  $("#examtypename").val(data[0].examtypeName);
 			  
 			  $("#description").val(data[0].examtypeDescription);
 			  
 			  $("#img").attr("src",data[0].normalImage);
 			  
 			  $("#img1").attr("src",data[0].hoverImage);
 			  
 			  $("#img2").attr("src",data[0].mainImage);
 			  
 			  $("#definition").val(data[0].examtypeDefinition);
 			  
 		  },
 		  error:function(){
 			  alert("Getting Examtype Details failed");
 		  }
 		  })
	
}



//get examtypes by id


//delete examtypes admin

function deleteexamtypes(elem){
	
	var examid = $(elem).attr('data-id');
	
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
    if(con == true){
	  if(pon == true){
	
	$.ajax({
		 url:base_url+'rest/dynamicIndex/admin/deleteExamtype/'+examid,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			  alert(data.message);
			window.location = base_url+'jsp/admin/examtypescreation/examtypescreation.jsp';
		  },
		  error:function(){
			alert("Examtype deletion failed"); 
		  }
	})
	  }
    }
	
}

//delete examtypes admin

//for getting all examtypes in dropdown

function getallexamnames(callback){
	
	 var loginData = getAdminId();
	 var appenddata = "";
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/getExamtypes/'+loginData,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			  
			  for(var i=0;i<data.length;i++){
				  var examtypeid = data[i].id;
				  var examname = data[i].name
				  appenddata += '<option value="'+examtypeid+'">'
					+examname+'</option>';
			  }
			  jQuery("#examtypes").empty("");
				jQuery("#examtypes").append('<option value="">--- Select ---</option>');
				jQuery("#examtypes").append(appenddata);
				
				$('.selectpicker').selectpicker('refresh');
				
				if(callback){
					callback();
				}
		  },
		  error:function(){
			  alert("getting all exam names failed");
		  }
	 })
}

//for getting all examtypes in dropdown

//getting all examtype info details


function gettingallexaminfo(){
	var appenddata = "";
	$.ajax({
		url:base_url+'rest/dynamicIndex/admin/getAdminInfoItems',
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  beforeSend: function(){
				$("#examinfo_tbody").empty();
				$("#examinfo_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  for(var i=0;i<data.length;i++){
				  appenddata += "<tr><td>"+(i+1)+"</td>";
				  appenddata += "<td>"+data[i].examtypeName+"</td>";
				  appenddata += "<td>"+data[i].infoItem+"</td>";
				 // appenddata += "<td>"+data[i].infoItemDescription+"</td>";
				  appenddata += "<td>"+data[i].color+"</td>";
				  appenddata +="<td><a href='examinfoedit.jsp?infoid="+data[i].infoId+"&examid="+data[i].examtypeId+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].examtypeId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' data-id="+data[i].infoId+" onclick='deleteexamtypesinfo(this)' class='btn btn-delete btn-icon-anim btn-circle p-10' id='examtypecre_item"+data[i].examtypeId+"' data-id='"+data[i].examtypeId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td></tr>";
			  }
			  
			  $("#examinfo_tbody").empty();
			  $("#examinfo_tbody").append(appenddata);
			  $("#examinfo_tbl").DataTable();
		  },
		  error:function(){
			  alert("Getting examtypes info failed");
		  }
	})
}

//getting all examtype info details


//creating examtype info

function creatingexamtypesinfo(){
	
	 var examtypeinfo = $("#infoexamtype").val();
	 
	 var examtypedesc = CKEDITOR.instances.infodescription.getData();
	 
	 var loginData = getAdminId();
	 
	 var color = $("#colorcode").val();
	 
	 var examtypeid = $("#examtypes").val();
	 
	 var creatingexamtype = {
				"examtypeId":examtypeid,
				"adminId":loginData,
				"infoItem":examtypeinfo,
				"color":color,
				"infoItemDescription":examtypedesc
			}
	 
	  var createjson = JSON.stringify(creatingexamtype);
	 
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/createExamtypeInfo',
		 type:"POST",
		  contentType: 'application/json',
		  dataType:"json",
		  data:createjson,
		  success:function(data){
	            alert(data.message);
	            window.location = base_url +"jsp/admin/examtypescreation/creatingexaminfo.jsp";
		  },
		  error:function(){
			  alert("examinfo failed to submit");
		  }
	 
	 })	
	}

//creating examtype info



//create examtype info filter


function gettingexaminfofilter(){
	var appenddata = "";
	var examtypeid = $("#examtypes").val();
	$.ajax({
		url:base_url+'rest/dynamicIndex/admin/getAdminInfoItemsFilter/'+examtypeid,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  beforeSend: function(){
				$("#examinfo_tbody").empty();
				$("#examinfo_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success:function(data){
			  for(var i=0;i<data.length;i++){
				  appenddata += "<tr><td>"+(i+1)+"</td>";
				  appenddata += "<td>"+data[i].examtypeName+"</td>";
				  appenddata += "<td>"+data[i].infoItem+"</td>";
				  //appenddata += "<td>"+data[i].infoItemDescription+"</td>";
				  appenddata += "<td>"+data[i].color+"</td>";
				  appenddata +="<td><a href='examinfoedit.jsp?infoid="+data[i].infoId+"&examid="+data[i].examtypeId+"'  class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].examtypeId+"' data-original-title='Edit'>" +
			  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' data-id="+data[i].infoId+" onclick='deleteexamtypesinfo(this)' class='btn btn-delete btn-icon-anim btn-circle p-10' id='examtypecre_item"+data[i].examtypeId+"' data-id='"+data[i].examtypeId+"' data-toggle='tooltip' data-original-title='Delete'>" +
						"<i class='icon-trash font-18'></i></a></td></tr>";
			  }
			  
			  $("#examinfo_tbody").empty();
			  $("#examinfo_tbody").append(appenddata);
			  $("#examinfo_tbl").DataTable();
		  },
		  error:function(){
			  alert("Getting examtypes info failed");
		  }
	})
}



//create examtype info filter


//update examtypes info

function updateexamtypeinfo(){
	
	var examtypeinfo = $("#infoexamtype").val();
	 
	 var examtypedesc = CKEDITOR.instances.infodescription.getData();
	 
	 var loginData = getAdminId();
	 
	 var color = $("#colorcode").val();
	 
	 var examtypeid = $("#examtypes").val();
	 
	 var infoid = getParameterByName('infoid');
	 
	 var creatingexamtype = {
				"examtypeId":examtypeid,
				"adminId":loginData,
				"infoId":infoid,
				"infoItem":examtypeinfo,
				"color":color,
				"infoItemDescription":examtypedesc
			}
	 
	  var createjson = JSON.stringify(creatingexamtype);
	 
	 $.ajax({
		 url:base_url+'rest/dynamicIndex/updateExamtypeInfo',
		 type:"POST",
		  contentType: 'application/json',
		  dataType:"json",
		  data:createjson,
		  success:function(data){
	            alert(data.message);
	            window.location = base_url +"jsp/admin/examtypescreation/creatingexaminfo.jsp";
		  },
		  error:function(){
			  alert("examinfo failed to submit");
		  }
	 
	 })	
}

//update examtypes info


//update examtypes info by id


function updateexaminfobyid(){

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
	 alert("Getting examtypes info by id failed");
	 }
	})



	}
//update examtypes info by id

//deleting examtypes info

function deleteexamtypesinfo(elem){
	
	var infoid = $(elem).attr('data-id');
	
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
    if(con == true){
	  if(pon == true){
	
	$.ajax({
		 url:base_url+'rest/dynamicIndex/admin/deleteExamtypeInfo/'+infoid,
		 type:"GET",
		  contentType: 'application/json',
		  dataType:"json",
		  success:function(data){
			  alert("Exam type Info deleted Successfully");
			window.location = base_url+'jsp/admin/examtypescreation/creatingexaminfo.jsp';
		  },
		  error:function(){
			alert("Examtype deletion failed"); 
		  }
	})
	  }
    }
	
}

//deleting examtypes info
