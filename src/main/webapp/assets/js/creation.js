function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
var butnvrble = false;
//standard flowchange
function createCategory(){
	
	$("#catadd").addClass('disablelink').removeClass('activatelink');
	
	if(!butnvrble){

			butnvrble = true;
	   		/* var baseURL = $("#baseURL").val();*/
			var categoryname = $("#categoryname").val();
			
			var imageset = $("#base63photo").val();
			
			
			
			 if(categoryname == "")
	    	{
	    	
				 alert("Please Enter category ");
	    		butnvrble = false;
	          	return false;
	    	}else{
	    		
	    		if(imageset == ""){
					
					 alert("Please upload an category image ");
					 butnvrble = false;
			          	return false;
				}
	    		else{
	    		var  createdby= $("#createdby").val();


				var inputData = '{"categoryname":"'+categoryname+'","createdBy":"'+createdby+'","categoryimage":"'+imageset+'"}';
			var appenddata = '';
			   jQuery.ajax({
				  type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				 url: base_url+'rest/category/v1/register',
				  data: inputData,
				  success: function(data){
					  
					  butnvrble = false;
					  alert(data.message);
					  window.setTimeout(function(){
						  window.location = base_url+"jsp/admin/creation/categories.jsp";
					  }, 1000);
				  },
				  error: function(data) {
					  $("#catadd").addClass('activatelink').removeClass('disablelink');
					  butnvrble = false;
					  alert(data.responseJSON.errorMessage);
				  }
				
			   });
	    		}
	    	}
			
	}
	 
}

//standard flowchange
function GetAllCategories(){
var appenddata;
$.ajax({
	type: "GET",
	  dataType: "json",
	  contentType: 'application/json', 
	 url: base_url+'rest/category/v1/getcategories',
	 beforeSend: function(){
		 $("#categories_tbody").empty();
		 $("#categories_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
	 
	 },
	  success: function(data){
		  $("#loading").hide();
		  for(var i=0; i < data.length; i++){
		  appenddata += "<tr id='cat_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
		  appenddata += "<td>"+data[i].categoryname+"</td>"; 
		  if(data[i].categoryimage == "" || data[i].categoryimage == null ){
			  appenddata += "<td> <img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
		  }
		  else{
		  appenddata += "<td> <img src="+data[i].categoryimage+" width='50px'></td>";
		  }
		  appenddata += "<td>"+data[i].createdDate+"</td>";
		  appenddata += "<td>"+data[i].modifiedDate+"</td>";
		  if(data[i].status == false){
			  appenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
		  }
		  else if(data[i].status == true){
			  appenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
		  }
		  appenddata +="<td><a href='categories_edit.jsp?id="+ data[i].id + "&status="+data[i].status+ "&name="+data[i].categoryname+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='cat_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td>";
		  
		
		  }
		  $("#categories_tbody").empty();
		  $('#categories_tbl').DataTable().clear().destroy();
		  $("#categories_tbody").append(appenddata);
		  $("#categories_tbl").DataTable();
	  },
	  error: function(data) {		
		  $("#categories_tbody").html('<tr><td class="center" colspan="14">Categories not found!</td></tr>');
		  
		  //alert("Categories not found!");

	  }
	 
    	
});
}
//categories default get service in table  in admin

//standard flowchange
function getCategoriesById(){
	
	var editableid = getParameterByName('id');
	
	$.ajax({
	    type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/category/v1/getcategory/'+editableid,
		success: function(data){
			  
			$("#category").val(data[0].categoryname);
			
			if(data[0].categoryimage == null || data[0].categoryimage == ""){
				$("#img").attr("src","http://via.placeholder.com/150x150");
				$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
			}
			else{
				$("#img").attr("src",data[0].categoryimage);
			}
			
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("Category not found for particular id!!");
		  }
			  
	});
	
}


//standard flowchange
$("#cate_edit").click(function(e){
	e.preventDefault();
	$("#cate_edit").addClass('disablelink').removeClass('activatelink');
	var category_name = $("#category").val();
var categoryedit_image = $("#base62photo").val();
	
	if(categoryedit_image !=""){
		var stane_image = $("#base62photo").val();
	}else{
		var stane_image = $('#img').attr('src');
	}
	
	var category_edit =	{
		"categoryname":category_name,
		"updatedBy":"Syed",
		"Id":getParameterByName('id'),
		"status":true,
		"categoryimage":stane_image
	};

	var categ_edit = JSON.stringify(category_edit);

	$.ajax({
	  url: base_url+'rest/category/v1/updatecategory',
	  type:"POST",
	  contentType:'application/json',
	  dataType:"json",
	  data: categ_edit,
	  success: function(data){
			
	 	if(data.status === true){
			 alert(data.message);
			 window.location = base_url+"jsp/admin/creation/categories.jsp";
		} else{
			alert(data.message);
		}
		 	
	  },
      error: function(data){
    	 $("#cate_edit").addClass('activatelink').removeClass('disablelink');
		 alert(data.responseJSON.errorMessage);
	  }
		 
	 });
});


//standard flowchange
$(document).on("click", "a[id^=cat_item]", function() {
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
		  url: base_url+'rest/category/v1/deletecategory/'+id,
		  success: function(data){	  
			  if(data.status){
		 		alert(data.message);
		 		$("#cat_row"+id).remove();
			  }
		  },
		  error: function(data){
			  alert(data.responseJSON.errorMessage);
	   		}
 		});
 		
	  }
    }
});

//getting All sections 
function allsections(){
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		 url: base_url+'rest/section/v1/getsections',
			beforeSend: function(){
				$("#sections_tbody").empty();
				$("#sections_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
			  appenddata += "<tr id='sec_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
			  appenddata += "<td>"+data[i].name+"</td>"; 
			  appenddata +="<td><a href='section_edit.jsp?id="+ data[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='sec_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td>";
			  
			
			  }
			  $("#sections_tbody").empty();
			  $('#sections_tbl').DataTable().clear().destroy();
			  $("#sections_tbody").append(appenddata);
			  $("#sections_tbl").DataTable();
		  },
		  error: function(data) {
			 appenddata +="<tr><td class='center' colspan='14'>";
			  appenddata += data.responseJSON.errorMessage+"</td></tr>";
			  $("#sections_tbody").append(appenddata);
			  }
		 
	    	
	});
}

//standard flowchange//create sections
function createsection(){
	$("#secadd").addClass('disablelink').removeClass('activatelink');
	var sectionname = $("#section").val();
	var createdby = $("#createdby").val();
	var sections = {
			"section":sectionname,
			"createdBy":createdby
			}
    var sectionstr = JSON.stringify(sections);
	
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
	       url: base_url+'rest/section/v1/create',
		  data:sectionstr,
		  success:function(data){
			  alert(data.message);
			  $("#section").val("");
			  window.location = base_url+"jsp/admin/creation/sectionsall.jsp";
		  },
		  error:function(data){
			  $("#secadd").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);
			  //alert("creating sections error");
		  }
	})
}

function updatesection(){
	$("#upsec").addClass('disablelink').removeClass('activatelink');
	var sectionname = $("#section").val();
	var createdby = $("#createdby").val();
	var sections = {
			"section":sectionname,
			"Id":getParameterByName('id'),
			"status":true,
			"updatedBy":createdby
			}
    var sectionstr = JSON.stringify(sections);
	
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
	       url: base_url+'rest/section/v1/updatesection',
		  data:sectionstr,
		  success:function(data){
			  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/sectionsall.jsp";
		  },
		  error:function(data){
			  $("#upsec").addClass('activatelink').removeClass('disablelink');
			  alert(data.responseJSON.errorMessage);
			  //alert("creating sections error");
		  }
	})
	
}
function getsectionbyid(){
	
var editableid = getParameterByName('id');
	
	$.ajax({
	    type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/section/v1/getsection/'+editableid,
		success: function(data){
			  
			$("#section").val(data[0].name);
		 },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }
			  
	});
	
}
$(document).on("click", "a[id^=sec_item]", function() {
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
		  url: base_url+'rest/section/v1/deletesection/'+id,
		  success: function(data){	  
			  if(data.status){
		 		alert(data.message);
		 		$("#sec_row"+id).remove();
			  }
		  },
		  error: function(data){
			  alert(data.responseJSON.errorMessage);
	   		}
 		});
 		
	  }
    }
});

//standard flowchange
function createStandard(){
	$("#stadd").addClass('disablelink').removeClass('activatelink');
		/*var baseURL = $("#baseURL").val();*/
		var standCategory = $("#category").val();
		//var standExamType = $("#examtype").val();
	var standName  = $("#standard").val();
	var stan_image = $("#base67photo").val();
	 if(standCategory == "" || standCategory == "--- Select ---" )
	{
		 alert("Please select your Category ");
      	return false;
	}
	/* if(standExamType == "" || standExamType == "--- Select ---")
    	{
		 alert("Please select ExamType");
		 return false;
    	}*/
	 if(standName == "" )
    	{
		 alert("Please Enter Standard");
		return false;
    	}
	 if(stan_image == ""){
		 alert("Please select Standard Image");
		 return false;
	 }
	 else{
		var  createdby= $("#createdby").val();
		var inputData = '{"categoryId":"'+standCategory+'","standardId":"'+standName+'","createdBy":"'+createdby+'","standardImage":"'+stan_image+'"}';
	/*var stand_Add = '';*/
	   jQuery.ajax({
		  url: base_url+'rest/standards/v1/register',
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 	
		  data: inputData,
		  success: function(data,textStatus, jqXHR){
			 
			  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/standards.jsp";


		  },
		  error: function(data) {	
			  $("#stadd").addClass('activatelink').removeClass('disablelink');
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		 
		
	   });
	}

}

//standard flowchange
function getAllStandards()
{

	var stdappenddata;
	$.ajax({
		
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/standards/v1/getStandards',
		  beforeSend: function() {
			  $("#std_tbody").empty();
				 $("#std_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			 },
		  success: function(data){
	 $("#loading").hide();
				  for(var i=0; i < data.length; i++){
				  stdappenddata += "<tr id='std_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
				  stdappenddata += "<td>"+data[i].categoryname+"</td>";
			/*	  stdappenddata += "<td>"+data[i].examType+"</td>";*/
				  stdappenddata += "<td>"+data[i].standards+"</td>";
				  if(data[i].standardImage == "" || data[i].standardImage == null){
					  stdappenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
					  stdappenddata += "<td><img src="+data[i].standardImage+" width='50px'></td>";
				  }
				 
/*							  stdappenddata += "<td>"+data[i].subject+"</td>";
*/							  stdappenddata += "<td>"+data[i].createdDate+"</td>";
				  stdappenddata += "<td>"+data[i].modifiedDate+"</td>";
				  if(!data[i].status){
					  stdappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  stdappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  stdappenddata += "<td><a href='standards_edit.jsp?id="+ data[i].id + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='std_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 }
				  $("#std_tbody").empty();
				  $('#std_tbl').DataTable().clear().destroy();
				  $("#std_tbody").append(stdappenddata);
				    $('#std_tbl').DataTable();
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage);

			  }, 
			  
		});
		//examtype default get service in table  in admin

	

}

//standard flowchange
function getStandardsById() {
	var id = getParameterByName('id');
  	$.ajax({
  		 type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		url: base_url+'rest/standards/v1/getstandards/'+id,
  		  success:function(data){
  			 $("#category").append('<option value="'+data[0].categoryId+'">'+data[0].categoryname+'</option>');
  			$("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standards+'</option>');
  			
  				
  				if(data[0].standardImage == null || data[0].standardImage == ""){
					$("#img").attr("src","http://via.placeholder.com/150x150");
					$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
				}
				else{
					$("#img").attr("src",data[0].standardImage);
				}
  				
  				 $('.selectpicker').selectpicker('refresh');	
  				
  		  },
  		 error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  },
  		
  	});
  	
 }
//standard flowchange
function editStandards()

{$("#stedi") .addClass('disablelink').removeClass('activatelink');
	var categoryname = $("#category").val();
	/*var examtypename = $("#examtype").val();*/
	var standardname = $("#standard").val();
	var image = $("#base68photo").val();
	if(image !=""){
		var stane_image = $("#base68photo").val();
	}else{
		var stane_image = $('#img').attr('src');
	}
	
	
	/*var subjectname = $("#subjectname").val();*/
	var status = true;
	 if(categoryname == "" || categoryname == "--- Select ---" )
    	{
			 alert("Please select your Category ");
          	return false;
    	}
		/* if(examtypename == "" || examtypename == "--- Select ---")
	    	{
			 alert("Please select ExamType");
			 return false;
	    	}*/
		 if(standardname == "" )
	    	{
			 alert("Please Enter Standard");
			return false;
	    	}
	
	  var standardid=getParameterByName('id');
	var  createdby= $("#createdby").val();


var inputData = '{"categoryId":"'+categoryname+'","standardId":"'+standardname+'","Id":'+standardid+',"status":'+status+',"createdBy":"'+createdby+'","standardImage":"'+stane_image+'"}';
	
$.ajax({
		url:  base_url+'rest/standards/v1/updateStandard',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/standards.jsp";

	      },
	      error:function(data){
	    	 $("#stedi") .addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
	
}

//standard flowchange
$(document).on('click',"a[id^=std_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteStandards(id);
		
	  }
	});


//standard flowchange
function deleteStandards(id)
{
	var status = false;
	 var standardid=id;
	var  createdby= $("#createdby").val();
var inputData = '{"status":'+status+',"Id":'+standardid+'}';
$.ajax({
		url:  base_url+'rest/standards/v1/updateStandard' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#std_row"+id).remove();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
	}

//GETTING SECTIONS IN EXAMTYPES 

$(document).on('click', '#yes', function () {
	if ($("#yes").is(":checked")) {
		var appenddata = "";
		$.ajax({
			url:  base_url+'rest/section/v1/getsections',
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
				  alert(data.responseJSON.errorMessage);
			  }
		});
        
    } else {
        $("#sections").hide();
        
        
    }
	
	
});  

$("#No").on("click",function(){
	
	$("#sections").hide();
});

function myparam(val){
	
	for(var pm = 0; pm < val.length;pm++){
		  var boole = val[pm];
		 
		  $("#chck"+boole).prop("checked",true);
		  /*var chebx = document.getElementById(boole);
		  chebx.checked = true;*/
		  $("#chck"+boole).attr("checked",true);
	  }
	
}
//standard flowchange
var exambutnvrble = false;

function createExam() {
				$("#exadd").addClass('disablelink').removeClass('activatelink');
if (!exambutnvrble) {
				
exambutnvrble = true;
				
		var examcategory = $("#category").val();
				var examtype = $("#examtype").val();
				var standard =  $("#standard").val();
				var examtypedetails = $("#examtypedetails").val();
				var arr = [];
				i = 0;
				$('.check:checked').each(function() {
				arr[i++] = $(this).val();
				});
				var sectionid = arr;
				
				//var sectioncheck = $('input:radio[value="yes"]').prop("checked",true).val();
				var sectioncheck =  $("input[name='radio']:checked").val();
			
				
				var havesection = false;
				if (sectioncheck === "yes") {
				havesection = true;
				}
				
				if (examcategory == "" && standard == "") {
				
				alert("Please Select category,standard");
				exambutnvrble = false;
				return false;
				} else {
					if(examtype == ""){
						alert("Please enter Examtype");
						exambutnvrble = false;
						return false;
					}
					else if(examtypedetails == ""){
						alert("Please enter Examtype");
						return false;
					}
				var examcreatedby = $("#examcreatedby").val();
				
				var examadd_image = $("#base60photo").val();
				
				if(examadd_image == ""){
					alert("please upload an examtype image");
				}
				else{
				var inputData = '{"categoryId":"' + examcategory+'","standardId":"'+standard+'","createdBy":"' + examcreatedby + '","examType":"'+ examtype + '","examtypeDetails":"'+examtypedetails+'", "havesections":' + havesection
				+ ',"secctionids":"' + sectionid + '","examTypeImage":"'+examadd_image+'"}';
				
				$.ajax({
				type : "POST",
				dataType : "json",
				contentType : 'application/json',
				url : base_url + 'rest/examtype/v1/register',
				data : inputData,
				success : function(data) {
				// var chapappenddata += data.message;
				exambutnvrble = false;
				// Alert.render(data.message);
				alert(data.message);
				window.setTimeout(function() {
				window.location = base_url
				+ "jsp/admin/creation/exam_types.jsp";
				}, 1000);
				
				},
				error : function(data) {
					$("#exadd").addClass('activatelink').removeClass('disablelink');
				exambutnvrble = false;
				alert(data.responseJSON.errorMessage);
				
				}
				
				});
				}
				}
				
				}
				
				}

//examtype default get service in table  in admin //standard flowchange
function GetAllExamType(){
$.ajax({
	type: "GET",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/examtype/v1/getexamTypes',
		beforeSend: function(){
			$("#examtype_tbody").empty();
			$("#examtype_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
	  success: function(data){
		  
		  var examappenddata="";
		  for(var i=0; i < data.length; i++){
		  examappenddata += "<tr id='exam_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
		  examappenddata += "<td>"+data[i].categoryname+"</td>";
		  examappenddata += "<td>"+data[i].standard+"</td>";
		  examappenddata += "<td>"+data[i].examType+"</td>";
		  if(data[i].examImage == "" || data[i].examImage == null){
			  examappenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
		  }
		  else{
			  examappenddata += "<td><img src="+data[i].examImage+" width='50px'></td>";
		  }
		  examappenddata += "<td>"+data[i].sectionnames+"</td>";
		  examappenddata += "<td>"+data[i].createdDate+"</td>";
		  examappenddata += "<td>"+data[i].modifiedDate+"</td>";
		  if(data[i].status == false){
			  examappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
		  }
		  else if(data[i].status == true){
			  examappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
		  }
		  examappenddata +="<td><a href='exam_types_edit.jsp?id="+ data[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='exam_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td>";
		  
		
		  }
		  
		  $("#examtype_tbody").empty();
		  $('#examtype_tbl').DataTable().clear().destroy();
		  $("#examtype_tbody").append(examappenddata);
		  $("#examtype_tbl").DataTable();
		  
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert(data.responseJSON.errorMessage);

	  }
	  
});
}

function getExamsById()
{
	
			
	    	  var editableid=getParameterByName('id');
			   $.ajax({
		    	type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/examtype/v1/getexamtype/'+editableid,
			  success: function(data){
				  //$("#category").val(data[0].categoryId);
				  $("#category").append('<option value="'+data[0].categoryId+'">'+data[0].categoryname+'</option>');
				  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');
				  	    	
				  	    	$("#examtype").val(data[0].examType);
				  	    	$("#examtypedetails").val(data[0].examTypeDetails);
				  	    	if(data[0].examImage == null || data[0].examImage == ""){
								$("#imgexa").attr("src","http://via.placeholder.com/150x150");
								$("#imgexa").css({"width":"150px","height":"150px","border-radius":"82px"});
							}
							else{
								$("#imgexa").attr("src",data[0].examImage);
							}
				  	    if(data[0].havesections == true)
							{
								//console.log("strike ..."+strike)
								document.querySelector('input[name=radio][value=yes]').checked = true;
								$("#yes").click();
								$("#sections").show();
							}
							else{
								//console.log("strike No ..."+strike)
								document.querySelector('input[name=radio][value=No]').checked = true;
							}
				  	    	
							for(var i=0;i<data.length;i++){ 
					  	    	 var params = data[i].sectionnames;
								  if(params!== "" && params !== null){
									  params = params.split(',');
									  setTimeout(function(){ myparam(params); }, 1000);
									  /*for(var pm = 0; pm < params.length;pm++){
										  var boole = params[pm];
										 
										  $("#chck"+boole).prop("checked",true);
										  var chebx = document.getElementById(boole);
										  chebx.checked = true;
										  $("#chck"+boole).attr("checked",true);
									  }*/
								  }
					  	    	}
							$('.selectpicker').selectpicker('refresh');
							
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage)
				  //alert("ExamType for the particular id not found!");

			  }
			  
		});
}


$(document).on("click", "a[id^=exam_item]", function() {
	var id = $(this).attr('data-id');
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
	  if(con == true){
		  if(pon == true){
			var deleterow =  {
				    "examtypeId":id,
				   "status":false
				};
			var deletetopic = JSON.stringify(deleterow);

 		$.ajax({
 	  type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/examtype/v1/updateExamType',
	  data:deletetopic,
	  success: function(data){	  
		  if(data.status){
 		alert(data.message);
 		$("#exam_row"+id).remove();
		  }
		  },
	    
	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }
		  }});

//standard flowchange
$("#exam_edit").click(
		function(e) {
			$("#exam_edit").addClass('disablelink').removeClass('activatelink');
		e.preventDefault();
		var sectionid = [];
		var exam_name = $("#category").val();
		var standard = $("#standard").val();
		var exam_type = $("#examtype").val();
		var examtypedetails = $("#examtypedetails").val();
		var imageexam = $("#base66photo").val();
		if(imageexam !=""){
			var exed_image = $("#base66photo").val();
		}else{
			var exed_image = $("#imgexa").attr('src');
		}
		var arr = [];
		i = 0;
		$('.check:checked').each(function() {
		/*arr[] = $(this).val();*/
		arr.push($(this).val());
		});

		sectionid = arr;

		var sectionsplit = sectionid.join(",");

		var sectioncheck =  $("input[name='radio']:checked").val();

		var havesection = false;
		if (sectioncheck === "yes") {
		havesection = true;
		}
if(exam_name =="" || exam_name =="---Select---"){
	alert("Please Select Standard");
	return false;
}
		if (standard == "---Select---" || standard == "") {
		alert("Please Select Standard");
		return false;
		}
		if(exam_type ==""){
			alert("Please Enter examtype");
			return false;
		}
		var status = true;
		var category_edit = {
		"examtypeId" : getParameterByName('id'),
		"categoryId" : exam_name,
		"examType" : exam_type,
		"examtypeDetails": examtypedetails,
		"standardId" :standard,
		"createdBy" : "Admin",
		"status" : status,
		"havesections" : havesection,
		"secctionids" : sectionsplit,
		 "examTypeImage":exed_image
		};

		var categ_edit = JSON.stringify(category_edit);

		$.ajax({
		url : base_url + 'rest/examtype/v1/updateExamType',
		type : "POST",
		contentType : 'application/json',
		dataType : "json",
		data : categ_edit,
		success : function(data) {

		if (data.status == true) {
		alert(data.message);
		}
		window.location = base_url
		+ "jsp/admin/creation/exam_types.jsp";
		},
		error : function(data) {
			$("#exam_edit").addClass('activatelink').removeClass('disablelink');
		alert(data.responseJSON.errorMessage);
		}/*
		* , complete: function(){ }
		*/

		})
		});
//examtype edit service

//standard flow change  10/05/2018

function createSubjects()

{$("#subj_add").addClass('disablelink').removeClass('activatelink');
	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var sub_image = $("#base69photo").val();
	var sub_icon = $("#base59photo").val();
    var  createdby= $("#createdby").val();
	if(categoryname == "" || categoryname == "--- Select ---" || categoryname == null )
	{
		 alert("Please select your Category ");
      	return false;
	}
	 if(examtypename == "" || examtypename == "--- Select ---" || examtypename == null )
    	{
		 alert("Please select ExamType");
		 return false;
    	}
	 if(standardname == "" || standardname == "--- Select ---" || standardname == null )
    	{
		 alert("Please Enter Standard");
		return false;
    	}
	 if(subjectname == ""  )
 	{
		 alert("Please Enter Subject");
		return false;
 	}
	 if(sub_image == "" && sub_icon == ""){
		 alert("Please upload image or icon");
			return false;
	 }
	 else{

	var inputData = '{"categoryId":"'+categoryname+'","examTypeId":"'+examtypename+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","createdBy":"'+createdby+'","subjectImage":"'+sub_image+'","subjectIcon":"'+sub_icon+'"}';
	
	
	$.ajax({
		url:  base_url+'rest/subject/v1/register' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  window.setTimeout(function(){
	    		  window.location = base_url+"jsp/admin/creation/subjects.jsp";
			  }, 1000);
	    	  
			  

	      },
	      error:function(data){
	    	  $("#subj_add").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Subjects creation failed!");
	      }
		
	})
	 }
	
}
//standard flow change 10/05/2018 
function getAllSubjects()
{
		var examtypename = "";
	var examtypename = $("#examtype").val();
	if(examtypename =="--- Select ---" || examtypename==null || examtypename =="Nothing selected")
		{
		   examtypename= 0;
		}
      var inputData = '{"examTypeId":"'+examtypename+'"}';
		var subappenddata;
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/subject/v1/getSubjects',
			  data: inputData,
			  beforeSend: function() {
				  $("#subjects_tbody").empty();
				  $("#subjects_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		     },
			  success: function(data){
				
				  for(var i=0; i < data.length; i++){
				  subappenddata += "<tr id='subject_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
				  subappenddata += "<td>"+data[i].categoryname+"</td>";
				  subappenddata += "<td>"+data[i].standards+"</td>";
				  subappenddata += "<td>"+data[i].examType+"</td>";
				 
				  if(data[i].subjectImage == "" || data[i].subjectImage == null ){
					  subappenddata += "<td><img src='http://via.placeholder.com/150x150' width='50px' style='border-radius:25px'></td>";
				  }
				  else{
					  subappenddata += "<td><img src="+data[i].subjectImage+" width='50px'></td>";
				  }
				  if( data[i].subjectIcon == "" || data[i].subjectIcon == null){
					  subappenddata += "<td><img src='http://via.placeholder.com/150x150' width='35px' style='border-radius:25px;'></td>";
				  }
				  else{
					  subappenddata += "<td><img src="+data[i].subjectIcon+" width='35px' style='border-radius:25px;'></td>";
				  }
				  subappenddata += "<td>"+data[i].subject+"</td>";
				  subappenddata += "<td>"+data[i].createdDate+"</td>";
				  subappenddata += "<td>"+data[i].modifiedDate+"</td>";
				  if(!data[i].status){
					  subappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  subappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  subappenddata += "<td><a href='subjects_edit.jsp?id="+ data[i].id + "' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='subject_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				    
				  }
				  $("#subjects_tbody").empty();
				  $('#subjects_tbl').DataTable().clear().destroy();
				  $("#subjects_tbody").append(subappenddata);
				  subtb=  $('#subjects_tbl').DataTable();
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Subjects not found!");

			  }, 
			  
		});
		
}

//standard flow change 10/05/2018 
function getSubjectById() {
	var id = getParameterByName('id');
  	$.ajax({
  		 type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/subject/v1/getsubject/'+id,
  		  success:function(data){
  			 
  				//$("#category").val(data[0].categoryId);
  			  $("#category").append('<option value="'+data[0].categoryId+'">'+data[0].categoryname+'</option>');
  				//$("#examtype").val(data[0].examTypeId);
  			  $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
				//$("#standard").val(data[0].standardId);
  			  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standards+'</option>');
  			//	$("#subject").val(data[0].subjectId);
  				
  			  $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
  				
  					if(data[0].subjectImage == null || data[0].subjectImage == "" ){
					$("#img").attr("src","http://via.placeholder.com/150x150");
					$("#img").css({"width":"150px","height":"150px","border-radius":"82px"});
					
				}
				else{
	  				$("#img").attr("src",data[0].subjectImage);
	  				
				}
  				
  				
  				if(data[0].subjectIcon == null ||  data[0].subjectIcon == ""){
  					$("#img2").attr("src","http://via.placeholder.com/150x150");
					$("#img2").css({"width":"35px","height":"35px","border-radius":"82px"});
  				}
  				else{
  					$("#img2").attr("src",data[0].subjectIcon);
  				}
  				
  				 $('.selectpicker').selectpicker('refresh');	
  				
  		  },
  		  error:function(){
  			  alert(data.responseJSON.errorMessage);
  			//alert("Subjects not found!");		  
  		  }
  		
  	});
  	
 }

//standard flow change 10/05/2018
function editSubjects()

{$("#sub_edit").addClass('disablelink').removeClass('activatelink');
	var categoryname = parseInt($("#category").val());
	var examtypename = parseInt($("#examtype").val());
	var standardname = parseInt($("#standard").val());
	var subjectname = $("#subject").text();
	var sube_image = $("#img").attr('src');
	var sube_icon = $("#img2").attr('src');
	var status = true;
	  var subjectId=parseInt(getParameterByName('id'));
	var  createdby= $("#createdby").val();
	if(categoryname == "" || categoryname == "--- Select ---" || categoryname == null )
	{
		 alert("Please select your Category ");
      	return false;
	}
	 if(examtypename == "" || examtypename == "--- Select ---" || examtypename == null )
    	{
		 alert("Please select ExamType");
		 return false;
    	}
	 if(standardname == "" || standardname == "--- Select ---" || standardname == null )
    	{
		 alert("Please Select Standard");
		return false;
    	}
	 if(subjectname == ""  )
 	{
		 alert("Please Enter Subject");
		return false;
 	}
	 if(sube_image == "" && sube_icon == ""){
		 alert("Please upload image or icon");
			return false;
	 }
	// var inputData = '{"categoryId":"'+categoryname+'","examTypeId":"'+examtypename+'","standardId":"'+standardname+'","Id":'+subjectId+',"subjectId":"'+subjectname+'","status":'+status+',"createdBy":"'+createdby+'","subjectImage":"'+sube_image+'","subjectIcon":"'+sube_icon+'"}';
		
		//var inputData = '{"categoryId":"'+categoryname+'","examTypeId":"'+examtypename+'","standardId":"'+standardname+'","Id":'+subjectId+',"subjectId":"'+subjectname+'","subject":"'+subject+'","status":'+status+',"createdBy":"'+createdby+'","subjectImage":"'+sube_image+'","subjectIcon":"'+sube_icon+'"}';
	
	 var inputData = {
	     "categoryId":categoryname,
		 "examTypeId":examtypename,
		 "standardId":standardname,
		 "Id":subjectId,
		 "subjectId":subjectId,
		 "subject":subjectname,
		 "status":status,
		 "createdBy":"Admin",
		 "subjectImage":sube_image,
		 "subjectIcon":sube_icon
	 }

	var stringmake = JSON.stringify(inputData);
	 
	$.ajax({
		url:  base_url+'rest/subject/v1/updateSubject' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:stringmake,
	      success: function(data){
	    	  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/subjects.jsp";
},
	      error:function(data){
	    	  $("#sub_edit").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Subjects updation failed!");
	      }
		
	})
	
}
//standard flow change 10/05/2018
$(document).on('click',"a[id^=subject_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteSubjects(id);
		//$("#cat_row"+id).remove();
	  }
	 
});


//standard flow change 10/05/2018
function deleteSubjects(id)
{
	var status = false;
	
	  var subjectId=id;
	var  createdby= $("#createdby").val();
	var inputData = '{"status":'+status+',"Id":'+subjectId+'}';

	$.ajax({
		url:  base_url+'rest/subject/v1/updateSubject' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  //$("#subject_row"+id).remove();
	    	  
	    	  subtb.row("#subject_row"+id).remove().draw( false );

	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete Subject!");
	      }
		
	})
	
}




//standard flow change 10/05/2018
function createUnits()

{$("#creuni").addClass('disablelink').removeClass('activatelink');
	

	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	

	var  createdby= $("#createdby").val();

	 if(categoryname == "" ||  categoryname== "---Select---"){
		 alert("Please Select category");
		 return false;
	 }
	 
	 if(examtypename == "" ||  examtypename== "---Select---"){
		 alert("Please Select examtype");
		 return false;
	 }
	 
	 if(standardname == "" ||  standardname== "---Select---"){
		 alert("Please Select standard");
		 return false;
	 }
	 
	 if(subjectname == "" ||  subjectname== "---Select---"){
		 alert("Please Select subject");
		 return false;
	 }
	 if(unitname == "" ||  unitname== "---Select---"){
		 alert("Please Enter unit");
		 return false;
	 }
	 
	var inputData = '{"categoryId":"'+categoryname+'","examTypeId":"'+examtypename+'","unit":"'+unitname+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","createdBy":"'+createdby+'"}';
	
	/*var subadd = JSON.stringify(subjectadd);*/
	
	$.ajax({
		url:  base_url+'rest/unit/v1/register' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  window.setTimeout(function(){
	    		  window.location = base_url+"jsp/admin/creation/units.jsp";
			  }, 1000);
	    	  

	      },
	      error:function(data){
	    	  $("#creuni").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to create new Unit!");
	      }
		
	})
	
}


//standard flow change 10/05/2018
function editUnits()
	

{$("#uniedi").addClass('disablelink').removeClass('activatelink');
	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var status = true;
	
	  var unitid =getParameterByName('id');
	var  createdby= $("#createdby").val();

 if(categoryname == "" ||  categoryname== "---Select---"){
		 alert("Please Select category");
		 return false;
	 }
	 
	 if(examtypename == "" ||  examtypename== "---Select---"){
		 alert("Please Select examtype");
		 return false;
	 }
	 
	 if(standardname == "" ||  standardname== "---Select---"){
		 alert("Please Select standard");
		 return false;
	 }
	 
	 if(subjectname == "" ||  subjectname== "---Select---"){
		 alert("Please Select subject");
		 return false;
	 }
	 if(unitname == "" ||  unitname== "---Select---"){
		 alert("Please Enter unit");
		 return false;
	 }
	var inputData = '{"categoryId":"'+categoryname+'","examTypeId":"'+examtypename+'","unit":"'+unitname+'","standardId":"'+standardname+'","Id":'+unitid+',"subjectId":"'+subjectname+'","status":'+status+',"createdBy":"'+createdby+'"}';
	
	/*var subadd = JSON.stringify(subjectadd);*/
	
	$.ajax({
		url:  base_url+'rest/unit/v1/updateUnit' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/units.jsp";

	      },
	      error:function(data){
	    	  $("#uniedi").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Units not found!");
	      }
		
	})
	
}
//standard flow change 10/05/2018
function getAllUnits()
{
	var examtypename = "";
		var subjects = "";
		var examtypename = $("#examtype").val();
		var subjects =$("#subject").val();
		if(examtypename =="--- Select ---" || examtypename == "" || examtypename == null || examtypename =="Nothing selected"){
			examtypename=0;
		}
		if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
			subjects=0;
		}
		var inputData = '{"examTypeId":"'+examtypename+'","subjectId":"'+subjects+'"}';
		var subappenddata;
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/unit/v1/getUnits',
			  data: inputData,
			  beforeSend: function() {
				  $("#units_tbody").empty();
				  $("#units_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		     },
			  success: function(data){
				  
				  for(var i=0; i < data.length; i++){
				  subappenddata += "<tr id='units_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
				  subappenddata += "<td>"+data[i].categoryname+"</td>";
				  subappenddata += "<td>"+data[i].standards+"</td>";
				  subappenddata += "<td>"+data[i].examType+"</td>";
				 subappenddata += "<td>"+data[i].subject+"</td>";
				  subappenddata += "<td>"+data[i].unit+"</td>";

				  subappenddata += "<td>"+data[i].createdDate+"</td>";
				  subappenddata += "<td>"+data[i].modifiedDate+"</td>";
				  if(!data[i].status){
					  subappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  subappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  subappenddata += "<td><a href='units_edit.jsp?id="+ data[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='unit_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				    
				  }
				  $("#units_tbody").empty();
				  $('#units_tbl').DataTable().clear().destroy();
				  $("#units_tbody").append(subappenddata);
				    $('#units_tbl').DataTable();
			  },
			  error: function(data) {		
				
				  alert(data.responseJSON.errorMessage);
				 

			  }, 
			  
		});
		//examtype default get service in table  in admin

	

}

//standard flow change 10/05/2018
function getUnitsById()
{
	
	var editableid=getParameterByName('id');


	var subappenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/unit/v1/getunits/'+editableid,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  $("#category").append('<option value="'+data[0].categoryId+'">'+data[0].categoryname+'</option>');
			  	    	
			  	    	 $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
			  	    
			  	    	 $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standards+'</option>');
			  	    	
			  	    	 $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
			  	    	
			  	    
			  	    	$("#unit").val(data[0].unit);
	  
			  	    	$('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
			
		  }, 
		  
	});
	
}

$(document).on('click',"a[id^=unit_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteUnits(id);
	  }
});

//standard change flow
function deleteUnits(id)
{
	
	var status = false;
	 var subjectId=id;
var inputData = '{"status":'+status+',"Id":'+subjectId+'}';

	$.ajax({
		url:  base_url+'rest/unit/v1/updateUnit' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#units_row"+id).remove();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete unit!");
	      }
		
	})
	
}

//standard flow change
function createlayout(){
	
	if(!butnvrble){

			butnvrble = true;
	   		/* var baseURL = $("#baseURL").val();*/
			var layoutname = $("#layout").val();
			//var image = $("#base64image").val();
			 if(layoutname == "")
	    	{
	    	
				 alert("Please Enter Layout ");
	    		butnvrble = false;
	          	return false;
	    	}else{
	    		var  createdby= $("#createdby").val();


				var inputData = '{"layout":"'+layoutname+'","createdBy":"'+createdby+'"}';
			var appenddata = '';
			   jQuery.ajax({
				  type: "POST",
				  dataType: "json",
				  contentType: 'application/json', 
				 url: base_url+'rest/layout/v1/create',
				  data: inputData,
				  success: function(data){
					  /*appenddata += data.message;*/    
					  butnvrble = false;
					  //Alert.render(data.message);
					  alert(data.message);
					  window.setTimeout(function(){
						  window.location = base_url+"jsp/admin/creation/layout_add.jsp";
					  }, 1000);
				  },
				  error: function(data) {		
				
					  butnvrble = false;
					  alert(data.responseJSON.errorMessage);

				  }
				 /* complete: function(){
					  window.location = base_url+"jsp/admin/creation/categories.jsp";
				  }*/
			   });
	    	}
			
	}
	 
}

function createChapter(){
	$("#chpadd").addClass('disablelink').removeClass('activatelink');

	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chaptername").val();
	var  createdby= $("#createdby").val();
    var chapterIcon = $("#img1").attr('src');
	 if(categoryname == "" || categoryname== "---Select---"){
		 alert("please select category");
		 return false;
	 }
	 
	 if(examtypename == "" ||  examtypename == "---Select---"){
		 alert("please select examtype");
		 return false;
	 }
	 
	 if(standardname == "" || standardname == "---Select---"){
		 alert("Please select standard");
		 return false;
	 }
	 
	 if(subjectname == "" || subjectname == "---Select---" ){
		 alert("Please select subject");
		 return false;
	 }
	 if(unitname == "" || unitname == "---Select---"){
		 alert("Please select unit");
		 return false;
	 }
	 if(chaptername == ""){
		 alert("Please Enter chapter");
		 return false;
	 }if(chapterIcon ==""){
		 alert("Please Upload chapter Icon");
	 } else{
		 

	var inputData = '{"categoryId":"'+categoryname+'","chapter":"'+chaptername+'","examTypeId":"'+examtypename+'","unitId":"'+unitname+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","createdBy":"'+createdby+'","chapterIcon":"'+chapterIcon+'"}';
	
	/*var subadd = JSON.stringify(subjectadd);*/
	
	$.ajax({
		url:  base_url+'rest/chapter/v1/create' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
			  
	    	  window.setTimeout(function(){
	    		  window.location = base_url+"jsp/admin/creation/chapters.jsp";
			  }, 1000);
	    	 

	      },
	      error:function(data){
	    	  $("#chpadd").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to create chapter!");
	      }
		
	})
	 }
	
}
function getChaptersById()
{
 var editableid=getParameterByName('id');

		var subappenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/chapter/v1/getchapter/'+editableid,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  $("#category").val(data[0].categoryId);
				  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standards+'</option>');
				  $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
				  $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
				  $("#unit").append('<option value="'+data[0].unitId+'">'+data[0].unit+'</option>');
				  if(data[0].chapterIcon == null ||  data[0].chapterIcon == ""){
	  					$("#img2").attr("src","http://via.placeholder.com/150x150");
						$("#img2").css({"width":"35px","height":"35px","border-radius":"82px"});
	  				}
	  				else{
	  					$("#img1").attr("src",data[0].chapterIcon);
	  				}
	  				
				  	    	
				  	     	$("#chaptername").val(data[0].chapter);
				  	     	$('.selectpicker').selectpicker('refresh');
				  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage);
				 // alert("Chapterss not found!");

			  }, 
			  
		});
}
function getAllChapter()
{
	var examtypename = $("#examtype").val();
	var subjects =$("#subject").val();
	if(examtypename =="--- Select ---" || examtypename == "" || examtypename == null || examtypename =="Nothing selected"){
		examtypename=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	var inputData = '{"examTypeId":"'+examtypename+'","subjectId":"'+subjects+'"}';
		var subappenddata;
		$.ajax({
			type: "POST",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/chapter/v1/getChapters',
			  data: inputData,
			  beforeSend: function() {
				  $("#chapter_tbody").empty();
				  $("#chapter_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		     },
			  success: function(data){
				 
				  for(var i=0; i < data.length; i++){
				  subappenddata += "<tr id='chapter_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
				  subappenddata += "<td>"+data[i].categoryname+"</td>";
				  subappenddata += "<td>"+data[i].standards+"</td>";
				  subappenddata += "<td>"+data[i].examType+"</td>";
				  subappenddata += "<td>"+data[i].subject+"</td>";
				  subappenddata += "<td>"+data[i].unit+"</td>";
				  subappenddata += "<td>"+data[i].chapter+"</td>";

				  subappenddata += "<td>"+data[i].createdDate+"</td>";
				  subappenddata += "<td>"+data[i].modifiedDate+"</td>";
				  if(!data[i].status){
					  subappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
				  }
				  else /*if(data[i].status)*/{
					  subappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
				  }
				  
				  subappenddata += "<td><a href='chapters_edit.jsp?id="+ data[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
				  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='chapter_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				  				"<i class='icon-trash font-18'></i></a></td>";
				 
				    
				  }
				  $("#chapter_tbody").empty();
				  $('#chapter_tbl').DataTable().clear().destroy();
				  $("#chapter_tbody").append(subappenddata);
				    $('#chapter_tbl').DataTable();
			  },
			  error: function(data) {		
				 
				  alert(data.responseJSON.errorMessage);
				 // alert("Chapters not found!");

			  } 
			  
		});
		
}
function editChapters()
{
	$("chpedit").addClass('disablelink').removeClass('activatelink');
	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = $("#unit").val();
	var chaptername = $("#chaptername").val();
	var status = true;
	 var chapterIcon = $("#img1").attr('src');
	  var chapterid=getParameterByName('id');
	var  createdby= $("#createdby").val();
	 if(categoryname == "" || categoryname== "---Select---"){
		 alert("please select category");
		 return false;
	 }
	 
	 if(examtypename == "" ||  examtypename == "---Select---"){
		 alert("please select examtype");
		 return false;
	 }
	 
	 if(standardname == "" || standardname == "---Select---"){
		 alert("Please select standard");
		 return false;
	 }
	 
	 if(subjectname == "" || subjectname == "---Select---" ){
		 alert("Please select subject");
		 return false;
	 }
	 if(unitname == "" || unitname == "---Select---"){
		 alert("Please select unit");
		 return false;
	 }
	 if(chaptername == "" ){
		 alert("Please Enter chaptername");
		 return false;
	 }
	 if(chapterIcon ==""){
		 alert("Please Upload chapter Icon");
	 }
	var inputData = '{"categoryId":"'+categoryname+'","chapter":"'+chaptername+'","examTypeId":"'+examtypename+'","unitId":"'+unitname+'","standardId":"'+standardname+'","Id":'+chapterid+',"subjectId":"'+subjectname+'","status":'+status+',"createdBy":"'+createdby+'","chapterIcon":"'+chapterIcon+'"}';
	
	/*var subadd = JSON.stringify(subjectadd);*/
	
	$.ajax({
		url:  base_url+'rest/chapter/v1/updateChapter' ,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/chapters.jsp";

	      },
	      error:function(data){
	    	  $("#chpedit").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	    	 // alert("Chapters updation not successful!");
	      }
		
	})
	
}


$(document).on('click',"a[id^=chapter_item]", function() {
   	var id = $(this).attr('data-id');
    var con = confirm("Are you Sure to delete?")
	  if(con == true){
		  deleteChapter(id);
	  }
});


function deleteChapter(id)
{
	var status = false;
	  var chapterId=id;
	var  createdby= $("#createdby").val();


	
	var inputData = '{"status":'+status+',"Id":'+chapterId+'}';

	$.ajax({
		url:  base_url+'rest/chapter/v1/updateChapter',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	      success: function(data){
	    	  alert(data.message);
	    	  $("#chapter_row"+id).remove();
	    	  
	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	    	  //alert("Failed to delete Chapter!");
	      }
		
	})
	
}
function createYears()
{
	$("#yearadd").addClass('disablelink').removeClass('activatelink');


	var categoryname = $("#category").val();
	var standardd = $("#standard").val();
	
	var examtypename = $("#examtype").val();
	
	var yearname = $("#year").val();

	var  createdby= $("#createdby").val();
	if(categoryname=="" || categoryname=="---Select---"){
		alert("Please Select Category");
		return false;
	}
	if(standardd=="" || standardd=="---Select---"){
		alert("Please Select Standard");
		return false;
	}
	if(examtypename=="" || examtypename=="---Select---"){
		alert("Please Select Examtype");
		return false;
	}

	if(yearname=="" || yearname=="---Select---"){
		alert("Please enter Yearname");
		return false;
	}


	var inputData = {
			  "categoryId": categoryname,
			  "standardId": standardd,
			  "examtypeId": examtypename,
			  "createdBy": "Admin",
			  "year": yearname
			}


	
	var yearadd = JSON.stringify(inputData);
	
	$.ajax({
		url:  base_url+'rest/years/v1/add',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:yearadd,
	      success: function(data){
	    	  alert(data.message);
	    	  window.setTimeout(function(){
	    		  window.location = base_url+"jsp/admin/creation/years.jsp";
			  }, 1000);
	    	  
			  
	      },
	      error:function(data){
	    	  $("#yearadd").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
	
}
/* Get All Years */

function GetAllYears(){


	var examtypename = $("#examtype").val();
	if(examtypename =="--- Select ---" || examtypename === null || examtypename == "")
		{
		  examtypename=0;
		}
	
	  var inputData = '{"examTypeId":"'+examtypename+'"}';


$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/years/v1/getyears',
	 data:inputData,
	 beforeSend: function(){
			$("#years_tbody").empty();
			$("#years_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
	  success: function(data){
		  var yearappenddata="";
		  for(var i=0; i < data.length; i++){
			  yearappenddata += "<tr id='year_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
			  yearappenddata += "<td>"+data[i].categoryname+"</td>";
			  yearappenddata += "<td>"+data[i].standard+"</td>";
			  yearappenddata += "<td>"+data[i].examType+"</td>";
			  yearappenddata += "<td>"+data[i].year+"</td>";
			  yearappenddata += "<td>"+data[i].createdDate+"</td>";
			  yearappenddata += "<td>"+data[i].modifiedDate+"</td>";
		 if(!data[i].status){
			  yearappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
		  }
		 else{
			  yearappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
		  }
		  yearappenddata +=  "<td><a href='years_edit.jsp?id="+ data[i].id + "&status="+data[i].status+ "&name="+data[i].year+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='year_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td>";
		  }
		  $("#years_tbody").empty();
		  $('#years_tbl').DataTable().clear().destroy();
		  $("#years_tbody").append(yearappenddata);
		  $("#years_tbl").DataTable();
		  
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert(data.responseJSON.errorMessage);

	  }
	  
});

}

/* End of Get All Years */


//years examtype get service
function getyearsById()
{
	var editableid=getParameterByName('id');

		/*var examtypename = $("#examtype").val();*/
     
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/years/v1/getyears/'+editableid ,
			 
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();				  
					    	$("#category").val(data[0].categoryId);
					    	  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');
							  $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
				  	    	$("#year").val(data[0].year);
				  	    	$('.selectpicker').selectpicker('refresh');
				  
			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Years not found!");

			  }, 
			  
		});
}


$("#years_edit").click(function(e){
	e.preventDefault();
$("#years_edit").addClass('disablelink').removeClass('activatelink');
     	 var categoryname = $("#category").val();
		
		var examtypename = $("#examtype").val();
		
		var yearname = $("#year").val();
		var standardid= $("#standard").val();

		var  createdby= $("#createdby").val();
		var yearId=getParameterByName('id');
	
		if(categoryname=="" || categoryname=="---Select---"){
			alert("Please Select Category");
			return false;
		}
		if(examtypename=="" || examtypename=="---Select---"){
			alert("Please Select Examtype");
			return false;
		}
		if(standardid=="" || standardid=="---Select---"){
			alert("Please Select Standard");
			return false;
		}
		if(yearname =="" || yearname==null){
			alert("Please enter year");
			return false;
		}
var year_edit =	 {
		"year":yearname,
		"createdBy":createdby,
		"Id": yearId,
		"status":true,
		"standardId":standardid,
		"categoryId":categoryname,
		"examtypeId":examtypename,
		}



var yea_edit = JSON.stringify(year_edit);


	 $.ajax({
		 url: base_url+'rest/years/v1/updateyears',
		 type:"POST",
		 contentType:'application/json',
		 dataType:"json",
		 data: yea_edit,
		 success: function(data){
			 
		 	if(data.status == true){
				 alert("years successfully changed");
				 window.location = base_url+"jsp/admin/creation/years.jsp";
			 }
		 },
		 error: function(data){
			 $("#years_edit").addClass('activatelink').removeClass('disablelink');
			 alert(data.responseJSON.errorMessage);
		 },
		 
	 	
	 });
});
//years edit service

//years delete service

$(document).on("click", "a[id^=year_item]", function() {
   	var id = $(this).attr('data-id');
   	//var tr_id = $("tr[id^=year_row]").attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	
	  if(con == true){
		var deleteyearrow =  {
				    "Id":id,
				    "status":false
				};
			var deleteyear = JSON.stringify(deleteyearrow);

   		$.ajax({
   	  type: "POST",
  	  dataType: "json",
  	  contentType: 'application/json', 
  	  url: base_url+'rest/years/v1/updateyears',
  	  data:deleteyear,
  	  success: function(data){	  
  		  if(data.status){
	   		alert(data.message);
	   		$("#year_row"+id).remove();
	   		
	   		//$("#dean_delete"+id).remove();
  		  }
  		  },
  	    
  	  error: function(data){
  		  alert(data.responseJSON.errorMessage);
	  }
   		})
   		}});

//years delete service


function createTypeofquestions()
{
	$("#tyadd").addClass('disablelink').removeClass('activatelink');

	var categoryname = $("#category").val();
	
	var examtypename = $("#examtype").val();
	
	var standardname = $("#standard").val();
	
	var subjectname = $("#subject").val();
	
	var layoutnumber = $("#layoutnumber").val();
	
	var typeofquesname = $("#typeofquesname").val();
	
	var fullmarksname = $("#fullmarks").val();
	
	var negativename = $("#negative").val();
	
	var partialname = $("#partial").val();

	var createdby= $("#createdby").val();
	
	var questionTime= $("#questiontime").val();
var questionTypeDescription = CKEDITOR.instances.editor1.getData();
	if(categoryname == "" || categoryname == "--- Select ---" )
	{
		 alert("Please select a Category ");
      	return false;
	} else if(examtypename == "" || examtypename == "--- Select ---"){
		 alert("Please select a ExamType");
		 return false;
    } else if(standardname == "" || standardname == "--- Select ---" ){
		alert("Please select a Standard");
		return false;
    } else if(subjectname == "" || subjectname == "--- Select ---" ){
		alert("Please select a Subject");
		return false;
    } else if(layoutnumber == "" || layoutnumber == "--- Select ---" ){
		alert("Please select a Layout");
		return false;
    } else if(typeofquesname == "" || typeofquesname == "--- Select ---" ){
		alert("Please enter Type of questions");
		return false;
    } else if(fullmarksname == "" || fullmarksname == "--- Select ---" ){
		alert("Please enter Full Marks");
		return false;
    } else if(negativename == "" || negativename == "--- Select ---" ){
		alert("Please enter Negative Marks");
		return false;
    } else if(questionTime == "" || questionTime == "--- Select ---" ){
		alert("Please enter QuestionTime");
		return false;
    } else if(partialname == "" || partialname == "--- Select ---" ){
		alert("Please enter Partial Marks");
		return false;
    } else{
    	var inputData = {
				  "categoryId": categoryname,
				  "examtypeId": examtypename,
				  "standardId":standardname,
				  "subjectId": subjectname,
				  "layoutNumber": layoutnumber,
				  "questionType": typeofquesname,
				  "fullMarks": fullmarksname,
				  "negativeMarks": negativename,
				  "partialMarks": partialname,
				  "questionTime": questionTime,
				  "createdBy": "Admin",
				  "questionTypeDescription":questionTypeDescription
				};
var typeofquesadd = JSON.stringify(inputData);
		
		$.ajax({
			url:  base_url+'rest/questionType/v1/create',
			type:"POST",
			 dataType: "json",
			  contentType: 'application/json',
			  data:typeofquesadd,
		      success: function(data){
		    	  alert(data.message);
		    	  window.location = base_url+"jsp/admin/creation/type_of_questions.jsp";
		      },
		      error:function(data){
		    	  $("#tyadd").addClass('activatelink').removeClass('disablelink');
		    	  alert(data.responseJSON.errorMessage);
		      }
			
		});
    }

}


function GetAllTypeofques(){

	var examtypename = $("#examtype").val();
	var subjects =$("#subject").val();
	if(examtypename =="--- Select ---" || examtypename == "" || examtypename == null || examtypename =="Nothing selected"){
		examtypename=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	var inputData = '{"examTypeId":"'+examtypename+'","subjectId":"'+subjects+'"}';

	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/questionType/v1/getQuestionType',
		  data:inputData,
		  beforeSend: function(){
				$("#typques_tbody").empty();
				$("#typques_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  
			  var typequesappenddata="";
			  for(var i=0; i < data.length; i++){
				  typequesappenddata += "<tr id='typeques_row"+data[i].id+"'><td>"+data[i].id+"</td>";    
				  typequesappenddata += "<td>"+data[i].categoryname+"</td>";
				  typequesappenddata += "<td>"+data[i].standard+"</td>";
				  typequesappenddata += "<td>"+data[i].examType+"</td>";
				  typequesappenddata += "<td>"+data[i].subject+"</td>";
				  typequesappenddata += "<td>"+data[i].layoutNumber+"</td>";
				  typequesappenddata += "<td>"+data[i].questionType+"</td>";
				  typequesappenddata += "<td>"+data[i].questionTime+"</td>";
				  typequesappenddata += "<td>"+data[i].fullMarks+"</td>";
				  typequesappenddata += "<td>"+data[i].negativeMarks+"</td>";
				  typequesappenddata += "<td>"+data[i].partialMarks+"</td>";
				  typequesappenddata += "<td>"+data[i].createdDate+"</td>";
				  typequesappenddata += "<td>"+data[i].modifiedDate+"</td>";
			  if(!data[i].status){
				  typequesappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
			  } else {
				  typequesappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
			  }
			  typequesappenddata +=  "<td><a href='type_of_questions_edit.jsp?id="+ data[i].id + "&status="+data[i].status+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='typeques_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td>";
			 
			  }
			  $("#typques_tbody").empty();
			  $('#typeques_tbl').DataTable().clear().destroy();
			  $("#typques_tbody").append(typequesappenddata);
			  $("#typeques_tbl").DataTable();
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("Type of Questions not found!");

		  }
		  
	});
	}

	/*======== END Get and Filter Types of Questions ========*/
function getTypeofquesById()
{
	
	var examtypename = ""
	
	  var editableid=getParameterByName('id');

		var subappenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/questionType/v1/getquestiontype/'+editableid,
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  
				  for(var i=0; i < data.length; i++)
				  {
					  if(data[i].id == parseInt(editableid)){
						  
						  $("#category").val(data[0].categoryId);
						  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standard+'</option>');
						  $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
						  $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
						  //$("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
				  	    	$("#layoutnumber").val(data[i].layoutNumber);
				  	    /*	$("#examtype").val(data[i].examType);
				  	    	$("#subject").val(data[i].subject);
				  	    	$("#standard").val(data[i].standard);*/
				  	    	$("#typeofquesname").val(data[i].questionType);
				  	    	$("#fullmarks").val(data[i].fullMarks);
				  	    	$("#negative").val(data[i].negativeMarks);
				  	    	$("#partial").val(data[i].partialMarks);
				  	    	$("#questiontime").val(data[i].questionTime);
				  	    	 CKEDITOR.instances.editor1.setData(data[i].questionTypeDescription);
				  	    	// $("#editor1").html(data[i].questionTypeDescription);
				  	    	$('.selectpicker').selectpicker('refresh');
				  	    	break;
						  
						  
					  }else{
						  
						  console.log("id does not match "+editableid );
						  console.log("id type  "+typeof(editableid ));

						  
					  }
					  
				  }


			  },
			  error: function(data) {		
				  $("#loading").hide();
				  alert("Types of Questions not found!");

			  }, 
			  
		});
}

//type of questions edit button service
$("#typeofques_edit").click(function(e){
	$("#typeofques_edit").addClass('disablelink').removeClass('activatelink');
	e.preventDefault();
	var categoryname = $("#category").val();
    var examtypename = $("#examtype").val();
    var standardname = $("#standard").val();
    var subjectname =	$("#subject").val();
    var layoutnumber = 	$("#layoutnumber").val();
	var typeofquesname = $("#typeofquesname").val();
	var status = true;
	var fullmarksname = $("#fullmarks").val();
	var negativename = $("#negative").val();
	var createdby = $("#createdby").val();
	var typeofquesId=getParameterByName('id');
	var partialname = $("#partial").val();
	var questionTime = $("#questiontime").val();
	var questionTypeDescription = CKEDITOR.instances.editor1.getData();
	if(categoryname == "" || categoryname == "--- Select ---" )
	{
		 alert("Please select a Category ");
      	return false;
	} else if(examtypename == "" || examtypename == "--- Select ---"){
		 alert("Please select a ExamType");
		 return false;
    } else if(standardname == "" || standardname == "--- Select ---" ){
		alert("Please select a Standard");
		return false;
    } else if(subjectname == "" || subjectname == "--- Select ---" ){
		alert("Please select a Subject");
		return false;
    } else if(layoutnumber == "" || layoutnumber == "--- Select ---" ){
		alert("Please select a Layout");
		return false;
    } else if(typeofquesname == "" || typeofquesname == "--- Select ---" ){
		alert("Please enter Type of questions");
		return false;
    } else if(fullmarksname == "" || fullmarksname == "--- Select ---" ){
		alert("Please enter Full Marks");
		return false;
    } else if(negativename == "" || negativename == "--- Select ---" ){
		alert("Please enter Negative Marks");
		return false;
    } else if(questionTime == "" || questionTime == "--- Select ---" ){
		alert("Please enter QuestionTime");
		return false;
    } else if(partialname == "" || partialname == "--- Select ---" ){
		alert("Please enter Partial Marks");
		return false;
    } else{
	var typeofques_edit =	{
		  "categoryId": categoryname,
		  "examtypeId": examtypename,
		  "status": status,
		  "standardId":standardname,
		  "subjectId": subjectname,
		  "layoutNumber": layoutnumber,
		  "questionType": typeofquesname,
		  "fullMarks": fullmarksname,
		  "negativeMarks": negativename,
		  "partialMarks": partialname,
		  "createdBy": 'Santosh',
		  "questionTime":questionTime,
		  "Id":typeofquesId,"questionTypeDescription":questionTypeDescription
		}


var tpyques_edit = JSON.stringify(typeofques_edit);


	 $.ajax({
		 url: base_url+'rest/questionType/v1/updateQuestionType',
		 type:"POST",
		 contentType:'application/json',
		 dataType:"json",
		 data: tpyques_edit,
		 success: function(data){
			
		 	if(data.status === true){
				 alert(data.message);
			 }
		 },
		 error: function(data){
			 $("#typeofques_edit").addClass('activatelink').removeClass('disablelink');
			 alert(data.responseJSON.errorMessage);
		 },
		 complete: function(){
			 window.location = base_url+"jsp/admin/creation/type_of_questions.jsp";
		 }
	 	
	 });
    }
	 
});

//type of questions delete button service

$(document).on("click", "a[id^=typeques_item]", function() {
   	var id = $(this).attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	var pon = confirm("Really are you Sure?");
	  if(con == true){
		  if(pon == true){
			  var categoryname = $("#category").val();
				
				var examtypename = $("#examtype").val();
			
				var  createdby= $("#topiccreatedby").val();
			  
			var typeofquesrow =  {
				    "Id":id,
				  
				    "status":false
				};
			var typeofquesdelete = JSON.stringify(typeofquesrow);

   		$.ajax({
   	  type: "POST",
  	  dataType: "json",
  	  contentType: 'application/json', 
  	  url: base_url+'rest/questionType/v1/updateQuestionType',
  	  data:typeofquesdelete,
  	  success: function(data){	  
  		  if(data.status){
   		alert(data.message);
   		$("#typeques_row"+id).remove();
  		  }
  		  },
  	    
  	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }}});


//Topics add service

function createTopics()
{
	$("#toadd").addClass('disablelink').removeClass('activatelink');


	var categoryname = $("#category").val();
	
	var examtypename = $("#examtype").val();
	
	var standardname = $("#standard").val();
	
	var subjectname = $("#subject").val();
	
	var unitname = $("#unit").val();
	
	var chaptername = $("#chapter").val();
	
	var topicname = $("#topic").val();

	var  createdby= $("#topiccreatedby").val();
	
	
	
	 if(categoryname == "" || categoryname== "---Select---"){
		 alert("please select category");
		 return false;
	 }
	 
	 if(examtypename == "" ||  examtypename == "---Select---"){
		 alert("please select examtype");
		 return false;
	 }
	 
	 if(standardname == "" || standardname == "---Select---"){
		 alert("Please select standard");
		 return false;
	 }
	 
	 if(subjectname == "" || subjectname == "---Select---" ){
		 alert("Please select subject");
		 return false;
	 }
	 if(unitname == "" || unitname == "---Select---"){
		 alert("Please select unit");
		 return false;
	 }
	 if(chaptername == "" || chaptername == "---Select---"){
		 alert("Please select Chapter");
		 return false;
	 }
	if(topicname=="" || topicname=="---Select---"){
		alert("please enter topic name");
		return false;
	}


	var inputData = {
		    "categoryId":categoryname,
		    "examTypeId":examtypename,
		    "standardId":standardname,
		    "subjectId": subjectname,
		    "unitId":unitname,
		    "topic":topicname,
		    "chapterId":chaptername,
		    "createdBy":"Admin"
		};

	
	var subadd = JSON.stringify(inputData);
	
	$.ajax({
		url:  base_url+'rest/topic/v1/create',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:subadd,
	      success: function(data){
	    	  alert("Added successfully");
				 window.location = base_url+"jsp/admin/creation/topics.jsp";

	      },
	      error:function(data){
	    	  $("#toadd").addClass('activatelink').removeClass('disablelink');
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	})
	
}

function GetAllTopic(){
	
	
	var examtypename = $("#examtype").val();
	var subjects =$("#subject").val();
	if(examtypename =="--- Select ---" || examtypename == "" || examtypename == null || examtypename =="Nothing selected"){
		examtypename=0;
	}
	if(subjects =="--- Select ---" || subjects == "" || subjects == null || subjects =="Nothing selected"){
		subjects=0;
	}
	var inputData = '{"examTypeId":"'+examtypename+'","subjectId":"'+subjects+'"}';
$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/topic/v1/getTopic',
	  data:inputData,
	  beforeSend: function(){
			$("#topics_tbody").empty();
			$("#topics_tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
	  success: function(data){
		  
		  var topicappenddata="";
		  for(var i=0; i < data.length; i++){
			  topicappenddata += "<tr id='topic_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
			  topicappenddata += "<td>"+data[i].categoryname+"</td>";
			  topicappenddata += "<td>"+data[i].examType+"</td>";
			  topicappenddata += "<td>"+data[i].standards+"</td>";
			  topicappenddata += "<td>"+data[i].subject+"</td>";
			  topicappenddata += "<td>"+data[i].unit+"</td>";
			  topicappenddata += "<td>"+data[i].chapter+"</td>";
			  topicappenddata += "<td>"+data[i].topic+"</td>";
			  topicappenddata += "<td>"+data[i].createdDate+"</td>";
			  topicappenddata += "<td>"+data[i].modifiedDate+"</td>";
		  if(data[i].status == false){
			  topicappenddata += "<td><a class='btn btn-deactive btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='De-Active'><i class='fa fa-thumbs-down font-18 mt-10'></i></a></td>";
		  }
		  else if(data[i].status == true){
			  topicappenddata += "<td><a class='btn btn-active btn-icon-anim btn-circle' data-toggle='tooltip' data-original-title='Active'><i class='fa fa-thumbs-up font-18 mt-10'></i></a></td>"; 
		  }
		  topicappenddata +=  "<td><a href='topics_edit.jsp?id="+ data[i].id + "&status="+data[i].status+ "&name="+data[i].topic+"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
	  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='topic_item"+data[i].id+"' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
				"<i class='icon-trash font-18'></i></a></td>";
		  
		 
		  }
		  $("#topics_tbody").empty();
		  $('#topics_tbl').DataTable().clear().destroy();
		  $("#topics_tbody").append(topicappenddata);
		  $("#topics_tbl").DataTable();
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert(data.responseJSON.errorMessage);

	  }
	  
});

}

function getTopicsById()
{
	
	var examtypename = ""
	
	    	  var editableid=getParameterByName('id');

	
		var subappenddata;
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			  url: base_url+'rest/topic/v1/gettopics/'+editableid,
			
			  beforeSend: function() {
		        $("#loading").show();
		     },
			  success: function(data){
				  $("#loading").hide();
				  $("#category").val(data[0].categoryId);
				  $("#standard").append('<option value="'+data[0].standardId+'">'+data[0].standards+'</option>');
				  $("#examtype").append('<option value="'+data[0].examTypeId+'">'+data[0].examType+'</option>');
				  $("#subject").append('<option value="'+data[0].subjectId+'">'+data[0].subject+'</option>');
				  $("#unit").append('<option value="'+data[0].unitId+'">'+data[0].unit+'</option>');
				  $("#chapter").append('<option value="'+data[0].chapterId+'">'+data[0].chapter+'</option>');
					    	/*$("#category").val(data[0].categoryname);
				  	    	$("#examtype").val(data[0].examType);
				  	    	$("#standard").val(data[0].standards);
				  	    	$("#subject").val(data[0].subject);
				  	    	$("#unit").val(data[0].unit);
				  	    	$("#chapter").val(data[0].chapter);*/
				  	    	$("#topicname").val(data[0].topic);
				  	    	$('.selectpicker').selectpicker('refresh');
				  	    	
					  
				  },

			  error: function(data) {		
				  $("#loading").hide();
				  alert(data.responseJSON.errorMessage);

			  }, 
			  
		});
}

//topics edit button service

$("#top_edit").click(function(e){
	$("#top_edit").addClass('disablelink').removeClass('activatelink');
	e.preventDefault();
	var catagorynamer = $("#category").val();
  var examtypename	= $("#examtype").val();
  var standardname = 	$("#standard").val();
  var subjectname =	$("#subject").val();
  	var unitname = $("#unit").val();
  	var chaptername = $("#chapter").val();
	var topicname = $("#topicname").val();
	 var topicId=getParameterByName('id');
	 var status = true;
	 var createdby = $("#createdby").val();
var topic_edit =	{
		"Id":topicId,
		"categoryId":catagorynamer,
		"examTypeId":examtypename,
		"standardId":standardname ,
		"subjectId":subjectname,
		"unitId":unitname,
		"chapterId":chaptername,
		"topic":topicname,
		"createdBy":createdby,
		"status":status
	};

var top_edit = JSON.stringify(topic_edit);


	 $.ajax({
		  url: base_url+'rest/topic/v1/updateTopic',

		 type:"POST",
		 contentType:'application/json',
		 dataType:"json",
		 data: top_edit,
		 success: function(data){
			
		 	if(data.status === true){
				 alert(data.message);
			 }
		 },
		 error: function(data){
			 $("#top_edit").addClass('activatelink').removeClass('disablelink');
			 alert(data.responseJSON.errorMessage);
		 },
		 complete: function(){
			 window.location = base_url+"jsp/admin/creation/topics.jsp";
		 }
	 	
	 })
});

//topics edit button service


//topics delete button service

$(document).on("click", "a[id^=topic_item]", function() {
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
  	  url: base_url+'rest/topic/v1/updateTopic',
  	  data:deletetopic,
  	  success: function(data){	  
  		  if(data.status){
   		alert(data.message);
   		$("#topic_row"+id).remove();
  		  }
  		  },
  	    
  	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }}});


//topics delete button service


function getAllYearsForDropDown(catname,examtypename,standardid,callback){
	var appenddata;
	
	if(catname !== "" && catname !== null && catname !== undefined){
		if(examtypename !== "" && examtypename !== null && examtypename !== undefined){
			if(standardid !== "" && standardid !== null && standardid !== undefined){
			var inputData = {
					"categoryId":catname,
					"examtypeId":examtypename,
					"standardId":standardid
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
					 
							//var zoneidis = data.zones[i].id;
							appenddata += '<option value="'+data[i].id+'">'
									+data[i].name+'</option>';
						}
			     $("#previousyear2").prop("disabled",false);
			       jQuery("#previousyear2").empty("");
					jQuery("#previousyear2").append('<option value="">--- Select ---</option>');
					jQuery("#previousyear2").append(appenddata);
					
					$("#previousyear1").prop("disabled",false);
				       jQuery("#previousyear1").empty("");
						jQuery("#previousyear1").append('<option value="">--- Select ---</option>');
						jQuery("#previousyear1").append(appenddata);
						
						$("#sltdyer").prop("disabled",false);
					       jQuery("#sltdyer").empty("");
							jQuery("#sltdyer").append('<option value="">--- Select ---</option>');
							jQuery("#sltdyer").append(appenddata);
							
							$("#sltdyer1").prop("disabled",false);
						       jQuery("#sltdyer1").empty("");
								jQuery("#sltdyer1").append('<option value="">--- Select ---</option>');
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
			alert("Standard not found!");
		}
		} else {
			alert("Examtype not found!");
		}
	} else {
		alert("Category not found!");
	}
	
	
	
}

function createCharcteristics(){
$("#chatadd").addClass('disablelink').removeClass('activatelink');

	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var difflev1 = $("#difflev1").val();
	var difflev2 = $("#difflev2").val();
	var difflev3 = $("#difflev3").val();
	
	var param1 = $("#param1").val();
	var param2 = $("#param2").val();
	var param3 = $("#param3").val();
	var param4 = $("#param4").val();
	
	var param5 = $("#param5").val();
	var param6 = $("#param6").val();
	var param7 = $("#param7").val();
	var param8 = $("#param8").val();
	
	var param9 = $("#param9").val();
	var param10 = $("#param10").val();
	var param11 = $("#param11").val();
	var param12 = $("#param12").val();
	
	var prvyrsqns = $("#prvyrsqns").val();
	var sltdyer = $("#sltdyer").val();
	var prvyrothexm = $("#prvyrothexm").val();
	var sltdyer1 = $("#sltdyer1").val();
	
	var createdBy = "Admin";
	sltdyer = sltdyer.map(Number);
	sltdyer1 = sltdyer1.map(Number);
	
	if(category =="--- Select ---" || category == "")
	{
		  alert("Please select Category");
		  return false;
	}else if(examtype =="--- Select ---" || examtype == "")
	{
		  alert("Please select Examtype");
		  return false;
	
	}else if(difflev1 == "" || difflev2 == "" || difflev3 == "")
	{
		  alert("Please enter Difficulty Level");
		  return false;
	}
	else if(param1 == "")
	{
		  alert("Please enter Parameter 1");
		  return false;
	}else if((sltdyer =="--- Select ---" || sltdyer =="Nothing Selected" ) && prvyrsqns == "")
	{
		  alert("Previous Year Questions field cannot be empty");
		  return false;
	}else if((sltdyer1 =="--- Select ---" || sltdyer1 =="Nothing Selected") && prvyrothexm=="")
	{
		  alert("Previous Year Other Competitive Exams cannot be empty");
		  return false;
	} else {

		var findiflvl = difflev1+","+difflev2+","+difflev3;
		
		
		var farr = [];
		var finparms="";
		
		for (var i = 1; i <= 12; i++) { 
			if($("#param"+i).val()!="" && typeof($("#param"+i).val())!== "undefined"){
				
				var ppp = $("#param"+i).val();
				farr.push(ppp);
				
			}
			
		}
		
		finparms = farr.join(',');
		
		/*var PrvyerQns;
		
		if(sltdyer !="--- Select ---" && sltdyer !="Nothing Selected"){
			PrvyerQns = sltdyer;
		}else{
			PrvyerQns = prvyrsqns;
		}
		
		var PrvyerOtrexm;
		
		if(sltdyer1 !="--- Select ---" || sltdyer1 !="Nothing Selected"){
			PrvyerOtrexm = sltdyer1;
		}else{
			PrvyerOtrexm = prvyrothexm;
		}*/
		

		
		
		
		 /* var inputData = '{"categoryId":"'+category+'","examtypeId":"'+examtype+'","difficultyLevel":"'+findiflvl+'","parameters":"'
		  +finparms+'","previousExams":"'+prvyrsqns+'","competitativeExams":"'+prvyrothexm+'","status":true,"createdBy":"'
		  +createdBy+'","previouyear_questionId":'+sltdyer+',"previousyrcompetitativeExamsId":'+sltdyer1+',"standardId":"'+standard+'"}';*/
			var inputData = {
					"categoryId":category,"examtypeId":examtype,"difficultyLevel":findiflvl,"parameters":finparms,"previousExams":prvyrsqns,"competitativeExams":prvyrothexm,"status":true,
					"createdBy":createdBy,"previouyear_questionId":sltdyer,"previousyrcompetitativeExamsId":sltdyer1,"standardId":standard
			};
			
			inputData = JSON.stringify(inputData);

	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/characteristics/v1/create',
		 data:inputData,
		  success: function(data){
			 alert(data.message);
			 window.setTimeout(function(){
				  window.location = base_url+"jsp/admin/creation/characteristics.jsp";
			  }, 1000);
			  
		  },
		  error: function(data) {
			  $("#chatadd").addClass('activatelink').removeClass('disablelink');
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
	

	}
	
}


function getAllCharacteristics(){
	
	var examtypename = ""
	var examtypename = $("#examtype").val();
	if(examtypename =="--- Select ---" || examtypename == "" || examtypename == null)
	{
	   examtypename=0;
	}
	     
	
	var appenddata;
	
	 var inputData = '{"examtypeId":"'+examtypename+'"}';
	
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  data:inputData,
		  url: base_url+'rest/characteristics/v1/getCharacteristics',
		  /*url: 'https://zomantdev.appspot.com/rest/characteristics/getCharacteristics',*/
		  beforeSend: function(){
				$("#character-tbody").empty();
				$("#character-tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
				  
			  appenddata += "<tr id='char_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
			  appenddata += "<td>"+data[i].categoryName+"</td>"; 
			  appenddata += "<td>"+data[i].standard+"</td>"; 
			  appenddata += "<td>"+data[i].examType+"</td>";
			  appenddata += "<td>"+data[i].difficultyLevel+"</td>";
			  appenddata += "<td>"+data[i].parameters+"</td>";
			  /*var paramary = data[i].difficultyLevel.split(",");
			  
			  var innerData;
			  
			  for(var j=0; j < paramary.length; j++){
				  innerData += "<td>"+data[i].difficultyLevel+"</td>";
			  }*/
			  appenddata += "<td>"+data[i].previousExams+"</td>";
			  appenddata += "<td>"+data[i].competativeExams+"</td>";
			  appenddata += "<td>"+data[i].createdDate+"</td>";
			  appenddata += "<td>"+data[i].modifiedDate+"</td>";
			  if(data[i].status == false){
				  appenddata += '<td><a class="btn btn-deactive btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="De-Active"><i class="fa fa-thumbs-down font-18 mt-10"></i></a></td>';
			  }
			  else if(data[i].status == true){
				  appenddata += '<td><a class="btn btn-active btn-icon-anim btn-circle" data-toggle="tooltip" data-original-title="Active"><i class="fa fa-thumbs-up font-18 mt-10"></i></a></td>'; 
			  }
			  	appenddata +="<td><a href='characteristics_edit.jsp?id="+ data[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+data[i].id+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='char_item' data-id='"+data[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
		  				"<i class='icon-trash font-18'></i></a></td>";
			  }
			  $("#character-tbody").empty();
			  $('#character-tab').DataTable().clear().destroy();
			  $("#character-tbody").append(appenddata);
			  $("#character-tab").DataTable();
		  },
		  error: function(data) {		
			 
			  alert(data.responseJSON.errorMessage);

		  }
		 
	    	
	});
	}


function getCharactersticsDataById(Id, callback) {
  	
  	$.ajax({
  		 type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/characteristics/v1/getCharacteristics/'+Id,
  		  success:function(data){
  			  if(callback){
  				callback(data[0]);
  			  }
  			  
  		  },
  		  error:function(){
  			  alert(data.responseJSON.errorMessage);  
  		  }
  		
  	});
  	
  	
  }
function updatecharacterstics(){
	var categoyname = $("#category").val();
	var standardid=$("#standard").val();
	var examtype = $("#examtype").val();
	var difflev1 = $("#difficultlevel1").val();
	var difflev2 = $("#difficultlevel2").val();
	var difflev3 = $("#difficultlevel3").val();
	var prvyrsqns = $("#prevyear").val();
	var sltdyer = $("#previousyear1").val();
	var prvyrothexm = $("#prevyearother").val();
	var sltdyer1 = $("#previousyear2").val();
	/*sltdyer = sltdyer.join(',');
	sltdyer1 = sltdyer1.join(',');*/
	sltdyer = sltdyer.map(Number);
	sltdyer1 = sltdyer1.map(Number);

	
	if(category =="--- Select ---" || category == "")
	{
		  alert("Please select Category");
		  return false;
	}else if(examtype =="--- Select ---" || examtype == "")
	{
		  alert("Please select Examtype");
		  return false;
	
	}else if(difflev1 == "" || difflev2 == "" || difflev3 == "")
	{
		  alert("Please enter Difficulty Level");
		  return false;
	}
	else if(parameter1 == "")
	{
		  alert("Please enter Parameter 1");
		  return false;
	}else if((sltdyer =="--- Select ---" || sltdyer =="Nothing Selected" )&& prvyrsqns == "")
	{
		  alert("Previous Year Questions field cannot be empty");
		  return false;
	}else if((sltdyer1 =="--- Select ---" || sltdyer1 =="Nothing Selected") && prvyrothexm=="")
	{
		  alert("Previous Year Other Competitive Exams cannot be empty");
		  return false;
	} else {
		/*var PrvyerQns;
		
		if(sltdyer !="--- Select ---" && sltdyer !="Nothing Selected"){
			PrvyerQns = sltdyer;
		}else{
			PrvyerQns = prvyrsqns;
		}
		
		var PrvyerOtrexm;
		
		if(sltdyer1 !="--- Select ---" || sltdyer1 !="Nothing Selected"){
			PrvyerOtrexm = sltdyer1;
		}else{
			PrvyerOtrexm = prvyrothexm;
		}*/
		
		var findiflvl = difflev1+","+difflev2+","+difflev3;

		
		var farr = [];
		var finparms="";
		
		for (var i = 1; i <= 12; i++) { 
			if($("#parameter"+i).val()!="" && typeof($("#parameter"+i).val())!== "undefined"){
				
				var ppp = $("#parameter"+i).val();
				farr.push(ppp);
				
			}
			
		}
		
		finparms = farr.join(',');
		
	var charcid=getParameterByName('id');
	
	
	 var charcmode = {"Id":charcid,"categoryId":categoyname,"standardId":standardid,"examtypeId":examtype,"difficultyLevel":
findiflvl,"parameters":finparms,"previousExams":prvyrsqns,"competitativeExams":prvyrothexm,"status":true,"createdBy":"Admin","previouyear_questionId":sltdyer,"previousyrcompetitativeExamsId":sltdyer1
};
	
	 charcmode = JSON.stringify(charcmode);
	
	$.ajax({
		   type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/characteristics/v1/updateCharacteristics',
		  data: charcmode,
		  success:function(data){
			  alert(data.message);
			  window.location = base_url+"jsp/admin/creation/characteristics.jsp";
			  
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
		
		
	});
	
	}
	
}

$(document).on("click", "a[id^=char_item]", function() {
   	var id = $(this).attr('data-id');
   	var con = confirm("Are you Sure to delete?");
   	var pon = confirm("Really are you Sure?");
	  if(con == true){
		  if(pon == true){
			
			  
			var deletecharrow =  {
				    "Id":id,
				   
				    "status":false
				};
			var deletechar = JSON.stringify(deletecharrow);

   		$.ajax({
   	  type: "POST",
  	  dataType: "json",
  	  contentType: 'application/json', 
  	  url: base_url+'rest/characteristics/v1/updateCharacteristics',
  	  data:deletechar,
  	  success: function(data){	  
  		  if(data.status){
  			  alert(data.message);
   		$("#char_row"+id).remove();
  		  }
  		  },
  	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }}});