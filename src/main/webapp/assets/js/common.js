function displayOncePopup(){
	var getStatus = sessionStorage.getItem('displayed');
	
	if(getStatus == "false"){
		return false;
	} else {
		return true;
	}
}

function setSession(s){
	
	if(s==="edit"){
		sessionStorage.setItem("editmode", true);
	} else {
		sessionStorage.setItem("editmode", false);
	}
	
}


function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

//This both functions are defined in login.js also 

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    
    document.cookie = cname + "=" + cvalue + "; " + expires + "; path=/";
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1);
        if (c.indexOf(name) == 0)
            return c.substring(name.length, c.length);
    }
    return "";
}

function getAdminId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		return loginData.adminId;
		//return 1;
	} else {
		return "";
	}
}


function getSmeId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	
	if(loginData !== "" || loginData !== null){
		return loginData.smeid;
	} else {
		return "";
	}
	
}
function getLoginData(){
	
	try{
		var loginData = JSON.parse(atob(getCookie("LoginData")));
		
		if(loginData !== "" || loginData !== null){
			return loginData;
		} else {
			return "";
		}
	}catch(e){
		return "";
	}
	
	
}


function getDeanId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		
		return loginData.deanid;
	} else {
		return "";
	}
	
	
}

function getSuperDeanId(){
	
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	if(loginData !== "" && loginData !== null){
		return loginData.superdeanid;
	} else {
		return "";
	}
}

function getAHId(){
	try{
		var loginData = JSON.parse(atob(getCookie("LoginData")));
		if(loginData !== "" && loginData !== null){
			return loginData.academicheadid;
		} else {
			return "";
		}
	}catch(e){
		return "";
	}
	
}

function setHeaderName(){
	var loginData = "";
	try{ 
		 loginData = getLoginData();
	}catch(e){
		
	}
	
	var name = loginData.name;
	var desig = loginData.designation;
	var profilepic = sessionStorage.getItem("photo");
	if(name !== "" && name !== null && desig !== "" && desig !== null){
		$("#nameHeader").html(name);
		$("#desigHead").html(desig);
	}
	if(profilepic !=="" && profilepic !== null){
		$('#profileimage').attr('src', profilepic);
	}else{
		$('#profileimage').attr('src', "/assets/images/students/default.png");
	}
}

setHeaderName();


function getQuestionDataById(Id, callback) {
  	
  	$.ajax({
  		 type: "GET",
  		  dataType: "json",
  		  cache:false,
  		  contentType: 'application/json', 
  		  url: base_url+'rest/question/v1/previewquestion/'+Id,
  		  success:function(data){
  			  
  			if(callback){
  				callback(data);
  			}
  			  
  		  },
  		  error:function(){
  			//alert("Questions not found!");			  
  		  }
  		
  	});
  	
  	
 }


function getSQBQuestionDataById(Id, callback) {
  	
  	$.ajax({
  		 type: "GET",
  		  dataType: "json",
  		  cache:false,
  		  contentType: 'application/json', 
  		  url: base_url+'rest/question/sqbpreviewquestion/'+Id,
  		  success:function(data){
  			  
  			if(callback){
  				callback(data);
  			}
  			  
  		  },
  		  error:function(){
  			//alert("Questions not found!");			  
  		  }
  		
  	});
  	
  	
 }

function getQuestionDataByTestPostId(Id, callback) {
  	
	var inputData ={
			"testPostId":Id
	};
	inputData = JSON.stringify(inputData);
	var  appenddata;
	
	$.ajax({
		url:  base_url+'rest/testpost/v1/getTestPost',
		type:"POST",
		 dataType: "json",
 		  cache:false,
		  contentType: 'application/json',
		  data:inputData,
		  success: function(data){
			  
			  
	  			if(callback){
	  				callback(data);
	  			}
		  },
			 error: function(data){
				 alert(data.responseJSON.errorMessage);
			 }
		 	
		 })


  }


/**  
 * Get All Categories
 * @param callback
 * @return
 * 
 */
//standard flowchange
function getCategoriesByName(callback){
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/category/v1/getcategories',
		  success: function(data){
			  
	        for(var i=0; i < data.length; i++){
	    	   
			  var categoryname = data[i].categoryname;
	var catid = data[i].id;
			  appenddata += '<option value="'+catid+'">'+categoryname+'</option>';
				
			}
	        
//	       	$("#category").prop("disabled",false);
	       	jQuery("#category").empty("");
			jQuery("#category").append('<option value="">--- Select ---</option>');
			jQuery("#category").append(appenddata);
			
		  	jQuery("#categories").empty("");
			jQuery("#categories").append('<option value="">--- Select ---</option>');
			jQuery("#categories").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
			
			if(callback){
				callback();
			}

		  },
		  error: function(data) {		

			  alert("Categories not found!");

		  }
	      	
	});

	//categories default get service in table  in admin

}

/**  
 * Get Category By Id
 * @param callback
 * @return
 * 
 */

//standard flow change 10/05/2018
function getExamTypeByName(val,callback){
	var appen ="";
	var appenddata="";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  async: true,
		  contentType: 'application/json', 
		  url: base_url+'rest/examtype/v1/getexamTypes',
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var examType = data[i].standardExamType;
					
					appenddata += '<option value="'+data[i].id+'">'+examType+'</option>';
					var onlyexm = data[i].examType;
					appen += '<option value="'+data[i].id+'">'+onlyexm+'</option>';
					jQuery("#examtype").empty("");
					jQuery("#examtype").append('<option value="">--- Select ---</option>');
					jQuery("#examtype").append(appenddata);
					jQuery("#onlyexamtype").empty("");
					jQuery("#onlyexamtype").append('<option value="">--- Select ---</option>');
					jQuery("#onlyexamtype").append(appen);
			  }
			  $('.selectpicker').selectpicker('refresh');
			  if(callback){
	  				callback();
	  			}
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("ExamTypes not found!");

		  }, 
		  
	});
}

//standard flowchange 10/04/2018
function getStandardsByName(val,callback){

	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/standards/v1/getStandards',
	 beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var standards = data[i].standards;
					
					appenddata += '<option value="'+data[i].id+'">'
							+standards+'</option>';
				   jQuery("#standard").empty("");
				jQuery("#standard").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#standard").append(appenddata);
			  }
			  $('.selectpicker').selectpicker('refresh');
			  if(callback){
	  				callback();
	  			}
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("Standards not found!");

		  }, 
		  
	});
}

function getSubjectsByName(callback){

    var examtypename = "";
        var examtypename = $("#examtype").val();
      var inputData = '{"examType":"'+examtypename+'"}';

    var appenddata;
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/subject/getSubjects',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                    var subjects = data[i].subject;
                    
                    appenddata += '<option value="'+subjects+'">'
                            +subjects+'</option>';
                  
             
              
                 jQuery("#subject").empty("");
                jQuery("#subject").append('<option value="--- Select ---">--- Select ---</option>');
                jQuery("#subject").append(appenddata);
              }
              $('.selectpicker').selectpicker('refresh');
              if(callback){
    				callback();
    			}
          },
          error: function(data) {        
              $("#loading").hide();
              alert("Subjects not found!");

          }, 
          
    });
}

function getUnitsByName(callback){

    var examtypename = "";
        /*var examtypename = $("#examtype").val();*/
      var inputData = '{"examType":"'+examtypename+'"}';

    var appenddata;
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/unit/getUnits',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                    var units = data[i].unit;
                    
                    appenddata += '<option value="'+units+'">'
                            +units+'</option>';
                  
             
              
                 jQuery("#unit").empty("");
                jQuery("#unit").append('<option value="--- Select ---">--- Select ---</option>');
                jQuery("#unit").append(appenddata);
              }
              $('.selectpicker').selectpicker('refresh');
              if(callback){
            	  callback();
              }
          },
          error: function(data) {        
              $("#loading").hide();
              alert("Units not found!");

          }
          
    });
}













function getSelectedUnit(val,indx){

	if(indx === undefined){
	    var catetypename = $("#category").val();
	    var examtypename = $("#examtype").val();
	    var standardtypename = $("#standard").val();
	    var subjtypename = val;
    }else if(indx == ""){
    	 var catetypename = $("#category").val();
	  	    var examtypename = $("#examtype").val();
	  	    var standardtypename = $("#standard").val();
	  	   var subjtypename = val;
    }else{
    	 var catetypename = $("#category").val();
 	    var examtypename = $("#examtype").val();
 	    var standardtypename = $("#standard").val();
 	   var subjtypename = val;
    }
	
      
    var inputData = '{"categoryId":"'+catetypename+'","examtypeId":"'+examtypename+'","standardId":"'+standardtypename+'","subjectId":"'+subjtypename+'"}';

    var appenddata;
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/question/v1/getunits',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                    var units = data[i].name;
                    
                    appenddata += '<option value="'+data[i].id+'">'
                            +units+'</option>';
                  
              } 
              if(indx === undefined){
            	  jQuery("#unit").empty("");
                  jQuery("#unit").append('<option value="--- Select ---">--- Select ---</option>');
                  jQuery("#unit").append(appenddata);
                  
                  $("#unit").prop("disabled", false);
             }else if(indx > 0){
            	 jQuery("#unit"+indx).empty("");
                 jQuery("#unit"+indx).append('<option value="--- Select ---">--- Select ---</option>');
                 jQuery("#unit"+indx).append(appenddata);
                 
                 $("#unit"+indx).prop("disabled", false);
             }else{
            	 jQuery("#unit"+indx).empty("");
    	         jQuery("#unit"+indx).append('<option value="--- Select ---">--- Select ---</option>');
    	         jQuery("#unit"+indx).append(appenddata);
    	         
    	         $("#unit"+indx).prop("disabled", false);
             }
             
             $('.selectpicker').selectpicker('refresh');

          },
          error: function(data) {        
              $("#loading").hide();
              if(indx === undefined){
            	  jQuery("#unit").empty("");
                   }else if(indx > 0){
            	 jQuery("#unit"+indx).empty("");
                 }else{
            	 jQuery("#unit"+indx).empty("");
    	        }
              alert(data.responseJSON.errorMessage);

          }
          
    });
}
function getSelectedChapter(val,indx){
	if(indx === undefined){
	var cattypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = val;
	}else if(indx == ""){
		var cattypename = $("#category").val();
		var examtypename = $("#examtype").val();
		var standardname = $("#standard").val();
		var subjectname = $("#subject").val();
		var unitname = val;
	}else{
   	 var cattypename = $("#category").val();
	    var examtypename = $("#examtype").val();
	    var standardname = $("#standard").val();
	    var subjectname = $("#subject"+indx).val();
	    var unitname = val;
 }
	
    var inputData = '{"categoryId":"'+cattypename+'","examtypeId":"'+examtypename+'","standardId":"'+standardname+'","subjectId":"'+subjectname+'","unitId":"'+unitname+'"}';


	var appenddata;
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getchapters',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
					var chapters = data[i].name;
					
					appenddata += '<option value="'+data[i].id+'">'
							+chapters+'</option>';
			  }
			  if(indx === undefined){
			  jQuery("#chapter").empty("");
			  jQuery("#chapter").append('<option value="--- Select ---">--- Select ---</option>');
			  jQuery("#chapter").append(appenddata);
			  
			  $("#chapter").prop("disabled", false);
			  }else if(indx > 0){
				     jQuery("#chapter"+indx).empty("");
	    	         jQuery("#chapter"+indx).append('<option value="--- Select ---">--- Select ---</option>');
	    	         jQuery("#chapter"+indx).append(appenddata);
	    	         
	    	         $("#chapter"+indx).prop("disabled", false);
			  }
			  else{
				      jQuery("#chapter"+indx).empty("");
	    	         jQuery("#chapter"+indx).append('<option value="--- Select ---">--- Select ---</option>');
	    	         jQuery("#chapter"+indx).append(appenddata);
	    	         
	    	         $("#chapter"+indx).prop("disabled", false);
			  }
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  if(indx === undefined){
				  jQuery("#chapter").empty("");
				   }else if(indx > 0){
					     jQuery("#chapter"+indx).empty("");
		    	    }
				  else{
					      jQuery("#chapter"+indx).empty("");
		    	        }
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}




function getSelectedSmes(val){
	
	var appenddata="";
	
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var unit = $("#unit").val();
	var chapter = $("#chapter").val();
	var deanid = getDeanId();
	var $sme = $("#sme_id");
	var allsme = {
			"deanid":deanid,
			"categoryId":category,
			"examtypeId":examtype,
			"standardId":standard,
			"subjectId":subject,
			//"superdeanid":1,
			"unitId":unit,
			"chapterId":chapter
			
			};
	
	var allsmes = JSON.stringify(allsme);
	
	$.ajax({
		type:"POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getsmes',
		  data:allsmes,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var smeid = data[i].id;
					var smename = data[i].name;
					 
					 
					appenddata += '<option value="'+smeid+'">'
							+smename+'</option>';
				  
			  }
			  
			  $sme.empty("");
			  $sme.append('<option value="--- Select ---">--- Select ---</option>');
			  $sme.append(appenddata);
				

			  $sme.prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }	  
	});
}



//standard flow change 
function getAllLayouts(callback){
  	

	var appenddata="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/getSqbQuestionType',
		success: function(data){
			for(var i=0; i < data.length; i++){

				var layoutid = data[i].layoutname;
				var layoutname = data[i].layouttype;
				appenddata += '<option value="'+layoutid+'">'+layoutname+'</option>';
			}
			$("#questionType").empty("");
			$("#questionType").append('<option value="">--- Select ---</option>');
			$("#questionType").append(appenddata);
			$("#layoutnumber").empty("");
			$("#layoutnumber").append('<option value="">--- Select ---</option>');
			$("#layoutnumber").append(appenddata);
			//$("#questionType").prop("disabled", false);
			//$("#layoutnumber").prop("disabled", false);
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


function getLayoutsByName(val,indx,callback){
  	

	if(indx === undefined){
		var category = $("#category").val();
		var examtype = $("#examtype").val();
		var standard = $("#standard").val();
		var subject = val;
	} else{
	   	 var category = $("#category"+indx).val();
		    var examtype = $("#examtype"+indx).val();
		    var standard = $("#standard"+indx).val();
		    var subject = val;
	 }
	
	var inputData = {
			"categoryId":category,
			"examtypeId":examtype,
			"standardId":standard,
			"subjectId":subject
			};
	
	inputData = JSON.stringify(inputData);
	
  	var appenddata = "";
  	$.ajax({
  		type: "POST",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/questionType/v1/getQuestionLayouts',
  		  data: inputData,
  		  success: function(data){
  	       for(var i=0; i < data.length; i++){
  			 
  	    		
  	    		var name = data[i].name;
				var id = data[i].id;
				var layoutname = data[i].layoutName;

				appenddata += '<option value="'+id+'" data-name="'+name+'">'+layoutname+'</option>';
				
  			}
  	       
	  	     if(indx === undefined){
	  	       	jQuery("#questionType").empty("");
	  			jQuery("#questionType").append('<option value="">--- Select ---</option>');
	  			jQuery("#questionType").append(appenddata);
	  			jQuery("#layoutnumber").empty("");
				jQuery("#layoutnumber").append('<option value="">--- Select ---</option>');
				jQuery("#layoutnumber").append(appenddata);
	  			$("#questionType").prop("disabled", false);
	  			$("#layoutnumber").prop("disabled", false);
	  	     } else {
	   	       	jQuery("#questionType"+indx).empty("");
	  			jQuery("#questionType"+indx).append('<option value="--- Select ---">--- Select ---</option>');
	  			jQuery("#questionType"+indx).append(appenddata);
	  			jQuery("#layoutnumber"+indx).empty("");
				jQuery("#layoutnumber"+indx).append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#layoutnumber"+indx).append(appenddata);
	  			$("#questionType"+indx).prop("disabled", false);
	  			$("#layoutnumber"+indx).prop("disabled", false); 
	  	     }	
	  	     
  			$('.selectpicker').selectpicker('refresh');
  			
  			if(callback){
  				callback();
  			}
  			
  		  },
  		  error: function(data) {		
			if(indx === undefined){
	  	       	jQuery("#questionType").empty("");
				jQuery("#layoutnumber").empty("");
			} else{
				jQuery("#questionType"+indx).empty("");
				jQuery("#layoutnumber"+indx).empty("");
			}
  			 alert(data.responseJSON.errorMessage);

  		  }
  	      	
  	});


 }


	//Send a message





function getCategoriesBySmeId(smeId){
	var appenddata="";
	var smeId = getSmeId();
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getsmecategories/'+smeId,
		  success: function(data){
	       for(var i=0; i < data.length; i++){
			 
	    		
					var categoryname = data[i].categoryname;
					var catId =data[i].id;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+catId+'">'
							+categoryname+'</option>';
					
				}
	       jQuery("#category").empty("");
			jQuery("#category").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#category").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');

		  },
		  error: function(data) {		

			  alert(data.responseJSON.errorMessage);

		  }
	      	
	});
}


/*<--after category--Standard then examtype----->*/

function getSelectedStandardsBySmeId(val){


	//var catetypename = $("#category").val();
	//var examtypename = val;
	var smeId = getSmeId();
	var inputData = {
		"smeid":smeId,
		//"categoryId":catetypename
		//"examtype": examtypename
	};
	inputData = JSON.stringify(inputData);

var appenddata="";
$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/question/v1/getsmestandards',
	  data: inputData,
	  beforeSend: function() {
        $("#loading").show();
     },
	  success: function(data){
		  $("#loading").hide();
		  for(var i=0; i < data.length; i++){
				var standards = data[i].name;
				var standId = data[i].id;
				
				appenddata += '<option value="'+standId+'">'
						+standards+'</option>';
			  
		  }
		  
		  	jQuery("#standard").empty("");
			jQuery("#standard").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#standard").append(appenddata);
		  
		  $("#standard").prop("disabled", false);
		  $('.selectpicker').selectpicker('refresh');
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert(data.responseJSON.errorMessage);

	  }
	  
});
}

function getSelectedExamTypeBySmeId(val){
	   var catetypename = $("#category").val();
	   var standtypename = $("#standard").val();
	var appenddata="";
	var smeId = getSmeId();
	var inputData = {
		"smeId":smeId,
		"categoryId":catetypename,
		"standardId":standtypename
		
		
	};
	inputData = JSON.stringify(inputData);
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getsmeexamtypes',
		  data:inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var examType = data[i].examtype;
					var examId = data[i].id;
					
					appenddata += '<option value="'+examId+'">'
							+examType+'</option>';
				  
			  }
			  
			  	jQuery("#examtype").empty("");
				jQuery("#examtype").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#examtype").append(appenddata);
				

				$("#examtype").prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }, 
		  
	});
}


function getSelectedSubjectBySmeId(val){

    
	 //var catetypename = $("#category").val();
	 var standtypename = $("#standard").val();
     //var examtypename = $("#examtype").val();
     //var examtypename = val;
     var smeId = getSmeId();
     
	var inputData = {
		"smeId":smeId,
		//"categoryId":catetypename,
		//"examtypeId": examtypename,
		"standardId":standtypename
	};
	inputData = JSON.stringify(inputData);
var appenddata="";
$.ajax({
   type: "POST",
     dataType: "json",
     contentType: 'application/json', 
     url: base_url+'rest/question/v1/getsmesubjects',
     data: inputData,
     beforeSend: function() {
       $("#loading").show();
    },
     success: function(data){
         $("#loading").hide();
         for(var i=0; i < data.length; i++){
               var subjects = data[i].name;
               var subjectId = data[i].id;
               
               appenddata += '<option value="'+subjectId+'">'
                       +subjects+'</option>';
            
         }
         
         jQuery("#subject").empty("");
         jQuery("#subject").append('<option value="--- Select ---">--- Select ---</option>');
         jQuery("#subject").append(appenddata);
         
         $("#subject").prop("disabled", false);
         
         $('.selectpicker').selectpicker('refresh');
     },
     error: function(data) {        
         $("#loading").hide();
         alert(data.responseJSON.errorMessage);

     }, 
     
});
}


function getSelectedUnitBySmeId(val){

    
    	
    //var catetypename = $("#category").val();
    var standardtypename = $("#standard").val();
    //var examtypename = $("#examtype").val();
	
    var subname = val;
    
	var smeId = getSmeId();
	var inputData = {
		"smeId":smeId,
		//"categoryId":catetypename,
		//"examtypeId": examtypename,
		"standardId":standardtypename,
		"subjectId":subname
	};
	inputData = JSON.stringify(inputData);
	
    var appenddata="";
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/question/v1/getsmeunits',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                    var units = data[i].name;
                    var unitsId = data[i].id;
                    
                    appenddata += '<option value="'+unitsId+'">'
                            +units+'</option>';
                  
              }
              
              	jQuery("#unit").empty("");
                jQuery("#unit").append('<option value="--- Select ---">--- Select ---</option>');
                jQuery("#unit").append(appenddata);
                
                $("#unit").prop("disabled", false);
              
              $('.selectpicker').selectpicker('refresh');
          },
          error: function(data) {        
              $("#loading").hide();
              alert(data.responseJSON.errorMessage);

          }
          
    });
}


function getSelectedChapterBySmeId(val){

	//var catetypename = $("#category").val();
	//var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = val;
	
	var smeId = getSmeId();
	var inputData = {
		"smeId":smeId,
		//"categoryId":catetypename,
		//"examtypeId": examtypename,
		"standardId":standardname,
		"subjectId":subjectname,
		"unitId":unitname
	};
	inputData = JSON.stringify(inputData);


	var appenddata="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getsmechapters',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
					var chapters = data[i].name;
					var chaptersId = data[i].id;
					
					appenddata += '<option value="'+chaptersId+'">'
							+chapters+'</option>';
			  }
			  
			  jQuery("#chapter").empty("");
			  jQuery("#chapter").append('<option value="--- Select ---">--- Select ---</option>');
			  jQuery("#chapter").append(appenddata);
			  
			  $("#chapter").prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}

function getSelectedLayouts(){
	
	var catetypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	
	var inputData = {
		"categoryId":catetypename,
		"examtypeId": examtypename,
		"standardId":standardname,
		"subjectId":subjectname
	};
	inputData = JSON.stringify(inputData);
	
	var appenddata;
  	$.ajax({
  		type: "POST",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/questionType/v1/getQuestionLayouts',
  		  data: inputData,
  		  success: function(data){
  	       for(var i=0; i < data.length; i++){
  			 
  	    		
  					var layoutname = data[i].name;
  					var layoutId = data[i].id;
  					//var zoneidis = data.zones[i].id;
  					appenddata += '<option value="'+layoutId+'">'
  							+layoutname+'</option>';
  				}
  	       $("#questionType").prop("disabled",false);
  	       jQuery("#questionType").empty("");
  			jQuery("#questionType").append('<option value="--- Select ---">--- Select ---</option>');
  			jQuery("#questionType").append(appenddata);

  			$('.selectpicker').selectpicker('refresh');
  			
  		  },
  		  error: function(data) {		

  			 alert(data.responseJSON.errorMessage);

  		  }
  	      	
  	});
}

/*function getCompatibleLayouts(callback){
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var pvid = getParameterByName('pvid');
	
	var inputData = {
		"category":category,
		"examtype":examtype,
		"standard":standard,
		"subject":subject,
		"questionId":pvid
	};
	
	inputData = JSON.stringify(inputData);
	var appenddata="";
	$.ajax({
		type:"POST",
		dataType: "json",
	  	contentType: 'application/json',
		url: base_url+"rest/question/getcopyotherexamlayouts",
		data: inputData,
		success: function(data){
			 for(var i=0; i < data.length; i++){
	  			 
	  	    		
					var layoutname = data[i].name;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+layoutname+'">'
							+layoutname+'</option>';
				}
	       	jQuery("#questionType").empty("");
			jQuery("#questionType").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#questionType").append(appenddata);
			jQuery("#layoutnumber").empty("");
			jQuery("#layoutnumber").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#layoutnumber").append(appenddata);
			$("#questionType").prop("disabled", false);
			$("#layoutnumber").prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
			if(callback){
				callback();
			}
		},
		error: function(d){
			
		}
	});
	
}
*/
function getManualPostLayouts(){
	var catetypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
    var layout = getParameterByName('layout');
    
	var inputData = {
			"category":catetypename,
			"examtype": examtypename,
			"standard":standardname,
			"subject":subjectname,
			"questiontype":layout
		};

	inputData = JSON.stringify(inputData);
	   var appenddata = "";
	   $.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/getlayoutsformanualtest',
		  data: inputData,
		  success: function(data){
			  
		      for(var i=0; i < data.length; i++){
		  			 
	  	    		
					var layoutname = data[i].name;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+layoutname+'">'
							+layoutname+'</option>';
				}
		      
	  	       	jQuery("#questionType").empty("");
	  			jQuery("#questionType").append('<option value="--- Select ---">--- Select ---</option>');
	  			jQuery("#questionType").append(appenddata);
	  			jQuery("#layoutnumber").empty("");
				jQuery("#layoutnumber").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#layoutnumber").append(appenddata);
	  			$("#questionType").prop("disabled", false);
	  			$("#layoutnumber").prop("disabled", false);
	  			$('.selectpicker').selectpicker('refresh');
		  },
		  error: function(d){
			  
		  }
		   
	   });
	   
}

var ckfields = 1;

var trackCkFields = 0;
var trackSkipQs = [];

function addMoreQuestions(indx,callback){
	
	var nuofq = parseInt(getParameterByName('nuofq'));
	
	if(nuofq !== null && nuofq !== undefined && nuofq !== ""){
		if(nuofq<=(trackCkFields+1)){
			alert('You have reached the limit to add more questions! Delete some questions!');
			return;
		}
	}
	
	
	if(indx === undefined){
		indx = 1;
	} 
	
	var layout = getParameterByName("layout");
	var comprh = /(_8_|_9_|_10_)/;
	var multiComprh = /_11_/;
	
	
	var appends = '';
	
	for(var q = 0;q<indx; q++){
		trackCkFields++;
		/* Construct question here */
		var questionTemp = '<div id="group'+ckfields+'"><div class="panel panel-default card-view"><div class="panel-heading"><div class="col-sm-4 pull-left"><h6 class="panel-title txt-dark"><span class="sky_blue1 font-24" id="qlabel'+(ckfields+1)+'">Question '+(trackCkFields+1)+'</span></h6></div><div class="col-sm-4 pull-right right"><a class="btn btn-danger" id="trashBtn" href="javascript:void(0);" onclick="deleteDivById('+(ckfields+1)+');"><i style="color: white;"class="icon-trash font-20"></i></a><a href="#" class="right inline-block full-screen mr-15"><i class="zmdi zmdi-fullscreen theme_color font-24"></i></a></div><div class="clearfix"></div></div><div class="panel-wrapper collapse in"><div class="panel-body"><form method="post"> <div class="form-group"><textarea class="ckeditor" id="question'+(ckfields+1)+'" name="question'+(ckfields+1)+'" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea> </div></form></div></div></div>';
		
		/* End question here */
		
		
		/* Construct Options here */
		if(layout.indexOf('_8') !== -1){
			var opValues = ['A','B','C','D'];
		} else if(layout.indexOf('_9') !== -1){
			var opValues = ['a','b','c','d'];
		} else if(layout.indexOf('_10') !== -1){
			var opValues = ['1','2','3','4'];
		} else if(layout.indexOf('_11') !== -1){
			var opValues = ['A','B','C','D'];
		}
		
		var optionsTemp = '<div class="panel panel-default card-view"><div class="panel-heading"><div class="col-sm-4 pull-left"><h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Options</span></h6></div><div class="col-sm-4 pull-right right"><a href="#" class="right inline-block full-screen mr-15"><i class="zmdi zmdi-fullscreen theme_color font-24"></i></a></div><div class="clearfix"></div></div><hr class="light-grey-hr mb-10"><div class="row"><div class="col-sm-12"><form><div class="row">';
		
		var isMulti;
		if(comprh.test(layout)){
			isMulti = false;	
			for(var op = 0;op<opValues.length;op++){
				optionsTemp += '<div class="col-md-12"><div class="row form-group"><div class="col-lg-1 col-md-1 col-sm-1 col-xs-12"><div class="form-group"><div class="radio radio-info"><input type="radio" name="radio-'+(ckfields+1)+'" id="radio-'+(ckfields+1)+'-'+(op+1)+'" value="'+opValues[op]+'" ><label for="radio-'+(ckfields+1)+'-'+(op+1)+'">'+opValues[op]+')</label></div></div></div><div class="col-lg-11 col-md-1 col-sm-11 col-xs-12"><textarea class="ckeditor" id="option-'+(ckfields+1)+'-'+(op+1)+'" name="option-'+(ckfields+1)+'-'+(op+1)+'" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea></div></div></div>';
			}
		} else if(multiComprh.test(layout)){
			isMulti = true;
			for(var op = 0;op<opValues.length;op++){
				optionsTemp += '<div class="col-sm-12"><div class="row form-group"><div class="col-lg-1 col-md-1 col-sm-1 col-xs-12"><div class="form-group"><div class="checkbox checkbox-success"><input id="checkbox-'+(ckfields+1)+'-'+(op+1)+'" value="'+opValues[op]+'" class="optionChecks-'+(ckfields+1)+'" type="checkbox"><label for="checkbox-'+(ckfields+1)+'-'+(op+1)+'">'+opValues[op]+') </label></div></div></div><div class="col-lg-11 col-md-1 col-sm-11 col-xs-12"><textarea class="ckeditor" id="option-'+(ckfields+1)+'-'+(op+1)+'" name="option-'+(ckfields+1)+'-'+(op+1)+'" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea></div></div></div>';
			}
		}
		
		
		optionsTemp += '</div></form></div></div></div>';
		
		/* Options End here */
		
		
		/* Construct Hint & Concept here */
		
		var hsTemp = '<div class="row"><div class="col-sm-12"><div class="panel panel-default card-view"><div class="panel-heading"><div class="col-sm-4 pull-left"><h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Hint / Solution / Explanation</span></h6></div><div class="col-sm-4 pull-right right"><a href="#" class="right inline-block full-screen mr-15"><i class="zmdi zmdi-fullscreen theme_color font-24"></i></a></div><div class="clearfix"></div></div><div class="panel-wrapper collapse in"><div class="panel-body"><form method="post"> <div class="form-group"><textarea class="ckeditor" id="hint'+(ckfields+1)+'" name="hint'+(ckfields+1)+'" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea> </div></form></div></div></div></div><div class="col-sm-12"><div class="panel panel-default card-view"><div class="panel-heading"><div class="col-sm-4 pull-left"><h6 class="panel-title txt-dark"><span class="sky_blue1 font-24">Concept</span></h6></div><div class="col-sm-4 pull-right right"><a href="#" class="right inline-block full-screen mr-15"><i class="zmdi zmdi-fullscreen theme_color font-24"></i></a></div><div class="clearfix"></div></div><div class="panel-wrapper collapse in"><div class="panel-body"><form method="post"> <div class="form-group"><textarea class="ckeditor" id="concept'+(ckfields+1)+'" name="concept'+(ckfields+1)+'" class="form-control mt-30 mb-30" placeholder="Enter Topic Name"></textarea> </div></form></div></div></div></div></div></div>';
		
		/* Hint & Concept End here */
		
		appends = questionTemp + optionsTemp + hsTemp;
		$("#qgroup").append(appends);
		
		CKEDITOR.replace('question'+(ckfields+1));
		CKEDITOR.replace('hint'+(ckfields+1));
		CKEDITOR.replace('concept'+(ckfields+1));
		
		for(var ck = 0;ck<4;ck++){
			CKEDITOR.replace('option-'+(ckfields+1)+'-'+(ck+1));
		}
		
		ckfields++;
	}
	
	$("#hckfields").val(ckfields);
	
	

	if(callback){
		callback();
	}
	
}


function deleteDivById(id){
	var pid = parseInt(id);
	$("#group"+(pid-1)).fadeOut(500, function() { 
		var sp = $("#qlabel"+id).text();
		sp = sp.split(" ");
		sp = parseInt(sp[1]);		

		for(var lst = pid;lst<ckfields;lst++){
			var vi = (lst+1);
			var solvedHere;
			if(trackSkipQs.length > 0){
				var fug = vi;
				var flg = false;
				for(var vk =0;vk<trackSkipQs.length;vk++){
					
					if(vi===trackSkipQs[vk]){
						fug = fug + 1;
						flg = true;
					} else{
						flg = false;
					}
					
					if((trackSkipQs.length -1) === vk && flg === true){
						$("#qlabel"+fug).html('Question '+sp);
					}
					
				}
				
				if(!solvedHere){
					$("#qlabel"+(vi)).html('Question '+sp);
				}
				
			} else{
				$("#qlabel"+(vi)).html('Question '+sp);
			}
			
			sp++;
		}
		
		trackSkipQs.push(pid);
		var strTrack = trackSkipQs.join(',');
		$("#trackQH").val(strTrack);
		
		
		trackCkFields--;
		$(this).remove();
	});

}


function getSelectedYears(){
	
	var categoryId = $("#category").val();
	var standardId = $("#standard").val();
	var examtypeId = $("#examtype").val();

	var inputData = {
			"categoryId":categoryId,
			"standardId":standardId,
			"examtypeId":examtypeId
	};
	
	inputData = JSON.stringify(inputData);
	
	var appenddata = "";
	
	var $previousyear = $("#previousyear");
	
	$.ajax({
	 type: "POST",
	 dataType: "json",
	 contentType: 'application/json', 
	 url: base_url+'rest/admin/v1/getyears',
	 data: inputData,
	 success: function(data){

		 for(var i=0; i < data.length; i++){
			appenddata += '<option value="'+data[i].id+'">'+data[i].name+'</option>';
		 }
	 
		 $previousyear.empty("");
		 $previousyear.append('<option value="">--- Select ---</option>');
		 $previousyear.append(appenddata);
		 
		 $previousyear.prop("disabled", false);
		 
		 $('.selectpicker').selectpicker('refresh');
		 
	 },
	 error: function(data) {	
		 alert("No Previous Years Found!");
	 }
	 
   });
	
}


function checkEmptyForStep2(instructions,passage,question,option1,option2,option3,option4,answer,solution){
	/*if(instructions === "" || instructions === undefined || instructions === null){
		alert("Instructions are empty, Fill and Try Submitting!");
		return false;
	}*/ if(passage === "" || passage === undefined || passage === null){
		alert("Passage is empty, Fill and Try Submitting!");
		return false;
	} else if(question === "" || question === undefined || question === null){
		alert("Question is empty, Fill and Try Submitting!");
		return false;
	} else if(option1 === "" || option1 === undefined || option1 === null){
		alert("Option1 is empty, Fill and Try Submitting!");
		return false;
	} else if(option2 === "" || option2 === undefined || option2 === null){
		alert("Option2 is empty, Fill and Try Submitting!");
		return false;
	} else if(option3 === "" || option3 === undefined || option3 === null){
		alert("Option3 is empty, Fill and Try Submitting!");
		return false;
	} else if(option4 === "" || option4 === undefined || option4 === null){
		alert("Option4 is empty, Fill and Try Submitting!");
		return false;
	} else if(answer === "" || answer === undefined || answer === null){
		alert("No Answer is selected for question, Select and Try Submitting!");
		return false;
	} /*else if(solution === "" || solution === undefined || solution === null){
		alert("Solution is empty, Fill and Try Submitting!");
		return false;
	}*/ /*else if(concept === "" || concept === undefined || concept === null){
		alert("Concept is empty, Fill and Try Submitting!");
		return false;
	}*/ else{
		return true;
	}
}

function sortNumberAsc(a,b) {
    return a - b;
}

function formDataForComprh(c,fields,skipfields,sesin){
	  //id starts from 2
	  var inputDt = [];
	  var cqids = $("#cqids").val();
	  var hckfields = parseInt($("#hckfields").val());
	  cqids = cqids.split(',');
	  var arrTrack;
	  if(skipfields !== "" && skipfields !== null && skipfields !== undefined){
		  arrTrack = skipfields.split(',');
		  for(var ct = 0;ct<arrTrack.length;ct++){
			  arrTrack[ct] = parseInt(arrTrack[ct]);
		  }
		  arrTrack.sort(sortNumberAsc);
	  } else{
		  arrTrack = 0;
	  }
	  	var instructions = CKEDITOR.instances.Instructions.getData();
	  	var passage = CKEDITOR.instances.passage.getData();
	  	
		var question = CKEDITOR.instances.question.getData();
	    var solution = CKEDITOR.instances.hint.getData();
	    var concept = CKEDITOR.instances.concept.getData();
		  

	    var optionFdc1 = CKEDITOR.instances.option1.getData();
	    var optionFdc2 = CKEDITOR.instances.option2.getData();
	    var optionFdc3 = CKEDITOR.instances.option3.getData();
	    var optionFdc4 = CKEDITOR.instances.option4.getData();
	    
	    if(c==='mc'){
	    	var oc = 0;
		  	var optionChecksValues = [];
	        $('.optionChecks:checked').each(function () {
	        	optionChecksValues[oc++] = $(this).val();
	        });
	        
	        if(optionChecksValues.length === 0){
		        	
		       //return false;
	        	optionChecksValues = "";
	        	answer = optionChecksValues;	
		     } else{
		        	
		        optionChecksValues = optionChecksValues.join(',');
  		        answer = optionChecksValues;
  		        
		     }
	    } else{
	    	 var answer = $('input[name="radio"]:checked').val();
	    }
	    
	 
		  var editmode = sessionStorage.getItem(sesin);
		  if(editmode !== "true"){
			  //add new question 
			 		 
			 var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
				
			 if(check){
				 var inp = {
			    	"question":question,
			    	"solution":solution,
			    	"concept":concept,
			    	"option1":optionFdc1,
			    	"option2":optionFdc2,
			    	"option3":optionFdc3,
			    	"option4":optionFdc4,
			    	"answer": answer,
			    	"active":true
				 };
			 } else{
				return false;
			 }
			 
		  } else{
			 //update question
			
			 var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
			 
			 if(check){
				 var inp = {
					"comprehensionQuestionId":parseInt(cqids[0]),
			    	"question":question,
			    	"solution":solution,
			    	"concept":concept,
			    	"option1":optionFdc1,
			    	"option2":optionFdc2,
			    	"option3":optionFdc3,
			    	"option4":optionFdc4,
			    	"answer": answer,
			    	"active":true
			    };
			 } else{
				return false;
			 }
			 
		  }

		 
		 inputDt.push(inp);
	 

	 
	  for(var fdc = 0;fdc<fields;fdc++){
		
		var fdcplus = fdc+2;
		if(arrTrack !== 0){
			var cmflag = false;
			for(var ark=0;ark<arrTrack.length;ark++){
				if(fdcplus !== arrTrack[ark]){
					
					cmflag = true;
		  		    
				} else {
					var cmid = parseInt(cqids[fdc+1]);
					  if(isNaN(cmid)){
						  cmid = 0;
					  }
	  			    inp = {
			    		"comprehensionQuestionId":cmid,
		  		    	"active":false
	  	  		    };
	  			  var editmode = sessionStorage.getItem(sesin);
	  			  if(editmode === "true"){
	  				  inputDt.push(inp);
	  			  }
	  			  cmflag = false;
				  break;
				}
				
			}
			
			if(cmflag){
				question = CKEDITOR.instances['question'+fdcplus].getData();
	  		    solution = CKEDITOR.instances['hint'+fdcplus].getData();
	  		    concept = CKEDITOR.instances['concept'+fdcplus].getData();
		  		    
	  		    optionFdc1 = CKEDITOR.instances['option-'+fdcplus+'-'+'1'].getData();
	  		    optionFdc2 = CKEDITOR.instances['option-'+fdcplus+'-'+'2'].getData();
	  		    optionFdc3 = CKEDITOR.instances['option-'+fdcplus+'-'+'3'].getData();
	  		    optionFdc4 = CKEDITOR.instances['option-'+fdcplus+'-'+'4'].getData();
	  		    
	  		     
	  		    
	  		    if(c==='mc'){
	  		    	var oc = 0;
	  			  	var optionChecksValues = [];
	  		        $('.optionChecks-'+fdcplus+':checked').each(function () {
	  		        	optionChecksValues[oc++] = $(this).val();
	  		        });
	  		        
	  		        if(optionChecksValues.length === 0){
	  		        	
	  		        	//return false;
	  		        	optionChecksValues = "";
	  		        	answer = optionChecksValues;
	  		        } else{
	  		        	
	  		        	optionChecksValues = optionChecksValues.join(',');
		  		        answer = optionChecksValues;
		  		        
	  		        }
	  		        
	  		    } else{
	  		    	answer = $('input[name="radio-'+fdcplus+'"]:checked').val();
	  		    }
	  		    
	  		    
	  		    	
	  		      var editmode = sessionStorage.getItem(sesin);
	  	  		  if(editmode !== "true"){

	  	  		  var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
				 
				  if(check){
					 inp = {
	  	  		    	"question":question,
	  	  		    	"solution":solution,
	  	  		    	"concept":concept,
	  	  		    	"option1":optionFdc1,
	  	  		    	"option2":optionFdc2,
	  	  		    	"option3":optionFdc3,
	  	  		    	"option4":optionFdc4,
	  	  		    	"answer": answer,
	  	  		    	"active":true
	  	  		     };
				   } else{
						return false;
				   }
				  
	  	  		  } else{
	  	  			var cmid = parseInt(cqids[fdc+1]);
	  				  if(isNaN(cmid)){
	  					  cmid = 0;
	  				  }
	    			    
	    			var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
	   				 
					if(check){
						inp = {
		  		    		"comprehensionQuestionId":cmid,
		  		    		"question":question,
		  	  		    	"solution":solution,
		  	  		    	"concept":concept,
		  	  		    	"option1":optionFdc1,
		  	  		    	"option2":optionFdc2,
		  	  		    	"option3":optionFdc3,
		  	  		    	"option4":optionFdc4,
		  	  		    	"answer": answer,
		  	  		    	"active":true
	    	  		    };
					 } else{
						return false;
					 }
	  	  		 }
	  	  		  
	  	  		inputDt.push(inp);
	  	  		
	  		    
	  		  
	  		  
			}
			
		} else if(!isNaN(hckfields)){
			question = CKEDITOR.instances['question'+fdcplus].getData();
		    solution = CKEDITOR.instances['hint'+fdcplus].getData();
		    concept = CKEDITOR.instances['concept'+fdcplus].getData();
	  		    
		    optionFdc1 = CKEDITOR.instances['option-'+fdcplus+'-'+'1'].getData();
		    optionFdc2 = CKEDITOR.instances['option-'+fdcplus+'-'+'2'].getData();
		    optionFdc3 = CKEDITOR.instances['option-'+fdcplus+'-'+'3'].getData();
		    optionFdc4 = CKEDITOR.instances['option-'+fdcplus+'-'+'4'].getData();
		    
		  if(c==='mc'){
		    	var oc = 0;
			  	var optionChecksValues = [];
		        $('.optionChecks-'+fdcplus+':checked').each(function () {
		        	optionChecksValues[oc++] = $(this).val();
		        });
		        
		        if(optionChecksValues.length === 0){
  		        	
  		        	//return false;
		        	optionChecksValues = "";
		        	answer = optionChecksValues;
  		        } else{
  		        	
  		        	optionChecksValues = optionChecksValues.join(',');
	  		        answer = optionChecksValues;
	  		        
  		        }
		        
		    } else{
		    	answer = $('input[name="radio-'+fdcplus+'"]:checked').val();
		    }
		  
		 
		    var editmode = sessionStorage.getItem(sesin);
		    if(editmode !== "true"){
		      
		      var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
				 
			  if(check){
				  inp = {
			    	"question":question,
			    	"solution":solution,
			    	"concept":concept,
			    	"option1":optionFdc1,
			    	"option2":optionFdc2,
			    	"option3":optionFdc3,
			    	"option4":optionFdc4,
			    	"answer": answer,
			    	"active":true
			     };
			   } else{
				 return false;
			   }
		     
		    } else {
			  var cmid = parseInt(cqids[fdc+1]);
			  if(isNaN(cmid)){
				  cmid = 0;
			  }
		     
		     var check = checkEmptyForStep2(instructions,passage,question,optionFdc1,optionFdc2,optionFdc3,optionFdc4,answer,solution,"leavethis");
			 
			  if(check){
				  inp = {
				    "comprehensionQuestionId":cmid,
			    	"question":question,
			    	"solution":solution,
			    	"concept":concept,
			    	"option1":optionFdc1,
			    	"option2":optionFdc2,
			    	"option3":optionFdc3,
			    	"option4":optionFdc4,
			    	"answer": answer,
			    	"active":true
			     };
			   } else{
				 return false;
			   }
		  }
		    
		  inputDt.push(inp);
			  
		  
		  
		}

	  }
	  
	  console.log(inputDt);
	  return inputDt;
	   
}

function idResolver(v){
	switch(v){
	  case 'A':
	  case 'a':
	  case '1':
		return 1;
	  case 'B':
	  case 'b':
	  case '2':
		return 2;
	  case 'C':
	  case 'c':
	  case '3':
		return 3;
	  case 'D':
	  case 'd':
	  case '4':
		return 4;
	  default:
		  return "";
	}
}

function idResolverToABCD(v){
	switch(v){
	  case '1':
	  case 1:
		return 'A';
	  case '2':
	  case 2:
		return 'B';
	  case '3':
	  case 3:
		return 'C';
	  case '4':
	  case 4:
		return 'D';
	}
}

$(document).ready(function() {
	



	
});



/*function getCatid(){
	

	var appenddata;
	$.ajax({
		type: "GET",
		 url: base_url+'rest/category/getcategories',
		  dataType: "json",
		  contentType: 'application/json', 
		 
		 
		  success: function(data){
	       for(var i=0; i < data.length; i++){
			 
	    		
					var categoryname = data[i].categoryname;
					var categoryid = data[i].id;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+categoryid+'">'
							+categoryname+'</option>';
					
				}
	       $("#category").prop("disabled",false);
	       jQuery("#category").empty("");
			jQuery("#category").append('<option value="--- Select Category ---">--- Select Category---</option>');
			jQuery("#category").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
			

		  },
		  error: function(data) {		

			  alert("Categories not found!");

		  }
	      	
	});

	//categories default get service in table  in admin

}
*/
function getSelectedExamTypeById(val){
	
	var appenddata="";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/getexamtypes/'+val,
		 /* beforeSend: function() {
	        $("#loading").show();
	     },*/
		  success: function(data){
			  //$("#loading").hide();
			  for(var i=0; i < data.length; i++){
					var examType = data[i].examtype;
					var examTypeid = data[i].id;
					appenddata += '<option value="'+examTypeid+'">'
							+examType+'</option>';
					
				  
			  }
			  
			  	jQuery("#examtypeid").empty("");
				jQuery("#examtypeid").append('<option value="--- Select ---">--- Select ---</option>');
				jQuery("#examtypeid").append(appenddata);
				

				$("#examtypeid").prop("disabled", false);
				$('.selectpicker').selectpicker('refresh');
			  
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("ExamTypes not found!");

		  }, 
		  
	});
}



function getSelectedStandardsById(val){

	var cattypename = $("#category option:selected").text();
   var examtypename = val;
  var inputData = '{"categoryname":"'+cattypename+'", "examtype":"'+examtypename+'"}';

var appenddata;
$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/question/getstandards',
	  data: inputData,
	  beforeSend: function() {
        $("#loading").show();
     },
	  success: function(data){
		  $("#loading").hide();
		  for(var i=0; i < data.length; i++){
				var standards = data[i].name;
				var standardsid = data[i].id;
				
				appenddata += '<option value="'+standardsid+'">'
						+standards+'</option>';
				
	  
		  }
		  
		  	jQuery("#standard").empty("");
			jQuery("#standard").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#standard").append(appenddata);
		  
		  $("#standard").prop("disabled", false);
		  $('.selectpicker').selectpicker('refresh');
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert("Standards not found!");

	  }
	  
});
}
//standard flowchange
function getcatstudent(){

	var appenddata;
	$.ajax({
		type: "GET",
		 url: base_url+'rest/category/v1/getcategories',
		  dataType: "json",
		  contentType: 'application/json', 
		 
		 
		  success: function(data){
	       for(var i=0; i < data.length; i++){
			 
	    		
					var categoryname = data[i].categoryname;
					var categoryid = data[i].id;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+categoryid+'">'
							+categoryname+'</option>';
					
				}
	       $("#studentcategory").prop("disabled",false);
	       jQuery("#studentcategory").empty("");
			jQuery("#studentcategory").append('<option value="">--- Select Category---</option>');
			jQuery("#studentcategory").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
			

		  },
		  error: function(data) {		

			  alert("Categories not found!");

		  }
	      	
	});

	//categories default get service in table  in admin

}




function skygetLogo(){
		$(".brand-img").css({
							 "position": "absolute",
				             "top": "7px",
				             "left": "100px"
					          })
	
}


function getCategoriesByDeanId(deanId){
	var appenddata;
	
	var  $category =  $("#category");
	
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeancategories/'+deanId,
		  success: function(data){
	       for(var i=0; i < data.length; i++){
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].categoryname+'</option>';
					/*appenddata += '<option value="'+id+'">'
					+id+'</option>';*/
				}
	       
	       $category.empty("");
	       $category.append('<option value="">--- Select ---</option>');
	       $category.append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');

		  },
		  error: function(data) {		

			  alert(data.responseJSON.errorMessage);

		  }
	      	
	});
}


function getSelectedExamTypeByDeanId(val,indx){
	
	var appenddata="";
	
	/*
	 * Indx is used to retrieve dean id from dropdown, in non dean logged in pages! 
	 * when written it is used in pages(login_link_sme_assign.jsp)
	 * */
	if(indx===undefined){
		var deanId = getDeanId();
	}else{
		var deanId = $("#dean").val();
	}
	
	
	var inputData = {
		"deanid":deanId,
		"categoryId":$("#category").val(),
		"standardId":val
	};
	
	var $examtype = $("#examtype");
	
	inputData = JSON.stringify(inputData);
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeanexamtypes',
		  data:inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  for(var i=0; i < data.length; i++){
					
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].examtype+'</option>';
				/*	appenddata += '<option value="'+id+'">'
					+id+'</option>';*/
			  }
			  
			  $examtype.empty("");
			  $examtype.append('<option value="">--- Select ---</option>');
			  $examtype.append(appenddata);
				

			  $examtype.prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);

		  }, 
		  
	});
}

function getSelectedStandardsByDeanId(val,indx){
	var catetypename = val;
	
	/*
	 * Indx is used to retrieve dean id from dropdown, in non dean logged in pages! 
	 * when written it is used in pages(login_link_sme_assign.jsp)
	 * */
	if(indx===undefined){
		var deanId = getDeanId();
	} else{
		var deanId = $("#dean").val();
	}
	
	var $standard = jQuery("#standard");
	var inputData = {
		"deanid":deanId,
		"categoryId":catetypename
	};
	inputData = JSON.stringify(inputData);

var appenddata;
$.ajax({
	type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  url: base_url+'rest/dean/v1/getdeanstandards',
	  data: inputData,
	  beforeSend: function() {
        $("#loading").show();
     },
	  success: function(data){
		  $("#loading").hide();
		  for(var i=0; i < data.length; i++){
				
				appenddata += '<option value="'+data[i].id+'">'
						+data[i].name+'</option>';

		  }
		  
		  $standard.empty("");
		  $standard.append('<option value="">--- Select ---</option>');
		  $standard.append(appenddata);
		  
		  $standard.prop("disabled", false);
		  $('.selectpicker').selectpicker('refresh');
	  },
	  error: function(data) {		
		  $("#loading").hide();
		  alert(data.responseJSON.errorMessage);

	  }
	  
});
}


function getSelectedSubjectByDeanId(val,indx){

	/*
	 * Indx is used to retrieve dean id from dropdown, in non dean logged in pages! 
	 * when written it is used in pages(login_link_sme_assign.jsp)
	 * */
	if(indx===undefined){
		var deanId = getDeanId();
	} else{
		var deanId = $("#dean").val();
	}
	 var catetypename = $("#category").val();
  var examtypename = val;
  var standtypename = $("#standard").val();


  var $subject =  jQuery("#subject");
	var inputData = {
		"deanid":deanId,
		"categoryId":catetypename,
		"examtypeId": examtypename,
		"standardId":standtypename
	};
	inputData = JSON.stringify(inputData);
var appenddata;
$.ajax({
  type: "POST",
    dataType: "json",
    contentType: 'application/json', 
    url: base_url+'rest/dean/v1/getdeansubjects',
    data: inputData,
    beforeSend: function() {
      $("#loading").show();
   },
    success: function(data){
        $("#loading").hide();
        for(var i=0; i < data.length; i++){
             
            
              appenddata += '<option value="'+data[i].id+'">'
                      +data[i].name+'</option>';
            /*  appenddata += '<option value="'+id+'">'
              +id+'</option>';*/
        }
        
        $subject.empty("");
        $subject.append('<option value="">--- Select ---</option>');
        $subject.append(appenddata);
        
        $subject.prop("disabled", false);
        
        $('.selectpicker').selectpicker('refresh');
    },
    error: function(data) {        
        $("#loading").hide();
        alert(data.responseJSON.errorMessage);

    }, 
    
});
}



function getSelectedUnitByDeanId(val,indx){

	/*
	 * Indx is used to retrieve dean id from dropdown, in non dean logged in pages! 
	 * when written it is used in pages(login_link_sme_assign.jsp)
	 * */
	if(indx===undefined){
		var deanId = getDeanId();
	} else{
		var deanId = $("#dean").val();
	}
    	
    var catetypename = $("#category").val();
    var examtypename = $("#examtype").val();
	var standardtypename = $("#standard").val();
    var subname = val;

    var $unit = jQuery("#unit");
	var inputData = {
		"deanid":deanId,
		"categoryId":catetypename,
		"examtypeId": examtypename,
		"standardId":standardtypename,
		"subjectId":subname
	};
	inputData = JSON.stringify(inputData);
	
    var appenddata;
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/dean/v1/getdeanunits',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                   
                   
                    
                    appenddata += '<option value="'+data[i].id+'">'
                            + data[i].name+'</option>';
                   /* appenddata += '<option value="'+id+'">'
                    +id+'</option>';*/
              }
              
              $unit.empty("");
              $unit.append('<option value="">--- Select ---</option>');
              $unit.append(appenddata);
                
              $unit.prop("disabled", false);
              
              $('.selectpicker').selectpicker('refresh');
          },
          error: function(data) {        
              $("#loading").hide();
              alert("Units not found!");

          }
          
    });
}



function getSelectedChapterByDeanId(val,indx){

	/*
	 * Indx is used to retrieve dean id from dropdown, in non dean logged in pages! 
	 * when written it is used in pages(login_link_sme_assign.jsp)
	 * */
	if(indx===undefined){
		var deanId = getDeanId();
	} else{
		var deanId = $("#dean").val();
	}
	
	var catetypename = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val();
	var unitname = val;
	
	 var $chapter = jQuery("#chapter");
	var inputData = {
		"deanid":deanId,
		"categoryId":catetypename,
		"examtypeId": examtypename,
		"standardId":standardname,
		"subjectId":subjectname,
		"unitId":unitname
	};
	inputData = JSON.stringify(inputData);


	var appenddata;
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/dean/v1/getdeanchapters',
		  data: inputData,
		  beforeSend: function() {
	        $("#loading").show();
	     },
		  success: function(data){
			  $("#loading").hide();
			  
			  for(var i=0; i < data.length; i++){
					
				 
					
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].name+'</option>';
					/*appenddata += '<option value="'+id+'">'
					+id+'</option>';*/
			  }
			  
			  $chapter.empty("");
			  $chapter.append('<option value="">--- Select ---</option>');
			  $chapter.append(appenddata);
			  
			  $chapter.prop("disabled", false);
			  
			  $('.selectpicker').selectpicker('refresh');
		  },
		  error: function(data) {		
			  $("#loading").hide();
			  alert("Chapters not found!");

		  }
		  
	});
}



//FOR GETTING SECTIONS IN EXAMTYPES END
//standard flowchange 10/05/2018
function getstandardsbtcat(val, callback){
	//val - categoryID
	 var appenddata="";
	  $.ajax({
	    	type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getstandards/'+val,
	 	  beforeSend: function() {
	         $("#loading").show();
	      },
	 	  success: function(data){
	 		 $("#loading").hide();
	 		 if(data.length > 0){
	 			 
	 		
	 		  for(var i=0; i < data.length; i++){
	 				var standards = data[i].name;
	 				
	 				appenddata += '<option value="'+data[i].id+'">'+standards+'</option>';
 			   
	 		  }
	 		  
	 		 jQuery("#standard").empty("");
             jQuery("#standard").append('<option value="">--- Select ---</option>');
             jQuery("#standard").append(appenddata);
             
             $("#standard").prop("disabled", false);
             
	 		 $('.selectpicker').selectpicker('refresh');
	 		  
	 		 }else{
	 			 jQuery("#standard").empty("");
	 			 $('.selectpicker').selectpicker('refresh');
	 		 }
	 		 
	 		 if(callback){
	 			 callback();
	 		 }
	 	  },
	 	  error: function(data) {		
	 		  $("#loading").hide();
	 		 jQuery("#standard").empty("");
	 		 $('.selectpicker').selectpicker('refresh');
	 		  alert("Standards not found!");

	 	  }
	 	  
	 });
}


//GET EXAMTYPES BASED ON CATEGORYID,STANDARDID 10/05/2018
function getSelectedexams(val,indx,callback){
	
	if(indx === undefined){
		var categid = $("#category").val();
		var standardid = $("#standard").val();
		var $examtype = $("#examtype");
	}else{
		var categid = $("#category"+indx).val();
		var standardid = $("#standard"+indx).val();
		var $examtype = $("#examtype"+indx);
	}
	
	  var inputData = '{"categoryId":"'+categid+'", "standardId":"'+standardid+'"}';

	var appenddata;
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/v1/getexamtypes',
		data: inputData,
		beforeSend: function() {
	      $("#loading").show();
	    },
	    success: function(data){
		  $("#loading").hide();
		  for(var i=0; i < data.length; i++){
			var examtype = data[i].examtype;
			
			appenddata += '<option value="'+data[i].id+'">'
					+examtype+'</option>';
		  }
		  
		  
		  $examtype.empty("");
		  $examtype.append('<option value="">--- Select ---</option>');
		  $examtype.append(appenddata);
         
		  
		  $examtype.prop("disabled", false);
		  $('.selectpicker').selectpicker('refresh');
		  
		  if(callback){
			  callback();
		  }
	   },
	   error: function(data) {		
		  $("#loading").hide();
		  
		  $examtype.empty("");
	 	  $('.selectpicker').selectpicker('refresh');
		  alert("Examtypes not found!");
	   }
		  
	});
}


//stnadard flow change 10/05/2018 GET subjects BASED ON CATEGORYID,STANDARDID,examtype 10/05/2018
function getSelectedSubjects(val,indx){
	if(indx === undefined){
		var $subject = $("#subject");
        var catid = $("#category").val();
        var standid = $("#standard").val();
        var examid = $("#examtype").val();
	}else{
		var $subject = $("#subject"+indx);
		var catid = $("#category"+indx).val();
        var standid = $("#standard"+indx).val();
        var examid = $("#examtype"+indx).val();
	}
      var inputData = '{"categoryId":"'+catid+'","standardId":"'+standid+'","examtypeId":"'+examid+'"}';
     
    var appenddata;
    $.ajax({
        type: "POST",
          dataType: "json",
          contentType: 'application/json', 
          url: base_url+'rest/question/v1/getsubjects',
          data: inputData,
          beforeSend: function() {
            $("#loading").show();
         },
          success: function(data){
              $("#loading").hide();
              for(var i=0; i < data.length; i++){
                    var subjects = data[i].name;
                    
                    appenddata += '<option value="'+data[i].id+'">'
                            +subjects+'</option>';
              }

			  $subject.empty("");
			  $subject.append('<option value="">--- Select ---</option>');
			  $subject.append(appenddata);

              $subject.prop("disabled", false);
              $('.selectpicker').selectpicker('refresh');
          },
          error: function(data) {        
              $("#loading").hide();
			  
			  $subject.empty("");
              $('.selectpicker').selectpicker('refresh');
              alert(data.responseJSON.errorMessage);
          }
    });
}


function getstatesall() {
	var appenddata;
	$.ajax({
		type : "GET",
		url : base_url + 'rest/admin/v1/getnotificationstates',
		dataType : "json",
		contentType : 'application/json',

		success : function(data) {
			 removeByAttr(data, 'id', -1); 
			for (var i = 0; i < data.length; i++) {

				var statename = data[i].name;
				var stateid = data[i].id;
				//var zoneidis = data.zones[i].id;
				appenddata += '<option value="'+stateid+'">' + statename
						+ '</option>';

			}
			$("#state").prop("disabled", false);
			$("#state").empty("");
			$("#state").append(
					'<option value="">--- Select States---</option>');
			$("#state").append(appenddata);

			$('.selectpicker').selectpicker('refresh');

		},
		error : function(data) {

			alert("States not found!");

		}

	});
}
var removeByAttr = function(arr, attr, value){
    var i = arr.length;
    while(i--){
       if( arr[i] 
           && arr[i].hasOwnProperty(attr) 
           && (arguments.length > 2 && arr[i][attr] === value ) ){ 

           arr.splice(i,1);

       }
    }
    return arr;
}
function getallSelectedcities(element, event) {

	var appenddata = "";

	var cities = [];

	for (var i = 0; i < element.options.length; i++) {
		if (element.options[i].selected) {
			cities.push(element.options[i].value);
		}
	}

	var inputData = {
		"state" : cities
	};
	var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/admin/v1/getnotificationcities',
		data : inputdata,
		beforeSend : function() {
			$("#loading").show();
		},
		success : function(data) {
			$("#loading").hide();
			for (var i = 0; i < data.length; i++) {
				appenddata += '<option value="'+data[i].id+'" selected>'
						+ data[i].name + '</option>';
			}

			$("#city").empty("");
			$("#city").append('<option value="">--- Select ---</option>');
			$("#city").append(appenddata);

			$('.selectpicker').selectpicker('refresh');
			$("#city").prop("disabled", false);

		},
		error : function(data) {
			$("#loading").hide();
			alert("Cities not found!");

		},

	});

}

function logoutadmin(){
	//var baseURL = $("#baseURL").val();
	var data = JSON.parse(atob(deleteCookie("LoginData")));
	
	
}
function deleteCookie(cname) {
    var d = new Date(); //Create an date object
    d.setTime(d.getTime() - (1000*60*60*24)); //Set the time to the past. 1000 milliseonds = 1 second
    var expires = "expires=" + d.toGMTString(); //Compose the expirartion date
   window.document.cookie = cname+"="+"; "+expires;//Set the cookie with name and the expiration date
   alert('logged out successfully');
		 //window.location = base_url +"jsp/master/login.jsp";
   window.location = base_url +"jsp/master/login.jsp?logout=ad";
}

function getsubjectsbyexamtype(val){

	
	      var examid = $("#examtype").val();
		 var inputData = '{"examTypeId":"'+examid+'"}';
	    var appenddata;
	    $.ajax({
	        type: "POST",
	          dataType: "json",
	          contentType: 'application/json', 
	          url: base_url+'rest/subject/v1/getSubjects',
	          data: inputData,
	          beforeSend: function() {
	            $("#loading").show();
	         },
	          success: function(data){
	              $("#loading").hide();
	              for(var i=0; i < data.length; i++){
	                   
	                    
	                    appenddata += '<option value="'+data[i].id+'">'
	                            +data[i].subject+'</option>';
	              }
	            
		              jQuery("#subject").empty("");
		              jQuery("#subject").append('<option value="">--- Select ---</option>');
		              jQuery("#subject").append(appenddata);
	             
	        
	              $("#subject").prop("disabled", false);
	              $('.selectpicker').selectpicker('refresh');
	          },
	          error: function(data) {        
	              $("#loading").hide();
	              $('.selectpicker').selectpicker('refresh');
	              alert(data.responseJSON.errorMessage);
	             

	          }, 
	          
	    });	
	
}
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
			  alert(data.responseJSON.errorMessage);

		  }
		  
	});
}


function getSelectedDifficultLevels(val){
	var appenddata;
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var standard = $("#standard").val();
	
	var difficultlevel =  {
		"categoryId":category,
		"examtypeId":examtype,
		"standardId":standard
		}
 var difficultlevelstr = JSON.stringify(difficultlevel);
	
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url + 'rest/question/v1/getdifficultylevels',
		  data: difficultlevelstr,
		  success:function(data){
		      for(var i=0; i < data.length; i++){
					appenddata += '<option value="'+data[i].id+'">'
							+data[i].name+'</option>';
				}
			$("#difficultlevel").prop("disabled", false);
	       jQuery("#difficultlevel").empty("");
			jQuery("#difficultlevel").append('<option value="--- Select ---">--- Select ---</option>');
			jQuery("#difficultlevel").append(appenddata);
				
			$('.selectpicker').selectpicker('refresh');
		  },
		  error:function(data){
			  alert(data.responseJSON.errorMessage);
		  }
	})
	
}

// for geting years in previos year database Admin
function getAllYearsForDropDown(cat,exm,standard){
	var appenddata;
	var cat = $("#category").val();
	var standard = $("#standard").val();
	var exam = exm;
	if(cat !== "" && cat !== null && cat !== undefined){
		if(exam !== "" && exam !== null && exam !== undefined){
			if(standard !== "" && standard !== null && standard !== undefined){
				var inputData = {
						"categoryId":cat,
						"examtypeId":exam,
						"standardId":standard
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
			   /*  $("#previousyear2").prop("disabled",false);
			       jQuery("#previousyear2").empty("");
					jQuery("#previousyear2").append('<option value="">--- Select ---</option>');
					jQuery("#previousyear2").append(appenddata);
					
					$("#previousyear1").prop("disabled",false);
				       jQuery("#previousyear1").empty("");
						jQuery("#previousyear1").append('<option value="">--- Select ---</option>');
						jQuery("#previousyear1").append(appenddata);*/
						
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


function getparameters(){
var appenddata;
  	$.ajax({
  		type: "GET",
  		  dataType: "json",
  		  contentType: 'application/json', 
  		  url: base_url+'rest/academichead/v1/getparameters/1',
  		  cache:false,
  		  success: function(data){
  	       for(var i=0; i < data.length; i++){
  			 var layoutname = data[i];
  					//var zoneidis = data.zones[i].id;
  					appenddata += '<option value="'+layoutname+'">'+layoutname+'</option>';
  				}
  	    
  		  jQuery("#parameters").empty("");
			jQuery("#parameters").append('<option value="">--- Select ---</option>');
			jQuery("#parameters").append(appenddata);
  			//$("#layoutnumber").prop("disabled", false);
  			$("#parameters").prop("disabled", false);
  			$('.selectpicker').selectpicker('refresh');
  			
  		  },
  		  error: function(data) {		

  			 alert(data.responseJSON.errorMessage);

  		  }
  	      	
  	});
}


function sqbgetallstandard(val,callback){
	
	var appenddata;
	$.ajax({
		type:"GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/admin/sqb/getAllstandards',
		  success: function(data){
			  
	        for(var i=0; i < data.length; i++){
	    	   
			  var sqbstandname = data[i].standard;
	         var sqbstanid = data[i].id;
			  appenddata += '<option value="'+sqbstanid+'">'
						+sqbstandname+'</option>';
				
			}
	        
	       	$("#standard").empty("");
			$("#standard").append('<option value="">--- Select ---</option>');
			$("#standard").append(appenddata);
			$("#standard").prop("disabled",false);
			$('.selectpicker').selectpicker('refresh');
			
			 if(callback){
				  callback();
			  }
		  },
		  error: function(data) {		
			  alert("Standards not found!");
		  }	
})
}

function getsubjectssqb(val,callback){


	var standardid = val;
	var inputData = '{"standardId":"'+standardid+'"}';
	var appenddata="";
	$.ajax({
	type: "POST",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/admin/sqb/getAllSubbyStdId',
	data: inputData,
	beforeSend: function() {
	$("#loading").show();
	},
	success: function(data){
	$("#loading").hide();
	for(var i=0; i < data.length; i++){


	appenddata += '<option value="'+data[i].SubjectId+'">'
	+data[i].Subject+'</option>';
	}

	$("#subject").empty("");
	$("#subject").append('<option value="">--- Select ---</option>');
	$("#subject").append(appenddata);


	$("#subject").prop("disabled", false);
	$('.selectpicker').selectpicker('refresh');
	
	if(callback){
		  callback();
	  }
	},
	error: function(data) {        
	$("#loading").hide();
	$('.selectpicker').selectpicker('refresh');
	alert(data.responseJSON.errorMessage);


	}, 

	});	

	}

// Examtypes based on SQb StandardID
function getexamtypesbySqbStd(val,callback){


	var standardid = val;
	var inputData = '{"standardId":"'+standardid+'"}';
	var appenddata="";
	$.ajax({
	type: "POST",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/admin/sqb/getAllExamtypesBySqbStandards',
	data: inputData,
	beforeSend: function() {
	$("#loading").show();
	},
	success: function(data){
	$("#loading").hide();
	for(var i=0; i < data.length; i++){


	appenddata += '<option value="'+data[i].examtypeId+'">'
	+data[i].examtype+'</option>';
	}

	$("#examtype").empty("");
	$("#examtype").append('<option value="">--- Select ---</option>');
	$("#examtype").append(appenddata);


	$("#examtype").prop("disabled", false);
	$('.selectpicker').selectpicker('refresh');
	
	if(callback){
		  callback();
	  }
	},
	error: function(data) {        
	$("#loading").hide();
	$('.selectpicker').selectpicker('refresh');
	alert(data.responseJSON.errorMessage);


	}, 

	});	

	}


function getCreationssubjectssqb(val,callback){


	var standardid = val;
	var inputData = '{"standardId":"'+standardid+'"}';
	var appenddata="";
	$.ajax({
	type: "POST",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/subject/sqb/getAllSubbyStdId',
	data: inputData,
	beforeSend: function() {
	$("#loading").show();
	},
	success: function(data){
	$("#loading").hide();
	for(var i=0; i < data.length; i++){


	appenddata += '<option value="'+data[i].SubjectId+'">'
	+data[i].Subject+'</option>';
	}

	$("#subject").empty("");
	$("#subject").append('<option value="">--- Select ---</option>');
	$("#subject").append(appenddata);


	$("#subject").prop("disabled", false);
	$('.selectpicker').selectpicker('refresh');
	
	if(callback){
		  callback();
	  }
	},
	error: function(data) {        
	$("#loading").hide();
	$('.selectpicker').selectpicker('refresh');
	alert(data.responseJSON.errorMessage);


	}, 

	});	

	}

//varshith
/*function sqbgetallunits(val,callback){
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	
	var unitsreq = {
	"standardId":standard,
	"subjectId":subject
	}
	var unitsdata = JSON.stringify(unitsreq);
	var appenddata="";
	$.ajax({
	type: "POST",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/admin/sqb/GetUnitsbystdSub',
	data: unitsdata,
	success: function(data){
	for(var i=0; i < data.length; i++){
	appenddata += '<option value="'+data[i].unitId+'">'
	+data[i].unit+'</option>';
	}

	$("#unit").empty("");
	$("#unit").append('<option value="">--- Select ---</option>');
	$("#unit").append(appenddata);
	$('.selectpicker').selectpicker('refresh');
	
	if(callback){
		  callback();
	  }
	},
	error: function(data) {        
	alert("Getting all units failed");
	}

	});		
}
*/

//saii

function sqbgetallunits(val,callback){
	var standard = $("#standard").val();
	var subject =val;

	var unitsreq = {
	"standardId":standard,
	"subjectId":subject
	}
	var out = JSON.stringify(unitsreq);
	
	var $unitIdSelector = $("#unit");
	
	var appenddata="";
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/GetUnitsbystdSub',
		data: out,
		success: function(data){
			for(var i=0; i < data.length; i++){
				appenddata += '<option value="'+data[i].unitId+'">'
				+data[i].unit+'</option>';
			}

			$unitIdSelector.empty("");
			$unitIdSelector.append('<option value="">--- Select ---</option>');
			$unitIdSelector.append(appenddata);
			
			$unitIdSelector.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
			if(callback){
				callback();
			}
		},
		error: function(data) {        
			alert("Getting all units failed");
		}

	});	
	}

function sqbgetallchapters(val,callback){
	var standard = $("#standard").val();
	var subject =val;

	var unitsreq = {
	"standardId":standard,
	"subjectId":subject
	}
	var out = JSON.stringify(unitsreq);
	
	var $chapterIdSelector = $("#chapter");
	
	var appenddata="";
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getAllChapByStdSub',
		data: out,
		success: function(data){
			for(var i=0; i < data.length; i++){
				appenddata += '<option value="'+data[i].chapterId+'">'
				+data[i].chapter+'</option>';
			}

			$chapterIdSelector.empty("");
			$chapterIdSelector.append('<option value="">--- Select ---</option>');
			$chapterIdSelector.append(appenddata);
			
			$chapterIdSelector.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
			if(callback){
				callback();
			}
		},
		error: function(data) {        
			alert("Getting all chapters failed");
		}

	});	
	}

function sqbsubparamters(val,callback){
	
	var subject =val;
	var $paramIdSelector = $("#parameters");
	var subjectsreq = {
	
	"subjectId":subject
	}
	var out = JSON.stringify(subjectsreq);
	
	
	
	var appenddata="";
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/subgetbyId',
		data: out,
		success: function(data){
			var parmeters=[];
			parmeters = data[0].sqbparamterpojos;
			//var parameterIds = data[0].parameterIds;
			for(var i=0; i < parmeters.length; i++){
				
					appenddata += '<option value="'+parmeters[i].paramterId+'">'+parmeters[i].paramterName+'</option>';
			//		$("#parameters").val([parameterIds]);
				
			}

			$paramIdSelector.empty("");
			$paramIdSelector.append('<option value="">--- Select ---</option>');
			$paramIdSelector.append(appenddata);
			
			$paramIdSelector.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
			if(callback){
				callback();
			}
		},
		error: function(data) {        
			alert("Getting all units failed");
		}

	});	
	}

function getchapterssqb(val,callback){
//	var unit = val;
var standard = $("#standard").val();
var subject = $("#subject").val();
var unit = val;
var appenddata="";
var inputData = {
"standardId":standard,
"subjectId":subject,
"unitId":unit
}
var output = JSON.stringify(inputData);
$.ajax({
type: "POST",
dataType: "json",
contentType: 'application/json', 
url: base_url+'rest/admin/sqb/getAllChapByStdSubUnit',
data: output,
beforeSend: function() {
$("#loading").show();
},
success: function(data){
$("#loading").hide();
for(var i=0; i < data.length; i++){


appenddata += '<option value="'+data[i].chapterId+'">'
+data[i].chapter+'</option>';
}

$("#chapter").empty();
$("#chapter").append('<option value="">--- Select ---</option>');
$("#chapter").append(appenddata);


$("#chapter").prop("disabled", false);
$('.selectpicker').selectpicker('refresh');
if(callback){
	  callback();
}
},
error: function(data) {        
$("#loading").hide();
$('.selectpicker').selectpicker('refresh');
alert(data.responseJSON.errorMessage);


}, 

});	

}

//get all SQB Topics by selection 
function getSelectedSQBTopics(val){
	var standard = $("#standard").val();
	var subject = $("#subject").val();
	var chapter= val;
	var unit = $("#unit").val();;
	var appenddata="";
	var inputData = {
			"standardId":standard,
			"subjectId":subject,
			"unitId":unit,
			"chapterId":chapter
	}
	var output = JSON.stringify(inputData);
	
	var $topicIdSelector = $("#topic");
	
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getAllTopicsbyStdSubUnitChap',
		data: output,
		success: function(data){
			for(var i=0; i < data.length; i++){


				appenddata += '<option value="'+data[i].topicId+'">'
				+data[i].topic+'</option>';
			}

			$topicIdSelector.empty();
			$topicIdSelector.append('<option value="">--- Select ---</option>');
			$topicIdSelector.append(appenddata);


			$topicIdSelector.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
		},
		error: function(data) {        
			$('.selectpicker').selectpicker('refresh');
			alert(data.responseJSON.errorMessage);


		}, 

	});	

}

//get all sqb layouts
function getAllSQBLayouts(){
	
	var $qsIdSelector = $("#questionType");
	
	var appenddata = "";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/question/getSqbQuestionType',
		success: function(data){
			
			for(var i=0; i < data.length; i++){
				appenddata += '<option value="'+data[i].layoutname+'">'+data[i].layouttype+'</option>';
			}

			$qsIdSelector.empty();
			$qsIdSelector.append('<option value="">--- Select ---</option>');
			$qsIdSelector.append(appenddata);

			$qsIdSelector.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
		},
		error: function(data) {        
			
			$('.selectpicker').selectpicker('refresh');
			alert(data.responseJSON.errorMessage);


		}
	});	

}



function gellAllSqbParamaters(){
	var appenddata="";
	var $parameter = $("#parameter");
	$.ajax({
		url:base_url+'rest/admin/sqb/getparameters',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				var paraname = data[i].paramName;
				var paraId = data[i].id;
				appenddata += "<option value="+paraId+">"+paraname+"</option>";
			}
			$parameter.empty();
			$parameter.append('<option value="">---Select---</option>');
			$parameter.append(appenddata);

			$parameter.prop("disabled", false);
			$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}


//years 

function getYearSqb(){
	var appendyears = "";
	var $previousyear = $("#previousyear");
	var $previousyear2 = $("#sltdyer");
	var $previousyear3 = $("#sltdyer1");
	$.ajax({
		url:base_url+'rest/admin/getcompetativeExamAndYears',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			var yr = data.years;
			for(var i = 0; i < yr.length; i++){
				var yearId = yr[i].id;
				var year   = yr[i].year;
				appendyears += "<option value="+yearId+">"+year+"</option>";
			}
			$previousyear.prop("disabled", false);
			$previousyear.empty();
			$previousyear.append('<option value="">---Select---</option>');
			$previousyear.append(appendyears);
			
			$previousyear2.prop("disabled",false);
			$previousyear2.empty("");
			$previousyear2.append('<option value="">--- Select ---</option>');
			$previousyear2.append(appendyears);
			
			$previousyear3.prop("disabled",false);
			$previousyear3.empty("");
			$previousyear3.append('<option value="">--- Select ---</option>');
			$previousyear3.append(appendyears);
			
			$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responeJSON.errorMessage);
		}
	})
}

//Difficultwise sql getAll
function getAllDifficultyWisesqb(){
	var appenddata = "";
	var $difficultyWise = $("#difficultlevel");
	$.ajax({
		url:base_url+'rest/admin/sqb/getlevels',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i = 0;i<data.length;i++){
				var name = data[i].levelName;
				var id = data[i].id;
				appenddata += "<option value="+id+">"+name+"</option>"
			}
			$difficultyWise.prop("disabled", false);
			$difficultyWise.empty();
			$difficultyWise.append('<option value="">---Select---</option>');
			$difficultyWise.append(appenddata);
			$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responeJSON.errorMessage);
		}
	})
}


function getquotas(){
	var appenddata = "";
	$.ajax({
		url:base_url+'rest/student/getCollegePredictionQuota',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i = 0;i<data.length;i++){
				var name = data[i].quota;
				appenddata += "<option value="+name+">"+name+"</option>"
			}

			$("#quota").append('<option value="">---Select---</option>');
			$("#quota").append(appenddata);
			$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responeJSON.errorMessage);
		}
	})
	
}


/*function getbranches(){
	var appenddata = "";
	var LoginData = getLoginData();
	var catid = LoginData.categoryId;
	//var catid = regstrCat;
	var inputData = {
			"categoryId":catid
	}
	var outputData = JSON.stringify(inputData);
	$.ajax({
		url:base_url+'rest/student/getCollegePredictionBranchess',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			console.log("Success");
			for(var i = 0;i<data.length;i++){
				var name = data[i].branchName;
				appenddata += "<option value="+name+">"+name+"</option>"
			}

			$("#branch").append('<option value="">---Select---</option>');
			$("#branch").append(appenddata);
			$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responeJSON.errorMessage);
		}
	})
	
}*/


function subchapAllSqbParamaters(callback){
	var appenddata ="";
	$.ajax({
		url:base_url+'rest/admin/sqb/getAllParameters',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
			for(var i = 0;i<data.length;i++){
				appenddata+= '<option value='+data[i].parameterId+'>'+data[i].parameterName+'</option>';
				
			}
			$("#sqbparameter").empty();
			$("#sqbparameter").append(appenddata);
			
			if(callback){
			   callback();
			}

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//get all standards for register
function getAllStandardsAfterRegister(){
	var appenddata = "";
	$.ajax({
		url:base_url+'rest/student/getCollegePredictionStandards',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i in data){
				appenddata += '<option value='+data[i].standardName+'>'+data[i].standardName+'</option>';
			}
			
		$("#standard").empty();
		$("#standard").append('<option value="">---Select---</option>');
		$("#standard").append(appenddata);
		$(".selectpicker").selectpicker('refresh');
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);	
		}
	})
}
function fnExcelReport(tableid)
{
    var tab_text = '<table border="1px" style="font-size:14px">';
    var textRange; 
    var j = 0;
	//var tab = $("#"+tableid);
    var tab = document.getElementById(tableid); // id of table
    var lines = tab.rows.length;
    var postfix ="data";
    // the first headline of the table
    if (lines > 0) {
        tab_text = tab_text + '<tr bgcolor="#87AFC6">' + tab.rows[0].innerHTML + '</tr>';
    }

    // table data lines, loop starting from 1
    for (j = 1 ; j < lines; j++) {     
        tab_text = tab_text + "<tr>" + tab.rows[j].innerHTML + "</tr>";
    }

    tab_text = tab_text + "</table>";
    tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");             //remove if u want links in your table
    tab_text = tab_text.replace(/<img[^>]*>/gi,"");                 // remove if u want images in your table
    tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, "");    // reomves input params
    // console.log(tab_text); // aktivate so see the result (press F12 in browser)

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE "); 

     // if Internet Explorer
    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
        txtArea1.document.open("txt/html","replace");
        txtArea1.document.write(tab_text);
        txtArea1.document.close();
        txtArea1.focus(); 
        sa = txtArea1.document.execCommand("SaveAs", true, "DataTableExport.xls");
    }  
    else // other browser not tested on IE 11
    	//var a = document.createElement('a');    
    	sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
    	sa.download = "export.xls";
    return (sa);
}

//get all Sqb Chapters
function getAllSqbChapters(callback){
	
	var $chapter = $("#chapter");
	
	var appenddata = "";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getAllChapters',
		success: function(data){
			
			for(var i=0; i < data.length; i++){
				appenddata += '<option value="'+data[i].chapterId+'">'+data[i].chapter+'</option>';
			}

			$chapter.empty();
			$chapter.append('<option value="">--- Select ---</option>');
			$chapter.append(appenddata);

			$chapter.prop("disabled", false);
			$('.selectpicker').selectpicker('refresh');
			if(callback){
				callback();
			}
			
		},
		error:function(data) {        
			
			$('.selectpicker').selectpicker('refresh');
			alert(data.responseJSON.errorMessage);


		}
	});	

}


function deanfilterlayout(){
	
	var standardid = $("#standard").val();
	
	var appenddata="";
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/dean/getQuestiontypes/'+standardid,
		success: function(data){
			for(var i=0; i < data.length; i++){

				var layoutid = data[i].id;
				var layoutname = data[i].layoutname;
				appenddata += '<option value="'+layoutid+'">'+layoutname+'</option>';
			}
			$("#questionType").prop("disabled", false);
			$("#questionType").empty();
			$("#questionType").append('<option value="">--- Select ---</option>');
			$("#questionType").append(appenddata);
			$(".selectpicker").selectpicker('refresh');
		},
		error: function(data) {		
			alert(data.responseJSON.errorMessage);
		}
	});
}


function getChapterwiseparms(){
	var appenddata="";
	
	$.ajax({
		type: "GET",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/admin/sqb/getAllParameters',
		success: function(data){
			for(var i=0; i < data.length; i++){

				var paramsid = data[i].parameterId;
				var paramsname = data[i].parameterName;
				appenddata += '<option value="'+paramsid+'">'+paramsname+'</option>';
			}
			$("#chapparameter").prop("disabled", false);
			$("#chapparameter").empty();
			$("#chapparameter").append('<option value="">--- Select ---</option>');
			$("#chapparameter").append(appenddata);
			$(".selectpicker").selectpicker('refresh');
		},
		error: function(data) {		
			alert(data.responseJSON.errorMessage);
		}
	});
	
	
}