var comment="";

	var salesPersonsId='';



$(document).ready(function() {
	
	NewStudents();
	/*MyNewList();
	InterestedStudents();
	MyInterestedStudents();*/
	salesPersonsId = sessionStorage.getItem("slaesmanId");
	
})	
	
	// NewStudents function start
	
	function NewStudents(){

			var stdsalesids ={

			stateId:0,
			cityId:0,
			fromdate:"",
			todate:""
	}	
	var standstr = JSON.stringify(stdsalesids);

	$.ajax({
		url: base_url+'rest/salesman/getStudentsfilter',
		type:"POST",
		dataType: "json",
		contentType:'application/json',
		data: standstr,
		beforeSend: function(){
				 
				 $("#newstudents_tablebody").empty();
				 $("#newstudents_tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
			 },
		success:function(studentInfo){
		
		
    		 var tabledata = '';
		
		 for(var i =0; i<studentInfo.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + studentInfo[i].studentid + '</td>'+
				'<td class="text-center">' + studentInfo[i].name + '</td>'+
			
				'<td class="text-center"><button href"#" class="btn btn-block btn-warning text-white" onclick="takeStudents('+studentInfo[i].studentid+')">Take</button></td>'+
				

    			'</tr>';
			
    			
	  }
    	  
		  $("#newstudents_tablebody").empty();
    	 $('#myTable').DataTable().clear().destroy();
    	  $('#newstudents_tablebody').append(tabledata); 
    	$('#myTable').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	 
      }
	 
	});
	 
	}//end
	
	
// take function 

	function takeStudents(stdid){

	var std_arry=[];

;
	
var students_obj={
		
		"student_id":stdid,
		"selfassign":true
		
        }	
	
	std_arry.push(students_obj);
	
	var stdsalesids ={

			"students": std_arry,
			"salesManId": salesPersonsId
			
	}	


var standstr = JSON.stringify(stdsalesids);

$.ajax({
url: base_url+'rest/salesman/assignStudentsToSalesPerson',
type:"POST",
dataType: "json",
contentType:'application/json',
data: standstr,
success:function(data){
alert(data.message);
window.location.reload();
},
error:function(data){
alert(data.responseJSON.errorMessage);
}

});

}

	
	

	
	// MyNewList function start 
	
	
	function MyNewList(){
	
		$.ajax({
	  url : base_url+"rest/salesman/getStudentsforSalesmanForself/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#mynew_tablebody").empty();
			 $("#mynew_tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },

	  success:function(studentInfo){
		
		/*	studentInfo=data.students;*/
    		 var tabledata = '';
    		 var count=0;
             var feeddata1=[];
  			
		 for(var i =0; i<studentInfo.length;i++){
			 
    			tabledata +='<tr>'+
    			'<td class="text-center">' + studentInfo[i].student_id + '</td>'+
				'<td class="text-center">' + studentInfo[i].name + '</td>';
    			
    			var feedback=studentInfo[i].feedBackStates;
    			
    			if(feedback.includes(",")){
    		
    			var feeddata=feedback.split(",");

			 /*feeddata1=feeddata.join(".");*/
    			
				tabledata +='<td class="text-center">';
    			for(var r=0; r<feeddata.length; r++){
    			
    				tabledata +='<div id="scrll" style="display:flex;align-items:center;border:none;">'+
    				'<input style="width:15px;height:15px;margin-top:-9px"  data-id="'+r+'" disabled type="radio" name="radio"><h5 style="margin-top:2px;margin-left:3px;color: blue;white-space: normal;">'+feeddata[r]+'</h5>'+'\n' +'</div>';
    				count++ 
    			}
    		tabledata +='</td>';		
    			if(count == 3){
    				
    				//("#scrll").css("","scroll");
    				
    				var v = document.getElementById("scrll"); 
		            v.className += "  scrolling-wrapper"; 
		            
    				
    			}
    			
    			}
    			else{
    				
    				if(feedback ==" " || feedback==null){
    					
    					tabledata +='<td class="text-center" style="display:flex;align-items:center"></td>'
    					
    				}

    				else{
    				tabledata +='<td class="text-center" style="display:flex;align-items:center">'+
    				'<input style="width:15px;height:15px;" disabled type="radio"><h5 style="margin-top:14px;margin-left:3px;color: blue;white-space: normal;">'+feedback+'</h5></td>'
    				
    				}
    			}
				
			/*	'<td class="#text-center">' + studentInfo[i].mobile + '</td>'+
			*/	
				/*if(studentInfo[i].comment =="" || studentInfo[i].comment==null){
					
				tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="getconctact('+"'"+studentInfo[i].id+"'"+')" class="btn btn-danger">contact'+'</a></td>'
				}
				else{

					 comment=studentInfo[i].comment;
					 var cm=comment.replace(/\n/g, ' ');
					tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="showconctact('+"'"+cm+"'"+')" class="btn btn-success">contacted'+'</a></td>'
					
				}
				
    			tabledata+='<td><a href"#"  data-toggle="modal" data-target="#exampleModalLong"  onclick="getAllstudents('+"'"+studentInfo[i].student_id+"'"+','+"'"+studentInfo[i].name+"'"+','+"'"+studentInfo[i].mobile+"'"+','+"'"+studentInfo[i].emailId+"'"+','+"'"+studentInfo[i].city+"'"+','+"'"+studentInfo[i].state+"'"+','+"'"+studentInfo[i].category+"'"+')" class="btn btn-success">View</a></td>'+
				
*/

				tabledata +='<td class="text-center"><button href"#" class="btn btn-block btn-success text-white"  data-toggle="modal" data-target="#viewinter" onclick="viewInterestedinfo('+"'"+studentInfo[i].id+"'"+','+"'"+studentInfo[i].student_id+"'"+','+"'"+studentInfo[i].name+"'"+','+"'"+studentInfo[i].mobile+"'"+','+"'"+studentInfo[i].city+"'"+','+"'"+studentInfo[i].state+"'"+')">View</button></td>'+
		'<td class="text-center"><button href"#" class="btn btn-block btn-warning text-white"  data-toggle="modal" data-target="#checkfeed_back"  data-id="'+studentInfo[i].id+'" onclick="getfeedbackstudents('+"'"+studentInfo[i].id+"'"+')">Feedback</button></td>'+

    			'</tr>';
				
				
	  }
    	  
		  $("#mynew_tablebody").empty();
    	 $('#myTable1').DataTable().clear().destroy();
    	  $('#mynew_tablebody').append(tabledata); 
    	$('#myTable1').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	 
      }
	 
	});
	 
	}
	
	// view intetrested Student
	
	
	function viewInterestedinfo(rowid,student_id,name,mobile,city,state){
		
		
		 var viewdetails="";
		  
		  viewdetails +='<div class="row" style="padding:25px;">'+
						'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Student Id</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-success"><input class="form-control" type="number" disabled value='+student_id +'></div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-warning"><input class="form-control" type="text" disabled value='+name+'></div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-5">'+
														/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">Mobile Number</label>'+
														'</div>'+
														'<div class="col-md-2">:</div>'+
														'<div class="col-md-5 text-primary"><input class="form-control" type="number" disabled value='+mobile+'></div>'+
													'</div>'+
													
													
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">State</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>';
			  if(state =="" || state ==null){
				  
				  viewdetails += '<div class="col-md-5"><input type="text" class="form-control" id="statee" placeholder="Please Enter State"></div>'
			  }
			  
			  else{
				  

				  viewdetails += '<div class="col-md-5"><input type="text" class="form-control" value='+state+'></div>'
			  }
			  
			  viewdetails +='</div>'+
				
			  
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">City</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>';
		  if(city =="" || city ==null){
			  
			  viewdetails += '<div class="col-md-5 text-danger"><input type="text" class="form-control" id="cityy" placeholder="Please Enter City"></div>';
		  }
		  else{		
			  
			  viewdetails += '<div class="col-md-5 text-danger"><input type="text" class="form-control" value='+city+'></div>';
		  }			
		  
		
		  viewdetails += '</div>'+
		  
		 '<div class="col-md-12 form-group">'+
		 
	      '<div style="display:flex;justify-content:flex-end;margin-right:15px">'+
	      
	         '<button type="button" class="btn" data-dismiss="modal" onclick="updatestecty('+"'"+rowid+"'"+','+"'"+student_id +"'"+','+"'"+state+"'"+','+"'"+city+"'"+')" style="color:white;background-image: linear-gradient(45deg, #FC4A1A, #F7B733);">Update'+'</button>'+
	         
	         '</div>'+
	         '</div>'+
								
						'</div>';
		  
		  
		  $("#showofferdetails").empty("")
		  $("#showofferdetails").append(viewdetails)
	}
	
	/// feedback 
	
	function getfeedbackstudents(rid){
		sessionStorage.setItem("feedbackrowids", rid);
	}
	
	
	function salesFeedback(){
		
	
		var growid=sessionStorage.getItem("feedbackrowids");
		
		 var feedback='';
		 $("input:radio[name=radiobox]:checked").each(function(){
			 feedback=$(this).val()
			 console.log(feedback);
		if(feedback=="" || feedback==null || feedback==undefined){
		
			alert("select a option");
				return false;
		
		}
		});
		
		
		$.ajax({
	  url : base_url+"rest/salesman/giveStudentsfeedback/"+growid +"/"+ feedback,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },

	  success:function(studentInfo){
		
		 alert(studentInfo.message)
	
window.location.reload();
		
		  $("#mynew_tablebody").empty();
    	$('#mynew_tablebody').append(tabledata); 
    	
			 
	  },
	  
	  error:function(data){
    	 
      }
	 
	});
	 
	}
	
	
	// InterestedStudents function start 
function InterestedStudents(){
	
$.ajax({
	  url : base_url+"rest/salesman/interestedStud/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#interestedtablebody").empty();
			 $("#interestedtablebody").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },

	  success:function(studentInfo){
		
		/*	studentInfo=data.students;*/
    		 var tabledata = '';
		
		 for(var i =0; i<studentInfo.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + studentInfo[i].studentid + '</td>'+
				'<td class="text-center">' + studentInfo[i].stuname + '</td>'+
				'<td class="text-center">Instrested in skyget'+ '</td>'+
			/*	'<td class="#text-center">' + studentInfo[i].mobile + '</td>'+
			*/	
				/*if(studentInfo[i].comment =="" || studentInfo[i].comment==null){
					
				tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="getconctact('+"'"+studentInfo[i].id+"'"+')" class="btn btn-danger">contact'+'</a></td>'
				}
				else{

					 comment=studentInfo[i].comment;
					 var cm=comment.replace(/\n/g, ' ');
					tabledata+='<td class="text-center"><a href"#"  data-toggle="modal" data-target="#exampleModalLong1"  onclick="showconctact('+"'"+cm+"'"+')" class="btn btn-success">contacted'+'</a></td>'
					
				}
				
    			tabledata+='<td><a href"#"  data-toggle="modal" data-target="#exampleModalLong"  onclick="getAllstudents('+"'"+studentInfo[i].student_id+"'"+','+"'"+studentInfo[i].name+"'"+','+"'"+studentInfo[i].mobile+"'"+','+"'"+studentInfo[i].emailId+"'"+','+"'"+studentInfo[i].city+"'"+','+"'"+studentInfo[i].state+"'"+','+"'"+studentInfo[i].category+"'"+')" class="btn btn-success">View</a></td>'+
				*/
				'<td class="text-center"><button href"#" class="btn btn-block btn-warning text-white" onclick="takemyStudentsList('+studentInfo[i].id+')">Take</button></td>'+

    			'</tr>';
				
				
	  }
    	  
		  $("#interestedtablebody").empty();
    	 $('#myTable2').DataTable().clear().destroy();
    	  $('#interestedtablebody').append(tabledata); 
    	$('#myTable2').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
      }
	 
	});
	 
	}
	
	//my interested Students
	
	
	function takemyStudentsList(Id){

	/*var std_arry=[];

;
	
var students_obj={
		
		"student_id":stdid,
		"selfassign":true
		
        }	
	
	std_arry.push(students_obj);
	
	var stdsalesids ={

			"students": std_arry,
			"salesManId": salesPersonsId
			
	}	


var standstr = JSON.stringify(stdsalesids);

$.ajax({
url: base_url+'rest/salesman/assignStudentsToSalesPerson',
type:"POST",
dataType: "json",
contentType:'application/json',
data: standstr,*/
$.ajax({
	  url : base_url+"rest/salesman/checkAsMyInterestedStudent/"+Id,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
success:function(data){
alert(data.message);
window.location.reload();
},
error:function(data){
alert(data.responseJSON.errorMessage);
}

});

}

	
	
 
// MyInterestedStudents function start 
function MyInterestedStudents(){
	
$.ajax({
	  url : base_url+"rest/salesman/getMyInterestedList/"+salesPersonsId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  beforeSend: function(){
			 
			 $("#myinterestedlist").empty();
			 $("#myinterestedlist").html('<tr><td class="text-center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },

	  success:function(studentInfo){
		
		/*	studentInfo=data.students;*/
    		 var tabledata = '';
		
		 for(var i =0; i<studentInfo.length;i++){
    			tabledata +='<tr>'+
    			'<td class="text-center">' + studentInfo[i].studentid + '</td>'+
				'<td class="text-center">' + studentInfo[i].stuname + '</td>'+
				'<td class="text-center">Instrested in skyget'+ '</td>'+
			
				/*'<td class="text-center"><button href"#" class="btn btn-block btn-success text-white"  data-toggle="modal" data-target="#viewinterestedList" onclick="viewmyInterestedinfo('+studentInfo[i].studentid+','+studentInfo[i].stuname+','+studentInfo[i].mobileNumber+','+studentInfo[i].city+','+studentInfo[i].state+')">View</button></td>'+*/
				
				'<td class="text-center"><button href"#" class="btn btn-block btn-success text-white"  data-toggle="modal" data-target="#viewinterestedList" onclick="viewmyInterestedinfo(' + "'" + studentInfo[i].studentid + "'" + ',' + "'" + studentInfo[i].stuname + "'" + ',' + "'" + studentInfo[i].mobileNumber + "'" + ',' + "'" + studentInfo[i].city + "'" + ',' + "'" + studentInfo[i].state + "'" + ')">view</button></td>'+
				
				/*'<td class="text-center"><button href"#" class="btn btn-block btn-warning text-white"  data-toggle="modal" data-target="#checkfeed_back"  data-id="'+studentInfo[i].id+'" onclick="getfeedbackstudents('+"'"+studentInfo[i].id+"'"+')">Feedback</button></td>'+*/
				'<td class="text-center"><button href"#" class="btn btn-block btn-warning text-white">Feedback</button></td>'+

    			'</tr>';
						
				
	  }
    	  
		  $("#myinterestedlist").empty();
    	 $('#myTable3').DataTable().clear().destroy();
    	  $('#myinterestedlist').append(tabledata); 
    	$('#myTable3').DataTable(); 
    	
			
			 
	  },
	  
	  error:function(data){
    	  /*alert(data.errorMessage);*/
			/*alertify. alert("Table Data Empty")*/
      }
	 
	});
	 
	}
	
	
	// my interested view Students
	
	
	
		function viewmyInterestedinfo(student_id,name,mobile,city,state){
		
		
		 var viewmyinteresteddetails="";
		  
		  viewmyinteresteddetails +='<div class="row" style="padding:25px;">'+
						'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-user prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Student Id</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-success">'+student_id +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-5">'+
															/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-2">:</div>'+
															'<div class="col-md-5 text-warning">'+name+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
														'<div class="col-md-5">'+
														/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
															'<label class="control-label mb-5 bold">Mobile Number</label>'+
														'</div>'+
														'<div class="col-md-2">:</div>'+
														'<div class="col-md-5 text-primary">'+mobile+'</div>'+
													'</div>'+
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">State</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>'+
													'<div class="col-md-5">'+state+'</div>'+
												'</div>'+
													
													'<div class="col-md-12 form-group">'+
													'<div class="col-md-5">'+
													/*'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+*/
														'<label class="control-label mb-5 bold">City</label>'+
													'</div>'+
													'<div class="col-md-2">:</div>'+
													'<div class="col-md-5 text-danger">'+city+'</div>'+
												'</div>'+
												
												
								
						'</div>';
		  
		  
		  $("#showmyinteresteddetails").empty("")
		  $("#showmyinteresteddetails").append(viewmyinteresteddetails)
		
		
		
	}
	
	
 
 
/*

 function getAllstudents(studentid,name,mobile,emailId,city,state,category){
	
	
	var studentId=studentid;
	var salesPersonsId = sessionStorage.getItem("slaesmanId");
	
	$.ajax({
	  url : base_url+"rest/salesman/updateView/"+salesPersonsId+"/"+studentId,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  
	  success:function(){
			var studentProfile_carddata='';
		 								studentProfile_carddata +='<div class="row"><div class="col-md-12">'+
        											'<form>'+
												'<div class="row">'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Student Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+studentid +'</div>'+
														'</div>'+
														 '<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-user prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+name +'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-envelope prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Email Id</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+emailId+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mobile prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Phone Number</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+mobile+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-map-marker prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">City</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+city+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-mortar-board prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">State</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7" >'+state+'</div>'+
														'</div>'+
														'<div class="col-md-12 form-group">'+
															'<div class="col-md-4">'+
															'<i class="active fa fa-pie-chart prefix" style="color:red;"></i>'+
																'<label class="control-label mb-5 bold">Category Name</label>'+
															'</div>'+
															'<div class="col-md-1">:</div>'+
															'<div class="col-md-7">'+category+'</div>'+
														'</div>'+
														
          											'</div>'+
													
          									'</form></div></div>';
				
					
					$("#salesman_student").empty("");
    	
    	  			$('#salesman_student').append(studentProfile_carddata);
			
		},
	  
	  error:function(data){
			
		/*$("#studentProfile_card").empty("");*/
		//alertify. alert("Student not found with this Phone number");
   /* 	
      }
	 
});
	 
	
}*/

/*
function getconctact(id){
	
	
	var tab="";
	
	tab='<div style="display:flex;justify-content:center;margin-top:10px">'+
		"<textarea id='cmnt'  rows='8' cols='75' placeholder='Enter Info'>"+"</textarea></div>"+
		"<div style='display:flex; justify-content:flex-end;margin-top:10px'><button class='btn btn-success' onclick='submitcomment("+id+")'>Submit"+"</button></div>";
	
		$("#salesman_comment").empty("");
	
		$('#salesman_comment').append(tab);
		
		
}

function submitcomment(id){

	
	var comnts=$("#cmnt").val();
	
	var input={
			
	id:id,
	comment:comnts	
	
	}
	var inputdata = JSON.stringify(input);
	
	console.log(inputdata);


$.ajax({
		    url: base_url+'rest/salesman/contactedInformation',
			type:"POST",
			dataType: "json",
		    contentType: 'application/json',
		    data:inputdata,
			 success: function(data){
					alert(data.message);
					window.location.reload();
				},
			  
			  error:function(data){
				  alert(data.responseJSON.errorMessage);	
				/*$("#studentProfile_card").empty("");*/
				//alertify. alert("Student not found with this Phone number");
		    	
		   /*   }
			 
})
	
}
	function showconctact(cm){
		
		var tab="";
		
		tab='<div style="display:flex;justify-content:center;margin-top:10px">'+
			"<textarea id='cmnt'  rows='8' cols='75' placeholder='Enter Info' disabled>"+cm+"</textarea></div>";
			
		
			$("#salesman_comment").empty("");
		
			$('#salesman_comment').append(tab);
			
	*/
		
		
		function updatestecty(rowid,id,state1,city1){
			
			if(state1 =="" || state1==null){
				
				var state=$("#statee").val();
				
				if(state =="" || state==null){
					
					alert("please enter state");
				}
				
			}
			
			else{
				
				state=state1;
				
			}
			
if(city1 =="" || city1 ==null){
				
				var city=$("#cityy").val();
				
				if(city =="" || city==null){
					
					alert("please enter city");
				}
				
			}
			
			else{
				
				city=city1;
				
			}
			
			var statecty={
					
					"state":state,
					"city":city
					
			        }	
				
				

			var standstr = JSON.stringify(statecty);

			$.ajax({
			url: base_url+'rest/salesman/updateStudentDetails/'+rowid,
			type:"POST",
			dataType: "json",
			contentType:'application/json',
			data: standstr,
			success:function(data){
			alert(data.message);
			window.location.reload();
			},
			error:function(data){
			alert(data.responseJSON.errorMessage);
			}
			
		})
			
		}