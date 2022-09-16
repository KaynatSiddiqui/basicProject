function registration(){
	
	localStorage.removeItem('id');
	
	localStorage.setItem("chkbtn", "addbtn");
	
	
	location.assign("zomantlivevideo.jsp");
}


$(document).ready(function() {
	
	 getCategoriesByName();



})
var selectedOptioncat="";
$('#categories').change(function(){
	

	 selectedOptioncat = $('#categories').val();
	 
	/* catvals=localStorage.setItem("catval", selectedOptioncat);
	 
	 console.log(catvals);*/
	
	getsubjects(selectedOptioncat);
	

	
});
function getsubjects(selectedOptioncat){

		//var standardId=selectedOptions;
		
	
	var standareq = {
		categoryId: selectedOptioncat,
	    standardId: selectedOptioncat, 
		examtypeId: selectedOptioncat
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
		  $("#subjectId").empty("");
	        $("#subjectId").append('<option value="">--- Select  Subject---</option>'); 
			 $('#subjectId').append(tabledata); 
			 
			
			 
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


var videotype="";

function getall(){
	
var videotype=$("#videotype").val();

if(videotype =="" || videotype==null){
	
	alert("please select video type");
	
	return false;
}
var val="0"
var standardId=selectedOptioncat;
var examTypeId=selectedOptioncat;

	if(standardId =="" || standardId==null){
		
		standardId=val;
	}
	else{
	
	standardId=selectedOptioncat;	
		
	}
	
	if(examTypeId =="" || examTypeId==null){
		
		examTypeId=val;
	}
	else{
	
	examTypeId=selectedOptioncat;	
		
	}
	

	
	
$.ajax({
	  url : base_url+"rest/homepagevideos/videotype/"+videotype+"/"+examTypeId+"/"+standardId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
	  success:function(data){
    		 var tabledata = '';
		 for(var i =0; i<data.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + data[i].id + '</td>'+
				'<td class="text-center">' + data[i].professorName + '</td>'+
				'<td class="text-center">' + data[i].liveDate + '</td>'+
				
    			/*'<td>' + data[i].module + '</td>'+
    			'<td>' + data[i].layout+ '</td>'+*/
    			'<td>' + data[i].videoType + '</td>'+
    		
    			/*"<td class='text-center'>"+
    			 '<button class="btn btn-success mx-4 " data-toggle="tooltip" data-placement="bottom" title="Update"  onclick="update('+data[i].id+')"></button>'+
				 '<button class="btn btn-danger "  data-toggle="tooltip" data-placement="bottom" title="Delete"  onclick="deletedata('+data[i].id+')"></button>'+
				    "</td>"+*/
				'<td><a href="#" class="btn btn-edit btn-icon-anim btn-circle mr-10"  onclick="update('+data[i].id+')" data-toggle="tooltip" data-id="1" data-original-title="Edit"><i class="fa fa-edit font-18 mt-10"></i></a>'+
				'<a href="#" class="btn btn-delete btn-icon-anim btn-circle p-10" onclick="deletedata('+data[i].id+')" data-id="1" data-toggle="tooltip" data-original-title="Delete"><i class="icon-trash font-18"></i></a></td>'+


				

			'</tr>'
    			
    			
				
	  }
    	  
		  $("#tablebody").empty();
    	  $('#myTables').DataTable().clear().destroy();
    	  $('#tablebody').append(tabledata); 
    	 $('#myTables').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
	 

 }
function update(id){
	localStorage.setItem("chkbtn", "updatebtn");
	

	
	localStorage.setItem("id",id);
	
	 
	location.assign("zomantlivevideo.jsp");
    
    
}



function deletedata(id){
	
$.ajax({
	  url : base_url+"rest/homepagevideos/deletevideo/"+id,
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
		  console.log(data)
		  alert(data.message);
		  window.location.reload();
	},
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
});

}