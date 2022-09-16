var states="";
var sales="";
var fileUrl='';

$(document).ready(function() {
	
	selectstates();
	
});


function selectstates(){

	$.ajax({
		url : base_url+"rest/admin/getstates",
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';

			}

			$("#States").empty("");
			$("#States").append('<option value="0";>Select States </option>'); 
			$('#States').append(statesdata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});

}



$('#States').change(function(){
	
	states = $('#States').val();
	selectsalesman(states);

});


function selectsalesman(facultyid){


	$.ajax({
		url : base_url+"rest/faculty/salesMansByStateId/"+facultyid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var salesMandata = '';

			for(var i =0; i<data.length;i++){

				salesMandata +='<option value="'+data[i].id+'">'+data[i].faculty+'</option>';

					/*sessionStorage.setItem('salesmanId',data[i].id);
					sessionStorage.setItem('salesmanName',data[i].salesMan);
					sessionStorage.setItem('salesmanStateId',data[i].stateId);
					sessionStorage.setItem('salesmancityId',data[i].cityId);
*/					
			}

			$("#selectsalesman").empty("");
			$("#selectsalesman").append('<option value="";>Select Faculty </option>'); 
			$('#selectsalesman').append(salesMandata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	})  
}

	

			
		function createSettlement(){
			
			$("#empId").empty("");
			$("#empName").empty("");
			
			var empId = $('#selectsalesman').val();
			var empName=$('#selectsalesman option:selected').text();
			
			/*var empId=sessionStorage.getItem('salesmanId');
					var empName=sessionStorage.getItem('salesmanName');*/

				var studentProfile_carddata='';
					
		 								studentProfile_carddata +='<div class="card_phonecards" style=" box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);background-color:white;border-radius:40px 40px 40px 0px; width:700px;">'+
          									'<div class="row"><div class="col-md-12" style="padding:25px;">'+
        											'<form>'+
												'<div class="row">'+
														 
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Employee Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" id="empId">'+empId+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Employee Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" id="empName">'+empName+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Period</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+
															'<div class="row">'+
															'<div class="form-group col-md-6" >'+
															'<input class="form-control" type="date" id="startDate">'+
															'</div>'+
															'<div class="form-group col-md-6">'+
															'<input class="form-control" type="date" id="lastDate">'+
															'</div>'+
															'</div>'+
															
															
															'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-map-marker prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Upload Proof Image</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+
															
															/*'<img id="myImg" src="http://via.placeholder.com/150x150" style="width:150px;height:150px;border-radius:100px;"><br>'+
															'<input type="file" id="fileUpload" style="margin-top:20px;margin-left:120px;" />'+
															*/
															
															'<img id="output_image" src="http://via.placeholder.com/150x150" style="border-radius:100px;" height=150px width=150px\>'+
															'<input type="file" accept="image/*" id="fileUpload" onchange="preview_image(event)" style="margin-top:20px;">'+
															
															
															'</div>'+
														'</div>'+
														
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															/*'<i class="active fa fa-edit prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Comment</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+
															'<textarea cols="3" id="comment" rows="3" class="form-control"></textarea>'+
															'</div>'+
														'</div>'+
													
          											'</div>'+
													'<div class="row mb-20">'+
														'<div class="col-md-8 col-md-offset-5">'+
														'<div class="button-list mt-25">'+
															'<a href="#" onclick="s3upload()" class="btn  btn-primary">Submit</a>'+
														'</div>'+
														'</div>'+
													'</div>'+
          										'</form></div>'+

												'</div></div>';
												
					
					$("#settlecard_card").empty("");
    	
    	  			$('#settlecard_card').append(studentProfile_carddata);
			
		}
	  
	  /*error:function(data){
	
		$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");
    	
      }
	 
});
	 

 }*/

 
		
	function s3upload(){
	
	/*var doubtsids=sessionStorage.getItem("doubtsids");*/
	/*var empId=sessionStorage.getItem('salesmanId');*/
	var empId=$('#selectsalesman').val();
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
	          var fileName = empId+'_'+time_stamp+'.'+lastVal;
	        /*var filePath = bucketName+'/' +  fileName;
	        fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' +  filePath;
	*/
	            	/* bucketName+'/' +  fileName; */
	            // CHANGING HERE
	           /* var subject=$("#regarding").val();*/
					/*filePath= bucketName+'/' + 'settlement/' + fileName;*/
					
					 filePath='settlement/faculty' + '/' + fileName;
	            	fileUrl = 'https://'+bucketName+'.s3.' + bucketRegion + '.amazonaws.com/' + filePath;
	    
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
                                    
							
			submitDataaData()
        });
              

    
};
		
		

		function submitDataaData(){
			
				var empId=$('#selectsalesman').val();
					var empName=$('#selectsalesman option:selected').text();
					var sId=$("#States").val();
					var cId="0";
			
					var sDate=$("#startDate").val();
					var lDate=$("#lastDate").val();
	
					var periodDate= sDate +" to "+lDate;
	var photo =fileUrl;
	var comment=$("#comment").val();
	 
	if(sDate==""||sDate==null){
  		
  		alert("Please choose the Date");
  		return false;
  	} 
	if(lDate==""||lDate==null){
  		
  		alert("Please choose the Date");
  		return false;
  	}

	if(photo==""||photo==null){
  		
  		alert("Please choose the Image");
  		return false;
  	} 

	if(comment==""||comment==null){
  		
  		alert("Please Write Comment");
  		return false;
  	} 
	
	var input ={
		
		 	"facultyId":empId,
			"facultyName":empName,
			"stateId":sId,
			"cityId":cId,
			"peroid":periodDate,
			"image":photo,
			"comment":comment
	}

console.log(input);
var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/faculty/sattlement",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
		success:function(data){
	 
	 
	 
		  alert("Settlement Successfully");
		
		  window.location = base_url+"jsp/admin/faculty/facultysettlementTable.jsp";
		
	
	
	},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
			
	  }
	  
	 
});	
	
}