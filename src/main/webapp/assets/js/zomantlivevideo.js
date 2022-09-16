/*
$(document).ready(function() {

	getexamtypes();
	
})

function module(){
	
$.ajax({
	  url : baseurl+"rest/modules/getAllModules",
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
	
		  console.log(data);
		  
		 
 		 var tabledata = '';
 		 console.log(tabledata);
 	
 		 for(var i =0; i<data.length;i++){
 			tabledata +=
 				
 				'<option value="'+data[i].moduleId+'">'+data[i].moduleName+'</option>'
 			
		 } 
		  $('#criteriamodule').append(tabledata); 
		
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});

} ;

/*var e = document.getElementById("criteriamodule");

var layout = e.options[e.selectedIndex].value;
	 
*/

/*var selectedOption = $('#criteriamodule :selected').val();

if(selectedOption)
*/
/*$('#criteriamodule :selected').data('pre', $(this).val());*/





/*
var selectedOption = $('#criteriamodule').val();

console.log(selectedOption);
	
	if(selectedOption == ""){
		
		var selectedOption=localStorage.getItem('moduleid');
		
		layout(selectedOption);
		
	}
	
	
	
function layout(selectedOption){

   // Grab the text of the selected item
	 var newSel = document.getElementById("criterialayout");
	    //if you want to remove this default option use newSel.innerHTML=""
	    newSel.innerHTML="<option value=\"\">select layout</option>"; 
	
	  
	  
	  
	  $.ajax({
		  url : baseurl+"rest/modules/getLayouts/"+selectedOption,
		  type:"GET",
		  dataType:"json",
		  contentType:'application/json',
		  success:function(data){
			  
			  			  console.log(data);
		 		 var tabledata = '';
				 for(var i =0; i<data.length;i++){
					 
				

		 			tabledata +=
		 				
		 				'<option value="'+data[i].layoutId+'">'+data[i].layoutName+'</option>'
		 			
				 } 
				  $('#criterialayout').append(tabledata); 
			  },
		    	  
			  
			  error:function(data){
		    	 
		      }
			 
	});

		 
	  
	  
}*/

var selectedOptioncat='';
var catvals="";
var selectedOption1="";
var selectedOption2="";
var selectedOption="";
var selectedOptions="";

/*getcategories()*/
$('#categories').change(function(){
	

	 selectedOptioncat = $('#categories').val();
	getexamtypes(selectedOptioncat);
	
});



var categoryId="";


function getexamtypes(selectedOptioncat){	
	
		var standardId=selectedOptioncat;		
var standareq ={
		categoryId: selectedOptioncat,
	 	standardId: standardId
	}
		
		var standstr = JSON.stringify(standareq);
		
	$.ajax({
		type: "POST",
		dataType: "json",
		 async:false,	 
		url: base_url+'rest/question/v1/getexamtypes',
		data: standstr,
		contentType: 'application/json',
		success: function(data){
	
		  console.log(data);
 		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
 			tabledata +=
 				
 				'<option value="'+data[i].id+'">'+data[i].examtype +'</option>'
 			
		 } 
		  $("#ExamType").empty("");
	        $("#ExamType").append('<option value="">--- Select  Exam Type ---</option>'); 
			 $('#ExamType').append(tabledata);
			 
		
			 
		 /* $("#categorydata").append('<option value="">--- Select Category ---</option>'); */
			 /* $('.selectpicker').selectpicker('refresh');*/
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
}

//madhu added

function getcategories(){	
	
$.ajax({
	type: "GET",
	dataType: "json",
	 async:false,	 
	url: base_url+'rest/category/v1/getcategories',
	  contentType:'application/json',
	  
	success: function(data){

	  console.log(data);
		 var tabledata = '';
	 for(var i =0; i<data.length;i++){
			tabledata +=
				
				'<option value="'+data[i].id+'">'+data[i].categoryname +'</option>'
			
	 } 
	  $("#categories").empty("");
        $("#categories").append('<option value="">--- Select  category ---</option>'); 
		 $('#categories').append(tabledata);
		 
  },
	  
  
  error:function(data){
	  alert(data.errorMessage);
  }
 
});
} //madhu added


$('#ExamType').change(function(){
	

	selectedOption = $('#ExamType').val();

	selectedOptions = $('#categories').val();
	
	getsubjects(selectedOption,selectedOptions);
	

	
});
function getsubjects(selectedOption,selectedOptions){

		var standardId=selectedOption;
		
	
	var standareq = {
		categoryId: selectedOptions,
	 standardId: standardId, 
		examtypeId: selectedOption
		}
	
	var standstr = JSON.stringify(standareq);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		async:false,
		contentType: 'application/json', 
		url: base_url+'rest/question/v1/getsubjects',
		data: standstr,
		success: function(data){
	
		  console.log(data);
 		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
 			tabledata +=
 				
 				'<option value="'+data[i].id+'">'+data[i].name +'</option>'
 			
		 } 
		  $("#subject").empty("");
	        $("#subject").append('<option value="">--- Select  Subject---</option>'); 
			 $('#subject').append(tabledata); 
			 
			
			 
			/* if(res !=""){
				 
				 $("#subject option[value='"+res.subjectId+"']").attr("selected",true);
			 }*/
		 /* $("#categorydata").append('<option value="">--- Select Category ---</option>'); */
			 /* $('.selectpicker').selectpicker('refresh');*/
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
};


$('#subject').change(function(){
	
	/* selectedOption = $('#categories').val();*/
	 selectedOption1 = $('#ExamType').val();
	selectedOption2 = $('#subject').val();
	
	

	
	getchapters(selectedOption1,selectedOption2);
	

	
});

	function getchapters(selectedOption1,selectedOption2){

		/*var standardId=1;
		
		var categoryId= selectedOption;*/
		

	
	var standareq = {
		/*categoryId: categoryId,
	 standardId: standardId, */
		examTypeId: selectedOption1,
		subjectId: selectedOption2
		}
	
	var standstr = JSON.stringify(standareq);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		 async:false,
		contentType: 'application/json', 
		url: base_url+'rest/chapter/v1/getChapters',
		data: standstr,
		success: function(data){
	
		  console.log(data);
 		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
 			tabledata +=
 				
 				'<option value="'+data[i].id+'">'+data[i].chapter +'</option>'
 			
		 } 
		  $("#Chapter").empty("");
	        $("#Chapter").append('<option value="">--- Select  Chapters---</option>'); 
			 $('#Chapter').append(tabledata); 
			 
			/* if(res !=""){
				 
				 $("#Chapter option[value='"+res.chapterId+"']").attr("selected",true);
				 
			 }*/
		 /* $("#categorydata").append('<option value="">--- Select Category ---</option>'); */
			 /* $('.selectpicker').selectpicker('refresh');*/
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
};

/*
var formattedTime = new Date().toLocaleTimeString('en-US');
console.log(formattedTime)
	$("#starttime").val(formattedTime);
*/
/*var dt = new Date();
var time = dt.getHours() + ":" + dt.getMinutes();
/*document.write(time);
*//*$("#starttime").val(time);*/

var input="";
var filePath="";
var file="";
var fileUrl='';

function livevideoadd(){

	
	/*var files = document.getElementById('base60photo').files;
    if (files) 
    {
    	var d = new Date();
     time_stamp = d.getTime();
 
      file = files[0];
      
      if(file ==null || file ==undefined){
    	  
	        alert('Please upload image');
	        return false;
	        }
      
        var fileName = file.name;*/
       
        
        //var arr = fileName.split(".");      // Split the string using dot as separator
          
         /* var lastVal = arr.pop();
          
          var id="id";
          
          fileName = id+'_'+time_stamp+'.'+lastVal;
          */
        /*var filePath = bucketName+'/' +  fileName;
        fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
*/
            	/* bucketName+'/' +  fileName; */
            // CHANGING HERE
           /* var subject=$("#regarding").val();*/
		
                /* filePath='videothumbnails' + '/' + fileName;*/
          
            //UPTO HERE
           // fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
    
   // }


   
	
	/*var standardId= $("#standardId").val();
	var standardId1=parseInt(standardId)*/
	
	var categories= $("#categories").val();
	var standardId1=$("#categories").val();
	var standardId=parseInt(standardId1)
	var examType= $("#ExamType").val();
	var examType1=parseInt(examType)
	var subject1= $("#subject").val();
	 subject=parseInt(subject1)
	var Chapter1= $("#Chapter").val();
	var Chapter=parseInt(Chapter1)
	
	
	var videoType= $("#videotype").val();
	
	var videoLink= $("#videourl").val();
	var thumbnail=$("#imageurl").val();

	/*var subjectId= $("#subjectId").val();*/
	
	/*var subjectId1=parseInt(subjectId)*/
	
	
	
	var professor= $("#Professor").val();
	
	var mainTitle= $("#MainTitle").val();
	var SubTitle= $("#SubTitle").val();
	var livedate=$("#livedate").val();
	
	console.log(livedate);
	
	var datearray = livedate.split("/");
	
	var newdate = datearray[1] + '-' + datearray[0] + '-' + datearray[2];
	
	console.log(newdate)
	
	var hour=$("#hour").val();
	var minute=$("#minute").val();
	var tim=$("#tim").val();
	
	var starttime=hour+":"+minute+" "+tim;
	var hours=$("#hours").val();
	var minutes=$("#minutes").val();
	
	
	var duration=hours+":"+minutes;
	var professorRating=$("#professorRating").val();
	var topic=$("#topic").val();
	
	
	
	 
	/*if(standardId==""||standardId==null){
	  		
	  		alert("Please enter the standardId");
	  		return false;
	  	} */

/*if(videoLink==""||videoLink==null){
  		
	    alert("Please enter the videoLink");
  		return false;
  	} */

	
 input ={
		  
			"categoryId":categories,
		    "standardId":standardId,
			"examTypeId":examType1,
			"subjectId":subject,
			"chapterId":Chapter,
		     "videoType":videoType,
		     "videoLink":videoLink,
		     "thumbnail":thumbnail,
		     /*"subjectId":subjectId1,*/
			
			"professorName":professor,
			"mainTitle":mainTitle,
			"subTitle":SubTitle,
			"liveDate":newdate,
			"islive":false,
			"startTime":starttime,
			"attendedCount":0,
			"topic":topic,
			"duration":duration,
			"professorRating":professorRating
	
			
		
}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/homepagevideos/videos/create",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
		  alert('Homepage video created succesfully'); 

          location.assign("zomantlivevideotable.jsp");		  
		  //var fileName = file.name;
	       
	        
	        //var arr = fileName.split(".");      // Split the string using dot as separator
	          
	         /* var lastVal = arr.pop();
	          
	          var id=data.details;
	          
	          fileName = id+'_'+time_stamp+'.'+lastVal;
	          
	      
	                 filePath='videothumbnails' + '/' + fileName;
	          
	            fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
	    
		  
		  input ={
				  "id":id,
					"categoryId":categories,
				    "standardId":standardId,
					"examTypeId":examType1,
					"subjectId":subject,
					"chapterId":Chapter,
				     "videoType":videoType,
				     "videoLink":videoLink,
				     "thumbnail":fileUrl,
				     "subjectId":subjectId1,
					
					"professorName":professor,
					"mainTitle":mainTitle,
					"subTitle":SubTitle,
					"liveDate":newdate,
					"islive":false,
					"startTime":starttime,
					"attendedCount":0,
					"topic":topic,
					"duration":duration,
					"professorRating":professorRating
			
					
				
		}
		  updateid1(input)*/
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}


/*function updateid1(qulrid){
	
	var output =JSON.stringify(qulrid);


$.ajax({
	  url : base_url+"rest/homepagevideos/videos/update",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
	 
	 console.log(data);
	 
	 s3upload()
        
 
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}
*/

var urls="";
var id="";


$(document).ready(function(){
	

	
	 
	getCategoriesByName();

  id = localStorage.getItem("id"); 
	
	console.log(id);
	
	$.ajax({
		  url : base_url+"rest/homepagevideos/getvideo/"+id,
		 type:"GET",
		 async:false,
		  dataType:"json",
		  contentType:'application/json',
		  
			  success: function(data){
				
				  
			  res=data;
			  
			  console.log(res);
			  
			 

				 if(selectedOptioncat=="" || selectedOptioncat==null){
					
					selectedOptioncat= data.categoryId;
					
						  
						  getexamtypes(selectedOptioncat);
					
				      }
					  
					 
					
				
			  
			  if(selectedOption =="" && selectedOptions ==""){
				  
				  selectedOption=data.examTypeId;
				  
				  selectedOptions=data.categoryId;
				  
				getsubjects(selectedOption,selectedOptions);
				
				
				  }
				  
				
				   if(selectedOption1 =="" && selectedOption2 ==""){
				  
				  selectedOption1=data.examTypeId;
				  
				  selectedOption2=data.subjectId;
				  
				  getchapters(selectedOption1,selectedOption2);
				
		          }
				  
		    
			  console.log(data);

			 $("#standard").val(data.standardId);
			
			
			 $("#videotype").val(data.videoType);
			 $("#videourl").val(data.videoLink);
			 $("#imageurl").val(data.thumbnail);
		/* $("#base60photo").val(data.thumbnail);*/
		/*$("#subjectId").val(data.subjectId);*/
			 
			 $('#categories').val(data.categoryId);
			 
			
			  $("#ExamType").val(data.examTypeId);
			  
			/*  $("#subject option[value='"+data.subjectId+"']").attr("selected",true);*/

				/*$("#Chapter option[value='"+data.chapterId+"']").attr("selected",true);*/
			  
			  $("#subject").val(data.subjectId);
			  
			 /*$("#subject").append('<option value="'+data.subjectId+'">'+data.subject+'</option>');*/

			 /*$("#Chapter").append('<option value="'+data.chapterId+'">'+data.chapter+'</option>');*/
			  
			  $("#Chapter").val(data.chapterId);
				 
			
					  	    	
			 /* $("#subject").val(data.subjectId);
			  
			  $("#Chapter").val(data.chapterId);*/
			 
			/* $("#ExamType option[value=1]").attr('selected', 'selected');
			 */
			 
	
				$('select[name=selValue]').val(data.videoType);
				
				 
				
			/*					
			urls=data.thumbnail;
     			  
         			
      
         			
     			  console.log(urls);*/
     			  
               /* var v = document.getElementById("base60photo"); */
     			  
          /*      document.getElementById("myImg").src = urls;
                
                sessionStorage.setItem("urls", urls);*/
			
			
				/*var standardId1=data.standardId;
				
				var standardId12=standardId1.toString()
				 $("#standard").val(standardId12)*/
			
			/*$('select[name=selValue1]').val(data.standardId);
			$('select[name=selValue2]').val(data.examTypeId);
			$('select[name=selValue2]').val(data.subjectId);
			$('select[name=selValue4]').val(data.chapterId);
			*/
			
			/*var examtype=data.examTypeId;
				
				var etype=examtype.toString()
				 $("#ExamType").val(etype)
			*/
			
	/*
				
				var subjectId1=data.subjectId;
				
				var subjectId12=subjectId1.toString()
				 $("#subject").val(subjectId12)
			
			var Chapter1=data.chapterId;
				
				var Chapter12=Chapter1.toString()
				 $("#Chapter").val(Chapter12)
			
			*/
			
				 /* $("#examType").append('<option value="'+data.examTypeId+'">'+data.examTypeId+'</option>');*/
				
				 $("#Professor").val(data.professorName);
			$("#MainTitle").val(data.mainTitle);
				 $("#SubTitle").val(data.subTitle);
			
			
			/* $("#starttime").val(data.startTime);*/
		var res1=data.startTime
				 
			   var dataitem=res1.split(":");
		console.log(dataitem)
			   
				var dataitems=dataitem[1].split(" ");
			   console.log(dataitems);
		
			   $("#hour").val(dataitem[0]);
			  $("#minute").val(dataitems[0]);
	          $("#tim").val(dataitems[1]);  
		
		var res=data.duration
				 
			   var dataitem=res.split(":")
			   
			   console.log(dataitem);
		
			   $("#hours").val(dataitem[0]);
			  $("#minutes").val(dataitem[1]);    
			 
	
		/* $("#duration").val(data.duration);*/
	 $("#topic").val(data.topic);
	 $("#professorRating").val(data.professorRating);

			var from=data.liveDate
				 
			      var datefrom = from.split("-");
					
					var datenew = datefrom [1] + '/' + datefrom [0] + '/' + datefrom [2];
					
			  $("#livedate").val(datenew);
			  
			  
			  
      
			 },
	    	  
		  error:function(data){
			  $("#loading").hide();
			  alert(data.responseJSON.errorMessage);
		  }
	    	  
});

	 
	 //check btn click with localstorage
	 
	 var clkbtnval = localStorage.getItem("chkbtn");
	 console.log("clickeed butn : "+clkbtnval);
	 
	 if(clkbtnval != null && clkbtnval != ""){
		 
		 if(clkbtnval == "addbtn"){
			 /*$('#submit').prop('disabled', false);
			 $('#update').prop('disabled', true);*/
			 
			 $('#submit').show();
			 $('#update').hide();
			 
		 }else{
			 /*$('#submit').prop('disabled', true);
			 $('#update').prop('disabled', false);*/
			 
			 $('#update').show();
			 $('#submit').hide();
			 
		 }
	 }
	 });


function updateid(){
	
	/*var files = document.getElementById('base60photo').files;
	
	 var fileName="";

   if (files) 
   {
   	
   	var urls=sessionStorage.getItem("urls");

   	 file = files[0];
     
     if(file ==null || file ==undefined){*/
    	 
   	  /*if((urls.split("/"))[4].match("_")){
	           fileUrl=urls;
   	  } else{
   		  
   		fileName=id+'_'+(urls.split("/"))[4];
   		   		

   	  filePath='videothumbnails' + '/' + fileName;
   	         
   	           //UPTO HERE
   	        fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
   	   
   	  }*/
    	 /*fileUrl=urls;
    	 
	        }

     else{  	 
if(!urls.match("base64")){
	*/
   	//var urls1 = urls.split("/");      // Split the string using dot as separator
      
   
       
  /*  var time_stamps = urls1[4];
    
    if(time_stamps.match("_")){
    	

    	   fileName =time_stamps;

    }
    
    else{
    	
    	  fileName =id+'_'+time_stamps;

    }
    
	

  filePath='videothumbnails' + '/' + fileName;*/
         
           //UPTO HERE
          /* fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
   
}
else{
	
	var d = new Date();
   time_stamp = d.getTime();

   
      var fileName = file.name;
     */
      
    //  var arr = fileName.split(".");      // Split the string using dot as separator
        
   /*     var lastVal = arr.pop();
        
       fileName = id+'_'+time_stamp+'.'+lastVal;

  filePath='videothumbnails' + '/' + fileName;
         
           //UPTO HERE
           fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
   
}
}*/

   
/*        var fileName = file.name;
      */
       
      /* var arr = fileName.split(".");      // Split the string using dot as separator
         
         var lastVal = arr.pop();
         */

       /*var filePath = bucketName+'/' +  fileName;
       fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
*/
           	/* bucketName+'/' +  fileName; */
           // CHANGING HERE
          /* var subject=$("#regarding").val();*/
		
        
   //}


	
	/* var standardId = localStorage.getItem("id");

	
	var id=parseInt(standardId)*/
	
	
	/*var standardId= $("#standardId").val();
	var standardId1=parseInt(standardId)*/
	
	
	
	
	var categories= $("#categories").val();
	var standardId1=$("#categories").val();
	var standardId=parseInt(standardId1)
	var examType= $("#ExamType").val();
	var examType1=parseInt(examType)
	var subject1= $("#subject").val();
	 subject=parseInt(subject1)
	var Chapter1= $("#Chapter").val();
	var Chapter=parseInt(Chapter1)
	
	
	var videoLink= $("#videourl").val();
	
	var thumbnail=$("#imageurl").val();

	/*var subjectId= $("#subjectId").val();*/
	
	/*var subjectId1=parseInt(subjectId)*/
	
	
	
	var professor= $("#Professor").val();
	
	var mainTitle= $("#MainTitle").val();
	var SubTitle= $("#SubTitle").val();
	var livedate=$("#livedate").val();
	
	console.log(livedate);
	
	var datearray = livedate.split("/");
	
	var newdate = datearray[1] + '-' + datearray[0] + '-' + datearray[2];
	
	console.log(newdate)
	
	var hour=$("#hour").val();
	var minute=$("#minute").val();
	var tim=$("#tim").val();
	
	var starttime=hour+":"+minute+" "+tim;
	var hours=$("#hours").val();
	var minutes=$("#minutes").val();
	
	
	var duration=hours+":"+minutes;
	var professorRating=$("#professorRating").val();
	var topic=$("#topic").val();
	
	
	var videoType= $("#videotype").val();
	
	
	
	 
	/*if(standardId==""||standardId==null){
	  		
	  		alert("Please enter the standardId");
	  		return false;
	  	} */

 
if(videoLink==""||videoLink==null){
  		
  		alert("Please enter the videoLink");
  		
  	} 

	
var input ={
		
		    "id":id,
			"categoryId":categories,
		    "standardId":standardId,
			"examTypeId":examType1,
			"subjectId":subject,
			"chapterId":Chapter,
		     "videoType":videoType,
		     "videoLink":videoLink,
		     "thumbnail":thumbnail,
		     /*"subjectId":subjectId1,*/
			"professorName":professor,
			"mainTitle":mainTitle,
			"subTitle":SubTitle,
			"liveDate":newdate,
			"islive":false,
			"startTime":starttime,
			"attendedCount":0,
			"topic":topic,
			"duration":duration,
			"professorRating":professorRating
	
			
		
}
		
		var output =JSON.stringify(input);
		
		console.log(output);
		
		
		 $.ajax({
				  url : base_url+"rest/homepagevideos/videos/update",
				  type:"POST",
				  dataType:"json",
				  contentType:'application/json',
				  
				  data: output,
				  
				  success:function(data){
					  
					/*  if(file ==null || file ==undefined || file==""){
						  */
					  alert('Homepage video updated succesfully'); 

	                    location.assign("zomantlivevideotable.jsp"); 

							 /*alert('succesfully Upload Image');  */
							 /*location.assign("zomantlivevideotable.jsp");
						  
					  }
					  else{
						  
					  s3upload1();
					  
					  }
					   sessionStorage.removeItem("urls");
						*/
			       
			   
				  },
				  error:function(data){
					  alert(data.responseJSON.errorMessage);
				  }
				  
			});



	};









//function s3upload1() { 
	
    
   /* s3.upload({
                    Key: filePath,
                    Body: file,
                    ACL: 'public-read'
                }, function(err, data) {
                	console
                    if(err) {
                        reject('error');
                        alert('Unable to update homepage video'); 

                    }
                    
                alert('Homepage video updated succesfully'); 

                    location.assign("zomantlivevideotable.jsp");

                })
                
                
                
                
*/
	
/*	s3.putObject ({
        ACL: 'public-read',
        Bucket: bucketName,
        Key: filePath,
        Body: file
    }, function(err, data) {
        
							if(err) {
                                   
								 alert('Unable to Upload Image'); 
                                }
							 alert('Homepage video updated succesfully'); */

							 /*alert('succesfully Upload Image');  */
							/* location.assign("zomantlivevideotable.jsp");
		
		
    });
         
	
	
	
}*/



//function s3upload() { 
	
   /* 
    s3.upload({
                    Key: filePath,
                    Body: file,
                    ACL: 'public-read'
                }, function(err, data) {
                	console
                    if(err) {
                        reject('error');
                        alert('Unable to create homepage video'); 

                    }
                    
                alert('Homepage video created succesfully'); 

                    location.assign("zomantlivevideotable.jsp");

                })*/
	
	/*s3.putObject ({
        ACL: 'public-read',
        Bucket: bucketName,
        Key: filePath,
        Body: file
    }, function(err, data) {
        
							if(err) {
                                   
								 alert('Unable to Upload Image'); */
                             /*   }*/
							 /*alert('succesfully Upload Image');  */
							
							/*alert('Homepage video created succesfully'); 

							 location.assign("zomantlivevideotable.jsp");
		
		
    });
          

}*/