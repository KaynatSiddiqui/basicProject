var fileUrlvideo='';
var fileUrl='';

$(document).ready(function() {
	
	var facultyId = sessionStorage.getItem("facultyId"); 

$.ajax({
	  url : base_url+"rest/faculty/history/"+facultyId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
		  $("#allDoubts").empty("");
		  $("#allDoubts").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
	  },
	  success:function(allDoubt){
		
    		 var tabledata = '';
		
		 for(var i =0; i<allDoubt.length;i++){
			
			
    			tabledata +='<tr>'+
    			'<td class="text-center">' + allDoubt[i].doubtId + '</td>'+
				/*'<td>' + allDoubt[i].student_doubt + '</td>';*/
				
				'<td class="text-center"><p style="text-overflow:ellipsis;width: 100px;overflow:hidden;display:inline-block;text-overflow: ellipsis;white-space: nowrap;cursor: pointer;"   data-toggle="modal" data-target="#showStudenttext" onclick="showStudentDoubttext(this)">'+ allDoubt[i].student_doubt + '</p></td>';
				if(allDoubt[i].student_doubt_image == "" || allDoubt[i].student_doubt_image == null){
    				tabledata += "<td class='text-center'><img src='http://via.placeholder.com/150x150'   style='height:50px;width:50px;border-radius:50px'></td>";
  			  }
  			  else{
  				tabledata += "<td class='text-center'><img src='"+allDoubt[i].student_doubt_image+"'  data-toggle='modal' data-target='#showim' onclick='showimage("+'"'+allDoubt[i].student_doubt_image+'"'+")' style='height:50px;width:50px;border-radius:50px'></td>";
  	  			 
  			  }
				/*'<td><img id="img" height="150" src="'+allDoubt[i].student_doubt_image +'" class="student_profile_img" style="height:50px;width:50px;"></td>';
      */
        


				
				
				/* allDoubt[i].student_doubt_image + '</td>'+*/
			/*'<td class="#text-center">' + allDoubt[i].mobile + '</td>'+*/
			
			
			if(allDoubt[i].doubtStatus=="pending"){
			
			tabledata +='<td class="text-center"><a href"#" class="btn video-btn" data-toggle="modal" data-id="'+allDoubt[i].id+'" onclick="getAllstudents('+"'"+allDoubt[i].id+"'"+','+"'"+allDoubt[i].doubtId+"'"+')" data-target="#myModal" style="border:1px solid #fd7e14;color:#fd7e14;font-weight:bold">Reply</a></td>';
				
			}
			else{
				
				tabledata +='<td class="text-center"><a href"#"  class="btn " style="border:1px solid #7CFC00;color:#7CFC00;font-weight:bold">Answered</a></td>';
				
			}	
				/*'<td class="#text-center">' + data[i].mobileNumber + '</td>'+
				'<td class="text-center">' + data[i].subscriptionName + '</td>'+
				'<td class="text-center">' + data[i].subscriptionAmount + '</td>'+
				'<td class="text-center">' + data[i].percentage + '</td>'+
				'<td class="text-center">' + data[i].offerAmount + '</td>'+
				/*'<td class="text-center">' + data[i].salesPersonId + '</td>'+*/
				/*'<td class="text-center">' + data[i].offerActivetedDate + '</td>'+
				'<td class="text-center">' + data[i].offerExpiredDate + '</td>'+
				'<td class="text-center">' + data[i].validityInhrs + '</td>'+*/

		
			tabledata +='</tr>';
    			
    			
				
	  }
    	  
		  $("#allDoubts").empty();
 		$('#myTable').DataTable().clear().destroy();
    	  $('#allDoubts').append(tabledata); 
    	$('#myTable').DataTable();
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
		  $("#allDoubts").empty();
			 $("#allDoubts").html('<tr class="odd"><td valign="top" colspan="14" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
			
      }
	 
});
	 

 })


 function getAllstudents(id,doubtsids){
	 
	localStorage.setItem("doubtId",id);
	sessionStorage.setItem("doubtsids", doubtsids);
	}




/* var images="";
function uploadvideo(){*/
	
	/*images= $('#localVid').attr('src');*/
	
	/*	
		window.location = base_url+"faculty/jsp/videoUpload.jsp";
		
		
}
*/



function condata(){
/*	var images= $(input[name="localVideo"]).val();*/
	/*  document.getElementsByName("localVideo");*/
 var images =$('[name="localVideo"]').val();
	console.log(images)
	}

function showimage(img){
	
	var tabdata="";
	
	tabdata = "<img src="+img+"  style='width:100%;'></td>";
		 
	 $("#imgs").empty();
	
	    	  $('#imgs').append(tabdata); 
	    	
	
}


var filePath1="";
var file1="";
var time_stamp="";
var filePath="";
var file="";

function s3upload(){
	
	var doubtsids=sessionStorage.getItem("doubtsids");
	 var files = document.getElementById('fileUpload').files;
	    if (files) 
	    {
	    	var d = new Date();
         time_stamp = d.getTime();
	 
	      file = files[0];
	      
	      if(file ==null || file ==undefined){
	    	  
		        alert('Please upload image');
		        return false;
		        }
	        var fileName = file.name;
	       
            
	        var arr = fileName.split(".");      // Split the string using dot as separator
	          
	          var lastVal = arr.pop();
	          var fileName = doubtsids+'_'+time_stamp+'.'+lastVal;
	        /*var filePath = bucketName+'/' +  fileName;
	        fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
	*/
	            	/* bucketName+'/' +  fileName; */
	            // CHANGING HERE
	           /* var subject=$("#regarding").val();*/
	          var subjectName=sessionStorage.getItem("subjectName");
				
	           /* if(subject==1)
	                 filePath= bucketName+'/' + 'Physics/Images/' + fileName;
	            if(subject==2)
	            	 filePath= bucketName+'/' + 'Chemistry/Images/' + fileName;
	            if(subject==3)
	            	 filePath= bucketName+'/' + 'Maths/Images/' + fileName;*/
	            //UPTO HERE
	          
	          filePath= bucketName+'/'+subjectName+'/Images/' + fileName;
	            //UPTO HERE
	            fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
	    
	    }
	
   
       /* s3.upload({
                        Key: filePath,
                        Body: file,
                        ACL: 'public-read'
                    }, function(err, data){
                        if(err) {
                            reject('error');
                            alert('Unable to reply');
                            
                        }
                        
                       
                        upLoaddata();
                        
                        alert('Successfully Image Uploaded!');
                    })*/
	    
	    s3.putObject ({
            ACL: 'public-read',
            Bucket: bucketName,
            Key: filePath,
            Body: file
        }, function(err, data) {
            
								if(err) {
                                       
										 alert('Unable Image Uploaded!');
                                    }
                                    
								upLoaddata();
                                   /*  alert('Successfully Image Uploaded!'); */
			
			
        });
              

    
};



function s3uploadVideo(){  
	
	//$("#myModal").hide();

	
	var doubtsids=sessionStorage.getItem("doubtsids");
	
	  var files =  document.getElementById('fileU_load').files;
	  
	  var imgfile = document.getElementById('fileUpload').files;
	  
	    if (files) 
	    {
	    	
	    	
	    	  var d = new Date();
            time_stamp = d.getTime();
             
	      file1 = files[0];
	      var imgfiles=imgfile[0];
	  
	      
	      if(file1 ==null || file1 ==undefined){
	    	  
		        alert('Please upload video');
		       return false;
		        }

	      if(imgfiles ==null || imgfiles==undefined){
	    	  
		        alert('Please upload image');
		        return false;
		        }
	      
	   
	      $("#submited").empty("");

	  	$("#submited").html("Uploading Please wait.....");
	  	
	        var fileName = file1.name;
	        

			  var arr = fileName.split(".");      // Split the string using dot as separator
	          
	          var lastVal = arr.pop();
	          
	          var fileName = doubtsids+'_'+time_stamp+'.'+lastVal;
	       
	       /* var filePath = bucketName+'/' +  fileName;*/
	       /* fileUrlvideo = 'https://' + bucketRegion + '.amazonaws.com/'+ bucketName+'/' +  filePath;*/
			/*fileUrlvideo = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;*/
			
	            	/* bucketName+'/' +  fileName; */
	            // CHANGING HERE
	          /* var subject=sessionStorage.getItem("subjectid");
	            if(subject==1)
	                 filePath1= bucketName+'/' + 'Physics/Videos/' + fileName;
	            if(subject==2)
	            	 filePath1= bucketName+'/' + 'Chemistry/Videos/' + fileName;
	            if(subject==3)
	            	 filePath1= bucketName+'/' + 'Maths/Videos/' + fileName;*/
	          
	          var subjectName=sessionStorage.getItem("subjectName");
		         /* filePath1= bucketName+'/' + 'Maths/Videos/' + fileName;*/
		          filePath1= bucketName+'/'+subjectName+'/Videos/' + fileName;
		          
	          
	            //UPTO HERE
	            fileUrlvideo = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath1;

	            
	    }
	    
	 
       /* s3.upload({
                        Key: filePath1,
                        Body: file1,
                        ACL: 'public-read'
                    }, function(err, data) {
                        if(err) {
                        	
                          reject('error');
                            
                            alert('Unable to upload video');
                            location.reload();
                            
                        }
                        
                        s3upload();
                        
            
                        
                    })*/
	    
	    
	    s3.putObject ({
            ACL: 'public-read',
            Bucket: bucketName,
            Key: filePath1,
            Body: file1
        }, function(err, data) {
            
								if(err) {
                                       
									 alert('Unable to upload video');
			                            location.reload();
                                    }
                                    
								//alertify. alert('<div style="display:flex;justify-content:center;align-items:center"><img src="https://gifimage.net/wp-content/uploads/2018/06/transparent-loading-gif-13.gif" style="width:200px;height:200px;"></div>');
								
								//$("body").html('<div id="gifff" style="margin-top:80px;display:flex;justify-content:center;align-items:center;"><img src="https://tv.theiet.org/Images/img_loader.gif" style="width:200px;height:200px;"></div>');
								
								 s3upload();
                                   /*  alert('Successfully Image Uploaded!'); */
			
			
        })
    
};

function upLoaddata(){
	
	   
	$("#submited").empty("");

	$("#submited").html("Uploaded");
	
	var doubtId = localStorage.getItem("doubtId");
	
	
	var facultyans=$("#facultyans").val();
	
	var photo =fileUrl;
	/*var photo1=photo.spilt("/");*/
	var video =fileUrlvideo; /*$('[name="localVideo"]').val();*/

	var doubtIds=doubtId;
	
	var facultyId = sessionStorage.getItem("facultyId");
	
	if(photo==""||photo==null){
  		
  		alert("Please choose the Image");
  		return false;
  	} 

	if(video==""||video==null){
  		
  		alert("Please choose the Video");
  		return false;
  	} 
	
	var input ={
		  
			"id":doubtIds,
		"facultyId":facultyId,
		
		
   "faculty_answer_image":photo,
   "faculty_answer_video":video,
   "faculty_answer":facultyans
	}

console.log(input)
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/faculty/reply",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  
	/* beforeSend: function(){
		 
			  $("#studentBufferImage").empty("");
		      $("#studentBufferImage").html('<div style="display:flex;justify-content:center;align-items:center"><img src="https://gifimage.net/wp-content/uploads/2018/06/transparent-loading-gif-13.gif" style="width:200px;height:200px;"></div>');
		      */

			  /*},*/

	  success:function(data){
		  
		 // document.getElementById("gifff").style.visibility = "hidden";
	 
	 /*console.log(data)*/
	 /* alert(data.message);*/
		/*  alertify. alert(data.message);*/
		  alert(data.message);
		
		    location.reload();
		/*location.reload();*/
	
	
	},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});
	
}


function showStudentDoubttext(doubtText){
	var facultyans2=doubtText.innerHTML;
	var tabdata="";
	    		
	    		tabdata = "<p style='padding:20px;word-break: break-all;'>"+facultyans2+"</p>";
	    			 
	    		 $("#doubtText").empty();
	    		$('#doubtText').append(tabdata); 
	    		    
	
}