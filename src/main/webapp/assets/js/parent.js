//get parent details (parent name at the top header rightside)
	function getParentDetails(){
		var LoginData = getLoginData();
		var studid = LoginData.studentid;
		var inputdata = {
				"studentId":studid,
		}
		var output =JSON.stringify(inputdata);
		$.ajax({
			url: base_url+'rest/student/getparentsDetails',
			type:"POST",
			dataType:"json",
			contentType:'application/json',
			data:output,
			success:function(data){
			for(var i=0; i<data.length; i++){
				if(data[0].photo !=""){
					var image = data[0].photo;
				}else{
					var image= base_url +"/assets/images/students/default.png";
				}
				
				
				$("#parentname").html(data[i].parentname+"!");
				
				$('#parentprofileimg').attr('src', image);
			}
			
		},
		error:function(data){
		//alert("parent details not founds");
		}
		});
		} 
	$(document).ready(function(){
		
		getParentDetails();
	  });
	
	
	//get parent Profile details 
	function getParentProfileDetails(){
		var LoginData = getLoginData();
		var studid = LoginData.studentid;
		var inputdata = {
				"studentId":studid,
		}
		var output =JSON.stringify(inputdata);
		$.ajax({
			url: base_url+'rest/student/getparentsDetails',
			type:"POST",
			dataType:"json",
			contentType:'application/json',
			data:output,
			success:function(data){
			for(var i=0; i<data.length; i++){
				if(data[0].photo !=""){
					var image = data[0].photo;
				}else{
					var image= base_url +"/assets/images/students/default.png";
				}
				
				
				$("#parentsname").html(data[i].parentname);
				$("#parentphonenum").html(data[i].mobilenumber);
				$("#parentemail").html(data[i].email);
				$("#parentimg").attr('src', image);
				$("#parentoccupation").html(data[i].parentoccupation);
			}
			
		},
		error:function(data){
		//alert("parent details not founds");
		}
		});
		} 
	$(document).ready(function(){
		
		getParentDetails();
	  });
	
//parent
	
	//feedbackGet
	function feedbackGet(){
		
		var appenddata="";
		var outputData = '{"userType":"parent"}';
		$.ajax({
			url:base_url+'rest/feedback/v1/getAllfeedbacksadmin',
			type:"POST",
			dataType:"json",
			data:outputData,
			contentType:'application/json',
			beforeSend: function(){
				$("#feedbackbody").empty();
				$("#feedbackbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
					appenddata +="<tr id='feed_row"+data[i].feedbackId+"'><td>"+(i+1)+"</td>";
					appenddata +="<td>"+data[i].customerId+"</td>";
					appenddata +="<td>"+data[i].customerName+"</td>";
					appenddata +="<td>"+data[i].parentId+"</td>";
					appenddata +="<td>"+data[i].parentName+"</td>";
					appenddata +="<td>"+data[i].customerCity+"</td>";
					appenddata +="<td>"+data[i].regarding+"</td>";
					appenddata +="<td>"+data[i].date+"</td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/parentfeedbacks/feedbacks_preview.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-rounded status_btn'>View</span></a></td>";
					appenddata +="<td><a href='"+base_url+"jsp/admin/parentfeedbacks/feedbacks_reply.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-s'>Reply</span></a></td>";
					appenddata +="<td><a id='feed-del"+data[i].feedbackId+"' data-id='"+data[i].feedbackId+"'><span class='btn btn-danger btn-sm'>Delete</span></a></td></tr>";
				}
				$("#feedbackbody").empty();
				 $('#feedbackdatable').DataTable().clear().destroy();
				$("#feedbackbody").append(appenddata);
				$("#feedbackdatable").DataTable();
			},
			error:function(data){
				alert(data.responseJSON.errorMessage);
			}
		});
	}
	//feedbackGet


	//feedback delete
	$(document).on("click", "a[id^=feed-del]", function(){
		var id = $(this).attr('data-id');
		var con = confirm("Are you Sure to delete?");
		var pon = confirm("Really are you Sure?");
		 if(con == true){
		 if(pon == true){
	
		$.ajax({
				 type: "GET",
				 dataType: "json",
				 contentType: 'application/json', 
				 url: base_url+'rest/feedback/v1/deletefeedbackpostedbystudent/'+id,
				 success: function(data){	 
				 if(data.status){
				alert(data.message);
				$("#feed_row"+id).remove();
			}
		 },
		 error: function(data){
			 alert(data.responseJSON.errorMessage);
		    }
		  });
	    }
	  }
	});

	//feedback delete

	//feedback reply
		function feedbackReply(){
			
			var reply = CKEDITOR.instances.editor1.getData();
			var id = parseInt(getParameterByName('id'));
			var input ={
					 "reply" : reply,
				     "feedBackId" : id
			}
			var output = JSON.stringify(input);
			$.ajax({
				url : base_url +'rest/feedback/v1/reply',
				type:"POST",
				dataType:"json",
				data:output,
				contentType:'application/json',
				success:function(data){
					alert(data.message);
					window.location = base_url +"jsp/admin/parentfeedbacks/feedbacks.jsp";
				},
				error:function(data){
					alert(data.responseJSON.errorMessage);
				}
			});
		}
	//feedback reply
		//feedback filter

		  function feedbackFilter(){
			  
			  var fromdate = $("#datepicker1").val();
			  
			  var todate = $("#datepicker2").val();
			  
			  var category = $("#category").val();
			  
			  var state = $("#state").val();
			  
			  var city = $("#city").val();
			  
			  
			var feedbackreq = {
					"categoryId" : category,
						"fromdate" : fromdate,
							"todate" : todate,
							"stateId" : state,
							"cityId" : city,
							"userType":"parent"
				}	
			
			var feedstr = JSON.stringify(feedbackreq);
			var appenddata = "";
			$.ajax({
				url:base_url+'rest/feedback/v1/getFeedbackfilter',
				type:"POST",
				dataType:"json",
				contentType:'application/json',
				data:feedstr,
				beforeSend: function(){
					$("#feedbackbody").empty();
					$("#feedbackbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
				},
				success:function(data){
					for(var i=0; i<data.length; i++){
						appenddata +="<tr id='feed_row"+data[i].feedbackId+"'><td>"+data[i].customerId+"</td>";
						appenddata +="<td>"+data[i].customerName+"</td>";
						appenddata +="<td>"+data[i].customerCity+"</td>";
						appenddata +="<td>"+data[i].regarding+"</td>";
						appenddata +="<td>"+data[i].date+"</td>";
						appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_preview.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-rounded status_btn'>View</span></a></td>";
						appenddata +="<td><a href='"+base_url+"jsp/admin/feedbacks/feedbacks_reply.jsp?id="+data[i].feedbackId+"'><span class='btn btn-primary btn-s'>Reply</span></a></td>";
						appenddata +="<td><a id='feed-del"+data[i].feedbackId+"' data-id='"+data[i].feedbackId+"'><span class='btn btn-danger btn-sm'>Delete</span></a></td></tr>";
					}
					$("#feedbackbody").empty();
					 $('#feedbackdatable').DataTable().clear().destroy();
					$("#feedbackbody").append(appenddata);
					$("#feedbackdatable").DataTable();
				},
				error:function(data){
					alert(data.responseJSON.errorMessage);
				}
				
				
			})
	  
		  }
		
		//feedback filter